-- =========================
-- SQL Basic Queries
-- =========================

-- Selects the Sakila database to work with
USE sakila;

-- Retrieves all columns and all rows from the actor table
SELECT * 
FROM actor;

-- Retrieves only actor_id and first_name from the actor table
SELECT actor_id, first_name
FROM actor;

-- Retrieves all unique film ratings from the film table
SELECT DISTINCT rating
FROM film;

-- Retrieves film titles and their release years
SELECT title, release_year
FROM film;

-- Retrieves all unique release years from the film table
SELECT DISTINCT release_year
FROM film;

-- Retrieves titles and release years of films released in 2006
SELECT title, release_year 
FROM film
WHERE release_year = 2006;

-- Retrieves rental details for rentals made during May 2005
SELECT rental_id, rental_date, customer_id
FROM rental
WHERE rental_date BETWEEN '2005-05-01' AND '2005-05-31';

-- Retrieves film ID, title, and rating for films rated 'R'
SELECT film_id, title, rating
FROM film 
WHERE rating='R';

-- Retrieves film titles and release years sorted alphabetically (A–Z) by title
SELECT title, release_year
FROM film
ORDER BY title ASC;

-- Retrieves film titles and release years sorted reverse alphabetically (Z–A) by title
SELECT title, release_year
FROM film
ORDER BY title DESC;

-- Retrieves film titles and release years sorted by newest release year first
SELECT title, release_year 
FROM film 
ORDER BY release_year DESC;

-- Retrieves rental details sorted by most recent rental date first
SELECT rental_id, rental_date, customer_id
FROM rental
ORDER BY rental_date DESC;

-- Retrieves film ID, release year, and rental rate
-- Sorted by oldest release year first, then highest rental rate
SELECT film_id, release_year, rental_rate
FROM film
ORDER BY release_year ASC, rental_rate DESC;

-- Retrieves all unique customer last names sorted alphabetically
SELECT DISTINCT last_name
FROM customer
ORDER BY last_name ASC;