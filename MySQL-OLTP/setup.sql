-- This SQL script represents the Transactional Database Setup part of the project

-- Create a new database for product sales data
CREATE DATABASE sales_database;

USE sales_database;

-- Create a new table to store sales data
CREATE TABLE sales (
  product_id INT,
  customer_id INT,
  price DECIMAL(10,2),
  quantity INT,
  sale_timestamp DATETIME
);

-- Add an index on the timestamp field
CREATE INDEX idx_timestamp ON sales(sale_timestamp);
