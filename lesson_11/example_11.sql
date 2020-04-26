-- 1. Создайте таблицу logs типа Archive. Пусть при каждом 
-- создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

-- Создаем таблицу LOGS движок ARCHIVE
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    obj_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT NOW()
) ENGINE=Archive;

-- Триггер для таблицы USERS
DROP TRIGGER IF EXISTS trg_log_usr_ins;
CREATE TRIGGER trg_log_usr_ins AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO logs (obj_id, name, table_name) VALUES(new.id, new.name, 'users');
END;

-- Триггер для таблицы CATALOGS
DROP TRIGGER IF EXISTS trg_log_cat_ins;
CREATE TRIGGER trg_log_cat_ins AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
  INSERT INTO logs (obj_id, name, table_name) VALUES(new.id, new.name, 'catalogs');
END;

-- Триггер для таблицы PRODUCTS
DROP TRIGGER IF EXISTS trg_log_prd_ins;
CREATE TRIGGER trg_log_prd_ins AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
  INSERT INTO logs (obj_id, name, table_name) VALUES(new.id, new.name, 'products');
END;


-- Проверяем
INSERT INTO users (name, birthday_at) VALUES('John', '11.01.2011');
INSERT INTO catalogs (name) VALUES('Soundblaster');
INSERT INTO products (name) VALUES('ZVB-1278');

SELECT * from logs;

-- 2.1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

-- Создаем хэш
HMSET ip 127.0.0.1 1 192.168.1.6 1

-- Инкрементируем счетчик входов с конкретного IP
HINCRBY ip 127.0.0.1 1
HINCRBY ip 192.168.1.6 1


-- 2.2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
SET example@nosite.com John
SET John example@nosite.com


-- 2.3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

db.shop.insert({'_id' : 1, 'name': 'Процессоры', 'products': [{'name': 'Intel Core i3-8100', 'price': '7890.00'}, {'name': 'Intel Core i5-7400', 'price': '12700.00'}, {'name': 'AMD FX-8320E', 'price': '4780.00'}, {'name': 'AMD FX-8320', 'price': '7120.00'}]})
db.shop.insert({'_id' : 2, 'name': 'Материнские платы', 'products': [{'name': 'ASUS ROG MAXIMUS X HERO', 'price': '19310.00'}]})
db.shop.insert({'_id' : 3, 'name': 'Видеокарты', 'products': []})
db.shop.insert({'_id' : 4, 'name': 'Жесткие диски', 'products': []})
db.shop.insert({'_id' : 5, 'name': 'Оперативная память', 'products': []})

