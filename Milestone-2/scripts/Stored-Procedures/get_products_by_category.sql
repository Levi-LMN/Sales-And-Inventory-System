DELIMITER //

CREATE PROCEDURE GetProductsByCategory(IN categoryId INT)
BEGIN
   SELECT p.product_id, p.name, p.price
   FROM products p
   JOIN categories c ON p.category_id = c.category_id
   WHERE c.category_id = categoryId;
END //

DELIMITER ;
