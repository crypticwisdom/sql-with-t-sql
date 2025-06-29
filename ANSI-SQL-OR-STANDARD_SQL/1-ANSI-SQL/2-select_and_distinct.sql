-- 1. The select keyword is used to select data from a database table.
-- You select table by specifying columns or fetch all columns. 

-- Example:
-- Return all columns, without specifying every column name, you can use the SELECT * syntax:

select * from Customers;

-- Return specific columns in the customer table
select CustomerName, City, CustomerId from Customers;

-- You can also select records with default values for columns;
select 1 as number_value, 'Wisdom' as CustomerName from customers;





/*

2. Select Distinct records:

Inside a database table there are usually duplicate records.

The DISTINCT keyword is used to return only unique rows - where uniqueness is based on the columns specified in the
statement.

You can't fetch unique rows using "*", because there could be auto-incremented fields like the 
'ID' field in the record which are always unique.

In-short, if you want to return only unique rows (rows without duplicate records), 
use the DISTINCT keyword before the list columns in the statement.

If the ‘DISTINCT’ keyword is omitted, the statement returns all records of the columns specified. 
But when used, it returns only distinct data from the particular column.

*/

-- Example:
SELECT DISTINCT CustomerName, City FROM Customers;

-- This returns only distinct values for the name column.
SELECT DISTINCT Country FROM Customers;

-- What happens when you add more columns? -- Uniqness is based on the number of columns, so by adding more columns the sql engine
-- will perform a check of the rows returned to see if there are any rows in the result set that matches any other rows on both columns specified, that is
-- If CustomerID, CustomerName, City values of a single row, exactly matches another row in the result set
SELECT DISTINCT CustomerID, CustomerName, City FROM Customers;

/*
	Now SQL considers both columns together:
	- A row is only a duplicate if both name and surname are exactly the same.
	- Think of DISTINCT as applying to entire rows, not individual columns.
	- SQL checks the combination of name and surname values in each row.
	- It removes duplicate rows where both values are the same.
*/