SELECT *
FROM public.person_visits
WHERE pizzeria_id=2 or (visit_date BETWEEN '2022-01-06' and '2022-01-09')
ORDER BY person_id DESC