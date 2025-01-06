SELECT
-- person_visits.person_id,
-- person_visits.pizzeria_id,
-- person_visits.visit_date,
-- person.name as name,
-- menu.price as price,
pizzeria.name as pizzeria_name
FROM person_visits
JOIN person ON
	person.id = person_visits.person_id
	and
	person.name = 'Dmitriy'
	and
	person_visits.visit_date = '2022-01-08'
JOIN menu ON
	menu.pizzeria_id = person_visits.pizzeria_id
	and
	menu.price < 800
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id