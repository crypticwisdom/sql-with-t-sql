use learn_sql;

/*
SECTION 9: INSERT INTO STATEMENT

    The SQL `INSERT INTO` statement is used for inserting new records into the database table specified.
    There are 2 ways of inserting records into a table using the `INSERT INTO` keyword:

    1. Specifying all columns and values to be entered in the other, you listed the columns (**Recommended**):
    SYNTAX: insert into table_name (col1, col2, ...) values (value1, value2, ...);

    2. Not specifying the columns, but only specifying the values in the order the columns are in the table.
    SYNTAX: insert into table_name values (value1, value2, value3 ...);
*/

-- select * from Customers;
-- -- Inserting values for all fields/columns in the table:
insert into Customers (CustomerID, CustomerName, City, Country) values (1, 'Wisdom', 'Lagos', 'Nigeria');

-- -- Insert values for specific fields: This will enter a default value of null for fields that aren't specified during insertion of a new record.
insert into Customers (CustomerID, CustomerName, City, Country) values (2, 'George', 'Lagos', 'Nigeria');

-- -- Insert multiple values to the table
insert into Customers (CustomerID, CustomerName, City, Country) values 
(3, 'Kenneth', 'Lagos', 'Nigeria'),
(4, 'Kingsley', 'Lagos', 'Nigeria'),
(5, 'Confidence', 'Lagos', 'Nigeria'),
(6, 'Destiny', 'Lagos', 'Nigeria');

insert into Customers (CustomerID, customerName, City, Country) values (7, 'Joy', 'Ogun State', 'Nigeria');

-- truncate table Customers;
select * from Customers;

