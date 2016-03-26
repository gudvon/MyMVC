-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 26 2016 г., 03:12
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
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `category`, `title`, `photo`, `content`, `date`, `user_id`) VALUES
(11, '', 'Olympus E-PL1 + Canon 50mm F1.4 FD', '/webroot/img/blog/blog_photo/1_90225.jpg', '&lt;p&gt;The Olympus PEN E-PL1, announced on 3 February 2010[1] was Olympus Corporation&amp;rsquo;s third camera using the Micro Four Thirds system mount after the Olympus PEN E-P1 and Olympus PEN E-P2. It was the first camera in Olympus&amp;rsquo; &amp;ldquo;PEN Lite&amp;rdquo; line.&lt;span id=&quot;more-136&quot;&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h4&gt;Features&lt;/h4&gt;\r\n&lt;p&gt;The PEN E-PL1 is one of the lowest cost Micro Four Thirds cameras currently available, with a US dollar MSRP of $500.&lt;/p&gt;\r\n&lt;p&gt;In terms of market, DPReview considers the E-PL1 more aimed at the point-and-shoot (compact camera) market, rather than the DSLR market (like the E-P1 &amp;amp; E-P2) &amp;ndash; it is more of a large-sensor compact than a small format DSLR. The E-PL1 is easy to use in automatic mode, but due to the small number of dedicated dials and buttons, it can be more awkward to use in manual modes compared to a DSLR.&lt;/p&gt;\r\n&lt;p&gt;A slightly updated E-PL1s was introduced in November 2010. The E-PL1s offered increased maximum ISO sensitivity and shipped with a slightly higher capacity battery and an updated version of the kit 14-42mm lens.&lt;/p&gt;', '2016-03-26', 1),
(12, '', 'We have now begun our descent', '/webroot/img/blog/blog_photo/1_66357.jpg', '&lt;p&gt;Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam scelerisque dignissim rutrum. Duis sed eros ornare neque cursus tempor. Nullam non hendrerit erat. Nullam volutpat magna eget ante suscipit suscipit. Pellentesque condimentum massa a dui accumsan suscipit.&lt;span id=&quot;more-7&quot;&gt;&lt;/span&gt; Donec non nisl nisi, et iaculis purus. Nam laoreet orci sit amet mauris dictum dictum. Vivamus venenatis tempor tortor a molestie. Phasellus hendrerit, eros in congue pellentesque, nunc nunc fringilla lacus, ut congue nibh nisi in neque. Sed vulputate orci at metus congue laoreet. Suspendisse vitae quam ante, vitae ultrices ipsum. Curabitur consequat, diam vel rutrum viverra, diam velit faucibus odio, vel volutpat elit mi sed diam. Vivamus ut semper sem.&lt;/p&gt;\r\n&lt;p&gt;Nunc nibh sem, cursus a placerat eu, fermentum at ligula. Nulla facilisi. Cras lacus turpis, fermentum ultricies tristique vel, suscipit eu nisi. Vivamus luctus purus est, sed posuere lacus. Nunc lectus mi, hendrerit ut accumsan ut, porttitor sit amet orci. Nullam eget cursus metus. In sit amet orci vitae turpis consectetur aliquam commodo non sapien. Aenean ut tellus nec velit molestie faucibus sit amet in odio. Morbi at neque eget enim vehicula bibendum. Nullam eget lectus quis sem dapibus cursus vitae vulputate risus. Duis felis ante, facilisis non tristique at, commodo vel tellus. Aenean viverra venenatis sapien at feugiat. Donec hendrerit vehicula ligula id ullamcorper. Duis sollicitudin ornare pellentesque.&lt;/p&gt;', '2016-03-26', 1),
(13, '', 'From red wines, to white wines', '/webroot/img/blog/blog_photo/1_89410.jpg', '&lt;p&gt;Pellentesque turpis urna, dapibus ac iaculis venenatis, viverra sed velit. Nullam nec lacus arcu. Quisque vitae massa et justo pulvinar ultricies. Proin sit amet mollis tortor. Duis quis purus et diam commodo rhoncus ut eget est. Aliquam vitae libero vitae tortor sagittis tempor. Cras elementum libero ac metus eleifend bibendum. Nullam eget nunc tincidunt sem rhoncus malesuada et at lacus.&lt;span id=&quot;more-96&quot;&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Sed bibendum pharetra arcu. Proin feugiat ante id felis euismod a pharetra sem porttitor. Integer justo leo, tempor porta ornare feugiat, placerat at sapien. Aliquam consequat dignissim leo et fermentum. Mauris sagittis, lectus eget pharetra rhoncus, nisi nulla vulputate lorem, a molestie sapien sapien quis est. Nulla facilisi. Cras sollicitudin magna vel ipsum auctor eu mattis nisi imperdiet. Curabitur sit amet risus sapien. Nunc convallis rutrum velit sit amet vulputate. Etiam pharetra nunc ac lacus varius quis tincidunt leo cursus. Nunc porttitor quam tincidunt mi suscipit id lacinia elit ultricies. Phasellus non velit non sem accumsan egestas id quis urna.&lt;/p&gt;\r\n&lt;p&gt;Fusce massa elit, pharetra pellentesque porta ac, auctor ut justo. Vivamus vitae est nisl, et tincidunt nisi. Nunc aliquet sagittis nisi, sed auctor massa pellentesque sit amet. Maecenas bibendum vehicula leo vitae euismod. Nulla fermentum tortor non metus pretium laoreet. Duis aliquam scelerisque tortor id ornare. Nam mattis, felis vel rhoncus fermentum, libero dolor placerat massa, et pretium magna eros vel quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec turpis risus, ultrices eu luctus et, semper sed tortor. Pellentesque aliquam velit sed ante lacinia dictum. Donec vel eros enim, rutrum elementum leo.&lt;/p&gt;\r\n&lt;p&gt;Maecenas eget leo quam, vitae faucibus elit. Etiam a ipsum nec enim gravida lobortis. Aliquam pellentesque, est vitae condimentum tempus, lacus neque laoreet nibh, eget mattis nisl turpis vel purus. Morbi commodo volutpat mi, eget lacinia eros mattis quis. Nullam pellentesque adipiscing purus, non fermentum tortor feugiat ac. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus mattis elit ut sem viverra vitae mattis dolor adipiscing. Vivamus ut urna felis, in imperdiet libero. Aenean ut justo vel ante sollicitudin mollis vitae vel eros. Nulla urna odio, pulvinar in condimentum ac, blandit vitae ante. Donec a elit non lorem semper facilisis.&lt;/p&gt;', '2016-03-26', 1),
(14, '', 'A white Arabian mare galloping in her paddock.', '/webroot/img/blog/blog_photo/1_73034.jpg', '&lt;p&gt;&lt;strong&gt;The Arabian or Arab horse (Arabic: Ø§Ù„Ø­ØµØ§Ù† Ø§Ù„Ø¹Ø±Ø¨ÙŠ &amp;lrm; [ Ä§isË¤aËn Ê•arabiË], DMG á¸¥iá¹£Än Ê¿arabÄ«)&lt;/strong&gt; is a breed of horse that originated on the Arabian Peninsula. With a distinctive head shape and high tail carriage, the Arabian is one of the most easily recognizable horse breeds in the world. It is also one of the oldest breeds, with archaeological evidence of horses that resemble modern Arabians dating back 4,500 years.&lt;span id=&quot;more-52&quot;&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;blockquote&gt;\r\n&lt;p&gt;The Arabian developed in a desert climate and was prized by the nomadic Bedouin people, often being brought inside the family tent for shelter and protection from theft. Selective breeding for traits including an ability to form a cooperative relationship with humans created a horse breed that is good-natured, quick to learn, and willing to please. The Arabian also developed the high spirit and alertness needed in a horse used for raiding and war. This combination of willingness and sensitivity requires modern Arabian horse owners to handle their horses with competence and respect.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;p&gt;The Arabian is a versatile breed. Arabians dominate the discipline of endurance riding, and compete today in many other fields of equestrian activity. They are one of the top ten most popular horse breeds in the world. They are now found worldwide, including the United States and Canada, the United Kingdom, Australia, continental Europe, South America (especially Brazil), and its land of origin, the Middle East.&lt;/p&gt;\r\n&lt;h4&gt;Size&lt;/h4&gt;\r\n&lt;p&gt;The breed standard stated by the United States Equestrian Federation, describes Arabians as standing between 14.1 to 15.1 hands (57 to 61 inches, 145 to 155 cm) tall, &amp;ldquo;with the occasional individual over or under.&amp;rdquo;[3] Thus, all Arabians, regardless of height, are classified as &amp;ldquo;horses&amp;rdquo;, even though 14.2 hands (58 inches, 147 cm) is the traditional cutoff height between a horse and a pony.[14] A common myth is that Arabians are not strong because they are relatively small and refined. However, the Arabian horse is noted for a greater density of bone than other breeds, short cannons, sound feet, and a broad, short back,[2] all of which give the breed physical strength comparable to many taller animals.[15] Thus, even a smaller Arabian can carry a heavy rider. For tasks where the sheer weight of the horse matters, such as farm work done by a draft horse,[16] any lighter-weight horse is at a disadvantage.[16] However, for most purposes, the Arabian is a strong and hardy light horse breed able to carry any type of rider in most equestrian pursuits.[15]&lt;/p&gt;\r\n&lt;h4&gt;Temperament&lt;/h4&gt;\r\n&lt;p&gt;A dark horse moving towards the camera with head held high and legs striding forward.&lt;br /&gt;Arabians are noted for both intelligence and a spirited disposition&lt;/p&gt;\r\n&lt;blockquote&gt;\r\n&lt;p&gt;For centuries, Arabian horses lived in the desert in close association with humans.[17] For shelter and protection from theft, prized war mares were sometimes kept in their owner&amp;rsquo;s tent, close to children and everyday family life.[18] Only horses with a naturally good disposition were allowed to reproduce, with the result that Arabians today have a good temperament that, among other examples, makes them one of the few breeds where the United States Equestrian Federation rules allow children to exhibit stallions in nearly all show ring classes, including those limited to riders under 18.[19]&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;p&gt;On the other hand, the Arabian is also classified as a &amp;ldquo;hot-blooded&amp;rdquo; breed, a category that includes other refined, spirited horses bred for speed, such as the Akhal-Teke, the Barb and the Thoroughbred. Like other hot-bloods, Arabians&amp;rsquo; sensitivity and intelligence enable quick learning and greater communication with their riders; however, their intelligence also allows them to learn bad habits as quickly as good ones,[20] and they do not tolerate inept or abusive training practices.[21] Some sources claim that it is more difficult to train a &amp;ldquo;hot-blooded&amp;rdquo; horse.[22] Though most Arabians have a natural tendency to cooperate with humans, when treated badly, like any horse, they can become excessively nervous or anxious, but seldom become vicious unless seriously spoiled or subjected to extreme abuse.[21] At the other end of the spectrum, romantic myths are sometimes told about Arabian horses that give them near-divine characteristics.[23]&lt;/p&gt;', '2016-03-26', 1);

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
(16, 'Comments user 02', '2016-03-18 19:26:00', 1, 3),
(17, 'Food is my passion. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:07', 1, 3),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:15', 1, 3),
(19, 'Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-18 19:27:06', 1, 2),
(20, 'I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-19 00:14:09', 1, 3),
(21, 'Me too! WOW!', '2016-03-19 00:14:22', 1, 5),
(22, '<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', '2016-03-24 01:46:09', 1, 2),
(23, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2016-03-19 03:01:42', 1, 5),
(44, 'Qweerty', '2016-03-19 20:39:09', 2, 2),
(45, 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-20 00:36:35', 5, 5),
(46, '<p>Normal Announcement. You can see the icon status in the main topic list. The sky is blue as the grass is Green!!!!!!!!!!!</p>\r\n<p>&nbsp;</p>', '2016-03-23 16:09:53', 7, 3),
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
(90, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</strong></p>\r\n<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</em></p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ul>\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ol>\r\n<h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h1>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h2>\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h3>\r\n<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h4>\r\n<h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h5>\r\n<h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h6>\r\n<p><span style="text-decoration: underline;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><span style="text-decoration: line-through;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</code></p>\r\n<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br /><br /></pre>', '2016-03-23 02:37:17', 106, 1),
(93, '<h3><strong>Ð’ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐµ -&nbsp;</strong></h3>\r\n<ul>\r\n<li>Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹&nbsp;(Ð´Ð»Ñ ÑŽÑ€ÐµÐ·Ð° )</li>\r\n<li>ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ ÑÐ´ÐµÐ»Ð°Ð½Ñ‹Ñ… ÑŽÐ·ÐµÑ€Ð¾Ð¼</li>\r\n<li>Ð²Ñ‹Ð²ÐµÑÑ‚Ð¸ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð°Ð½ÐµÐ»ÑŒ Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð½Ñ‹Ð¼Ð¸ Ð¸Ð¼ Ð´Ð¸ÑÐºÑƒÑÐ¸ÑÐ¼Ð¸</li>\r\n<li>ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÐµÐ´Ð¸Ð½Ð½Ð¾Ðµ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð½Ð¸Ðµ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</li>\r\n<li><strong>Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð±Ð»Ð¾Ð³</strong></li>\r\n<li><strong>Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð³Ð»Ð°Ð²Ð½Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹</strong></li>\r\n</ul>', '2016-03-23 17:04:20', 107, 1);

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
(1, 'alias  alias  alias', 'THIS IS A STICKY TOPIC - NOTE THE FONT ICON STATUS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '2016-03-24 01:40:18', 1, 2),
(2, 'alias  alias  alias', 'DEFAULT BBCODES EXAMPLES - MORE CUSTOM BBCODES AVAILABLE', '"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."', '2016-03-13 03:00:31', 1, 3),
(5, 'alias  alias  alias', 'RESPONSIVE IMAGES - RESIZED AUTOMATICALLY', 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-13 12:19:07', 1, 3),
(7, 'alias  alias  alias', 'NORMAL ANNOUNCEMENT EXAMPLE', 'Normal Announcement. You can see the icon status in the main topic list.\r\nThe sky is blue as the grass is\r\nGreen!!!!!!!!!!!', '2016-03-23 16:22:51', 1, 5),
(101, 'Ver. 2.3 (19.03)', 'Ver. 2.3 (19.03)', '<p>Ð ÐµÐ»Ð¸Ð· Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ð¸ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</p>', '2016-03-23 16:38:22', 8, 1),
(102, 'Bug report Ver. 2.4 (1.0) (20.03)', 'Bug report Ver. 2.4 (1.0) (20.03)', '<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</p>\r\n<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</p>\r\n<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</p>', '2016-03-23 16:45:47', 8, 1),
(103, 'Ver. 2.4.1 (1.0.1) (20.03)', 'Ver. 2.4.1 (1.0.1) (20.03)', '<ul>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</strong></li>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</strong></li>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</strong></li>\r\n<li>ÐšÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ;</li>\r\n<li>Ð“Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½));</li>\r\n<li>Ð£Ð´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ;</li>\r\n<li>ÐŸÐ¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us;</li>\r\n<li>Ð¤Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°;</li>\r\n</ul>', '2016-03-23 16:45:23', 8, 1),
(104, 'Ver. 2.4.2 (1.0.2) (21.03)', 'Ver. 2.4.2 (1.0.2) (21.03)', '<ul>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ…;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð½Ð°Ð·Ð°Ð´;</li>\r\n<li>Ð’Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°;</li>\r\n</ul>', '2016-03-23 16:44:36', 8, 1),
(105, 'Ver. 2.4.3 (1.0.3) (22.03)', 'Ver. 2.4.3 (1.0.3) (22.03)', '<ul>\r\n<li>ÐÐ°Ñ‡Ð°Ð»Ð¾ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ Ð³Ð°Ð»ÐµÑ€ÐµÐ¸;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);</li>\r\n<li>ÐŸÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;</li>\r\n<li>Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);</li>\r\n<li>ÐŸÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;</li>\r\n<li>Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n</ul>', '2016-03-24 16:18:02', 8, 1),
(106, 'WYSIWYG', 'WYSIWYG Test', '<h1><img src="http://img1.joyreactor.cc/pics/post/full/anon-ÐšÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ°-2191131.jpeg" alt="" width="400" height="303" /></h1>\r\n<h1>WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€</h1>\r\n<p><em>Ð¢ÐµÑÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€Ð°</em></p>', '2016-03-23 16:28:48', 4, 1),
(107, 'Ver. 2.4.4 (1.0.4) (23.03) ', 'Ver. 2.4.4 (1.0.4) (23.03) ', '<ul>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ (Ð´Ð»Ñ ÑŽÑ€ÐµÐ·Ð° Ð¸ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°)</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹&nbsp;(Ð´Ð»Ñ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°)</li>\r\n<li>ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹</li>\r\n<li>Ð Ð°Ð·ÑˆÐ¸Ñ€ÐµÐ½ Ñ„ÑƒÐ½ÐºÐ¸Ð¾Ð½Ð°Ð»&nbsp;WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€Ð°</li>\r\n<li>Ð”Ñ€ÑƒÐ³Ð¸Ðµ Ð¼ÐµÐ»ÐºÐ¸Ðµ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð½Ð¸Ñ</li>\r\n</ul>', '2016-03-23 16:48:47', 8, 1),
(109, 'Ver. 2.4.5 (1.0.5) (24.03) ', 'Ver. 2.4.5 (1.0.5) (24.03) ', '<ul>\r\n<li><strong>(Done)CÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÐµÐ´Ð¸Ð½Ð½Ð¾Ðµ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð½Ð¸Ðµ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</strong></li>\r\n<li>Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°&nbsp;Ð±Ð»Ð¾Ð³Ð° (Ð°Ð´Ð¼Ð¸Ð½)</li>\r\n</ul>', '2016-03-25 03:48:57', 8, 1),
(110, 'Ver. 2.4.6 (1.0.6) (26.03) ', 'Ver. 2.4.6 (1.0.6) (26.03) ', '<ul>\r\n<li>Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°&nbsp;Ð±Ð»Ð¾Ð³Ð° (Ð°Ð´Ð¼Ð¸Ð½) - Ð·Ð°Ð¿ÑƒÑ‰ÐµÐ½Ð½Ð° alpha Ð²ÐµÑ€ÑÐ¸Ñ</li>\r\n</ul>', '2016-03-26 03:57:37', 8, 1);

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
(8, 'README !!! README !!! README !!! ', 'README !!! README !!! README !!! ', 'Forum --- Site Development --- All about site', 1);

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
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
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
