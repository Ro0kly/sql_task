WITH info as (
	SELECT menu.id as menu_id
	FROM menu
	EXCEPT
	SELECT person_order.menu_id
	FROM person_order
)
SELECT
	menu.pizza_name,
	menu.price,
	pizzeria.name as pizzeria_name
FROM info
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1,2
