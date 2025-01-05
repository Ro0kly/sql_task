SELECT name, rating
FROM public.pizzeria
WHERE rating >= 3.5 and rating <= 5
ORDER BY rating