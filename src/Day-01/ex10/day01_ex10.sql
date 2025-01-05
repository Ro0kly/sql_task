SELECT (
	SELECT name
	FROM person
	WHERE person.id = person_id
) as person_name,
(
	SELECT pizza_name
	FROM menu
	WHERE menu.id = menu_id
) as pizza_name,
pizzeria.name as pizzeria_name
FROM person_order
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY person_name, pizza_name, pizzeria_name ASC 