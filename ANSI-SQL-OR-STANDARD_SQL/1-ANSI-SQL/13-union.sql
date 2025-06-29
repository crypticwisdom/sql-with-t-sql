/*

UNION and UNION ALL Operators:
The SQL `UNION` operator is used to combine the result set of 2 or more `SELECT` statements.

Every `select` statement within `UNION` must have:
- The same number of columns.
- The columns must also have similar data types
- The columns must be in the same order.


# UNION - The UNION operator selects only distinct values from the tables involved by default
select statement1
UNION
select statement2;

# UNION ALL - To allow duplicate values
select statement1 
UNION ALL
select statement2;

Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

| Clause | Allowed in each SELECT? | Allowed at the end of UNION? |
| `WHERE` | ✅ Yes | ❌ (not needed) |
| `ORDER BY` | ❌ No | ✅ Yes |
| `GROUP BY` | ✅ Yes | ✅ (on outer query if needed) |
*/

use learn_sql;

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers ORDER BY City;

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers ORDER BY City;