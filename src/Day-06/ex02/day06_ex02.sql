SELECT
	person.name as name,
	menu.pizza_name as pizza_name,
	menu.price as price,
	CAST(price - price * (person_discounts.discount/100) as int)as discount_price,
	pizzeria.name as pizzeria_name
FROM person_order
JOIN person ON person.id = person_id
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_discounts ON person_discounts.person_id = person_order.person_id
ORDER BY name, pizza_name
