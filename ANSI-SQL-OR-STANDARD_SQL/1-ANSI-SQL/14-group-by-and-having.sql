/*

    'Group by' clause, groups rows with same column value into summary rows.
    like "find the number of customers in each country".

    Commonly used with the aggregate functions avg, count, sum, total, and min.

    Example:
        select column_name(s) 
        from table_name 
        where where_condition 
        group by column_name 
        order by order_column;
    

*/

use learn_sql;
select count(CustomerID), city from Customers group by city;

-- The following SQL statement lists the number of orders sent by each shipper:
select count(Orders.orderID) as OrderCount, Shippers.ShipperName from Orders
inner join Shippers on Shippers.ShipperID = Orders.ShipperID
group by Shippers.ShipperName;




/*

HAVING clause:
    This clause was added to SQL because the `where` keyword cannot be used with aggregate functions.
    The `HAVING` clause is used to **filter grouped data**, typically after a `GROUP BY`.

> 🧠 While WHERE filters rows before grouping, HAVING filters groups after aggregation.


Primary Purpose:
    To filter groups based on an aggregate condition after grouping**

Notes:
    - Aggregate functions are evaluated after the `where` clause.
    - `where` keyword cannot be used with aggregate functions.

SYNTAX:
    SELECT column_name(s) FROM table_name
    WHERE condition 
    GROUP BY column_name(s)
    HAVING condition
    ORDER BY column_name(s);
*/


-- The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):
select count(customerId) as counts, country 
from customers
group by country
order by counts desc;

-- The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 1 customers):
select count(customerId) as counts, country 
from customers
group by country
having count(customerId) > 1
order by counts desc;


-- Return a list of customername and its count if the counnt is greater than 2
select count(Customers.CustomerID) as customer_count, Customers.CustomerName from customers
inner join Orders on Customers.CustomerID = Orders.CustomerID
group by Customers.CustomerName
having count(Customers.CustomerID) < 2;