-- транзакция 1
    -- Начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- транзакция 2
    -- Начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- транзакция 1
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;

-- транзакция 2

INSERT INTO pizzeria VALUES(11, 'Kazan Pizza 2', 4);

COMMIT;

-- транзакция 1
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;
    -- Сохранение изменений
COMMIT;
    -- Проверка таблицв
SELECT sum(rating)
FROM pizzeria;

-- транзакция 2
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;
