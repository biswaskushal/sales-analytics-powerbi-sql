CREATE DATABASE salesData;

USE salesData;

CREATE TABLE customers ( 
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    City VARCHAR(20),
    Country VARCHAR(20)
);

INSERT INTO customers VALUES
(1,'Aarav Sharma','Mumbai','India'),
(2,'Riya Verma','Delhi','India'),
(3,'Karan Mehta','Pune','India'),
(4,'Sneha Iyer','Chennai','India'),
(5,'Rahul Das','Kolkata','India'),
(6,'Ananya Singh','Bangalore','India'),
(7,'Vikram Patel','Ahmedabad','India'),
(8,'Neha Gupta','Jaipur','India'),
(9,'Rohit Malhotra','Gurgaon','India'),
(10,'Pooja Nair','Kochi','India'),
(11,'Suresh Reddy','Hyderabad','India'),
(12,'Kavya Rao','Mysore','India'),
(13,'Amit Mishra','Lucknow','India'),
(14,'Priya Choudhary','Bhopal','India'),
(15,'Nikhil Jain','Indore','India'),
(16,'Swati Kulkarni','Nagpur','India'),
(17,'Manish Tiwari','Kanpur','India'),
(18,'Isha Kapoor','Noida','India'),
(19,'Arjun Banerjee','Howrah','India'),
(20,'Mehul Shah','Surat','India'),
(21,'Tanvi Deshpande','Nashik','India'),
(22,'Rakesh Yadav','Varanasi','India'),
(23,'Shubham Agarwal','Mathura','India'),
(24,'Pallavi Joshi','Udaipur','India'),
(25,'Harshit Saxena','Bareilly','India'),
(26,'Divya Malhotra','Faridabad','India'),
(27,'Sanjay Kumar','Patna','India'),
(28,'Aishwarya Pillai','Trivandrum','India'),
(29,'Deepak Chauhan','Dehradun','India'),
(30,'Neeraj Pandey','Gorakhpur','India'),
(31,'Ankit Srivastava','Prayagraj','India'),
(32,'Ritu Arora','Amritsar','India'),
(33,'Kunal Bansal','Chandigarh','India'),
(34,'Sonali Ghosh','Durgapur','India'),
(35,'Abhishek Verma','Raipur','India'),
(36,'Monika Sethi','Panipat','India'),
(37,'Yash Thakur','Shimla','India'),
(38,'Naina Khandelwal','Ajmer','India'),
(39,'Pranav Kulkarni','Kolhapur','India'),
(40,'Bhavya Jain','Ujjain','India'),
(41,'Mohit Singhal','Meerut','India'),
(42,'Rashmi Patil','Satara','India'),
(43,'Siddharth Roy','Siliguri','India'),
(44,'Alok Tripathi','Rewa','India'),
(45,'Payal Bhat','Mangalore','India'),
(46,'Rohan Chatterjee','Asansol','India'),
(47,'Tanya Khanna','Ludhiana','India'),
(48,'Akash Dubey','Jabalpur','India'),
(49,'Pritam Sarkar','Malda','India'),
(50,'Shalini Aggarwal','Hisar','India'),
(51,'Aditya Solanki','Vadodara','India'),
(52,'Renu Yadav','Ballia','India'),
(53,'Saurabh Shukla','Faizabad','India'),
(54,'Nupur Mahajan','Pathankot','India'),
(55,'Varun Ahuja','Rohtak','India'),
(56,'Meena Iyer','Coimbatore','India'),
(57,'Keshav Arora','Alwar','India'),
(58,'Sonal Purohit','Jodhpur','India'),
(59,'Rajat Kapoor','Ambala','India'),
(60,'Preeti Saxena','Haldwani','India');

SELECT * FROM customers;


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',30000),
(103,'Headphones','Accessories',3000),
(104,'Office Chair','Furniture',12000),
(105,'Desk Lamp','Furniture',2500),

(106,'Tablet','Electronics',28000),
(107,'Smart Watch','Electronics',15000),
(108,'Bluetooth Speaker','Accessories',4500),
(109,'Wireless Mouse','Accessories',1200),
(110,'Keyboard','Accessories',1800),

(111,'Gaming Laptop','Electronics',85000),
(112,'Monitor','Electronics',22000),
(113,'Printer','Electronics',16000),
(114,'Scanner','Electronics',14000),
(115,'Webcam','Accessories',3500),

(116,'Bookshelf','Furniture',9000),
(117,'Sofa','Furniture',45000),
(118,'Dining Table','Furniture',38000),
(119,'Bed','Furniture',42000),
(120,'Wardrobe','Furniture',50000),

