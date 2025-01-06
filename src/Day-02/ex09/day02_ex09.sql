WITH info as (
	SELECT
	person.id,
	person.name,
	person.gender,
	person.address,
	person_order.menu_id,
	menu.pizza_name as pizza_name
	FROM person
	JOIN person_order ON person_order.person_id = person.id
	JOIN menu ON menu.id = person_order.menu_id
	WHERE person.gender = 'female'
)
SELECT name
FROM info
WHERE pizza_name = 'pepperoni pizza'
INTERSECT
SELECT name
FROM info
WHERE pizza_name = 'cheese pizza'
ORDER BY name