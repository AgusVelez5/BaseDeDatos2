SELECT f1.title, f2.title, f1.`length`
FROM film f1, film f2
WHERE f1.`length` = f2.`length`
ORDER BY 1

-- Ejercio 1
SELECT title, special_features
FROM film
WHERE rating = 'PG-13'

-- Ejercio 2

SELECT DISTINCT f1.`length`
FROM film f1
WHERE f1.`length` 
ORDER BY 1

-- ejercicio 3

SELECT title, rental_rale, replacement_cost
FROM film
WHERE replacement_cost BETWEEN 20.00 AND 24.00

-- ejercicio 4

SELECT DISTINCT f1.title, f1.rating, category
FROM film f1, film_list
WHERE special_features = "Behind the Scenes"



-- EJERCICIO 5

SELECT DISTINCT first_name, last_name
FROM actor, film
WHERE title = 'ZOOLANDER FICTION'

-- ejercio 6

SELECT address, city, country
FROM address, store, city, country
WHERE store_id = 1
ORDER BY city ASC

