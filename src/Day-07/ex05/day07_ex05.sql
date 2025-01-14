SELECT DISTINCT person.name
FROM person
WHERE EXISTS (
	SELECT person_id
	FROM person_order
	WHERE person_id = person.id
)
ORDER BY name