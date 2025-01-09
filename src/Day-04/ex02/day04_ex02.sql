CREATE VIEW v_generated_dates as
SELECT generated_date::date
FROM generate_series(
	'2022-01-01',
	'2022-01-31',
	interval '1 day') as generated_date
ORDER BY 1;

SELECT *
FROM v_generated_dates