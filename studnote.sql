-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 15 2019 г., 01:06
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `studnote`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-04-13 16:15:36', '2019-04-13 16:15:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-13 16:15:36', '2019-04-13 16:15:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-13 16:15:36', '2019-04-13 16:15:36');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-13 16:15:36', '2019-04-13 16:15:36');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-13 16:15:36', '2019-04-13 16:15:36', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-04-13 16:15:36', '2019-04-13 16:15:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-04-13 16:15:37', '2019-04-13 16:15:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.hooks', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

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
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(2, 'browse_bread', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(3, 'browse_database', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(4, 'browse_media', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(5, 'browse_compass', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(6, 'browse_menus', 'menus', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(7, 'read_menus', 'menus', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(8, 'edit_menus', 'menus', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(9, 'add_menus', 'menus', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(10, 'delete_menus', 'menus', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(11, 'browse_roles', 'roles', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(12, 'read_roles', 'roles', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(13, 'edit_roles', 'roles', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(14, 'add_roles', 'roles', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(15, 'delete_roles', 'roles', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(16, 'browse_users', 'users', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(17, 'read_users', 'users', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(18, 'edit_users', 'users', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(19, 'add_users', 'users', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(20, 'delete_users', 'users', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(21, 'browse_settings', 'settings', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(22, 'read_settings', 'settings', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(23, 'edit_settings', 'settings', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(24, 'add_settings', 'settings', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(25, 'delete_settings', 'settings', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(26, 'browse_hooks', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(16, 4),
(17, 1),
(17, 3),
(17, 4),
(18, 1),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(21, 1),
(21, 3),
(21, 4),
(22, 1),
(22, 3),
(22, 4),
(23, 1),
(23, 3),
(23, 4),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(2, 'user', 'Student', '2019-04-13 16:15:37', '2019-04-14 18:07:22'),
(3, 'teacher', 'Teacher', '2019-04-14 17:55:08', '2019-04-14 17:55:08'),
(4, 'moderator', 'Moderator', '2019-04-14 18:03:11', '2019-04-14 18:03:11');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Пример', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Пример', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2019\\prnCMFWLqTMl7yM2WGm6.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Административная панель', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Добро пожаловать в административную панель', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2019\\PrAis1qLXhr09Dll2Hlk.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2019\\8r2LKcs0JO6LFuGrrD9c.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.contacts', 'Контакты', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgba(0, 0, 0, 0.6); font-family: \'Work Sans\', Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">40024, м.Суми, вул. Прокоф`єва, 38</li>\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">(0542) 63-55-86</li>\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">(0542) 36-51-59</li>\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">email:&nbsp;<a style=\"box-sizing: border-box; color: #2f89fc; text-decoration-line: none; background-color: transparent; transition: all 0.3s ease 0s;\" href=\"http://localhost:8000/#\">shtc-pto@ukr.net</a></li>\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">fax: 63-55-86</li>\r\n</ul>', NULL, 'rich_text_box', 7, 'Site'),
(12, 'site.addresses', 'Как добраться', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgba(0, 0, 0, 0.6); font-family: \'Work Sans\', Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">маршрутними таксі № 2, 9, 17а, 21, 51, 52, 53</li>\r\n<li style=\"box-sizing: border-box; line-height: 1.4;\">тролейбус №15, 15а</li>\r\n</ul>', NULL, 'rich_text_box', 8, 'Site'),
(13, 'site.facebook', 'Facebook', 'https://www.facebook.com/', NULL, 'text', 9, 'Site'),
(14, 'site.twitter', 'Twitter', 'https://twitter.com/', NULL, 'text', 10, 'Site'),
(15, 'site.instagram', 'Instagram', 'https://www.instagram.com/', NULL, 'text', 11, 'Site'),
(16, 'site.map', 'Карта (iframe)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2516.6757346191625!2d34.8010196156361!3d50.892711663279904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x412901ef1efd72e5%3A0xaa5fd2ec353484f8!2z0YPQuy4g0J_RgNC-0LrQvtGE0YzQtdCy0LAsIDM4LCDQodGD0LzRiywg0KHRg9C80YHQutCw0Y8g0L7QsdC70LDRgdGC0YwsIDQwMDAw!5e0!3m2!1sru!2sua!4v1555241613468!5m2!1sru!2sua\"  frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Stanislav', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$t.Ck8/znvqlwPp7GGTlpfuOmqrYHz.pMiKOgUWgBXmMC5j.crImW2', 'TM9vJfPtYxPyfegxbLOHrWLJtrRzORKZpANIV8BEk7fUQecUlY0AHSWQjqlv', NULL, '2019-04-13 16:16:08', '2019-04-13 16:16:08'),
(2, 4, 'Администратор', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$c3vxYeNU.fpTX91ut0OfLeqNPmeWLiYbPCbPx6d37C373YtfZqvNi', '7TtTKNhV6Mj0yAX4WiokwWMV5LF3ebYjKzf4fbfuJ24oH1yoIzAA2sv7K3ED', '{\"locale\":\"ru\"}', '2019-04-14 18:25:17', '2019-04-14 18:26:18'),
(3, 3, 'Учитель', 'teacher@admin.com', 'users/default.png', NULL, '$2y$10$qMexa91e1yEhvnZw0qkkX.m3dIPKZ.bF7rahYAG6kfEnffkNqTBUy', NULL, '{\"locale\":\"ru\"}', '2019-04-14 18:41:33', '2019-04-14 18:41:33');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
