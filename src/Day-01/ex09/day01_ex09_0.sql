SELECT *
FROM pizzeria
WHERE id IN
(
	SELECT pizzeria_id
	FROM person_visits
)