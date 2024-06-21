DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `CancelBooking`(Table_Number INT)
BEGIN
DELETE FROM Bookings WHERE TableNumber = Table_Number;
END$$
DELIMITER ;
