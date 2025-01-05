SELECT *
FROM pizzeria
WHERE NOT EXISTS
(
	SELECT
	FROM person_visits
	WHERE person_visits.pizzeria_id = pizzeria.id
)