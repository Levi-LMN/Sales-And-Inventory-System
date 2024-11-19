CREATE VIEW product_stock AS
SELECT
    p.name AS product_name,
    c.name AS category_name,
    i.quantity AS stock_quantity
FROM
    inventory i
JOIN
    products p ON i.product_id = p.product_id
JOIN
    categories c ON p.category_id = c.category_id;
