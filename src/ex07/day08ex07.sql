-- транзакция 1
    -- Начало
BEGIN;

-- транзакция 2
    -- Начало
BEGIN;

-- транзакция 1
    -- Обновление таблицы
UPDATE pizzeria
SET rating = 4
WHERE id = 1;

-- транзакция 2
    -- Обновление таблицы
UPDATE pizzeria
SET rating = 3
WHERE id = 2;

-- транзакция 1
    -- Обновление таблицы
UPDATE pizzeria
SET rating = 2
WHERE id = 2;

-- транзакция 2
    -- Обновление таблицы
    -- выводится ошибка тк в первом терминале уже обновили запись с id = 2
UPDATE pizzeria
SET rating = 5
WHERE id = 1;

-- транзакция 1
    -- Сохранение изменений
COMMIT;

-- транзакция 2
COMMIT;
