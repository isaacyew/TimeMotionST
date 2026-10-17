import type { Config, Context } from "@netlify/functions";
import { asc, eq, sql } from "drizzle-orm";
import { db } from "../../db/index.js";
import { laps, sessions, lapTypes, agentsTable, issueTypes } from "../../db/schema.js";

const bad = (msg: string, status = 400) => Response.json({ error: msg }, { status });
const int = (v: unknown) => (Number.isFinite(v) && (v as number) >= 0 ? Math.round(v as number) : null);
const str = (v: unknown, max: number) => (typeof v === "string" ? v.slice(0, max) : "");

// Ensure tables exist and seed defaults as safety net if migration hasn't finished running
let schemaReady: Promise<void> | null = null;
async function ensureTables() {
  if (schemaReady) return schemaReady;
  schemaReady = (async () => {
    try {
      await db.execute(sql`
        CREATE TABLE IF NOT EXISTS "sessions" (
          "id" serial PRIMARY KEY,
          "name" text NOT NULL UNIQUE,
          "agent" text DEFAULT '' NOT NULL,
          "total_ms" integer,
          "ended_at" timestamp,
          "created_at" timestamp DEFAULT now() NOT NULL
        )
      `);
      await db.execute(sql`
        CREATE TABLE IF NOT EXISTS "laps" (
          "id" serial PRIMARY KEY,
          "session_id" integer NOT NULL REFERENCES "sessions"("id") ON DELETE CASCADE,
          "lap_number" integer NOT NULL,
          "time_ms" integer NOT NULL,
          "duration_ms" integer NOT NULL,
          "type" text DEFAULT '' NOT NULL,
          "issue_type" text DEFAULT '' NOT NULL,
          "ticket_id" integer,
          "note" text DEFAULT '' NOT NULL,
          "created_at" timestamp DEFAULT now() NOT NULL
        )
      `);
      await db.execute(sql`
        ALTER TABLE "laps" ADD COLUMN IF NOT EXISTS "issue_type" text DEFAULT '' NOT NULL
      `);
      await db.execute(sql`
        ALTER TABLE "laps" ADD COLUMN IF NOT EXISTS "ticket_id" integer
      `);
      await db.execute(sql`
        CREATE TABLE IF NOT EXISTS "lap_types" (
          "id" serial PRIMARY KEY,
          "name" text NOT NULL UNIQUE,
          "created_at" timestamp DEFAULT now() NOT NULL
        )
      `);
      await db.execute(sql`
        CREATE TABLE IF NOT EXISTS "agents" (
          "id" serial PRIMARY KEY,
          "name" text NOT NULL UNIQUE,
          "created_at" timestamp DEFAULT now() NOT NULL
        )
      `);
      await db.execute(sql`
        CREATE TABLE IF NOT EXISTS "issue_types" (
          "id" serial PRIMARY KEY,
          "name" text NOT NULL UNIQUE,
          "created_at" timestamp DEFAULT now() NOT NULL
        )
      `);
    } catch (err) {
      console.warn("ensureTables fallback warning:", err);
    }
  })();
  return schemaReady;
}

