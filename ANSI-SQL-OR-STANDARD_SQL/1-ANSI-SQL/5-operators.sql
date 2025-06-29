/* 

In SQL, operators are special symbols or keywords used in expressions to perform operations 
on data like comparing values, performing arithmetic, combining conditions, or manipulating strings.

Type:
    - Arithemetic: Used to perform mathematical operations (-, +, *, /, %)
    - Comparison: (=, <, >, <=, >=, <>, !=)
    - Logical: ALL, AND, ANY, BETWEEN, EXISTS, IN, LIKE, NOT, OR, SOME
    - Compound: +=, -=, *=, /=, %=, &=, ^-=, |*=
    - Bitwise: &, |, ^

*/
-- The where clause can contain many conditions

select * from Customers where customername = 'wisdom' or customername = 'george';
select * from Customers where customername = 'wisdom' and customerID < 100;
select * from Customers where customername = 'wisdom' and city like '[abcl]__%'; 
-- Both <> and != mean "not equal to" in SQL.

-- ✅ Difference:
-- <> is the standard SQL (ANSI) operator for "not equal".
-- != is a commonly accepted alternative in many SQL dialects (like SQL Server, PostgreSQL, MySQL), but it's not part of the ANSI standard.
-- The statement below returns: all customers from Spain that starts with a "G" or an "R".
select * from Customers where city = 'spain' and (customername like 'G%' or customername like 'R%');

-- Without Parentheses, the statement below returns: all customers from Spain that starts with a "G",
    -- plus all customers that starts with an "R", regardless of the country value:
select * from Customers where country = 'Spain' and customerName like 'G%' or customerName like 'R%';



-- NOT Operator:
-- This operator is used together with other operators to give the opposite result, it is used to negate a condition. Also, called a negative result.
-- Syntax: select col1, col2, ... from table_name where not condition;


-- Select all customers that are NOT from Spain: NOT operator used with the = operator --
select * from Customers where not country = 'Spain';

-- Select customers that does not start with the letter 'A': NOT operator used with LIKE operator --
select * from Customers where customerName not like 'A%'; -- '... not where customerName like 'A%';

-- Select customers with a customerID not between 10 and 60: NOT operator with between
select * from Customers where not customerID not between 10 and 60;

-- Select customers that are not from Paris or London: NOT operator used with IN operator
select * from Customers where country not in ('Paris', 'London');


/*
-----------------------------------------------------------
LIKE Operator and Widcards:
    Used in the where clause to search records by patterns in columns;

Wildcard: 
    Are characters (like, %, _) are used to substitute one or more characters in a string.

    Wildcards are used with the `like` operator and the `like` operator is used with the `where` clause.

| Symbol | Description |
%  -> Represents zero or more characters
_  -> Represents a single character
[] -> Represents any single character within the brackets
^  -> Represents any character not in the brackets 
-  -> Represents any single character within the specified range
{} -> Represents any escaped character


*/
-- Using the %, _, []
select * from Customers where customerName like 'jo%'; -- starts with jo
select * from Customers where customerName like '%oh%'; -- contains oh
select * from Customers where customerName like '%hn'; -- endswith hn
select * from Customers where customerName like '_dd'; -- starts with any single character followed by and endswith dd
select * from Customers where customerName like '__d%'; -- starts with any 2 characters followed by d.
select * from Customers where customerName like '%___d'; -- ends with any 3 characters followed by d.
select * from Customers where customerName like '[ads]__%'; -- starts with either a,d or s, followed by any 2 chars.
select * from Customers where customerName like '[a-e]%'; -- starts with characters within the range of a to e;
select * from Customers where customerName like 'Spain'; -- Gets records that customerName matches the specified name.
select * from Customers where customerName like '[acf]%'; -- Get records that starts with either a, c, f
select * from Customers where customerName like '[!acf]%'; -- Get records that does not starts with a, c or f
-- Learn more as needed in future.





/*
----------------------------------------------------------
IN and NOT IN Operator:
    The `in` operator is used to specify multiple values in the where clause.
    It is a shorthand for the `OR` operator.
*/

-- IN 
select * from Customers where customerName in ('Wisdom', 'George', 'Kenneth', 'Kingsley', 'Confidence', 'Destiny');

-- NOT IN
select * from Customers where customerName not in ('Something', 'Another');

-- with subquery
select * from Customers where customerName in (select customerName from Customers);



/*
--------------------------------------
    The SQL BETWEEN and NOT BETWEEN:
--------------------------------------

    The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
    The BETWEEN operator is inclusive: begin and end values are included. 

    Syntax:
        SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;

        SELECT * FROM Products WHERE ProductName NOT BETWEEN val1 AND val2 ORDER BY ProductName;
    
    DATE:
    
    SELECT * FROM Orders WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
    SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

*/




/*
--------------------------------------
    The SQL EXISTS Operator:
--------------------------------------
Used to test the existence of a record in a sub-query.
If the subquery returns 1 or more records, the 'exist' operator returns True else False.


Syntax:
    select col1 from table_name
    where exists (select cols ... from table_2 where col2 = col1 );

*/


select * from Suppliers 
where exists (select 1 from Products where Products.SupplierID = Suppliers.SupplierID and Products.UnitPrice > 20);

/*
 Since exists is used to test for existence of record in a related table.
 It is best and adviceable to use 'select 1' because this uses a constant value
 instead of causing overhead by selecting an actual 'columnName' from the table.


Step-by-step Explanation of how the statement is evaluated:

1. SQL starts scanning rows in the **outer query**, i.e., rows from `Customers C`.
2. For **each row** in `Customers`, it runs the **subquery**:
    
    ```sql
    (select 1 from Products where Products.SupplierID = Suppliers.SupplierID and Products.price > 20)
    ```
    🔸 Here, Suppliers.SupplierID is from the **outer query** and is passed into the subquery.
    
3. If the subquery **returns any row**, the `EXISTS` condition is **TRUE** for that customer, so the row is included.
4. If the subquery returns **no rows**, `EXISTS` is **FALSE,** and that customer is excluded.

*/




/*
    -----------------------------------------------
    ANY and ALL Operator:
    -----------------------------------------------

    **`ANY` operator:**

    - Compares a value to **any (at least 1) value** in a list or result from a subquery.

    /*
        Returns: All products where their ProductID appears in any row from the subquery.
    */
    select ProductID from Products
    where ProductID = any (select ProductID from OrderDetails where Quantity > 50);

    /*
        Returns: All products where their ProductID is greater than at least 1 records in the list of subquery result returned.
    */
    select ProductName from Products
    where ProductID > any (select ProductID from OrderDetails where Quantity > 50);



    **`ALL` operator:**

    - Compares a value to **all values** in a list or result from a subquery.

    ```sql
    /*
        The query returns a Products where ProductID matches all ProductIDs from the sub query.
    */
    select ProductName from Products
    where ProductID = ALL (select ProductID from OrderDetails where Quantity > 50);

    
    The query below returns Products where the ProductIDs is greater than every ProductIDs in the request of the sub query
    
    select ProductName from Products
    where ProductID > ALL (select ProductID from OrderDetails where Quantity > 50);
    ```

*/
-- MORE EXAMPLES TO BE ADDED...


