SELECT order_date,
CONCAT(name,' ','(age:',age,')')as person_information
FROM person_order
NATURAL JOIN
(
	SELECT id as person_id, name, age
	FROM person
)
-- TO_FIX: ADD ORDER BY to be same as asking in the task
