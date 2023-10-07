SQL(Structured Query Language) is the language we use to issue commands to the database.
    C.Create a table
    R.Retrieve some data
    U.Update data
    D.Delete data

SQLite is by default embedded in Python.

# Create
CREATE TABLE "Users" ("name" TEXT, "email" TEXT);

# Insert data
INSERT INTO Users (name, email) VALUES ('Chuck', 'csev@umich.edu');

# Delete data
DELETE from Users  as u where u.name like 'Kristen';

# Update data
UPDATE Users  SET email='sally@yahoo.com' where name='Sally';

# Retrieve data
SELECT * FROM Users;

# Building a data model:
    Basic Rule : Don't put the same string data in twice - use a relationship instead.

## Keys
    Primary key - Generally an auto-increment field
    Logical key - What outside world uses for lookup
    Foreign key - Foreign key is a column which points to the primary key of another table.

## Best Practices
    Never use logical key as the primary key
    Logical keys can and do change, albeit slowly.
    Relationships that are based on matching string fields are less efficient than integers.

## Foreign Key

CREATE TABLE "Artist" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
    "name" TEXT)

CREATE TABLE "Album" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
    artist_id INTEGER,
    "title" TEXT)

CREATE TABLE "Genre" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
    "name" TEXT)

CREATE TABLE "Track" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
    album_id INTEGER, genre_id INTEGER, len INTEGER, rating INTEGER, 
    "title" TEXT, "count" INTEGER)

### While inserting data. We first insert data into leaf nodes, an move towards root.
INSERT INTO Artist (name) VALUES ('Led Zepplin')
INSERT INTO Artist (name) VALUES ('AC/DC')

INSERT INTO Genre (name) VALUES ('Rock') ;
INSERT INTO Genre (name) VALUES ('Metal');

INSERT INTO Album (title, artist_id) VALUES ('Who Made Who', 2);
INSERT INTO Album (title, artist_id) VALUES ('IV', 1);

INSERT INTO Track (title, rating, len, count, album_id, genre_id) 
    VALUES ('Black Dog', 5, 297, 0, 2, 1) ;
INSERT INTO Track (title, rating, len, count, album_id, genre_id) 
    VALUES ('Stairway', 5, 482, 0, 2, 1) ;
INSERT INTO Track (title, rating, len, count, album_id, genre_id) 
    VALUES ('About to Rock', 5, 313, 0, 1, 2) ;
INSERT INTO Track (title, rating, len, count, album_id, genre_id) 
    VALUES ('Who Made Who', 5, 207, 0, 1, 2) ;

## JOIN
    Joining two tables without an ON clause gives all possible combinations of rows.