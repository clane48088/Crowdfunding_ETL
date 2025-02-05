﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ULTPsW
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" VARCHAR  NOT NULL ,
    "category" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
    )
)

GO

CREATE TABLE "contacts" (
    "contact_id" INTEGER  NOT NULL ,
    "first_name" VARCHAR  NOT NULL ,
    "last_name" VARCHAR  NOT NULL ,
    "email" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
    )
)

GO

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR  NOT NULL ,
    "subcategory" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
    )
)

GO

CREATE TABLE "campaign" (
    "cf_id" INTEGER  NOT NULL ,
    "contact_id" INTEGER  NOT NULL ,
    "company_name" VARCHAR  NOT NULL ,
    "description" VARCHAR  NOT NULL ,
    "goal" FLOAT  NOT NULL ,
    "pledged" FLOAT  NOT NULL ,
    "outcome" VARCHAR  NOT NULL ,
    "backers_count" INTEGER  NOT NULL ,
    "country" VARCHAR  NOT NULL ,
    "currency" VARCHAR  NOT NULL ,
    "launched_date" DATE  NOT NULL ,
    "end_date" DATE  NOT NULL ,
    "category_id" VARCHAR  NOT NULL ,
    "subcategory_id" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
    )
)

GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id")
GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id")
GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id")
GO

