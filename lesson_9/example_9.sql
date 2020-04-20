-- 1.1 В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;

INSERT INTO sample.users (id, name, birthday_at) SELECT id, name, birthday_at FROM shop.users WHERE id = 1;

COMMIT;

-- 1.2 Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW example (product, catalog) as
SELECT p.name, c.name FROM products p
JOIN catalogs c ON c.id = p.catalog_id;

SELECT * FROM example;


/* 3.1 Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
с 18:00 до 00:00 — "Добрый вечер",
с 00:00 до 6:00 — "Доброй ночи". */

DROP FUNCTION IF EXISTS hello;

CREATE FUNCTION hello()
RETURNS TEXT DETERMINISTIC
BEGIN
    DECLARE time TIME;
    SELECT TIME(NOW()) INTO time;
    CASE
        WHEN time BETWEEN time('06:00:00') AND time('12:00:00') THEN RETURN "Доброе утро";
        WHEN time BETWEEN time('12:00:00') AND time('18:00:00') THEN RETURN "Добрый день";
		WHEN time BETWEEN time('18:00:00') AND time('00:00:00') THEN RETURN "Добрый вечер";
		WHEN time BETWEEN time('00:00:00') AND time('06:00:00') THEN RETURN "Доброй ночи";
    END CASE;
END;

select hello() as Hello;

/* 3.2 В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
Допустимо присутствие обоих полей или одно из них.
Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

USE shop;

DROP TRIGGER IF EXISTS trg_check_field_ins;
CREATE TRIGGER trg_check_field_ins BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE fields BOOLEAN DEFAULT (NEW.name IS NULL AND NEW.desription IS NULL);
  IF (fields) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнены поля name и description';
  END IF;
END;

DROP TRIGGER IF EXISTS trg_check_field_upd;
CREATE TRIGGER trg_check_field_upd BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  DECLARE fields BOOLEAN DEFAULT (NEW.name IS NULL AND NEW.desription IS NULL);
  IF (fields) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнены поля name и description';
  END IF;
END;

INSERT INTO products
  (price, catalog_id)
VALUES
  (7890.00, 1);

UPDATE products
   SET price = 1,
       catalog_id = 2,
       name = NULL,
       desription = NULL
WHERE id = 4;
