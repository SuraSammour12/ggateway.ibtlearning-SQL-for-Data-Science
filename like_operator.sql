-- =========================
-- SQL LIKE Operator
-- =========================
-- The LIKE operator is used in SQL to search for a specified pattern in a column.
-- It is commonly used with wildcard characters:
--
-- % : Represents zero or more characters.
-- _ : Represents a single character.

-- Retrieves actors whose last name starts with 'TEM'
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'TEM%';

-- Retrieves actors whose first name starts with the letter 'A'
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'A%';

-- Retrieves actors whose last name starts with 'A' and ends with 'N'
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'A%N';

-- Retrieves actors whose first name starts with 'S' and ends with 'T'
SELECT first_name, last_name 
FROM actor 
WHERE first_name LIKE 'S%T';

-- Retrieves actors whose first name starts with 'A' and has exactly one more character
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'A_';

-- Retrieves films whose title contains the word 'Song'
SELECT title
FROM film 
WHERE title LIKE '%Song%';

-- Retrieves films whose title starts with 'The'
SELECT title 
FROM film
WHERE title LIKE 'The%';

-- Retrieves actors whose last name ends with 'e' followed by exactly one character
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%e_';

-- Retrieves actors whose first name contains the substring 'ann'
SELECT first_name, last_name 
FROM actor 
WHERE first_name LIKE '%ann%';
