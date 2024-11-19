CREATE VIEW product_sales AS
SELECT
    p.name AS product_name,
    SUM(sd.quantity) AS total_quantity_sold,
    SUM(sd.quantity * sd.unit_price) AS total_sales
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
GROUP BY
    p.product_id;
