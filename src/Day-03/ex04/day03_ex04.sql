WITH people as
(
	SELECT
		menu_id,
	pizzeria.name as pizzeria_name,
	person.gender
	FROM person_order
	JOIN person ON person.id = person_order.person_id
	JOIN menu ON menu.id = menu_id
	JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
)
SELECT DISTINCT pizzeria_name
FROM people
WHERE gender = 'female'
EXCEPT
SELECT DISTINCT pizzeria_name
FROM people
WHERE gender = 'male'
ORDER BY 1