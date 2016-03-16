-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 16 2016 г., 01:42
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
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `content`) VALUES
(1, 'Apple', 'All Apple''s products'),
(2, 'Samsung', 'All Samsung''s products'),
(3, 'HTS', 'All HTS''s products'),
(4, 'Microsoft', 'All Microsoft''s products');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `discussions` int(11) NOT NULL,
  `postby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(83, 'name 1', 'title 1', 'description 1', '2016-03-13 03:00:16', 1, 1),
(84, 'name 2', 'title 2', 'description 2', '2016-03-13 03:00:31', 1, 1),
(85, 'name 3', 'title 3', 'description 3', '2016-03-13 03:00:52', 2, 1),
(86, 'name 4', 'title 4', 'description 4', '2016-03-13 03:01:07', 3, 1),
(87, 'name 5', 'title 5', 'description 5', '2016-03-13 12:19:07', 1, 1),
(88, 'name 6', 'title 6', 'description 6', '2016-03-13 12:20:16', 2, 1);

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
(1, 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet. Repudiandae sint et expedita distinctio est laborum et aut officiis debitis. Eum fugiat, quo voluptas nulla vero eos et harum quidem. Harum quidem rerum facilis est eligendi. Optio, cumque nihil molestiae consequatur, vel illum, qui. Quos dolores eos, qui ratione. Autem vel eum iure reprehenderit, qui in ea voluptate. Impedit, quo voluptas assumenda est, qui blanditiis praesentium voluptatum deleniti atque corrupti.\r\n\r\nCulpa, qui perspiciatis, unde omnis. Quia dolor repellendus adipisci velit. Molestiae non numquam eius modi. Temporibus autem quibusdam et dolore magnam aliquam quaerat. Quidem rerum hic tenetur a sapiente delectus, ut. Est laborum et dolore magnam aliquam quaerat voluptatem sequi nesciunt neque. Iusto odio dignissimos ducimus, qui dolorem eum iure reprehenderit, qui ratione voluptatem. Tempora incidunt, ut perspiciatis unde.\r\n\r\nCommodi autem quibusdam et molestiae consequatur. Harum quidem rerum facilis. Saepe eveniet, ut perspiciatis, unde omnis dolor repellendus dignissimos ducimus, qui blanditiis. Natus error sit voluptatem sequi nesciunt neque. Sequi nesciunt, neque porro quisquam est, qui in culpa, qui dolorem. Ipsum, quia voluptas sit aspernatur. Iure reprehenderit, qui ratione voluptatem sequi nesciunt, neque porro. Eos, qui in ea voluptate velit esse quam.', 1),
(2, 'Reiciendis voluptatibus maiores alias consequatur.', 'Reiciendis voluptatibus maiores alias consequatur.', 'Odit aut perferendis doloribus asperiores repellat. in culpa, qui dolorem ipsum quia. Minus id, quod maxime placeat. Velit esse, quam nihil molestiae non provident similique. Atque corrupti, quos dolores eos, qui blanditiis praesentium voluptatum deleniti atque. Quaerat voluptatem sequi nesciunt, neque porro quisquam. Aliquam quaerat voluptatem accusantium doloremque. Veritatis et dolorum fuga maxime. Nam libero tempore, cum soluta nobis est laborum et quasi.\r\n\r\nVoluptates repudiandae sint et accusamus et quasi architecto beatae vitae. Numquam eius modi tempora incidunt. Aliquam quaerat voluptatem sequi nesciunt, neque porro quisquam est omnis. Eos et dolore magnam aliquam quaerat voluptatem. Iure reprehenderit, qui in culpa, qui blanditiis. Numquam eius modi tempora incidunt. Laudantium, totam rem aperiam eaque ipsa, quae ab illo. Labore et expedita distinctio ea commodi autem quibusdam.\r\n\r\nDeserunt mollitia animi, id est laborum et expedita distinctio. Exercitationem ullam corporis suscipit laboriosam. Odio dignissimos ducimus, qui blanditiis praesentium. Sunt, explicabo maiores alias consequatur. In ea commodi autem vel eum fugiat, quo minus id, quod maxime. Eius modi tempora incidunt, ut labore et iusto odio dignissimos ducimus. Asperiores repellat. consectetur, adipisci velit, sed ut. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil.', 1),
(3, 'Minus id, quod maxime placeat.', 'Minus id, quod maxime placeat.', 'Lorem ipsum dolor sit amet. Eligendi optio, cumque nihil molestiae. Nisi ut et accusamus et expedita distinctio. Error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa. Doloribus asperiores repellat. eius modi tempora incidunt, ut. Laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore. Commodi autem quibusdam et harum quidem rerum hic tenetur. Facilis est eligendi optio, cumque nihil impedit, quo minus.\r\n\r\nAliquid ex ea commodi autem quibusdam et aut odit aut reiciendis. Dolorem ipsum, quia dolor repellendus quia voluptas sit, aspernatur. Voluptates repudiandae sint et iusto odio dignissimos ducimus, qui in ea voluptate. Quidem rerum necessitatibus saepe eveniet, ut aut odit. Ducimus, qui officiis debitis aut perferendis doloribus. Voluptatem, quia consequuntur magni dolores et dolorum fuga molestiae. Architecto beatae vitae dicta sunt, explicabo voluptate velit esse.\r\n\r\nFugit, sed ut et accusamus et expedita distinctio eaque ipsa quae. Molestias excepturi sint, obcaecati cupiditate non provident similique. Id est et quasi architecto beatae. Temporibus autem vel illum, qui in culpa, qui blanditiis praesentium voluptatum deleniti. Ipsa, quae ab illo inventore veritatis et accusamus. Tenetur a sapiente delectus, ut perspiciatis, unde omnis iste natus. Corrupti, quos dolores eos, qui dolorem ipsum quia.', 1);

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
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `vk` char(40) NOT NULL,
  `facebook` char(40) NOT NULL,
  `date` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `role`, `password`, `is_active`, `nickname`, `name`, `phone`, `vk`, `facebook`, `date`, `avatar`) VALUES
(1, 'admin', 'gudvon@gmail.com', 'admin', '48fb7b7996311a895502e77e9db97e1f', 1, '', '', '', '', '', NULL, NULL),
(2, 'user', 'user@mail', 'user', 'ee9812d1d42b18ea07f5887e969de1af', 1, 'userman', 'user', '1234567890', 'id3453452324', 'id67544', NULL, '/views/profiles/avatars/2.jpg'),
(3, 'user2', 'user2@mail', 'user', '0073c7c57f5bb6a7e8b9610f7c541a35', 1, 'userman2', 'user2', '0987654321', 'id562115673', 'id2522stw3535', NULL, NULL),
(4, 'dasha', 'darja-b@ukr.net', 'user', 'f45fb5f812f1113c2f9089efd7496203', 1, '', '', '', '', '', NULL, NULL),
(5, 'user3', 'user3@mail', 'user', '4d54276ea258cbe84653d4d55d778067', 1, '', '', '', '', '', NULL, NULL),
(6, 'user4', 'user4@mail', 'user', '114385db9b3692a64f11cfce073bf51c', 1, '', '', '', '', '', '0000-00-00 00:00:00', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
