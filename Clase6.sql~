-- Ejercicio 1

SELECT f1.last_name, f1.first_name
FROM actor f1
WHERE last_name IN(SELECT last_name
					FROM actor f2
					WHERE f1.last_name = f2.last_name AND f1.actor_id <> f2.actor_id)
ORDER BY 1

-- Ejercicio 2

SELECT first_name, last_name
FROM actor f1
WHERE f1.actor_id NOT IN(SELECT DISTINCT actor_id
					  FROM film_actor f2)
					  
-- Ejercicio 3
					  
SELECT first_name, last_name
FROM customer f1
WHERE NOT EXISTS(SELECT *
					 FROM rental f2, customer f3
					 WHERE f3.customer_id = f2.customer_id 
					 AND f1.customer_id <> f2.customer_id)
					 
-- Ejercicio 4
					 
SELECT first_name, last_name
FROM customer f1
WHERE EXISTS(SELECT *
			FROM rental f2, customer f3
			WHERE f3.customer_id = f2.customer_id 
			AND f1.customer_id <> f2.customer_id)
			
-- Ejercicio 5
			
SELECT first_name, last_name, title
FROM actor, film 
WHERE title LIKE '%BETRAYED REAR%' OR title LIKE '%CATCH AMISTAD%'

-- Ejercicio 6

SELECT first_name, last_name, title
FROM actor 
JOIN film
ON title LIKE '%BETRAYED REAR%' AND NOT title LIKE '%CATCH AMISTAD%'

-- Ejercio 7

SELECT first_name, last_name, title
FROM actor
JOIN film
ON title LIKE '%BETRAYED REAR%' AND title LIKE '%CATCH AMISTAD%'

-- Ejercicio 8

SELECT DISTINCT first_name, last_name
FROM actor
JOIN film
ON NOT title LIKE '%BETRAYED REAR%' AND NOT title LIKE '%CATCH AMISTAD%'

