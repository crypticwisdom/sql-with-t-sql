/*

### **Alias in SQL**

An **alias** gives a temporary, more descriptive name to a **column** or **table**, using the `AS` keyword. It only lasts for the duration of the query.

- Example: `SELECT COUNT(*) AS [Number of records] FROM Products;`
- If the alias contains spaces, use square brackets `[]` or double quotes `""`.
- **Table aliases** also use `AS`, and are especially helpful in queries involving multiple tables to make the query shorter and clearer.

### **When to Use Aliases:**

- When querying multiple tables
- When using functions
- When column names are long or unclear
- When combining multiple columns together
*/


-- Column
-- Select column1 as col1, column2 as col2 from table_name;
select productName as name from Products;

-- select ProductName as [Product Name] ...
-- select ProductName as "Product Name" ...

-- 4 columns
select CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address 
from Customers;

-- Table
select * from Products as Prods;

-- Adv example of using ALIAS on table:
select O.orderID, O.OrderDate, C.CustomerName, C.City 
from Orders as O, Customers as C
where C.CustomerID = O.CustomerID AND C.CustomerName like 'Around%';

-- The above is an INNER JOIN written in implicit syntax (also called a comma-style join).


-- Same as the above query above but lesser:
select 
    Orders.ID, Orders.OrderDate, Customers.CustomerName, Customers.City
from
    Orders, Customers
where Customers.CustomerID = Orders.CustomerID and Customers.CustomerName like 'Around%'