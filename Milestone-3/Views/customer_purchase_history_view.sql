CREATE VIEW customer_purchase_history AS
SELECT
    cu.name AS customer_name,
    p.name AS product_name,
    sd.quantity,
    sd.unit_price,
    (sd.quantity * sd.unit_price) AS total_spent,
    s.sale_date
FROM
    sales s
JOIN
    customers cu ON s.customer_id = cu.customer_id
JOIN
    sales_details sd ON s.sale_id = sd.sale_id
JOIN
    products p ON sd.product_id = p.product_id
ORDER BY
    cu.name, s.sale_date;
