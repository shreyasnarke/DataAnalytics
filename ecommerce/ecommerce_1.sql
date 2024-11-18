/*
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.
SELECT Syntax
SELECT column1, column2, ...
FROM table_name;
*/
select * from ecommerce.customers;
use ecommerce;
select customer_id,customer_city,customer_state from customers;
select * from orders;
use ecommerce;
select * from customer;
select * from customers where customer_state  ="MG";
select * from orders;