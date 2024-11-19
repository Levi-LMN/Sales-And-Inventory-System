CREATE VIEW supplier_sales AS
SELECT
    s.name AS supplier_name,
    SUM(sd.quantity * sd.unit_price) AS total_sales
FROM
    sales_details sd
JOIN
    products p ON sd.product_id = p.product_id
JOIN
    suppliers s ON p.supplier_id = s.supplier_id
GROUP BY
    s.supplier_id;
