/*

    The select top command, is used to return a specified amount of records from a large table.
    Querying all data from a table affects performance, by using the 'select top' statement, 
    you can specify the number or quantity of records to be returned in a single query.

    SYNTAX: 
        select top 10 * from table;
        SELECT TOP (N) column1, column2, ... FROM table_name;
*/
-- Always combine TOP with ORDER BY to ensure predictable results.


use learn_sql;

-- return only the first 5 records
select top 5
    *
from Customers;

-- return the last 5 records
select top 5
    *
from Customers
order by CustomerID desc;

-- return 5 % of records in the tabe
select top 100 percent
    *
from customers;

-- Get Last 5 Records in Ascending Order
select *
from
    (select top 5
        customerID, customerName
    from customers
    order by CustomerID DESC) as e
order by customerID asc;