/*

**RIGHT JOIN:**

The `RIGHT JOIN` keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).

In some databases, `RIGHT JOIN` is called `RIGHT OUTER JOIN`.

It means:

- You want **all rows from the *right table***.
- And you want the **matching rows from the *left table*** based on the join condition.
- If **no match** is found in the *left table* for a row in the *right table*, then the columns from the *left table* will be filled with `NULL`.


SYNTAX:
    select 
        t1.cols..., t2.cols...
    from
        table1 as t1
    right join table2 as t2 on t1.related_column = t2.related_column;

- You can only use the 'where' keyword for filtering

*/

select * from Products
right join Categories on Products.CategoryID = Categories.CategoryID;