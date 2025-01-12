SET enable_seqscan TO OFF;
EXPLAIN (ANALYZE)
SELECT m.pizza_name, pizzeria.name as pizzeria_name
FROM menu m
JOIN pizzeria ON pizzeria.id = m.pizzeria_id