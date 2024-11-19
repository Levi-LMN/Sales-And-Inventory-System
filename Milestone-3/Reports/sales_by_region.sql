SELECT
    r.region_name,
    SUM(s.total_amount) AS total_sales
FROM
    sales s
JOIN
    customers c ON s.customer_id = c.customer_id
JOIN
    regions r ON c.region_id = r.region_id
GROUP BY
    r.region_name
ORDER BY
    total_sales DESC;
