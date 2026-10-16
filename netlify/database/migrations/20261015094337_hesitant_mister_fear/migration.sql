CREATE TABLE "agents" (
	"id" serial PRIMARY KEY,
	"name" text NOT NULL UNIQUE,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "lap_types" (
	"id" serial PRIMARY KEY,
	"name" text NOT NULL UNIQUE,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
INSERT INTO "lap_types" ("name") VALUES
  ('Value-added'),
  ('Non-value-added'),
  ('Delay')
ON CONFLICT DO NOTHING;
--> statement-breakpoint
INSERT INTO "agents" ("name") VALUES
  ('Operator A'),
  ('Operator B'),
  ('Operator C')
ON CONFLICT DO NOTHING;
