DELIMITER //

CREATE TRIGGER PreventProductDeleteWithSales
BEFORE DELETE ON products
FOR EACH ROW
BEGIN
   DECLARE saleCount INT;

   -- Check if there are sales associated with the product
   SELECT COUNT(*) INTO saleCount
   FROM sales_details
   WHERE product_id = OLD.product_id;

   -- If sales exist, prevent deletion
   IF saleCount > 0 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete product with existing sales';
   END IF;
END //

DELIMITER ;
