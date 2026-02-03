-- =========================
-- SQL AND | OR statements
-- =========================

-- Selects the Sakila database
USE sakila;

-- Retrieves titles of films released in 2006 with a PG-13 rating
SELECT title
FROM film 
WHERE release_year = 2006 AND rating = 'PG-13';

-- Retrieves actors named Nick Wahlberg
SELECT first_name, last_name
FROM actor 
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

-- Retrieves films rated 'G' with a rental duration of 7 days
SELECT title 
FROM film 
WHERE rating = 'G' AND rental_duration = 7;

-- Retrieves actors named Sandra whose last name starts with 'K'
SELECT first_name, last_name 
FROM actor 
WHERE first_name = 'Sandra' AND last_name LIKE 'K%';

-- Retrieves actors whose first name is either Nick or Penelope
SELECT first_name, last_name 
FROM actor
WHERE first_name = 'Nick' OR first_name = 'Penelope';

-- Retrieves films released in either 2005 or 2006
SELECT title, release_year 
FROM film 
WHERE release_year = 2005 OR release_year = 2006;

-- Retrieves films with a length of 90 or 120 minutes
SELECT title, length 
FROM film 
WHERE length = 90 OR length = 120;

-- Retrieves actors whose last name is Smith or Johnson
SELECT first_name, last_name 
FROM actor 
WHERE last_name = 'Smith' OR last_name = 'Johnson';

-- Retrieves films with a rental rate of either 0.99 or 4.99
SELECT title, rental_rate
FROM film 
WHERE rental_rate = 0.99 OR rental_rate = 4.99;