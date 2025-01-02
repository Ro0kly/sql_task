SELECT (
	SELECT name
	FROM public.person
	WHERE public.person.id = public.person_order.person_id
)
FROM public.person_order
WHERE order_date='2022-01-07' and (menu_id=13 or menu_id=14 or menu_id=18)