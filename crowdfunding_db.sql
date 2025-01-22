DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;


CREATE TABLE category (
    category_id VARCHAR NOT NULL PRIMARY KEY,
    category VARCHAR NOT NULL
);


SELECT * FROM category;


CREATE TABLE contacts (
    contact_id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);


SELECT * FROM contacts;


CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);


SELECT * FROM subcategory;


CREATE TABLE campaign (
    cf_id SERIAL NOT NULL PRIMARY KEY,
    contact_id INTEGER NOT NULL REFERENCES contacts(contact_id),
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL REFERENCES category(category_id),
    subcategory_id VARCHAR NOT NULL REFERENCES subcategory(subcategory_id)
);


SELECT * FROM campaign;