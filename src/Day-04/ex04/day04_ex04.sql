CREATE VIEW v_symmetric_union as
WITH
R as (
	SELECT person_id
	FROM person_visits
	WHERE visit_date = '2022-01-02'
),
S as (
	SELECT person_id
	FROM person_visits
	WHERE visit_date = '2022-01-06'
)
((SELECT * FROM R) EXCEPT (SELECT * FROM S))
UNION
((SELECT * FROM S) EXCEPT (SELECT * FROM R))
ORDER BY 1;

SELECT *
FROM v_symmetric_union