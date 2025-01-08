insert into person_order values
(
	(
		SELECT max(id)+1
		FROM person_order
	),
	(
		SELECT person.id
		FROM person
		WHERE person.name = 'Denis'
	),
	(
		SELECT menu.id
		FROM menu
		WHERE menu.pizza_name = 'sicilian pizza'
	),
	'2022-02-24'
);

insert into person_order values
(
	(
		SELECT max(id)+1
		FROM person_order
	),
	(
		SELECT person.id
		FROM person
		WHERE person.name = 'Irina'
	),
	(
		SELECT menu.id
		FROM menu
		WHERE menu.pizza_name = 'sicilian pizza'
	),
	'2022-02-24'
);