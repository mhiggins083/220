use store;

INSERT INTO customers (first name) VALUE (1);
INSERT INTO customers (last name) VALUE (2);
INSERT INTO customers (company) VALUE (3);

DELETE FROM customers where id = 1;
DELETE FROM customers where id = 2;
DELETE FROM customers where id = 3;

select * from store;
select * from customer;
select * from order;
select * from product;

SELECT customer.firstname, customer.lastname, customer.company
FROM store
INNER JOIN customer 1_n<->1: ON customer.customer_Id = customer.Id;

SELECT customer.firstname, customer.lastname, customer.company
FROM store
INNER JOIN customer 1_n<->1: ON customer.customer_Id = customer.Id;
Where lastname = 'Skywalker';
