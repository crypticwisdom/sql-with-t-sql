-- The ORDER BY keyword is used to sort result sets by ascending or descending order;

-- Example:
select * from Customers where CustomerID >= 10 order by customerName;

-- The above statement returns records with id 10 above, and orders the result sets by the customerName in
-- ascending order (by default ORDER BY sorts in ascending order).

-- The below state sorts by ascending and descending order by specifying the order keyword.

select * from Customers where CustomerID >= 10 order by customerName asc;
select * from Customers where CustomerID >= 10 order by customerName desc;

-- Sort by more than 1 column:
select * from Customers where CustomerID >= 10 order by customerName, City; -- by default this sort in ascending order.
select * from Customers where CustomerID >= 10 order by customerName, City desc; -- sort by customerName and phoneNumber in descending order.
select * from Customers where CustomerID >= 10 order by customerName asc, City desc; -- sort by customerName in ascending order but when the sql engine encounters same customerName values, it then sorts by phoneNumber field in descending order.