-- SQL NOT NULL Constraint
-- By default, a column can hold NULL values.

-- The NOT NULL constraint enforces a column to NOT accept NULL values.

-- This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

-- SQL NOT NULL on CREATE TABLE

-- The following SQL ensures that the "ID", "LastName", and "FirstName" columns will NOT accept NULL values when the "Persons" table is created:

-- ExampleGet your own SQL Server
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- SQL NOT NULL on ALTER TABLE
To create a NOT NULL constraint on the "Age" column when the "Persons" table is already created, use the following SQL:

-- SQL Server / MS Access:

ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;

-- My SQL / Oracle (prior version 10G):

ALTER TABLE Persons
MODIFY COLUMN Age int NOT NULL;

-- Oracle 10G and later:

ALTER TABLE Persons
MODIFY Age int NOT NULL;


