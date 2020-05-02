CREATE DATABASE habr;

USE habr;

-- Таблица пользователей
DROP TABLE IF EXISTS users;
CREATE TABlE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  login VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  status_user ENUM('read_only', 'read_comment', 'full_accounts'),
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);


CREATE INDEX users_login_idx ON users(login);

-- Таблица профилей
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL UNIQUE,
  full_name VARCHAR(255) NOT NULL,
  gender ENUM('M', 'F'),
  positions VARCHAR(255) DEFAULT NULL,
  about TEXT DEFAULT NULL,
  photo_id INT UNSIGNED DEFAULT NULL
);

-- Внешние ключи из таблицы профилей на владельца профиля и его фото
ALTER TABLE profiles    
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id) 
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES photo(id) 
      ON DELETE SET DEFAULT;
  

-- Таблица фото 
DROP TABLE IF EXISTS photo;
CREATE TABLE photo (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL UNIQUE,
  link VARCHAR(255) NOT NULL UNIQUE 
);


-- Таблица публикаций
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  head VARCHAR(255) NOT NULL,
  body TEXT NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Внешний ключ на автора статьи
ALTER TABLE posts    
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id) 
      ON DELETE CASCADE;

CREATE INDEX posts_head_idx ON posts(head);


-- Таблица хабов
DROP TABLE IF EXISTS habs;
CREATE TABLE habs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  company TINYINT(0) DEFAULT 0
);

CREATE UNIQUE INDEX habs_name_idx ON habs(name);

-- Таблица комментариев
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL,
  body TEXT NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

-- Внешние ключи на автора комментария и публикацию
ALTER TABLE comments    
  ADD CONSTRAINT comments_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id) 
      ON DELETE CASCADE,
  ADD CONSTRAINT comments_post_id_fk
    FOREIGN KEY (post_id) REFERENCES posts(id)
      ON DELETE CASCADE;
  
-- Таблица типов контента
DROP TABLE IF EXISTS type_contents;
CREATE TABLE type_contents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(25) NOT NULL UNIQUE
);


-- Таблица связей пост-хаб

DROP TABLE IF EXISTS post_hab;
CREATE TABLE post_hab (
  hab_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL
);

ALTER TABLE post_hab    
ADD CONSTRAINT post_hab_hab_id_fk 
  FOREIGN KEY (hab_id) REFERENCES habs(id) 
    ON DELETE CASCADE,
ADD CONSTRAINT post_hab_post_id_fk 
  FOREIGN KEY (post_id) REFERENCES posts(id) 
    ON DELETE CASCADE;


DROP TABLE IF EXISTS hab_user;
CREATE TABLE hab_user (
  hab_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL
);

ALTER TABLE hab_user    
ADD CONSTRAINT hab_user_hab_id_fk 
  FOREIGN KEY (hab_id) REFERENCES habs(id) 
    ON DELETE CASCADE,
ADD CONSTRAINT hab_user_user_id_fk 
  FOREIGN KEY (user_id) REFERENCES users(id) 
    ON DELETE CASCADE;

-- Таблица подписчиков
DROP TABLE IF EXISTS followers;
CREATE TABLE followers (
  to_user_id INT UNSIGNED NOT NULL,
  from_user_id INT UNSIGNED NOT NULL
);

ALTER TABLE followers    
ADD CONSTRAINT folowers_to_user_id_fk 
  FOREIGN KEY (to_user_id) REFERENCES users(id) 
    ON DELETE CASCADE,
ADD CONSTRAINT folowers_from_user_id_fk 
  FOREIGN KEY (from_user_id) REFERENCES users(id) 
    ON DELETE CASCADE;


-- Таблица закладок

DROP TABLE IF EXISTS bookmarks;
CREATE TABLE bookmarks (
  user_id INT UNSIGNED NOT NULL,
  type_content_id INT UNSIGNED NOT NULL,
  content_id INT UNSIGNED NOT NULL
);


ALTER TABLE bookmarks    
ADD CONSTRAINT bookmarks_user_id_fk 
  FOREIGN KEY (user_id) REFERENCES users(id) 
    ON DELETE CASCADE;

ALTER TABLE bookmarks    
ADD CONSTRAINT bookmarks_user_id_fk 
  FOREIGN KEY (user_id) REFERENCES users(id) 
    ON DELETE CASCADE,
ADD CONSTRAINT bookmarks_type_content_id_fk
  FOREIGN KEY (type_content_id) REFERENCES type_content(id)
    ON DELETE CASCADE;



DROP TABLE IF EXISTS karma;
CREATE TABLE karma (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  type_content_id INT UNSIGNED NOT NULL,
  content_id INT UNSIGNED NOT NULL,
  state ENUM('up', 'down')
);

ALTER TABLE karma    
ADD CONSTRAINT karma_user_id_fk 
  FOREIGN KEY (user_id) REFERENCES users(id) 
    ON DELETE CASCADE,
ADD CONSTRAINT karma_type_content_id_fk
  FOREIGN KEY (type_content_id) REFERENCES type_contents(id)
    ON DELETE CASCADE;

-- ------------------------------------------------


















