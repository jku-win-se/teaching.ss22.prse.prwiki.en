-- SQL dump generated using DBML (dbml-lang.org)
-- Database: PostgreSQL
-- Generated at: 2022-03-17T09:11:22.178Z

CREATE TABLE "User" (
  "userId" SERIAL PRIMARY KEY,
  "fullname" varchar,
  "created_at" timestamp,
  "countryId" int
);

CREATE TABLE "Country" (
  "countryId" SERIAL PRIMARY KEY,
  "countryName" varchar
);

ALTER TABLE "User" ADD FOREIGN KEY ("countryId") REFERENCES "Country" ("countryId");
