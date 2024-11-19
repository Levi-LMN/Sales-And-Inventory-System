SELECT
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
    SUM(s.total_amount) AS total_sales,
    COUNT(s.sale_id) AS number_of_sales
FROM
    sales s
GROUP BY
    month
ORDER BY
    month DESC;
