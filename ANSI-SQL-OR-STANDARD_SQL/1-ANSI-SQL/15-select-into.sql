/*
    The SQL  select ... into...  statement is used to copy records from an existing database table to an entirely new table that it creates.

    SYNTAX:
        select col, col2... 
        into new_table
        from old_table
        where condition;  
    
    - You can copy the results of queries, even join queries into a new table.


    Characteristics:
        - It creates a new table and populates it with the result of the `select` query.
        - It is different from the PostgreSQL `COPY` command.
        - Cannot export data to a file. It is not for files (e.g, csv, txt …)
        - It fails if you try to copy results into an already existing table.
        - Duplicates Table’s structure + data
        - It only works in the same database
*/
use learn_sql;

-- Copy customerid, customername and city from customers table into a new table called
    -- CustomerCopy if and only if the customerid is greater that 0;

select CustomerID, CustomerName, City
into CustomerCopy
from Customers
where CustomerID > 0;

-- 
select Products.CategoryID into ProductsCat from Products
left join Categories on Products.CategoryID = Categories.CategoryID;


-- The 'select into' statement can also be used to create an entire new empty table
    -- using the schema of the existing table.