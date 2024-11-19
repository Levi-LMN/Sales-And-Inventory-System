# Sales and Inventory System

This repository contains the SQL script for setting up a **Sales and Inventory System** database. The schema is designed to support retail operations, including managing product inventory, tracking sales, handling customer and supplier information, and maintaining employee records. The database is fully relational, with enforced foreign key constraints to ensure data consistency.

## Features

### 1. Database Structure

The database includes the following key tables:

* `categories`: Stores product categories (e.g., Electronics, Furniture, Groceries)
* `products`: Catalog of products, linked to categories and suppliers. Includes pricing and timestamps for when products were added
* `suppliers`: Contains supplier details, including names and contact information
* `inventory`: Tracks stock levels for products, including quantities and timestamps for updates
* `customers`: Stores customer details such as names and contact information
* `employees`: Contains information about employees and their roles within the system
* `sales`: Summarizes sales transactions, linking employees and customers to each sale
* `sales_details`: Provides line-item details for each sale, specifying products, quantities, and unit prices

### 2. Relationships

The system is fully relational, with foreign key constraints defining dependencies:

* **Products** are linked to **categories** and **suppliers**
* **Inventory** is tied to **products**
* **Sales** link **employees** and **customers** to transactions
* **Sales details** connect each sale to specific **products**

### 3. Pre-Populated Sample Data

The database includes realistic sample data to demonstrate functionality:

* Categories, customers, employees, suppliers, and products
* Initial inventory levels for each product
* Sample sales transactions with detailed records of purchased items

## How to Use

### Step 1: Setting Up the Database

1. Ensure you have a MySQL-compatible database server
2. Execute the provided SQL script (`sales_inventory_system.sql`) to:
   * Drop existing tables if they exist
   * Create the necessary tables
   * Populate tables with sample data

### Step 2: Query the Database

Once set up, you can run queries to:
* Retrieve current inventory levels
* View sales reports and breakdowns
* Track customer or supplier activity
* Analyze employee performance based on sales

## Database Tables and Sample Queries

### 1. Categories
* **Purpose**: Organize products into groups
* **Sample Query**:
```sql
SELECT * FROM categories;
```

### 2. Products
* **Purpose**: Store product details
* **Sample Query**:
```sql
SELECT name, price FROM products WHERE category_id = 1;
```

### 3. Inventory
* **Purpose**: Track product stock levels
* **Sample Query**:
```sql
SELECT p.name, i.quantity 
FROM products p 
JOIN inventory i ON p.product_id = i.product_id;
```

### 4. Sales
* **Purpose**: Summarize sales transactions
* **Sample Query**:
```sql
SELECT s.sale_id, e.first_name AS employee, 
       c.name AS customer, s.total_amount 
FROM sales s 
JOIN employees e ON s.employee_id = e.employee_id 
JOIN customers c ON s.customer_id = c.customer_id;
```

### 5. Sales Details
* **Purpose**: Break down individual items in a sale
* **Sample Query**:
```sql
SELECT sd.sale_id, p.name, sd.quantity, sd.unit_price 
FROM sales_details sd 
JOIN products p ON sd.product_id = p.product_id;
```

## Customization

This schema can be extended or modified based on specific business needs:
* Add fields such as product descriptions or supplier ratings
* Include additional reports for advanced sales analytics
* Implement triggers for automatic inventory updates

## Contributing

Contributions are welcome! Feel free to fork this repository and submit pull requests with improvements or additional features.

## License

This project is open-source and available under the MIT License.

## Contact

For questions or suggestions, feel free to reach out via the repository's Issues section.
