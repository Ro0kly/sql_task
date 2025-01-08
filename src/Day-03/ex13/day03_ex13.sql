-- Delete orders
DELETE
FROM person_order
WHERE order_date = '2022-02-25';
-- Delete greek pizza
DELETE
FROM menu
WHERE menu.pizza_name = 'greek pizza';