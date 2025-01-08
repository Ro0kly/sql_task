insert into person_visits values
(
	(
		SELECT max(id)+1
		FROM person_visits
	),
	(
		SELECT person.id
		FROM person
		WHERE person.name = 'Denis'
	),
	(
		SELECT pizzeria.id
		FROM pizzeria
		WHERE pizzeria.name = 'Dominos'
	),
	'2022-02-24'
);

insert into person_visits values
(
	(
		SELECT max(id)+1
		FROM person_visits
	),
	(
		SELECT person.id
		FROM person
		WHERE person.name = 'Irina'
	),
	(
		SELECT pizzeria.id
		FROM pizzeria
		WHERE pizzeria.name = 'Dominos'
	),
	'2022-02-24'
)