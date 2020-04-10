ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT communities_users_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;


ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);


ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);


ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);

-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
SELECT
  COUNT(*) as likes,
  (SELECT CONCAT(first_name, ' ', last_name) FROM users u WHERE u.id = l.user_id) AS owner,
  (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles p WHERE p.user_id = l.user_id) as AGE
FROM likes l
GROUP BY owner, age
ORDER BY age, likes DESC
LIMIT 10;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT count(*) AS total,
  (SELECT gender FROM profiles p WHERE p.user_id = l.user_id) AS gender
FROM likes l GROUP BY gender ORDER BY gender LIMIT 1;


-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Считаем дружбу без учета ожидания подтверждения
SELECT user_id, count(*) AS total FROM friendship f WHERE status_id != 3 group by user_id
UNION
SELECT friend_id, count(*) AS total FROM friendship f  WHERE status_id != 3 group by friend_id
UNION
-- Группы на которые пользователь подписан
SELECT user_id, count(*) AS total FROM communities_users cu group by user_id
UNION
-- Залитые пользователем медиа файлы
SELECT user_id, count(*) AS total FROM media m group by user_id
UNION
-- и лайки
SELECT user_id, count(*) AS total FROM likes group by user_id ORDER BY total, user_id LIMIT 10;