(121,'Power Bank','Accessories',2500),
(122,'USB Cable','Accessories',500),
(123,'Charger','Accessories',1800),
(124,'Router','Electronics',3500),
(125,'Hard Disk','Electronics',6000),

(126,'SSD','Electronics',8500),
(127,'Graphics Card','Electronics',42000),
(128,'Motherboard','Electronics',18000),
(129,'RAM','Electronics',7500),
(130,'Processor','Electronics',32000),

(131,'Ceiling Fan','Home Appliances',5500),
(132,'Air Conditioner','Home Appliances',42000),
(133,'Refrigerator','Home Appliances',38000),
(134,'Washing Machine','Home Appliances',32000),
(135,'Microwave Oven','Home Appliances',16000),

(136,'Electric Kettle','Home Appliances',2200),
(137,'Mixer Grinder','Home Appliances',4800),
(138,'Toaster','Home Appliances',1800),
(139,'Induction Stove','Home Appliances',3500),
(140,'Water Purifier','Home Appliances',21000),

(141,'Pen Drive','Accessories',900),
(142,'Memory Card','Accessories',1100),
(143,'Projector','Electronics',52000),
(144,'Soundbar','Electronics',18000),
(145,'VR Headset','Electronics',25000),

(146,'Office Table','Furniture',16000),
(147,'Recliner Chair','Furniture',28000),
(148,'Coffee Table','Furniture',8500),
(149,'Shoe Rack','Furniture',6200),
(150,'Study Chair','Furniture',9800),

(151,'Smart TV','Electronics',62000),
(152,'LED TV','Electronics',45000),
(153,'Set Top Box','Electronics',3200),
(154,'Game Console','Electronics',49000),
(155,'Joystick','Accessories',4500),

(156,'Camera','Electronics',72000),
(157,'Tripod','Accessories',2800),
(158,'Flash Light','Accessories',1500),
(159,'Router Extender','Electronics',4200),
(160,'Cooling Pad','Accessories',2300);

SELECT * FROM products;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1011,5,106,'2024-05-10',1),
(1012,6,107,'2024-05-12',2),
(1013,1,108,'2024-05-15',1),
(1014,2,109,'2024-05-18',3),
(1015,3,110,'2024-05-20',2),
(1016,4,111,'2024-05-25',1),
(1017,5,112,'2024-05-28',1),
(1018,6,113,'2024-06-02',2),
(1019,1,114,'2024-06-05',1),
(1020,2,115,'2024-06-08',4),
(1021,3,116,'2024-06-10',1),
(1022,4,117,'2024-06-12',1),
(1023,5,118,'2024-06-15',2),
(1024,6,119,'2024-06-18',1),
(1025,1,120,'2024-06-20',1),
(1026,2,121,'2024-06-25',3),
(1027,3,122,'2024-06-28',5),
(1028,4,123,'2024-07-02',2),
(1029,5,124,'2024-07-05',1),
(1030,6,125,'2024-07-08',2),
(1031,1,126,'2024-07-10',1),
(1032,2,127,'2024-07-12',1),
(1033,3,128,'2024-07-15',1),
(1034,4,129,'2024-07-18',2),
(1035,5,130,'2024-07-20',1),
(1036,6,131,'2024-07-25',2),
(1037,1,132,'2024-07-28',1),
(1038,2,133,'2024-08-02',1),
(1039,3,134,'2024-08-05',1),
(1040,4,135,'2024-08-08',2),
(1041,5,136,'2024-08-10',3),
(1042,6,137,'2024-08-12',1),
(1043,1,138,'2024-08-15',2),
(1044,2,139,'2024-08-18',1),
(1045,3,140,'2024-08-20',1),
(1046,4,141,'2024-08-25',4),
(1047,5,142,'2024-08-28',2),
(1048,6,143,'2024-09-02',1),
(1049,1,144,'2024-09-05',1),
(1050,2,145,'2024-09-08',1),
(1051,3,146,'2024-09-10',1),
(1052,4,147,'2024-09-12',1),
(1053,5,148,'2024-09-15',2),
(1054,6,149,'2024-09-18',1),
(1055,1,150,'2024-09-20',1),
(1056,2,151,'2024-09-25',1),
(1057,3,152,'2024-09-28',1),
(1058,4,153,'2024-10-02',3),
(1059,5,154,'2024-10-05',1),
(1060,6,155,'2024-10-08',2);


SELECT * FROM orders;


CREATE VIEW sales_analysis AS
SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    o.quantity,
    p.price,
    (o.quantity * p.price) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;


SELECT * FROM sales_analysis;


