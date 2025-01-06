WITH missd as (
	SELECT missing_date::date
	FROM generate_series
	(
	'2022-01-01'::date,
	'2022-01-10',
    '1 day'
	) AS missing_date		
)
SELECT missing_date FROM missd
LEFT JOIN
(
	SELECT *
	FROM person_visits
	WHERE person_id in (1,2)
)
ON missing_date = visit_date
WHERE visit_date is NULL