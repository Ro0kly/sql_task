SELECT
	a1.name as person_name1,
	a2.name as person_name2,
	a1.address as common_address
FROM person a1
JOIN person a2 ON
	a1.name != a2.name
	and
	a1.address = a2.address
	and
	a1.id > a2.id
ORDER BY person_name1, person_name2, common_address