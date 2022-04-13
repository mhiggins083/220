use store;
insert into customers (firstname, lastname, company) values ('Luke', 'Skywalker', 1);
insert into customers (firstname, lastname, company) values ('Darth', 'Vader', 2);
insert into customers (firstname, lastname, company) values ('Darth', 'Maul', 1);

insert into customers (product, cost, customer_Id) values ('Phantom Menace', '15', 1);
insert into customers (product, cost, customer_Id) values ('A New Hope', '15', 1);
insert into customers (product, cost, customer_Id) values ('Revenge of the Sith', '15', 1);

select * from customers;
select * from orders;
select * from products;

select firstname, lastname, company from store;
select product, cost, customer_Id from store;
select firstname, lastname, company from store;