/*
    The 'insert into ... select' statement is used to write / update records into an existing table, without affecting the records in the table.

    SYNTAX:
        insert into existing_destination_table
        select * from source_table
        where condition; 

        insert into existing_destination_table (col1, col2, ...)
        select (col1, col2, ...) from source_table
        where condition;
*/

insert into CustomerCopy (CustomerID, CustomerName, City)
select CustomerID, CustomerName, City
from Customers where CustomerID > 0;