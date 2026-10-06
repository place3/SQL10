-- транзакция 1
    -- Начало
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- транзакция 2
    -- Начало
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- транзакция 1
    -- Проверка
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Обновление рейтинга
UPDATE pizzeria
SET rating = 3.0
WHERE name = 'Pizza Hut';
    -- Сохранение изменений
COMMIT;

-- транзакция 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
    -- Сохранение изменений
COMMIT;
    -- Проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция 2
    -- Проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
