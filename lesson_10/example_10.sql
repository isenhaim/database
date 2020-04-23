-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

-- Индексы сообщений
CREATE INDEX messages_user_id_friend_id_idx ON messages(from_user_id, to_user_id);
CREATE INDEX messages_friend_id_user_id_idx ON messages(to_user_id, from_user_id);

-- Индексы дружбы
CREATE INDEX friend_user_id_friend_id_idx ON friendship(user_id, friend_id);
CREATE INDEX friend_friend_id_user_id_idx ON friendship(friend_id, user_id);

-- Индексы по профилю
CREATE INDEX profiles_city_idx ON friendship(city);
CREATE INDEX profiles_gender_idx ON friendship(gender);

-- 2. Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (количество пользователей в группе / всего пользователей в системе) * 100

SELECT
  f.name, -- имя группы
  AVG(f.user_in_group) OVER() as average, -- среднее количество пользователей в группах
  (SELECT CONCAT(users.first_name, ' ', users.last_name) FROM users WHERE users.id = (SELECT profiles.user_id FROM profiles where profiles.birthday = f.min )) as young_user, -- самый молодой пользователь в группе
  (SELECT CONCAT(users.first_name, ' ', users.last_name) FROM users WHERE users.id = (SELECT profiles.user_id FROM profiles where profiles.birthday = f.max )) as old_user, -- самый пожилой пользователь в группе
  f.user_in_group, -- количество пользователей в группе
  f.all_user, -- всего пользователей в системе
  f.percent -- отношение в процентах (количество пользователей в группе / всего пользователей в системе) * 100
FROM (
SELECT DISTINCT c.name,
  MAX(p.birthday) OVER w AS max,
  MIN(p.birthday) OVER w AS min,
  COUNT(cu.user_id) OVER w AS user_in_group,
  COUNT(*) OVER() as all_user,
  COUNT(cu.user_id) OVER w / COUNT(*) OVER() * 100 as percent
    FROM (communities_users cu
      JOIN communities c
        ON c.id = cu.community_id
      JOIN profiles p
        ON p.user_id = cu.user_id
      JOIN users u
        ON u.id = cu.user_id)
        WINDOW w AS (PARTITION BY cu.community_id)) f;