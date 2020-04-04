/*Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”*/

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

UPDATE users SET 
       created_at = NOW(),
       updated_at = NOW();
       
   
-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
   
   
CREATE TABLE tbl (
    created_at VARCHAR(255),
    updated_at VARCHAR(255) 
);

INSERT INTO tbl (created_at, updated_at) VALUES ('20.10.2017 8:10', '20.10.2015 8:10');
INSERT INTO tbl (created_at, updated_at) VALUES ('20.10.2015 8:10', '20.10.2017 8:10');
INSERT INTO tbl (created_at, updated_at) VALUES ('20.10.2014 8:10', '20.10.2016 8:10');
INSERT INTO tbl (created_at, updated_at) VALUES ('20.10.2013 8:10', '20.10.2018 8:10');


SELECT * from tbl;

SELECT DATE_FORMAT(created_at, '%Y.%m.%d %H:%i') from tbl;

UPDATE tbl SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
               updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE tbl MODIFY COLUMN created_at DATETIME; 
ALTER TABLE tbl MODIFY COLUMN updated_at DATETIME;

DESC tbl;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
-- 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

CREATE TABLE storehouses_products (
    value INT
);

INSERT INTO storehouses_products (value) VALUES (0);
INSERT INTO storehouses_products (value) VALUES (2500);
INSERT INTO storehouses_products (value) VALUES (0);
INSERT INTO storehouses_products (value) VALUES (30);
INSERT INTO storehouses_products (value) VALUES (500);
INSERT INTO storehouses_products (value) VALUES (1);

SELECT value, if(value > 0, 0, 1) as results FROM storehouses_products ORDER BY results, value ASC;


-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий ('may', 'august')

SELECT * FROM profiles WHERE DATE_FORMAT(birthday, '%M') in ('May', 'August');


-- 5.(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.

  
SELECT *, 
CASE WHEN id = 5 THEN 1
     WHEN id = 1 THEN 2
     WHEN id = 2 THEN 3
END AS sort 
 FROM catalogs 
WHERE id IN (5, 1, 2) ORDER BY sort;
 
 
/* Практическое задание теме “Агрегация данных” */
 
-- 1. Подсчитайте средний возраст пользователей в таблице users

SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday, NOW()))) AS middle_age FROM profiles;
 

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT DATE_FORMAT(birthday, '%d') AS day, count(*) AS total from profiles DATE_FORMAT(birthday, '%W');


SELECT DATE_FORMAT(DATE_FORMAT(birthday, '2020.%m.%d'), '%W') AS days, count(*) results FROM profiles group by days;


-- (по желанию) Подсчитайте произведение чисел в столбце таблицы 

SELECT exp(sum(log(media_type_id))) as composition FROM media;
