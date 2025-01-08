SELECT
	a1.pizza_name,
	(
		SELECT name
		FROM pizzeria
		WHERE pizzeria.id = a1.pizzeria_id
	) as pizzeria_name_1,
	(
		SELECT name
		FROM pizzeria
		WHERE pizzeria.id = a2.pizzeria_id
	) as pizzeria_name_2,
	a1.price
FROM menu a1, menu a2
WHERE a1.price = a2.price and a1.pizza_name = a2.pizza_name and a1.pizzeria_id != a2.pizzeria_id
ORDER BY 1