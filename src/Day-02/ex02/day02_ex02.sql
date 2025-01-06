SELECT
	COALESCE(person.name, '-') as person_name,
	COALESCE(pvis.visit_date) as visit_date,
	COALESCE(pizzeria.name, '-') as pizzeria_name
FROM
(
	SELECT *
	FROM person_visits
	WHERE visit_date IN ('2022-01-01','2022-01-02','2022-01-03', null)
) as pvis
FULL JOIN person ON person.id = pvis.person_id
FULL JOIN pizzeria ON pizzeria.id = pvis.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name