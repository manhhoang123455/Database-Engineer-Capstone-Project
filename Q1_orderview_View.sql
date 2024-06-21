CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `Admin`@`%` 
    SQL SECURITY DEFINER
VIEW `ordersview` AS
    SELECT 
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Quantity` AS `Quantity`,
        `orders`.`Cost` AS `Cost`
    FROM
        `orders`
    WHERE
        (`orders`.`Quantity` > 2)