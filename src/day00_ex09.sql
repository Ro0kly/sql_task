SELECT
(
	SELECT name
	FROM person
	WHERE person.id = person_id
) as person_name,
(
	SELECT name
	FROM pizzeria
	WHERE pizzeria.id = pizzeria_id
) as pizzeria_name,
visit_date
FROM person_visits
WHERE visit_date BETWEEN '2022-01-07' and '2022-01-09'
ORDER BY person_name ASC, pizzeria_name DESC