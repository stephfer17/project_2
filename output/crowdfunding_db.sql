CREATE TABLE contacts (
  contact_id integer PRIMARY KEY,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL 
);

CREATE TABLE category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR(200) NOT NULL);
  
CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  sub_category VARCHAR NOT NULL);
  
CREATE TABLE campaign (
  cf_id SERIAL PRIMARY KEY,
  contact_id integer NOT NULL,
  company_name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  goal float,
  pledged float,
  outcome VARCHAR NOT NULL,
  backers_count integer NOT NULL,
  country VARCHAR NOT NULL,
  currency VARCHAR NOT NULL,
  launched_date date NOT NULL,
  end_date date NOT NULL,
  category_id VARCHAR NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)	
);  

select * from contacts
select * from category
select * from subcategory
select * from campaign