-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 20 2019 г., 11:49
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
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Название предмета', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(24, 4, 'description', 'rich_text_box', 'Описание предмета', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(25, 4, 'user_id', 'hidden', 'Учитель', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(26, 4, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 1, 0, 1, '{}', 5),
(27, 4, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 4, 'subject_belongsto_user_relationship', 'relationship', 'Учитель', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(29, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 6, 'name', 'text', 'Название группы', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(31, 6, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 1, 0, 1, '{}', 3),
(32, 6, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, '{}', 4),
(35, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 10, 'user_id', 'hidden', 'Ученик', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(37, 10, 'group_id', 'hidden', 'Группа', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(38, 10, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(39, 10, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, '{}', 5),
(40, 10, 'user_group_belongsto_user_relationship', 'relationship', 'Ученик', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(41, 10, 'user_group_belongsto_group_relationship', 'relationship', 'Группа', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(42, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 11, 'group_id', 'hidden', 'Группа', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(44, 11, 'subject_id', 'hidden', 'Предмет', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(45, 11, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(46, 11, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, '{}', 5),
(47, 11, 'group_subject_belongsto_group_relationship', 'relationship', 'groups', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(48, 11, 'group_subject_belongsto_subject_relationship', 'relationship', 'subjects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"subject_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

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
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-13 16:15:36', '2019-04-13 16:15:36'),
(4, 'subjects', 'subjects', 'Subject', 'Subjects', 'voyager-book', 'App\\Subject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 17:33:54', '2019-04-16 18:46:17'),
(6, 'groups', 'groups', 'Group', 'Groups', 'voyager-group', 'App\\Group', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 17:46:15', '2019-04-16 17:49:11'),
(10, 'user_groups', 'user-groups', 'User Group', 'User Groups', 'voyager-group', 'App\\UserGroup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 17:59:06', '2019-04-16 18:02:03'),
(11, 'group_subjects', 'group-subjects', 'Group Subject', 'Group Subjects', 'voyager-character', 'App\\GroupSubject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 18:06:31', '2019-04-16 18:07:34');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Петушки', '2019-04-16 17:46:27', '2019-04-16 17:46:27');

-- --------------------------------------------------------

--
-- Структура таблицы `group_subjects`
--

CREATE TABLE `group_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `group_subjects`
--

INSERT INTO `group_subjects` (`id`, `group_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-16 18:07:43', '2019-04-16 18:07:43');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-04-13 16:15:36', '2019-04-16 17:45:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-04-13 16:15:37', '2019-04-13 16:15:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-04-13 16:15:37', '2019-04-16 17:45:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-04-13 16:15:37', '2019-04-16 17:45:13', 'voyager.hooks', NULL),
(12, 1, 'Subjects', '', '_self', 'voyager-book', NULL, NULL, 7, '2019-04-16 17:33:54', '2019-04-16 17:45:13', 'voyager.subjects.index', NULL),
(14, 1, 'Groups', '', '_self', 'voyager-people', '#000000', NULL, 8, '2019-04-16 17:46:15', '2019-04-16 18:02:43', 'voyager.groups.index', 'null'),
(18, 1, 'User Groups', '', '_self', 'voyager-group', '#000000', NULL, 9, '2019-04-16 17:59:06', '2019-04-16 18:02:16', 'voyager.user-groups.index', 'null'),
(19, 1, 'Group Subjects', '', '_self', 'voyager-character', NULL, NULL, 10, '2019-04-16 18:06:31', '2019-04-16 18:06:31', 'voyager.group-subjects.index', NULL);

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
(26, 'browse_hooks', NULL, '2019-04-13 16:15:37', '2019-04-13 16:15:37'),
(27, 'browse_subjects', 'subjects', '2019-04-16 17:33:54', '2019-04-16 17:33:54'),
(28, 'read_subjects', 'subjects', '2019-04-16 17:33:54', '2019-04-16 17:33:54'),
(29, 'edit_subjects', 'subjects', '2019-04-16 17:33:54', '2019-04-16 17:33:54'),
(30, 'add_subjects', 'subjects', '2019-04-16 17:33:54', '2019-04-16 17:33:54'),
(31, 'delete_subjects', 'subjects', '2019-04-16 17:33:54', '2019-04-16 17:33:54'),
(37, 'browse_groups', 'groups', '2019-04-16 17:46:15', '2019-04-16 17:46:15'),
(38, 'read_groups', 'groups', '2019-04-16 17:46:15', '2019-04-16 17:46:15'),
(39, 'edit_groups', 'groups', '2019-04-16 17:46:15', '2019-04-16 17:46:15'),
(40, 'add_groups', 'groups', '2019-04-16 17:46:15', '2019-04-16 17:46:15'),
(41, 'delete_groups', 'groups', '2019-04-16 17:46:15', '2019-04-16 17:46:15'),
(57, 'browse_user_groups', 'user_groups', '2019-04-16 17:59:06', '2019-04-16 17:59:06'),
(58, 'read_user_groups', 'user_groups', '2019-04-16 17:59:06', '2019-04-16 17:59:06'),
(59, 'edit_user_groups', 'user_groups', '2019-04-16 17:59:06', '2019-04-16 17:59:06'),
(60, 'add_user_groups', 'user_groups', '2019-04-16 17:59:06', '2019-04-16 17:59:06'),
(61, 'delete_user_groups', 'user_groups', '2019-04-16 17:59:06', '2019-04-16 17:59:06'),
(62, 'browse_group_subjects', 'group_subjects', '2019-04-16 18:06:31', '2019-04-16 18:06:31'),
(63, 'read_group_subjects', 'group_subjects', '2019-04-16 18:06:31', '2019-04-16 18:06:31'),
(64, 'edit_group_subjects', 'group_subjects', '2019-04-16 18:06:31', '2019-04-16 18:06:31'),
(65, 'add_group_subjects', 'group_subjects', '2019-04-16 18:06:31', '2019-04-16 18:06:31'),
(66, 'delete_group_subjects', 'group_subjects', '2019-04-16 18:06:31', '2019-04-16 18:06:31');

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
(26, 3),
(27, 1),
(27, 4),
(28, 1),
(28, 4),
(29, 1),
(29, 4),
(30, 1),
(30, 4),
(31, 1),
(31, 4),
(37, 1),
(37, 4),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(41, 1),
(41, 4),
(57, 1),
(57, 4),
(58, 1),
(58, 4),
(59, 1),
(59, 4),
(60, 1),
(60, 4),
(61, 1),
(61, 4),
(62, 1),
(62, 4),
(63, 1),
(63, 4),
(64, 1),
(64, 4),
(65, 1),
(65, 4),
(66, 1),
(66, 4);

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
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Биология', '<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><strong>Биоло́гия</strong>&nbsp;(<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Греческий язык\" href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B5%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">греч.</a>&nbsp;<span lang=\"el\"><span style=\"font-family: \'palatino linotype\', \'new athena unicode\', athena, gentium, code2000, serif; font-size: 14.7px;\">&beta;&iota;&omicron;&lambda;&omicron;&gamma;ί&alpha;</span></span>; от&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Древнегреческий язык\" href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B5%D0%B3%D1%80%D0%B5%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">др.-греч.</a>&nbsp;<span lang=\"grc\"><span style=\"font-family: \'palatino linotype\', \'new athena unicode\', athena, gentium, code2000, serif; font-size: 14.7px;\">&beta;ί&omicron;&sigmaf;</span></span>&nbsp;&mdash; &laquo;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Жизнь\" href=\"https://ru.wikipedia.org/wiki/%D0%96%D0%B8%D0%B7%D0%BD%D1%8C\">жизнь</a>&raquo; +&nbsp;<span lang=\"grc\"><span style=\"font-family: \'palatino linotype\', \'new athena unicode\', athena, gentium, code2000, serif; font-size: 14.7px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Логос\" href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D0%B3%D0%BE%D1%81\">&lambda;ό&gamma;&omicron;&sigmaf;</a></span></span>&nbsp;&mdash; &laquo;учение,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Наука\" href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D1%83%D0%BA%D0%B0\">наука</a>&raquo;<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B8%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%8F#cite_note-1\">[1]</a></sup>)&nbsp;&mdash;&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Наука\" href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D1%83%D0%BA%D0%B0\">наука</a>&nbsp;о&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Организм\" href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D0%BC\">живых существах</a>&nbsp;и их взаимодействии со&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Окружающая среда\" href=\"https://ru.wikipedia.org/wiki/%D0%9E%D0%BA%D1%80%D1%83%D0%B6%D0%B0%D1%8E%D1%89%D0%B0%D1%8F_%D1%81%D1%80%D0%B5%D0%B4%D0%B0\">средой</a>. Изучает все аспекты&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Жизнь\" href=\"https://ru.wikipedia.org/wiki/%D0%96%D0%B8%D0%B7%D0%BD%D1%8C\">жизни</a>, в частности, структуру, функционирование, рост, происхождение,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Эволюция\" href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%B2%D0%BE%D0%BB%D1%8E%D1%86%D0%B8%D1%8F\">эволюцию</a>&nbsp;и распределение живых организмов на&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Земля\" href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B5%D0%BC%D0%BB%D1%8F\">Земле</a>. Классифицирует и описывает живые существа, происхождение их&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Биологический вид\" href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B8%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B2%D0%B8%D0%B4\">видов</a>, взаимодействие между собой и с&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Окружающая среда\" href=\"https://ru.wikipedia.org/wiki/%D0%9E%D0%BA%D1%80%D1%83%D0%B6%D0%B0%D1%8E%D1%89%D0%B0%D1%8F_%D1%81%D1%80%D0%B5%D0%B4%D0%B0\">окружающей средой</a>.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Как самостоятельная наука биология выделилась из&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Естественные науки\" href=\"https://ru.wikipedia.org/wiki/%D0%95%D1%81%D1%82%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5_%D0%BD%D0%B0%D1%83%D0%BA%D0%B8\">естественных наук</a>&nbsp;в&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"XIX век\" href=\"https://ru.wikipedia.org/wiki/XIX_%D0%B2%D0%B5%D0%BA\">XIX веке</a>, когда учёные обнаружили, что все живые организмы обладают некоторыми общими свойствами и признаками, в совокупности не характерными для неживой природы. Термин &laquo;биология&raquo; был введён независимо несколькими авторами:&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Бурдах, Фридрих\" href=\"https://ru.wikipedia.org/wiki/%D0%91%D1%83%D1%80%D0%B4%D0%B0%D1%85,_%D0%A4%D1%80%D0%B8%D0%B4%D1%80%D0%B8%D1%85\">Фридрихом Бурдахом</a>&nbsp;в 1800 году,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Тревиранус, Готфрид Рейнхольд\" href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B5%D0%B2%D0%B8%D1%80%D0%B0%D0%BD%D1%83%D1%81,_%D0%93%D0%BE%D1%82%D1%84%D1%80%D0%B8%D0%B4_%D0%A0%D0%B5%D0%B9%D0%BD%D1%85%D0%BE%D0%BB%D1%8C%D0%B4\">Готфридом Рейнхольдом Тревиранусом</a>&nbsp;в 1802 году<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B8%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%8F#cite_note-2\">[2]</a></sup>&nbsp;и&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Ламарк, Жан Батист\" href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D0%BC%D0%B0%D1%80%D0%BA,_%D0%96%D0%B0%D0%BD_%D0%91%D0%B0%D1%82%D0%B8%D1%81%D1%82\">Жаном Батистом Ламарком</a>&nbsp;в 1802 году.</p>', 3, '2019-04-16 17:36:00', '2019-04-16 18:47:21');

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
(1, 1, 'Stanislav', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$t.Ck8/znvqlwPp7GGTlpfuOmqrYHz.pMiKOgUWgBXmMC5j.crImW2', '7def7KUkX0c2g1N1fsmFfNPWa8jsu3DWItXGFFvY18IVuDVzRGl3Bo5wRaZW', NULL, '2019-04-13 16:16:08', '2019-04-13 16:16:08'),
(2, 4, 'Администратор', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$c3vxYeNU.fpTX91ut0OfLeqNPmeWLiYbPCbPx6d37C373YtfZqvNi', '7TtTKNhV6Mj0yAX4WiokwWMV5LF3ebYjKzf4fbfuJ24oH1yoIzAA2sv7K3ED', '{\"locale\":\"ru\"}', '2019-04-14 18:25:17', '2019-04-14 18:26:18'),
(3, 3, 'Учитель', 'teacher@admin.com', 'users/default.png', NULL, '$2y$10$qMexa91e1yEhvnZw0qkkX.m3dIPKZ.bF7rahYAG6kfEnffkNqTBUy', '7jPQUVxhW0xW2YTVPBrFUMXnsFker3oDvwvhEdItYOOdFfVnKReyjPqNl5JK', '{\"locale\":\"ru\"}', '2019-04-14 18:41:33', '2019-04-14 18:41:33');

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-04-16 18:00:43', '2019-04-16 18:00:43');

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
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_subjects`
--
ALTER TABLE `group_subjects`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `group_subjects`
--
ALTER TABLE `group_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
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
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
