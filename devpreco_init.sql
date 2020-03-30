-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2020 at 04:14 PM
-- Server version: 10.1.40-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devpreco_init`
--

-- --------------------------------------------------------

--
-- Table structure for table `init_commentmeta`
--

CREATE TABLE `init_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `init_comments`
--

CREATE TABLE `init_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_comments`
--

INSERT INTO `init_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-28 17:49:38', '2020-03-28 17:49:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `init_links`
--

CREATE TABLE `init_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `init_options`
--

CREATE TABLE `init_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_options`
--

INSERT INTO `init_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://init.devpre.com', 'yes'),
(2, 'home', 'https://init.devpre.com', 'yes'),
(3, 'blogname', 'Init', 'yes'),
(4, 'blogdescription', 'Candidate Task', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nazarpelekh1992@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '0', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:37:\"tinymce-advanced/tinymce-advanced.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'init', 'yes'),
(41, 'stylesheet', 'init', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '0', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600969778', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'init_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"edit_theme_options\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"page_sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:12:\"blog_sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1585579779;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585590578;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585591140;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585591141;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585592662;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586024658;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585419561;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585551264;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585545341;s:7:\"checked\";a:1:{s:4:\"init\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_16c70872199c554dad8b417b7ce8f355', '1586023140', 'no'),
(124, '_site_transient_browser_16c70872199c554dad8b417b7ce8f355', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, '_site_transient_timeout_php_check_390020986c145d03452f580d89d5ee69', '1586023141', 'no'),
(126, '_site_transient_php_check_390020986c145d03452f580d89d5ee69', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'wp_theme', 'yes'),
(142, 'theme_mods_init', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'jr_resizeupload_version', '1.7.2', 'yes'),
(145, 'jr_resizeupload_width', '1920', 'yes'),
(146, 'jr_resizeupload_height', '1920', 'yes'),
(147, 'jr_resizeupload_quality', '85', 'yes'),
(148, 'jr_resizeupload_resize_yesno', 'yes', 'yes'),
(149, 'jr_resizeupload_recompress_yesno', 'yes', 'yes'),
(150, 'jr_resizeupload_convertbmp_yesno', 'no', 'yes'),
(151, 'jr_resizeupload_convertpng_yesno', 'no', 'yes'),
(152, 'jr_resizeupload_convertgif_yesno', 'no', 'yes'),
(154, '_transient_timeout_fonts64_md5', '1586182386', 'no'),
(155, '_transient_fonts64_md5', '1585470950', 'no'),
(156, 'wpscss_version', '1.2.4', 'no'),
(158, 'tadv_settings', 'a:10:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";s:13:\"toolbar_block\";s:10:\"core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}', 'yes'),
(159, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(160, 'tadv_version', '5210', 'yes'),
(161, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"13.3\";s:20:\"disableadvanced_meta\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1585419858;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(162, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(163, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(164, 'wpseo_flush_rewrite', '1', 'yes'),
(168, 'wpmdb_settings', 'a:12:{s:3:\"key\";s:40:\"QkO4BNPtVJuE5PfQZVJlOXqYUCuak6LPKHqYm5Fq\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;}', 'no'),
(169, '_transient_timeout_wpseo_link_table_inaccessible', '1616955862', 'no'),
(170, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(171, '_transient_timeout_wpseo_meta_table_inaccessible', '1616955862', 'no'),
(172, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(173, 'wpscss_options', 'a:5:{s:8:\"scss_dir\";s:7:\"/style/\";s:7:\"css_dir\";s:7:\"/style/\";s:17:\"compiling_options\";s:30:\"Leafo\\ScssPhp\\Formatter\\Nested\";s:17:\"sourcemap_options\";s:15:\"SOURCE_MAP_NONE\";s:6:\"errors\";s:4:\"show\";}', 'yes'),
(175, 'rewrite_rules', 'a:101:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"vehicle/?$\";s:27:\"index.php?post_type=vehicle\";s:40:\"vehicle/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=vehicle&feed=$matches[1]\";s:35:\"vehicle/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=vehicle&feed=$matches[1]\";s:27:\"vehicle/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=vehicle&paged=$matches[1]\";s:53:\"(uncategorized)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:36:\"(uncategorized)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:18:\"(uncategorized)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.*)$\";s:39:\"index.php?category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"class/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?class=$matches[1]&feed=$matches[2]\";s:41:\"class/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?class=$matches[1]&feed=$matches[2]\";s:34:\"class/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?class=$matches[1]&paged=$matches[2]\";s:16:\"class/([^/]+)/?$\";s:27:\"index.php?class=$matches[1]\";s:53:\"manufacturer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?manufacturer=$matches[1]&feed=$matches[2]\";s:48:\"manufacturer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?manufacturer=$matches[1]&feed=$matches[2]\";s:41:\"manufacturer/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?manufacturer=$matches[1]&paged=$matches[2]\";s:23:\"manufacturer/([^/]+)/?$\";s:34:\"index.php?manufacturer=$matches[1]\";s:33:\"vehicle/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"vehicle/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"vehicle/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"vehicle/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"vehicle/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"vehicle/(.+?)/trackback/?$\";s:34:\"index.php?vehicle=$matches[1]&tb=1\";s:46:\"vehicle/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?vehicle=$matches[1]&feed=$matches[2]\";s:41:\"vehicle/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?vehicle=$matches[1]&feed=$matches[2]\";s:34:\"vehicle/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?vehicle=$matches[1]&paged=$matches[2]\";s:41:\"vehicle/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?vehicle=$matches[1]&cpage=$matches[2]\";s:30:\"vehicle/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?vehicle=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(176, 'acf_version', '5.8.9', 'yes'),
(179, 'wpmdb_schema_version', '2', 'no'),
(180, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:1;s:10:\"last_fetch\";i:1585419865;}', 'yes'),
(181, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TXpjNU1UaDhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRRdE1EZ3RNakVnTVRVNk1ESTZOVGs9IjtzOjM6InVybCI7czoyMzoiaHR0cHM6Ly9pbml0LmRldnByZS5jb20iO30=', 'yes'),
(182, '_transient_timeout_plugin_slugs', '1585663252', 'no'),
(183, '_transient_plugin_slugs', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:37:\"tinymce-advanced/tinymce-advanced.php\";}', 'no'),
(184, 'recently_activated', 'a:4:{s:19:\"wp-scss/wp-scss.php\";i:1585576086;s:24:\"wordpress-seo/wp-seo.php\";i:1585419901;s:31:\"wp-migrate-db/wp-migrate-db.php\";i:1585419877;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1585419871;}', 'yes'),
(187, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585576086;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"5.3.0\";s:19:\"wp-scss/wp-scss.php\";s:5:\"1.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-scss/wp-scss.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-scss\";s:4:\"slug\";s:7:\"wp-scss\";s:6:\"plugin\";s:19:\"wp-scss/wp-scss.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-scss/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-scss.1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-scss_222222.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/wp-scss/assets/banner-772x250.png?rev=810420\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(191, '_transient_timeout_acf_plugin_updates', '1585594524', 'no'),
(192, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(193, 'class_children', 'a:0:{}', 'yes'),
(199, 'manufacturer_children', 'a:0:{}', 'yes'),
(200, 'recovery_mode_email_last_sent', '1585423622', 'yes'),
(222, 'options_logo', '44', 'no'),
(223, '_options_logo', 'field_5e8061f1f7ccc', 'no'),
(234, '_site_transient_timeout_theme_roots', '1585553064', 'no'),
(235, '_site_transient_theme_roots', 'a:1:{s:4:\"init\";s:7:\"/themes\";}', 'no'),
(262, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `init_postmeta`
--

CREATE TABLE `init_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_postmeta`
--

INSERT INTO `init_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 3, '_wp_trash_meta_status', 'draft'),
(10, 3, '_wp_trash_meta_time', '1585419935'),
(11, 3, '_wp_desired_post_slug', 'privacy-policy'),
(12, 2, '_edit_lock', '1585577630:2'),
(13, 9, '_wp_attached_file', 'USC40MAC171C121001.jpg'),
(14, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1267;s:4:\"file\";s:22:\"USC40MAC171C121001.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"USC40MAC171C121001-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"USC40MAC171C121001-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"USC40MAC171C121001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"USC40MAC171C121001-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"USC40MAC171C121001-1536x1014.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1014;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 8, '_edit_last', '1'),
(16, 8, '_thumbnail_id', '9'),
(17, 8, '_edit_lock', '1585558270:1'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1585558278:1'),
(26, 15, '_edit_last', '1'),
(27, 15, '_edit_lock', '1585558278:1'),
(28, 16, '_wp_attached_file', 'CAC50VWC022C121001.jpg'),
(29, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1267;s:4:\"file\";s:22:\"CAC50VWC022C121001.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"CAC50VWC022C121001-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"CAC50VWC022C121001-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"CAC50VWC022C121001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"CAC50VWC022C121001-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"CAC50VWC022C121001-1536x1014.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1014;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 15, '_thumbnail_id', '16'),
(31, 17, '_edit_last', '1'),
(32, 17, '_edit_lock', '1585558261:1'),
(33, 18, '_wp_attached_file', '2018_kia_rio_angularfront.jpg'),
(34, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:29:\"2018_kia_rio_angularfront.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"2018_kia_rio_angularfront-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"2018_kia_rio_angularfront-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_thumbnail_id', '18'),
(36, 19, '_wp_attached_file', 'ibiza.png'),
(37, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:792;s:4:\"file\";s:9:\"ibiza.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ibiza-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"ibiza-1024x676.png\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ibiza-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"ibiza-768x507.png\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 13, '_thumbnail_id', '19'),
(39, 20, '_edit_last', '1'),
(40, 20, '_edit_lock', '1585558278:1'),
(41, 21, '_wp_attached_file', 'img_02.jpg'),
(42, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:10:\"img_02.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 20, '_thumbnail_id', '21'),
(44, 22, '_edit_last', '1'),
(45, 22, '_edit_lock', '1585558261:1'),
(52, 26, '_wp_attached_file', 'angularfront.jpg.png'),
(53, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"angularfront.jpg.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"angularfront.jpg-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"angularfront.jpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"angularfront.jpg-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 22, '_thumbnail_id', '26'),
(55, 27, '_edit_last', '1'),
(56, 27, '_edit_lock', '1585558277:1'),
(57, 28, '_wp_attached_file', 'my18_cx3_gt_41v_soul_red_car-0003.jpg'),
(58, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:37:\"my18_cx3_gt_41v_soul_red_car-0003.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"my18_cx3_gt_41v_soul_red_car-0003-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"my18_cx3_gt_41v_soul_red_car-0003-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"my18_cx3_gt_41v_soul_red_car-0003-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"my18_cx3_gt_41v_soul_red_car-0003-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"my18_cx3_gt_41v_soul_red_car-0003-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 27, '_thumbnail_id', '28'),
(60, 29, '_edit_last', '1'),
(61, 29, '_edit_lock', '1585558265:1'),
(62, 30, '_wp_attached_file', '2016_mazda6_ext360_rojobrillante_07.png'),
(63, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:767;s:6:\"height\";i:430;s:4:\"file\";s:39:\"2016_mazda6_ext360_rojobrillante_07.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"2016_mazda6_ext360_rojobrillante_07-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"2016_mazda6_ext360_rojobrillante_07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 29, '_thumbnail_id', '30'),
(65, 31, '_edit_last', '2'),
(66, 31, '_edit_lock', '1585577551:2'),
(67, 37, '_edit_last', '1'),
(68, 37, '_edit_lock', '1585471860:1'),
(71, 40, '_wp_attached_file', 'car-sports-car-super-car-nature-wallpaper.jpg'),
(72, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:45:\"car-sports-car-super-car-nature-wallpaper.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"car-sports-car-super-car-nature-wallpaper-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"car-sports-car-super-car-nature-wallpaper-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"car-sports-car-super-car-nature-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"car-sports-car-super-car-nature-wallpaper-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:54:\"car-sports-car-super-car-nature-wallpaper-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 2, '_thumbnail_id', '40'),
(74, 2, '_edit_last', '2'),
(75, 2, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(76, 2, '_vehicles_text', 'field_5e80619ae5b0c'),
(77, 42, 'vehicles_text', '<h2>More than 500+ vehicles\r\nfor you to choose from</h2>'),
(78, 42, '_vehicles_text', 'field_5e80619ae5b0c'),
(79, 43, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(80, 43, '_vehicles_text', 'field_5e80619ae5b0c'),
(81, 44, '_wp_attached_file', 'logo-slogan.svg'),
(82, 45, '_edit_last', '1'),
(83, 45, '_edit_lock', '1585557129:1'),
(84, 22, 'year', '2019'),
(85, 22, '_year', 'field_5e8070f80dfe1'),
(86, 22, 'price', '5,000'),
(87, 22, '_price', 'field_5e8071830dfe2'),
(88, 17, 'year', '2020'),
(89, 17, '_year', 'field_5e8070f80dfe1'),
(90, 17, 'price', '8,000'),
(91, 17, '_price', 'field_5e8071830dfe2'),
(92, 29, 'year', '2012'),
(93, 29, '_year', 'field_5e8070f80dfe1'),
(94, 29, 'price', '3,500'),
(95, 29, '_price', 'field_5e8071830dfe2'),
(96, 8, 'year', '2015'),
(97, 8, '_year', 'field_5e8070f80dfe1'),
(98, 8, 'price', '7,000'),
(99, 8, '_price', 'field_5e8071830dfe2'),
(100, 27, 'year', '2020'),
(101, 27, '_year', 'field_5e8070f80dfe1'),
(102, 27, 'price', '9,500'),
(103, 27, '_price', 'field_5e8071830dfe2'),
(104, 20, 'year', '2014'),
(105, 20, '_year', 'field_5e8070f80dfe1'),
(106, 20, 'price', '7,000'),
(107, 20, '_price', 'field_5e8071830dfe2'),
(108, 13, 'year', '2018'),
(109, 13, '_year', 'field_5e8070f80dfe1'),
(110, 13, 'price', '6,500'),
(111, 13, '_price', 'field_5e8071830dfe2'),
(112, 15, 'year', '2020'),
(113, 15, '_year', 'field_5e8070f80dfe1'),
(114, 15, 'price', '9,000'),
(115, 15, '_price', 'field_5e8071830dfe2'),
(116, 2, 'scroll_down_text', ''),
(117, 2, '_scroll_down_text', 'field_5e81ecd6de592'),
(118, 51, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(119, 51, '_vehicles_text', 'field_5e80619ae5b0c'),
(120, 51, 'scroll_down_text', 'Scroll Down'),
(121, 51, '_scroll_down_text', 'field_5e81ecd6de592'),
(122, 52, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(123, 52, '_vehicles_text', 'field_5e80619ae5b0c'),
(124, 52, 'scroll_down_text', 'Scroll Dow'),
(125, 52, '_scroll_down_text', 'field_5e81ecd6de592'),
(126, 53, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(127, 53, '_vehicles_text', 'field_5e80619ae5b0c'),
(128, 53, 'scroll_down_text', 'Scroll Downnnn n nnn nn n '),
(129, 53, '_scroll_down_text', 'field_5e81ecd6de592'),
(130, 54, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(131, 54, '_vehicles_text', 'field_5e80619ae5b0c'),
(132, 54, 'scroll_down_text', 'Scroll Down'),
(133, 54, '_scroll_down_text', 'field_5e81ecd6de592'),
(134, 55, '_edit_last', '1'),
(135, 55, '_edit_lock', '1585573636:1'),
(136, 55, '_thumbnail_id', '26'),
(137, 55, 'year', '2019'),
(138, 55, '_year', 'field_5e8070f80dfe1'),
(139, 55, 'price', '5,000'),
(140, 55, '_price', 'field_5e8071830dfe2'),
(141, 56, '_edit_last', '1'),
(142, 56, '_edit_lock', '1585573669:1'),
(143, 56, '_thumbnail_id', '18'),
(144, 56, 'year', '2020'),
(145, 56, '_year', 'field_5e8070f80dfe1'),
(146, 56, 'price', '8,000'),
(147, 56, '_price', 'field_5e8071830dfe2'),
(148, 57, '_edit_last', '1'),
(149, 57, '_edit_lock', '1585573671:1'),
(150, 57, '_thumbnail_id', '30'),
(151, 57, 'year', '2012'),
(152, 57, '_year', 'field_5e8070f80dfe1'),
(153, 57, 'price', '3,500'),
(154, 57, '_price', 'field_5e8071830dfe2'),
(155, 58, '_edit_last', '1'),
(156, 58, '_thumbnail_id', '9'),
(157, 58, '_edit_lock', '1585573676:1'),
(158, 58, 'year', '2015'),
(159, 58, '_year', 'field_5e8070f80dfe1'),
(160, 58, 'price', '7,000'),
(161, 58, '_price', 'field_5e8071830dfe2'),
(162, 59, '_edit_last', '1'),
(163, 59, '_edit_lock', '1585573682:1'),
(164, 59, '_thumbnail_id', '28'),
(165, 59, 'year', '2020'),
(166, 59, '_year', 'field_5e8070f80dfe1'),
(167, 59, 'price', '9,500'),
(168, 59, '_price', 'field_5e8071830dfe2'),
(169, 60, '_edit_last', '1'),
(170, 60, '_edit_lock', '1585573682:1'),
(171, 60, '_thumbnail_id', '28'),
(172, 60, 'year', '2020'),
(173, 60, '_year', 'field_5e8070f80dfe1'),
(174, 60, 'price', '9,500'),
(175, 60, '_price', 'field_5e8071830dfe2'),
(176, 61, '_edit_last', '1'),
(177, 61, '_edit_lock', '1585574173:1'),
(178, 61, '_thumbnail_id', '21'),
(179, 61, 'year', '2014'),
(180, 61, '_year', 'field_5e8070f80dfe1'),
(181, 61, 'price', '7,000'),
(182, 61, '_price', 'field_5e8071830dfe2'),
(183, 62, '_edit_last', '1'),
(184, 62, '_edit_lock', '1585573682:1'),
(185, 62, '_thumbnail_id', '19'),
(186, 62, 'year', '2018'),
(187, 62, '_year', 'field_5e8070f80dfe1'),
(188, 62, 'price', '6,500'),
(189, 62, '_price', 'field_5e8071830dfe2'),
(190, 63, '_edit_last', '1'),
(191, 63, '_edit_lock', '1585574112:1'),
(192, 63, '_thumbnail_id', '28'),
(193, 63, 'year', '2020'),
(194, 63, '_year', 'field_5e8070f80dfe1'),
(195, 63, 'price', '9,500'),
(196, 63, '_price', 'field_5e8071830dfe2'),
(197, 64, '_edit_last', '1'),
(198, 64, '_edit_lock', '1585574253:1'),
(199, 64, '_thumbnail_id', '28'),
(200, 64, 'year', '2020'),
(201, 64, '_year', 'field_5e8070f80dfe1'),
(202, 64, 'price', '9,500'),
(203, 64, '_price', 'field_5e8071830dfe2'),
(204, 65, '_edit_last', '1'),
(205, 65, '_edit_lock', '1585574256:1'),
(206, 65, '_thumbnail_id', '28'),
(207, 65, 'year', '2020'),
(208, 65, '_year', 'field_5e8070f80dfe1'),
(209, 65, 'price', '9,500'),
(210, 65, '_price', 'field_5e8071830dfe2'),
(211, 60, '_wp_trash_meta_status', 'publish'),
(212, 60, '_wp_trash_meta_time', '1585574328'),
(213, 60, '_wp_desired_post_slug', 'mazda-cx3-3'),
(214, 2, 'hero_title', '<h1>Find Your Dream Vehicle with Init</h1>'),
(215, 2, '_hero_title', 'field_5e81fbb37222e'),
(216, 2, 'hero_button', 'a:3:{s:5:\"title\";s:17:\"View all listings\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(217, 2, '_hero_button', 'field_5e81fbc07222f'),
(218, 2, 'hero_image', '40'),
(219, 2, '_hero_image', 'field_5e81fbd172230'),
(220, 2, 'hero_scroll_down_text', 'Scroll Down'),
(221, 2, '_hero_scroll_down_text', 'field_5e81fbe572231'),
(222, 2, 'hero', ''),
(223, 2, '_hero', 'field_5e81fba87222d'),
(224, 71, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(225, 71, '_vehicles_text', 'field_5e80619ae5b0c'),
(226, 71, 'scroll_down_text', ''),
(227, 71, '_scroll_down_text', 'field_5e81ecd6de592'),
(228, 71, 'hero_title', '<h1 class=\"rich-text editor-rich-text__editable block-editor-rich-text__editable is-selected\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Write heading…\">Find Your Dream Vehicle with Init</h1>'),
(229, 71, '_hero_title', 'field_5e81fbb37222e'),
(230, 71, 'hero_button', 'a:3:{s:5:\"title\";s:17:\"View all listings\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(231, 71, '_hero_button', 'field_5e81fbc07222f'),
(232, 71, 'hero_image', '40'),
(233, 71, '_hero_image', 'field_5e81fbd172230'),
(234, 71, 'hero_scroll_down_text', 'Scroll Down'),
(235, 71, '_hero_scroll_down_text', 'field_5e81fbe572231'),
(236, 71, 'hero', ''),
(237, 71, '_hero', 'field_5e81fba87222d'),
(238, 72, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(239, 72, '_vehicles_text', 'field_5e80619ae5b0c'),
(240, 72, 'scroll_down_text', ''),
(241, 72, '_scroll_down_text', 'field_5e81ecd6de592'),
(242, 72, 'hero_title', '<h1>Find Your Dream Vehicle with Init</h1>'),
(243, 72, '_hero_title', 'field_5e81fbb37222e'),
(244, 72, 'hero_button', 'a:3:{s:5:\"title\";s:17:\"View all listings\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(245, 72, '_hero_button', 'field_5e81fbc07222f'),
(246, 72, 'hero_image', '40'),
(247, 72, '_hero_image', 'field_5e81fbd172230'),
(248, 72, 'hero_scroll_down_text', 'Scroll Down'),
(249, 72, '_hero_scroll_down_text', 'field_5e81fbe572231'),
(250, 72, 'hero', ''),
(251, 72, '_hero', 'field_5e81fba87222d'),
(252, 74, 'vehicles_text', '<h2>More than 500+ vehicles for you to choose from</h2>'),
(253, 74, '_vehicles_text', 'field_5e80619ae5b0c'),
(254, 74, 'scroll_down_text', ''),
(255, 74, '_scroll_down_text', 'field_5e81ecd6de592'),
(256, 74, 'hero_title', '<h1>Find Your Dream Vehicle with Init</h1>'),
(257, 74, '_hero_title', 'field_5e81fbb37222e'),
(258, 74, 'hero_button', 'a:3:{s:5:\"title\";s:17:\"View all listings\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(259, 74, '_hero_button', 'field_5e81fbc07222f'),
(260, 74, 'hero_image', '40'),
(261, 74, '_hero_image', 'field_5e81fbd172230'),
(262, 74, 'hero_scroll_down_text', 'Scroll Down'),
(263, 74, '_hero_scroll_down_text', 'field_5e81fbe572231'),
(264, 74, 'hero', ''),
(265, 74, '_hero', 'field_5e81fba87222d');

-- --------------------------------------------------------

--
-- Table structure for table `init_posts`
--

CREATE TABLE `init_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_posts`
--

INSERT INTO `init_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2020-03-28 17:49:38', '2020-03-28 17:49:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-03-28 17:49:38', '2020-03-28 17:49:38', '', 0, 'https://init.devpre.com/?p=1', 0, 'post', '', 1),
(2, 2, '2020-03-28 17:49:38', '2020-03-28 17:49:38', '', 'Init', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-03-30 14:13:01', '2020-03-30 14:13:01', '', 0, 'https://init.devpre.com/?page_id=2', 0, 'page', '', 0),
(3, 2, '2020-03-28 17:49:38', '2020-03-28 17:49:38', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://init.devpre.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-03-28 18:25:35', '2020-03-28 18:25:35', '', 0, 'https://init.devpre.com/?page_id=3', 0, 'page', '', 0),
(4, 2, '2020-03-28 17:59:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-28 17:59:01', '0000-00-00 00:00:00', '', 0, 'https://init.devpre.com/?p=4', 0, 'post', '', 0),
(6, 2, '2020-03-28 18:25:35', '2020-03-28 18:25:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://init.devpre.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-03-28 18:25:35', '2020-03-28 18:25:35', '', 3, 'https://init.devpre.com/uncategorized/3-revision-v1/', 0, 'revision', '', 0),
(7, 2, '2020-03-28 18:38:56', '2020-03-28 18:38:56', '<!-- wp:heading -->\n<h2>Find Your Dream Vehicle with Init</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-28 18:38:56', '2020-03-28 18:38:56', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(8, 2, '2020-03-28 18:43:55', '2020-03-28 18:43:55', '', 'Mazda 3', '', 'publish', 'closed', 'closed', '', 'mazda-3', '', '', '2020-03-30 08:36:26', '2020-03-30 08:36:26', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=8', 0, 'vehicle', '', 0),
(9, 2, '2020-03-28 18:43:36', '2020-03-28 18:43:36', '', 'USC40MAC171C121001', '', 'inherit', 'open', 'closed', '', 'usc40mac171c121001', '', '', '2020-03-28 18:43:36', '2020-03-28 18:43:36', '', 8, 'https://init.devpre.com/wp-content/uploads/USC40MAC171C121001.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 2, '2020-03-28 18:43:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-28 18:43:54', '0000-00-00 00:00:00', '', 0, 'https://init.devpre.com/?post_type=vehicle&p=10', 0, 'vehicle', '', 0),
(11, 2, '2020-03-28 18:44:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-28 18:44:22', '0000-00-00 00:00:00', '', 0, 'https://init.devpre.com/?post_type=acf-field-group&p=11', 0, 'acf-field-group', '', 0),
(12, 2, '2020-03-28 19:10:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-28 19:10:12', '0000-00-00 00:00:00', '', 0, 'https://init.devpre.com/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(13, 2, '2020-03-28 19:43:16', '2020-03-28 19:43:16', '', 'Seat Ibiza', '', 'publish', 'closed', 'closed', '', 'seat-ibiza', '', '', '2020-03-30 08:36:42', '2020-03-30 08:36:42', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=13', 0, 'vehicle', '', 0),
(15, 2, '2020-03-28 19:45:07', '2020-03-28 19:45:07', '', 'VW Golf', '', 'publish', 'closed', 'closed', '', 'vw-golf', '', '', '2020-03-30 08:36:47', '2020-03-30 08:36:47', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=15', 0, 'vehicle', '', 0),
(16, 2, '2020-03-28 19:44:53', '2020-03-28 19:44:53', '', 'CAC50VWC022C121001', '', 'inherit', 'open', 'closed', '', 'cac50vwc022c121001', '', '', '2020-03-28 19:44:53', '2020-03-28 19:44:53', '', 15, 'https://init.devpre.com/wp-content/uploads/CAC50VWC022C121001.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 2, '2020-03-28 19:45:55', '2020-03-28 19:45:55', '', 'Kia Rio', '', 'publish', 'closed', 'closed', '', 'kia-rio', '', '', '2020-03-30 08:36:13', '2020-03-30 08:36:13', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=17', 0, 'vehicle', '', 0),
(18, 2, '2020-03-28 19:45:51', '2020-03-28 19:45:51', '', '2018_kia_rio_angularfront', '', 'inherit', 'open', 'closed', '', '2018_kia_rio_angularfront', '', '', '2020-03-28 19:45:51', '2020-03-28 19:45:51', '', 17, 'https://init.devpre.com/wp-content/uploads/2018_kia_rio_angularfront.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 2, '2020-03-28 19:47:29', '2020-03-28 19:47:29', '', 'ibiza', '', 'inherit', 'open', 'closed', '', 'ibiza', '', '', '2020-03-28 19:47:29', '2020-03-28 19:47:29', '', 13, 'https://init.devpre.com/wp-content/uploads/ibiza.png', 0, 'attachment', 'image/png', 0),
(20, 2, '2020-03-28 19:48:38', '2020-03-28 19:48:38', '', 'Mitsubishi Attrage', '', 'publish', 'closed', 'closed', '', 'mitsubishi-attrage', '', '', '2020-03-30 08:36:36', '2020-03-30 08:36:36', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=20', 0, 'vehicle', '', 0),
(21, 2, '2020-03-28 19:48:30', '2020-03-28 19:48:30', '', 'img_02', '', 'inherit', 'open', 'closed', '', 'img_02', '', '', '2020-03-28 19:48:30', '2020-03-28 19:48:30', '', 20, 'https://init.devpre.com/wp-content/uploads/img_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 2, '2020-03-28 19:52:48', '2020-03-28 19:52:48', '', 'Honda Civic', '', 'publish', 'closed', 'closed', '', 'honda-civic', '', '', '2020-03-30 08:36:07', '2020-03-30 08:36:07', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=22', 0, 'vehicle', '', 0),
(26, 2, '2020-03-28 19:52:43', '2020-03-28 19:52:43', '', 'angularfront.jpg', '', 'inherit', 'open', 'closed', '', 'angularfront-jpg', '', '', '2020-03-28 19:52:43', '2020-03-28 19:52:43', '', 22, 'https://init.devpre.com/wp-content/uploads/angularfront.jpg.png', 0, 'attachment', 'image/png', 0),
(27, 2, '2020-03-28 19:53:41', '2020-03-28 19:53:41', '', 'Mazda CX3', '', 'publish', 'closed', 'closed', '', 'mazda-cx3', '', '', '2020-03-30 08:36:32', '2020-03-30 08:36:32', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=27', 0, 'vehicle', '', 0),
(28, 2, '2020-03-28 19:53:32', '2020-03-28 19:53:32', '', 'my18_cx3_gt_41v_soul_red_car-0003', '', 'inherit', 'open', 'closed', '', 'my18_cx3_gt_41v_soul_red_car-0003', '', '', '2020-03-28 19:53:32', '2020-03-28 19:53:32', '', 27, 'https://init.devpre.com/wp-content/uploads/my18_cx3_gt_41v_soul_red_car-0003.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 2, '2020-03-28 19:54:29', '2020-03-28 19:54:29', '', 'Mazda 2', '', 'publish', 'closed', 'closed', '', 'mazda-2', '', '', '2020-03-30 08:36:20', '2020-03-30 08:36:20', '', 0, 'https://init.devpre.com/?post_type=vehicle&#038;p=29', 0, 'vehicle', '', 0),
(30, 2, '2020-03-28 19:54:21', '2020-03-28 19:54:21', '', '2016_mazda6_ext360_rojobrillante_07', '', 'inherit', 'open', 'closed', '', '2016_mazda6_ext360_rojobrillante_07', '', '', '2020-03-28 19:54:21', '2020-03-28 19:54:21', '', 29, 'https://init.devpre.com/wp-content/uploads/2016_mazda6_ext360_rojobrillante_07.png', 0, 'attachment', 'image/png', 0),
(31, 2, '2020-03-29 08:52:24', '2020-03-29 08:52:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5e8060150e077', '', '', '2020-03-30 14:12:31', '2020-03-30 14:12:31', '', 0, 'https://init.devpre.com/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(35, 2, '2020-03-29 08:52:24', '2020-03-29 08:52:24', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Vehicles', 'vehicles', 'publish', 'closed', 'closed', '', 'field_5e80615fe5b0b', '', '', '2020-03-30 14:12:31', '2020-03-30 14:12:31', '', 31, 'https://init.devpre.com/?post_type=acf-field&#038;p=35', 1, 'acf-field', '', 0),
(36, 2, '2020-03-29 08:52:24', '2020-03-29 08:52:24', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'vehicles_text', 'publish', 'closed', 'closed', '', 'field_5e80619ae5b0c', '', '', '2020-03-30 14:12:31', '2020-03-30 14:12:31', '', 31, 'https://init.devpre.com/?post_type=acf-field&#038;p=36', 2, 'acf-field', '', 0),
(37, 2, '2020-03-29 08:53:15', '2020-03-29 08:53:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'General Settings', 'general-settings', 'publish', 'closed', 'closed', '', 'group_5e8061ddaabd2', '', '', '2020-03-29 08:53:15', '2020-03-29 08:53:15', '', 0, 'https://init.devpre.com/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 2, '2020-03-29 08:53:15', '2020-03-29 08:53:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5e8061f1f7ccc', '', '', '2020-03-29 08:53:15', '2020-03-29 08:53:15', '', 37, 'https://init.devpre.com/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(40, 2, '2020-03-29 09:04:58', '2020-03-29 09:04:58', '', 'car-sports-car-super-car-nature-wallpaper', '', 'inherit', 'open', 'closed', '', 'car-sports-car-super-car-nature-wallpaper', '', '', '2020-03-29 09:04:58', '2020-03-29 09:04:58', '', 2, 'https://init.devpre.com/wp-content/uploads/car-sports-car-super-car-nature-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 2, '2020-03-29 09:06:21', '2020-03-29 09:06:21', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-29 09:06:21', '2020-03-29 09:06:21', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(42, 2, '2020-03-29 09:06:22', '2020-03-29 09:06:22', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-29 09:06:22', '2020-03-29 09:06:22', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(43, 2, '2020-03-29 09:06:39', '2020-03-29 09:06:39', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-29 09:06:39', '2020-03-29 09:06:39', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2020-03-29 09:09:08', '2020-03-29 09:09:08', '', 'logo-slogan', '', 'inherit', 'open', 'closed', '', 'logo-slogan', '', '', '2020-03-29 09:09:08', '2020-03-29 09:09:08', '', 0, 'https://init.devpre.com/wp-content/uploads/logo-slogan.svg', 0, 'attachment', 'image/svg+xml', 0),
(45, 2, '2020-03-29 09:59:45', '2020-03-29 09:59:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"vehicle\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Vehicle', 'vehicle', 'publish', 'closed', 'closed', '', 'group_5e8070ed7ca51', '', '', '2020-03-29 09:59:45', '2020-03-29 09:59:45', '', 0, 'https://init.devpre.com/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 2, '2020-03-29 09:59:45', '2020-03-29 09:59:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_5e8070f80dfe1', '', '', '2020-03-29 09:59:45', '2020-03-29 09:59:45', '', 45, 'https://init.devpre.com/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 2, '2020-03-29 09:59:45', '2020-03-29 09:59:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5e8071830dfe2', '', '', '2020-03-29 09:59:45', '2020-03-29 09:59:45', '', 45, 'https://init.devpre.com/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 2, '2020-03-30 08:11:43', '2020-03-30 08:11:43', '', 'Honda Civic', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2020-03-30 08:11:43', '2020-03-30 08:11:43', '', 22, 'https://init.devpre.com/uncategorized/22-autosave-v1/', 0, 'revision', '', 0),
(49, 2, '2020-03-30 08:23:33', '2020-03-30 08:23:33', '', 'Mazda 2', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2020-03-30 08:23:33', '2020-03-30 08:23:33', '', 29, 'https://init.devpre.com/uncategorized/29-autosave-v1/', 0, 'revision', '', 0),
(51, 2, '2020-03-30 12:59:33', '2020-03-30 12:59:33', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 12:59:33', '2020-03-30 12:59:33', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(52, 2, '2020-03-30 12:59:47', '2020-03-30 12:59:47', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 12:59:47', '2020-03-30 12:59:47', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(53, 2, '2020-03-30 12:59:59', '2020-03-30 12:59:59', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 12:59:59', '2020-03-30 12:59:59', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(54, 2, '2020-03-30 13:00:14', '2020-03-30 13:00:14', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 13:00:14', '2020-03-30 13:00:14', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(55, 2, '2020-03-30 13:09:32', '2020-03-30 13:09:32', '', 'Honda Civic', '', 'publish', 'closed', 'closed', '', 'honda-civic-2', '', '', '2020-03-30 13:09:32', '2020-03-30 13:09:32', '', 0, 'https://init.devpre.com/vehicle/honda-civic-2/', 0, 'vehicle', '', 0),
(56, 2, '2020-03-30 13:09:45', '2020-03-30 13:09:45', '', 'Kia Rio', '', 'publish', 'closed', 'closed', '', 'kia-rio-2', '', '', '2020-03-30 13:09:45', '2020-03-30 13:09:45', '', 0, 'https://init.devpre.com/vehicle/kia-rio-2/', 0, 'vehicle', '', 0),
(57, 2, '2020-03-30 13:09:47', '2020-03-30 13:09:47', '', 'Mazda 2', '', 'publish', 'closed', 'closed', '', 'mazda-2-2', '', '', '2020-03-30 13:09:47', '2020-03-30 13:09:47', '', 0, 'https://init.devpre.com/vehicle/mazda-2-2/', 0, 'vehicle', '', 0),
(58, 2, '2020-03-30 13:09:50', '2020-03-30 13:09:50', '', 'Mazda 3', '', 'publish', 'closed', 'closed', '', 'mazda-3-2', '', '', '2020-03-30 13:09:50', '2020-03-30 13:09:50', '', 0, 'https://init.devpre.com/vehicle/mazda-3-2/', 0, 'vehicle', '', 0),
(59, 2, '2020-03-30 13:09:52', '2020-03-30 13:09:52', '', 'Mazda CX3', '', 'publish', 'closed', 'closed', '', 'mazda-cx3-2', '', '', '2020-03-30 13:09:52', '2020-03-30 13:09:52', '', 0, 'https://init.devpre.com/vehicle/mazda-cx3-2/', 0, 'vehicle', '', 0),
(60, 2, '2020-03-30 13:09:54', '2020-03-30 13:09:54', '', 'Mazda CX3', '', 'trash', 'closed', 'closed', '', 'mazda-cx3-3__trashed', '', '', '2020-03-30 13:18:48', '2020-03-30 13:18:48', '', 0, 'https://init.devpre.com/vehicle/mazda-cx3-3/', 0, 'vehicle', '', 0),
(61, 2, '2020-03-30 13:09:58', '2020-03-30 13:09:58', '', 'Mitsubishi Attrage', '', 'publish', 'closed', 'closed', '', 'mitsubishi-attrage-2', '', '', '2020-03-30 13:16:13', '2020-03-30 13:16:13', '', 0, 'https://init.devpre.com/vehicle/mitsubishi-attrage-2/', 0, 'vehicle', '', 0),
(62, 2, '2020-03-30 13:10:02', '2020-03-30 13:10:02', '', 'Seat Ibiza', '', 'publish', 'closed', 'closed', '', 'seat-ibiza-2', '', '', '2020-03-30 13:10:02', '2020-03-30 13:10:02', '', 0, 'https://init.devpre.com/vehicle/seat-ibiza-2/', 0, 'vehicle', '', 0),
(63, 2, '2020-03-30 13:17:30', '2020-03-30 13:17:30', '', 'Mazda CX3', '', 'publish', 'closed', 'closed', '', 'mazda-cx3-3-2', '', '', '2020-03-30 13:17:30', '2020-03-30 13:17:30', '', 0, 'https://init.devpre.com/vehicle/mazda-cx3-3-2/', 0, 'vehicle', '', 0),
(64, 2, '2020-03-30 13:17:32', '2020-03-30 13:17:32', '', 'Mazda CX3', '', 'publish', 'closed', 'closed', '', 'mazda-cx3-3-3', '', '', '2020-03-30 13:17:32', '2020-03-30 13:17:32', '', 0, 'https://init.devpre.com/vehicle/mazda-cx3-3-3/', 0, 'vehicle', '', 0),
(65, 2, '2020-03-30 13:17:33', '2020-03-30 13:17:33', '', 'Mazda CX3', '', 'publish', 'closed', 'closed', '', 'mazda-cx3-3-4', '', '', '2020-03-30 13:17:33', '2020-03-30 13:17:33', '', 0, 'https://init.devpre.com/vehicle/mazda-cx3-3-4/', 0, 'vehicle', '', 0),
(66, 2, '2020-03-30 14:02:26', '2020-03-30 14:02:26', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_5e81fba87222d', '', '', '2020-03-30 14:02:26', '2020-03-30 14:02:26', '', 31, 'https://init.devpre.com/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 2, '2020-03-30 14:02:26', '2020-03-30 14:02:26', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5e81fbb37222e', '', '', '2020-03-30 14:02:26', '2020-03-30 14:02:26', '', 66, 'https://init.devpre.com/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 2, '2020-03-30 14:02:26', '2020-03-30 14:02:26', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_5e81fbc07222f', '', '', '2020-03-30 14:02:26', '2020-03-30 14:02:26', '', 66, 'https://init.devpre.com/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 2, '2020-03-30 14:02:27', '2020-03-30 14:02:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5e81fbd172230', '', '', '2020-03-30 14:02:27', '2020-03-30 14:02:27', '', 66, 'https://init.devpre.com/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 2, '2020-03-30 14:02:27', '2020-03-30 14:02:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Scroll Down Text', 'scroll_down_text', 'publish', 'closed', 'closed', '', 'field_5e81fbe572231', '', '', '2020-03-30 14:02:27', '2020-03-30 14:02:27', '', 66, 'https://init.devpre.com/?post_type=acf-field&p=70', 3, 'acf-field', '', 0),
(71, 2, '2020-03-30 14:03:33', '2020-03-30 14:03:33', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 14:03:33', '2020-03-30 14:03:33', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(72, 2, '2020-03-30 14:11:32', '2020-03-30 14:11:32', '<!-- wp:heading {\"level\":1} -->\n<h1>Find Your Dream Vehicle with Init</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[button link=\"#\" text=\"View all listings\"]</p>\n<!-- /wp:paragraph -->', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 14:11:32', '2020-03-30 14:11:32', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(73, 2, '2020-03-30 14:13:01', '2020-03-30 14:13:01', '', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 14:13:01', '2020-03-30 14:13:01', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(74, 2, '2020-03-30 14:13:01', '2020-03-30 14:13:01', '', 'Init', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-30 14:13:01', '2020-03-30 14:13:01', '', 2, 'https://init.devpre.com/uncategorized/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `init_termmeta`
--

CREATE TABLE `init_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `init_terms`
--

CREATE TABLE `init_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_terms`
--

INSERT INTO `init_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Sedan', 'sedan', 0),
(3, 'Hatchback', 'hatchback', 0),
(4, 'Coupe', 'coupe', 0),
(5, 'Mazda', 'mazda', 0),
(6, 'Seat', 'seat', 0),
(7, 'VW', 'vw', 0),
(8, 'Kia', 'kia', 0),
(9, 'Mitsubishi', 'mitsubishi', 0),
(10, 'Honda', 'honda', 0);

-- --------------------------------------------------------

--
-- Table structure for table `init_term_relationships`
--

CREATE TABLE `init_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_term_relationships`
--

INSERT INTO `init_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 5, 0),
(13, 3, 0),
(13, 6, 0),
(15, 3, 0),
(15, 7, 0),
(17, 2, 0),
(17, 8, 0),
(20, 2, 0),
(20, 9, 0),
(22, 4, 0),
(22, 10, 0),
(27, 3, 0),
(27, 5, 0),
(29, 3, 0),
(29, 5, 0),
(55, 4, 0),
(55, 10, 0),
(56, 2, 0),
(56, 8, 0),
(57, 3, 0),
(57, 5, 0),
(58, 2, 0),
(58, 5, 0),
(59, 3, 0),
(59, 5, 0),
(60, 3, 0),
(60, 5, 0),
(61, 2, 0),
(61, 9, 0),
(62, 3, 0),
(62, 6, 0),
(63, 3, 0),
(63, 5, 0),
(64, 3, 0),
(64, 5, 0),
(65, 3, 0),
(65, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `init_term_taxonomy`
--

CREATE TABLE `init_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_term_taxonomy`
--

INSERT INTO `init_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'class', '', 0, 6),
(3, 3, 'class', '', 0, 10),
(4, 4, 'class', '', 0, 2),
(5, 5, 'manufacturer', '', 0, 9),
(6, 6, 'manufacturer', '', 0, 2),
(7, 7, 'manufacturer', '', 0, 1),
(8, 8, 'manufacturer', '', 0, 2),
(9, 9, 'manufacturer', '', 0, 2),
(10, 10, 'manufacturer', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `init_usermeta`
--

CREATE TABLE `init_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_usermeta`
--

INSERT INTO `init_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(27, 2, 'nickname', 'Init'),
(28, 2, 'first_name', ''),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'init_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(39, 2, 'init_user_level', '10'),
(40, 2, 'dismissed_wp_pointers', ''),
(41, 2, 'session_tokens', 'a:1:{s:64:\"4c8dc14073728ad0f0f4aa408776f8630716dbad9967c83b6ebbd9fdad7192ba\";a:4:{s:10:\"expiration\";i:1586784886;s:2:\"ip\";s:13:\"185.151.84.82\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585575286;}}'),
(42, 2, 'init_user-settings', 'libraryContent=browse'),
(43, 2, 'init_user-settings-time', '1585577008');

-- --------------------------------------------------------

--
-- Table structure for table `init_users`
--

CREATE TABLE `init_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `init_users`
--

INSERT INTO `init_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'Init', '$P$BUQhPWW/JVNarH6xp0VFz.OZWqMoBP.', 'init', 'nr.devs@gmail.com', '', '2020-03-30 13:34:31', '1585575272:$P$BpxtGdP8Xc1OxpUN.5DellOfvd1vcc/', 0, 'Init');

-- --------------------------------------------------------

--
-- Table structure for table `init_yoast_seo_links`
--

CREATE TABLE `init_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `init_yoast_seo_meta`
--

CREATE TABLE `init_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `init_commentmeta`
--
ALTER TABLE `init_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `init_comments`
--
ALTER TABLE `init_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `init_links`
--
ALTER TABLE `init_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `init_options`
--
ALTER TABLE `init_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `init_postmeta`
--
ALTER TABLE `init_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `init_posts`
--
ALTER TABLE `init_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `init_termmeta`
--
ALTER TABLE `init_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `init_terms`
--
ALTER TABLE `init_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `init_term_relationships`
--
ALTER TABLE `init_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `init_term_taxonomy`
--
ALTER TABLE `init_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `init_usermeta`
--
ALTER TABLE `init_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `init_users`
--
ALTER TABLE `init_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `init_yoast_seo_links`
--
ALTER TABLE `init_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `init_yoast_seo_meta`
--
ALTER TABLE `init_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `init_commentmeta`
--
ALTER TABLE `init_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `init_comments`
--
ALTER TABLE `init_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `init_links`
--
ALTER TABLE `init_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `init_options`
--
ALTER TABLE `init_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `init_postmeta`
--
ALTER TABLE `init_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `init_posts`
--
ALTER TABLE `init_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `init_termmeta`
--
ALTER TABLE `init_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `init_terms`
--
ALTER TABLE `init_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `init_term_taxonomy`
--
ALTER TABLE `init_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `init_usermeta`
--
ALTER TABLE `init_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `init_users`
--
ALTER TABLE `init_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `init_yoast_seo_links`
--
ALTER TABLE `init_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
