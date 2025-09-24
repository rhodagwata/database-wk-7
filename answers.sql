--Assignment 1
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop'  AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


--Assignment 2

WITH Orders AS (
    SELECT DISTINCT OrderID, CustomerName
    FROM OrderDetails
) 

--Joining orders with order items
SELECT 
    o.OrderID,
    o.CustomerName,
    od.Product,
    od.Quantity
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
ORDER BY o.OrderID, od.Product;
