CREATE TABLE "laps" (
	"id" serial PRIMARY KEY,
	"session_id" integer NOT NULL,
	"lap_number" integer NOT NULL,
	"time_ms" integer NOT NULL,
	"duration_ms" integer NOT NULL,
	"type" text DEFAULT '' NOT NULL,
	"note" text DEFAULT '' NOT NULL,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "sessions" (
	"id" serial PRIMARY KEY,
	"name" text NOT NULL UNIQUE,
	"agent" text DEFAULT '' NOT NULL,
	"total_ms" integer,
	"ended_at" timestamp,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE INDEX "laps_session_id_idx" ON "laps" ("session_id");--> statement-breakpoint
ALTER TABLE "laps" ADD CONSTRAINT "laps_session_id_sessions_id_fkey" FOREIGN KEY ("session_id") REFERENCES "sessions"("id") ON DELETE CASCADE;