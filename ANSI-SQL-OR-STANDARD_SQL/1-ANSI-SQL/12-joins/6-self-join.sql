/*

SELF JOIN:
    Used for joining a table to itself.

SYNTAX:
    select columns from table1 as A, table1 as B where condition;




# Note: The aliases used 'A' and 'B' are used to refer to the same table with different


*/

-- select * from Customers where not customerId != 10;
-- insert into Customers values (3, 'kenneth', 'abuja', 'nigeria');

select
    A.customerName as customerName1,
    B.customerName as customerName2
from Customers as A, Customers as B
where A.customerId <> B.customerId and A.city = B.city;
