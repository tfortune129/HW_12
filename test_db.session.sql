--basic query
--use hyphens to comment

SELECT *
FROM actor;

SELECT first_name, last_name FROM actor;

SELECT last_name, first_name FROM actor;

SELECT *
FROM actor
WHERE first_name = 'Nick';

SELECT *
FROM actor
WHERE first_name LIKE 'Nick';

-- % acts as a wildcard

SELECT *
FROM actor
WHERE first_name like 'N%';

-- _acts as a single wildcard
SELECT *
FROM actor
WHERE first_name LIKE 'K__%n';

--comparting operators
--greater than >
--less than <
--greater or equal to >=
--less or equal to <=
--not equal <>

SELECT *
FROM payment;

SELECT *
FROM payment;
WHERE amount <> 4.99;


SELECT customer_id, amount
FROM payment
WHERE amount > 10.00;


SELECT customer_id, amount
FROM payment
WHERE amount > 10.00;
ORDER BY amount ASC;
--asc = ascending



SELECT customer_id, amount
FROM payment
WHERE amount > 10.00;
ORDER BY amount DESC;


SELECT customer_id, amount
FROM payment
WHERE amount > 10.00;
ORDER BY amount ASC;