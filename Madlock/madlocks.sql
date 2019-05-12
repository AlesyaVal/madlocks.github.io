-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 01 2018 г., 14:28
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `madlocks`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `picture`, `parent_id`, `vip`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Плетения', '', '', 0, 0, 0, NULL, NULL),
(4, 'Сложные окрашивания', '', '', 0, 0, 0, NULL, NULL),
(5, 'Стрижки', '', '', 0, 0, 0, NULL, NULL),
(6, 'Разглаживание волос', '', '', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Афрокосички', '<p>описание</p>', '2018-10-27 06:03:56', '2018-10-27 06:03:56', NULL),
(2, 'Косички зизи', '<p>описание</p>', '2018-10-27 06:04:12', '2018-10-27 06:24:13', '2018-10-27 06:24:13'),
(3, 'Дреды', '<p>описание</p>', '2018-10-27 06:04:34', '2018-10-27 06:04:34', NULL),
(4, 'Женские стрижки', '<p>описание</p>\r\n\r\n<p>&nbsp;</p>', '2018-10-27 06:05:48', '2018-10-27 06:39:25', NULL),
(5, 'Женские стрижки', '<p>описание</p>', '2018-10-27 06:05:58', '2018-10-27 06:32:13', '2018-10-27 06:32:13'),
(6, 'Сложные окрашивания', '<p>описание</p>', '2018-10-27 06:27:20', '2018-10-27 06:28:12', NULL),
(7, 'Мужские стрижки', '<p>описание</p>', '2018-10-27 06:33:23', '2018-10-27 06:33:23', NULL),
(8, 'Разглаживание волос', '<p>описание</p>', '2018-10-27 06:42:46', '2018-10-27 06:42:46', NULL),
(9, 'Default category', 'html text', '2018-10-27 09:35:54', '2018-10-27 09:35:54', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `body`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>like</p>\r\n', 'show', NULL, '2018-10-25 12:23:34', '2018-10-25 12:23:34');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Добро пожаловать на наш сайт', '<div class=\"maintext\"></div>\r\n   			<p class=\"lead\">\r\n   		\r\n			<p style=\"margin-left: 40px;\"><em>AFROMARI -\r\nэто не просто студия по плетению афрокосичек, это настоящая мастерская для твоего нового,необычного образа! Студия основанаМарией Борисовой -\r\nмастером плетения с огромным теоретическими практическим  опытом. В студии заплетено уже более 17000 косичек,мастера обучались у лучших брейдистов России и работают только с качественными материалами!</em></p><p>\r\n	<p style=\"text-align: center;\"><img alt=\"Lorem Ipsum\" src=\"/public/media/img/1.jpg\" style=\"width: 600px; height: 550px; border-width: 1px; border-style: solid;\"></p><p style=\"margin-left: 40px;\"></p><p>\r\n	<p style=\"margin-left: 40px;\"><em>AFROMARI -\r\nэто не просто студия по плетению афрокосичек, это настоящая мастерская для твоего нового,необычного образа! Студия основанаМарией Борисовой -\r\nмастером плетения с огромным теоретическими практическим  опытом. В студии заплетено уже более 17000 косичек,мастера обучались у лучших брейдистов России и работают только с качественными материалами!</em></p><p>\r\n   \r\n         <div class=\"node node472 section section-clear\" id=\"b\" data-opacity=\"0.95\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"container\"><div class=\"cont\"><div class=\"node node473 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"xs-scale-80\"><h2 class=\"font-header spans xs-force-center textable\"><span style=\"font-size: 34px; letter-spacing: 0.1em; text-align: center;\" class=\"p\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 48px;\"><strong>Вопросы </strong></span></span></span></h2></div></div></div></div><div class=\"node node474 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"flex\"><div style=\"opacity: 0.5;\" class=\"xs-force-center textable\"><p style=\"font-size: 110%; text-align: center;\"><span style=\"color: rgb(17, 17, 17);\">И наши ответы</span></p></div></div></div></div></div><div class=\"node node475 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node476 widget widget-spoiler\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"metahtml\"><div id=\"node476_meta\" class=\"code\"><div class=\"spoiler2\">\r\n  <div plp-spoiler-toggle=\"\" il-action=\"toggle\" class=\"spoiler2-header is-expanded\">\r\n    <div class=\"textable\"><p style=\"letter-spacing: 0.1em;\">ВРЕДНЫ ЛИ АФРОКОСЫ <span style=\"font-size: 14px;\">?</span></p></div>\r\n    <div class=\"spoiler2-toggle\">\r\n      <i class=\"fa fa-chevron-down\"></i>\r\n    </div>\r\n  </div>\r\n  <div style=\"display: block;\" plp-spoiler-container=\"\" class=\"spoiler2-container is-expanded\">\r\n    <div class=\"cont\"><div class=\"node node477 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"\"><div class=\"textable\"><p style=\"line-height: 1.5;\">&nbsp;До сих пор можно услышать, что афроплетение вредно для собственных волос.&nbsp;</p><p style=\"line-height: 1.5;\">Аргументируется это значительным «вычесом» волос, который отмечается после расплетения косичек. Опровергнуть это предубеждение довольно просто.<br>По естественным причинам у любого человека каждый день выпадает около 100 волосков. На их месте вырастают новые, и объем прически не меняется.<br>Афрокосички создаются на срок от 1 месяца. Путем нехитрых подсчетов выясняем, что за это время у человека выпадает минимум 3000 волос. Вот именно их и вычесывают после расплетания косичек. Поэтому волноваться не стоит, потому что за это время выросло такое же количество новых волосков! К тому же &nbsp;волосы отдохнут от укладок, фенов и воздействия агрессивной среды.<br>А при правильном уходе за косами, они точно не принесут вам никакого вреда!</p><p style=\"line-height: 1.5;\"><br>Носите косы с удовольствием!)</p></div></div></div></div></div></div>\r\n  </div>\r\n</div></div></div></div></div></div>\r\n<p style=\"text-align: center;\"><img alt=\"Lorem Ipsum\" src=\"/public/media/img/2.jpg\" style=\"width: 600px; height: 550px; border-width: 1px; border-style: solid;\"></p><p style=\"margin-left: 40px;\"></p><p><div class=\"node node478 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node479 widget widget-spoiler\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"metahtml\"><div id=\"node479_meta\" class=\"code\"><div class=\"spoiler2\">\r\n  <div plp-spoiler-toggle=\"\" il-action=\"toggle\" class=\"spoiler2-header is-expanded\">\r\n    <div class=\"textable\"><p style=\"letter-spacing: 0.1em;\">еСТЬ ЛИ ПРОТИВОПОКАЗАНИЯ <span style=\"font-size: 14px;\">?</span></p></div>\r\n    <div class=\"spoiler2-toggle\">\r\n      <i class=\"fa fa-chevron-down\"></i>\r\n    </div>\r\n  </div>\r\n  <div style=\"display: block;\" plp-spoiler-container=\"\" class=\"spoiler2-container is-expanded\">\r\n    <div class=\"cont\"><div class=\"node node480 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"\"><div class=\"textable\"><p style=\"line-height: 1.5;\">&nbsp;Да, &nbsp;ни в коем случае не делай АФРОКОСЫ, если у тебя:</p><p style=\"line-height: 1.5;\"><br>Вегетососудистая дистония, частные головные боли, мигрени&nbsp;</p><p style=\"line-height: 1.5;\">Раны, ссадины, незажившие шрамы на голове&nbsp;</p><p style=\"line-height: 1.5;\">Хронические кожные заболевания, нейродермит, псориаз&nbsp;</p><p style=\"line-height: 1.5;\">Себорея&nbsp;</p><p style=\"line-height: 1.5;\">Выпадение волос, облысение</p><p style=\"line-height: 1.5;\"><br>В этих случаях афрокосы только усугубят твоё положение, береги себя и мир вокруг 💕&nbsp;</p></div></div></div></div></div></div>\r\n  </div>\r\n</div></div></div></div></div></div>\r\n<p style=\"text-align: center;\"><img alt=\"Lorem Ipsum\" src=\"/public/media/img/3.jpg\" style=\"width: 600px; height: 550px; border-width: 1px; border-style: solid;\"></p><p style=\"margin-left: 40px;\"></p><p><div class=\"node node481 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node482 widget widget-spoiler\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"metahtml\"><div id=\"node482_meta\" class=\"code\"><div class=\"spoiler2\">\r\n  <div plp-spoiler-toggle=\"\" il-action=\"toggle\" class=\"spoiler2-header is-expanded\">\r\n    <div class=\"textable\"><p style=\"letter-spacing: 0.1em;\"><span style=\"font-size: 14px;\">КАК УХАЖИВАТЬ ЗА АФРОКОСАМИ ?</span></p></div>\r\n    <div class=\"spoiler2-toggle\">\r\n      <i class=\"fa fa-chevron-down\"></i>\r\n    </div>\r\n  </div>\r\n  <div style=\"display: block;\" plp-spoiler-container=\"\" class=\"spoiler2-container is-expanded\">\r\n    <div class=\"cont\"><div class=\"node node483 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"\"><div class=\"textable\"><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Косички-самая неприхотливая прическа</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br>Они не требуют никакого специального ухода,но есть пару рекомендаций<br>Перед сном сплетите все косички в одну большую кому, так они меньше будут пушиться и сохранят дольше свой эстетический вид<br>Так же перед сном можно одеть платочек на голову, что бы у корней не выбивались пушковые волосы<br>Если вас смущают торчащие волоски из косичек, то тут только один способ, подрежте их, кстати мы тоже это делаем по вашему желанию когда заплетаем вас<br>Ну и конечно своевременная коррекция теменной зоны и окантовки поможет вам проходить с косами как можно дольше&nbsp;</span></p></div></div></div></div></div></div>\r\n  </div>\r\n</div></div></div></div></div></div><div class=\"node node484 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node485 widget widget-spoiler\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"metahtml\"><div id=\"node485_meta\" class=\"code\"><div class=\"spoiler2\">\r\n  <div plp-spoiler-toggle=\"\" il-action=\"toggle\" class=\"spoiler2-header is-expanded\">\r\n    <div class=\"textable\"><p style=\"letter-spacing: 0.1em;\"><span style=\"font-size: 14px;\">Как мыть афрокосы?<br></span></p></div>\r\n    <div class=\"spoiler2-toggle\">\r\n      <i class=\"fa fa-chevron-down\"></i>\r\n    </div>\r\n  </div>\r\n  <div style=\"display: block;\" plp-spoiler-container=\"\" class=\"spoiler2-container is-expanded\">\r\n    <div class=\"cont\"><div class=\"node node486 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"\"><div class=\"textable\"><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Этим вопросом задаются все, даже тот кто не собирается их себе плести<br></span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Моют афрокосички раз в неделю теплой водой с обычным шампунем</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br><span title=\"Отредактировано\">•</span> Слишком часто мыть не стоит – от этого внешний вид только ухудшится!<br><br>Лучше всего подойдет шампунь для нормальных волос, без содержания бальзамов и кондиционеров.&nbsp;</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Нужно немного шампуня нанести на губку, вспенить и промыть кожу головы (вся пена которая будет стекать по косам, соберёт с них всю грязь, отдельно косы мыть не нужно)</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br>!Важно тщательно смывать остатки шампуня!</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br><span title=\"Отредактировано\">•</span> Нельзя использовать масла, бальзамы и кондиционеры, так как они тяжело вымываются и только лишь утяжеляют наши косы!</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br>После слегка отжать косички и завернуть в полотенце, чтобы оно впитало остальную влагу.&nbsp;</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Досушивают голову при комнатной температуре обычным способом•<br></span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\">Можно высушить феном, ! только не рекомендуется использовать горячий воздух ! , так как он может повредить синтетический материал, лучше прохладный или теплый</span></p><p style=\"line-height: 1.5;\"><span title=\"Отредактировано\"><br><span title=\"Отредактировано\">•</span>Также посещать баню, сауну и находиться под палящим солнцем нужно в головном уборе.<br></span></p></div></div></div></div></div></div>\r\n  </div>\r\n</div></div></div></div></div></div><div class=\"node node487 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node488 widget widget-blank\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"padding\"></div></div></div></div><div class=\"node node489 widget widget-spoiler\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"metahtml\"><div id=\"node489_meta\" class=\"code\"><div class=\"spoiler2\">\r\n  <div plp-spoiler-toggle=\"\" il-action=\"toggle\" class=\"spoiler2-header is-collapsed\">\r\n    <div class=\"textable\"><p style=\"letter-spacing: 0.1em;\">как расплетаются афрокосы<span style=\"font-size: 14px;\">?</span></p></div>\r\n    <div class=\"spoiler2-toggle\">\r\n      <i class=\"fa fa-chevron-down\"></i>\r\n    </div>\r\n  </div>\r\n  <div style=\"display: none;\" plp-spoiler-container=\"\" class=\"spoiler2-container is-collapsed\">\r\n    <div class=\"cont\"><div class=\"node node490 widget widget-text\"><div class=\"wrapper1\"><div class=\"wrapper2\"><div class=\"\"><div class=\"textable\"><p style=\"line-height: 1.5;\">Есть два варианта:</p><p style=\"line-height: 1.5;\"><br>1️.Вы приезжаете к нам в студию и снимаем вам Косички, просто расплетая их, а дальше уже даем ЦУ<br>Процесс это не быстрый, занимает примерно столько же времени сколько и плетение, поэтому и цена соответствующая&nbsp;</p><p style=\"line-height: 1.5;\"><br>2.Вы сами садитесь одна, либо с подружками и расплетаете чудесные Косички.Расплетаются они очень легко, если это Зизи, то узелок развязывается, либо срезается и дальше как простая косичка все расплетается, если это афро с канекалоном, то тут вы отстригаете косу до ваших волос и тоже дальше расплетаете Косички .</p></div></div></div></div></div></div>\r\n  </div>\r\n</div></div></div></div></div></div></div></div><span class=\"plplink\"></span></div></div>', 'index', NULL, NULL, NULL),
(2, 'Услуги', 'что мы можем вам предложить', 'services', NULL, NULL, NULL),
(3, 'наши мастера', 'добавить данные о мастерах', 'HAirMaster', NULL, NULL, NULL),
(4, 'карта проезда', 'вы можете найти нас по карте\r\n<iframe src=\"https://yandex.by/map-widget/v1/-/CBB9yNvclA\" width=\"100%\" height=\"400\" frameborder=\"1\" allowfullscreen=\"true\"></iframe>', 'map', NULL, NULL, NULL),
(5, 'галерея', 'наши работы', 'photo', NULL, NULL, NULL),
(6, 'прайс-лист', 'цены на наши услуги', 'price', NULL, NULL, NULL),
(7, 'контакты', 'свяжитесь с нами', 'contacts', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Category', 'Categories', NULL, '2018-10-27 06:02:38', '2018-10-27 06:02:38'),
(4, 0, 1, 'fa-database', 'Product', 'Products', NULL, '2018-10-27 06:18:31', '2018-10-27 06:18:31'),
(5, 0, 3, 'fa-database', 'Zayavka', 'zayavkas', NULL, '2018-11-01 08:57:24', '2018-11-01 08:57:24');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_25_121723_create_maintexts_table', 2),
(4, '2018_10_25_145114_create_feedback_table', 3),
(5, '2018_10_26_154552_create_catalogs_table', 4),
(6, '2015_10_10_000000_create_menus_table', 5),
(7, '2015_10_10_000000_create_roles_table', 5),
(8, '2015_10_10_000000_update_users_table', 5),
(9, '2015_12_11_000000_create_users_logs_table', 5),
(10, '2016_03_14_000000_update_menus_table', 5),
(11, '2018_10_27_090238_create_category_table', 6),
(12, '2018_10_27_091831_create_product_table', 7),
(13, '2018_10_31_155715_create_zayavkas_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` int(255) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `price`, `picture`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Де- дреды', '<p>описание Де- дреды</p>', 300, '1540629318-AEgVeinXHZQ.jpg', 3, '2018-10-27 06:21:17', '2018-10-27 08:35:19', NULL),
(2, 'Се-Дреды', '<p>описание Се-Дреды</p>', 300, '1540629327-BxlEA4cOlkA.jpg', 3, '2018-10-27 06:22:12', '2018-10-27 08:35:27', NULL),
(3, 'Брейды', '<p>описание Брейды</p>', 280, '1540629333-брейды.jpg', 1, '2018-10-27 06:23:04', '2018-10-27 08:35:34', NULL),
(4, 'Косички зизи', '<p>описание косички зизи</p>', 320, '1540629344-афро.jpg', 1, '2018-10-27 06:25:12', '2018-10-27 08:35:45', NULL),
(5, 'pulpriot', '<p>описание pulpriot</p>', 250, '1540629355-цвет.jpg', 6, '2018-10-27 06:28:38', '2018-10-27 08:35:55', NULL),
(6, 'Aloxxi', '<p>описание</p>', 230, '1540629363-Aloxxi.jpg', 6, '2018-10-27 06:38:11', '2018-10-27 08:36:04', NULL),
(7, 'стрижка', '<p>описание техники</p>', 40, '1540629371-женстр.jpg', 4, '2018-10-27 06:40:04', '2018-10-27 08:36:12', NULL),
(8, 'стрижка', '<p>описание техники</p>', 30, '1540629380-мужстр.jpg', 7, '2018-10-27 06:42:06', '2018-10-27 08:36:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-10-27 05:44:24', '2018-10-27 05:44:24'),
(2, 'User', '2018-10-27 05:44:24', '2018-10-27 05:44:24');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alesya', 'Alesyavalko@mail.ru', NULL, '$2y$10$7hLwGDoONjiD1JkmFpkZ6uQBTo9NLkXgEKT5wnG0aA9QiEflaPAX2', '6hmcz1O7APtwQKmVWOo3BPXowsHCMKb9Y4TaktRditZeGV35514enRdiYIXy', '2018-10-25 07:43:05', '2018-10-25 07:43:05'),
(2, 1, 'AlesyaValko', 'ValkoOlesia@gmail.com', NULL, '$2y$10$QGroiHrrlIKebiiWsy3RQezgYFK4yFypvQ3xtKmiMzn0RverHO1j6', 'CQ2sHagOZM6PQtnQ2AsK4f41MXK9VDGYjKkKLHp29QUs1rpp7AKnLNVnS2M1', '2018-10-27 05:47:41', '2018-10-27 05:47:41');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'created', 'category', 1, '2018-10-27 06:03:56', '2018-10-27 06:03:56'),
(2, 2, 'created', 'category', 2, '2018-10-27 06:04:12', '2018-10-27 06:04:12'),
(3, 2, 'created', 'category', 3, '2018-10-27 06:04:34', '2018-10-27 06:04:34'),
(4, 2, 'created', 'category', 4, '2018-10-27 06:05:48', '2018-10-27 06:05:48'),
(5, 2, 'created', 'category', 5, '2018-10-27 06:05:58', '2018-10-27 06:05:58'),
(6, 2, 'created', 'product', 1, '2018-10-27 06:21:17', '2018-10-27 06:21:17'),
(7, 2, 'created', 'product', 2, '2018-10-27 06:22:12', '2018-10-27 06:22:12'),
(8, 2, 'created', 'product', 3, '2018-10-27 06:23:04', '2018-10-27 06:23:04'),
(9, 2, 'deleted', 'category', 2, '2018-10-27 06:24:13', '2018-10-27 06:24:13'),
(10, 2, 'created', 'product', 4, '2018-10-27 06:25:12', '2018-10-27 06:25:12'),
(11, 2, 'created', 'category', 6, '2018-10-27 06:27:20', '2018-10-27 06:27:20'),
(12, 2, 'updated', 'category', 6, '2018-10-27 06:28:12', '2018-10-27 06:28:12'),
(13, 2, 'created', 'product', 5, '2018-10-27 06:28:38', '2018-10-27 06:28:38'),
(14, 2, 'deleted', 'category', 5, '2018-10-27 06:32:13', '2018-10-27 06:32:13'),
(15, 2, 'updated', 'category', 4, '2018-10-27 06:32:24', '2018-10-27 06:32:24'),
(16, 2, 'updated', 'category', 4, '2018-10-27 06:33:13', '2018-10-27 06:33:13'),
(17, 2, 'created', 'category', 7, '2018-10-27 06:33:23', '2018-10-27 06:33:23'),
(18, 2, 'created', 'product', 6, '2018-10-27 06:38:11', '2018-10-27 06:38:11'),
(19, 2, 'updated', 'category', 4, '2018-10-27 06:39:25', '2018-10-27 06:39:25'),
(20, 2, 'created', 'product', 7, '2018-10-27 06:40:04', '2018-10-27 06:40:04'),
(21, 2, 'created', 'product', 8, '2018-10-27 06:42:06', '2018-10-27 06:42:06'),
(22, 2, 'created', 'category', 8, '2018-10-27 06:42:46', '2018-10-27 06:42:46'),
(23, 2, 'updated', 'product', 1, '2018-10-27 08:27:55', '2018-10-27 08:27:55'),
(24, 2, 'updated', 'product', 2, '2018-10-27 08:28:03', '2018-10-27 08:28:03'),
(25, 2, 'updated', 'product', 3, '2018-10-27 08:28:10', '2018-10-27 08:28:10'),
(26, 2, 'updated', 'product', 4, '2018-10-27 08:28:17', '2018-10-27 08:28:17'),
(27, 2, 'updated', 'product', 5, '2018-10-27 08:28:27', '2018-10-27 08:28:27'),
(28, 2, 'updated', 'product', 6, '2018-10-27 08:28:35', '2018-10-27 08:28:35'),
(29, 2, 'updated', 'product', 7, '2018-10-27 08:28:47', '2018-10-27 08:28:47'),
(30, 2, 'updated', 'product', 8, '2018-10-27 08:28:56', '2018-10-27 08:28:56'),
(31, 2, 'updated', 'product', 1, '2018-10-27 08:35:19', '2018-10-27 08:35:19'),
(32, 2, 'updated', 'product', 2, '2018-10-27 08:35:27', '2018-10-27 08:35:27'),
(33, 2, 'updated', 'product', 3, '2018-10-27 08:35:34', '2018-10-27 08:35:34'),
(34, 2, 'updated', 'product', 4, '2018-10-27 08:35:45', '2018-10-27 08:35:45'),
(35, 2, 'updated', 'product', 5, '2018-10-27 08:35:55', '2018-10-27 08:35:55'),
(36, 2, 'updated', 'product', 6, '2018-10-27 08:36:04', '2018-10-27 08:36:04'),
(37, 2, 'updated', 'product', 7, '2018-10-27 08:36:12', '2018-10-27 08:36:12'),
(38, 2, 'updated', 'product', 8, '2018-10-27 08:36:20', '2018-10-27 08:36:20'),
(39, 2, 'updated', 'users', 2, '2018-10-27 10:35:17', '2018-10-27 10:35:17'),
(40, 2, 'updated', 'users', 2, '2018-10-27 10:44:41', '2018-10-27 10:44:41'),
(41, 2, 'updated', 'users', 2, '2018-10-27 10:55:35', '2018-10-27 10:55:35'),
(42, 1, 'updated', 'users', 1, '2018-10-30 13:31:25', '2018-10-30 13:31:25'),
(43, 1, 'updated', 'users', 1, '2018-10-30 13:56:17', '2018-10-30 13:56:17'),
(44, 1, 'updated', 'users', 1, '2018-10-30 14:13:45', '2018-10-30 14:13:45'),
(45, 1, 'updated', 'users', 1, '2018-10-30 14:14:16', '2018-10-30 14:14:16'),
(46, 1, 'updated', 'users', 1, '2018-10-30 14:22:28', '2018-10-30 14:22:28'),
(47, 1, 'updated', 'users', 1, '2018-10-30 15:10:03', '2018-10-30 15:10:03'),
(48, 1, 'updated', 'users', 1, '2018-10-30 15:23:09', '2018-10-30 15:23:09'),
(49, 1, 'updated', 'users', 1, '2018-10-31 09:51:29', '2018-10-31 09:51:29'),
(50, 1, 'updated', 'users', 1, '2018-10-31 10:33:39', '2018-10-31 10:33:39'),
(51, 1, 'updated', 'users', 1, '2018-10-31 12:27:11', '2018-10-31 12:27:11'),
(52, 1, 'updated', 'users', 1, '2018-10-31 12:35:47', '2018-10-31 12:35:47'),
(53, 1, 'updated', 'users', 1, '2018-10-31 12:43:35', '2018-10-31 12:43:35'),
(54, 1, 'updated', 'users', 1, '2018-10-31 12:45:10', '2018-10-31 12:45:10'),
(55, 1, 'updated', 'users', 1, '2018-10-31 12:46:05', '2018-10-31 12:46:05'),
(56, 1, 'updated', 'users', 1, '2018-10-31 12:46:37', '2018-10-31 12:46:37'),
(57, 1, 'updated', 'users', 1, '2018-10-31 12:47:13', '2018-10-31 12:47:13'),
(58, 1, 'updated', 'users', 1, '2018-10-31 12:48:48', '2018-10-31 12:48:48'),
(59, 2, 'updated', 'users', 2, '2018-11-01 10:59:33', '2018-11-01 10:59:33');

-- --------------------------------------------------------

--
-- Структура таблицы `zayavkas`
--

CREATE TABLE `zayavkas` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zayavkas`
--

INSERT INTO `zayavkas` (`id`, `body`, `name`, `phone`, `email`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 0, '2018-11-01 07:19:28', '2018-11-01 07:19:28'),
(2, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 0, '2018-11-01 08:00:41', '2018-11-01 08:00:41'),
(3, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 0, '2018-11-01 08:17:25', '2018-11-01 08:17:25'),
(4, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 0, '2018-11-01 08:18:15', '2018-11-01 08:18:15'),
(5, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 0, '2018-11-01 08:19:41', '2018-11-01 08:19:41'),
(6, 'a:0:{}', 'Alesya', '293291361', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:27:08', '2018-11-01 08:27:08'),
(7, 'a:0:{}', 'Alesya', '293291361', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:27:29', '2018-11-01 08:27:29'),
(8, 'a:0:{}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:32:32', '2018-11-01 08:32:32'),
(9, 'a:0:{}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:37:05', '2018-11-01 08:37:05'),
(10, 'a:0:{}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:40:09', '2018-11-01 08:40:09'),
(11, 'a:0:{}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:40:34', '2018-11-01 08:40:34'),
(12, 'a:0:{}', 'Alesya', '293291361', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:41:47', '2018-11-01 08:41:47'),
(13, 'a:0:{}', 'Alesya', '293291361', 'AlesyaValko@mail.ru', NULL, 0, '2018-11-01 08:53:24', '2018-11-01 08:53:24'),
(14, 'a:0:{}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 2, '2018-11-01 10:01:04', '2018-11-01 10:01:04'),
(15, 'a:0:{}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 2, '2018-11-01 10:05:56', '2018-11-01 10:05:56'),
(16, 'a:2:{s:6:\"_token\";s:40:\"xkuILX4znsSF3XIQQJlplIeUb4ibaSuUtg1I9MQk\";i:3;s:1:\"1\";}', 'Olesia', '333846437', 'ValkoOlesia@gmail.ru', NULL, 2, '2018-11-01 10:18:10', '2018-11-01 10:18:10'),
(17, 'a:2:{s:6:\"_token\";s:40:\"xkuILX4znsSF3XIQQJlplIeUb4ibaSuUtg1I9MQk\";i:3;s:1:\"1\";}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 2, '2018-11-01 10:21:53', '2018-11-01 10:21:53'),
(18, 'a:2:{s:6:\"_token\";s:40:\"xkuILX4znsSF3XIQQJlplIeUb4ibaSuUtg1I9MQk\";i:3;s:1:\"1\";}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 2, '2018-11-01 10:22:40', '2018-11-01 10:22:40'),
(19, 'a:1:{i:3;s:1:\"1\";}', 'Olesia', '293291361', 'ValkoOlesia@gmail.ru', NULL, 2, '2018-11-01 10:24:25', '2018-11-01 10:24:25'),
(20, 'a:1:{i:3;s:1:\"1\";}', 'Alesya', '293291361', 'AlesyaValko@mail.ru', NULL, 1, '2018-11-01 11:00:15', '2018-11-01 11:00:15'),
(21, 'a:1:{i:4;s:1:\"1\";}', 'Alesya', '333846437', 'AlesyaValko@mail.ru', NULL, 1, '2018-11-01 11:07:40', '2018-11-01 11:07:40');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zayavkas`
--
ALTER TABLE `zayavkas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `zayavkas`
--
ALTER TABLE `zayavkas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
