(
	SELECT
		pizzeria.name,
		(
			SELECT COUNT(*)
			FROM person_visits
			WHERE person_visits.pizzeria_id = pizzeria.id
		) as count,
		'visit' as action_type
	FROM pizzeria
	ORDER BY count DESC
	LIMIT 3
)
UNION
(
	SELECT
		pizzeria.name,
		(
			SELECT COUNT(*)
			FROM person_order
			JOIN menu ON menu.id = person_order.menu_id
			WHERE menu.pizzeria_id = pizzeria.id
		) as count,
		'order' as action_type
	FROM pizzeria
	ORDER BY count DESC
	LIMIT 3
)
ORDER BY action_type ASC, count DESC