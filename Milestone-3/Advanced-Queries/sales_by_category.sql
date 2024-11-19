SELECT
    c.name AS category_name,
    SUM(sd.quantity * sd.unit_price) AS total_sales
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
JOIN
    categories c ON p.category_id = c.category_id
GROUP BY
    c.name
ORDER BY
    total_sales DESC;
