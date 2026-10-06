-- транзакция2
SHOW TRANSACTION ISOLATION LEVEL;
    -- Проверка изоляции
BEGIN;

--  транзакция2
    -- Проверка изоляции
SHOW TRANSACTION ISOLATION LEVEL;

BEGIN;

-- транзакция1
    -- Проверка таблицы
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция2
    -- Проверка таблицы
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция1
    -- Обновление рейтинга
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

-- транзакция2
    -- Обновление рейтинга
    -- команда не применяется
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

-- транзакция1
    -- Сохранение изменений
    -- во втором терминалеupdate
COMMIT;

-- транзакция2
    -- Сохранение изменений
COMMIT;

-- транзакция1
    -- Проверка изменений
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- транзакция2
    -- Проверка изменений в таблице
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
