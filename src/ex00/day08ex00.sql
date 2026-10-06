-- 1 транзакция

BEGIN;

UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';
    -- проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- 2 транзакция
    -- проверка что во втором терминале нет изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- 1 транзакция
    -- Сохранение
COMMIT;

-- 2 транзакция
    -- Проверка
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
