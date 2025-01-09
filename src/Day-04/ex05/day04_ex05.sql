CREATE VIEW v_price_with_discount as
SELECT
	person.name,
	menu.pizza_name,
	menu.price,
	CAST(price-price*0.1 as int) as discount_price
FROM person_order
JOIN person ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
ORDER BY 1,2;

SELECT *
FROM v_price_with_discount