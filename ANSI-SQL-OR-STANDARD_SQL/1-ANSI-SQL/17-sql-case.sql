/*

    The SQL CASE statement is used to return values after goinng through stated condition and it's value. Like an if-else statement.

    - When the first condition is True, it stops readinng the conditions and returns a value.
    - If no condition was met, it returns the default value from the ELSE statement.
    - If no condition was met, and no ELSE statement (default value) was given, the CASE statement returns NULL.


    SYNTAX:
        CASE
            when condition1 then value1
            when condition2 then value2
            when conditionN then value3
            ELSE default_value
        END;
*/
use learn_sql;
select *
from Customers;

select CustomerName,
CASE
    when city like '[Ll]%i' then 'This is CITY is Lekki'
    when city like '[Ll]%os' then 'This CITY is lagos'
END as customer_city,
CASE
    when CustomerID > 1 and CustomerID < 3 then 'CustomerID is between 1 - 3'
    when CustomerID > 40 then 'Off the chart'
    else 'Should not be NULL'
END as customer_id,
Country

from Customers;

select * from Customers
order by
(case 
    when city = 'Lekki' or city = 'lekki' then CustomerID
    when city = 'Lagos' or city = 'lagos' then CustomerID
    else city
end) desc, Country desc;


update customers set CustomerName = Null where CustomerID = 1;
select * from customers;

select ISNULL(CustomerID * CustomerName, 0) from Customers where CustomerID = 1;