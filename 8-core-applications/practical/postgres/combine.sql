DROP DATABASE IF EXISTS "learn-postgres";

CREATE DATABASE "learn-postgres"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

create table cars(
brand varchar(255),
model varchar(255),
year INT
);

/*
insert into cars values
('Volvo','p1800',1968),
('BMW','M1',1978),
('Toyota','Celica',1975);
*/