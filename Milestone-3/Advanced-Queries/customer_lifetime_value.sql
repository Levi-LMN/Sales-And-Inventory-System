SELECT
    c.name AS customer_name,
    SUM(sd.quantity * sd.unit_price) AS total_spent
FROM
    customers c
JOIN
    sales s ON c.customer_id = s.customer_id
JOIN
    sales_details sd ON s.sale_id = sd.sale_id
GROUP BY
    c.customer_id
ORDER BY
    total_spent DESC;
