-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 07:42 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whauliers`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-10-12 16:37:27', '2019-10-12 16:37:27'),
(2, 1, '::1', '2019-10-13 20:28:09', '2019-10-13 20:28:09'),
(3, 1, '::1', '2019-10-13 21:05:49', '2019-10-13 21:05:49'),
(4, 1, '127.0.0.1', '2019-12-22 05:25:12', '2019-12-22 05:25:12'),
(5, 1, '127.0.0.1', '2019-12-22 05:27:32', '2019-12-22 05:27:32'),
(6, 1, '127.0.0.1', '2019-12-22 05:31:31', '2019-12-22 05:31:31'),
(7, 1, '127.0.0.1', '2019-12-22 05:39:54', '2019-12-22 05:39:54'),
(8, 1, '127.0.0.1', '2019-12-22 07:38:08', '2019-12-22 07:38:08'),
(9, 1, '127.0.0.1', '2019-12-22 07:44:23', '2019-12-22 07:44:23'),
(10, 1, '127.0.0.1', '2019-12-23 02:44:00', '2019-12-23 02:44:00'),
(11, 1, '127.0.0.1', '2019-12-23 11:40:58', '2019-12-23 11:40:58'),
(12, 1, '127.0.0.1', '2019-12-24 02:13:02', '2019-12-24 02:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'danielmanji@gmail.com', '$2y$10$XGcGi215v5VEuluK/XP65OdLhnc/I1jdPjhgUJnyIk8Nf2CyrIHGq', NULL, '$2y$10$YLNM5nptej6zm7NlWsHmd.x/GsYt8DV1q0cU79feUcO/K8vxCGzZi', NULL, '', 1, 2, NULL, '2019-12-24 02:13:02', '2019-10-12 16:35:43', '2019-12-24 02:13:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-10-12 16:35:42', '2019-10-12 16:35:42', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-10-12 16:35:42', '2019-10-12 16:35:42'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-10-12 16:35:42', '2019-10-12 16:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'western', '{\"site_name\":\"Western Hauliers Company Ltd\",\"opening_hours\":\"Mon - Sat : 09.00 - 17.00\",\"office_phone\":\"(+255) 789 789 789\",\"office_email\":\"info@westernhauliers.com\",\"footer_about\":\"<p>About Us content is needed here<\\/p>\",\"facebook\":\"http:\\/\\/facebook.com\",\"twitter\":\"http:\\/\\/twitter.com\",\"linkedin\":\"http:\\/\\/linkedin.com\",\"instagram\":\"http:\\/\\/instagram.com\"}', '2019-12-22 05:31:11', '2019-12-22 06:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dchikaka_service_services`
--

CREATE TABLE `dchikaka_service_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teaser` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dchikaka_service_services`
--

INSERT INTO `dchikaka_service_services` (`id`, `title`, `teaser`, `featured_img`, `banner_img`, `slug`, `content`) VALUES
(2, 'Overland Network', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation.', '', NULL, 'overland-network', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>'),
(3, 'Ocean NetWork', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation', '', NULL, 'ocean-network', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>'),
(4, 'Air Freight', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation', '', NULL, 'air-freight', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>'),
(5, 'Cargo', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation', '', NULL, 'cargo', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>'),
(6, 'Storage', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation', '', NULL, 'storage', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>'),
(7, 'Warehousing', 'As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation', '', NULL, 'warehousing', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa molestias, aperiam sint aliquam assumenda illo praesentium, delectus facere quia laboriosam tempora optio quos culpa enim accusamus officia nisi inventore provident?</p>');

-- --------------------------------------------------------

--
-- Table structure for table `dchikaka_statistic_statistics`
--

CREATE TABLE `dchikaka_statistic_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `summary` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dchikaka_statistic_statistics`
--

INSERT INTO `dchikaka_statistic_statistics` (`id`, `summary`, `title`, `content`) VALUES
(1, '1,273', 'Delivered Packages', 'The core values are the guiding principles that dictate behavior and action.'),
(2, '473,754', 'KM Per Year', 'The core values are the guiding principles that dictate behavior and action.'),
(3, '25', 'Years of Experience', 'The core values are the guiding principles that dictate behavior and action.'),
(4, '719', 'Happy Clients', 'The core values are the guiding principles that dictate behavior and action.'),
(5, '4,234', 'Tons of Goods', 'The core values are the guiding principles that dictate behavior and action.');

-- --------------------------------------------------------

--
-- Table structure for table `dchikaka_testimonial_testimonials`
--

CREATE TABLE `dchikaka_testimonial_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dchikaka_testimonial_testimonials`
--

INSERT INTO `dchikaka_testimonial_testimonials` (`id`, `author_name`, `author_title`, `author_img`, `content`) VALUES
(1, 'Joram Kiango', 'CEO of National Bank of Business', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.'),
(2, 'John Doe', 'CTO of Candy Skull', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.'),
(3, 'Daniel Mussolini', 'CEO of Afican Aventures', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.'),
(4, 'Laurent Kikumpa', 'Manager of TATEPA', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.');

-- --------------------------------------------------------

--
-- Table structure for table `dchikaka_whyus_whyus`
--

CREATE TABLE `dchikaka_whyus_whyus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dchikaka_whyus_whyus`
--

INSERT INTO `dchikaka_whyus_whyus` (`id`, `title`, `content`, `icon`) VALUES
(1, 'Ground Shipping', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-delivery'),
(2, 'Air Delivery', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-airplane'),
(3, 'Sea Delivery', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-cargo'),
(4, 'Forwarding Services', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-container'),
(5, 'Packaged Goods', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-box-delivery'),
(6, 'Warehousing', 'Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.', 'icon-storage');

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(9, 'dchikaka\\service\\Models\\Service', 'banner_img', 'System\\Models\\File', '9', '8rnvZO2oFs8wFQdfF78Hh5WfmU2kU816t5jq8N1z', 1, '2019-12-23 03:27:01', '2019-12-23 03:27:01'),
(10, 'dchikaka\\service\\Models\\Service', 'featured_img', 'System\\Models\\File', '8', '8rnvZO2oFs8wFQdfF78Hh5WfmU2kU816t5jq8N1z', 0, '2019-12-23 03:27:52', '2019-12-23 03:27:52'),
(13, 'dchikaka\\service\\Models\\Service', 'featured_img', 'System\\Models\\File', '12', '8rnvZO2oFs8wFQdfF78Hh5WfmU2kU816t5jq8N1z', 1, '2019-12-23 05:11:09', '2019-12-23 05:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slides`
--

CREATE TABLE `flosch_slideshow_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slideshow_id` int(10) UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `unpublished_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slides`
--

