-- 1. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(t.total) as total FROM (
    SELECT count(target_id) as total FROM profiles p
      JOIN likes l ON l.target_id = p.user_id
    WHERE target_type_id = 2
    GROUP BY target_id
    ORDER BY birthday DESC
    LIMIT 10) t;

-- 2. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT count(gender) as total, gender
FROM likes l
  JOIN profiles p ON l.user_id = p.user_id
GROUP BY gender
ORDER BY total DESC
LIMIT 1;


-- 3. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT count(u.id) as total, CONCAT(first_name, ' ', last_name) as `user` FROM users u
  LEFT JOIN likes l ON l.user_id = u.id
  LEFT JOIN media m ON m.user_id = u.id
  LEFT JOIN messages AS `to` ON `to`.to_user_id = u.id
  LEFT JOIN messages AS `from` ON `from`.from_user_id = u.id
  JOIN profiles p ON u.id = p.user_id
GROUP BY u.id
ORDER BY total
LIMIT 10;