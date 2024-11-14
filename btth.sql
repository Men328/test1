CREATE DATABASE BTTH_Buoi5;

CREATE TABLE customers (
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(50) NOT NULL,
    contactName VARCHAR(50) NOT NULL,
    country VARCHAR(20) NOT NULL
);

CREATE TABLE orders (
	orderID INT PRIMARY KEY AUTO_INCREMENT,
    orderName VARCHAR(50) NOT NULL,
    orderDate DATE NOT NULL,
    totalAmount DECIMAL(10,2) NOT NULL
);

CREATE TABLE products (
	productID INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(100) NOT NULL,
    price DECIMAL(10,2)
);

CREATE TABLE orderDetails (
	orderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    orderID INT,
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    productID INT,
    FOREIGN KEY (productID) REFERENCES products(productID),
    quantity INT NOT NULL,
    unitPrice DECIMAL(10,2) NOT NULL
);

CREATE VIEW ThongTinDonHang AS 
SELECT * FROM orders;

CREATE VIEW ChiTietDonHang AS 
SELECT * FROM orderDetails;

CREATE INDEX name_order ON orders (orderName);

CREATE INDEX unitPrice on orderdetails (unitPrice);
