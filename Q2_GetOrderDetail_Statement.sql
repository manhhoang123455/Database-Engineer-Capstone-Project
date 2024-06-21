PREPARE GetOrderDetail 
FROM 'SELECT OrderID, Quantity, Cost FROM Orders WHERE OrderID = ?';