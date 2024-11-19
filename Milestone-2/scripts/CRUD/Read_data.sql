-- Select all products
SELECT * FROM products;

-- Select a specific product by ID
SELECT * FROM products WHERE product_id = 1;

-- Select all sales made by employee with ID 1
SELECT * FROM sales WHERE employee_id = 1;

-- Select all sales details for sale with ID 1
SELECT * FROM sales_details WHERE sale_id = 1;
