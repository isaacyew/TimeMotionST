import { pgTable, serial, text, timestamp, integer, index } from "drizzle-orm/pg-core";

// One row per stopwatch session (Start → End)
export const sessions = pgTable("sessions", {
  id: serial().primaryKey(),
  name: text().notNull().unique(),
  agent: text().notNull().default(""),
  totalMs: integer("total_ms"),
  endedAt: timestamp("ended_at"),
  createdAt: timestamp("created_at").defaultNow().notNull(),
});

// One row per lap, matching the columns of the Laps table
export const laps = pgTable(
  "laps",
  {
    id: serial().primaryKey(),
    sessionId: integer("session_id")
      .notNull()
      .references(() => sessions.id, { onDelete: "cascade" }),
    lapNumber: integer("lap_number").notNull(),
    timeMs: integer("time_ms").notNull(),
    durationMs: integer("duration_ms").notNull(),
    type: text().notNull().default(""),
    issueType: text("issue_type").notNull().default(""),
    ticketId: integer("ticket_id"),
    note: text().notNull().default(""),
    createdAt: timestamp("created_at").defaultNow().notNull(),
  },
  (t) => [index("laps_session_id_idx").on(t.sessionId)],
);

// One row per configurable lap type (e.g. "Value-added", "Delay")
export const lapTypes = pgTable("lap_types", {
  id: serial().primaryKey(),
  name: text().notNull().unique(),
  createdAt: timestamp("created_at").defaultNow().notNull(),
});

// One row per agent (e.g. "Operator A")
export const agentsTable = pgTable("agents", {
  id: serial().primaryKey(),
  name: text().notNull().unique(),
  createdAt: timestamp("created_at").defaultNow().notNull(),
});

// One row per configurable issue type
export const issueTypes = pgTable("issue_types", {
  id: serial().primaryKey(),
  name: text().notNull().unique(),
  createdAt: timestamp("created_at").defaultNow().notNull(),
});
