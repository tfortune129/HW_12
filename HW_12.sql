-- Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- 3. What film does the store have the most of? (search in inventory)
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY count DESC



-- 4. How many customers have the last name ‘William’?

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';



-- 5. What store employee (get the id) sold the most rentals?
SELECT count(*), staff_id
FROM payment
GROUP BY staff_id
ORDER BY count DESC 

SELECT first_name, last_name
from staff
WHERE staff_id = 2



-- 6. How many different district names are there?
SELECT COUNT(district)
FROM address



-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT count(*), film_id
from film_actor
GROUP BY film_id
ORDER BY COUNT DESC

SELECT title
from film
WHERE film_id = 508



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
from customer
WHERE last_name like '%es';




-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(amount), amount
from payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250

--where always come first and having comes last



-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT COUNT(distinct rating)
from film


SELECT count(rating), rating
from film
GROUP BY rating
Order BY COUNT DESC

