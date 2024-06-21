DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `AddBooking`(Booking_Date DATE, Table_Number INT, Customer_ID INT, Booking_ID INT)
BEGIN
INSERT INTO Bookings(BookingDate, TableNumber, CustomerID, BookingID)
VALUES(Booking_Date, Table_Number, Customer_ID, Booking_ID);
END$$
DELIMITER ;
