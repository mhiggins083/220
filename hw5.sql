CREATE DATABASE Store;
USE Store;
CREATE TABLE customers(
id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY(id)
);
CREATE TABLE orders(
id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY(id),
    FOREIGN KEY (customerId)REFERENCES customers(id)
);
ALTER TABLE orders add column products;

CREATE TABLE products(
id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY(id)
);

INSERT INTO customers (firstname, lastname, company) VALUES ('Luke','Skywalker','jedi');
INSERT INTO customers (firstname, lastname, company) VALUES ('Darth','Vader','sith');
INSERT INTO customers (firstname, lastname, company) VALUES ('Darth','Maul','sith');
INSERT INTO orders (title) VALUES ('A New Hope');
INSERT INTO orders (title) VALUES ('Revenge of the Sith');
INSERT INTO orders (title) VALUES ('Phantom Menace');

SELECT * FROM orders;
SELECT * FROM customers;
