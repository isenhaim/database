SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM photo;
SELECT * FROM habs;
SELECT * FROM posts;
SELECT * FROM comments;
SELECT * FROM post_hab;
SELECT * FROM hab_user;
SELECT * FROM followers;
SELECT * FROM bookmarks;
SELECT * FROM karma;
SELECT * FROM type_contents;

-- Выборка постов и авторов.
SELECT po.id, head, pr.full_name FROM posts po
JOIN profiles pr ON po.user_id = pr.user_id;

-- Выборка Заголовок поста, комментарий и автор комментария
SELECT p.head, c.body, pr.full_name  FROM comments c
JOIN posts p ON c.post_id = p.id
JOIN profiles pr ON c.user_id = pr.id;

-- Выборка постов в разрезе компаний
SELECT p.head AS post, h.name AS company_blog FROM posts p
JOIN post_hab ph ON ph.post_id = p.id
JOIN habs h ON ph.hab_id = h.id
WHERE h.company = 1
ORDER BY name;

-- Выборка постов в разрезе хабов
SELECT p.head AS post, h.name AS company_blog FROM posts p
JOIN post_hab ph ON ph.post_id = p.id
JOIN habs h ON ph.hab_id = h.id
WHERE h.company = 0
ORDER BY name;

-- Выборка статья + кол-во комментариев
SELECT p.head, COUNT(*) AS total_comments FROM comments c 
JOIN posts p ON c.post_id = p.id
GROUP BY p.head;

-- Выборка имени пользователя и кармы
SELECT p.full_name, SUM(CASE WHEN state = 'down' THEN -1
WHEN state = 'up' THEN 1 
ELSE 0 END) AS total 
FROM karma k
LEFT JOIN profiles p ON p.user_id = k.user_id 
GROUP BY k.user_id;

-- Представление пользователей и их прав
CREATE VIEW vw_user_role AS
SELECT p.full_name, u.status_user FROM profiles p
JOIN users u ON p.user_id = u.id;

SELECT * FROM vw_user_role;


-- Представление в удобочитаемом виде отражающая отношения на ресурсе между пользователями
CREATE VIEW vw_followers_full_name AS 
SELECT p.full_name AS `to`, p1.full_name AS `from` FROM followers f
JOIN profiles p ON f.to_user_id = p.user_id 
JOIN profiles p1 ON f.from_user_id = p1.user_id;

-- Выборка имя + кол-во подписок
SELECT `to`, COUNT(`from`) AS total FROM vw_followers_full_name GROUP BY `to`;

-- Выборка имя + кол-во подписчиков
SELECT `from`, COUNT(`to`) AS total FROM vw_followers_full_name GROUP BY `from`;


-- Представление с основной информацией о посте
CREATE VIEW vw_post AS
SELECT pr.full_name, p.head, p.body, p.created_at, COUNT(c.id) AS total_comments FROM posts p
JOIN profiles pr ON p.user_id = pr.id
LEFT JOIN comments c ON c.post_id = p.id
GROUP BY p.id;

SELECT * FROM vw_post;



-- Процедура получения общей персональной кармы
DROP PROCEDURE IF EXISTS p_personal_karma;
DELIMITER // 
CREATE PROCEDURE p_personal_karma (IN id INT) 
BEGIN 
  SELECT 
  (SELECT COUNT(*) FROM karma WHERE state = 'up' AND user_id = id) - 
  (SELECT COUNT(*) FROM karma WHERE state = 'down' AND user_id = id) AS karma;
END // 
DELIMITER ;

CALL p_personal_karma(12);

-- Добавляем логирование

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    obj_id INT NOT NULL, 
    user_login VARCHAR(50),
    table_name VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT NOW()
) ENGINE=Archive;


-- Триггер пишущий лог пользователей MySQL при добавлении в таблицу USERS

DROP TRIGGER IF EXISTS trg_log_usr_ins;
CREATE TRIGGER trg_log_usr_ins AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO logs (obj_id, user_login, table_name) VALUES(new.id, SUBSTRING_INDEX(USER(),'@',1), 'users');
END;

DROP TRIGGER IF EXISTS trg_log_habs_ins;
CREATE TRIGGER trg_log_habs_ins AFTER INSERT ON habs
FOR EACH ROW
BEGIN
  INSERT INTO logs (obj_id, user_login, table_name) VALUES(new.id, SUBSTRING_INDEX(USER(),'@',1), 'habs');
END;




