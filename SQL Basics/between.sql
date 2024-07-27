-- The SQL BETWEEN Operator
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

-- The BETWEEN operator is inclusive: begin and end values are included. 


Selects all products with a price between 10 and 20:

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;


SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

-- OR:

Example
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

