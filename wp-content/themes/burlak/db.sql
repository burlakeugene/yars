-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 05, 2022 at 03:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `yars`
--

-- --------------------------------------------------------

--
-- Table structure for table `yars_commentmeta`
--

CREATE TABLE `yars_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yars_comments`
--

CREATE TABLE `yars_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_comments`
--

INSERT INTO `yars_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2022-05-30 23:15:46', '2022-05-30 20:15:46', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yars_links`
--

CREATE TABLE `yars_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yars_options`
--

CREATE TABLE `yars_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_options`
--

INSERT INTO `yars_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/yars', 'yes'),
(2, 'home', 'http://localhost:8888/yars', 'yes'),
(3, 'blogname', 'Yars', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'burlakeugene@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr2lat/cyr-to-lat.php\";i:5;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:6;s:21:\"safe-svg/safe-svg.php\";i:7;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:8;s:29:\"static-block/static-block.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'burlak', 'yes'),
(41, 'stylesheet', 'burlak', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1669493746', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'yars_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"bcn_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1654445746;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654460146;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654460155;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654460156;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654632946;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(125, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653941837;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(138, '_site_transient_timeout_browser_1af3d6d4fbb7947d107b0170a309f510', '1654546556', 'no'),
(139, '_site_transient_browser_1af3d6d4fbb7947d107b0170a309f510', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.64\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1654546556', 'no'),
(141, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(144, 'can_compress_scripts', '1', 'no'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(168, 'current_theme', 'burlak', 'yes'),
(169, 'theme_mods_burlak', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"header\";i:3;s:6:\"footer\";i:4;s:13:\"footer_second\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(181, 'recently_activated', 'a:1:{s:45:\"upload-max-file-size/upload-max-file-size.php\";i:1654432328;}', 'yes'),
(184, 'acf_version', '5.8.3', 'yes'),
(191, 'scporder_install', '1', 'yes'),
(192, 'simple-rate-time', '1812109575', 'yes'),
(193, 'scporder_notice', '1', 'yes'),
(198, 'wpcf7', 'a:2:{s:7:\"version\";s:7:\"5.5.6.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1653942031;s:7:\"version\";s:7:\"5.5.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(203, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"http://downloads.wordpress.org/release/ru_RU/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"http://downloads.wordpress.org/release/ru_RU/wordpress-6.0.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1654432091;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(211, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654432120;s:7:\"checked\";a:4:{s:6:\"burlak\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(214, 'widget_static_block_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'category_children', 'a:0:{}', 'yes'),
(233, 'secret_key', 'fH[)F?by<SeDAp]?}eet4&v626Sgd[xvuQZ7v=aBr_ji8p4BGHs!B6<0ADW}qzt{', 'no'),
(292, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'common_scripts', '', 'yes'),
(304, 'head_additions', '', 'yes'),
(305, 'copyrights', '(С) 2021 All Rights Reserved', 'yes'),
(306, 'address', 'Республика Крым, г. Алушта,  с. Изобильное, ул. Центральная, 56', 'yes'),
(307, 'phone', '+7 978 577 80 70, +7 978 333 80 70', 'yes'),
(308, 'email', 'cristal.ru@bk.ru', 'yes'),
(309, 'vkontakte', 'http://vk.com/', 'yes'),
(310, 'viber', 'http://viber.com/', 'yes'),
(311, 'whatsup', 'http://whatsup.com/', 'yes'),
(312, 'theme', '#ffffff', 'yes'),
(328, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(433, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":7,\"critical\":1}', 'yes'),
(471, 'entity', 'ИП Хайдуров А.С., ИНН: 644106931464,<br />ОГРНИП: 319645100038378', 'yes'),
(705, '_site_transient_timeout_browser_e5252fc5349fa5c108ebe588d71324f7', '1654805531', 'no'),
(706, '_site_transient_browser_e5252fc5349fa5c108ebe588d71324f7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"102.0.5005.61\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(963, '_transient_timeout_acf_plugin_updates', '1654578527', 'no'),
(964, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(1000, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1654442849', 'no'),
(1001, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5551;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4788;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2757;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2629;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2030;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1879;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1875;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1565;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1543;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1523;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1518;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1507;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1488;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1380;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1322;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1313;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1255;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1169;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1146;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1107;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1015;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:965;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:962;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:938;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:896;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:852;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:843;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:841;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:840;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:827;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:799;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:776;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:774;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:757;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:755;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:741;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:723;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:707;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:701;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:695;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:673;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:672;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:671;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:667;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:665;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:639;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:617;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:609;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:602;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:598;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:594;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:584;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:582;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:574;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:574;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:574;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:568;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:565;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:556;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:550;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:536;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:529;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:527;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:521;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:514;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:512;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:506;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:505;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:496;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:495;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:495;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:492;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:483;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:463;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:456;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:454;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:452;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:446;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:439;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:423;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:420;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:418;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:412;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:409;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:406;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:397;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:396;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:394;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:393;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:392;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:385;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:384;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:380;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:377;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:371;}}', 'no'),
(1003, '_site_transient_timeout_theme_roots', '1654433894', 'no'),
(1004, '_site_transient_theme_roots', 'a:4:{s:6:\"burlak\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');
INSERT INTO `yars_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1006, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654432123;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:11:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"7.0.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.7.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=2410525\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:7:\"5.5.6.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:45:\"upload-max-file-size/upload-max-file-size.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/upload-max-file-size\";s:4:\"slug\";s:20:\"upload-max-file-size\";s:6:\"plugin\";s:45:\"upload-max-file-size/upload-max-file-size.php\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/upload-max-file-size/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/upload-max-file-size.2.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/upload-max-file-size/assets/icon-256x256.png?rev=2161684\";s:2:\"1x\";s:73:\"https://ps.w.org/upload-max-file-size/assets/icon-128x128.png?rev=2161684\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/upload-max-file-size/assets/banner-1544x500.png?rev=2161684\";s:2:\"1x\";s:75:\"https://ps.w.org/upload-max-file-size/assets/banner-772x250.png?rev=2161684\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:45:\"upload-max-file-size/upload_max_file_size.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/upload-max-file-size\";s:4:\"slug\";s:20:\"upload-max-file-size\";s:6:\"plugin\";s:45:\"upload-max-file-size/upload_max_file_size.php\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/upload-max-file-size/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/upload-max-file-size.2.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/upload-max-file-size/assets/icon-256x256.png?rev=2161684\";s:2:\"1x\";s:73:\"https://ps.w.org/upload-max-file-size/assets/icon-128x128.png?rev=2161684\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/upload-max-file-size/assets/banner-1544x500.png?rev=2161684\";s:2:\"1x\";s:75:\"https://ps.w.org/upload-max-file-size/assets/banner-772x250.png?rev=2161684\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=2683939\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"static-block/static-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/static-block\";s:4:\"slug\";s:12:\"static-block\";s:6:\"plugin\";s:29:\"static-block/static-block.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/static-block/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/static-block.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/static-block_f8b109.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/static-block/assets/banner-1544x500.jpg?rev=1279650\";s:2:\"1x\";s:67:\"https://ps.w.org/static-block/assets/banner-772x250.jpg?rev=1279650\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/wp-maximum-upload-file-size\";s:4:\"slug\";s:27:\"wp-maximum-upload-file-size\";s:6:\"plugin\";s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";s:11:\"new_version\";s:5:\"1.0.9\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/wp-maximum-upload-file-size/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/wp-maximum-upload-file-size.1.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/wp-maximum-upload-file-size/assets/icon-256x256.png?rev=2157477\";s:2:\"1x\";s:80:\"https://ps.w.org/wp-maximum-upload-file-size/assets/icon-128x128.png?rev=2157467\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/wp-maximum-upload-file-size/assets/banner-772x250.png?rev=2157467\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:12:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"7.0.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:7:\"5.5.6.1\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.3.0\";s:45:\"upload-max-file-size/upload-max-file-size.php\";s:5:\"2.0.4\";s:45:\"upload-max-file-size/upload_max_file_size.php\";s:5:\"2.0.4\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.0.1\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.5.6\";s:29:\"static-block/static-block.php\";s:3:\"2.2\";s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";s:5:\"1.0.9\";}}', 'no'),
(1007, 'max_file_size', '134217728', 'yes'),
(1008, '_transient_timeout_upload-max-file-size_notices', '1654432171', 'no'),
(1009, '_transient_upload-max-file-size_notices', '[]', 'no'),
(1084, '_transient_timeout_global_styles_burlak', '1654442047', 'no'),
(1085, '_transient_global_styles_burlak', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `yars_postmeta`
--

CREATE TABLE `yars_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_postmeta`
--

INSERT INTO `yars_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 8, '_form', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Ваше имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Контактный телефон\"]</label><div class=\"form__item\"><div class=\"form__item__submit\">[submit class:button \"Отправить заявку\"]</div></div><div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\">обработку персональных данных</a></div>[/acceptance]</div></div>'),
(8, 8, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Заявка с сайта\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:43:\"Телефон: [phone]\nИмя: [user-name]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(9, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(10, 8, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(11, 8, '_additional_settings', ''),
(12, 8, '_locale', 'ru_RU'),
(13, 8, '_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1'),
(14, 9, '_form', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Ваше имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Контактный телефон\"]</label><label class=\"form__item\">[textarea* question placeholder \"Ваш вопрос\"]</label>[hidden place class:place]<div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\">обработку персональных данных</a></div>[/acceptance]</div><div class=\"form__item form__item--centered\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Отправить заявку\"]</div></div></div>'),
(15, 9, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Заявка с сайта\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:90:\"Имя: [user-name]\nТелефон: [phone]\nВопрос: [question]\nОткуда: [place]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(16, 9, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(17, 9, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(18, 9, '_additional_settings', ''),
(19, 9, '_locale', 'ru_RU'),
(29, 11, '_menu_item_type', 'custom'),
(30, 11, '_menu_item_menu_item_parent', '0'),
(31, 11, '_menu_item_object_id', '11'),
(32, 11, '_menu_item_object', 'custom'),
(33, 11, '_menu_item_target', ''),
(34, 11, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(35, 11, '_menu_item_xfn', ''),
(36, 11, '_menu_item_url', '/products'),
(38, 2, '_wp_trash_meta_status', 'publish'),
(39, 2, '_wp_trash_meta_time', '1654021039'),
(40, 2, '_wp_desired_post_slug', 'sample-page'),
(41, 13, '_edit_last', '1'),
(42, 13, '_edit_lock', '1654020934:1'),
(43, 15, '_edit_last', '1'),
(44, 15, '_edit_lock', '1654020916:1'),
(45, 17, '_menu_item_type', 'post_type'),
(46, 17, '_menu_item_menu_item_parent', '0'),
(47, 17, '_menu_item_object_id', '15'),
(48, 17, '_menu_item_object', 'page'),
(49, 17, '_menu_item_target', ''),
(50, 17, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(51, 17, '_menu_item_xfn', ''),
(52, 17, '_menu_item_url', ''),
(54, 18, '_menu_item_type', 'post_type'),
(55, 18, '_menu_item_menu_item_parent', '0'),
(56, 18, '_menu_item_object_id', '13'),
(57, 18, '_menu_item_object', 'page'),
(58, 18, '_menu_item_target', ''),
(59, 18, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(60, 18, '_menu_item_xfn', ''),
(61, 18, '_menu_item_url', ''),
(63, 19, '_edit_last', '1'),
(64, 19, '_edit_lock', '1654026443:1'),
(65, 19, 'tr_start_date', ''),
(66, 19, 'tr_start_date_hour', '0'),
(67, 19, 'tr_start_date_minute', '0'),
(68, 19, 'tr_end_date', ''),
(69, 19, 'tr_end_date_hour', '0'),
(70, 19, 'tr_end_date_minute', '0'),
(71, 20, '_edit_last', '1'),
(72, 20, '_edit_lock', '1654023419:1'),
(75, 28, '_wp_attached_file', '2022/05/bezymyannyj-1-gigapixel-scale-4_00x-1-1.jpg'),
(76, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:51:\"2022/05/bezymyannyj-1-gigapixel-scale-4_00x-1-1.jpg\";s:8:\"filesize\";i:309303;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10119;}s:5:\"large\";a:5:{s:4:\"file\";s:52:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72924;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5635;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45702;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:141313;}s:4:\"lazy\";a:5:{s:4:\"file\";s:49:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-50x28.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1209;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:49:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1559;}s:7:\"gallery\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-860x550.jpg\";s:5:\"width\";i:860;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61986;}s:6:\"review\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8501;}s:12:\"slider-thumb\";a:5:{s:4:\"file\";s:51:\"bezymyannyj-1-gigapixel-scale-4_00x-1-1-180x140.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6099;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 19, 'image', '28'),
(78, 19, '_image', 'field_629664c708483'),
(79, 19, 'title', 'YARS С ТОБОЙ \r\nВ ЛЮБОМ \r\nНАПРАВЛЕНИИ'),
(80, 19, '_title', 'field_629664de08484'),
(81, 19, 'text', 'Грузоподъёмность 1150кг, автомат механика на выбор'),
(82, 19, '_text', 'field_629664f408485'),
(83, 19, 'button_enable', '1'),
(84, 19, '_button_enable', 'field_6296654408487'),
(85, 19, 'button_text', 'Получить предложение'),
(86, 19, '_button_text', 'field_6296657b08488'),
(87, 19, 'button', ''),
(88, 19, '_button', 'field_6296652208486'),
(89, 29, '_menu_item_type', 'custom'),
(90, 29, '_menu_item_menu_item_parent', '0'),
(91, 29, '_menu_item_object_id', '29'),
(92, 29, '_menu_item_object', 'custom'),
(93, 29, '_menu_item_target', ''),
(94, 29, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(95, 29, '_menu_item_xfn', ''),
(96, 29, '_menu_item_url', 'http://localhost:8888/yars/'),
(98, 30, '_menu_item_type', 'post_type'),
(99, 30, '_menu_item_menu_item_parent', '0'),
(100, 30, '_menu_item_object_id', '15'),
(101, 30, '_menu_item_object', 'page'),
(102, 30, '_menu_item_target', ''),
(103, 30, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(104, 30, '_menu_item_xfn', ''),
(105, 30, '_menu_item_url', ''),
(107, 31, '_menu_item_type', 'post_type'),
(108, 31, '_menu_item_menu_item_parent', '0'),
(109, 31, '_menu_item_object_id', '13'),
(110, 31, '_menu_item_object', 'page'),
(111, 31, '_menu_item_target', ''),
(112, 31, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(113, 31, '_menu_item_xfn', ''),
(114, 31, '_menu_item_url', ''),
(116, 32, '_menu_item_type', 'custom'),
(117, 32, '_menu_item_menu_item_parent', '0'),
(118, 32, '_menu_item_object_id', '32'),
(119, 32, '_menu_item_object', 'custom'),
(120, 32, '_menu_item_target', ''),
(121, 32, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(122, 32, '_menu_item_xfn', ''),
(123, 32, '_menu_item_url', 'http://localhost:8888/yars/'),
(125, 33, '_menu_item_type', 'custom'),
(126, 33, '_menu_item_menu_item_parent', '0'),
(127, 33, '_menu_item_object_id', '33'),
(128, 33, '_menu_item_object', 'custom'),
(129, 33, '_menu_item_target', ''),
(130, 33, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(131, 33, '_menu_item_xfn', ''),
(132, 33, '_menu_item_url', '/products'),
(134, 34, '_edit_last', '1'),
(135, 34, '_edit_lock', '1654030374:1'),
(136, 3, '_edit_lock', '1654030847:1'),
(137, 3, '_edit_last', '1'),
(138, 37, '_menu_item_type', 'post_type'),
(139, 37, '_menu_item_menu_item_parent', '0'),
(140, 37, '_menu_item_object_id', '3'),
(141, 37, '_menu_item_object', 'page'),
(142, 37, '_menu_item_target', ''),
(143, 37, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(144, 37, '_menu_item_xfn', ''),
(145, 37, '_menu_item_url', ''),
(147, 38, '_menu_item_type', 'post_type'),
(148, 38, '_menu_item_menu_item_parent', '0'),
(149, 38, '_menu_item_object_id', '34'),
(150, 38, '_menu_item_object', 'page'),
(151, 38, '_menu_item_target', ''),
(152, 38, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(153, 38, '_menu_item_xfn', ''),
(154, 38, '_menu_item_url', ''),
(156, 39, '_edit_last', '1'),
(157, 39, 'tr_start_date', ''),
(158, 39, 'tr_start_date_hour', '0'),
(159, 39, 'tr_start_date_minute', '0'),
(160, 39, 'tr_end_date', ''),
(161, 39, 'tr_end_date_hour', '0'),
(162, 39, 'tr_end_date_minute', '0'),
(163, 39, '_edit_lock', '1654439115:1'),
(164, 41, '_wp_attached_file', '2022/06/bezymyannyj-3-1.png'),
(165, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:587;s:6:\"height\";i:438;s:4:\"file\";s:27:\"2022/06/bezymyannyj-3-1.png\";s:8:\"filesize\";i:458642;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-3-1-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:137653;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49772;}s:4:\"lazy\";a:5:{s:4:\"file\";s:25:\"bezymyannyj-3-1-50x37.png\";s:5:\"width\";i:50;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4894;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:25:\"bezymyannyj-3-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6477;}s:6:\"review\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-3-1-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:83907;}s:12:\"slider-thumb\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-3-1-180x140.png\";s:5:\"width\";i:180;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56294;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 43, '_edit_last', '1'),
(168, 43, '_edit_lock', '1654201592:1'),
(169, 43, 'tr_start_date', ''),
(170, 43, 'tr_start_date_hour', '0'),
(171, 43, 'tr_start_date_minute', '0'),
(172, 43, 'tr_end_date', ''),
(173, 43, 'tr_end_date_hour', '0'),
(174, 43, 'tr_end_date_minute', '0'),
(175, 44, '_edit_last', '1'),
(176, 44, '_edit_lock', '1654239728:1'),
(177, 47, '_wp_attached_file', '2022/06/1-gigapixel-scale-4_00x.png'),
(178, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:865;s:6:\"height\";i:555;s:4:\"file\";s:35:\"2022/06/1-gigapixel-scale-4_00x.png\";s:8:\"filesize\";i:840554;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106209;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45379;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-768x493.png\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:591004;}s:4:\"lazy\";a:5:{s:4:\"file\";s:33:\"1-gigapixel-scale-4_00x-50x32.png\";s:5:\"width\";i:50;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4304;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:33:\"1-gigapixel-scale-4_00x-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6339;}s:7:\"gallery\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-860x550.png\";s:5:\"width\";i:860;s:6:\"height\";i:550;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:714919;}s:6:\"review\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:76855;}s:12:\"slider-thumb\";a:5:{s:4:\"file\";s:35:\"1-gigapixel-scale-4_00x-180x140.png\";s:5:\"width\";i:180;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50785;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 43, 'items_0_photo', '47'),
(182, 43, '_items_0_photo', 'field_62991a2ca7d91'),
(183, 43, 'items_1_photo', '41'),
(184, 43, '_items_1_photo', 'field_62991a2ca7d91'),
(185, 43, 'items', '3'),
(186, 43, '_items', 'field_62991a05a7d90'),
(187, 43, 'items_2_photo', '28'),
(188, 43, '_items_2_photo', 'field_62991a2ca7d91'),
(189, 49, '_edit_last', '1'),
(190, 49, '_edit_lock', '1654429247:1'),
(191, 56, '_edit_last', '1'),
(192, 56, '_edit_lock', '1654340987:1'),
(193, 56, 'rating', '4'),
(194, 56, '_rating', 'field_629b1905955d6'),
(195, 57, '_wp_attached_file', '2022/06/foto-otzyva-1.png'),
(196, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:95;s:6:\"height\";i:95;s:4:\"file\";s:25:\"2022/06/foto-otzyva-1.png\";s:8:\"filesize\";i:18129;s:5:\"sizes\";a:2:{s:4:\"lazy\";a:5:{s:4:\"file\";s:23:\"foto-otzyva-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5757;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:23:\"foto-otzyva-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5757;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 56, '_thumbnail_id', '57'),
(198, 58, '_edit_last', '1'),
(199, 58, '_edit_lock', '1654429089:1'),
(200, 58, 'rating', '5'),
(201, 58, '_rating', 'field_629b1905955d6'),
(202, 59, '_edit_last', '1'),
(203, 59, '_edit_lock', '1654435299:1'),
(204, 59, 'tr_start_date', ''),
(205, 59, 'tr_start_date_hour', '0'),
(206, 59, 'tr_start_date_minute', '0'),
(207, 59, 'tr_end_date', ''),
(208, 59, 'tr_end_date_hour', '0'),
(209, 59, 'tr_end_date_minute', '0'),
(210, 60, '_edit_last', '1'),
(211, 60, '_edit_lock', '1654436108:1'),
(212, 59, 'list_0_iframe', '<iframe  src=\"https://www.youtube.com/embed/tdBdkxwQY-Q\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(213, 59, '_list_0_iframe', 'field_629c971354134'),
(214, 59, 'list', '2'),
(215, 59, '_list', 'field_629c96d554133'),
(216, 59, 'list_1_iframe', '<iframe  src=\"https://www.youtube.com/embed/Hwybp38GnZw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(217, 59, '_list_1_iframe', 'field_629c971354134'),
(220, 68, '_wp_attached_file', '2022/06/videoplayback-1.mp4'),
(221, 68, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:953159;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:18;s:16:\"length_formatted\";s:4:\"0:18\";s:5:\"width\";i:640;s:6:\"height\";i:480;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}'),
(222, 59, 'videos_0_type', 'simple'),
(223, 59, '_videos_0_type', 'field_629c9d10e843b'),
(224, 59, 'videos_0_video_link', '68'),
(225, 59, '_videos_0_video_link', 'field_629c9e3cd860a'),
(226, 59, 'videos_0_video_preview', '47'),
(227, 59, '_videos_0_video_preview', 'field_629c9e51d860b'),
(228, 59, 'videos_0_video', ''),
(229, 59, '_videos_0_video', 'field_629c9dbfd8609'),
(230, 59, 'videos', '2'),
(231, 59, '_videos', 'field_629c96d554133'),
(232, 59, 'videos_1_type', 'iframe'),
(233, 59, '_videos_1_type', 'field_629c9d10e843b'),
(234, 59, 'videos_1_iframe', '<iframe src=\"https://www.youtube.com/embed/Hwybp38GnZw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(235, 59, '_videos_1_iframe', 'field_629c971354134'),
(236, 59, 'videos_1_video_link', ''),
(237, 59, '_videos_1_video_link', 'field_629c9e3cd860a'),
(238, 59, 'videos_1_video_preview', ''),
(239, 59, '_videos_1_video_preview', 'field_629c9e51d860b'),
(240, 59, 'videos_1_video', ''),
(241, 59, '_videos_1_video', 'field_629c9dbfd8609'),
(242, 70, '_edit_last', '1'),
(243, 70, 'tr_start_date', ''),
(244, 70, 'tr_start_date_hour', '0'),
(245, 70, 'tr_start_date_minute', '0'),
(246, 70, 'tr_end_date', ''),
(247, 70, 'tr_end_date_hour', '0'),
(248, 70, 'tr_end_date_minute', '0'),
(249, 70, '_edit_lock', '1654441091:1'),
(250, 69, '_edit_last', '1'),
(251, 69, '_edit_lock', '1654440896:1'),
(252, 39, 'content', 'Вездеходы YARS - надёжные, комфортные, тёплые, простые в управлении и недорогие в обслуживании, по доступной цене с полной гарантией на все узлы и агрегаты. Вездеходы YARS обладают повышенной проходимостью, способны работать в суровых реалиях Русского севера и бездорожья. Вездеходы YARS разработаны и производятся с применением современных технологий на высокоточном оборудовании.\r\n\r\nДля построения и сборки машин используются узлы и агрегаты японского производства, что обеспечивает низкий расход топлива, непревзойдённую надежность, высокую проходимость, простоту в обслуживании и стабильную работу в любых условиях бездорожья и климата нашей огромной страны!'),
(253, 39, '_content', 'field_629cb14636bbf'),
(254, 39, 'images_0_image', '41'),
(255, 39, '_images_0_image', 'field_629cb23792426'),
(256, 39, 'images', '1'),
(257, 39, '_images', 'field_629cb1cd92425'),
(262, 74, '_wp_attached_file', '2022/06/11111.png'),
(263, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:579;s:6:\"height\";i:387;s:4:\"file\";s:17:\"2022/06/11111.png\";s:8:\"filesize\";i:283522;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"11111-300x201.png\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94846;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"11111-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41967;}s:4:\"lazy\";a:5:{s:4:\"file\";s:15:\"11111-50x33.png\";s:5:\"width\";i:50;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3948;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:15:\"11111-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5915;}s:6:\"review\";a:5:{s:4:\"file\";s:17:\"11111-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:69953;}s:12:\"slider-thumb\";a:5:{s:4:\"file\";s:17:\"11111-180x140.png\";s:5:\"width\";i:180;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44603;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 70, 'content', 'Целью нашей компании является производство надежной техники.\r\n\r\nКомпания YARS доказала, что качественные и надёжные вездеходы могут быть доступны! Наша компания специализируется на производстве техники для коммерческого и частного использования!\r\n\r\nКомпания YARS с 2012 года занимается тестированием узлов и агрегатов для построения вездеходов. Только накопив большой опыт и знания мы представляем вам технику которая стабильно работает в тяжёлых условиях и способна выполнять серьёзные задачи! Компания YARS на этом не останавливается, мы продолжаем разработки и внедрение новых технологий в производство техники для работы в сложнейших условиях.'),
(265, 70, '_content', 'field_629cb14636bbf'),
(266, 70, 'images_0_image', '74'),
(267, 70, '_images_0_image', 'field_629cb23792426'),
(268, 70, 'images_1_image', '28'),
(269, 70, '_images_1_image', 'field_629cb23792426'),
(270, 70, 'images', '4'),
(271, 70, '_images', 'field_629cb1cd92425'),
(272, 70, 'images_2_image', '47'),
(273, 70, '_images_2_image', 'field_629cb23792426'),
(274, 70, 'images_3_image', '41'),
(275, 70, '_images_3_image', 'field_629cb23792426');

-- --------------------------------------------------------

--
-- Table structure for table `yars_posts`
--

CREATE TABLE `yars_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_posts`
--

INSERT INTO `yars_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-30 23:15:46', '2022-05-30 20:15:46', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-05-30 23:15:46', '2022-05-30 20:15:46', '', 0, 'http://localhost:8888/yars/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-30 23:15:46', '2022-05-30 20:15:46', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost:8888/yars/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-05-31 21:17:19', '2022-05-31 18:17:19', '', 0, 'http://localhost:8888/yars/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-05-30 23:15:46', '2022-05-30 20:15:46', '<!-- wp:heading -->\r\n<h2>Кто мы</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost:8888/yars.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Комментарии</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Медиафайлы</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Куки</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Встраиваемое содержимое других вебсайтов</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>С кем мы делимся вашими данными</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Как долго мы храним ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Какие у вас права на ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Куда отправляются ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\r\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2022-05-31 23:55:50', '2022-05-31 20:55:50', '', 0, 'http://localhost:8888/yars/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-05-30 23:15:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-30 23:15:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?p=4', 0, 'post', '', 0),
(5, 1, '2022-05-30 23:16:30', '2022-05-30 20:16:30', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-05-30 23:16:30', '2022-05-30 20:16:30', '', 0, 'http://localhost:8888/yars/2022/05/30/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(8, 1, '2022-05-30 23:20:31', '2022-05-30 20:20:31', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Ваше имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Контактный телефон\"]</label><div class=\"form__item\"><div class=\"form__item__submit\">[submit class:button \"Отправить заявку\"]</div></div><div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\" rel=\"noopener\">обработку персональных данных</a></div>[/acceptance]</div></div>\n1\nЗаявка с сайта\n[_site_title] <burlakeugene@gmail.com>\n[_site_admin_email]\nТелефон: [phone]\r\nИмя: [user-name]\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <burlakeugene@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Обратный звонок мини', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2022-06-01 22:58:01', '2022-06-01 19:58:01', '', 0, 'http://localhost:8888/yars/?post_type=wpcf7_contact_form&#038;p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2022-05-31 00:11:23', '2022-05-30 21:11:23', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Ваше имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Контактный телефон\"]</label><label class=\"form__item\">[textarea* question placeholder \"Ваш вопрос\"]</label>[hidden place class:place]<div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\" rel=\"noopener\">обработку персональных данных</a></div>[/acceptance]</div><div class=\"form__item form__item--centered\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Отправить заявку\"]</div></div></div>\n1\nЗаявка с сайта\n[_site_title] <burlakeugene@gmail.com>\n[_site_admin_email]\nИмя: [user-name]\r\nТелефон: [phone]\r\nВопрос: [question]\r\nОткуда: [place]\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <burlakeugene@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Обратный звонок', '', 'publish', 'closed', 'closed', '', 'obratnyj-zvonok', '', '', '2022-05-31 23:34:38', '2022-05-31 20:34:38', '', 0, 'http://localhost:8888/yars/?post_type=wpcf7_contact_form&#038;p=9', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2022-05-31 22:50:24', '2022-05-31 18:17:10', '', 'Вездеходы', '', 'publish', 'closed', 'closed', '', 'vezdehody', '', '', '2022-05-31 22:50:24', '2022-05-31 19:50:24', '', 0, 'http://localhost:8888/yars/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2022-05-31 21:17:19', '2022-05-31 18:17:19', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost:8888/yars/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-05-31 21:17:19', '2022-05-31 18:17:19', '', 2, 'http://localhost:8888/yars/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-05-31 21:17:25', '2022-05-31 18:17:25', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-05-31 21:17:47', '2022-05-31 18:17:47', '', 0, 'http://localhost:8888/yars/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-05-31 21:17:25', '2022-05-31 18:17:25', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-05-31 21:17:25', '2022-05-31 18:17:25', '', 13, 'http://localhost:8888/yars/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-05-31 21:17:32', '2022-05-31 18:17:32', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2022-05-31 21:17:39', '2022-05-31 18:17:39', '', 0, 'http://localhost:8888/yars/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-05-31 21:17:32', '2022-05-31 18:17:32', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-05-31 21:17:32', '2022-05-31 18:17:32', '', 15, 'http://localhost:8888/yars/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-05-31 22:50:24', '2022-05-31 18:18:08', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2022-05-31 22:50:24', '2022-05-31 19:50:24', '', 0, 'http://localhost:8888/yars/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2022-05-31 22:50:24', '2022-05-31 18:18:08', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2022-05-31 22:50:24', '2022-05-31 19:50:24', '', 0, 'http://localhost:8888/yars/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2022-05-31 21:54:45', '2022-05-31 18:54:45', '', 'Баннер на главной', '', 'publish', 'closed', 'closed', '', 'banner-na-glavnoj', '', '', '2022-05-31 22:05:06', '2022-05-31 19:05:06', '', 0, 'http://localhost:8888/yars/?post_type=static-block&#038;p=19', 0, 'static-block', '', 0),
(20, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для баннера', 'polya-dlya-bannera', 'publish', 'closed', 'closed', '', 'group_629664b68d78d', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_629664c708483', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 20, 'http://localhost:8888/yars/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_629664de08484', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 20, 'http://localhost:8888/yars/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_629664f408485', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 20, 'http://localhost:8888/yars/?post_type=acf-field&p=23', 2, 'acf-field', '', 0),
(24, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Кнопка', 'button', 'publish', 'closed', 'closed', '', 'field_6296652208486', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 20, 'http://localhost:8888/yars/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
(25, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Включена', 'enable', 'publish', 'closed', 'closed', '', 'field_6296654408487', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 24, 'http://localhost:8888/yars/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2022-05-31 21:59:21', '2022-05-31 18:59:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_6296657b08488', '', '', '2022-05-31 21:59:21', '2022-05-31 18:59:21', '', 24, 'http://localhost:8888/yars/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(28, 1, '2022-05-31 22:01:06', '2022-05-31 19:01:06', '', 'Безымянный-1-gigapixel-scale-4_00x 1 (1)', '', 'inherit', 'open', 'closed', '', 'bezymyannyj-1-gigapixel-scale-4_00x-1-1', '', '', '2022-05-31 22:01:06', '2022-05-31 19:01:06', '', 19, 'http://localhost:8888/yars/wp-content/uploads/2022/05/bezymyannyj-1-gigapixel-scale-4_00x-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2022-05-31 22:50:24', '2022-05-31 19:50:08', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya-2', '', '', '2022-05-31 22:50:24', '2022-05-31 19:50:24', '', 0, 'http://localhost:8888/yars/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2022-05-31 23:54:29', '2022-05-31 20:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 0, 'http://localhost:8888/yars/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2022-05-31 23:54:29', '2022-05-31 20:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 0, 'http://localhost:8888/yars/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 0, 'http://localhost:8888/yars/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 'Вездеходы', '', 'publish', 'closed', 'closed', '', 'vezdehody-2', '', '', '2022-05-31 23:54:29', '2022-05-31 20:54:29', '', 0, 'http://localhost:8888/yars/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2022-05-31 23:55:03', '2022-05-31 20:55:03', '', 'Оплата и возврат', '', 'publish', 'closed', 'closed', '', 'oplata-i-vozvrat', '', '', '2022-05-31 23:55:03', '2022-05-31 20:55:03', '', 0, 'http://localhost:8888/yars/?page_id=34', 0, 'page', '', 0),
(35, 1, '2022-05-31 23:55:03', '2022-05-31 20:55:03', '', 'Оплата и возврат', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-05-31 23:55:03', '2022-05-31 20:55:03', '', 34, 'http://localhost:8888/yars/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-05-31 23:55:25', '2022-05-31 20:55:25', '<!-- wp:heading -->\r\n<h2>Кто мы</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost:8888/yars.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Комментарии</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Медиафайлы</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Куки</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Встраиваемое содержимое других вебсайтов</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>С кем мы делимся вашими данными</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Как долго мы храним ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Какие у вас права на ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Куда отправляются ваши данные</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\r\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-05-31 23:55:25', '2022-05-31 20:55:25', '', 3, 'http://localhost:8888/yars/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-06-01 00:03:40', '2022-05-31 21:03:40', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2022-06-01 00:03:40', '2022-05-31 21:03:40', '', 0, 'http://localhost:8888/yars/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2022-06-01 00:03:40', '2022-05-31 21:03:40', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2022-06-01 00:03:40', '2022-05-31 21:03:40', '', 0, 'http://localhost:8888/yars/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2022-06-01 21:12:32', '2022-06-01 18:12:32', '', 'Вездеходы', '', 'publish', 'closed', 'closed', '', 'korotkoe-opisanie-na-glavnoj', '', '', '2022-06-05 17:25:44', '2022-06-05 14:25:44', '', 0, 'http://localhost:8888/yars/?post_type=static-block&#038;p=39', 0, 'static-block', '', 0),
(40, 1, '2022-06-01 21:12:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-01 21:12:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2022-06-01 21:13:20', '2022-06-01 18:13:20', '', 'Безымянный-3 1', '', 'inherit', 'open', 'closed', '', 'bezymyannyj-3-1', '', '', '2022-06-01 21:13:20', '2022-06-01 18:13:20', '', 39, 'http://localhost:8888/yars/wp-content/uploads/2022/06/bezymyannyj-3-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2022-06-01 21:13:33', '2022-06-01 18:13:33', 'Вездеходы YARS - надёжные, комфортные, тёплые, простые в управлении и недорогие в обслуживании, по доступной цене с полной гарантией на все узлы и агрегаты. Вездеходы YARS обладают повышенной проходимостью, способны работать в суровых реалиях Русского севера и бездорожья. Вездеходы YARS разработаны и производятся с применением современных технологий на высокоточном оборудовании.\nДля построения и сборки машин используются узлы и агрегаты японского производства, что обеспечивает низкий расход топлива, непревзойдённую надежность, высокую проходимость, простоту в обслуживании и стабильную работу в любых условиях бездорожья и климата нашей огромной страны!', 'Вездеходы', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2022-06-01 21:13:33', '2022-06-01 18:13:33', '', 39, 'http://localhost:8888/yars/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-06-02 23:12:56', '2022-06-02 20:12:56', '', 'Галерея', '', 'publish', 'closed', 'closed', '', 'galereya', '', '', '2022-06-02 23:28:49', '2022-06-02 20:28:49', '', 0, 'http://localhost:8888/yars/?post_type=static-block&#038;p=43', 0, 'static-block', '', 0),
(44, 1, '2022-06-02 23:15:09', '2022-06-02 20:15:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"43\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Поля для галереи', 'polya-dlya-galerei', 'publish', 'closed', 'closed', '', 'group_629919cf66e9f', '', '', '2022-06-02 23:15:09', '2022-06-02 20:15:09', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2022-06-02 23:15:09', '2022-06-02 20:15:09', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Элементы', 'items', 'publish', 'closed', 'closed', '', 'field_62991a05a7d90', '', '', '2022-06-02 23:15:09', '2022-06-02 20:15:09', '', 44, 'http://localhost:8888/yars/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2022-06-02 23:15:09', '2022-06-02 20:15:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото', 'photo', 'publish', 'closed', 'closed', '', 'field_62991a2ca7d91', '', '', '2022-06-02 23:15:09', '2022-06-02 20:15:09', '', 45, 'http://localhost:8888/yars/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2022-06-02 23:16:42', '2022-06-02 20:16:42', '', '1-gigapixel-scale-4_00x', '', 'inherit', 'open', 'closed', '', '1-gigapixel-scale-4_00x', '', '', '2022-06-02 23:16:42', '2022-06-02 20:16:42', '', 43, 'http://localhost:8888/yars/wp-content/uploads/2022/06/1-gigapixel-scale-4_00x.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2022-06-04 11:35:28', '2022-06-04 08:35:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для отзывов', 'polya-dlya-otzyvov', 'publish', 'closed', 'closed', '', 'group_629b18f5cb5d2', '', '', '2022-06-04 11:37:51', '2022-06-04 08:37:51', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2022-06-04 11:35:28', '2022-06-04 08:35:28', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";i:5;s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Оценка', 'rating', 'publish', 'closed', 'closed', '', 'field_629b1905955d6', '', '', '2022-06-04 11:37:51', '2022-06-04 08:37:51', '', 49, 'http://localhost:8888/yars/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2022-06-04 11:35:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-04 11:35:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=reviews&p=51', 0, 'reviews', '', 0),
(52, 1, '2022-06-04 11:36:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-04 11:36:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=reviews&p=52', 0, 'reviews', '', 0),
(53, 1, '2022-06-04 11:36:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-04 11:36:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=reviews&p=53', 0, 'reviews', '', 0),
(54, 1, '2022-06-04 11:37:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-04 11:37:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=reviews&p=54', 0, 'reviews', '', 0),
(55, 1, '2022-06-04 11:37:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-06-04 11:37:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/yars/?post_type=reviews&p=55', 0, 'reviews', '', 0),
(56, 1, '2022-06-04 11:39:04', '2022-06-04 08:39:04', 'Набросаю отзыв кратко, на сколько это возможно. Автомобиль очень универсальный, хотя его пригодность для владельца зависит от преследуемых целей и задач, конечно\r\n\r\nНабросаю отзыв кратко, на сколько это возможно. Автомобиль очень универсальный, хотя его пригодность для владельца зависит от преследуемых целей и задач, конечно', 'Вадим Трофимов', 'Набросаю отзыв кратко, на сколько это возможно. Автомобиль очень универсальный, хотя его пригодность для владельца зависит от преследуемых целей и задач, конечно...', 'publish', 'closed', 'closed', '', 'vadim-trofimov', '', '', '2022-06-04 13:32:47', '2022-06-04 10:32:47', '', 0, 'http://localhost:8888/yars/?post_type=reviews&#038;p=56', 0, 'reviews', '', 0),
(57, 1, '2022-06-04 11:43:33', '2022-06-04 08:43:33', '', 'фото отзыва 1', '', 'inherit', 'open', 'closed', '', 'foto-otzyva-1', '', '', '2022-06-04 11:43:33', '2022-06-04 08:43:33', '', 56, 'http://localhost:8888/yars/wp-content/uploads/2022/06/foto-otzyva-1.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2022-06-04 14:12:16', '2022-06-04 11:12:16', 'test', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2022-06-04 14:12:16', '2022-06-04 11:12:16', '', 0, 'http://localhost:8888/yars/?post_type=reviews&#038;p=58', 0, 'reviews', '', 0),
(59, 1, '2022-06-05 14:40:50', '2022-06-05 11:40:50', '', 'Видео-обзоры', '', 'publish', 'closed', 'closed', '', 'video-obzory', '', '', '2022-06-05 15:36:08', '2022-06-05 12:36:08', '', 0, 'http://localhost:8888/yars/?post_type=static-block&#038;p=59', 0, 'static-block', '', 0),
(60, 1, '2022-06-05 14:45:20', '2022-06-05 11:45:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"59\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Поля для видео', 'polya-dlya-video', 'publish', 'closed', 'closed', '', 'group_629c96d153760', '', '', '2022-06-05 15:35:52', '2022-06-05 12:35:52', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2022-06-05 14:45:20', '2022-06-05 11:45:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Видео', 'videos', 'publish', 'closed', 'closed', '', 'field_629c96d554133', '', '', '2022-06-05 15:12:15', '2022-06-05 12:12:15', '', 60, 'http://localhost:8888/yars/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2022-06-05 14:45:20', '2022-06-05 11:45:20', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_629c9d10e843b\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"iframe\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Iframe', 'iframe', 'publish', 'closed', 'closed', '', 'field_629c971354134', '', '', '2022-06-05 15:15:29', '2022-06-05 12:15:29', '', 61, 'http://localhost:8888/yars/?post_type=acf-field&#038;p=62', 1, 'acf-field', '', 0),
(63, 1, '2022-06-05 15:12:15', '2022-06-05 12:12:15', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"simple\";s:14:\"Обычный\";s:6:\"iframe\";s:6:\"Iframe\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Тип', 'type', 'publish', 'closed', 'closed', '', 'field_629c9d10e843b', '', '', '2022-06-05 15:12:15', '2022-06-05 12:12:15', '', 61, 'http://localhost:8888/yars/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2022-06-05 15:15:29', '2022-06-05 12:15:29', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_629c9d10e843b\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"simple\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Видео', 'video', 'publish', 'closed', 'closed', '', 'field_629c9dbfd8609', '', '', '2022-06-05 15:35:52', '2022-06-05 12:35:52', '', 61, 'http://localhost:8888/yars/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2022-06-05 15:15:29', '2022-06-05 12:15:29', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_629c9e3cd860a', '', '', '2022-06-05 15:15:29', '2022-06-05 12:15:29', '', 64, 'http://localhost:8888/yars/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2022-06-05 15:15:29', '2022-06-05 12:15:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Превью', 'preview', 'publish', 'closed', 'closed', '', 'field_629c9e51d860b', '', '', '2022-06-05 15:15:29', '2022-06-05 12:15:29', '', 64, 'http://localhost:8888/yars/?post_type=acf-field&p=66', 1, 'acf-field', '', 0),
(68, 1, '2022-06-05 15:34:15', '2022-06-05 12:34:15', '', 'videoplayback (1)', '', 'inherit', 'open', 'closed', '', 'videoplayback-1', '', '', '2022-06-05 15:34:15', '2022-06-05 12:34:15', '', 59, 'http://localhost:8888/yars/wp-content/uploads/2022/06/videoplayback-1.mp4', 0, 'attachment', 'video/mp4', 0),
(69, 1, '2022-06-05 16:37:51', '2022-06-05 13:37:51', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"39\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"70\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Поля для контентных блоков с медиа', 'polya-dlya-kontentnyh-blokov-s-media', 'publish', 'closed', 'closed', '', 'group_629cb0f270e17', '', '', '2022-06-05 17:27:33', '2022-06-05 14:27:33', '', 0, 'http://localhost:8888/yars/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2022-06-05 16:37:44', '2022-06-05 13:37:44', '', 'О компании', '', 'publish', 'closed', 'closed', '', 'o-kompanii', '', '', '2022-06-05 17:58:11', '2022-06-05 14:58:11', '', 0, 'http://localhost:8888/yars/?post_type=static-block&#038;p=70', 0, 'static-block', '', 0),
(71, 1, '2022-06-05 16:37:51', '2022-06-05 13:37:51', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Контент', 'content', 'publish', 'closed', 'closed', '', 'field_629cb14636bbf', '', '', '2022-06-05 16:37:51', '2022-06-05 13:37:51', '', 69, 'http://localhost:8888/yars/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2022-06-05 16:40:29', '2022-06-05 13:40:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Изображения', 'images', 'publish', 'closed', 'closed', '', 'field_629cb1cd92425', '', '', '2022-06-05 16:40:29', '2022-06-05 13:40:29', '', 69, 'http://localhost:8888/yars/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2022-06-05 16:40:29', '2022-06-05 13:40:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_629cb23792426', '', '', '2022-06-05 16:40:29', '2022-06-05 13:40:29', '', 72, 'http://localhost:8888/yars/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2022-06-05 17:27:48', '2022-06-05 14:27:48', '', '11111', '', 'inherit', 'open', 'closed', '', '11111', '', '', '2022-06-05 17:27:48', '2022-06-05 14:27:48', '', 70, 'http://localhost:8888/yars/wp-content/uploads/2022/06/11111.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yars_termmeta`
--

CREATE TABLE `yars_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yars_terms`
--

CREATE TABLE `yars_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_terms`
--

INSERT INTO `yars_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0, 0),
(3, 'Header', 'header', 0, 0),
(4, 'Footer', 'footer', 0, 0),
(5, 'Footer second', 'footer-second', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yars_term_relationships`
--

CREATE TABLE `yars_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_term_relationships`
--

INSERT INTO `yars_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(11, 3, 0),
(17, 3, 0),
(18, 3, 0),
(29, 3, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(37, 5, 0),
(38, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yars_term_taxonomy`
--

CREATE TABLE `yars_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_term_taxonomy`
--

INSERT INTO `yars_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `yars_usermeta`
--

CREATE TABLE `yars_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_usermeta`
--

INSERT INTO `yars_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'yars_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'yars_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"54a41dfb9cd41c3079454611e342209c7cf4f0ad1c30f352bcbc19b932520e71\";a:4:{s:10:\"expiration\";i:1654601264;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36\";s:5:\"login\";i:1654428464;}}'),
(17, 1, 'yars_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:26:\"add-post-type-static-block\";i:1;s:21:\"add-post-type-banners\";i:2;s:22:\"add-post-type-articles\";i:3;s:23:\"add-post-type-questions\";i:4;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '5'),
(21, 1, 'yars_user-settings', 'libraryContent=browse'),
(22, 1, 'yars_user-settings-time', '1654432168'),
(23, 1, 'closedpostboxes_static-block', 'a:1:{i:0;s:26:\"static_block_meta_schedule\";}'),
(24, 1, 'metaboxhidden_static-block', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `yars_users`
--

CREATE TABLE `yars_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `yars_users`
--

INSERT INTO `yars_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3SnF2u2pnO72zecr2YxtD6SSaEuFr1', 'admin', 'burlakeugene@gmail.com', 'http://localhost:8888/yars', '2022-05-30 20:15:46', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yars_commentmeta`
--
ALTER TABLE `yars_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `yars_comments`
--
ALTER TABLE `yars_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `yars_links`
--
ALTER TABLE `yars_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `yars_options`
--
ALTER TABLE `yars_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `yars_postmeta`
--
ALTER TABLE `yars_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `yars_posts`
--
ALTER TABLE `yars_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `yars_termmeta`
--
ALTER TABLE `yars_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `yars_terms`
--
ALTER TABLE `yars_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `yars_term_relationships`
--
ALTER TABLE `yars_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `yars_term_taxonomy`
--
ALTER TABLE `yars_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `yars_usermeta`
--
ALTER TABLE `yars_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `yars_users`
--
ALTER TABLE `yars_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `yars_commentmeta`
--
ALTER TABLE `yars_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yars_comments`
--
ALTER TABLE `yars_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yars_links`
--
ALTER TABLE `yars_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yars_options`
--
ALTER TABLE `yars_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1087;

--
-- AUTO_INCREMENT for table `yars_postmeta`
--
ALTER TABLE `yars_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `yars_posts`
--
ALTER TABLE `yars_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `yars_termmeta`
--
ALTER TABLE `yars_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yars_terms`
--
ALTER TABLE `yars_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yars_term_taxonomy`
--
ALTER TABLE `yars_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yars_usermeta`
--
ALTER TABLE `yars_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `yars_users`
--
ALTER TABLE `yars_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
