-- =====================================================
-- CROSS JOIN & SELF JOIN in SQL
-- =====================================================

-- =====================================================
-- SECTION 1: CROSS JOIN
-- =====================================================

-- CROSS JOIN returns the Cartesian product of two tables.
-- Each row from the first table is combined with every row
-- from the second table.


-- Create Database
CREATE DATABASE shop;
USE shop;

-- Create Tables
-- Table to store products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

-- Table to store colors
CREATE TABLE colors (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50)
);

-- Table to store sizes
CREATE TABLE sizes (
    size_id INT PRIMARY KEY,
    size_name VARCHAR(20)
);


-- Insert Sample Data

-- Insert products
INSERT INTO products VALUES
(1, 'T-Shirt'),
(2, 'Jeans'),
(3, 'Sneakers');

-- Insert colors
INSERT INTO colors VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Green');

-- Insert sizes
INSERT INTO sizes VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

-- Perform CROSS JOINs 

-- This query returns all possible combinations of products and colors.
SELECT p.product_name, c.color_name
FROM products AS p  
CROSS JOIN colors AS c;

-- This query returns all possible combinations of products, colors, and sizes.
SELECT p.product_name, c.color_name, s.size_name
FROM products AS p  
CROSS JOIN colors AS c
CROSS JOIN sizes AS s;

-- =====================================================
-- SECTION 2: SELF JOIN
-- =====================================================
-- A SELF JOIN is a regular join but the table is joined with itself.
-- It is useful for hierarchical data or comparing rows within the same table.

-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

-- Insert Sample Data
INSERT INTO employees VALUES
(1, 'John', NULL),
(2, 'Alice', 1),
(3, 'Bob', 1),
(4, 'Carol', 2);

-- -----------------------------------------------------
-- SELF JOIN to show employees and their managers
-- -----------------------------------------------------
-- e1 represents the employee
-- e2 represents the manager
SELECT e1.employee_name AS employee,
       e2.employee_name AS manager
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id = e2.employee_id;


-- Create Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Add department_id to employees table
ALTER TABLE employees ADD department_id INT;

-- Insert Sample Data into Departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales');

-- Update employees with department_id
UPDATE employees SET department_id = 1 WHERE employee_id IN (1, 4);
UPDATE employees SET department_id = 2 WHERE employee_id IN (2, 3);

-- -----------------------------------------------------
-- SELF JOIN with another table
-- -----------------------------------------------------
-- This query displays:
-- employee name, manager name, and department name
SELECT 
    e1.employee_name AS employee,
    e2.employee_name AS manager,
    d.department_name
FROM employees AS e1
INNER JOIN employees AS e2
    ON e1.manager_id = e2.employee_id
INNER JOIN departments AS d
    ON e1.department_id = d.department_id;
