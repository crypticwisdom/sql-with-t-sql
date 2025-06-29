/*
    NULL FUNNCTIONS:

    These functions are used to return an alternative value if the expression is NULL.
    Say you have this table below, and you want to do 

    `price * quantity` the FIRST row will return `NULL` because any value Multiplied by NULL will return NULL result, so you can use these functions to return an Alternative value if the expression is `NULL`
    price | quantity
    +-----|----------
    | 43  | NULL

    To return an alternate value when a field is NULL, you can use the functions below:
    1. ISNULL(expression_or_col, alternate_value): This function evaluates the expression or null column, and if it evaluates to NULL, then it returns the alternate value 0.
    2. COALESCE(expr_or_col1, expr_or_col1, expr_or_coln...): This coalesce function returns the first non-null value;


*/
-- Using the ISNULL function
select ISNULL(12 * Null, 0);
select isnull(unitprice, 0) from Products;
select count(isnull(unitprice, 0)) from products;

-- Using the COALESCE function
select coalesce(Null, null, 0, 12, 0, null);
select coalesce(unitprice, 0) from products; --if 'unitprice is NULL' it returns 0 else it return the value held in the 'unitprice'.

