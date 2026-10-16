CREATE TABLE "issue_types" (
	"id" serial PRIMARY KEY,
	"name" text NOT NULL UNIQUE,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "laps" ADD COLUMN "issue_type" text DEFAULT '' NOT NULL;--> statement-breakpoint
ALTER TABLE "laps" ADD COLUMN "ticket_id" integer;