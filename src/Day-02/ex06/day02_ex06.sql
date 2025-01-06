SELECT
	menu.pizza_name as pizza_name,
	pizzeria.name as pizzeria_name
FROM person_order
JOIN person ON person.id = person_id and person.name IN ('Denis','Anna')
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY pizza_name, pizzeria_name