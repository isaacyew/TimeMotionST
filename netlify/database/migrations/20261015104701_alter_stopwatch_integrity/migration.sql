ALTER TABLE "laps" ALTER COLUMN "time_ms" SET DATA TYPE bigint USING "time_ms"::bigint;--> statement-breakpoint
ALTER TABLE "laps" ALTER COLUMN "duration_ms" SET DATA TYPE bigint USING "duration_ms"::bigint;--> statement-breakpoint
ALTER TABLE "sessions" ALTER COLUMN "total_ms" SET DATA TYPE bigint USING "total_ms"::bigint;--> statement-breakpoint
CREATE UNIQUE INDEX "laps_session_number_unique" ON "laps" ("session_id","lap_number");--> statement-breakpoint
ALTER TABLE "laps" ADD CONSTRAINT "laps_positive_number" CHECK ("lap_number" > 0);--> statement-breakpoint
ALTER TABLE "laps" ADD CONSTRAINT "laps_valid_timing" CHECK ("time_ms" >= 0 AND "duration_ms" >= 0 AND "duration_ms" <= "time_ms");--> statement-breakpoint
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_valid_total" CHECK ("total_ms" IS NULL OR "total_ms" >= 0);