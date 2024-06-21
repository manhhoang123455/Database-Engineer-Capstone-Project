DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
SELECT Quantity AS "Max(Quantity) in Order"
FROM Orders
WHERE Quantity = MAX(Quantity);
END$$
DELIMITER ;
