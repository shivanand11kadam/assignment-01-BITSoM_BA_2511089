CREATE DATABASE IF NOT EXISTS assignment_db;
USE assignment_db;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

-- Create Sales Representatives table
CREATE TABLE SalesReps (
    SalesRepID INT PRIMARY KEY,
    SalesRepName VARCHAR(100) NOT NULL
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID INT NOT NULL,
    SalesRepID INT NOT NULL,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalesRepID) REFERENCES SalesReps(SalesRepID)
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID VARCHAR(10) NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data (minimum 5 rows per table)

INSERT INTO Customers VALUES
(1,'Amit Sharma','Mumbai'),
(2,'Priya Singh','Delhi'),
(3,'Rahul Nair','Bangalore'),
(4,'Sita Verma','Mumbai'),
(5,'Raj Malhotra','Pune');

INSERT INTO Products VALUES
(101,'Smartphone',25000),
(102,'Laptop',60000),
(103,'Smartwatch',5000),
(104,'Headphones',2000),
(105,'Tablet',15000);

INSERT INTO SalesReps VALUES
(501,'Suresh Kumar'),
(502,'Anjali Mehta'),
(503,'Vikram Rai'),
(504,'Neha Gupta'),
(505,'Rohan Das');

INSERT INTO Orders VALUES
('ORD001',1,501,'2024-01-01'),
('ORD002',1,501,'2024-01-02'),
('ORD003',2,502,'2024-01-03'),
('ORD004',3,503,'2024-01-04'),
('ORD005',2,502,'2024-01-05');

INSERT INTO OrderItems VALUES
(1,'ORD001',101,1),
(2,'ORD002',102,1),
(3,'ORD003',103,2),
(4,'ORD004',104,5),
(5,'ORD005',101,1);
