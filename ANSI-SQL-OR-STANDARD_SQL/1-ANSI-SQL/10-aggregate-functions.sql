/*

SQL Aggregate Functions:
    An aggregate function is a function that performs a calculation on a set of values, and returns a single value.

    Aggregate functions are often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.

    The most commonly used SQL aggregate functions are:

    MIN() - returns the smallest value within the selected column
    MAX() - returns the largest value within the selected column
    COUNT() - returns the number of rows in a set
    SUM() - returns the total sum of a numerical column
    AVG() - returns the average value of a numerical column
    Aggregate functions ignore null values (except for COUNT(*)).

*/
use learn_sql;

-- MIN()
select min(CustomerID) as minimum_id from customers;

-- MAX()
select max(customerID) as max_id from Customers;

-- COUNT()
select Count(CustomerID) as id_count from Customers;

-- SUM()
select sum(CustomerID) as id_sum from Customers;

--AVG()
select avg(customerID) as average_customer_id from Customers;

-- Sample of Group By with Aggregate function:
 -- The group by statement groups result set by a specified column, below statement groups 
 -- the result set by 'city' and returns the count of customerid in the 'city'.
select 
    count(CustomerID), City as customer_count 
from 
    Customers group by City;

