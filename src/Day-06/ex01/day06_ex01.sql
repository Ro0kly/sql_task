INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
SELECT
	ROW_NUMBER() OVER(ORDER BY person_id) as id,
	person_id,
	menu.pizzeria_id,
	(
		CASE
			WHEN COUNT(person_id) = 1 THEN 10.5
			WHEN COUNT(person_id) = 2 THEN 22
			ELSE 30
		END
	) as discount
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
GROUP BY person_id, menu.pizzeria_id;

SELECT *
FROM person_discounts