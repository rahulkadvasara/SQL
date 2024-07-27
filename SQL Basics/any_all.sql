-- The SQL ANY and ALL Operators
-- The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

-- The SQL ANY Operator
-- The ANY operator:

-- returns a boolean value as a result
-- returns TRUE if ANY of the subquery values meet the condition
-- ANY means that the condition will be true if the operation is true for any of the values in the range.

-- ANY Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);
-- Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

-- The SQL ALL Operator
-- The ALL operator:

-- returns a boolean value as a result
-- returns TRUE if ALL of the subquery values meet the condition
-- is used with SELECT, WHERE and HAVING statements
-- ALL means that the condition will be true only if the operation is true for all values in the range. 

-- ALL Syntax With SELECT
SELECT ALL column_name(s)
FROM table_name
WHERE condition;
-- ALL Syntax With WHERE or HAVING
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
  (SELECT column_name
  FROM table_name
  WHERE condition);
-- Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

