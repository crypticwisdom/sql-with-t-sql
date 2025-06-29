/*

LEFT JOIN:

The `LEFT JOIN` keyword returns all records from the left table (e.g., Customers), even if there are no matches in the right table (e.g., Orders), but leaves it blank ‘null’;
In some databases, `LEFT JOIN` is called `LEFT OUTER JOIN`.

It means:
- You want **all rows from the left *table***.
- And you want the **matching rows from the right *table*** based on the join condition.
- If **no match** is found in the right *table* for a row in the left *table*, then the columns from the right *table* will be filled with `NULL`.


SYNTAX:
    select 
        t1.cols..., t2.cols...
    from
        table1 as t1
    left join table2 as t2 on t1.related_column = t2.related_column;

- You can only use the 'where' keyword for filtering
*/

select * from Products
left join Categories on Products.CategoryID = Categories.CategoryID;