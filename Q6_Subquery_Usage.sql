SELECT `menu`.`Cuisine`
FROM `littlelemondb`.`menu`
WHERE MenuID = ANY (SELECT MenuID FROM Orders WHERE Quantity > 2);
