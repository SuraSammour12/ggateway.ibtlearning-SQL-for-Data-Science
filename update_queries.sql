-- =========================
-- SQL UPDATE statements
-- =========================
-- Always use WHERE with UPDATE to avoid modifying all rows.

-- Updates the last name of the actor with actor_id = 1 to 'Doe'
UPDATE actor
SET last_name = 'Doe'
WHERE actor_id = 1;

-- Updates the rental duration of the film with film_id = 1 to 5 days
UPDATE film
SET rental_duration = 5
WHERE film_id = 1;

-- Updates the first name of the actor with actor_id = 2 to 'Jane'
UPDATE actor
SET first_name = 'Jane'
WHERE actor_id = 2;

