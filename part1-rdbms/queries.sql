-- Q1: List all customers from Mumbai along with their total order value
SELECT c.CustomerName,
       SUM(p.Price * oi.Quantity) AS TotalOrderValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
WHERE c.City = 'Mumbai'
GROUP BY c.CustomerName;


-- Q2: Find the top 3 products by total quantity sold
SELECT p.ProductName,
       SUM(oi.Quantity) AS TotalQuantitySold
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantitySold DESC
LIMIT 3;


-- Q3: List all sales representatives and the number of unique customers they have handled
SELECT s.SalesRepName,
       COUNT(DISTINCT o.CustomerID) AS UniqueCustomers
FROM SalesReps s
LEFT JOIN Orders o ON s.SalesRepID = o.SalesRepID
GROUP BY s.SalesRepName;


-- Q4: Find all orders where the total value exceeds 10000, sorted by value descending
SELECT o.OrderID,
       SUM(p.Price * oi.Quantity) AS TotalValue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY o.OrderID
HAVING TotalValue > 10000
ORDER BY TotalValue DESC;


-- Q5: Identify any products that have never been ordered
SELECT p.ProductName
FROM Products p
LEFT JOIN OrderItems oi ON p.ProductID = oi.ProductID
WHERE oi.ProductID IS NULL;