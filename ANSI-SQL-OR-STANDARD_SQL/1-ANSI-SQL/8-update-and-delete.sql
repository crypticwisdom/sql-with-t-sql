use learn_sql;
/*

    Update statements are used to modify an existing record in a table.
    SYNTAX: 
        update table_name set col1 = value, col2 = value where condition;

    Note: Be careful when using the UPDATE statement, make sure to include the where clause when using the statement, it specifies the records to update, but if it is omitted, the update operation will update all records in the table.

*/

-- SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
update Customers set 
CustomerName = 'Wisdom Nwachukwu', City = 'Lekki'
where CustomerID = 1;

select * from Customers;



/* 

DELETE STATEMENT:

The SQL delete statement is used for deleting existing records from the table

**SYNTAX:**
delete from table where condition;

**NOTE:** Be careful when using the `delete` keyword when deleting from a table, notice the `where` clause in the statement, it is used to select the records to delete.
But if the `where` clause isn’t used, the statement will delete all the records in the table.

*/

-- The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:
delete from Customers where customerName = 'Alfreds Futterkiste';

-- This will delete the whole records in the 'Customers' table
delete from Customers;

/*
1. Delete all records/rows in a table:
    'delete from customers', this deletes all rows in the table, but doesn't deletes the table, it's structure, attributes and indexes.
    It only removes all records in the table specified.

2. Delete a table:
To delete a table, which means remove the table from existing in the database, use this command,
'drop table Customers' it deletes the table, it's structure, attributes, and indexes.

*/