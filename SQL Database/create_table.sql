-- The SQL CREATE TABLE Statement
-- The CREATE TABLE statement is used to create a new table in a database.

-- Syntax
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
-- The column parameters specify the names of the columns of the table.

-- The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

-- Tip: For an overview of the available data types, go to our complete Data Types Reference.

-- SQL CREATE TABLE Example
-- The following example creates a table called "Persons" that contains five columns: PersonID, LastName, FirstName, Address, and City:

-- ExampleGet your own SQL Server
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
-- The PersonID column is of type int and will hold an integer.

-- The LastName, FirstName, Address, and City columns are of type varchar and will hold characters, and the maximum length for these fields is 255 characters.

 	 	 	 
-- Tip: The empty "Persons" table can now be filled with data with the SQL INSERT INTO statement.

-- Create Table Using Another Table
-- A copy of an existing table can also be created using CREATE TABLE.

-- The new table gets the same column definitions. All columns or specific columns can be selected.

-- If you create a new table using an existing table, the new table will be filled with the existing values from the old table.

-- Syntax
CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

-- The following SQL creates a new table called "TestTable" (which is a copy of the "Customers" table): 
-- Example
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;

-- Exercise:
-- Write the correct SQL statement to create a new table called Persons.

CREATE TABLE Persons
 (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);


