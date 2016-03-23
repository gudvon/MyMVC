-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 23 2016 г., 01:42
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
  `avatar` varchar(255) DEFAULT NULL,
  `topics_id` int(11) NOT NULL,
  `is_published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `content`, `avatar`, `topics_id`, `is_published`) VALUES
(1, 'Apple', 'All Apple''s products', '/webroot/img/forum_avatars/heart.png', 1, 1),
(4, 'Testing', 'WYSIWYG', '/webroot/img/forum_avatars/magicwand.png', 1, 1),
(8, 'All about site', 'All about site', '/webroot/img/forum_avatars/hazard.png', 2, 1),
(17, 'Secured Category ', 'Secured Category ', '/webroot/img/forum_avatars/unlocked.png', 6, 0);

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
(53, 'Ð½Ð°Ñ„Ð¸Ð³ Ð¿Ð¸Ð»Ð¸Ñ‚ÑŒ ÐºÐ°ÐºÐ¾Ð¹Ñ‚Ð¾ Ñ‚Ð°Ð¼ Ð°Ð»Ð¸Ð°Ñ ÐµÑÐ»Ð¸ Ñ‚Ñ‹ ÐµÐ³Ð¾ Ð½Ðµ Ð²Ñ‹Ð²Ð¾Ð´Ð¸ÑˆÑŒ ÐµÐ¿Ñ‚', '2016-03-20 02:15:19', 92, 8),
(55, 'Ð¸ ÐºÐ°ÐºÐ¾Ð¹ Ð½Ð°Ñ… ÐµÑ‰Ðµ Ð»Ð¾Ñ€ÐµÐ¼ Ð² Ð·ÐµÐ»ÐµÐ½Ð¾Ðµ Ð¿Ð¾ÐµÐ±Ð¾Ñ‚Ðµ', '2016-03-20 02:15:45', 92, 8),
(57, 'Ð´Ð° Ñ‚Ð¾ Ð·Ð°Ð±ÐµÐ¹ - Ð±ÑƒÐ´Ñƒ ÑƒÐ±Ð¸Ñ€Ð°Ñ‚ÑŒ\r\nÐ° Ñ Ð¿Ð¾Ð»ÑÐ¼Ð¸ Ð½Ðµ Ð¿Ð¾Ð½ÑÐ» - Ñƒ Ð¼ÐµÐ½Ñ Ð²ÑÐµ Ð¾Ðº', '2016-03-20 02:16:17', 92, 2),
(58, 'ÐžÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚ÑÑ Ñ€ÑƒÑ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚)', '2016-03-20 02:16:53', 91, 2),
(59, 'Ð¸ Ð½Ð¸Ðº ÑÐ²Ð¾Ð¹ Ð¿Ð¾ÑÑ‚Ð°Ð²ÑŒ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ - Ð½Ðµ Ð²Ð¸Ð´Ð½Ð¾ Ð¶ ÐºÑ‚Ð¾ Ð¿Ð¸ÑˆÐµÑ‚', '2016-03-20 02:17:20', 92, 2),
(60, 'ÐºÑÑ‚Ð°Ñ‚Ð¸ Ð´Ð° - Ð¿Ð¾ Ð´ÐµÑ„Ð¾Ð»Ñ‚Ñƒ Ð½Ð°Ð´Ð¾ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð¸Ðº ÑŽÐ·ÐµÑ€Ð°', '2016-03-20 02:18:03', 92, 2),
(64, 'fghrtyrtyryr', '2016-03-20 17:59:14', 91, 5),
(65, 'ghjghjghjghj', '2016-03-20 18:00:27', 2, 5),
(66, 'fghfghfghf', '2016-03-20 18:00:41', 2, 5),
(73, 'Ñ‹Ð¿Ñ€Ð°Ñ€Ð°Ð¿Ñ€Ð°Ð¿Ð¿Ð¸Ð°Ð¸', '2016-03-20 20:41:31', 1, 22),
(85, '<p>--- Bug --- Ð½Ðµ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÐµÐ² Ð¸ Ð´Ð¸ÑÐºÑƒccÐ¸Ð¹</p>', '2016-03-23 02:27:52', 105, 1),
(86, '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++ÐºÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð³Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½));</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð¿Ð¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ñ„Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°;</span></p>', '2016-03-23 02:28:43', 103, 1),
(87, '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ);</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ…;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð½Ð°Ð·Ð°Ð´;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð²Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°;</span></p>', '2016-03-23 02:29:14', 104, 1),
(88, '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð½Ð°Ñ‡Ð°Ð»Ð¾ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ Ð³Ð°Ð»ÐµÑ€ÐµÐ¸;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;</p>\r\n<p>&nbsp;</p>', '2016-03-23 02:29:31', 105, 1),
(90, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</strong></p>\r\n<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</em></p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ul>\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ol>\r\n<h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h1>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h2>\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h3>\r\n<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h4>\r\n<h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h5>\r\n<h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h6>\r\n<p><span style="text-decoration: underline;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><span style="text-decoration: line-through;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</code></p>\r\n<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br /><br /></pre>', '2016-03-23 02:37:17', 106, 1);

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
(5, 'alias  alias  alias', 'RESPONSIVE IMAGES - RESIZED AUTOMATICALLY', 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-13 12:19:07', 1, 3),
(7, 'alias  alias  alias', 'NORMAL ANNOUNCEMENT EXAMPLE - NOTE THE FONT ICON STATUS', 'Normal Announcement. You can see the icon status in the main topic list.\r\nThe sky is blue as the grass is\r\nGreen!!!!!!!!!!!', '2016-03-19 18:34:24', 1, 5),
(101, 'Ver. 2.3 (19.03)', 'Ver. 2.3 (19.03)', 'Ð ÐµÐ»Ð¸Ð· Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ð¸ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°', '2016-03-23 02:19:56', 8, 1),
(102, 'Bug report Ver. 2.4 (1.0) (20.03)', 'Bug report Ver. 2.4 (1.0) (20.03)', '--- Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);  \r\n--- Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;  \r\n--- Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;  \r\n\r\n', '2016-03-23 02:20:33', 8, 1),
(103, 'Ver. 2.4.1 (1.0.1) (21.03)', 'Ver. 2.4.1 (1.0.1) (21.03)', '+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);  \r\n+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;  \r\n+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;  \r\n+++ÐºÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ;\r\n+++Ð³Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½));\r\n+++ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ;\r\n+++Ð¿Ð¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us;\r\n+++Ñ„Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°;', '2016-03-23 02:21:11', 8, 1),
(104, 'Ver. 2.4.2 (1.0.2) (22.03)', 'Ver. 2.4.2 (1.0.2) (22.03)', '+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ; +++Ð´Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸; +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ); +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ…; +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ; +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð½Ð°Ð·Ð°Ð´; +++Ð²Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°;', '2016-03-23 02:22:12', 8, 1),
(105, 'Ver. 2.4.3 (1.0.3) (23.03)', 'Ver. 2.4.3 (1.0.3) (23.03)', '+++Ð½Ð°Ñ‡Ð°Ð»Ð¾ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ Ð³Ð°Ð»ÐµÑ€ÐµÐ¸;\r\n+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);\r\n+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);\r\n+++Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;\r\n+++Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;', '2016-03-23 02:27:41', 8, 1),
(106, 'WYSIWYG', 'WYSIWYG Test', 'WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€', '2016-03-23 02:31:34', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Testing WYSIWYG ', 'Testing WYSIWYG ', 'Forum --- First Topic --- Testing --- WYSIWYG Test ', 1),
(8, 'Site Development', 'Site Development', 'Forum --- Site Development --- All about site', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `alias`) VALUES
(1, 'First Topic', 'First Topic'),
(2, 'Site Development', 'Site Development'),
(6, 'Secured Topic', 'Secured Topic');

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
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
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
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
