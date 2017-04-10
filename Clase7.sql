SELECT c.customer_id, c.first_name, c.last_name
FROM rental n1, customer c
WHERE NOT EXISTS (SELECT *
				  FROM rental n2
				  WHERE n1.customer_id = n2.customer_id
				  AND n1.rental_id <> n2.rental_id)
AND n1.customer_id = c.customer_id
ORDER BY 1

SELECT *
	from (SELECT titel, description, rental_rate, rental_rate * 15 AS in_pesos
	FROM film) t 
WHERE in_pesos > 10.0
AND in_pesos <70.0
ORDER BY 4;

SELECT customer_id,
	firs_name,
	last_name,
	(SELECT MAX(amount) max_amount
	FROM payment
	WHERE payment.customer_id = customer.customer_id) AS amount
FROM customer
ORDER BY amount DESC,
	customer_id DESC;