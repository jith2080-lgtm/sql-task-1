CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Address VARCHAR(200),
    City VARCHAR(50),
    Created_Date DATE DEFAULT (CURRENT_DATE)
);


INSERT INTO Customer
(Name, Email, Phone, Address, City)
VALUES
('Abisha Mol', 'abisha@gmail.com', '9876543210', 'Nagercoil', 'Nagercoil'),
('Anu', 'anu@gmail.com', '9876543211', 'Marthandam', 'Marthandam'),
('Priya', 'priya@gmail.com', '9876543212', 'Chennai', 'Chennai'),
('Meena', 'meena@gmail.com', '9876543213', 'Madurai', 'Madurai'),
('Rahul', 'rahul@gmail.com', '9876543214', 'Coimbatore', 'Coimbatore');

INSERT INTO Customer
(Name, Email, Phone, Address, City)
VALUES
('Kavin', 'kavin@gmail.com', '9876543215', 'Trichy', 'Trichy');


SELECT * FROM Customer;


SELECT *
FROM Customer
WHERE Customer_ID = 1;


UPDATE Customer
SET Phone = '9999999999',
    City = 'Kanyakumari'
WHERE Customer_ID = 1;


SELECT * FROM Customer
WHERE Customer_ID = 1;

DELETE FROM Customer
WHERE Customer_ID = 6;

SELECT * FROM Customer;


SELECT *
FROM Customer
WHERE City = 'Nagercoil';



SELECT Name, Email
FROM Customer;



SELECT COUNT(*) AS Total_Customers
FROM Customer;