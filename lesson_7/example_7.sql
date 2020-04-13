-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT u.name FROM orders o 
JOIN users u ON (o.user_id = u.id);

SELECT u.name FROM users u
JOIN orders o ON (o.user_id = u.id);

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.name, c.name FROM products p 
JOIN catalogs c ON (p.catalog_id = c.id);

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

CREATE TABLE flights (
  id INT,
  `from` VARCHAR(255),
  `to` VARCHAR(255) 
);

CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);


INSERT INTO flights (id, `from`, `to`) VALUES 
(1, 'Abakan', 'Almetyevsk'),
(2, 'Almetyevsk', 'Almetyevsk'),
(3, 'Anadyr', 'Almetyevsk'),
(4, 'Astrakhan', 'Anapa'),
(5, 'Arkhangelsk', 'Abakan');

INSERT INTO cities (label, name) VALUES 
('Abakan', 'Абакан'),
('Almetyevsk', 'Альметьевск'),
('Anadyr', 'Анадырь'),
('Anapa', 'Анапа'),
('Arkhangelsk', 'Архангельск');


SELECT
    f.id as id,
    (SELECT name FROM cities c WHERE c.label = f.`from`) as `from`,
    (SELECT name FROM cities c WHERE c.label = f.`to`) as `to` 
FROM flights f;

