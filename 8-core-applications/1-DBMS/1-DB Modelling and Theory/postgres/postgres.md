# Postgres

## Show databases

```sql
select datname from pg_database;
```

## Create database

```sql
-- DROP DATABASE IF EXISTS "college-admission";

CREATE DATABASE "college-admission"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
    
```

## Show Postgres version

```sql
select version();
```

## Create Table

```sql

create table cars(
brand varchar(255),
model varchar(255),
year INT
);
```

## Insert data in table

```sql
insert into cars(brand, model, year) values
('Volvo','p1800',1968),
('BMW','M1',1978),
('Toyota','Celica',1975);
```

## Run SQL file

```shell
postgres=# \i /Users/satyam/Personal/OSSU/8-core-applications/practical/postgres/hello.sql 
```

## Switch Database

```shell
postgres=# \c telusko

```

## Show tables

```shell
telusko=# \c learn-postgres
You are now connected to database "learn-postgres" as user "postgres".
learn-postgres=# \dt
Did not find any relations.
```

## Drop database

```sql
-- drops database even if users are connected to it
drop database postgres with (force)
```

## Import CSV file into Postgres table

## Warning

Never delete postgres table. It is the default table and will crash postgres.
Switching from Postgres to MySQL, as Postgres contains too much functions for a beginner.
Also, Postgres has a wierd CLI commands like COPY and \copy
