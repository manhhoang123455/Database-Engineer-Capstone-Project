DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `CancelOrder`(Order_ID INT)
BEGIN
DELETE FROM Orders WHERE OrderID = Order_ID;
SELECT CONCAT("Order ", Order_ID," is cancelled") AS Confirmed;
END$$
DELIMITER ;
