-- Update a product's price
UPDATE products
SET price = 28000.00
WHERE product_id = 1;

-- Update a customer's contact information
UPDATE customers
SET contact_info = '0723445566'
WHERE customer_id = 2;

-- Update the quantity of a product in inventory
UPDATE inventory
SET quantity = 120
WHERE product_id = 1;
