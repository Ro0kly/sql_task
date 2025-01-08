insert into person_order(id, person_id, menu_id, order_date)
SELECT generate_series(
		max(person_order.id) + 1, max(person_order.id) + (SELECT COUNT(*) FROM person)
		),
		generate_series(
		(SELECT min(person.id) FROM person), (SELECT max(person.id) FROM person)
		),
		(SELECT menu.id FROM menu WHERE menu.pizza_name = 'greek pizza'),
		'2022-02-25'	
FROM person_order;