-- =========================
-- SQL Aggregate Functions
-- =========================
-- Aggregate functions perform a calculation on a set of values
-- and return a single value.
--
-- COUNT(): Returns the number of rows.
-- SUM():   Returns the total sum of a numeric column.
-- AVG():   Returns the average value of a numeric column.
-- MAX():   Returns the maximum value in a set.
-- MIN():   Returns the minimum value in a set.

-- Counts the total number of films in the film table
SELECT COUNT(*) AS total_films
FROM film;

-- Counts the number of actors whose last name is 'Smith'
SELECT COUNT(*) AS Smith_actors
FROM actor 
WHERE last_name = 'Smith';

-- Counts the number of actors whose first name is 'Adam'
SELECT COUNT(*) 
FROM actor 
WHERE first_name = 'Adam';

-- Counts the number of films released in the year 2006
SELECT COUNT(*) 
FROM film 
WHERE release_year = 2006;

-- Calculates the average length of all films
SELECT AVG(length) AS average_length 
FROM film;

-- Retrieves the highest rental rate among all films
SELECT MAX(rental_rate) AS max_rental_rate
FROM film;

-- Calculates the average rental rate of all films
SELECT AVG(rental_rate) 
FROM film;

-- Calculates the total combined length of all films
SELECT SUM(length) AS total_length
FROM film;

-- Counts the number of actors whose first name is 'John'
SELECT COUNT(*) AS john_actor
FROM actor
WHERE first_name = 'John';
