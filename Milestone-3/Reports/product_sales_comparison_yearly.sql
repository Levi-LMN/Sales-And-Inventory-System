SELECT
    p.name AS product_name,
    YEAR(s.sale_date) AS sale_year,
    SUM(sd.quantity) AS total_units_sold
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
JOIN
    sales s ON sd.sale_id = s.sale_id
GROUP BY
    p.product_id, sale_year
ORDER BY
    sale_year DESC, total_units_sold DESC;
