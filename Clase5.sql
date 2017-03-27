-- Ejercicio 7 
SELECT DISTINCT f1.title, f1.rating, f2.title, f2.rating
FROM film f1, film f2
WHERE f1.rating = f2.rating AND f1.film_id < f2.film_id

-- Ejercicio 8
SELECT title, first_name, last_name, s1.store_id
FROM film, store s1, staff
WHERE s1.store_id = 2

