DELIMITER //

CREATE PROCEDURE UpdateInventoryAfterSale(IN saleDetailId INT)
BEGIN
   DECLARE productId INT;
   DECLARE quantitySold INT;

   -- Get the product ID and quantity sold from sales_details
   SELECT product_id, quantity INTO productId, quantitySold
   FROM sales_details
   WHERE sale_detail_id = saleDetailId;

   -- Update the inventory quantity
   UPDATE inventory
   SET quantity = quantity - quantitySold
   WHERE product_id = productId;
END //

DELIMITER ;
