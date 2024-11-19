DELIMITER //

CREATE TRIGGER UpdateInventoryTimestamp
BEFORE UPDATE ON inventory
FOR EACH ROW
BEGIN
   IF OLD.quantity != NEW.quantity THEN
      SET NEW.last_updated = CURRENT_TIMESTAMP;
   END IF;
END //

DELIMITER ;
