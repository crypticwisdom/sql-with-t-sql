use learn_sql;

/*

NULL VALUES:
    Null value means No Value.
    A field with a null value is a field with no value.

If a column in a table is made optional during table creation or alter, it means you can add new records or update records without entering a value for that particular field, in that case since it is made optional, the SQL engine will assign a default value/`null` to it, which means it holds no value.

A `null` value is different from zero, or an empty string value, or even white space. A field with a null value has been left blank during record creation!

Testing for Null Values: **IS NULL** or **IS NOT NULL:**

It is not possible to test for `null` value with `<, >, =, <=, >=`  operators; instead, you will use the `is null` and `is not null` keywords to test if a field holds a null or a value.

**Example:**

*/
-- Test for null value in the CustomerName field.
select * from Customers where CustomerName is null;

-- Test for not null value in the Address field.
select count(*) from Customers where City is not null;