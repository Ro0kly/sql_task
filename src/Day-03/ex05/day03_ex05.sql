SELECT DISTINCT
	-- person.name,
	pizzeria.name as pizzeria_name
	-- person_visits.visit_date,
	-- person_order.order_date
FROM person
JOIN person_visits ON
	person_visits.person_id = person.id
	and
	person.name = 'Andrey'
JOIN person_order ON
	person_order.person_id = person.id
	and
	visit_date != order_date
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
ORDER BY 1