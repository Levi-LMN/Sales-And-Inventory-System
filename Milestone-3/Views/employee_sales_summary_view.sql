CREATE VIEW employee_sales_summary AS
SELECT
    e.first_name,
    e.last_name,
    COUNT(s.sale_id) AS total_sales,
    SUM(s.total_amount) AS total_revenue
FROM
    employees e
JOIN
    sales s ON e.employee_id = s.employee_id
GROUP BY
    e.employee_id;
