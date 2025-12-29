USE test;

DROP DATABASE test;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

DROP TABLE customers;

INSERT INTO customers VALUES
(1, 'Amit'),
(2, 'Neha'),
(3, 'Rahul');

SELECT c.* FROM customers AS c;

CREATE TABLE orders (
    customer_id int PRIMARY KEY,
    product_name VARCHAR(50),
    city VARCHAR(20),
    price INT
);

INSERT INTO orders VALUES
(1, "Mobile", "Chamorshi", 300),
(3, "Laptop", "Nagpur", 500),
(7, "Ear Burds", "Wardha", 1000);

DROP TABLE orders;

SELECT o.* FROM orders AS o;

-- inner join example

SELECT c.customer_name, o.price, o.product_name, o.city
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id;

-- left join example

SELECT c.customer_name, o.price, o.product_name, o.city
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- right join example 

SELECT c.customer_name, o.price, o.product_name, o.city
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- union example

SELECT customer_id FROM customers
UNION
SELECT customer_id FROM orders;

SELECT count(customer_id), customer_name 
FROM customers 
GROUP BY customer_name;
