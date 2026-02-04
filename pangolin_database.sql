-- =========================
-- Database Creation
-- =========================

-- Creates a new database named Pangolin
CREATE DATABASE Pangolin;

-- Displays all available databases
SHOW DATABASES;

-- Selects the Pangolin database to work with
USE Pangolin;

-- =========================
-- Table Creation
-- =========================

-- Creates the users table to store user information
CREATE TABLE users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique user ID
    user_name VARCHAR(50) NOT NULL,            -- User name (required)
    email VARCHAR(100) NOT NULL,                -- User email (required)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Record creation time
);

-- Creates the products table to store product information
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique product ID
    product_name VARCHAR(100) NOT NULL,         -- Product name
    price DECIMAL(10, 2) NOT NULL,               -- Product price
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Record creation time
);

-- Displays all tables in the Pangolin database
SHOW TABLES;

-- =========================
-- Insert Data
-- =========================

-- Inserts a new user named Alice
INSERT INTO users (user_name, email)
VALUES ('Alice', 'alice@example.com');

-- Inserts a new user named Bob
INSERT INTO users (user_name, email)
VALUES ('Bob', 'bob@example.com');

-- Inserts a new product: Pangolin Plush Toy
INSERT INTO products (product_name, price)
VALUES ('Pangolin Plush Toy', 19.99);

-- Inserts a new product: Pangolin T-Shirt
INSERT INTO products (product_name, price)
VALUES ('Pangolin T-Shirt', 14.99);

-- =========================
-- Retrieve Data
-- =========================

-- Retrieves all records from the users table
SELECT * FROM users;

-- Retrieves all records from the products table
SELECT * FROM products;

-- =========================
-- Alter Tables
-- =========================

-- Adds an age column to the users table
ALTER TABLE users
ADD COLUMN age INT;

-- Displays the structure of the users table
DESCRIBE users;

-- Adds a stock column to the products table with a default value of 0
ALTER TABLE products
ADD COLUMN stock INT DEFAULT 0;

-- Displays the structure of the products table
DESCRIBE products;

-- =========================
-- Update & Delete Data
-- =========================

-- Deletes the user whose name is Bob
DELETE FROM users
WHERE user_name = 'Bob';

-- Inserts a new user named Charlie with age information
INSERT INTO users (user_name, email, age)
VALUES ('Charlie', 'charlie@example.com', 25);

-- Retrieves all records from the users table after updates
SELECT * FROM users;

-- =========================
-- Table Deletion
-- =========================

-- Creates a temporary test table
CREATE TABLE test(
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique test ID
    name VARCHAR(50) NOT NULL           -- Name field
);

-- Drops (deletes) the test table
DROP TABLE test;

-- Displays all remaining tables
SHOW TABLES;

-- =========================
-- Database Deletion (Optional)
-- =========================

-- Drops the Pangolin database (commented for safety)
-- DROP DATABASE Pangolin;

-- Displays all databases
SHOW DATABASES;