INSERT INTO `flosch_slideshow_slides` (`id`, `name`, `description`, `link`, `sort_order`, `created_at`, `updated_at`, `slideshow_id`, `is_published`, `published_at`, `unpublished_at`) VALUES
(4, 'Passengers Transport', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', '#', 4, '2019-12-22 08:25:25', '2019-12-22 08:25:25', 2, 1, '2019-12-22 11:24:38', NULL),
(5, 'We Deliver Your Goods Fast', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>', '#', 5, '2019-12-22 08:26:26', '2019-12-22 08:31:58', 2, 1, '2019-12-21 11:26:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slideshows`
--

CREATE TABLE `flosch_slideshow_slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slideshows`
--

INSERT INTO `flosch_slideshow_slideshows` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Main Home Page', '2019-12-22 08:23:48', '2019-12-22 08:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Table structure for table `offline_sitesearch_query_logs`
--

CREATE TABLE `offline_sitesearch_query_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2019-12-22 06:16:02', '2019-12-22 06:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, 1, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2019-12-22 06:16:02', 1, '2019-12-22 06:16:02', '2019-12-22 06:16:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_sitemap_definitions`
--

CREATE TABLE `rainlab_sitemap_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'home', '{\"x\":\"Home\"}');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'ErrorException: syntax error, unexpected \'=\' in Unknown on line 6\n in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Parse\\Ini.php:23\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'syntax error, u...\', \'C:\\\\xampp\\\\htdocs...\', 23, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Parse\\Ini.php(23): parse_ini_string(\'title = \"Home\" ...\', true)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(221): October\\Rain\\Parse\\Ini->parse(\'title = \"Home\" ...\')\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsCompoundObject.php(123): Illuminate\\Support\\Facades\\Facade::__callStatic(\'parse\', Array)\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsCompoundObject.php(90): Cms\\Classes\\CmsCompoundObject->validateSettings()\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(244): Cms\\Classes\\CmsCompoundObject->afterFetch()\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(Cms\\Classes\\Page))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(238): October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(228): October\\Rain\\Halcyon\\Builder->first()\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(110): October\\Rain\\Halcyon\\Builder->find(\'home.htm\')\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(133): Cms\\Classes\\CmsObject::loadCached(Object(Cms\\Classes\\Theme), \'home.htm\')\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Theme.php(131): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), false)\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Router.php(242): Cms\\Classes\\Theme->listPages()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Router.php(213): Cms\\Classes\\Router->loadUrlMap()\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Router.php(194): Cms\\Classes\\Router->getUrlMap()\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Router.php(114): Cms\\Classes\\Router->getRouterObject()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(153): Cms\\Classes\\Router->findByUrl(\'/\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#27 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#64 {main}', NULL, '2019-10-13 04:01:21', '2019-10-13 04:01:21'),
(2, 'error', 'Twig\\Error\\SyntaxError: Unexpected \"opening_hours\" tag (expecting closing tag for the \"if\" tag defined near line 20) in \"C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/header.htm\" at line 25. in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Parser.php:169\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\TokenParser\\IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\storage\\cms\\twig\\b4\\b46f526cce8a2412a665d611414c65c1926e5b38c2b41382e7f30aea12c93c08.php(124): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_c9f5f37e3e05870e1f8c6cc32ca73474db317c7f34c36719121480957d025f8d->doDisplay(Array, Array)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#16 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#54 {main}', NULL, '2019-12-22 05:20:17', '2019-12-22 05:20:17'),
(3, 'error', 'Twig\\Error\\SyntaxError: Unknown \"this\" tag in \"C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/header.htm\" at line 24. in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Parser.php:175\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\storage\\cms\\twig\\b4\\b46f526cce8a2412a665d611414c65c1926e5b38c2b41382e7f30aea12c93c08.php(124): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_c9f5f37e3e05870e1f8c6cc32ca73474db317c7f34c36719121480957d025f8d->doDisplay(Array, Array)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#14 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#52 {main}', NULL, '2019-12-22 05:22:02', '2019-12-22 05:22:02');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(238): October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(228): October\\Rain\\Halcyon\\Builder->first()\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(110): October\\Rain\\Halcyon\\Builder->find(\'main-menu\')\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(77): Cms\\Classes\\CmsObject::loadCached(Object(Cms\\Classes\\Theme), \'main-menu\')\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(63): RainLab\\Pages\\Components\\StaticMenu->menuItems()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsCompoundObject.php(172): RainLab\\Pages\\Components\\StaticMenu->onRun()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(1077): Cms\\Classes\\CmsCompoundObject->runComponents()\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'staticMenu\', Array, true)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\storage\\cms\\twig\\fe\\fed8dcf3dd774ac17449814cfb9866cb350b0779cb77ba893f170f626edba78a.php(105): Cms\\Twig\\Extension->partialFunction(\'nav\', Array, true)\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_3f2cecad6615e26048e6b525528b5f9d2984f4b6d4dbb770ffc9a9c8b0bcb8cb->doDisplay(Array, Array)\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(1088): Twig\\Template->render(Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'staticMenu\', Array, true)\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\storage\\cms\\twig\\b4\\b46f526cce8a2412a665d611414c65c1926e5b38c2b41382e7f30aea12c93c08.php(128): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_c9f5f37e3e05870e1f8c6cc32ca73474db317c7f34c36719121480957d025f8d->doDisplay(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#37 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\translate\\classes\\LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#71 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#73 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#74 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#75 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#76 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#77 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#78 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"array_key_exists() expects parameter 2 to be array, null given\") in \"C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/header.htm\" at line 54. in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(1088): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'staticMenu\', Array, true)\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\storage\\cms\\twig\\b4\\b46f526cce8a2412a665d611414c65c1926e5b38c2b41382e7f30aea12c93c08.php(128): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_c9f5f37e3e05870e1f8c6cc32ca73474db317c7f34c36719121480957d025f8d->doDisplay(Array, Array)\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\translate\\classes\\LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#52 {main}', NULL, '2019-12-22 07:22:45', '2019-12-22 07:22:45'),
(5, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:23:13', '2019-12-22 07:23:13'),
(6, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:23:31', '2019-12-22 07:23:31');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(7, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:24:21', '2019-12-22 07:24:21'),
(8, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:31:28', '2019-12-22 07:31:28'),
(9, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:31:38', '2019-12-22 07:31:38'),
(10, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\components\\StaticMenu.php(52): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\traits\\InspectableContainer.php(55): RainLab\\Pages\\Components\\StaticMenu->getCodeOptions()\n#21 [internal function]: Cms\\Controllers\\Index->onInspectableGetOptions()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(620): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'cms\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-22 07:32:23', '2019-12-22 07:32:23');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(11, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(80): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(51): RainLab\\Pages\\Widgets\\MenuList->getData()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\_sidepanel.htm(9): RainLab\\Pages\\Widgets\\MenuList->render()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\index.htm(3): Backend\\Classes\\Controller->makePartial(\'_sidepanel.htm\')\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(411): Backend\\Classes\\Controller->makeView(\'index\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#30 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#71 {main}', NULL, '2019-12-22 07:35:28', '2019-12-22 07:35:28'),
(12, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(80): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(51): RainLab\\Pages\\Widgets\\MenuList->getData()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\_sidepanel.htm(9): RainLab\\Pages\\Widgets\\MenuList->render()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\index.htm(3): Backend\\Classes\\Controller->makePartial(\'_sidepanel.htm\')\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(411): Backend\\Classes\\Controller->makeView(\'index\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#30 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#71 {main}', NULL, '2019-12-22 07:35:48', '2019-12-22 07:35:48'),
(13, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(80): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(51): RainLab\\Pages\\Widgets\\MenuList->getData()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\_sidepanel.htm(9): RainLab\\Pages\\Widgets\\MenuList->render()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\index.htm(3): Backend\\Classes\\Controller->makePartial(\'_sidepanel.htm\')\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(411): Backend\\Classes\\Controller->makeView(\'index\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#30 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#71 {main}', NULL, '2019-12-22 07:36:30', '2019-12-22 07:36:30');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(14, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(80): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(51): RainLab\\Pages\\Widgets\\MenuList->getData()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\_sidepanel.htm(9): RainLab\\Pages\\Widgets\\MenuList->render()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\index.htm(3): Backend\\Classes\\Controller->makePartial(\'_sidepanel.htm\')\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(411): Backend\\Classes\\Controller->makeView(\'index\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#30 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#71 {main}', NULL, '2019-12-22 07:37:37', '2019-12-22 07:37:37'),
(15, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, null given in C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php:116\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'C:\\\\xampp\\\\htdocs...\', 116, Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\classes\\Menu.php(116): array_key_exists(\'name\', NULL)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\Meta.php(45): RainLab\\Pages\\Classes\\Menu->parseContent()\n#3 [internal function]: Cms\\Classes\\Meta->Cms\\Classes\\{closure}()\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Support\\Traits\\Emitter.php(133): call_user_func_array(Object(Closure), Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(241): October\\Rain\\Halcyon\\Model->fireEvent(\'model.afterFetc...\')\n#6 [internal function]: October\\Rain\\Halcyon\\Model->October\\Rain\\Halcyon\\{closure}(Object(RainLab\\Pages\\Classes\\Menu))\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Events\\Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'halcyon.fetched...\', Array, false)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1339): October\\Rain\\Events\\Dispatcher->fire(\'halcyon.fetched...\', Object(RainLab\\Pages\\Classes\\Menu))\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(486): October\\Rain\\Halcyon\\Model->fireModelEvent(\'halcyon.fetched...\', false)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(505): October\\Rain\\Halcyon\\Model->newFromBuilder(Array)\n#12 [internal function]: October\\Rain\\Halcyon\\Model::October\\Rain\\Halcyon\\{closure}(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(504): array_map(Object(Closure), Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(455): October\\Rain\\Halcyon\\Model::hydrate(Array, \'western\')\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Builder.php(256): October\\Rain\\Halcyon\\Builder->getModels(Array)\n#16 [internal function]: October\\Rain\\Halcyon\\Builder->get()\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Halcyon\\Model.php(1677): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\cms\\classes\\CmsObject.php(127): October\\Rain\\Halcyon\\Model->__call(\'get\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(80): Cms\\Classes\\CmsObject::listInTheme(Object(Cms\\Classes\\Theme), true)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\widgets\\MenuList.php(51): RainLab\\Pages\\Widgets\\MenuList->getData()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\_sidepanel.htm(9): RainLab\\Pages\\Widgets\\MenuList->render()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\plugins\\rainlab\\pages\\controllers\\index\\index.htm(3): Backend\\Classes\\Controller->makePartial(\'_sidepanel.htm\')\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(247): include(\'C:\\\\xampp\\\\htdocs...\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\system\\traits\\ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\xampp\\\\htdocs...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(411): Backend\\Classes\\Controller->makeView(\'index\')\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#30 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#71 {main}', NULL, '2019-12-22 07:38:13', '2019-12-22 07:38:13');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(16, 'error', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'updated_at\' in \'field list\' in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php:77\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php(77): PDO->prepare(\'insert into `dc...\', Array)\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(452): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'insert into `dc...\')\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(657): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'insert into `dc...\', Array)\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `dc...\', Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `dc...\', Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `dc...\', Array)\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `dc...\', Array)\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `dc...\', Array, \'id\')\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(253): October\\Rain\\Database\\Model->save(NULL, \'Z9gd3ZnM380F6rt...\')\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(255): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#21 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'create_onSave\', Array)\n#24 [internal function]: Backend\\Classes\\Controller->__call(\'create_onSave\', Array)\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(612): call_user_func_array(Array, Array)\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'create\', Array)\n#29 [internal function]: Backend\\Classes\\BackendController->run(\'dchikaka/testim...\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#69 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#70 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'updated_at\' in \'field list\' in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php:79\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(452): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'insert into `dc...\')\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(657): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'insert into `dc...\', Array)\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `dc...\', Array, Object(Closure))\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `dc...\', Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `dc...\', Array)\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `dc...\', Array)\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `dc...\', Array, \'id\')\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(253): October\\Rain\\Database\\Model->save(NULL, \'Z9gd3ZnM380F6rt...\')\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#18 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(255): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#20 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#21 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'create_onSave\', Array)\n#23 [internal function]: Backend\\Classes\\Controller->__call(\'create_onSave\', Array)\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(612): call_user_func_array(Array, Array)\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#26 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'create\', Array)\n#28 [internal function]: Backend\\Classes\\BackendController->run(\'dchikaka/testim...\')\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#67 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#68 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#69 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'updated_at\' in \'field list\' (SQL: insert into `dchikaka_testimonial_testimonials` (`author_name`, `author_title`, `content`, `updated_at`, `created_at`) values (Joram Kiango, CEO of National Bank of Business, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam., 2019-12-24 06:02:35, 2019-12-24 06:02:35)) in C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:664\nStack trace:\n#0 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `dc...\', Array, Object(Closure))\n#1 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `dc...\', Array, Object(Closure))\n#2 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `dc...\', Array)\n#3 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `dc...\', Array)\n#4 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `dc...\', Array, \'id\')\n#5 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#6 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#7 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#8 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#9 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#10 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#11 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#12 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Database\\Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#13 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(253): October\\Rain\\Database\\Model->save(NULL, \'Z9gd3ZnM380F6rt...\')\n#14 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#15 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#16 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#17 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\behaviors\\FormController.php(255): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#18 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#19 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#20 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'create_onSave\', Array)\n#21 [internal function]: Backend\\Classes\\Controller->__call(\'create_onSave\', Array)\n#22 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(612): call_user_func_array(Array, Array)\n#23 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(470): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#24 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\Controller.php(267): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'create\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'dchikaka/testim...\')\n#27 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#32 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\ndondo\\whauliers\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#64 C:\\xampp\\htdocs\\ndondo\\whauliers\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#65 C:\\xampp\\htdocs\\ndondo\\whauliers\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#66 C:\\xampp\\htdocs\\ndondo\\whauliers\\server.php(18): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#67 {main}', NULL, '2019-12-24 03:02:35', '2019-12-24 03:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5dff529dc3362024918427.jpg', 'slide1.jpg', 177400, 'image/jpeg', NULL, NULL, 'image', '4', 'Flosch\\Slideshow\\Models\\Slide', 1, 1, '2019-12-22 08:25:17', '2019-12-22 08:25:25'),
(2, '5dff52dfbd349667786879.jpg', 'slide2.jpg', 576879, 'image/jpeg', NULL, NULL, 'image', '5', 'Flosch\\Slideshow\\Models\\Slide', 1, 2, '2019-12-22 08:26:23', '2019-12-22 08:26:26'),
(3, '5e005c6b54d9e773063858.jpg', 'services-item-1.jpg', 191832, 'image/jpeg', NULL, NULL, 'featured_img', '2', 'dchikaka\\service\\Models\\Service', 1, 3, '2019-12-23 03:19:23', '2019-12-23 03:20:17'),
(4, '5e005d0bba7e4515133112.jpg', 'services-item-2.jpg', 270861, 'image/jpeg', NULL, NULL, 'featured_img', '3', 'dchikaka\\service\\Models\\Service', 1, 4, '2019-12-23 03:22:03', '2019-12-23 03:22:06'),
(5, '5e005d6446069921625424.jpg', 'services-item-3.jpg', 149099, 'image/jpeg', NULL, NULL, 'featured_img', '4', 'dchikaka\\service\\Models\\Service', 1, 5, '2019-12-23 03:23:32', '2019-12-23 03:23:35'),
(6, '5e005d99b98f3265580480.jpg', 'services-item-4.jpg', 205592, 'image/jpeg', NULL, NULL, 'featured_img', '5', 'dchikaka\\service\\Models\\Service', 1, 6, '2019-12-23 03:24:25', '2019-12-23 03:24:30'),
(7, '5e005dbe5ac21041090036.jpg', 'services-item-5.jpg', 347105, 'image/jpeg', NULL, NULL, 'featured_img', '6', 'dchikaka\\service\\Models\\Service', 1, 7, '2019-12-23 03:25:02', '2019-12-23 03:25:15'),
(9, '5e005e355efbe027011366.jpg', 'about-page-bg.jpg', 24210, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 9, '2019-12-23 03:27:01', '2019-12-23 03:27:01'),
(12, '5e00769dafc0c397301458.jpg', 'services-item-6.jpg', 460024, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 12, '2019-12-23 05:11:09', '2019-12-23 05:11:09'),
(13, '5e007f9bc145d007601735.jpg', 'about-page-bg.jpg', 24210, 'image/jpeg', NULL, NULL, 'banner_img', '7', 'dchikaka\\service\\Models\\Service', 1, 13, '2019-12-23 05:49:31', '2019-12-23 06:24:41'),
(15, '5e00889481777247957018.jpg', 'services-item-6.jpg', 460024, 'image/jpeg', NULL, NULL, 'featured_img', '7', 'dchikaka\\service\\Models\\Service', 1, 15, '2019-12-23 06:27:48', '2019-12-23 06:27:54'),
(16, '5e01a9f371986108927478.png', 'client-photo-1.png', 1893, 'image/png', NULL, NULL, 'author_img', '1', 'dchikaka\\Testimonial\\Models\\Testimonial', 1, 16, '2019-12-24 03:02:27', '2019-12-24 03:03:13'),
(17, '5e01aa5249081602076026.png', 'client-photo-1.png', 1893, 'image/png', NULL, NULL, 'author_img', '2', 'dchikaka\\Testimonial\\Models\\Testimonial', 1, 17, '2019-12-24 03:04:02', '2019-12-24 03:04:05'),
(18, '5e01aa729b6b8924126675.png', 'client-photo-1.png', 1893, 'image/png', NULL, NULL, 'author_img', '3', 'dchikaka\\Testimonial\\Models\\Testimonial', 1, 18, '2019-12-24 03:04:34', '2019-12-24 03:04:36'),
(19, '5e01aa90e9a84417770642.png', 'client-photo-1.png', 1893, 'image/png', NULL, NULL, 'author_img', '4', 'dchikaka\\Testimonial\\Models\\Testimonial', 1, 19, '2019-12-24 03:05:04', '2019-12-24 03:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-12 16:35:42', '2019-10-12 16:35:42'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-12 16:35:42', '2019-10-12 16:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"7ecf00bd75e60458191bfcdc43dc14e5\"'),
(3, 'system', 'core', 'build', '\"458\"'),
(4, 'system', 'update', 'retry', '1577755333'),
(5, 'system', 'theme', 'history', '{\"Kenshin.KenshinSchool\":\"kenshin-kenshinschool\"}'),
(6, 'cms', 'theme', 'active', '\"western\"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-10-12 16:35:42'),
(2, 'RainLab.Sitemap', 'comment', '1.0.1', 'First version of Sitemap', '2019-12-22 06:13:55'),
(3, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2019-12-22 06:13:55'),
(4, 'RainLab.Sitemap', 'comment', '1.0.2', 'Create definitions table', '2019-12-22 06:13:55'),
(5, 'RainLab.Sitemap', 'comment', '1.0.3', 'Minor improvements to the code.', '2019-12-22 06:13:55'),
(6, 'RainLab.Sitemap', 'comment', '1.0.4', 'Fixes issue where correct headers not being sent.', '2019-12-22 06:13:55'),
(7, 'RainLab.Sitemap', 'comment', '1.0.5', 'Minor back-end styling fix.', '2019-12-22 06:13:55'),
(8, 'RainLab.Sitemap', 'comment', '1.0.6', 'Minor fix to internal API.', '2019-12-22 06:13:55'),
(9, 'RainLab.Sitemap', 'comment', '1.0.7', 'Added access premissions.', '2019-12-22 06:13:55'),
(10, 'RainLab.Sitemap', 'comment', '1.0.8', 'Minor styling updates.', '2019-12-22 06:13:55'),
(11, 'RainLab.Sitemap', 'comment', '1.0.9', 'Replaced the 500 error with 404 when no definition is found. Added Czech translation. Improved Turkish, Hungarian and Portuguese (Brazil) translations.', '2019-12-22 06:13:55'),
(12, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-22 06:14:18'),
(13, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-12-22 06:14:18'),
(14, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-12-22 06:14:18'),
(15, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-12-22 06:14:18'),
(16, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-12-22 06:14:18'),
(17, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-12-22 06:14:18'),
(18, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-12-22 06:14:18'),
(19, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-12-22 06:14:18'),
(20, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-12-22 06:14:18'),
(21, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-12-22 06:14:18'),
(22, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-12-22 06:14:18'),
(23, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-12-22 06:14:18'),
(24, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-12-22 06:14:18'),
(25, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-12-22 06:14:18'),
(26, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-12-22 06:14:18'),
(27, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-12-22 06:14:18'),
(28, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-12-22 06:14:18'),
(29, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-12-22 06:14:18'),
(30, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-12-22 06:14:18'),
(31, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-12-22 06:14:18'),
(32, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-12-22 06:14:18'),
(33, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-12-22 06:14:18'),
(34, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-12-22 06:14:18'),
(35, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-12-22 06:14:18'),
(36, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-12-22 06:14:18'),
(37, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2019-12-22 06:14:18'),
(75, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2019-12-22 06:16:02'),
(76, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2019-12-22 06:16:02'),
(77, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2019-12-22 06:16:02'),
(78, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-22 06:16:02'),
(79, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2019-12-22 06:16:02'),
(80, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2019-12-22 06:16:02'),
(81, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2019-12-22 06:16:02'),
(82, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2019-12-22 06:16:02'),
(83, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2019-12-22 06:16:02'),
(84, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2019-12-22 06:16:02'),
(85, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2019-12-22 06:16:02'),
(86, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2019-12-22 06:16:02'),
(87, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2019-12-22 06:16:02'),
(88, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2019-12-22 06:16:02'),
(89, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2019-12-22 06:16:02'),
(90, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2019-12-22 06:16:02'),
(91, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2019-12-22 06:16:02'),
(92, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2019-12-22 06:16:02'),
(93, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2019-12-22 06:16:02'),
(94, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2019-12-22 06:16:03'),
(95, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2019-12-22 06:16:03'),
(96, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2019-12-22 06:16:03'),
(97, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2019-12-22 06:16:03'),
(98, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2019-12-22 06:16:03'),
(99, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2019-12-22 06:16:03'),
(100, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2019-12-22 06:16:03'),
(101, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2019-12-22 06:16:03'),
(102, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-12-22 06:16:03'),
(103, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2019-12-22 06:16:03'),
(104, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2019-12-22 06:16:03'),
(105, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2019-12-22 06:16:03'),
(106, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2019-12-22 06:16:03'),
(107, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2019-12-22 06:16:03'),
(108, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2019-12-22 06:16:03'),
(109, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2019-12-22 06:16:03'),
(110, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2019-12-22 06:16:03'),
(111, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2019-12-22 06:16:03'),
(112, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2019-12-22 06:16:03'),
(113, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-12-22 06:16:03'),
(114, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2019-12-22 06:16:03'),
(115, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2019-12-22 06:16:03'),
(116, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2019-12-22 06:16:03'),
(117, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2019-12-22 06:16:03'),
(118, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2019-12-22 06:16:03'),
(119, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2019-12-22 06:16:03'),
(120, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2019-12-22 06:16:03'),
(121, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2019-12-22 06:16:03'),
(122, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2019-12-22 06:16:03'),
(123, 'RainLab.Blog', 'comment', '1.3.4', 'Allow post author to be specified. Improved translations.', '2019-12-22 06:16:03'),
(124, 'RainLab.Blog', 'comment', '1.3.5', 'Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.', '2019-12-22 06:16:03'),
(125, 'RainLab.Blog', 'comment', '1.3.6', 'Improved French translations.', '2019-12-22 06:16:03'),
(126, 'RainLab.Blog', 'comment', '1.4.0', 'Stability improvements. Rollback custom slug names for components', '2019-12-22 06:16:03'),
(127, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2019-12-22 06:22:44'),
(128, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2019-12-22 06:22:44'),
(129, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2019-12-22 06:22:44'),
(130, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2019-12-22 06:22:44'),
(131, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2019-12-22 06:22:44'),
(132, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2019-12-22 06:22:44'),
(133, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2019-12-22 06:22:44'),
(134, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2019-12-22 06:22:44'),
(135, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2019-12-22 06:22:44'),
(136, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2019-12-22 06:22:44'),
(137, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2019-12-22 06:22:44'),
(138, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2019-12-22 06:22:44'),
(139, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2019-12-22 06:22:44'),
(140, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2019-12-22 06:22:44'),
(141, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2019-12-22 06:22:44'),
(142, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2019-12-22 06:22:44'),
(143, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2019-12-22 06:22:44'),
(144, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2019-12-22 06:22:44'),
(145, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2019-12-22 06:22:44'),
(146, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2019-12-22 06:22:44'),
(147, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2019-12-22 06:22:44'),
(148, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2019-12-22 06:22:44'),
(149, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2019-12-22 06:22:44'),
(150, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2019-12-22 06:22:44'),
(151, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2019-12-22 06:22:44'),
(152, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2019-12-22 06:22:44'),
(153, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2019-12-22 06:22:44'),
(154, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2019-12-22 06:22:44'),
(155, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2019-12-22 06:22:44'),
(156, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2019-12-22 06:22:44'),
(157, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2019-12-22 06:22:44'),
(158, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2019-12-22 06:22:44'),
(159, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2019-12-22 06:22:44'),
(160, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2019-12-22 06:22:44'),
(161, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2019-12-22 06:22:44'),
(162, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2019-12-22 06:22:44'),
(163, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2019-12-22 06:22:44'),
(164, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2019-12-22 06:22:44'),
(165, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2019-12-22 06:22:44'),
(166, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2019-12-22 06:22:44'),
(167, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-12-22 06:22:44'),
(168, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2019-12-22 06:22:44'),
(169, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2019-12-22 06:22:44'),
(170, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2019-12-22 06:22:45'),
(171, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2019-12-22 06:22:45'),
(172, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2019-12-22 06:22:45'),
(173, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2019-12-22 06:22:45'),
(174, 'RainLab.Pages', 'comment', '1.3.0', 'Added support for using Database-driven Themes when enabled in the CMS configuration.', '2019-12-22 06:22:45'),
(175, 'RainLab.Pages', 'comment', '1.3.1', 'Added ChildPages Component, prevent hidden pages from being returned via menu item resolver.', '2019-12-22 06:22:45'),
(176, 'RainLab.Pages', 'comment', '1.3.2', 'Fixes error when creating a subpage whose parent has no layout set.', '2019-12-22 06:22:45'),
(177, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2019-12-22 06:24:34'),
(178, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2019-12-22 06:24:34'),
(179, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2019-12-22 06:24:34'),
(180, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2019-12-22 06:24:34'),
(181, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2019-12-22 06:24:34'),
(182, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2019-12-22 06:24:34'),
(183, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2019-12-22 06:24:34'),
(184, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2019-12-22 06:24:34'),
(185, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2019-12-22 06:24:34'),
(186, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2019-12-22 06:24:35'),
(187, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2019-12-22 06:24:35'),
(188, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2019-12-22 06:24:35'),
(189, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2019-12-22 06:24:35'),
(190, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2019-12-22 06:24:35'),
(191, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2019-12-22 06:24:35'),
(192, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2019-12-22 06:24:35'),
(193, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2019-12-22 06:24:35'),
(194, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2019-12-22 06:24:35'),
(195, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2019-12-22 06:24:35'),
(196, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2019-12-22 06:24:35'),
(197, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2019-12-22 06:24:35'),
(198, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2019-12-22 06:24:35'),
(199, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2019-12-22 06:24:35'),
(200, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2019-12-22 06:24:35'),
(201, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2019-12-22 06:24:35'),
(202, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2019-12-22 06:24:35'),
(203, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2019-12-22 06:24:35'),
(204, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2019-12-22 06:24:35'),
(205, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2019-12-22 06:24:35'),
(206, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2019-12-22 06:24:35'),
(207, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2019-12-22 06:24:35'),
(208, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2019-12-22 06:24:35'),
(209, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2019-12-22 06:24:35'),
(210, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2019-12-22 06:24:35'),
(211, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2019-12-22 06:24:35'),
(212, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2019-12-22 06:24:35'),
(213, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2019-12-22 06:24:35'),
(214, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2019-12-22 06:24:35'),
(215, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2019-12-22 06:24:35'),
(216, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2019-12-22 06:24:35'),
(217, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2019-12-22 06:24:35'),
(218, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2019-12-22 06:24:35'),
(219, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2019-12-22 06:24:35'),
(220, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2019-12-22 06:24:35'),
(221, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2019-12-22 06:24:35'),
(222, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2019-12-22 06:24:35'),
(223, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2019-12-22 06:24:35'),
(224, 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2019-12-22 06:24:35'),
(225, 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2019-12-22 06:24:36'),
(226, 'RainLab.Translate', 'comment', '1.4.2', 'Add multilingual MediaFinder', '2019-12-22 06:24:36'),
(227, 'RainLab.Translate', 'comment', '1.4.3', '!!! Please update OctoberCMS to Build 444 before updating this plugin. Added ability to translate CMS Pages fields (e.g. title, description, meta-title, meta-description)', '2019-12-22 06:24:36'),
(228, 'RainLab.Translate', 'comment', '1.4.4', 'Minor improvements to compatibility with Laravel framework.', '2019-12-22 06:24:36'),
(229, 'RainLab.Translate', 'comment', '1.4.5', 'Fixed issue when using the language switcher', '2019-12-22 06:24:36'),
(230, 'RainLab.Translate', 'comment', '1.5.0', 'Compatibility fix with Build 451', '2019-12-22 06:24:36'),
(231, 'RainLab.Translate', 'comment', '1.6.0', 'Make File Upload widget properties translatable. Merge Repeater core changes into MLRepeater widget. Add getter method to retrieve original translate data.', '2019-12-22 06:24:36'),
(232, 'RainLab.Translate', 'comment', '1.6.1', 'Add ability for models to provide translated computed data, add option to disable locale prefix routing', '2019-12-22 06:24:36'),
(233, 'RainLab.Translate', 'comment', '1.6.2', 'Implement localeUrl filter, add per-locale theme configuration support', '2019-12-22 06:24:36'),
(234, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2019-12-22 06:25:24'),
(235, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2019-12-22 06:25:24'),
(236, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-22 06:25:24'),
(237, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2019-12-22 06:25:24'),
(238, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2019-12-22 06:25:24'),
(239, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2019-12-22 06:25:24'),
(240, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2019-12-22 06:25:24'),
(241, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2019-12-22 06:25:25'),
(242, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2019-12-22 06:25:25'),
(243, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2019-12-22 06:25:25'),
(244, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2019-12-22 06:25:25'),
(245, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2019-12-22 06:25:25'),
(246, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2019-12-22 06:25:25'),
(247, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2019-12-22 06:25:25'),
(248, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2019-12-22 06:25:25'),
(249, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2019-12-22 06:25:25'),
(250, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2019-12-22 06:25:25'),
(251, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2019-12-22 06:25:25'),
(252, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2019-12-22 06:25:25'),
(253, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2019-12-22 06:25:25'),
(254, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2019-12-22 06:25:25'),
(255, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2019-12-22 06:25:25'),
(256, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2019-12-22 06:25:25'),
(257, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2019-12-22 06:25:26'),
(258, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2019-12-22 06:25:26'),
(259, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2019-12-22 06:25:26'),
(260, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2019-12-22 06:25:26'),
(261, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2019-12-22 06:25:26'),
(262, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2019-12-22 06:25:26'),
(263, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2019-12-22 06:25:26'),
(264, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2019-12-22 06:25:26'),
(265, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2019-12-22 06:25:26'),
(266, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2019-12-22 06:25:26'),
(267, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2019-12-22 06:25:26'),
(268, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2019-12-22 06:25:26'),
(269, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2019-12-22 06:25:26'),
(270, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2019-12-22 06:25:26'),
(271, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-12-22 06:25:26'),
(272, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2019-12-22 06:25:26'),
(273, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2019-12-22 06:25:26'),
(274, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2019-12-22 06:25:26'),
(275, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2019-12-22 06:25:26'),
(276, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2019-12-22 06:25:26'),
(277, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2019-12-22 06:25:26'),
(278, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2019-12-22 06:25:26'),
(279, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2019-12-22 06:25:26'),
(280, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2019-12-22 06:25:26'),
(281, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2019-12-22 06:25:26'),
(282, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2019-12-22 06:25:26'),
(283, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2019-12-22 06:25:26'),
(284, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2019-12-22 06:25:26'),
(285, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2019-12-22 06:25:26'),
(286, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2019-12-22 06:25:26'),
(287, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2019-12-22 06:25:27'),
(288, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2019-12-22 06:25:27'),
(289, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2019-12-22 06:25:27'),
(290, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2019-12-22 06:25:27'),
(291, 'RainLab.User', 'comment', '1.4.7', 'Fixes redirect bug in Account component / Update translations and separate user and group management.', '2019-12-22 06:25:27'),
(292, 'RainLab.User', 'comment', '1.4.8', 'Fixes a bug where calling MailBlocker::removeBlock could remove all mail blocks for the user.', '2019-12-22 06:25:27'),
(293, 'RainLab.User', 'comment', '1.5.0', '!!! Required password length is now a minimum of 8 characters. Previous passwords will not be affected until the next password change.', '2019-12-22 06:25:27'),
(294, 'RainLab.GoogleAnalytics', 'comment', '1.0.1', 'Initialize plugin', '2019-12-22 06:30:52'),
(295, 'RainLab.GoogleAnalytics', 'comment', '1.0.2', 'Fixed a minor bug in the Top Pages widget', '2019-12-22 06:30:52'),
(296, 'RainLab.GoogleAnalytics', 'comment', '1.0.3', 'Minor improvements to the code', '2019-12-22 06:30:52'),
(297, 'RainLab.GoogleAnalytics', 'comment', '1.0.4', 'Fixes a bug where the certificate upload fails', '2019-12-22 06:30:52'),
(298, 'RainLab.GoogleAnalytics', 'comment', '1.0.5', 'Minor fix to support the updated Google Analytics library', '2019-12-22 06:30:52'),
(299, 'RainLab.GoogleAnalytics', 'comment', '1.0.6', 'Fixes dashboard widget using latest Google Analytics library', '2019-12-22 06:30:52'),
(300, 'RainLab.GoogleAnalytics', 'comment', '1.0.7', 'Removes Client ID from settings because the workflow no longer needs it', '2019-12-22 06:30:52'),
(301, 'RainLab.GoogleAnalytics', 'comment', '1.1.0', '!!! Updated to the latest Google API library', '2019-12-22 06:30:52'),
(302, 'RainLab.GoogleAnalytics', 'comment', '1.2.0', 'Update Guzzle library to version 6.0', '2019-12-22 06:30:52'),
(303, 'RainLab.GoogleAnalytics', 'comment', '1.2.1', 'Update the plugin compatibility with RC8 Google API client', '2019-12-22 06:30:52'),
(304, 'RainLab.GoogleAnalytics', 'comment', '1.2.2', 'Improve translations, bump version requirement to PHP 7', '2019-12-22 06:30:52'),
(305, 'RainLab.GoogleAnalytics', 'comment', '1.2.3', 'Added a switch for forceSSL', '2019-12-22 06:30:52'),
(306, 'RainLab.GoogleAnalytics', 'comment', '1.2.4', 'Added permission for dashboard widgets. Added Turkish, Spanish and Estonian translations.', '2019-12-22 06:30:52'),
(307, 'RainLab.Editable', 'comment', '1.0.1', 'First version of Editable', '2019-12-22 06:33:02'),
(308, 'RainLab.Editable', 'comment', '1.0.2', 'Minor security update', '2019-12-22 06:33:02'),
(309, 'RainLab.Editable', 'comment', '1.0.3', 'Content save error fix', '2019-12-22 06:33:02'),
(310, 'RainLab.Editable', 'comment', '1.0.4', 'Fixed references to Redactor\'s \"get\" and \"destroy\" methods', '2019-12-22 06:33:02'),
(311, 'RainLab.Editable', 'comment', '1.0.5', 'Fixed button css issue', '2019-12-22 06:33:02'),
(312, 'RainLab.Editable', 'comment', '1.0.6', 'Remove dependency on backend rich editor control.', '2019-12-22 06:33:02'),
(313, 'PKleindienst.BlogSearch', 'comment', '1.0.1', 'First version of Blog Search', '2019-12-22 06:35:32'),
(314, 'PKleindienst.BlogSearch', 'comment', '1.0.2', 'Fixed error with missing Translate Plugin', '2019-12-22 06:35:32'),
(315, 'PKleindienst.BlogSearch', 'comment', '1.0.3', 'Removed _ filter because it caused to much problems when Translate Plugin is missing', '2019-12-22 06:35:32'),
(316, 'PKleindienst.BlogSearch', 'comment', '1.0.4', 'Replaced POST Method with GET', '2019-12-22 06:35:32'),
(317, 'PKleindienst.BlogSearch', 'comment', '1.0.4', 'Map GET Request to :search url param', '2019-12-22 06:35:32'),
(318, 'PKleindienst.BlogSearch', 'comment', '1.0.4', 'fixed broken navigation', '2019-12-22 06:35:32'),
(319, 'PKleindienst.BlogSearch', 'comment', '1.0.5', 'fixed wrong routing', '2019-12-22 06:35:32'),
(320, 'PKleindienst.BlogSearch', 'comment', '1.0.6', 'included `excerpt` into search', '2019-12-22 06:35:32'),
(321, 'PKleindienst.BlogSearch', 'comment', '1.0.6', 'added option to add `mark` tags (hightlight) to search terms', '2019-12-22 06:35:32'),
(322, 'PKleindienst.BlogSearch', 'comment', '1.1.0', 'added category filter', '2019-12-22 06:35:32'),
(323, 'PKleindienst.BlogSearch', 'comment', '1.1.0', 'added option to exclude categories from results', '2019-12-22 06:35:32'),
(324, 'PKleindienst.BlogSearch', 'comment', '1.1.1', 'remove \'?\' from url if query is empty', '2019-12-22 06:35:32'),
(325, 'PKleindienst.BlogSearch', 'comment', '1.1.1', 'added MIT License', '2019-12-22 06:35:32'),
(326, 'PKleindienst.BlogSearch', 'comment', '1.2.0', 'added option to show only results from selected categories', '2019-12-22 06:35:32'),
(327, 'PKleindienst.BlogSearch', 'comment', '1.2.0', 'added option to disable url mapping (example.com/search?search=Foo instead of example.com/search/Foo)', '2019-12-22 06:35:32'),
(328, 'PKleindienst.BlogSearch', 'comment', '1.2.1', 'fixed bug with missing categories', '2019-12-22 06:35:32'),
(329, 'PKleindienst.BlogSearch', 'comment', '1.2.2', 'optimized query for included/excluded categories', '2019-12-22 06:35:32'),
(330, 'PKleindienst.BlogSearch', 'comment', '1.2.3', 'Fixed bug which caused included/excluded categories not being saved', '2019-12-22 06:35:32'),
(331, 'PKleindienst.BlogSearch', 'comment', '1.2.3', 'added support for Translate Plugin', '2019-12-22 06:35:32'),
(332, 'PKleindienst.BlogSearch', 'comment', '1.2.3', 'merged highlight bug fix for Cyrillic Symbols by thewizardplusplus', '2019-12-22 06:35:32'),
(333, 'PKleindienst.BlogSearch', 'comment', '1.3.0', '!!! Removed support for old Inspector Features prior to October 306', '2019-12-22 06:35:32'),
(334, 'PKleindienst.BlogSearch', 'comment', '1.4.0', 'Add homepage to plugin details by @gergo85', '2019-12-22 06:35:32'),
(335, 'PKleindienst.BlogSearch', 'comment', '1.4.0', 'Fixed pagination reference for non-default component names by @bnordland', '2019-12-22 06:35:32'),
(336, 'PKleindienst.BlogSearch', 'comment', '1.4.0', 'Fixed an issue with post filtering when a category is to be \"included\" that doesn\'t have any blog posts yet by @Harti', '2019-12-22 06:35:32'),
(337, 'Ribsousa.Featuredimages', 'comment', '1.0.1', 'First version of Featuredimages', '2019-12-22 06:38:21'),
(338, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.1', 'First version', '2019-12-22 06:40:40'),
(339, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.2', 'New skin (Thanks Flynsarmy)', '2019-12-22 06:40:40'),
(340, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.3', 'Add setting to automatically apply to cms (Thanks Flynsarmy)', '2019-12-22 06:40:40'),
(341, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.4', 'Added file browser (Upload care), Added setting field for public key', '2019-12-22 06:40:40'),
(342, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.5', 'Error fixed by content and added skin.js file', '2019-12-22 06:40:40'),
(343, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.6', 'Added filebrowser (see documentation), Added new setting option for content entries, code cleanup', '2019-12-22 06:40:40'),
(344, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.7', 'Deleted Uploadcare plugin, changed settings page (skin, editor width and height, toolbar), added save hotkey', '2019-12-22 06:40:40'),
(345, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.8', 'Bug fixed, added editor language support', '2019-12-22 06:40:40'),
(346, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.9', 'Added Youtube plugin, Added ProEvents, ProBlog and Rainlab Static Pages to the settings page, CKeditor updated, code cleanup', '2019-12-22 06:40:40'),
(347, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.10', 'Code cleanup, added thank you message, security fix elfinder', '2019-12-22 06:40:40'),
(348, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.11', 'Update for RC', '2019-12-22 06:40:40'),
(349, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.12', 'Update for RC(2)', '2019-12-22 06:40:41'),
(350, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.13', 'Added component for Editable plugin. See documentation', '2019-12-22 06:40:41'),
(351, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.14', 'Elfinder is replaced for OctoberCMS Media Manger. (Only images for now)', '2019-12-22 06:40:41'),
(352, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.15', 'Multilanguage support (Backend). Added dutch language', '2019-12-22 06:40:41'),
(353, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.16', 'Editor bug fix', '2019-12-22 06:40:41'),
(354, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.17', 'Render bug fix', '2019-12-22 06:40:41'),
(355, 'ShahiemSeymor.Ckeditor', 'comment', '1.0.18', 'Problem with Rainlab Markdown editor  is now solved.', '2019-12-22 06:40:41'),
(356, 'OFFLINE.SiteSearch', 'comment', '1.0.1', 'First version of SiteSearch', '2019-12-22 06:41:03'),
(357, 'OFFLINE.SiteSearch', 'comment', '1.0.2', 'Added experimental CMS pages results provider', '2019-12-22 06:41:03'),
(358, 'OFFLINE.SiteSearch', 'comment', '1.0.3', 'Added missing component', '2019-12-22 06:41:03'),
(359, 'OFFLINE.SiteSearch', 'comment', '1.0.4', 'Added support for RadiantWeb.ProBlog', '2019-12-22 06:41:03'),
(360, 'OFFLINE.SiteSearch', 'comment', '1.0.5', 'Moved configuration to the backend', '2019-12-22 06:41:03'),
(361, 'OFFLINE.SiteSearch', 'comment', '1.0.6', 'Fixed hardcoded url in pagination', '2019-12-22 06:41:03'),
(362, 'OFFLINE.SiteSearch', 'comment', '1.0.7', 'Add function for getting last page number (Thanks to vojtasvoboda)', '2019-12-22 06:41:03'),
(363, 'OFFLINE.SiteSearch', 'comment', '1.0.8', 'Add cs_CZ locale (Thanks to vojtasvoboda)', '2019-12-22 06:41:03'),
(364, 'OFFLINE.SiteSearch', 'comment', '1.0.9', 'Added support for ArrizalAmin.Portfolio plugin', '2019-12-22 06:41:03'),
(365, 'OFFLINE.SiteSearch', 'comment', '1.0.10', 'Removed unused component', '2019-12-22 06:41:03'),
(366, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Added support for translated contents in RainLab.Pages, ArrizalAmin.Portfolio and RadiantWeb.ProBlog', '2019-12-22 06:41:04'),
(367, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Fixed bug where RainLab.Pages results were displayed twice', '2019-12-22 06:41:04'),
(368, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Honor disabled plugins setting', '2019-12-22 06:41:04'),
(369, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Generate absolute URLs in search results by default', '2019-12-22 06:41:04'),
(370, 'OFFLINE.SiteSearch', 'comment', '1.1.1', 'Added optimized siteSearchInclude component for cms pages search', '2019-12-22 06:41:04'),
(371, 'OFFLINE.SiteSearch', 'comment', '1.1.2', 'Fixed backend permissions', '2019-12-22 06:41:04'),
(372, 'OFFLINE.SiteSearch', 'comment', '1.1.3', 'Added ru_RU locale (Thanks to mokeev1995)', '2019-12-22 06:41:04'),
(373, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Added support for Feegleweb.Octoshop (Thanks to billyzduke)', '2019-12-22 06:41:04'),
(374, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Refactored search providers and results page', '2019-12-22 06:41:04'),
(375, 'OFFLINE.SiteSearch', 'comment', '1.2.2', 'Minor bugfix in Feegleweb.Octoshop settings page translation', '2019-12-22 06:41:04'),
(376, 'OFFLINE.SiteSearch', 'comment', '1.2.3', 'Fixed bug where the search results sometimes broke the page layout', '2019-12-22 06:41:04'),
(377, 'OFFLINE.SiteSearch', 'comment', '1.2.4', 'Fixed bug where unavailable thumbnails lead to an error', '2019-12-22 06:41:04'),
(378, 'OFFLINE.SiteSearch', 'comment', '1.2.5', 'Fixed bug where the provider badge is not displayed for custom search providers', '2019-12-22 06:41:04'),
(379, 'OFFLINE.SiteSearch', 'comment', '1.2.6', 'Added support for Responsiv.Showcase (Thanks to MichiReich)', '2019-12-22 06:41:04'),
(380, 'OFFLINE.SiteSearch', 'comment', '1.2.7', 'Fixed bug where custom url settings were ignored in search results for some providers', '2019-12-22 06:41:04'),
(381, 'OFFLINE.SiteSearch', 'comment', '1.2.8', 'Added support for viewBag properties in RainLab.Pages', '2019-12-22 06:41:04'),
(382, 'OFFLINE.SiteSearch', 'comment', '1.2.9', 'Added support for static page component hosts', '2019-12-22 06:41:04'),
(383, 'OFFLINE.SiteSearch', 'comment', '1.2.10', 'Added support for multiple variables in Rainlab.Blog urls (Thanks to graker)', '2019-12-22 06:41:04'),
(384, 'OFFLINE.SiteSearch', 'comment', '1.2.11', 'Optimized handling of multibyte strings', '2019-12-22 06:41:04'),
(385, 'OFFLINE.SiteSearch', 'comment', '1.2.12', 'Added support for Jiri.Jkshop', '2019-12-22 06:41:04'),
(386, 'OFFLINE.SiteSearch', 'comment', '1.2.13', 'Minor bugfixes for marked queries in search results and Rainlab.Blog provider (Thanks to graker)', '2019-12-22 06:41:04'),
(387, 'OFFLINE.SiteSearch', 'comment', '1.2.14', 'Fixed bug in Jiri.JKShop provider', '2019-12-22 06:41:04'),
(388, 'OFFLINE.SiteSearch', 'comment', '1.2.15', 'Added a new meta property for search results (thanks to cracki)', '2019-12-22 06:41:04'),
(389, 'OFFLINE.SiteSearch', 'comment', '1.2.16', 'Added Persian (Farsi) translations (thanks to cracki)', '2019-12-22 06:41:04'),
(390, 'OFFLINE.SiteSearch', 'comment', '1.2.17', 'Added support for Indikator.News (thanks to gergo85)', '2019-12-22 06:41:04'),
(391, 'OFFLINE.SiteSearch', 'comment', '1.2.18', 'Fixed bug where titles of static pages where not searched (thanks to beenen445)', '2019-12-22 06:41:04'),
(392, 'OFFLINE.SiteSearch', 'comment', '1.2.19', 'Added support for OFFLINE.SnipcartShop', '2019-12-22 06:41:04'),
(393, 'OFFLINE.SiteSearch', 'comment', '1.2.20', 'Added support for VojtaSvoboda.Brands (thanks to vojtasvoboda)', '2019-12-22 06:41:04'),
(394, 'OFFLINE.SiteSearch', 'comment', '1.2.21', 'Added Portuguese translations (thanks to ribsousa)', '2019-12-22 06:41:04'),
(395, 'OFFLINE.SiteSearch', 'comment', '1.2.22', 'Fixed Portuguese translations', '2019-12-22 06:41:04'),
(396, 'OFFLINE.SiteSearch', 'comment', '1.2.23', 'Fixed support for translated Rainlab.Blog contents', '2019-12-22 06:41:04'),
(397, 'OFFLINE.SiteSearch', 'comment', '1.2.24', 'Added composer.json to allow loading plugin as dependency (thanks to adduc)', '2019-12-22 06:41:04'),
(398, 'OFFLINE.SiteSearch', 'comment', '1.2.25', 'Fixed bug that sometimes lead to broken html in search results (thanks to graker)', '2019-12-22 06:41:04'),
(399, 'OFFLINE.SiteSearch', 'comment', '1.2.26', 'Exclude hidden static pages from search results (thanks to plyusninva)', '2019-12-22 06:41:04'),
(400, 'OFFLINE.SiteSearch', 'comment', '1.2.27', 'Added support for Graker.PhotoAlbums (thanks to graker)', '2019-12-22 06:41:04'),
(401, 'OFFLINE.SiteSearch', 'comment', '1.2.28', 'Added new result.identifier property', '2019-12-22 06:41:04'),
(402, 'OFFLINE.SiteSearch', 'comment', '1.2.29', 'Optimized thumbnail generation for Graker.PhotoAlbums results (thanks to graker)', '2019-12-22 06:41:04'),
(403, 'OFFLINE.SiteSearch', 'comment', '1.2.30', 'The searchResults component\'s resultsCollection is now publically accessible', '2019-12-22 06:41:04'),
(404, 'OFFLINE.SiteSearch', 'comment', '1.2.31', 'Added model property for each search result to retreive the original model the result was generated from', '2019-12-22 06:41:04'),
(405, 'OFFLINE.SiteSearch', 'comment', '1.2.32', 'Added support for custom ResultsProvider classes', '2019-12-22 06:41:04'),
(406, 'OFFLINE.SiteSearch', 'comment', '1.2.33', 'Fix the use of multiple custom ResultsProvider for a plugin', '2019-12-22 06:41:04'),
(407, 'OFFLINE.SiteSearch', 'comment', '1.3.1', 'Added new searchInput component with search-as-you-type feature', '2019-12-22 06:41:04'),
(408, 'OFFLINE.SiteSearch', 'comment', '1.3.2', 'Fixed bug in AutoCompleteComponent', '2019-12-22 06:41:04'),
(409, 'OFFLINE.SiteSearch', 'comment', '1.3.3', '!!! All results are now returned with a relative URL to prevent problems with translated contents. Make sure to pass your result.url throught the \"app\" filter if you are using your own search result partials', '2019-12-22 06:41:04'),
(410, 'OFFLINE.SiteSearch', 'comment', '1.3.4', 'Fixed undefined index error when a static page doesn\'t have a title set', '2019-12-22 06:41:04'),
(411, 'OFFLINE.SiteSearch', 'comment', '1.3.5', 'Added ability to edit the user\'s query before searching', '2019-12-22 06:41:04'),
(412, 'OFFLINE.SiteSearch', 'comment', '1.3.6', '!!! Using RadiantWeb.ProBlog\'s internal settings to get the correct parent page for a blog post result. This enables support for multiple blogs on the same website. If your blog search results have wrong URLs after this update make sure to configure your default page for rendering blog posts via the ProBlog backend settings.', '2019-12-22 06:41:04'),
(413, 'OFFLINE.SiteSearch', 'comment', '1.3.7', 'Added the ability to add age penalties to search results. This can be used to show newer results higher up in your search results.', '2019-12-22 06:41:04'),
(414, 'OFFLINE.SiteSearch', 'comment', '1.3.8', 'Optimized support for multiple SearchInput components on a single page.', '2019-12-22 06:41:04'),
(415, 'OFFLINE.SiteSearch', 'comment', '1.3.9', 'Added Chinese language support (thanks to Ckend)', '2019-12-22 06:41:04'),
(416, 'OFFLINE.SiteSearch', 'comment', '1.3.10', 'Fixed link to search result in default results partial (thanks to wizzard94)', '2019-12-22 06:41:04'),
(417, 'OFFLINE.SiteSearch', 'comment', '1.3.11', 'Trim query before searching', '2019-12-22 06:41:04'),
(418, 'OFFLINE.SiteSearch', 'comment', '1.3.12', 'Stability improvements', '2019-12-22 06:41:04'),
(419, 'OFFLINE.SiteSearch', 'comment', '1.3.13', 'Pre-populate search query in searchInput field', '2019-12-22 06:41:04'),
(420, 'OFFLINE.SiteSearch', 'comment', '1.3.14', 'Include placeholders on Rainlab.Pages pages in search results', '2019-12-22 06:41:04'),
(421, 'OFFLINE.SiteSearch', 'comment', '1.3.15', 'Catch invalid markup errors when searching RainLab.Pages', '2019-12-22 06:41:04'),
(422, 'OFFLINE.SiteSearch', 'comment', '1.3.16', 'Only search RainLab.Blog contents of current locale', '2019-12-22 06:41:04'),
(423, 'OFFLINE.SiteSearch', 'comment', '1.3.17', 'Fixed pagination links when using RainLab.Translate', '2019-12-22 06:41:04'),
(424, 'OFFLINE.SiteSearch', 'comment', '1.3.18', 'Updated persian translations (thanks to @sajjad-ser)', '2019-12-22 06:41:04'),
(425, 'OFFLINE.SiteSearch', 'comment', '1.3.19', 'Added finnish translations (thank to @mediaclinic)', '2019-12-22 06:41:04'),
(426, 'OFFLINE.SiteSearch', 'comment', '1.3.20', 'Added bulgarian translations (thank to @NGavanozov)', '2019-12-22 06:41:04'),
(427, 'OFFLINE.SiteSearch', 'comment', '1.3.21', 'Fixed RainLab.Blog published_at date handling', '2019-12-22 06:41:04');
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(428, 'OFFLINE.SiteSearch', 'comment', '1.3.22', 'Fixed problem with queries that contain only spaces', '2019-12-22 06:41:04'),
(429, 'OFFLINE.SiteSearch', 'comment', '1.4.0', 'SiteSearch can now log all search queries. Enable via backend settings.', '2019-12-22 06:41:04'),
(430, 'OFFLINE.SiteSearch', 'script', '1.4.1', 'create_offline_sitesearch_query_logs.php', '2019-12-22 06:41:05'),
(431, 'OFFLINE.SiteSearch', 'comment', '1.4.1', 'Minor bugfixes', '2019-12-22 06:41:05'),
(432, 'OFFLINE.SiteSearch', 'comment', '1.4.2', 'Added User-Agent to list view', '2019-12-22 06:41:05'),
(433, 'OFFLINE.SiteSearch', 'comment', '1.4.3', 'Fixed bug where empty queries resulted in an Exception', '2019-12-22 06:41:05'),
(434, 'OFFLINE.SiteSearch', 'comment', '1.4.4', 'Optimized support for cms pages search: Your Twig markup is now completely rendered and searched!', '2019-12-22 06:41:05'),
(435, 'OFFLINE.SiteSearch', 'comment', '1.4.5', 'Use meta_title for RainLab.Pages results if available', '2019-12-22 06:41:05'),
(436, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slideshows_table.php', '2019-12-22 06:41:53'),
(437, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slides_table.php', '2019-12-22 06:41:53'),
(438, 'Flosch.Slideshow', 'script', '1.0.1', 'seeder.php', '2019-12-22 06:41:53'),
(439, 'Flosch.Slideshow', 'comment', '1.0.1', 'First version of Slideshow', '2019-12-22 06:41:53'),
(440, 'Flosch.Slideshow', 'script', '1.0.2', 'table_update_flosch_slideshow_slides.php', '2019-12-22 06:41:54'),
(441, 'Flosch.Slideshow', 'comment', '1.0.2', 'Added is_published state and publication dates', '2019-12-22 06:41:54'),
(442, 'Flosch.Slideshow', 'comment', '1.0.3', 'Update documentation for Twitter Bootstrap sources', '2019-12-22 06:41:54'),
(443, 'Flosch.Slideshow', 'comment', '1.0.4', 'Update slides published query-scope (correct dates comparison)', '2019-12-22 06:41:54'),
(444, 'Flosch.Slideshow', 'comment', '1.0.5', 'Fix permission settings', '2019-12-22 06:41:54'),
(445, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add persian translation (thanks to @cracki)', '2019-12-22 06:41:54'),
(446, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add french translation', '2019-12-22 06:41:54'),
(447, 'Flosch.Slideshow', 'comment', '1.0.7', 'Add german translation (thanks to @danielbruni)', '2019-12-22 06:41:54'),
(448, 'Flosch.Slideshow', 'comment', '1.0.8', 'Correct columns definition (thanks to @Jeime)', '2019-12-22 06:41:54'),
(449, 'Bedard.AnalyticsExtension', 'comment', '1.0.1', 'First version of Bedard.AnalyticsExtention', '2019-12-22 06:44:20'),
(450, 'Bedard.AnalyticsExtension', 'comment', '1.0.2', 'Minor fix to prevent errors in PHP 5.4 and below', '2019-12-22 06:44:20'),
(451, 'Bedard.AnalyticsExtension', 'comment', '1.0.3', 'Minor change for release candidate.', '2019-12-22 06:44:20'),
(452, 'Bedard.AnalyticsExtension', 'comment', '1.0.4', 'Add Russian translation', '2019-12-22 06:44:20'),
(453, 'dchikaka.service', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-22 13:29:32'),
(454, 'dchikaka.service', 'script', '1.0.2', 'builder_table_create_dchikaka_service_services.php', '2019-12-22 13:47:16'),
(455, 'dchikaka.service', 'comment', '1.0.2', 'Created table dchikaka_service_services', '2019-12-22 13:47:16'),
(456, 'dchikaka.Whyus', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-23 11:57:19'),
(457, 'dchikaka.Whyus', 'script', '1.0.2', 'builder_table_create_dchikaka_whyus_whyus.php', '2019-12-23 12:00:00'),
(458, 'dchikaka.Whyus', 'comment', '1.0.2', 'Created table dchikaka_whyus_whyus', '2019-12-23 12:00:00'),
(459, 'dchikaka.Testimonial', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-24 02:36:22'),
(460, 'dchikaka.Testimonial', 'script', '1.0.2', 'builder_table_create_dchikaka_testimonial_testimonials.php', '2019-12-24 02:38:42'),
(461, 'dchikaka.Testimonial', 'comment', '1.0.2', 'Created table dchikaka_testimonial_testimonials', '2019-12-24 02:38:42'),
(462, 'dchikaka.Statistic', 'comment', '1.0.1', 'Initialize plugin.', '2019-12-24 03:07:20'),
(463, 'dchikaka.Statistic', 'script', '1.0.2', 'builder_table_create_dchikaka_statistic_statistics.php', '2019-12-24 03:09:06'),
(464, 'dchikaka.Statistic', 'comment', '1.0.2', 'Created table dchikaka_statistic_statistics', '2019-12-24 03:09:06'),
(465, 'dchikaka.Statistic', 'script', '1.0.3', 'builder_table_update_dchikaka_statistic_statistics.php', '2019-12-24 03:49:14'),
(466, 'dchikaka.Statistic', 'comment', '1.0.3', 'Updated table dchikaka_statistic_statistics', '2019-12-24 03:49:14'),
(467, 'dchikaka.Statistic', 'script', '1.0.4', 'builder_table_update_dchikaka_statistic_statistics_2.php', '2019-12-24 03:49:29'),
(468, 'dchikaka.Statistic', 'comment', '1.0.4', 'Updated table dchikaka_statistic_statistics', '2019-12-24 03:49:29'),
(469, 'dchikaka.Statistic', 'script', '1.0.5', 'builder_table_update_dchikaka_statistic_statistics_3.php', '2019-12-24 03:49:44'),
(470, 'dchikaka.Statistic', 'comment', '1.0.5', 'Updated table dchikaka_statistic_statistics', '2019-12-24 03:49:44'),
(471, 'dchikaka.Statistic', 'script', '1.0.6', 'builder_table_update_dchikaka_statistic_statistics_4.php', '2019-12-24 03:50:16'),
(472, 'dchikaka.Statistic', 'comment', '1.0.6', 'Updated table dchikaka_statistic_statistics', '2019-12-24 03:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-10-12 16:35:42', 0, 0),
(2, 'RainLab.Sitemap', '1.0.9', '2019-12-22 06:13:55', 0, 0),
(3, 'RainLab.Builder', '1.0.26', '2019-12-22 06:14:18', 0, 0),
(5, 'RainLab.Blog', '1.4.0', '2019-12-22 06:16:03', 0, 0),
(6, 'RainLab.Pages', '1.2.12', '2019-12-22 07:44:23', 0, 0),
(7, 'RainLab.Translate', '1.6.2', '2019-12-22 06:24:36', 0, 0),
(8, 'RainLab.User', '1.5.0', '2019-12-22 06:25:27', 0, 0),
(9, 'RainLab.GoogleAnalytics', '1.2.4', '2019-12-22 06:30:52', 0, 0),
(10, 'RainLab.Editable', '1.0.6', '2019-12-22 06:33:02', 0, 0),
(11, 'PKleindienst.BlogSearch', '1.4.0', '2019-12-22 06:35:32', 0, 0),
(12, 'Ribsousa.Featuredimages', '1.0.1', '2019-12-22 06:38:21', 0, 0),
(13, 'ShahiemSeymor.Ckeditor', '1.0.18', '2019-12-22 06:40:41', 0, 0),
(14, 'OFFLINE.SiteSearch', '1.4.5', '2019-12-22 06:41:05', 0, 0),
(15, 'Flosch.Slideshow', '1.0.8', '2019-12-22 06:41:54', 0, 0),
(16, 'Bedard.AnalyticsExtension', '1.0.4', '2019-12-22 06:44:20', 0, 0),
(17, 'dchikaka.service', '1.0.2', '2019-12-22 13:47:16', 0, 0),
(18, 'dchikaka.Whyus', '1.0.2', '2019-12-23 12:00:00', 0, 0),
(19, 'dchikaka.Testimonial', '1.0.2', '2019-12-24 02:38:42', 0, 0),
(20, 'dchikaka.Statistic', '1.0.6', '2019-12-24 03:50:16', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(2, 'rainlab_builder_settings', '{\"author_name\":\"dchikaka\",\"author_namespace\":\"dchikaka\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2019-12-22 06:25:26', '2019-12-22 06:25:26'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2019-12-22 06:25:26', '2019-12-22 06:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `dchikaka_service_services`
--
ALTER TABLE `dchikaka_service_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dchikaka_statistic_statistics`
--
ALTER TABLE `dchikaka_statistic_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dchikaka_testimonial_testimonials`
--
ALTER TABLE `dchikaka_testimonial_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dchikaka_whyus_whyus`
--
ALTER TABLE `dchikaka_whyus_whyus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flosch_slideshow_slides_slideshow_id_foreign` (`slideshow_id`);

--
-- Indexes for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_sitesearch_query_logs`
--
ALTER TABLE `offline_sitesearch_query_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_sitemap_definitions_theme_index` (`theme`);

--
-- Indexes for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Indexes for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Indexes for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Indexes for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dchikaka_service_services`
--
ALTER TABLE `dchikaka_service_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dchikaka_statistic_statistics`
--
ALTER TABLE `dchikaka_statistic_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dchikaka_testimonial_testimonials`
--
ALTER TABLE `dchikaka_testimonial_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dchikaka_whyus_whyus`
--
ALTER TABLE `dchikaka_whyus_whyus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offline_sitesearch_query_logs`
--
ALTER TABLE `offline_sitesearch_query_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD CONSTRAINT `flosch_slideshow_slides_slideshow_id_foreign` FOREIGN KEY (`slideshow_id`) REFERENCES `flosch_slideshow_slideshows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
