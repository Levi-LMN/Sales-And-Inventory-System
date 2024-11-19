DELIMITER //

CREATE TRIGGER UpdateTotalAmountAfterSale
AFTER INSERT ON sales_details
FOR EACH ROW
BEGIN
   DECLARE total DECIMAL(10, 2);

   -- Calculate the total amount for the sale
   SELECT SUM(quantity * unit_price) INTO total
   FROM sales_details
   WHERE sale_id = NEW.sale_id;

   -- Update the sales total_amount
   UPDATE sales
   SET total_amount = total
   WHERE sale_id = NEW.sale_id;
END //

DELIMITER ;
