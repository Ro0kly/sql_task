SELECT DISTINCT
	person_order.order_date as action_date,
	person_order.person_id
FROM person_order
INNER JOIN person_visits
ON 
(
	person_order.person_id=person_visits.person_id
	and 
	person_order.order_date=person_visits.visit_date
)
ORDER BY action_date ASC, person_id DESC
-- TO_FIX: JOIN Denied
