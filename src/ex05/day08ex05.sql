-- транзакция1
    -- Начало
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- транзакция2
    -- Начало
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- транзакция1
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;

-- транзакция2
    -- Добавление новой пиццерии
INSERT INTO pizzeria VALUES(10, 'Kazan Pizza', 5);

COMMIT;

-- транзакция1
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;
    -- Сохранение изменений
COMMIT;
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;

-- транзакция2
    -- Проверка таблицы
SELECT sum(rating)
FROM pizzeria;
