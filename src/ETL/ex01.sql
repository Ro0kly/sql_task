insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

CREATE OR REPLACE FUNCTION nearest_rate_of_currency_after_date(currency_id bigint, curr_date timestamp)
RETURNS timestamp LANGUAGE SQL as $$
	SELECT updated
	FROM currency as cur_table
    WHERE
		cur_table.id = currency_id
        and
		curr_date < cur_table.updated
    ORDER BY cur_table.updated ASC
    LIMIT 1
$$;
CREATE OR REPLACE FUNCTION nearest_rate_of_currency_before_date(currency_id bigint, curr_date timestamp)
RETURNS timestamp LANGUAGE SQL as $$
	SELECT updated
	FROM currency as cur_table
    WHERE
		cur_table.id = currency_id
        and
		curr_date >= cur_table.updated
    ORDER BY cur_table.updated DESC
    LIMIT 1
$$;

SELECT 
	COALESCE("user".name, 'not defined') as name,
	COALESCE("user".lastname, 'not defined') as lastname,
	currency.name as currency_name,
	balance.money * currency.rate_to_usd as currency_in_usd
FROM "user"
FULL JOIN balance ON balance.user_id = "user".id
JOIN currency ON
	currency.id = balance.currency_id
	and
	currency.updated = (
		SELECT COALESCE(
        		nearest_rate_of_currency_before_date(currency.id, balance.updated),
        		nearest_rate_of_currency_after_date(currency.id, balance.updated)
    		)
	)
ORDER BY 1 DESC, 2, 3
