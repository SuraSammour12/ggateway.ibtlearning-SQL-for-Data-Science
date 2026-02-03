-- =========================
-- SQL LIMIT statements
-- =========================

-- Retrieves the first 5 actors from the actor table
SELECT first_name, last_name
FROM actor
LIMIT 5;

-- Retrieves the 10 most recently released films
SELECT title, release_year
FROM film
ORDER BY release_year DESC 
LIMIT 10;

-- Retrieves the top 3 films with the highest rental rates
SELECT title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 3;

-- Retrieves the 5 most recently released films
SELECT title, release_year
FROM film
ORDER BY release_year DESC 
LIMIT 5;

-- Retrieves the 5 longest films by duration
SELECT title, length 
FROM film
ORDER BY length DESC 
LIMIT 5;
