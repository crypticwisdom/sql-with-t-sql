/*

FULL OUTER JOIN:**

A **FULL OUTER JOIN** returns **all rows from both tables.** If there’s **no match**, it fills in the missing side with `null`s.

A **FULL OUTER JOIN** combines the results of both:

- a **LEFT JOIN** (all records from the left table + matched ones from the right)
- and a **RIGHT JOIN** (all records from the right table + matched ones from the left)

So it returns:
✅ All **matching rows** from both tables
✅ All **unmatched rows from the left table** (with `NULL`s for the right table columns)
✅ All **unmatched rows from the right table** (with `NULL`s for the left table columns)


Note: FULL OUTER JOIN can potentially return very large result-sets!
You can only use the 'where' keyword for filtering


Quick reminder of what the result set for a full join looks like:

- there will be null fields from the right table for records that doesn't match the left row by the condition.
- there will be null fields from the left table for records that doesn't match the right row by the condition.
- there will be complete rows for records in the left and right that matches the 'ON' condition.
- the unmatched rows from each tables will be seenn in the result set as a single row.
*/

use learn_sql;

select * from Products
FULL outer join Categories on Products.CategoryID = Categories.CategoryID;

-- same as
select * from Products
FULL join Categories on Products.CategoryID = Categories.CategoryID;