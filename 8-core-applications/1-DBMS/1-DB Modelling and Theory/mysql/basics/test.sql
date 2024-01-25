create database if not exists sample_db;
use sample_db;

create table if not exists Person(
    FirstName varchar(255),
    FilmChoice varchar(255)
);

LOAD DATA LOCAL INFILE '/Users/satyam/Personal/OSSU/8-core-applications/1-DBMS/1-DB Modelling and Theory/mysql/basics/person.csv' 
INTO TABLE Person 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`FirstName`,`FilmChoice`);