DELIMITER //

CREATE TRIGGER CheckInventoryBeforeSale
BEFORE INSERT ON sales_details
FOR EACH ROW
BEGIN
   DECLARE currentStock INT;

   -- Get the current stock of the product
   SELECT quantity INTO currentStock
   FROM inventory
   WHERE product_id = NEW.product_id;

   -- Check if there is enough stock
   IF currentStock < NEW.quantity THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough stock available';
   END IF;
END //

DELIMITER ;
