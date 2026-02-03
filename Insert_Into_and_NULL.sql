-- =========================
-- SQL Insert Into and NULL
-- =========================

-- Retrieves actors whose first name is NOT 'Nick'
SELECT first_name, last_name
FROM actor 
WHERE NOT first_name = 'Nick';

-- <> is the standard SQL “not equal” operator.
SELECT first_name, last_name
FROM actor 
WHERE first_name <> 'Nick';

-- Retrieves films that are NOT rated 'R'
SELECT title, rating
FROM film 
WHERE NOT rating = 'R';
-- Retrieves actors whose last name is NOT 'Doe'
SELECT first_name, last_name
FROM actor
WHERE NOT last_name = 'Doe';

-- Inserts a new customer record into the customer table
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date)
VALUES (1, 'sura', 'sam.', 'sura@gmail.com', 1, 1, CURDATE());

INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date)
VALUES (1, 'Michael', 'Brown', 'michael.brown@example.com', 4, 1, CURDATE());

-- Retrieves customers whose email address is NULL
SELECT first_name, last_name
FROM customer
WHERE email IS NULL;

-- Retrieves customers whose address_id is NOT NULL
SELECT first_name, last_name 
FROM customer
WHERE address_id IS NOT NULL;

-- Retrieves customer IDs where the first name is NULL
-- This query usually returns no results because first_name is typically NOT NULL
SELECT customer_id
FROM customer
WHERE first_name IS NULL;