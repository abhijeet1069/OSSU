# MySQL

## Connect to MySQL

```shell
satyam@satyam-2 OSSU % mysql -h localhost -u root -p
Enter password: satyamx123
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.3.0 MySQL Community Server - GPL
```

## Show databases

```sql
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

```

## Show current database

```sql
mysql> select database();
+------------+
| database() |
+------------+
| sys        |
+------------+
```

## Switch Database

```shell
mysql> use sys;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed

```

## Create database

```sql
create database if not exists sample_db;
    
```

## Create Table

```sql

create table cars(
brand varchar(255),
model varchar(255),
year INT
);
```

## Show tables

```shell
mysql> show tables;
+-----------------------------------------------+
| Tables_in_sys                                 |
+-----------------------------------------------+
| host_summary                                  |
| host_summary_by_file_io                       |
| host_summary_by_file_io_type                  |
....
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
mysql> source /Users/satyam/Personal/OSSU/8-core-applications/1-DBMS/1-DB Modelling and Theory/mysql/basics/test.sql
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)
```

## Show table schema

```sql
mysql> desc Person;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| FirstName  | varchar(255) | YES  |     | NULL    |       |
| FilmChoice | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
```

## Import CSV file into Postgres table

```sql
LOAD DATA LOCAL INFILE '/Users/satyam/Personal/OSSU/8-core-applications/1-DBMS/1-DB Modelling and Theory/mysql/basics/person.csv' 
INTO TABLE Person 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`FirstName`,`FilmChoice`);
```

```shell
# Error while inserting data from CSV
mysql> source /Users/satyam/Personal/OSSU/8-core-applications/1-DBMS/1-DB Modelling and Theory/mysql/basics/test.sql

ERROR 3948 (42000): Loading local data is disabled; this must be enabled on both the client and server sides

## Fix1: Set global variable
mysql> SET GLOBAL local_infile=1;
Query OK, 0 rows affected (0.00 sec)
mysql> quit
Bye

## Fix2: Connect to DB with appropriate flag and run the query
satyam@satyam-2 OSSU % mysql -h localhost -u root --local-infile=1 -p

mysql> source /Users/satyam/Personal/OSSU/8-core-applications/1-DBMS/1-DB Modelling and Theory/mysql/basics/test.sql
Query OK, 1 row affected, 1 warning (0.00 sec)

Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 2 rows affected (0.00 sec)
Records: 2  Deleted: 0  Skipped: 0  Warnings: 0
```

## Delete data from table

```sql
mysql> delete from Person;
Query OK, 4 rows affected (0.00 sec)
```
