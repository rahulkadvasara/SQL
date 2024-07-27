-- SQL Wildcard Characters
-- A wildcard character is used to substitute one or more characters in a string.

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- Symbol	Description
-- %	Represents zero or more characters
-- _	Represents a single character
-- []	Represents any single character within the brackets *
-- ^	Represents any character not in the brackets *
-- -	Represents any single character within the specified range *
-- {}	Represents any escaped character **
-- * Not supported in PostgreSQL and MySQL databases.

-- ** Supported only in Oracle databases.


-- Using the [] Wildcard
-- The [] wildcard returns a result if any of the characters inside gets a match.

-- Example
-- Return all customers starting with either "b", "s", or "p":

SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';

-- Using the - Wildcard
-- The - wildcard allows you to specify a range of characters inside the [] wildcard.

-- Example
-- Return all customers starting with "a", "b", "c", "d", "e" or "f":

SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';



-- Microsoft Access Wildcards
-- The Microsoft Access Database has some other wildcards:

-- Symbol	Description	Example
-- *	Represents zero or more characters	bl* finds bl, black, blue, and blob
-- ?	Represents a single character	h?t finds hot, hat, and hit
-- []	Represents any single character within the brackets	h[oa]t finds hot and hat, but not hit
-- !	Represents any character not in the brackets	h[!oa]t finds hit, but not hot and hat
-- -	Represents any single character within the specified range	c[a-b]t finds cat and cbt
-- #	Represents any single numeric character	2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295

