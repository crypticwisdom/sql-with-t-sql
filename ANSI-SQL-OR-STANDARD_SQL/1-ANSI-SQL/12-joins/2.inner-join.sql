use learn_sql;
/* 
-- Results to a table of this column
| ProductID | ProductName | Price |
+-----------+------+-------+
| 1         | X    | X     |
+-----------+------+-------+


-- Results to a table of this column
| CategoryID | ProductID | CategoryName  |
+------------+-----------+-------+
| 23         | 1         | X     |
+------------+-----------+-------+
An INNER JOIN of Product with Categories table on ProductID 
will result to a single record which combines any specificied 
selected column name from both tables if and only if the ProductID 
value matches the ProductID value on the Categories table (That is, 
if the ProductID value 1 is not found in the Categories ProductID 
values or vice versa, it doesn't fetch the record at all)

SYNTAX:
-- select * | columns... from table1 join | inner join table2 on condition;
-- select * from customers join | inner join products on customerid = products.customerid;

*/

-- How to INNER JOIN the above table:
select 
    Products.CategoryID, Products.ProductID, Products.ProductName,
    Categories.CategoryName, Categories.Description
from Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- same query as above with table alias.
select 
    prod.CategoryID, prod.ProductID, prod.ProductName,
    cat.CategoryName, cat.Description
from Products as prod
JOIN Categories as cat ON prod.CategoryID = cat.CategoryID;

-- To get a whole colms without selecting specific colm use the *
-- select * from ... join ... on ...;

/*

NOTES:
    - Aliases were used to shorten the statement by giving the table a temporary name - an alias.
    - When querying without an alias, it is a good habit to access the column from
        the table like `TABLENAME.COLUMN` as in Products.ProductID.
    - The JOIN and INNER JOIN does the same thing, INNER JOIN is the default JOIN type 
        if you only specify JOIN in the query, the SQL engine interprets it as INNER JOIN.

*/