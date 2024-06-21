DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `ManageBooking`(Booking_Date DATE, Table_Number INT)
BEGIN
SELECT CONCAT('Table ', TableNumber, ' is already booked') AS 'Booking status'
FROM Bookings
WHERE BookingDate = Booking_Date 
AND TableNumber = Table_Number;
END$$
DELIMITER ;
