-- =========================
-- SQL Alias
-- =========================
-- Aliases in SQL are temporary names given to tables or columns
-- to make queries easier to read and understand.
--
-- Column Aliases: Used to rename a column in the result set.
-- Table Aliases: Used to rename a table in the query, often to
-- shorten table names, especially in JOIN operations.

-- Renames the 'title' column to 'Film Title' in the result set
SELECT title AS 'Film Title'
FROM film;

-- Renames the 'name' column to 'Category Name' in the result set
SELECT name AS 'Category Name'
FROM category;

-- Uses a table alias 'cat' to reference the category table
-- This makes the query shorter and more readable
SELECT cat.name
FROM category AS cat;
