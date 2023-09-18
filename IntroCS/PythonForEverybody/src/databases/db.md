SQL(Structured Query Language) is the language we use to issue commands to the database.
    C.Create a table
    R.Retrieve some data
    U.Update data
    D.Delete data

SQLite is by default embedded in Python.

# create
CREATE TABLE "Users" ("name" TEXT, "email" TEXT);

# insert data
INSERT INTO Users (name, email) VALUES ('Chuck', 'csev@umich.edu');

# delete data
DELETE from Users  as u where u.name like 'Kristen'

# update data
UPDATE Users  SET email='sally@yahoo.com' where name='Sally'