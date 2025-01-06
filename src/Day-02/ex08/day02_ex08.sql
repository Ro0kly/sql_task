SELECT
	person.name
	-- person.id,
	-- person.gender,
	-- person.address,
	-- person_order.menu_id,
	-- menu.pizza_name as pizza_name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE
	person.gender = 'male'
	and
	address IN ('Moscow', 'Samara')
	and
	pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY person.name DESC