-- Актуализация данных моих таблиц

-- Дата обновления записи
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Поле телефон
UPDATE users SET phone = CONCAT('+7', ' (', FLOOR(900 + (RAND() * 99)), ') ', FLOOR(100 + (RAND() * 899)), ' ', FLOOR(10 + (RAND() * 89)), ' ', FLOOR(10 + (RAND() * 89))  ) limit 100;

-- Дата обновления записи
UPDATE profiles SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Дата обновления записи
UPDATE friendship SET confirmed_at = CURRENT_TIMESTAMP WHERE confirmed_at > requested_at;

-- Рандомизация разброса user_id
UPDATE media SET user_id = FLOOR(1 + (RAND() * 100));

-- Корректировка размеров
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;

-- Корректировка путей к файлам
UPDATE media SET file_path = CONCAT('tmp/', file_path );


-- Меняем формат хранения данных в столбце metadata на JSON
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Bносим данные JSON генерацией, ничего изменять не стал
UPDATE media SET metadata = CONCAT('{"owner":"',
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');



/* Реализацию лайков вижу ввиде следующей таблицы, храним id пользователя поставившего лайк
 * и id того контента которому этот лайк был поставлен.
 * Единственная сложность в структуре БД это не уникальность значений ID
 * в качестве решения предлагаю использовать общий seaquence для тех таблиц которым предполагается
 * простановка лайков, для установки уникальности id.
 */

CREATE TABLE likes (
  user_id INT UNSIGNED NOT NULL,
  content_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  PRIMARY KEY (user_id, content_id)
);


