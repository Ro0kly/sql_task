-- Session #1
SELECT * FROM pizzeria;
START TRANSACTION;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria;

-- Session #2
SELECT * FROM pizzeria;