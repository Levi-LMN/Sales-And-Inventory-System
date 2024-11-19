SELECT
    cs.segment_name,
    SUM(sd.quantity * sd.unit_price) AS total_sales
FROM
    sales_details sd
JOIN
    customers c ON sd.customer_id = c.customer_id
JOIN
    customer_segments cs ON c.segment_id = cs.segment_id
GROUP BY
    cs.segment_name
ORDER BY
    total_sales DESC;
