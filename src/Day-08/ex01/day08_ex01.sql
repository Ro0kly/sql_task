-- Session #1
SHOW TRANSACTION ISOLATION LEVEL;
START TRANSACTION;
SELECT * FROM pizzeria;
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria;

-- Session #2
SHOW TRANSACTION ISOLATION LEVEL;
START TRANSACTION;
SELECT * FROM pizzeria;
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria;