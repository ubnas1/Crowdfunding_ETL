-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VeVfDb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "id" int   NOT NULL,
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(10)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "category" (
    "id" int   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "subcategory" (
    "id" int   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "contacts" (
    "id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

