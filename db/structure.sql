CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "restaurants" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "address" varchar, "phone_number" varchar, "category" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "average_rating" float DEFAULT 0.0);
CREATE TABLE "reviews" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "restaurant_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "rating" integer);
CREATE INDEX "index_reviews_on_restaurant_id" ON "reviews" ("restaurant_id");
INSERT INTO schema_migrations (version) VALUES
('20170215103802'),
('20170215103841'),
('20170215105148'),
('20170215154052');


