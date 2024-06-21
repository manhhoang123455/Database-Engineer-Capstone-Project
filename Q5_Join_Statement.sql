SELECT C.CustomerID, C.FirstName, C.LastName, O.OrderID, O.Cost, M.Cuisine, MI.CourseName
FROM Orders AS O
INNER JOIN Customers AS C
ON O.OrderID = C.OrderID
INNER JOIN Menu AS M
ON O.MenuID = M.MenuID
INNER JOIN MenuItems AS MI
ON M.MenusItemID = MI.MenusItemID
WHERE O.Cost > 150
ORDER BY O.Cost;