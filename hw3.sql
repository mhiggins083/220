CREATE DATABASE Company;
USE Company;
CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY(id)
    );
CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY(id),
    FOREIGN KEY (customerId)REFERENCES customers(id)
    );
INSERT INTO customers (firstname, lastname, company) VALUES (
                                'Boba', 'Fett', 'Bounty Hunter'
    );
INSERT INTO customers (firstname, lastname, company) VALUES (
                                'Din', 'Djarin', 'Mandolorian'
    );

SELECT * from customers;
SELECT * from orders;
INSERT INTO orders (product, cost, customerId) VALUES ('EE-3 Rifle','15', '1');
INSERT INTO orders (product, cost, customerId) VALUES ('Slave I','20', '1');
INSERT INTO orders (product, cost, customerId) VALUES ('Dark Saber','15', '1');
INSERT INTO orders (product, cost, customerId) VALUES ('N-1 Starfighter','10', '1');
DELETE FROM orders where id in (1, 2);
SELECT DISTINCT orders.product, orders.cost, customers.firstname, customers.lastname, customers.company
FROM orders, customers
INNER JOIN orders o on customers.id = o.customerId
    WHERE o.customerId=1;