-- The SQL IN Operator
-- The IN operator allows you to specify multiple values in a WHERE clause.

-- The IN operator is a shorthand for multiple OR conditions.

-- Return all customers from 'Germany', 'France', or 'UK'

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);