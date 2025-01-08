WITH
visits as
(
	SELECT
		person_visits.pizzeria_id,
		COUNT(CASE WHEN person.gender = 'female' then 1 else null end) as female_count,
		COUNT(CASE WHEN person.gender = 'male' then 1 else null end) as male_count
		FROM person_visits
		JOIN person ON person.id = person_visits.person_id
		GROUP BY person_visits.pizzeria_id
),
pizzerias as
(
	SELECT pizzeria.name, visits.female_count, visits.male_count
	FROM pizzeria
	JOIN visits ON visits.pizzeria_id = pizzeria.id
)
SELECT name as pizzeria_name
FROM pizzerias
WHERE female_count > male_count
UNION ALL
SELECT name as pizzeria_name
FROM pizzerias
WHERE female_count < male_count
ORDER BY 1