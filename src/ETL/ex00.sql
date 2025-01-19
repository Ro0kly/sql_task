WITH latest as (
	SELECT
		id,
		name,
		rate_to_usd
	FROM currency c 
    WHERE updated = (SELECT MAX(updated) FROM currency)),
bal as(
	SELECT
		user_id,
		type,
		currency_id,
		sum(money) as vol
	FROM balance
	GROUP BY user_id, type, currency_id),
res as(
	SELECT
		COALESCE(u.name, 'not defined') as name,
    		COALESCE(u.lastname, 'not defined') as lastname,
    		b.type,
    		b.vol as volume,
    		COALESCE(c.name, 'not defined') as currency_name,
    		COALESCE(c.rate_to_usd, 1) as last_rate_to_usd,
    		b.vol * COALESCE(c.rate_to_usd, 1) as total_volume_in_usd
    	FROM "user" u
	FULL JOIN bal b on b.user_id = u.id
	LEFT JOIN latest c on c.id = b.currency_id)
SELECT *
FROM res
ORDER BY name DESC, lastname, type
