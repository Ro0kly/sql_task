INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
	(
		SELECT max(id)+1
		FROM person_visits
	),
	(
		SELECT id
		FROM person
		WHERE person.name = 'Dmitriy'
	),
	(	SELECT pizzeria.id
		FROM pizzeria
		JOIN menu ON menu.pizzeria_id = pizzeria.id and menu.price < 800
		WHERE pizzeria.name != (SELECT pizzeria_name FROM mv_dmitriy_visits_and_eats) LIMIT 1
	),
	'2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT *
FROM mv_dmitriy_visits_and_eats;