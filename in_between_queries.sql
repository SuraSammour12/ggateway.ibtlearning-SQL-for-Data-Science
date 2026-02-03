-- =========================
-- SQL IN and BETWEEN
-- =========================
-- The IN operator is used to match a value against a list of specified values.
-- It is a cleaner and more readable alternative to multiple OR conditions.
--
-- The BETWEEN operator is used to filter values within a specified range.
-- BETWEEN is inclusive, meaning it includes both the start and end values.

-- Retrieves actors whose last name is either Smith, Johnson, or Williams
SELECT first_name, last_name 
FROM actor 
WHERE last_name IN ('Smith', 'Johnson', 'Williams');

-- Retrieves films with ratings G, PG, or PG-13
SELECT title, rating
FROM film 
WHERE rating IN ('G', 'PG', 'PG-13');

-- Retrieves films released in the years 2005, 2006, or 2007
SELECT title, release_year 
FROM film 
WHERE release_year IN (2005, 2006, 2007);

-- Retrieves actors whose first name is John, Jane, or Jim
SELECT first_name, last_name
FROM actor 
WHERE first_name IN ('John', 'Jane', 'Jim');

-- Retrieves actors whose last name is Garcia, Martine, or Davis
SELECT first_name, last_name
FROM actor 
WHERE last_name IN ('Garcia', 'Martine', 'Davis');

-- Retrieves films with ratings R or NC-17
SELECT title, rating 
FROM film 
WHERE rating IN ('R', 'NC-17');

-- Retrieves films with a length between 90 and 120 minutes (inclusive)
SELECT title, length 
FROM film 
WHERE length BETWEEN 90 AND 120;

-- Retrieves actors with actor_id between 10 and 20 (inclusive)
SELECT actor_id, first_name, last_name
FROM actor 
WHERE actor_id BETWEEN 10 AND 20;

-- Retrieves films released between 2006 and 2007 (inclusive)
SELECT title, release_year 
FROM film 
WHERE release_year BETWEEN 2006 AND 2007;

-- Retrieves actors whose first name falls alphabetically between A and D
SELECT first_name, last_name 
FROM actor
WHERE first_name BETWEEN 'A' AND 'D';

-- Retrieves films with a rental rate between 2.00 and 4.00 (inclusive)
SELECT title, rental_rate 
FROM film 
WHERE rental_rate BETWEEN 2.00 AND 4.00;
