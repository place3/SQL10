-- транзакция 1
    -- Начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- транзакция 2
    -- Начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- транзакция 1
    -- Проверка таблицы в первом терминале
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Обновление рейтинга
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

COMMIT;

-- транзакция 1
    -- Проверка изменений в таблице
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
    -- Сохранение изменений
COMMIT;
    -- Проверка
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Проверка
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
