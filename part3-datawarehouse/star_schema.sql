-- Create Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Create Store Dimension
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Create Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Create Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert sample data

INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-01-02', 1, 2024),
(3, '2024-02-01', 2, 2024);

INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

INSERT INTO dim_product VALUES
(101, 'Laptop', 'Electronics'),
(102, 'Shirt', 'Clothing'),
(103, 'Milk', 'Groceries');

INSERT INTO fact_sales VALUES
(1,1,1,101,2,120000),
(2,2,2,102,5,4000),
(3,3,3,103,10,3000),
(4,1,2,101,1,60000),
(5,2,1,102,3,2400),
(6,3,2,103,6,1800),
(7,1,3,101,2,120000),
(8,2,3,102,4,3200),
(9,3,1,103,8,2400),
(10,1,1,101,1,60000);