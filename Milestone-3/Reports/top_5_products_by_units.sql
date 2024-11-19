SELECT
    p.name AS product_name,
    SUM(sd.quantity) AS total_quantity_sold
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
GROUP BY
    p.product_id
ORDER BY
    total_quantity_sold DESC
LIMIT 5;
