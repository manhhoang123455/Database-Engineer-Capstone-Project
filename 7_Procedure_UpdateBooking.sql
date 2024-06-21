DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `UpdateBooking`(Table_Number INT, Booking_Date DATE)
BEGIN
UPDATE Bookings SET BookingDate = Booking_Date
WHERE TableNumber = Table_Number;
END$$
DELIMITER ;
