SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

-- Return all customers from a city that contains the letter 'L':

SELECT * FROM Customers
WHERE city LIKE '%L%';

-- Return all customers that starts with "b" and ends with "s":

SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

-- Return all customers that have "r" in the second position:

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- If no wildcard is specified, the phrase has to have an exact match to return a result.

-- Example
-- Return all customers from Spain:

SELECT * FROM Customers
WHERE Country LIKE 'Spain';

