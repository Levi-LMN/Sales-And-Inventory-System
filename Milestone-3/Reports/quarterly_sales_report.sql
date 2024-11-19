SELECT
    CONCAT(YEAR(s.sale_date), '-Q', QUARTER(s.sale_date)) AS quarter,
    SUM(s.total_amount) AS total_sales
FROM
    sales s
GROUP BY
    quarter
ORDER BY
    quarter DESC;
