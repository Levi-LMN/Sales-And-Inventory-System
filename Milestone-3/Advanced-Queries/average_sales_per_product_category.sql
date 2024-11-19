SELECT
    c.name AS category_name,
    AVG(sd.quantity * sd.unit_price) AS avg_sales_per_product
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
JOIN
    categories c ON p.category_id = c.category_id
GROUP BY
    c.name
ORDER BY
    avg_sales_per_product DESC;
