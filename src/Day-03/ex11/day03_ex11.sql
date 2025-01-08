UPDATE menu
SET price = CAST(price*0.9 as int)
WHERE menu.pizza_name = 'greek pizza'