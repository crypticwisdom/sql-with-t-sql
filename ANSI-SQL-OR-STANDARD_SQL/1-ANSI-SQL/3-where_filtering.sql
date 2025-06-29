-- The WHERE clause is used to filter records.

-- Example:
select * from Customers where CustomerID < 50;

-- Use single quote for string or text fields.

select * from Customers where CustomerName = 'wisdom';



/*
    Note: 
    - The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!

    - We can filter result sets using the 'where' clause, and adding single or multiple conditional logics using operators.

    =, <, >, <=, >=, <> or !=
    BETWEEN: between a certain range
    LIKE: Search for a pattern
    IN: To specify multiple possible values in a column.
*/
-- Sample statements:
select * from customers where city in ('lagos', 'abuja');

-- return customers who has city which first letter is between a - z, followed by 2 characters and ends with 'e.'
select * from Customers where city like '%[a-z]__%e.';