export default async (req: Request, context: Context) => {
  const { kind, id: rawId } = context.params;
  const id = rawId ? Number(rawId) : null;
  if (rawId && !Number.isInteger(id)) return bad("Invalid id");

  try {
    await ensureTables();

    // GET /api/log — every session, lap, type, agent, and issueType
    if (kind === "log" && req.method === "GET") {
      let s: unknown[] = [], l: unknown[] = [], t: unknown[] = [], a: unknown[] = [], it: unknown[] = [];
      try {
        [s, l] = await Promise.all([
          db.select().from(sessions).orderBy(asc(sessions.createdAt)),
          db.select().from(laps).orderBy(asc(laps.sessionId), asc(laps.lapNumber)),
        ]);
      } catch (err) {
        console.error("Error fetching sessions/laps:", err);
      }
      try {
        [t, a, it] = await Promise.all([
          db.select().from(lapTypes).orderBy(asc(lapTypes.createdAt)),
          db.select().from(agentsTable).orderBy(asc(agentsTable.createdAt)),
          db.select().from(issueTypes).orderBy(asc(issueTypes.createdAt)),
        ]);
      } catch (err) {
        console.error("Error fetching types/agents/issueTypes:", err);
      }
      return Response.json({ sessions: s, laps: l, types: t, agents: a, issueTypes: it });
    }

    if (kind === "sessions") {
      // POST /api/sessions { name, agent }
      if (req.method === "POST" && !id) {
        const b = await req.json();
        const name = str(b.name, 64).trim();
        if (!name) return bad("Session name is required");
        const existing = await db.select().from(sessions).where(eq(sessions.name, name));
        if (existing.length) return bad("Session name already exists", 409);
        const [row] = await db.insert(sessions).values({ name, agent: str(b.agent, 64) }).returning();
        return Response.json(row, { status: 201 });
      }
      // PATCH /api/sessions/:id { totalMs } — marks the session as ended
      if (req.method === "PATCH" && id) {
        const b = await req.json();
        const totalMs = int(b.totalMs);
        if (totalMs === null) return bad("totalMs is required");
        const [row] = await db
          .update(sessions)
          .set({ totalMs, endedAt: new Date() })
          .where(eq(sessions.id, id))
          .returning();
        return row ? Response.json(row) : bad("Not found", 404);
      }
      // DELETE /api/sessions/:id — Reset discards the session and its laps
      if (req.method === "DELETE" && id) {
        await db.delete(sessions).where(eq(sessions.id, id));
        return new Response(null, { status: 204 });
      }
    }

    if (kind === "laps") {
      // POST /api/laps { sessionId, lapNumber, timeMs, durationMs, type?, issueType?, ticketId?, note? }
      if (req.method === "POST" && !id) {
        const b = await req.json();
        const sessionId = int(b.sessionId), lapNumber = int(b.lapNumber);
        const timeMs = int(b.timeMs), durationMs = int(b.durationMs);
        if (!sessionId || !lapNumber || timeMs === null || durationMs === null) return bad("Missing lap fields");
        const rawTicketId = b.ticketId !== undefined && b.ticketId !== null && b.ticketId !== "" ? Number(b.ticketId) : null;
        const ticketId = rawTicketId !== null && Number.isInteger(rawTicketId) ? rawTicketId : null;
        const [row] = await db
          .insert(laps)
          .values({
            sessionId,
            lapNumber,
            timeMs,
            durationMs,
            type: str(b.type, 64),
            issueType: str(b.issueType, 64),
            ticketId,
            note: str(b.note, 500),
          })
          .returning();
        return Response.json(row, { status: 201 });
      }
      // PATCH /api/laps/:id { type?, issueType?, ticketId?, note? }
      if (req.method === "PATCH" && id) {
        const b = await req.json();
        const set: { type?: string; issueType?: string; ticketId?: number | null; note?: string } = {};
        if ("type" in b) set.type = str(b.type, 64);
        if ("issueType" in b) set.issueType = str(b.issueType, 64);
        if ("ticketId" in b) {
          const rawTicketId = b.ticketId !== undefined && b.ticketId !== null && b.ticketId !== "" ? Number(b.ticketId) : null;
          set.ticketId = rawTicketId !== null && Number.isInteger(rawTicketId) ? rawTicketId : null;
        }
        if ("note" in b) set.note = str(b.note, 500);
        if (!Object.keys(set).length) return bad("Nothing to update");
        const [row] = await db.update(laps).set(set).where(eq(laps.id, id)).returning();
        return row ? Response.json(row) : bad("Not found", 404);
      }
    }

    // ── Lap types ──────────────────────────────────────────────────────────────
    if (kind === "types") {
      // POST /api/types { name }
      if (req.method === "POST" && !id) {
        const b = await req.json();
        const name = str(b.name, 64).trim();
        if (!name) return bad("Type name is required");
        const existing = await db.select().from(lapTypes).where(eq(lapTypes.name, name));
        if (existing.length) return bad("Type already exists", 409);
        const [row] = await db.insert(lapTypes).values({ name }).returning();
        return Response.json(row, { status: 201 });
      }
      // DELETE /api/types/:id
      if (req.method === "DELETE" && id) {
        await db.delete(lapTypes).where(eq(lapTypes.id, id));
        return new Response(null, { status: 204 });
      }
    }

    // ── Agents ─────────────────────────────────────────────────────────────────
    if (kind === "agents") {
      // POST /api/agents { name }
      if (req.method === "POST" && !id) {
        const b = await req.json();
        const name = str(b.name, 64).trim();
        if (!name) return bad("Agent name is required");
        const existing = await db.select().from(agentsTable).where(eq(agentsTable.name, name));
        if (existing.length) return bad("Agent already exists", 409);
        const [row] = await db.insert(agentsTable).values({ name }).returning();
        return Response.json(row, { status: 201 });
      }
      // DELETE /api/agents/:id
      if (req.method === "DELETE" && id) {
        await db.delete(agentsTable).where(eq(agentsTable.id, id));
        return new Response(null, { status: 204 });
      }
    }

    // ── Issue types ────────────────────────────────────────────────────────────
    if (kind === "issue-types") {
      // POST /api/issue-types { name }
      if (req.method === "POST" && !id) {
        const b = await req.json();
        const name = str(b.name, 64).trim();
        if (!name) return bad("Issue type name is required");
        const existing = await db.select().from(issueTypes).where(eq(issueTypes.name, name));
        if (existing.length) return bad("Issue type already exists", 409);
        const [row] = await db.insert(issueTypes).values({ name }).returning();
        return Response.json(row, { status: 201 });
      }
      // DELETE /api/issue-types/:id
      if (req.method === "DELETE" && id) {
        await db.delete(issueTypes).where(eq(issueTypes.id, id));
        return new Response(null, { status: 204 });
      }
    }

    return bad("Not found", 404);
  } catch (e) {
    console.error(e);
    return bad("Database error", 500);
  }
};

export const config: Config = {
  path: ["/api/:kind", "/api/:kind/:id"],
};
