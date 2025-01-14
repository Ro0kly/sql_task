SELECT
	address,
	ROUND(
		CAST(MAX(age) as numeric) - (CAST(MIN(age) as numeric) / CAST(MAX(age) as numeric)),
		2
	) as formula,
	ROUND(AVG(age), 2) as average,
	(MAX(age) - (MIN(age) / MAX(age)) > AVG(age)) as comprassion
FROM person
GROUP BY address
ORDER BY 1