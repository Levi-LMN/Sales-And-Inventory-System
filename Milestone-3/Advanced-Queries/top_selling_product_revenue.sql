SELECT
    p.name AS product_name,
    SUM(sd.quantity * sd.unit_price) AS total_revenue
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
GROUP BY
    p.name
ORDER BY
    total_revenue DESC
LIMIT 1;
