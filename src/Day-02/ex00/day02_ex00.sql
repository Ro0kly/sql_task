SELECT name, rating
FROM pizzeria as p
FULL JOIN person_visits ON p.id = person_visits.pizzeria_id
WHERE person_visits.person_id is NULL