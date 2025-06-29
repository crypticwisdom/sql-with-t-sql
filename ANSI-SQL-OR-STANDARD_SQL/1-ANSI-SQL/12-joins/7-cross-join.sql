/*

**CROSS JOIN (Cartesian Product):**

A **CROSS JOIN** returns the **Cartesian product** of two tables, meaning it combines **every row** from the first table with **every row** from the second.

In maths, it comes from SET THEORY, if you have 2 sets:

```sql
set1 = {1, 2, 3}
set2 = {A, B, C}

The cartesian product set1 x set2 is:

theoretical result = {1A, 1B, 1C, 2A, 2B, 2C, 3A, 3B, 3C}
actual_result = {
(1, ‘A’), (1, ‘B’), (1, ‘C’),
(2, ‘A’), (2, ‘B’), (2, ‘C’), 
(3, ‘A’), (3, ’B’), (3,’C’)
}
```

**Samples and Syntax:**

```sql
# ---- Syntax ----
select
	Table1.Name,
	Table2.PhoneNumber 
from Table1
cross join Table2;

select
	*
from Table1
cross join Table2;

# 🔁 Formula:
/*If:
	Table A has M rows.
	Table B has N rows.
	Then the Cartesian product will return M × N rows.
*/
```

🔢 **Result count:** If Table A has **M** rows and Table B has **N** rows, → **CROSS JOIN returns M × N rows.**

**Basic Example:**

*Table1 - Colors*

| ColorID | Color |
| --- | --- |
| 1 | Red |
| 2 | Blue |

*Table 2:  Sizes:*

| SizeID | Size |
| --- | --- |
| 1 | Small |
| 2 | Medium |
| 3 | Large |

**Cross Join Queries:**

```sql
# Basic
select * from Colors cross join Sizes;

# Using table name
select Colors.Color, Sizes.Size
from Colors
cross join Sizes.

# Using Alias
select C.Color, S.Size
from Colors as C
cross join Sizes as S;
```

**Result:**

| Color | Size |
| --- | --- |
| Red | Small |
| Red | Medium |
| Red | Large |
| Blue | Medium |
| Blue | Medium |
| Blue | Medium |

and so on …

**Characteristics:**

| Feature | CROSS JOIN | Other Joins |
| --- | --- | --- |
| Match Logic | **No ON clause** | `ON` clause required |
| Purpose | All combinations | Related combinations |
| Rows Returned | **M × N** | Varies (usually ≤ M or N) |
| Performance | Can be heavy if misused | Usually optimized |

**Differences from other JOINs:**

| JOIN Type | Matches? | Use Case |
| --- | --- | --- |
| INNER JOIN | Only matching rows | Relational filtering |
| LEFT JOIN | All from left + matched right | Optional relationships |
| RIGHT JOIN | All from right + matched left | Optional relationships (from other side) |
| FULL JOIN | All from both + NULLs where missing | Combine and preserve all data |
| **CROSS JOIN** | **All combinations, no condition** | Matrix-style expansions |
| SELF JOIN | Same table joined to itself | Row-to-row comparison |

**Important Notes:**

- Cartesian products are often **unintended and dangerous** in large tables. If you forget to specify a `JOIN` condition, SQL will give you a Cartesian product by default (especially with comma-style joins), and it can produce **millions of rows**.
- Using a `CROSS JOIN` **by accident** (e.g., using comma-separated tables with **no `WHERE` clause**) can lead to **huge result sets**:

```sql
-- THIS IS A CROSS JOIN in disguise!
SELECT * FROM Products, Suppliers;
```

*/