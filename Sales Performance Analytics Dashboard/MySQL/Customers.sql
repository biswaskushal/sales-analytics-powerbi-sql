CREATE DATABASE customers;

USE customers;

CREATE TABLE customerData (
    customerID INT PRIMARY KEY,
    customerName VARCHAR(50),
    city VARCHAR(20),
    postalCode VARCHAR(20),
    country VARCHAR(20)
);

INSERT INTO customerData (customerID, customerName, city, postalCode, country)
VALUES
(1,'Aarav Sharma','Delhi','110001','India'),
(2,'Rohan Mehta','Mumbai','400001','India'),
(3,'Kunal Verma','Bangalore','560001','India'),
(4,'Priya Singh','Chennai','600001','India'),
(5,'Neha Patel','Ahmedabad','380001','India'),
(6,'Rahul Gupta','Pune','411001','India'),
(7,'Ananya Roy','Kolkata','700001','India'),
(8,'Vikas Yadav','Jaipur','302001','India'),
(9,'Sneha Iyer','Coimbatore','641001','India'),
(10,'Mohit Jain','Indore','452001','India'),

(11,'John Smith','New York','10001','USA'),
(12,'Emma Brown','Los Angeles','90001','USA'),
(13,'David Miller','Chicago','60601','USA'),
(14,'Sophia Wilson','Houston','77001','USA'),
(15,'James Taylor','Phoenix','85001','USA'),

(16,'Oliver White','London','EC2 5NT','UK'),
(17,'Amelia Clark','Manchester','M1 1AE','UK'),
(18,'Liam Harris','Birmingham','B1 1AA','UK'),

(19,'Lucas Martin','Toronto','M5H 2N2','Canada'),
(20,'Noah Anderson','Vancouver','V6B 3K9','Canada');

SELECT * FROM customerData;


CREATE TABLE OrdersData (
    customerID INT PRIMARY KEY,
    orderID INT,
    price INT,
    city VARCHAR(20),
    country VARCHAR(20)
);

INSERT INTO OrdersData (customerID, orderID, price, city, country)
VALUES
(1, 101, 250, 'Delhi', 'India'),
(2, 102, 300, 'Mumbai', 'India'),
(3, 103, 150, 'Bangalore', 'India'),
(4, 104, 400, 'Chennai', 'India'),
(5, 105, 350, 'Hyderabad', 'India'),
(6, 106, 500, 'Kolkata', 'India'),
(7, 107, 275, 'Pune', 'India'),
(8, 108, 450, 'Jaipur', 'India'),
(9, 109, 200, 'Ahmedabad', 'India'),
(10, 110, 320, 'Surat', 'India'),
(11, 111, 600, 'New York', 'USA'),
(12, 112, 550, 'Los Angeles', 'USA'),
(13, 113, 480, 'Chicago', 'USA'),
(14, 114, 700, 'Houston', 'USA'),
(15, 115, 650, 'Phoenix', 'USA'),
(16, 116, 420, 'London', 'UK'),
(17, 117, 390, 'Manchester', 'UK'),
(18, 118, 510, 'Birmingham', 'UK'),
(19, 119, 460, 'Toronto', 'Canada'),
(20, 120, 530, 'Vancouver', 'Canada');

SELECT * FROM OrdersData;

SELECT c.customerName, c.city AS customerCity, c.postalCode, c.country, o.orderID, o.price, o.city AS orderCity
FROM customerData c
INNER JOIN OrdersData o
ON c.customerID = o.customerID; 

