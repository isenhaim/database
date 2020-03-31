#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (11, 'Блюда за пять минут');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'Ведро хомяков почти даром');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'Вести с полей');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'Виртуальная реальность в домашних условиях');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'Вкусные полезности');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'Все вести в одном месте');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'Газета Правда Вконтакте');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'Группа любителей попугаев');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'Гурманы! Вам сюда!');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'Дрессировка собак – это просто!');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'Как собрать комп самостоятельно');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'Клуб любителей PlayStation');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'Котята в добрые руки');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'Мастер-классы от шеф-повара');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'На все руки мастер: лучший электроинструмент');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'Новости Брянщины');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'Новости внешней и внутренней политики');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'Новости и аналитика');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'Обзоры новинок игровой индустрии');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'Ом-ном-ном!');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'Подводя итоги: сводки недели');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'Разведение кроликов на приусадебном участке');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'Рецепты бабушкиных пирожков');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'Самые необычные рецепты мира');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'Смотрим и слушаем новости');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'Теплый ламповый звук');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'Только для владельцев Nokia');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'Усатые-полосатые');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'Хлеб и вода – наша еда');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'Что происходит в мире');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 90);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 21, 2, '2013-09-07 00:31:19', '2014-08-05 05:38:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 74, 1, '2010-12-09 14:39:46', '2018-06-05 07:18:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 47, 2, '2016-07-19 04:42:04', '2011-04-16 17:41:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 51, 2, '2017-07-02 09:40:59', '2014-01-20 10:34:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 94, 1, '2019-05-21 23:38:15', '2016-07-28 06:31:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 3, 1, '2017-08-22 00:46:20', '2011-08-17 17:39:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 31, 3, '2019-08-18 17:41:16', '2018-03-01 21:22:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 33, 2, '2017-07-17 09:02:47', '2011-07-31 02:49:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 100, 3, '2017-01-29 16:49:34', '2017-09-11 14:07:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 73, 2, '2019-12-31 05:33:10', '2011-01-12 13:13:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 99, 1, '2017-08-03 15:55:27', '2012-11-28 20:19:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 73, 2, '2012-07-16 01:13:31', '2017-10-02 03:23:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 29, 2, '2012-02-07 17:47:02', '2014-09-27 00:42:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 78, 2, '2014-04-29 22:17:57', '2019-03-27 02:11:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 45, 1, '2015-09-22 12:53:11', '2015-08-16 04:29:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 72, 1, '2016-02-25 21:00:46', '2010-12-03 00:49:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 1, 3, '2020-02-25 20:04:37', '2015-07-21 09:48:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 80, 3, '2013-06-16 18:10:56', '2015-09-05 22:37:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 96, 2, '2019-05-24 22:42:22', '2014-12-10 04:24:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 48, 3, '2018-01-23 07:00:11', '2016-11-03 21:40:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 97, 3, '2018-03-22 18:41:38', '2012-09-07 05:58:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 89, 1, '2020-01-28 07:50:06', '2010-09-25 16:23:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 91, 3, '2013-07-01 08:07:10', '2013-01-10 12:44:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 91, 1, '2016-07-21 14:17:56', '2010-11-29 19:19:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 100, 3, '2015-08-20 09:41:11', '2016-11-22 00:37:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 1, 2, '2020-03-04 06:43:47', '2018-12-06 02:19:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 11, 1, '2016-02-05 20:47:08', '2012-07-28 11:52:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 61, 3, '2014-05-14 11:07:44', '2017-02-07 05:19:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 20, 3, '2014-10-23 20:56:08', '2019-07-22 13:06:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 45, 1, '2016-04-22 21:37:17', '2014-06-18 17:56:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 56, 1, '2013-12-25 16:33:27', '2018-06-27 18:40:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 14, 3, '2019-04-05 03:58:45', '2015-12-02 14:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 20, 3, '2019-12-20 01:20:46', '2018-02-12 00:26:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 37, 2, '2013-04-29 11:45:32', '2019-05-23 15:28:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 8, 2, '2019-06-06 16:40:28', '2011-06-12 09:36:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 37, 1, '2011-01-20 13:47:00', '2019-09-16 10:32:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 31, 1, '2020-01-24 01:36:23', '2011-09-05 09:50:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 49, 2, '2019-07-05 21:47:32', '2013-10-31 13:13:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 32, 2, '2018-07-07 22:03:22', '2014-08-20 23:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 37, 1, '2012-06-14 09:46:25', '2014-03-17 22:47:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 49, 2, '2020-02-07 05:13:38', '2012-12-23 07:28:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 22, 1, '2011-05-24 13:41:51', '2012-10-25 03:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 53, 1, '2013-07-27 00:45:13', '2015-05-09 00:37:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 75, 1, '2019-07-27 17:07:38', '2015-02-22 08:48:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 31, 2, '2016-11-26 07:25:17', '2012-07-25 14:47:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 33, 3, '2015-12-22 07:25:33', '2013-10-22 00:06:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 15, 2, '2013-02-11 13:04:55', '2011-04-18 05:08:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 47, 1, '2018-05-23 18:27:53', '2010-04-01 01:00:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 48, 3, '2013-09-14 20:50:40', '2011-03-23 20:21:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 38, 1, '2014-01-11 15:09:59', '2011-10-29 23:56:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 43, 1, '2015-05-13 09:06:10', '2019-06-20 11:54:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 30, 3, '2010-12-04 10:52:46', '2014-10-29 00:10:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 64, 3, '2011-02-09 04:13:23', '2015-12-29 15:55:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 12, 1, '2019-11-27 08:50:51', '2012-02-14 20:46:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 30, 2, '2013-05-28 05:11:00', '2011-08-25 21:14:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 49, 1, '2017-08-16 07:01:40', '2016-06-29 11:22:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 5, 1, '2019-06-27 06:06:35', '2016-07-24 18:38:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 92, 2, '2011-02-05 19:32:20', '2015-10-19 19:05:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 7, 3, '2013-01-19 20:46:10', '2011-05-14 13:51:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 11, 1, '2016-01-10 23:25:16', '2018-03-16 15:39:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 61, 1, '2017-03-04 17:13:57', '2013-08-12 00:48:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 34, 1, '2013-12-18 11:06:45', '2014-07-21 13:33:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 45, 2, '2018-02-28 17:23:57', '2015-07-17 02:05:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 70, 3, '2015-09-03 06:02:39', '2019-05-13 12:10:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 52, 3, '2010-04-18 05:15:23', '2018-11-18 15:17:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 57, 3, '2014-10-07 07:38:22', '2014-03-16 21:55:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 71, 3, '2014-08-18 00:54:28', '2013-03-30 11:31:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 14, 2, '2018-05-24 21:18:51', '2012-04-17 01:18:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 76, 3, '2019-09-07 07:27:07', '2016-12-24 13:20:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 56, 1, '2016-10-27 18:38:22', '2017-11-19 05:07:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 98, 2, '2010-10-08 04:59:44', '2014-11-20 18:35:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 63, 1, '2013-04-05 11:33:25', '2013-08-08 15:09:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 94, 1, '2016-03-02 02:53:18', '2017-01-13 14:20:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 96, 3, '2013-03-20 23:36:15', '2018-12-04 15:50:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 2, 2, '2012-05-13 22:57:52', '2014-02-17 11:10:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 69, 2, '2013-08-15 20:33:14', '2013-12-30 05:21:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 92, 2, '2015-08-27 19:51:57', '2016-01-09 07:46:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 5, 2, '2014-08-26 11:01:54', '2016-06-05 13:06:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 60, 2, '2015-12-15 09:26:51', '2014-03-29 00:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 99, 3, '2014-03-29 08:30:55', '2018-12-15 08:07:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 66, 3, '2018-10-17 23:25:05', '2011-08-07 13:07:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 85, 3, '2014-05-22 15:58:13', '2011-03-24 00:18:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 72, 3, '2014-05-01 21:02:28', '2018-07-02 21:35:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 51, 1, '2019-12-03 04:06:40', '2010-11-04 02:31:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 86, 3, '2016-08-03 04:01:09', '2010-08-07 01:37:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 73, 1, '2019-09-05 07:16:16', '2014-07-14 06:34:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 59, 3, '2015-02-22 12:16:39', '2011-05-20 19:52:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 72, 3, '2020-02-22 15:45:11', '2019-08-14 23:43:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 92, 2, '2014-04-06 14:10:43', '2015-11-04 09:28:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 14, 2, '2017-10-17 07:14:46', '2017-12-02 23:31:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 27, 2, '2013-03-03 04:35:21', '2015-06-17 11:28:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 10, 3, '2011-08-18 12:00:24', '2019-11-22 16:01:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 14, 1, '2018-10-26 04:23:06', '2011-07-27 00:37:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 38, 1, '2018-04-18 13:38:21', '2017-11-21 01:33:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 22, 2, '2019-09-11 13:16:12', '2015-03-30 08:26:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 58, 2, '2010-09-25 21:10:21', '2012-01-15 14:58:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 70, 2, '2015-10-13 21:36:46', '2014-05-14 10:31:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 50, 2, '2015-06-22 03:03:55', '2014-07-03 19:18:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 32, 3, '2017-04-14 19:06:51', '2016-10-22 03:52:57');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'accepted');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'expectation');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'refused');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 2, 1, 'kconnelly', 694, NULL, '2010-05-28 19:41:31', '2019-02-27 07:42:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'kohler.sylvia', 38, NULL, '2018-10-12 05:07:40', '2019-10-21 21:56:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 2, 3, 'nichole.hand', 290070, NULL, '2018-05-23 12:48:31', '2016-04-26 07:52:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 2, 4, 'monica94', 957, NULL, '2019-07-23 00:46:23', '2014-04-03 06:52:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 1, 5, 'rafael37', 18188, NULL, '2013-09-28 08:19:38', '2011-09-13 08:31:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 2, 6, 'era.kling', 47501000, NULL, '2017-10-05 03:34:14', '2011-09-30 19:09:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 7, 'nikolas20', 91244410, NULL, '2015-02-21 05:54:35', '2018-06-17 23:26:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 1, 8, 'iokuneva', 0, NULL, '2015-07-13 00:43:56', '2011-01-29 04:01:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 1, 9, 'lonie.stehr', 9508, NULL, '2017-05-10 20:50:48', '2019-12-15 02:45:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 10, 'hilma.stokes', 74, NULL, '2015-10-31 05:46:45', '2015-07-26 08:18:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 11, 'eleanore96', 6472727, NULL, '2017-07-06 08:11:37', '2015-03-10 08:30:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 12, 'gislason.vernie', 47780, NULL, '2011-07-07 19:37:40', '2016-05-27 22:01:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 2, 13, 'mylene00', 48, NULL, '2010-06-20 05:48:55', '2014-01-27 01:29:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 1, 14, 'yfisher', 0, NULL, '2018-01-03 18:22:07', '2011-06-20 18:16:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 1, 15, 'joanny04', 829445265, NULL, '2014-11-12 23:15:08', '2014-05-29 22:13:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 2, 16, 'uhand', 759937, NULL, '2016-02-11 07:10:00', '2017-03-01 21:10:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, 'rowan.lind', 39209, NULL, '2018-06-16 04:03:20', '2015-01-12 23:25:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 2, 18, 'marta.dare', 5525, NULL, '2016-02-09 15:59:21', '2010-11-22 21:12:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 19, 'salma83', 13303, NULL, '2011-05-03 18:30:07', '2018-09-20 04:58:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 1, 20, 'bo64', 40494951, NULL, '2016-08-24 11:53:20', '2011-11-22 02:41:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, 'hattie18', 868106, NULL, '2015-03-24 11:40:26', '2016-10-10 06:22:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 22, 'tevin03', 78963200, NULL, '2019-04-19 14:13:38', '2019-09-02 17:30:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 1, 23, 'dickens.frank', 4, NULL, '2015-06-12 19:47:54', '2015-08-08 11:23:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 2, 24, 'halie.cormier', 2975, NULL, '2014-04-22 05:03:51', '2017-09-10 04:05:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 2, 25, 'sarina63', 7, NULL, '2017-12-24 03:04:00', '2012-02-28 04:13:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 2, 26, 'jerald.jones', 20785781, NULL, '2019-06-10 12:39:05', '2016-11-28 08:04:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 27, 'paul03', 98, NULL, '2010-04-07 09:35:55', '2019-09-21 22:20:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 2, 28, 'davion.vandervort', 1333, NULL, '2017-11-09 06:56:40', '2013-04-28 14:10:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 1, 29, 'edwardo74', 95, NULL, '2014-02-25 08:25:55', '2018-08-22 12:11:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 2, 30, 'erica34', 144346802, NULL, '2014-04-14 12:14:44', '2013-02-06 11:30:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, 'khansen', 14771, NULL, '2014-04-30 07:37:46', '2012-09-24 14:58:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, 'odoyle', 3726173, NULL, '2012-07-09 07:23:41', '2014-05-12 07:33:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 2, 33, 'nupton', 7, NULL, '2017-12-10 14:37:44', '2016-11-11 00:42:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 2, 34, 'dolly06', 6, NULL, '2010-06-20 13:18:57', '2017-07-11 22:55:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 35, 'lehner.larry', 73, NULL, '2018-09-12 21:11:35', '2010-12-08 04:36:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 36, 'eliezer.wuckert', 178, NULL, '2015-11-11 11:35:05', '2012-11-24 10:05:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 37, 'ymedhurst', 19, NULL, '2013-05-11 22:32:56', '2012-11-06 13:34:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 1, 38, 'leta.huels', 729, NULL, '2014-04-02 03:13:20', '2017-08-07 23:17:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 1, 39, 'smitham.delfina', 74254342, NULL, '2017-01-22 16:48:20', '2017-05-08 17:58:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 1, 40, 'quigley.malcolm', 0, NULL, '2012-09-02 03:17:52', '2012-01-23 23:33:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 2, 41, 'ztorphy', 7, NULL, '2014-04-16 05:37:10', '2012-04-24 20:36:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 1, 42, 'mckenzie.beer', 571400, NULL, '2015-05-27 08:55:51', '2020-03-21 04:01:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 43, 'tito.wolf', 72807182, NULL, '2012-12-09 23:42:29', '2010-09-06 11:01:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 1, 44, 'mason.halvorson', 0, NULL, '2016-01-25 15:32:05', '2014-08-14 09:33:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 2, 45, 'ferry.thomas', 2653701, NULL, '2011-01-05 15:17:46', '2014-08-21 20:24:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 2, 46, 'mann.georgianna', 0, NULL, '2015-04-24 21:23:10', '2014-05-04 13:05:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, 'hailee.brekke', 35058525, NULL, '2016-09-13 07:09:34', '2014-06-10 13:11:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 2, 48, 'grant.naomi', 400055, NULL, '2012-09-15 04:53:48', '2017-08-22 02:07:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 1, 49, 'adelia51', 2742, NULL, '2017-11-07 19:46:46', '2013-10-25 08:40:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 1, 50, 'cassin.pink', 73363779, NULL, '2019-11-15 16:26:53', '2019-01-03 11:34:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 51, 'lturcotte', 953851, NULL, '2011-04-20 00:10:34', '2019-06-13 23:20:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 1, 52, 'wschumm', 42, NULL, '2015-08-03 10:02:18', '2011-11-22 09:55:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 1, 53, 'aurelie.johnston', 941016706, NULL, '2013-07-20 05:56:32', '2013-03-08 09:52:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 2, 54, 'boyle.beulah', 85245992, NULL, '2014-07-09 02:23:23', '2013-04-08 15:24:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 2, 55, 'reta05', 309592344, NULL, '2012-07-06 03:44:10', '2012-08-03 13:01:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 56, 'michale11', 0, NULL, '2018-01-14 13:43:24', '2010-09-18 23:47:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 57, 'walter.elwyn', 147669, NULL, '2010-06-03 22:00:20', '2019-03-25 08:46:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 58, 'cremin.antone', 127506549, NULL, '2010-09-21 00:04:04', '2015-11-05 09:22:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 59, 'elvis.bernhard', 25277332, NULL, '2013-07-30 18:08:33', '2017-03-16 17:34:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 2, 60, 'ilowe', 741, NULL, '2014-01-11 20:11:32', '2012-10-21 04:13:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'hbernier', 6, NULL, '2020-01-08 21:05:34', '2020-01-14 12:20:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 1, 62, 'bettie.bayer', 37465, NULL, '2011-09-16 04:03:12', '2015-01-19 08:31:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 2, 63, 'weissnat.easton', 0, NULL, '2011-02-03 11:15:45', '2020-03-29 12:34:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 2, 64, 'so\'reilly', 67, NULL, '2019-09-30 01:34:13', '2013-11-27 19:47:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 65, 'lowe.dulce', 9634539, NULL, '2018-09-01 20:31:02', '2011-04-25 00:04:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 66, 'joana.cormier', 9767, NULL, '2014-04-24 19:54:37', '2015-03-12 03:19:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 67, 'kschultz', 6661460, NULL, '2015-06-29 09:52:11', '2013-01-14 15:12:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 1, 68, 'maxine.haley', 96871, NULL, '2015-03-18 22:07:10', '2017-05-31 00:32:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 1, 69, 'hcrooks', 47, NULL, '2015-03-30 22:32:11', '2015-09-05 18:09:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 2, 70, 'jmurazik', 885379, NULL, '2020-03-15 17:41:33', '2011-06-26 20:57:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 71, 'giles.morissette', 43841, NULL, '2016-01-05 17:09:46', '2015-12-16 16:24:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 72, 'mtremblay', 8112, NULL, '2015-07-19 12:49:40', '2015-09-12 09:05:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 2, 73, 'tfadel', 8, NULL, '2011-10-21 15:48:55', '2018-11-06 03:21:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 1, 74, 'yolanda.hessel', 4, NULL, '2011-01-26 17:37:16', '2019-11-21 18:03:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 2, 75, 'ebailey', 6396276, NULL, '2018-05-24 03:17:07', '2019-08-29 15:52:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 2, 76, 'dare.guiseppe', 0, NULL, '2018-01-07 17:38:38', '2019-12-10 05:36:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, 'julianne.pouros', 802226730, NULL, '2012-11-30 18:31:17', '2017-11-15 03:32:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 1, 78, 'njohnson', 515857, NULL, '2014-10-21 11:17:33', '2013-04-30 08:25:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 2, 79, 'jayda.wiza', 255081865, NULL, '2010-08-14 17:12:44', '2017-06-13 17:02:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 1, 80, 'liana.schowalter', 7124, NULL, '2010-04-17 16:07:30', '2012-10-01 02:44:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 2, 81, 'fredy39', 2, NULL, '2015-10-25 16:10:17', '2014-01-21 07:20:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, 'bfritsch', 0, NULL, '2016-01-26 00:07:45', '2018-01-28 05:02:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 1, 83, 'beahan.alvera', 3642, NULL, '2017-08-26 22:17:55', '2019-01-05 10:23:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 1, 84, 'yoshiko.will', 542, NULL, '2017-01-14 12:06:50', '2019-08-08 06:37:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 2, 85, 'streich.liza', 8623634, NULL, '2017-04-29 18:14:47', '2018-09-24 11:01:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 86, 'obuckridge', 38780689, NULL, '2018-05-20 19:38:16', '2018-09-13 20:16:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 87, 'jake90', 62948040, NULL, '2011-05-24 14:58:13', '2011-04-05 13:21:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 2, 88, 'gcollins', 92999358, NULL, '2019-03-24 10:10:33', '2019-03-21 17:14:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 1, 89, 'berniece02', 6, NULL, '2013-08-21 19:05:28', '2013-09-06 01:33:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 2, 90, 'rodolfo.blick', 267680, NULL, '2017-10-20 23:37:46', '2018-12-30 23:20:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 2, 91, 'graciela15', 6827, NULL, '2010-09-14 16:38:57', '2017-01-18 22:49:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 1, 92, 'marisa50', 0, NULL, '2015-02-04 19:28:19', '2010-05-31 08:54:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 1, 93, 'ruthie.vonrueden', 85742592, NULL, '2015-04-24 01:13:03', '2014-04-22 09:39:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 2, 94, 'eschamberger', 23341, NULL, '2016-03-02 23:25:45', '2011-09-20 18:41:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 95, 'serenity.mohr', 973, NULL, '2012-06-11 18:37:13', '2013-12-04 15:27:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 96, 'vkozey', 64801197, NULL, '2017-01-29 17:26:10', '2015-02-20 06:59:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 97, 'destany56', 29, NULL, '2017-04-09 00:49:56', '2019-10-02 17:14:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 1, 98, 'gwindler', 2809640, NULL, '2017-02-05 02:56:24', '2014-09-29 10:29:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 2, 99, 'roberts.reba', 49, NULL, '2016-11-26 14:15:06', '2013-09-14 01:01:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 1, 100, 'katlyn02', 500, NULL, '2010-12-15 18:08:55', '2013-02-28 23:27:13');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (10, 'acc');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'avi');
INSERT INTO `media_types` (`id`, `name`) VALUES (6, 'doc');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'jpg');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'mkv');
INSERT INTO `media_types` (`id`, `name`) VALUES (9, 'mp3');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'mp4');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'png');
INSERT INTO `media_types` (`id`, `name`) VALUES (7, 'xls');
INSERT INTO `media_types` (`id`, `name`) VALUES (8, 'xlsx');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 62, 12, 'Quo aut sunt quia minima. Totam voluptate pariatur illo veritatis veniam. Officia dolor expedita voluptatum aut commodi. Aut eaque dignissimos asperiores aut minima.', 0, 1, '2019-10-05 22:00:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 44, 53, 'Asperiores distinctio dolorum fuga. Quod voluptatibus aut ad iste inventore molestias. Perferendis consequatur nostrum ut doloribus soluta recusandae.', 0, 1, '2019-09-22 08:29:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 86, 67, 'Aut aperiam qui consectetur doloribus velit. Quisquam aut voluptas laudantium incidunt qui dolor voluptas. Soluta voluptatibus distinctio rerum assumenda. Placeat porro sequi laborum repellat.', 0, 1, '2020-01-11 03:51:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 53, 70, 'Officiis cum perferendis dolores magni est maxime. In reiciendis fugit quaerat beatae sit voluptatum repellat dolorem. Iure iusto veritatis exercitationem repellendus omnis doloremque. Asperiores facere neque et id. Et velit accusantium ea ducimus nobis iste quia.', 0, 1, '2019-08-05 03:24:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 2, 23, 'Expedita et quis perferendis asperiores. Dolor similique esse veritatis error omnis quas. Alias doloremque sed debitis et voluptas dignissimos nisi. Ipsa repudiandae eius occaecati qui. Veritatis eius omnis non ea.', 1, 1, '2019-05-05 13:12:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 92, 34, 'Sunt amet facere ut quisquam. Quod nesciunt velit aut accusantium et sunt perspiciatis. Ducimus adipisci aperiam magnam quo.', 0, 0, '2019-07-03 05:08:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 72, 11, 'Et itaque doloribus ut dolorum corrupti. Aut provident aspernatur qui incidunt sunt dolor. Recusandae vero ea praesentium officiis quo qui.', 1, 0, '2019-12-19 08:55:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 42, 49, 'Qui voluptatum quasi debitis nobis molestias id. Incidunt nulla qui quidem eaque est velit ut. Velit ad corporis soluta. Animi molestiae adipisci quaerat nihil rem.', 0, 0, '2019-06-02 01:19:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 76, 77, 'Distinctio molestias vero qui qui voluptate ut architecto quam. Quae veritatis minus qui dignissimos culpa fugit quis. Laborum sit impedit voluptatem dignissimos repellat vero. Perspiciatis harum praesentium et quaerat eum.', 1, 0, '2019-07-10 03:48:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 2, 26, 'Non officia voluptatum cum et optio. Iure dolores deserunt qui non occaecati consequatur.', 1, 1, '2019-09-23 15:08:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 72, 33, 'Autem neque quasi error recusandae. Aut quis beatae dolorem dolorem et voluptatibus. A ipsum quos ut eveniet. Quia at libero repudiandae enim.', 1, 0, '2019-10-14 22:19:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 68, 82, 'Et suscipit nihil sunt quasi sit quo esse corporis. Nihil dolores non sint ad. Fugit recusandae nihil vel placeat. Velit corporis voluptas rem enim voluptas aspernatur.', 1, 1, '2020-03-10 16:59:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 56, 22, 'Minima quod inventore corporis asperiores. Qui dolor qui ea voluptas.', 0, 0, '2019-08-16 13:34:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 75, 26, 'Eligendi autem facilis enim aperiam voluptatem fuga voluptas. Quod et rerum alias sint saepe tempore praesentium. Quas nisi minima quibusdam atque possimus in sapiente. Aliquam eligendi qui reiciendis recusandae repudiandae maiores.', 1, 0, '2019-12-15 07:46:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 30, 37, 'Est optio enim quia repellat. Voluptatum nobis architecto et provident ratione. Libero laborum qui iure quia ipsa dolorem reiciendis qui.', 0, 1, '2019-10-03 02:27:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 9, 29, 'Voluptatum ipsa molestias repudiandae similique mollitia. Ut in similique eos necessitatibus quam fugiat dolor. Aut molestiae non voluptatem assumenda. Nobis quibusdam incidunt quia nemo.', 0, 0, '2019-09-05 10:22:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 34, 76, 'Optio ratione quos saepe nesciunt aut explicabo quasi. In molestias omnis voluptatem. Fuga nisi exercitationem et velit saepe nam adipisci iste. Eius dignissimos est ut alias.', 0, 1, '2019-04-22 18:53:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 87, 89, 'Culpa qui voluptas nam quia. Blanditiis nihil ipsum quibusdam doloremque qui. Est temporibus enim sit placeat voluptates enim voluptas provident. Et repellendus cumque cum exercitationem voluptas.', 1, 1, '2019-05-08 15:57:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 100, 29, 'Tempore possimus eligendi minus deleniti nam. Et et laudantium repellat atque praesentium.', 1, 1, '2019-12-26 11:55:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 60, 48, 'Dolorem rem rerum ut sint doloremque qui rerum ut. Et voluptas qui similique possimus quia eum sapiente. Doloribus quaerat autem adipisci in.', 0, 0, '2019-03-30 17:51:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 81, 68, 'Et in harum quia et. Tempore nostrum ut velit eum ut consequatur. Itaque reiciendis in excepturi qui aliquid       aspernatur.', 1, 1, '2019-12-04 19:12:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 50, 58, 'At eaque ut nulla nihil. Vel officiis doloribus esse. Et laborum aperiam est culpa.', 1, 1, '2019-05-12 22:53:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 39, 10, 'Est quas quia nostrum consequatur aut voluptatem voluptas. Molestiae voluptatem quia explicabo unde sit. Et error non id impedit facilis officiis ipsum. Neque assumenda aut quia amet quas.', 0, 0, '2020-02-16 12:29:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 14, 11, 'Aut nostrum et provident architecto commodi voluptatum nostrum quae. Est veritatis sed accusamus et recusandae ab. Est facere quam molestias dolore at.', 0, 0, '2019-11-26 00:23:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 15, 66, 'Facere enim ratione aspernatur praesentium odit incidunt sed et. Rerum laborum cumque accusamus tempore. Id rem dolore rerum. Enim velit nisi debitis. Cumque impedit vero mollitia voluptatibus qui qui.', 1, 0, '2019-08-29 05:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 52, 4, 'Et officiis quis inventore sapiente consequatur similique. Et saepe tenetur molestias rerum sint quod consequuntur. Mollitia incidunt accusamus quia asperiores asperiores qui nihil.', 1, 1, '2020-03-14 08:06:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 45, 44, 'Temporibus sit molestiae dignissimos cum quo provident sunt. Autem iusto voluptates accusantium labore voluptatem. Possimus soluta qui minima ipsa. Nam quas minima sed fuga consequatur.', 0, 1, '2020-02-07 09:59:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 93, 72, 'Sint dicta perferendis similique fugiat rem deserunt. Consequatur accusantium et laborum vero. Eum excepturi aliquid in sequi vitae eaque. Quis ipsam placeat cumque iusto. Sapiente dolor nihil eum minima.', 0, 0, '2019-04-08 17:31:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 36, 76, 'Natus rem ut repudiandae quas at. Assumenda minima qui accusantium impedit accusantium ipsum libero. Nam quia rerum voluptatem ex dolorem voluptatem laborum. Eligendi vero delectus iure voluptas nihil.', 1, 1, '2020-03-26 22:07:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 82, 35, 'Laborum aut in autem in magni ipsum. Autem repudiandae dolorum facere repellat commodi. Voluptatem iusto sed repudiandae maiores accusantium cupiditate. Voluptatem ducimus ab nesciunt architecto aut non.', 0, 1, '2019-08-18 02:37:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 88, 66, 'Non est sed blanditiis doloremque magni necessitatibus. Eius amet ullam sit quo quas. Est minus et quaerat rerum qui voluptatum.', 0, 0, '2020-01-21 08:15:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 31, 88, 'Similique quia debitis et repellendus iusto qui. Non laboriosam unde eaque et aut nisi vel nulla. Recusandae quas et exercitationem odio rem cum placeat. Illum rerum quidem eaque.', 0, 1, '2019-06-14 22:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 53, 38, 'Unde ad officia perferendis. Ducimus eaque et distinctio ad nihil voluptas. Esse sequi doloribus tenetur ab sed eius. Perferendis beatae quo necessitatibus quod.', 0, 1, '2019-07-01 11:25:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 43, 74, 'Recusandae pariatur non quos est quidem. Qui dolores sed fuga et aut voluptatem modi nulla. Aut voluptatem quibusdam rerum. Eum neque est eos non quae. Qui voluptate autem et.', 0, 1, '2019-07-29 14:48:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 32, 43, 'Cum quo quia vel rerum rerum molestias. Sit facere debitis voluptatibus voluptatibus vero laboriosam. Qui id aut cum quis.', 1, 0, '2020-03-14 13:31:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 39, 69, 'At fuga quidem labore. Officiis assumenda velit maxime repudiandae distinctio velit dicta. Est qui sed maxime magni ipsum.', 1, 1, '2020-03-27 20:50:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 53, 83, 'Unde in voluptate dolores. Sint non delectus enim voluptatibus aliquid similique sed fugit.', 0, 1, '2020-02-24 08:29:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 32, 13, 'Sequi sint exercitationem nulla eligendi nesciunt perspiciatis officia. Aut dolores debitis sequi dolorem. Mollitia temporibus eos quo sapiente aliquid perferendis. Quia id quo aut.', 0, 0, '2019-12-29 03:54:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 91, 62, 'Aliquam error totam quia quae. Laudantium temporibus nihil ut qui dolorem. Voluptatem molestiae fugiat facilis aut eos aut.', 1, 0, '2019-09-29 15:14:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 73, 27, 'Molestiae esse culpa autem at. Odit eveniet tempora qui a ut dolorem eveniet. Ipsum architecto molestiae modi veniam nam. Consequatur suscipit quidem minus similique sed officiis qui totam.', 1, 1, '2020-03-13 23:14:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 70, 15, 'Eveniet et aut sed. Id vel cum esse animi odio porro repudiandae. Quia maxime dignissimos quos aut hic. Tenetur autem quia dolore et et iste est reiciendis.', 1, 1, '2020-01-24 06:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 35, 27, 'Omnis nobis assumenda error aperiam dicta aut quibusdam. Enim et eligendi labore. Molestiae blanditiis dolor dolor tempora omnis libero qui voluptas. Rerum laborum possimus itaque quibusdam qui.', 0, 0, '2019-11-13 23:45:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 84, 52, 'Et alias voluptatem distinctio earum. Aut et est et saepe ut adipisci. Voluptate incidunt alias ea harum magni est. Nostrum corrupti sunt est consectetur magnam sed.', 1, 1, '2019-07-01 15:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 100, 5, 'Vel et quidem quia. Libero voluptatibus et harum ut. Quia rerum minus et tempora. Qui et quia qui.', 1, 0, '2019-09-04 15:39:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 12, 28, 'Amet molestias exercitationem dolorum magni eaque. Aut consequuntur quod provident odio hic voluptatem id rerum. Vel ut nisi autem nihil iusto quod. Sit eum illo quia ea nisi illo ad et.', 1, 1, '2019-07-02 19:36:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 37, 47, 'Est et qui amet vel ut perspiciatis deserunt. Possimus ipsum sed doloribus dolorem. Pariatur modi numquam voluptates a perspiciatis explicabo et. Quos perferendis ut quis est et.', 0, 1, '2019-06-09 21:15:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 43, 26, 'Non voluptatem dolorem ut nesciunt dicta. Qui reiciendis deserunt dignissimos molestiae enim et. Natus et qui eum.', 1, 1, '2019-08-20 22:54:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 64, 30, 'Excepturi quidem et qui et accusamus. Quasi quia doloribus rerum rerum.', 1, 1, '2020-03-30 08:05:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 36, 73, 'Voluptatem voluptatem ad amet amet nostrum. Optio libero architecto totam nisi expedita non dolores. Velit in odit molestiae est nihil rerum libero.', 0, 0, '2019-07-02 16:22:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 76, 69, 'Dolore magnam fuga ut repellat perferendis. Natus qui commodi neque corrupti qui officiis. Aut sint et consequatur omnis nobis quibusdam consequatur. Minus architecto molestias eligendi.', 0, 0, '2019-12-27 04:21:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 26, 91, 'Voluptas dolorem voluptates consequatur. Quasi fugit eum expedita possimus. Autem est velit tempore sed fuga ut.', 1, 1, '2019-07-13 17:52:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 44, 35, 'Consequatur illum nostrum consequuntur molestiae sed unde. Est aliquam libero quae cum consequatur. Voluptate suscipit est adipisci fugit. Temporibus libero rem dolorem itaque nam nam.', 1, 1, '2019-10-15 00:16:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 26, 60, 'Molestiae consectetur quo odio et dolorem ea molestiae velit. Similique quis eos ipsum quod aliquid eveniet. Aut ipsam quis cupiditate voluptatem. Expedita sed commodi maiores facere impedit delectus atque.', 0, 0, '2019-07-24 08:15:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 48, 50, 'Occaecati dignissimos perferendis odit sunt quia illo et. Voluptatem maiores debitis sint quibusdam ex. Aut et quas alias laudantium. Exercitationem optio eius culpa deserunt officia cumque impedit.', 0, 1, '2020-03-26 05:34:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 36, 86, 'Fuga et minima ut dolor aut nemo unde. Sapiente laborum autem quasi impedit dolorem. Autem consectetur ducimus sit distinctio cum omnis atque. Illo qui doloribus et et velit voluptatem qui.', 1, 1, '2019-07-29 09:49:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 6, 35, 'Et et qui et. Quis sed nisi suscipit consequatur et rerum. Delectus eaque illo quia quia est.', 1, 1, '2019-07-02 07:39:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 85, 14, 'Impedit quos labore sit dolor consequuntur nobis non totam. Illum eligendi ut voluptatem cum fugiat inventore. Rerum illum voluptas reprehenderit vero quisquam atque tempora accusamus. Sed molestiae natus maiores neque sit.', 1, 0, '2019-07-20 03:54:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 63, 92, 'Perferendis error quisquam distinctio autem odit rerum. Voluptate porro vel modi voluptatum esse non. Dolore sunt aspernatur et maxime ratione expedita.', 0, 0, '2019-07-28 06:19:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 49, 80, 'Impedit ipsa hic omnis itaque quibusdam nostrum quo. Corrupti in maiores placeat ipsa qui. Qui esse atque non deleniti. Molestiae accusantium sunt ut enim consequatur explicabo.', 1, 0, '2020-01-02 12:11:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 49, 63, 'Ad voluptas expedita delectus modi ea laborum consequatur. Beatae occaecati accusantium at recusandae. Quasi molestiae dolores illo molestiae alias.', 0, 1, '2019-05-25 05:32:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 17, 58, 'Et sint odit doloremque magnam quam consequatur. Et tempora eveniet quam molestiae amet.', 0, 1, '2019-05-08 18:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 92, 13, 'Illo ea ut temporibus soluta saepe dolor qui. Adipisci sint pariatur voluptatem consequatur.', 0, 0, '2019-11-23 00:45:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 3, 'Doloremque exercitationem asperiores illum iure. Maxime atque et autem in quis. Et est et saepe praesentium quidem sequi ut qui. Perferendis eligendi eius aut fugiat et. Id nihil necessitatibus sed non.', 1, 0, '2019-04-12 06:46:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 70, 15, 'Et veniam tempore illo at quia. Sint aut et magni aliquid ullam. Ut itaque voluptas itaque quo.', 0, 1, '2019-04-11 21:44:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 74, 82, 'Aperiam ex id accusamus debitis praesentium quibusdam adipisci. Hic mollitia id aut pariatur rerum ut quos et. Tempore asperiores ut ut quia et. Doloribus blanditiis voluptas architecto.', 0, 1, '2019-08-13 07:19:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 38, 38, 'Accusamus aliquid unde quas adipisci qui. Tenetur et blanditiis aut sunt accusantium. Velit qui numquam adipisci nam nisi. Quis fugiat sit voluptatem architecto qui sunt dolore. Praesentium vero sequi numquam unde suscipit.', 0, 0, '2019-06-10 03:46:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 18, 29, 'Debitis consequatur rerum itaque voluptatem. Non maxime maiores iusto. Quo saepe sed quam dignissimos. At sed et optio mollitia sint atque quo.', 0, 0, '2019-08-10 11:00:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 97, 65, 'Eaque atque et et unde repellendus quam. Consequatur illum distinctio aliquam qui. Qui dolores quo perspiciatis eius et. Cum ut iusto tenetur maxime quisquam. Perspiciatis sapiente enim rerum et dolorem accusamus exercitationem.', 0, 1, '2019-04-18 13:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 72, 14, 'Beatae nulla consequatur iure est voluptatem sed. Est vel commodi doloremque est. Autem facilis dicta sit quo rerum ut. Accusantium possimus consequatur sunt autem et est voluptate similique.', 0, 1, '2019-08-22 18:41:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 92, 32, 'Voluptatibus recusandae voluptas consectetur occaecati veritatis. Nobis nostrum autem ab ullam dolore delectus. Fugit exercitationem velit aut aut beatae porro.', 1, 1, '2019-10-07 06:18:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 26, 48, 'Officiis provident et ipsam aut. Ut tempore aut vel quasi nam nulla. Inventore distinctio rerum quaerat modi dolorem. Aut exercitationem alias illum est fuga. Quis quas qui repellendus quia placeat voluptates eos doloribus.', 0, 1, '2019-12-07 05:59:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 61, 76, 'Dolorem et aliquid veritatis cum itaque occaecati. Reiciendis voluptas nihil velit repellendus. Labore voluptas facere debitis.', 1, 1, '2020-03-11 18:10:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 22, 23, 'A non vel illo et iure. Consectetur ab quos unde nihil itaque asperiores ex. Et quos ut iusto totam et.', 1, 0, '2019-12-19 12:37:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 58, 58, 'Rem velit nisi dolorem ut aut sit distinctio. Unde ut qui dolorem rerum sapiente repudiandae eos. Qui quidem sequi eius ullam non nostrum quas. Sapiente mollitia atque quas quisquam quisquam est. Cumque ex consequuntur saepe fugit quod odio et.', 1, 1, '2019-07-24 02:46:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 27, 74, 'Qui debitis ipsum ea explicabo qui. Velit ratione id qui quo expedita consequatur. Sint illo voluptates libero molestias et dignissimos.', 0, 0, '2019-05-31 19:17:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 22, 98, 'Ad vero voluptates fuga. Optio nihil expedita consequatur sit officiis neque omnis. Porro qui laborum laborum rerum.', 1, 1, '2019-09-06 07:42:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 61, 21, 'Quaerat dolor qui minima exercitationem occaecati accusantium eos. Tenetur et laboriosam ex. Magni consequuntur fugiat deleniti quaerat aut excepturi ad. Fugiat qui distinctio porro.', 0, 1, '2019-10-28 16:40:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 12, 19, 'Sed earum qui voluptatem minus labore. Doloribus laudantium sit qui ex cumque voluptatem. Sunt quos optio eos. Et sapiente sed ipsam dolor sit sit.', 1, 0, '2020-01-03 14:48:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 35, 32, 'Et modi quibusdam voluptas qui fugit dolor odio. Inventore dolore incidunt ipsum qui et aut. Modi voluptas et adipisci voluptatibus. Quibusdam mollitia vel deserunt.', 0, 0, '2020-02-21 21:32:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 64, 91, 'Exercitationem cum alias est officia sed. Voluptatibus ex debitis omnis esse quaerat voluptates. Et similique aliquid quia esse est odit. Qui neque nisi distinctio.', 0, 0, '2019-11-01 18:49:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 11, 83, 'Qui aut necessitatibus est quo nostrum nostrum natus. Praesentium esse impedit molestiae amet sed ducimus unde. Aut labore in omnis aliquam quae. Qui et quos quidem.', 1, 0, '2019-06-08 11:22:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 31, 60, 'Soluta numquam excepturi omnis. Voluptates ut minus voluptatem inventore voluptates consequatur est eos. Illum rerum hic sint vitae non sapiente dolor.', 1, 1, '2019-08-18 14:54:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 100, 17, 'Ut nam quis id incidunt id. Odio et enim dignissimos quibusdam et ea recusandae non. Ratione magnam qui natus eum.', 0, 1, '2019-08-14 21:08:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 26, 34, 'Consequatur magni in qui atque. Incidunt autem aut eveniet nihil consequuntur possimus ut. Rerum tenetur explicabo aliquid quisquam. Aliquam eligendi consectetur sequi autem.', 0, 0, '2020-03-22 15:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 42, 37, 'Facilis neque dolor perspiciatis dolorum. Dolore rerum voluptas neque eligendi incidunt. Soluta est quaerat illum culpa doloribus blanditiis rem. In maxime quas nisi maiores hic. Ipsa ad voluptatem dolor quo hic et nam.', 1, 0, '2020-03-07 07:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 27, 53, 'Quod eum consequatur est facilis praesentium cumque ut voluptatem. Vitae aliquid vel dignissimos et dicta. Totam nisi sed ea quasi illo consequuntur.', 0, 0, '2020-02-13 14:14:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 70, 48, 'Sint libero ea odio ut. Omnis eum a quis ullam. Atque aut rem eum odio.', 0, 0, '2019-11-23 13:09:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 2, 97, 'Ipsum odit deserunt aut quos enim omnis iusto esse. Qui eligendi nemo quis dolores non voluptatem molestiae.', 1, 1, '2019-06-16 13:22:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 41, 48, 'Voluptate fugit fugiat et necessitatibus consequatur deleniti quasi. Dolore suscipit neque quo et aut quod.', 1, 0, '2019-06-05 23:49:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 1, 88, 'Ducimus nam similique aut tempora facilis non. Eos quaerat qui sunt qui blanditiis eligendi. Tempore voluptas molestias expedita nobis eos error cumque.', 1, 0, '2019-09-11 11:04:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 79, 83, 'Voluptatem dicta ea non et. Quidem odit sunt cupiditate ipsa molestias similique beatae. Minima voluptas aspernatur ipsa similique sed. Libero fuga qui libero sit quisquam consequuntur dolores.', 0, 1, '2019-11-21 06:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 81, 56, 'Tenetur numquam molestiae error voluptatem non et. Autem quibusdam quas et id enim. Quod quis maxime officia asperiores ducimus.', 1, 0, '2020-01-20 05:28:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 60, 100, 'Minima aliquid dolores laboriosam repellendus rerum et. Commodi quo similique sapiente aut inventore fugiat in. A commodi ut accusamus accusantium a eius. Harum omnis minima voluptas dicta fuga nesciunt sit.', 0, 1, '2019-06-09 06:01:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 57, 30, 'Et ut dolorum ut. Consequatur ut veniam minima dolorem quidem dolores praesentium similique. Ea voluptas numquam quo blanditiis.', 1, 1, '2020-03-03 22:04:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 10, 45, 'Numquam et consequatur in quo. Rem delectus ut et vel. Aut omnis consectetur dignissimos amet voluptate ut. Ut et aut sed ea hic omnis commodi dicta. Rerum non consequuntur qui explicabo.', 0, 0, '2019-04-20 16:22:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 7, 98, 'Voluptas voluptatem inventore iste veniam. Dolorum est necessitatibus assumenda tempora. Architecto impedit rerum dolorum sit laborum. Distinctio et perferendis harum eos alias enim autem magni.', 1, 0, '2019-08-14 08:17:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 26, 95, 'Consequuntur deserunt reiciendis corporis. Et recusandae id architecto.', 1, 0, '2020-01-13 15:24:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 73, 42, 'Et voluptate cum ducimus. Nulla quibusdam at fugit rerum quod. Soluta et libero architecto ducimus. Unde ut magni nam.', 0, 1, '2019-05-05 19:37:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 37, 81, 'Nisi illo et incidunt pariatur fuga. Tempora et harum eos numquam qui quasi. Nihil voluptatem placeat vitae et necessitatibus temporibus et minus. Omnis aut minima illum totam delectus. Quod facere dolorum cumque rerum delectus.', 1, 0, '2019-11-14 04:17:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 16, 23, 'Fugiat autem aut eum et non amet perspiciatis. Accusamus debitis sequi voluptatem laboriosam voluptas quo. Temporibus voluptas veniam accusamus ipsa repudiandae.', 1, 0, '2019-07-13 21:06:36');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (1, 'M', '1984-12-18', 'Huelsborough', 'Philippines', 34, '2013-03-10 00:26:09', '2017-12-19 22:43:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (2, 'M', '2004-05-14', 'Nettieside', 'Russian Federation', 78, '2017-10-15 02:20:57', '2011-06-02 12:20:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (3, 'M', '2000-11-11', 'Lake Fredericside', 'Turkey', 14, '2015-12-23 23:04:11', '2016-07-18 18:24:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (4, 'F', '1999-04-29', 'Brownburgh', 'Germany', 17, '2016-02-10 09:48:23', '2011-03-16 05:01:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (5, 'F', '1988-10-26', 'Madelynnhaven', 'Albania', 56, '2010-09-20 07:22:08', '2017-04-22 08:43:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (6, 'F', '2015-04-05', 'Johnathanshire', 'Austria', 7, '2020-03-12 11:53:47', '2015-11-09 07:00:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (7, 'F', '1987-01-30', 'Elouiseburgh', 'Spain', 3, '2018-03-02 00:59:49', '2013-06-17 11:05:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (8, 'M', '1974-08-03', 'Weissnatmouth', 'Mayotte', 97, '2019-09-08 04:16:38', '2016-09-09 09:01:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (9, 'F', '2012-04-26', 'Herzogmouth', 'Ireland', 32, '2012-02-14 08:37:15', '2015-02-20 13:22:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (10, 'F', '1971-08-02', 'Welchmouth', 'Peru', 11, '2011-12-09 22:24:29', '2015-07-10 00:31:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (11, 'F', '1973-06-20', 'East Sadie', 'Uruguay', 73, '2010-04-01 17:43:00', '2019-04-13 06:24:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (12, 'M', '1995-10-16', 'South Jasen', 'Uzbekistan', 3, '2015-08-10 10:35:06', '2019-09-18 15:08:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (13, 'F', '1981-08-28', 'Rosannaburgh', 'Uzbekistan', 68, '2014-01-29 10:12:52', '2017-06-07 20:10:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (14, 'F', '1990-05-25', 'East Rowan', 'Pitcairn Islands', 20, '2019-06-08 18:14:42', '2014-06-09 12:08:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (15, 'F', '2012-05-12', 'West Marcellus', 'Macao', 21, '2017-07-22 21:43:12', '2017-10-16 20:57:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (16, 'M', '1989-01-10', 'Larkinview', 'Equatorial Guinea', 36, '2010-06-08 18:47:33', '2010-12-13 15:47:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (17, 'M', '1978-03-03', 'North Rupertfort', 'Gabon', 36, '2014-09-08 05:33:33', '2019-09-21 04:09:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (18, 'F', '2010-08-01', 'Lindtown', 'Isle of Man', 4, '2012-04-18 12:51:56', '2011-06-13 07:41:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (19, 'M', '2018-02-20', 'Lake Ruthhaven', 'Bermuda', 37, '2010-04-15 19:01:46', '2019-02-05 01:48:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (20, 'F', '2003-06-21', 'Port Isaiah', 'Tonga', 7, '2013-09-21 12:15:23', '2019-03-16 15:08:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (21, 'M', '2016-07-25', 'Goyettemouth', 'Montserrat', 61, '2015-03-17 21:49:11', '2016-09-09 05:08:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (22, 'M', '1984-05-21', 'Port Macmouth', 'Central African Republic', 1, '2017-11-27 13:18:15', '2019-12-29 01:28:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (23, 'F', '1970-03-18', 'West Pedroville', 'French Polynesia', 46, '2011-06-29 03:51:17', '2017-09-14 10:28:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (24, 'F', '1973-12-03', 'Willashire', 'British Indian Ocean Territory (Chagos Archipelago)', 14, '2011-01-05 10:55:02', '2010-11-02 01:29:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (25, 'M', '2018-07-14', 'Port Bettiemouth', 'United States Virgin Islands', 17, '2013-12-22 23:52:54', '2011-09-06 11:36:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (26, 'F', '2017-09-01', 'East Justiceport', 'Saint Martin', 40, '2015-06-24 09:33:06', '2018-08-27 18:00:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (27, 'F', '2012-05-11', 'West Ona', 'Seychelles', 75, '2011-05-16 09:46:56', '2018-10-08 07:38:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (28, 'M', '1979-04-18', 'New Jovanimouth', 'Niue', 38, '2012-04-11 21:47:33', '2011-02-15 10:16:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (29, 'F', '1985-08-15', 'Marlinborough', 'Greenland', 13, '2018-09-04 01:08:32', '2015-02-17 22:46:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (30, 'M', '1995-06-29', 'New Zakary', 'Monaco', 93, '2010-12-30 11:10:57', '2012-05-20 06:10:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (31, 'M', '2013-12-10', 'New Jasperland', 'Comoros', 25, '2011-02-01 18:49:46', '2012-02-26 12:55:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (32, 'M', '1983-07-20', 'Loraineport', 'Serbia', 49, '2011-03-03 12:52:43', '2011-02-03 14:09:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (33, 'M', '1986-06-10', 'Rettaborough', 'Papua New Guinea', 29, '2012-11-01 20:58:16', '2012-01-08 16:09:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (34, 'M', '2008-07-24', 'Rodriguezstad', 'Yemen', 26, '2016-08-22 17:58:47', '2019-10-06 05:57:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (35, 'F', '2010-08-21', 'Lake Esta', 'Tonga', 22, '2015-10-03 12:21:15', '2016-12-15 02:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (36, 'F', '2014-06-18', 'Port Kurt', 'Mongolia', 95, '2015-09-24 16:12:41', '2019-04-18 17:39:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (37, 'F', '1971-08-29', 'East Simoneburgh', 'Isle of Man', 51, '2012-05-08 21:35:12', '2011-10-20 12:36:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (38, 'F', '1985-12-13', 'Considineport', 'Swaziland', 20, '2014-05-06 22:03:01', '2014-05-12 06:14:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (39, 'F', '1988-12-20', 'New Alvera', 'Norfolk Island', 39, '2013-12-09 02:26:11', '2012-05-13 11:03:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (40, 'F', '2006-04-29', 'West Adrainview', 'Serbia', 48, '2014-06-10 18:43:44', '2014-10-29 20:24:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (41, 'F', '1970-07-11', 'Elenoramouth', 'Niue', 22, '2020-03-23 10:43:28', '2012-01-03 07:06:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (42, 'F', '1986-05-18', 'Port Jennings', 'Samoa', 100, '2018-08-24 09:56:35', '2016-10-01 21:53:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (43, 'M', '1981-01-05', 'Hudsonmouth', 'Reunion', 45, '2012-01-07 05:17:31', '2017-03-25 19:56:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (44, 'F', '1981-12-15', 'Boganmouth', 'France', 29, '2019-07-15 15:41:49', '2014-12-19 01:13:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (45, 'M', '2014-08-04', 'West Thea', 'Togo', 95, '2019-09-03 05:02:18', '2019-03-26 20:52:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (46, 'F', '1998-08-31', 'Casperport', 'Timor-Leste', 67, '2014-05-29 06:32:00', '2010-12-01 04:19:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (47, 'F', '1996-08-02', 'Gutmannberg', 'Uzbekistan', 82, '2018-02-26 06:59:40', '2011-06-25 20:42:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (48, 'M', '1979-03-29', 'Rempelmouth', 'Saint Pierre and Miquelon', 54, '2010-06-15 12:35:05', '2018-04-28 21:33:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (49, 'M', '2019-12-08', 'West Ronnyport', 'Palau', 67, '2010-06-24 21:20:59', '2016-01-15 10:38:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (50, 'F', '1981-02-23', 'Larkinborough', 'Bulgaria', 78, '2011-02-19 18:56:18', '2020-03-08 19:05:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (51, 'M', '2005-05-30', 'Guiseppeville', 'Spain', 70, '2019-04-28 11:21:28', '2011-02-05 12:08:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (52, 'M', '2014-01-27', 'West Pearlinefurt', 'Cambodia', 18, '2012-11-28 21:37:09', '2018-09-26 01:52:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (53, 'F', '1995-01-10', 'Huelside', 'United States Minor Outlying Islands', 33, '2018-11-28 14:13:32', '2015-02-17 10:35:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (54, 'F', '1982-10-07', 'East Laney', 'Switzerland', 38, '2015-08-02 20:47:05', '2017-11-16 11:10:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (55, 'F', '1983-07-21', 'Fadelborough', 'Isle of Man', 73, '2011-02-03 13:09:17', '2014-08-22 07:13:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (56, 'M', '1975-10-24', 'Schummberg', 'Fiji', 87, '2016-02-16 14:17:52', '2010-10-17 10:24:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (57, 'M', '2015-06-12', 'West Walker', 'Vietnam', 75, '2015-08-09 01:25:24', '2012-10-28 18:58:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (58, 'F', '1976-05-15', 'Birdiefort', 'Zambia', 70, '2012-04-01 22:28:55', '2016-09-21 20:58:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (59, 'F', '2016-01-04', 'North Hilbertfurt', 'Italy', 56, '2017-05-24 14:53:45', '2019-05-01 05:13:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (60, 'M', '1990-08-30', 'Franciscoton', 'Guyana', 70, '2015-12-15 16:45:01', '2013-08-08 18:52:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (61, 'F', '2003-03-13', 'Conroychester', 'Kazakhstan', 77, '2019-10-30 20:40:11', '2017-01-11 20:12:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (62, 'F', '1978-03-02', 'New Maurice', 'Japan', 45, '2020-01-27 22:18:40', '2012-05-15 18:08:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (63, 'F', '1992-10-06', 'Wisokybury', 'Ukraine', 52, '2013-09-17 07:20:56', '2016-11-28 14:43:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (64, 'M', '1990-08-03', 'New Germaineberg', 'Indonesia', 50, '2013-09-16 17:22:00', '2014-10-27 01:43:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (65, 'F', '1980-11-18', 'Lednerland', 'Anguilla', 35, '2018-01-16 19:38:28', '2017-04-19 19:47:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (66, 'M', '1995-08-21', 'East Marcusmouth', 'Cook Islands', 51, '2011-04-03 16:00:07', '2019-04-15 20:54:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (67, 'M', '2000-03-21', 'West Newton', 'Burundi', 49, '2018-05-27 03:36:51', '2017-04-21 08:13:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (68, 'F', '2003-11-09', 'East Enrico', 'Honduras', 44, '2018-07-21 12:14:53', '2020-03-30 16:55:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (69, 'F', '1980-07-31', 'Kearashire', 'Faroe Islands', 10, '2019-09-21 22:19:54', '2016-05-22 05:14:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (70, 'M', '2015-01-04', 'Port Hazelstad', 'Finland', 94, '2017-12-10 17:26:31', '2014-09-27 00:05:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (71, 'F', '1997-11-27', 'New Edgardo', 'Antigua and Barbuda', 10, '2014-04-13 16:59:33', '2016-11-14 22:10:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (72, 'F', '1989-01-13', 'Lake Alveramouth', 'Slovakia (Slovak Republic)', 25, '2010-06-20 19:19:16', '2014-05-26 00:53:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (73, 'M', '1971-11-20', 'Queeniechester', 'Somalia', 14, '2013-02-13 04:16:15', '2016-02-02 15:36:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (74, 'M', '2001-01-01', 'Ratkemouth', 'Micronesia', 12, '2017-06-27 06:10:12', '2010-05-27 18:48:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (75, 'F', '1977-01-18', 'West Roxane', 'Austria', 89, '2013-04-19 11:41:55', '2017-01-14 09:10:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (76, 'F', '1986-01-06', 'Lake Savannahmouth', 'Bouvet Island (Bouvetoya)', 5, '2018-11-10 10:39:46', '2014-01-13 02:59:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (77, 'F', '1993-01-30', 'Haylieland', 'Taiwan', 36, '2015-07-22 12:19:57', '2013-05-08 05:34:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (78, 'M', '1990-08-17', 'South Jimmieview', 'Vanuatu', 80, '2010-11-18 13:09:13', '2020-03-09 17:24:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (79, 'F', '2007-12-10', 'West Ileneland', 'Estonia', 18, '2018-07-21 19:26:03', '2013-07-31 14:19:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (80, 'F', '1991-02-19', 'South Alejandrin', 'South Georgia and the South Sandwich Islands', 99, '2010-04-12 22:44:51', '2015-09-23 12:53:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (81, 'F', '1991-07-28', 'Jaimefort', 'Cape Verde', 65, '2017-08-23 16:57:27', '2018-06-17 17:33:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (82, 'M', '2018-08-05', 'Wolfhaven', 'Macao', 65, '2014-03-27 05:09:54', '2017-04-04 02:27:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (83, 'F', '1974-01-31', 'South Gardnerfurt', 'Cocos (Keeling) Islands', 41, '2015-07-22 08:19:05', '2010-11-28 02:33:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (84, 'F', '2005-11-21', 'Ratkeville', 'Jordan', 46, '2015-11-08 11:56:52', '2013-03-14 16:40:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (85, 'F', '1990-07-06', 'Port Bryce', 'Liberia', 51, '2013-12-09 00:53:46', '2018-10-20 09:33:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (86, 'F', '2011-06-15', 'North Lucyview', 'Tajikistan', 52, '2015-06-29 09:30:31', '2018-12-18 08:22:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (87, 'M', '2012-05-24', 'East Zellamouth', 'Aruba', 97, '2013-02-01 04:13:10', '2017-05-12 15:27:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (88, 'M', '2015-05-16', 'McGlynnville', 'Korea', 64, '2012-10-12 14:00:00', '2013-09-12 17:21:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (89, 'M', '2004-08-26', 'Ornberg', 'Timor-Leste', 6, '2014-12-31 05:03:30', '2012-10-26 08:48:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (90, 'M', '2009-01-02', 'Christianachester', 'Netherlands Antilles', 62, '2011-05-25 13:39:50', '2019-10-16 14:12:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (91, 'F', '1977-12-04', 'South Beau', 'Congo', 93, '2019-12-31 10:09:28', '2013-01-15 05:36:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (92, 'M', '1976-11-25', 'Lourdesberg', 'Grenada', 52, '2014-05-30 14:08:49', '2012-01-03 22:47:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (93, 'M', '2011-06-10', 'West Blake', 'Guernsey', 56, '2015-01-19 00:59:09', '2017-08-06 14:46:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (94, 'F', '2012-11-04', 'New Kian', 'Falkland Islands (Malvinas)', 16, '2019-09-18 12:52:41', '2015-03-23 21:18:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (95, 'M', '2007-09-23', 'Leannonchester', 'Tajikistan', 61, '2016-10-31 23:49:56', '2015-04-30 17:16:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (96, 'F', '2010-11-04', 'Garrickstad', 'Saint Pierre and Miquelon', 64, '2016-03-03 22:08:25', '2011-03-30 03:09:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (97, 'F', '1983-01-02', 'Lake Eldon', 'Montserrat', 73, '2013-12-15 22:15:15', '2014-11-01 03:28:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (98, 'M', '2012-06-09', 'Sauerville', 'Jordan', 94, '2012-04-25 01:27:21', '2019-12-03 18:09:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (99, 'F', '2003-11-17', 'East Ola', 'Holy See (Vatican City State)', 24, '2020-01-18 18:37:19', '2016-06-05 09:37:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (100, 'M', '1978-06-03', 'Lake Ignatiusmouth', 'Armenia', 27, '2011-04-28 04:08:57', '2019-03-06 13:18:38');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Reilly', 'Flatley', 'schulist.ewald@hotmail.com', '(994)925-5786x81952', '2011-06-19 09:40:30', '2011-07-08 16:03:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Beverly', 'O\'Reilly', 'rmurphy@yahoo.com', '793-170-5617x690', '2020-01-16 00:34:37', '2011-02-18 13:08:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Alexandrea', 'Gleichner', 'parisian.raphael@yahoo.com', '365.216.8235x5693', '2010-06-13 10:43:35', '2016-11-05 21:29:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Helga', 'Fritsch', 'haley81@gmail.com', '637-455-0878', '2012-10-30 11:49:12', '2018-03-25 13:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Anita', 'Kemmer', 'talon.johnson@hotmail.com', '(375)061-3167x11598', '2018-09-29 10:47:24', '2015-11-30 15:54:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Dashawn', 'Dooley', 'erdman.chaya@hotmail.com', '565-855-6946x7773', '2017-08-26 19:41:49', '2018-01-09 15:54:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Reagan', 'Jacobs', 'hermann.tia@yahoo.com', '1-552-777-3253', '2011-01-23 06:14:46', '2015-04-27 13:13:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Alek', 'Thiel', 'vlemke@yahoo.com', '(786)878-1858x1031', '2015-03-16 06:35:33', '2016-09-11 14:46:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Jerome', 'Ritchie', 'spinka.wade@hotmail.com', '+40(5)0779432655', '2013-03-16 20:46:32', '2010-12-26 07:12:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Robert', 'Lebsack', 'kstrosin@yahoo.com', '789-656-5707', '2013-06-25 19:54:31', '2012-04-22 09:10:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Lucio', 'Ruecker', 'kuvalis.aletha@hotmail.com', '+42(4)1708967711', '2014-01-19 06:49:59', '2012-03-04 15:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Retha', 'Doyle', 'gaetano75@gmail.com', '(317)253-5267x2860', '2020-01-25 15:32:49', '2016-03-15 00:03:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Jade', 'Stoltenberg', 'tremblay.ethelyn@hotmail.com', '(733)427-8850x811', '2019-07-07 19:34:08', '2015-05-18 00:56:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Onie', 'Keebler', 'bode.eugene@gmail.com', '1-890-606-2552', '2011-06-17 09:06:29', '2012-11-12 16:20:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Alysha', 'Lebsack', 'akertzmann@yahoo.com', '1-789-572-4932', '2014-04-06 15:46:36', '2017-05-28 22:55:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Myriam', 'Pfeffer', 'cdonnelly@hotmail.com', '770.926.7553', '2018-02-27 08:51:59', '2015-06-30 13:35:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Constantin', 'Kautzer', 'ferry.elinore@hotmail.com', '125-395-0081x0567', '2020-01-17 07:34:14', '2017-07-23 07:19:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Brooklyn', 'Kiehn', 'tyshawn.gusikowski@yahoo.com', '299-295-5180', '2010-10-02 07:51:57', '2017-08-28 19:23:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Hilbert', 'Brown', 'rowland.halvorson@hotmail.com', '437-629-4482x855', '2011-11-26 22:09:52', '2012-03-05 14:10:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Oran', 'Collier', 'albina.abernathy@gmail.com', '103.493.4837x482', '2011-04-13 19:09:17', '2015-01-28 23:36:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Roxanne', 'Kessler', 'ziemann.larissa@yahoo.com', '(058)754-5949x558', '2016-07-29 15:50:14', '2011-11-14 08:46:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Presley', 'Beatty', 'katelyn04@gmail.com', '1-975-470-0735x54854', '2012-07-13 11:47:22', '2011-05-24 18:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Angelita', 'Schiller', 'hassie73@hotmail.com', '451.873.2344x34822', '2015-02-17 06:40:12', '2014-07-18 13:24:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Fleta', 'King', 'owaelchi@gmail.com', '(273)318-4719x75399', '2014-05-18 01:37:49', '2010-11-09 04:56:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Dulce', 'Crona', 'rowe.tatyana@hotmail.com', '00983033706', '2015-04-24 23:57:33', '2020-01-09 05:28:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Deangelo', 'Cummerata', 'o\'keefe.camilla@gmail.com', '145-335-6411', '2015-09-06 19:43:41', '2014-04-21 23:48:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Janice', 'Gerhold', 'hlakin@hotmail.com', '1-360-667-3856', '2016-12-24 19:46:13', '2012-05-18 15:39:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Burley', 'Wisoky', 'antone.kutch@hotmail.com', '1-523-612-7858', '2015-05-02 02:36:11', '2010-06-08 03:41:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Jakayla', 'Beer', 'christian59@gmail.com', '651-642-5794x1349', '2011-05-10 13:40:20', '2011-05-03 07:45:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Mary', 'Ledner', 'vkozey@hotmail.com', '1-527-439-7687', '2015-04-11 12:56:48', '2015-05-13 15:40:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Herman', 'Dickinson', 'kozey.carey@yahoo.com', '(983)654-1946x05340', '2016-02-21 06:13:11', '2010-07-09 13:43:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Norma', 'Lockman', 'rashad08@yahoo.com', '819.106.0588', '2013-04-26 05:17:36', '2015-03-25 16:02:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Ervin', 'Rosenbaum', 'berniece.conroy@gmail.com', '1-209-690-1982x7022', '2015-07-30 06:32:49', '2018-10-08 04:13:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Rahsaan', 'Doyle', 'ldonnelly@hotmail.com', '(781)386-3473', '2017-07-04 01:32:54', '2014-10-26 07:30:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Adolf', 'Kemmer', 'barney.rutherford@gmail.com', '921-683-1756', '2011-01-10 20:44:26', '2018-03-16 13:29:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Marina', 'Gleason', 'gerlach.toby@gmail.com', '(182)461-5990x334', '2019-08-03 19:01:23', '2010-06-21 18:02:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Theo', 'Conn', 'haley.eli@hotmail.com', '483-207-1820', '2015-10-21 07:39:43', '2020-01-06 16:33:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Rogelio', 'Gerlach', 'berenice.kerluke@gmail.com', '281-676-2063x4369', '2015-03-30 19:33:59', '2012-07-26 03:48:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ettie', 'Rowe', 'boehm.armani@gmail.com', '(150)815-9816', '2018-02-01 15:32:36', '2014-08-17 03:19:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Amelia', 'Larkin', 'gyundt@yahoo.com', '(906)648-6942', '2014-07-13 00:31:39', '2016-03-19 17:16:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Mittie', 'Cummerata', 'shaina.stanton@hotmail.com', '844-237-8341x616', '2013-03-11 03:54:18', '2014-06-29 08:53:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Brooke', 'Homenick', 'pamela85@hotmail.com', '1-075-632-8988x952', '2016-12-15 19:15:29', '2018-06-20 16:50:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Will', 'Schmitt', 'ratke.christelle@gmail.com', '1-205-295-9336x456', '2013-06-29 13:07:18', '2011-01-25 12:24:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Rebeka', 'Kuphal', 'stracke.tyreek@yahoo.com', '808.712.4424x8872', '2010-06-28 20:03:15', '2016-08-19 19:32:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Terrance', 'Ebert', 'bailey99@gmail.com', '(757)929-3170x94828', '2020-02-24 10:05:28', '2015-03-11 02:14:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Mia', 'Lakin', 'mitchell.dillan@hotmail.com', '1-044-083-6686', '2011-12-20 05:25:19', '2017-09-20 23:34:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Modesta', 'Simonis', 'eo\'connell@gmail.com', '1-353-575-6017x48156', '2010-12-16 01:10:07', '2010-07-05 12:49:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Korbin', 'O\'Conner', 'verla.botsford@yahoo.com', '878-106-0594', '2020-01-10 02:21:32', '2014-02-17 11:37:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Reuben', 'Bins', 'phodkiewicz@yahoo.com', '676.945.8800', '2017-07-08 16:47:06', '2010-11-07 01:55:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Mohammad', 'Corkery', 'imogene.schamberger@hotmail.com', '1-559-585-3798x53121', '2018-12-31 05:52:55', '2019-03-16 02:01:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Furman', 'Turner', 'berneice87@hotmail.com', '(799)663-9828x684', '2012-09-19 10:13:01', '2012-03-26 21:33:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Brooks', 'Johns', 'heathcote.hiram@hotmail.com', '1-587-027-1330', '2011-03-11 12:09:18', '2017-01-14 14:17:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Magnus', 'Bartell', 'kunze.lela@yahoo.com', '965-318-5152x78355', '2019-12-06 02:45:01', '2012-12-26 12:57:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Tina', 'Olson', 'wintheiser.loyal@gmail.com', '+26(9)7318451481', '2019-01-16 17:46:13', '2019-05-07 15:17:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Rae', 'Haag', 'bertrand.ritchie@hotmail.com', '(910)308-8320x26945', '2017-07-02 22:03:22', '2015-08-11 16:55:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Zachery', 'Crooks', 'wyatt.bergnaum@hotmail.com', '895-379-5563', '2018-04-01 09:27:06', '2018-11-16 04:06:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Roscoe', 'Abernathy', 'bchristiansen@gmail.com', '287.730.5993x7490', '2012-11-20 12:15:33', '2014-12-27 18:49:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Vickie', 'Osinski', 'helena31@hotmail.com', '1-730-584-8567', '2012-09-28 17:40:04', '2018-06-07 06:45:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'May', 'Gislason', 'juston85@hotmail.com', '(044)215-9323x2170', '2014-08-17 05:47:02', '2016-02-09 02:59:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Myles', 'Friesen', 'frami.jan@gmail.com', '295.236.7849x8607', '2013-10-19 11:20:30', '2017-01-16 20:33:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Juvenal', 'Deckow', 'otha.howell@yahoo.com', '011.974.0645x614', '2014-11-28 05:24:45', '2018-09-24 07:19:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Arlie', 'Terry', 'aniyah58@hotmail.com', '318-517-9760x4228', '2013-06-13 19:03:29', '2013-07-06 15:19:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Hester', 'Abshire', 'khammes@gmail.com', '404.442.7602', '2016-05-21 04:42:41', '2012-06-25 17:23:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'August', 'O\'Conner', 'volkman.tremayne@gmail.com', '1-915-300-3725', '2017-04-30 11:17:36', '2015-06-20 08:31:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Kenton', 'Cassin', 'gerardo96@hotmail.com', '346-083-6122', '2016-03-08 18:23:46', '2011-10-09 03:36:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Mafalda', 'Spinka', 'kunde.martin@yahoo.com', '242.446.0435x337', '2012-03-12 04:54:10', '2019-12-17 15:02:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Carey', 'Willms', 'elinor20@yahoo.com', '766-025-6138x68155', '2011-07-21 04:26:55', '2019-06-06 21:26:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Cristopher', 'Kris', 'claire18@gmail.com', '06403551412', '2015-10-03 06:19:12', '2016-06-24 20:22:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Miracle', 'Herzog', 'johnson.jerrell@yahoo.com', '1-576-251-1174x285', '2016-01-31 18:03:44', '2012-04-30 00:01:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Rosanna', 'Kutch', 'renner.wendy@hotmail.com', '077.283.3915', '2019-07-23 15:38:06', '2019-09-24 09:05:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Elise', 'Stanton', 'odie.becker@hotmail.com', '(422)114-9272x87708', '2019-02-03 09:57:20', '2015-11-09 18:29:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Christy', 'Koepp', 'xcorkery@gmail.com', '141.006.9130x16852', '2016-04-16 07:50:39', '2018-03-10 20:00:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Jabari', 'Farrell', 'arnulfo88@gmail.com', '618-609-3489x06159', '2011-10-16 21:03:06', '2016-08-13 00:59:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Joanny', 'Bradtke', 'troy51@hotmail.com', '374-311-7211x365', '2010-05-01 19:27:18', '2015-07-06 04:43:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Emmanuelle', 'Cartwright', 'jast.maudie@gmail.com', '1-490-120-0992', '2015-01-26 12:34:57', '2013-03-21 22:35:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Elliott', 'Weimann', 'ed74@gmail.com', '(669)829-8556', '2012-01-27 02:07:25', '2014-07-06 07:41:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Micheal', 'Anderson', 'gladyce48@gmail.com', '617.298.4651x43051', '2015-10-18 15:30:57', '2012-08-10 02:46:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Solon', 'Weissnat', 'prohaska.syble@yahoo.com', '384.192.6587', '2016-09-20 03:08:35', '2011-10-18 21:40:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Dee', 'Gerlach', 'addison31@gmail.com', '(124)001-9311x58808', '2018-10-05 15:15:45', '2013-03-29 23:22:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Lesley', 'Harber', 'jones.arch@gmail.com', '480.447.1377x89084', '2012-07-08 22:53:58', '2015-06-22 18:45:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Rosalyn', 'Konopelski', 'gschmeler@hotmail.com', '083.393.3577', '2017-07-14 14:02:17', '2017-12-23 15:06:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Margot', 'Thiel', 'lorenzo.deckow@gmail.com', '694-448-8806x34452', '2015-04-16 13:38:19', '2010-10-05 08:12:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Alexanne', 'Stracke', 'franecki.zander@gmail.com', '1-005-263-1073', '2014-07-27 08:39:51', '2017-12-13 18:52:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Wilfred', 'McGlynn', 'bettye.davis@gmail.com', '875-956-0017x06237', '2017-09-04 03:35:10', '2011-09-04 07:15:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Fanny', 'Rice', 'lueilwitz.marshall@gmail.com', '(395)281-1491x081', '2014-11-17 21:03:14', '2014-07-13 03:31:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Bradley', 'Weimann', 'lester.daniel@hotmail.com', '873-728-5848x31026', '2018-07-09 05:11:45', '2012-06-27 06:25:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Carter', 'Kreiger', 'rodriguez.quincy@gmail.com', '1-018-972-4282', '2016-11-17 23:35:24', '2016-08-06 09:38:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Shane', 'Adams', 'kmosciski@yahoo.com', '788.621.2476x0314', '2012-04-05 22:23:09', '2014-08-24 14:17:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Martina', 'Hand', 'corkery.theodore@gmail.com', '1-694-506-9164', '2018-01-15 01:52:23', '2018-10-27 23:23:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Cornelius', 'Tromp', 'johnnie.walter@yahoo.com', '117-025-7319x719', '2012-01-13 04:36:00', '2012-11-12 11:03:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Beatrice', 'Gutmann', 'paula.rutherford@hotmail.com', '999.490.4004x25408', '2011-04-17 16:09:03', '2011-10-27 21:29:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Deshawn', 'Willms', 'fgrimes@gmail.com', '1-335-441-9782', '2011-11-12 11:04:31', '2014-05-07 17:44:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Germaine', 'Kuphal', 'christina91@yahoo.com', '505-887-3363x664', '2014-06-02 04:03:59', '2019-06-01 17:26:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Jarred', 'Bogisich', 'sienna34@hotmail.com', '1-902-705-4568x1804', '2013-08-28 01:49:25', '2014-03-05 06:22:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Maybell', 'Okuneva', 'nwiza@gmail.com', '1-143-396-7042x268', '2017-03-01 13:42:50', '2018-03-23 06:22:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Myrl', 'Strosin', 'irwin.murray@yahoo.com', '477-385-3463', '2010-09-08 18:42:40', '2016-01-11 22:32:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Audrey', 'Heidenreich', 'monte.kshlerin@hotmail.com', '(994)001-8660', '2011-06-20 12:34:28', '2015-01-05 15:26:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Isadore', 'Haley', 'orrin57@gmail.com', '1-563-126-0063', '2019-02-01 15:07:51', '2018-03-29 18:25:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Rogelio', 'Aufderhar', 'bruen.scarlett@hotmail.com', '(664)533-2520', '2015-11-03 20:58:44', '2012-02-15 19:01:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Jovanny', 'Emmerich', 'brakus.helmer@hotmail.com', '(623)226-0603', '2015-04-01 11:13:26', '2015-01-25 07:41:32');


