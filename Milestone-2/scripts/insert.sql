-- Categories
INSERT INTO categories (name) VALUES
('Electronics'),
('Furniture'),
('Groceries'),
('Clothing'),
('Stationery'),
('Sports Equipment'),
('Automotive'),
('Health & Beauty');

-- Customers
INSERT INTO customers (name, contact_info) VALUES
('John Mwangi', '0722333444'),
('Mary Achieng', '0733221122'),
('James Kamau', '0755445566'),
('Grace Otieno', '0711447788'),
('Samuel Njoroge', '0721333555'),
('Cynthia Mutua', '0734455566'),
('Peter Ochieng', '0712556677'),
('Jane Wairimu', '0744332211'),
('Daniel Kiprotich', '0723445566'),
('Faith Wanjiru', '0731447788');

-- Employees
INSERT INTO employees (first_name, last_name, position) VALUES
('David', 'Muiruri', 'Cashier'),
('Esther', 'Wanjiku', 'Sales Manager'),
('Peter', 'Kiprop', 'Storekeeper'),
('Lucy', 'Njeri', 'Assistant Manager'),
('Kevin', 'Otieno', 'Stock Manager'),
('Alice', 'Muthoni', 'Customer Care'),
('Francis', 'Kariuki', 'Accountant'),
('Eunice', 'Chebet', 'Cashier'),
('Brian', 'Njenga', 'Sales Associate'),
('Caroline', 'Mutiso', 'HR Officer');

-- Suppliers
INSERT INTO suppliers (name, contact_info) VALUES
('Tech Solutions Ltd', 'Nairobi, 0700111222'),
('Home Comforts', 'Mombasa, 0712334455'),
('Green Grocers', 'Kisumu, 0723445566'),
('Trend Clothiers', 'Nakuru, 0733446677'),
('Stationery World', 'Thika, 0722123344'),
('Sports Kenya', 'Eldoret, 0712233445'),
('Auto Spare Supplies', 'Kisii, 0745566778'),
('Beauty Essentials', 'Meru, 0704556677');

-- Products
INSERT INTO products (name, category_id, supplier_id, price, created_at) VALUES
('Smartphone', 1, 1, 25000.00, NOW()),
('Laptop', 1, 1, 70000.00, NOW()),
('Sofa Set', 2, 2, 55000.00, NOW()),
('Dining Table', 2, 2, 45000.00, NOW()),
('Rice (5kg)', 3, 3, 700.00, NOW()),
('Cooking Oil (1L)', 3, 3, 300.00, NOW()),
('T-shirt', 4, 4, 1200.00, NOW()),
('Jeans', 4, 4, 2500.00, NOW()),
('Notebook', 5, 5, 150.00, NOW()),
('Ballpoint Pen (Pack of 10)', 5, 5, 500.00, NOW()),
('Football', 6, 6, 3500.00, NOW()),
('Treadmill', 6, 6, 75000.00, NOW()),
('Car Tyre', 7, 7, 15000.00, NOW()),
('Engine Oil (1L)', 7, 7, 1200.00, NOW()),
('Shampoo', 8, 8, 800.00, NOW()),
('Lipstick', 8, 8, 600.00, NOW());

-- Inventory
INSERT INTO inventory (product_id, quantity, last_updated) VALUES
(1, 100, NOW()),
(2, 50, NOW()),
(3, 20, NOW()),
(4, 10, NOW()),
(5, 200, NOW()),
(6, 150, NOW()),
(7, 80, NOW()),
(8, 70, NOW()),
(9, 300, NOW()),
(10, 250, NOW()),
(11, 40, NOW()),
(12, 5, NOW()),
(13, 15, NOW()),
(14, 30, NOW()),
(15, 120, NOW()),
(16, 90, NOW());

-- Sales
INSERT INTO sales (employee_id, customer_id, sale_date, total_amount) VALUES
(1, 1, '2024-11-18 14:30:00', 25000.00),
(2, 2, '2024-11-18 15:00:00', 15000.00),
(3, 3, '2024-11-18 16:00:00', 1000.00),
(4, 4, '2024-11-18 16:30:00', 45000.00),
(5, 5, '2024-11-18 17:00:00', 700.00),
(6, 6, '2024-11-19 10:00:00', 3500.00),
(7, 7, '2024-11-19 11:00:00', 75000.00),
(8, 8, '2024-11-19 12:00:00', 600.00),
(9, 9, '2024-11-19 13:00:00', 2500.00),
(10, 10, '2024-11-19 14:00:00', 150.00);

-- Sales Details
INSERT INTO sales_details (sale_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 25000.00),
(2, 5, 10, 700.00),
(2, 6, 10, 300.00),
(3, 7, 2, 1200.00),
(4, 4, 1, 45000.00),
(5, 5, 1, 700.00),
(6, 11, 1, 3500.00),
(7, 12, 1, 75000.00),
(8, 16, 1, 600.00),
(9, 8, 1, 2500.00),
(10, 9, 1, 150.00);
