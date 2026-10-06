-- транзакция 1
    -- Начало транзакции
BEGIN ISOLATION LEVEL REPEATABLE READ;

-- транзакция 2
    -- Начало транзакции
BEGIN ISOLATION LEVEL REPEATABLE READ;

-- транзакция 1
    -- Проверка таблицы
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Проверка таблицы
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 1
    -- Обновление рейтинга
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Обновление рейтинга
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

-- транзакция 1
    -- Сохранение изменений
COMMIT;

-- транзакция 2
    -- Сохранение изменений
COMMIT;

-- транзакция 1
    -- Проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
