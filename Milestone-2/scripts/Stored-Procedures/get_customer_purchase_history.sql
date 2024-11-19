DELIMITER //

CREATE PROCEDURE GetCustomerPurchaseHistory(IN customerId INT)
BEGIN
   SELECT s.sale_date, p.name AS product_name, sd.quantity, sd.unit_price, (sd.quantity * sd.unit_price) AS total_amount
   FROM sales s
   JOIN sales_details sd ON s.sale_id = sd.sale_id
   JOIN products p ON sd.product_id = p.product_id
   WHERE s.customer_id = customerId;
END //

DELIMITER ;
