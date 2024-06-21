DELIMITER $$
CREATE DEFINER=`Admin`@`%` PROCEDURE `AddValidBooking`(Booking_Date DATE, Table_Number INT, Customer_ID INT)
BEGIN
START TRANSACTION;
SELECT 1 AS 'Booking Status' 
FROM Bookings 
WHERE BookingDate = Booking_Date
AND TableNumber = Table_Number
LIMIT 1
INTO @bookstatus;
IF @bookstatus = 1 THEN
ROLLBACK;
SELECT CONCAT('Table ', Table_Number, ' is already booked. Try another') AS 'Booking status';
ELSE
INSERT INTO Bookings(BookingDate, TableNumber, CustomerID)
VALUES 
(Booking_Date, Table_Number, Customer_ID);
COMMIT;
SELECT CONCAT('Table ', Table_number, ' is booked successfully') AS 'Booking status';
END IF;
END$$
DELIMITER ;
