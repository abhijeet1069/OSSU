/*
CREATE TABLE persons (
  id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  dob DATE,
  email VARCHAR(255),
  PRIMARY KEY (id)
);
*/

COPY persons(first_name, last_name, dob, email)
FROM '/Users/satyam/Personal/OSSU/8-core-applications/db_modeling/db_navathe/c3_data_model/persons.csv'
DELIMITER ','
CSV HEADER;