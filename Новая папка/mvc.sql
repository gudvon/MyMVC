-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 22 2016 г., 00:49
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `content`, `avatar`) VALUES
(1, 'Apple', 'All Apple''s products', NULL),
(2, 'Samsung', 'All Samsung''s products', NULL),
(3, 'HTS', 'All HTS''s products', NULL),
(4, 'Microsoft', 'All Microsoft''s products', NULL),
(5, 'FLUD FOR ALL', 'Testing this forum', '/webroot/img/forum_avatars/twit.png'),
(8, 'test Category ', 'test description', '/webroot/img/forum_avatars/roadblock.png');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `content`, `date`, `discussion_id`, `user_id`) VALUES
(15, 'Comments user 1', '2016-03-18 19:25:33', 1, 2),
(16, 'Comments user 02', '2016-03-18 19:26:00', 1, 3),
(17, 'Food is my passion. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:07', 1, 3),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:15', 1, 3),
(19, 'Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-18 19:27:06', 1, 2),
(20, 'I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-19 00:14:09', 1, 3),
(21, 'Me too! WOW!', '2016-03-19 00:14:22', 1, 5),
(22, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-19 03:00:10', 1, 2),
(23, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2016-03-19 03:01:42', 1, 5),
(44, 'Qweerty', '2016-03-19 20:39:09', 2, 2),
(45, 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-20 00:36:35', 5, 5),
(46, 'Normal Announcement. You can see the icon status in the main topic list. The sky is blue as the grass is Green!!!!!!!!!!!', '2016-03-20 00:36:53', 7, 3),
(49, 'and i have problems whith avatars from last time)', '2016-03-20 02:04:49', 1, 2),
(53, 'Ð½Ð°Ñ„Ð¸Ð³ Ð¿Ð¸Ð»Ð¸Ñ‚ÑŒ ÐºÐ°ÐºÐ¾Ð¹Ñ‚Ð¾ Ñ‚Ð°Ð¼ Ð°Ð»Ð¸Ð°Ñ ÐµÑÐ»Ð¸ Ñ‚Ñ‹ ÐµÐ³Ð¾ Ð½Ðµ Ð²Ñ‹Ð²Ð¾Ð´Ð¸ÑˆÑŒ ÐµÐ¿Ñ‚', '2016-03-20 02:15:19', 92, 8),
(54, 'Bug about registration no redirect\r\nAnother bug about litle avatar at the top panel', '2016-03-20 02:15:25', 91, 2),
(55, 'Ð¸ ÐºÐ°ÐºÐ¾Ð¹ Ð½Ð°Ñ… ÐµÑ‰Ðµ Ð»Ð¾Ñ€ÐµÐ¼ Ð² Ð·ÐµÐ»ÐµÐ½Ð¾Ðµ Ð¿Ð¾ÐµÐ±Ð¾Ñ‚Ðµ', '2016-03-20 02:15:45', 92, 8),
(57, 'Ð´Ð° Ñ‚Ð¾ Ð·Ð°Ð±ÐµÐ¹ - Ð±ÑƒÐ´Ñƒ ÑƒÐ±Ð¸Ñ€Ð°Ñ‚ÑŒ\r\nÐ° Ñ Ð¿Ð¾Ð»ÑÐ¼Ð¸ Ð½Ðµ Ð¿Ð¾Ð½ÑÐ» - Ñƒ Ð¼ÐµÐ½Ñ Ð²ÑÐµ Ð¾Ðº', '2016-03-20 02:16:17', 92, 2),
(58, 'ÐžÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚ÑÑ Ñ€ÑƒÑ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚)', '2016-03-20 02:16:53', 91, 2),
(59, 'Ð¸ Ð½Ð¸Ðº ÑÐ²Ð¾Ð¹ Ð¿Ð¾ÑÑ‚Ð°Ð²ÑŒ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ - Ð½Ðµ Ð²Ð¸Ð´Ð½Ð¾ Ð¶ ÐºÑ‚Ð¾ Ð¿Ð¸ÑˆÐµÑ‚', '2016-03-20 02:17:20', 92, 2),
(60, 'ÐºÑÑ‚Ð°Ñ‚Ð¸ Ð´Ð° - Ð¿Ð¾ Ð´ÐµÑ„Ð¾Ð»Ñ‚Ñƒ Ð½Ð°Ð´Ð¾ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð¸Ðº ÑŽÐ·ÐµÑ€Ð°', '2016-03-20 02:18:03', 92, 2),
(64, 'fghrtyrtyryr', '2016-03-20 17:59:14', 91, 5),
(65, 'ghjghjghjghj', '2016-03-20 18:00:27', 2, 5),
(66, 'fghfghfghf', '2016-03-20 18:00:41', 2, 5),
(73, 'Ñ‹Ð¿Ñ€Ð°Ñ€Ð°Ð¿Ñ€Ð°Ð¿Ð¿Ð¸Ð°Ð¸', '2016-03-20 20:41:31', 1, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `date` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `discussions`
--

INSERT INTO `discussions` (`id`, `alias`, `title`, `content`, `date`, `category_id`, `user_id`) VALUES
(1, 'alias  alias  alias', 'THIS IS A STICKY TOPIC - NOTE THE FONT ICON STATUS ;-)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-13 03:00:16', 1, 2),
(2, 'alias  alias  alias', 'DEFAULT BBCODES EXAMPLES - MORE CUSTOM BBCODES AVAILABLE', '"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."', '2016-03-13 03:00:31', 1, 3),
(3, 'name 3', 'title 3', 'description 3', '2016-03-13 03:00:52', 2, 1),
(4, 'name 4', 'title 4', 'description 4', '2016-03-13 03:01:07', 3, 1),
(5, 'alias  alias  alias', 'RESPONSIVE IMAGES - RESIZED AUTOMATICALLY', 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-13 12:19:07', 1, 3),
(6, 'name 6', 'title 6', 'description 6', '2016-03-13 12:20:16', 2, 1),
(7, 'alias  alias  alias', 'NORMAL ANNOUNCEMENT EXAMPLE - NOTE THE FONT ICON STATUS', 'Normal Announcement. You can see the icon status in the main topic list.\r\nThe sky is blue as the grass is\r\nGreen!!!!!!!!!!!', '2016-03-19 18:34:24', 1, 5),
(91, 'Bugs', 'Bugs', 'Forum Bugs and Errors', '2016-03-20 02:12:32', 5, 2),
(92, 'Ð° Ñ Ñ„Ð¸Ð³Ð»Ð¸ Ð¾Ð½Ð¾ Ð¾Ñ‚Ð´ÐµÐ»ÑŒÐ½Ð¾ Ñ‚Ð¾', 'Ð´Ð° Ñ‚Ñ‹ Ð±Ð¾Ð»ÐµÐ½ Ñ‚Ð°ÐºÐ¸Ðµ Ð¿Ð¾Ð»Ñ Ð¿Ð¸Ð»Ð¸Ñ‚ÑŒ', 'Ñ Ñƒ Ð¼Ð°Ð¼Ñ‹ ÑÐ¾Ð»Ð½Ñ‹ÑˆÐºÐ¾, Ð° Ñ‚Ñ‹ - Ð½ÐµÑ‚', '2016-03-20 02:14:44', 5, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'Test 1', 'Test@test.mail.com', 'Test message.');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `alias` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `is_published` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `alias`, `title`, `content`, `is_published`) VALUES
(1, 'Ver. 2 (19.03)', 'Ver. 2 (19.03)', 'Ver. 2 (19.03) ---Ñ€ÐµÐ»Ð¸Ð· Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ð¸ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°', 1),
(3, 'Bug report Ver. 2.4 (1.0) (20.03)', 'Bug report Ver. 2.4 (1.0) (20.03)', 'Ver. 2.4 (1.0)\r\n---Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);  \r\n---Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;  \r\n---Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;  \r\n', 1),
(4, 'Ver. 2.4.1 (1.0.1) (21.03)', 'Ver. 2.4.1 (1.0.1) (21.03)', 'Ver. 2.4.1 (1.0.1)\r\n+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);  \r\n+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;  \r\n+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;  \r\n+++ÐºÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ\r\n+++Ð³Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½))\r\n+++ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ\r\n+++Ð¿Ð¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us\r\n+++Ñ„Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°', 1),
(6, 'Ver. 2.4.2 (1.0.2) (22.03)', 'Ver. 2.4.2 (1.0.2) (22.03)', 'Ver. 2.4.2 (1.0.2) +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ +++Ð´Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸ +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ) +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ… +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ Ð¸ ÐºÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ +++Ð²Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `login` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'admin',
  `password` char(32) NOT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT '1',
  `nickname` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `vk` char(40) NOT NULL,
  `facebook` char(40) NOT NULL,
  `date` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `role`, `password`, `is_active`, `nickname`, `name`, `phone`, `vk`, `facebook`, `date`, `avatar`) VALUES
(1, 'admin', 'gudvon@gmail.com', 'admin', '48fb7b7996311a895502e77e9db97e1f', 1, 'Administrator', 'Kirill', '0934356043', 'vk.com/is4ibertay', 'facebook.com/id15275601', NULL, NULL),
(2, 'user', 'user@mail', 'user', 'ee9812d1d42b18ea07f5887e969de1af', 1, 'Test User', 'username', '1234567890', 'id3453452324', 'id67544', NULL, '/webroot/img/avatars/2.jpg'),
(3, 'user2', 'user2@mail', 'user', '0073c7c57f5bb6a7e8b9610f7c541a35', 1, 'Griwyn', 'Артём Адамович', '0987654321', 'id562115673', 'id2522stw3535', NULL, NULL),
(4, 'dasha', 'darja-b@ukr.net', 'user', 'f45fb5f812f1113c2f9089efd7496203', 1, '', '', '', '', '', NULL, NULL),
(5, 'user3', 'user3@mail', 'user', '4d54276ea258cbe84653d4d55d778067', 1, 'Shaktir', '???? ?????????', '02543737543', '', '', NULL, '/webroot/img/avatars/5.jpg'),
(8, 'fff', 'fff', 'user', '55cfe64cb98a032938aa97478ae561cb', 1, 'ÐºÐ°ÐºÐ¾Ð³Ð¾ Ñ…ÐµÑ€Ð° Ñ‚ÑƒÑ‚ Ñ‚Ð°ÐºÐ°Ñ ', 'Ð½Ñƒ Ñ Ð¸Ð¼ÐµÐ½ÐµÐ¼ ÑÑÐ½Ð¾', '', '', '', NULL, '/webroot/img/avatars/8.jpg'),
(22, 'dashka', 'darja-b@ukr.net', 'user', 'f45fb5f812f1113c2f9089efd7496203', 1, 'dasha', 'dasha2', '123', '123', '123', NULL, '/webroot/img/avatars/22.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
