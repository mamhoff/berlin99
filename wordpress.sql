-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2014 at 10:21 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-02-20 11:12:30', '2014-02-20 11:12:30', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'blogname', 'wordpress', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'a1exd@hotmail.co.uk', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:3:{i:0;s:21:"attachments/index.php";i:1;s:35:"categorytinymce/categorytinymce.php";i:2;s:35:"nav-menu-images/nav-menu-images.php";}', 'yes'),
(36, 'home', 'http://localhost/wordpress', 'yes'),
(37, 'category_base', '/apartments', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'underscores', 'yes'),
(45, 'stylesheet', 'underscores', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:4;a:3:{s:5:"title";s:41:"[:en]My English Title[:fr]My French Title";s:4:"text";s:0:"";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:57:"multisite-language-switcher/MultisiteLanguageSwitcher.php";a:2:{i:0;s:10:"MslsPlugin";i:1;s:9:"uninstall";}}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '4', 'yes'),
(88, 'page_on_front', '9', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:22:"sidebar-languagesocial";a:0:{}s:13:"sidebar-about";a:1:{i:0;s:6:"text-4";}s:18:"sidebar-apartments";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1394011723;a:1:{s:12:"qs_cron_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1394018074;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1394018138;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1394022600;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1394049180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:10:"no_content";s:52:"https://wordpress.org/wordpress-3.8.1-no-content.zip";s:11:"new_bundled";s:53:"https://wordpress.org/wordpress-3.8.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.1";s:7:"version";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1394005998;s:15:"version_checked";s:5:"3.8.1";s:12:"translations";a:0:{}}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1394002225;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:21:"attachments/index.php";s:5:"3.5.3";s:35:"categorytinymce/categorytinymce.php";s:3:"3.2";s:9:"hello.php";s:3:"1.6";s:57:"multisite-language-switcher/MultisiteLanguageSwitcher.php";s:7:"0.9.8.2";s:35:"nav-menu-images/nav-menu-images.php";s:3:"3.2";s:25:"qtranslate/qtranslate.php";s:6:"2.5.39";s:43:"qtranslate-extended/qtranslate-extended.php";s:5:"0.1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1394002151;s:7:"checked";a:5:{s:5:"bones";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";s:11:"underscores";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(106, '_site_transient_timeout_browser_b23b35ebcef1c8574981da690dfe9c1d', '1393499691', 'yes'),
(107, '_site_transient_browser_b23b35ebcef1c8574981da690dfe9c1d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"32.0.1700.107";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(126, '_transient_twentyfourteen_category_count', '1', 'yes'),
(127, 'theme_mods_twentyfourteen', 'a:8:{s:16:"header_textcolor";s:3:"fff";s:16:"background_color";s:6:"f5f5f5";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:23:"featured_content_layout";s:4:"grid";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392899142;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(131, 'current_theme', 'underscores', 'yes'),
(132, 'theme_mods_bones', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392902364;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(142, '_site_transient_timeout_wporg_theme_feature_list', '1392913142', 'yes'),
(143, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:6:"Layout";a:3:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(144, 'theme_mods_underscores', 'a:7:{i:0;b:0;s:16:"background_color";s:6:"ffffff";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(151, '_transient_timeout_plugin_slugs', '1394088663', 'no'),
(152, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:21:"attachments/index.php";i:2;s:35:"categorytinymce/categorytinymce.php";i:3;s:9:"hello.php";i:4;s:57:"multisite-language-switcher/MultisiteLanguageSwitcher.php";i:5;s:35:"nav-menu-images/nav-menu-images.php";i:6;s:25:"qtranslate/qtranslate.php";i:7;s:43:"qtranslate-extended/qtranslate-extended.php";}', 'no'),
(153, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1393970283', 'no'),
(154, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''planet.wordpress.org''</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(157, 'recently_activated', 'a:2:{s:43:"qtranslate-extended/qtranslate-extended.php";i:1393948417;s:25:"qtranslate/qtranslate.php";i:1393948415;}', 'yes'),
(158, 'qtranslate_next_update_mo', '1394533723', 'yes'),
(160, 'qtranslate_language_names', 'a:17:{s:2:"de";s:7:"Deutsch";s:2:"en";s:7:"English";s:2:"zh";s:6:"中文";s:2:"fi";s:5:"suomi";s:2:"fr";s:9:"Français";s:2:"nl";s:10:"Nederlands";s:2:"sv";s:7:"Svenska";s:2:"it";s:8:"Italiano";s:2:"ro";s:8:"Română";s:2:"hu";s:6:"Magyar";s:2:"ja";s:9:"日本語";s:2:"es";s:8:"Español";s:2:"vi";s:14:"Tiếng Việt";s:2:"ar";s:14:"العربية";s:2:"pt";s:10:"Português";s:2:"pl";s:6:"Polski";s:2:"gl";s:6:"galego";}', 'yes'),
(161, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"de";i:1;s:2:"en";}', 'yes'),
(162, 'qtranslate_default_language', 'en', 'yes'),
(163, 'qtranslate_flag_location', 'plugins/qtranslate/flags/', 'yes'),
(164, 'qtranslate_flags', 'a:16:{s:2:"en";s:6:"gb.png";s:2:"de";s:6:"de.png";s:2:"zh";s:6:"cn.png";s:2:"fi";s:6:"fi.png";s:2:"fr";s:6:"fr.png";s:2:"nl";s:6:"nl.png";s:2:"sv";s:6:"se.png";s:2:"it";s:6:"it.png";s:2:"ro";s:6:"ro.png";s:2:"hu";s:6:"hu.png";s:2:"ja";s:6:"jp.png";s:2:"es";s:6:"es.png";s:2:"vi";s:6:"vn.png";s:2:"ar";s:8:"arle.png";s:2:"pt";s:6:"br.png";s:2:"gl";s:10:"galego.png";}', 'yes'),
(165, 'qtranslate_locales', 'a:17:{s:2:"de";s:5:"de_DE";s:2:"en";s:5:"en_US";s:2:"zh";s:5:"zh_CN";s:2:"fi";s:2:"fi";s:2:"fr";s:5:"fr_FR";s:2:"nl";s:5:"nl_NL";s:2:"sv";s:5:"sv_SE";s:2:"it";s:5:"it_IT";s:2:"ro";s:5:"ro_RO";s:2:"hu";s:5:"hu_HU";s:2:"ja";s:2:"ja";s:2:"es";s:5:"es_ES";s:2:"vi";s:2:"vi";s:2:"ar";s:2:"ar";s:2:"pt";s:5:"pt_BR";s:2:"pl";s:5:"pl_PL";s:2:"gl";s:5:"gl_ES";}', 'yes'),
(166, 'qtranslate_na_messages', 'a:17:{s:2:"de";s:58:"Leider ist der Eintrag nur auf %LANG:, : und % verfügbar.";s:2:"en";s:55:"Sorry, this entry is only available in %LANG:, : and %.";s:2:"zh";s:50:"对不起，此内容只适用于%LANG:，:和%。";s:2:"fi";s:92:"Anteeksi, mutta tämä kirjoitus on saatavana ainoastaan näillä kielillä: %LANG:, : ja %.";s:2:"fr";s:65:"Désolé, cet article est seulement disponible en %LANG:, : et %.";s:2:"nl";s:78:"Onze verontschuldigingen, dit bericht is alleen beschikbaar in %LANG:, : en %.";s:2:"sv";s:66:"Tyvärr är denna artikel enbart tillgänglig på %LANG:, : och %.";s:2:"it";s:71:"Ci spiace, ma questo articolo è disponibile soltanto in %LANG:, : e %.";s:2:"ro";s:67:"Din păcate acest articol este disponibil doar în %LANG:, : și %.";s:2:"hu";s:73:"Sajnos ennek a bejegyzésnek csak %LANG:, : és % nyelvű változata van.";s:2:"ja";s:97:"申し訳ありません、このコンテンツはただ今　%LANG:、 :と %　のみです。";s:2:"es";s:68:"Disculpa, pero esta entrada está disponible sólo en %LANG:, : y %.";s:2:"vi";s:63:"Rất tiếc, mục này chỉ tồn tại ở %LANG:, : và %.";s:2:"ar";s:73:"عفوا، هذه المدخلة موجودة فقط في %LANG:, : و %.";s:2:"pt";s:70:"Desculpe-nos, mas este texto esta apenas disponível em %LANG:, : y %.";s:2:"pl";s:68:"Przepraszamy, ten wpis jest dostępny tylko w języku %LANG:, : i %.";s:2:"gl";s:66:"Sentímolo moito, ista entrada atopase unicamente en %LANG;,: e %.";}', 'yes'),
(167, 'qtranslate_date_formats', 'a:17:{s:2:"en";s:14:"%A %B %e%q, %Y";s:2:"de";s:17:"%A, der %e. %B %Y";s:2:"zh";s:5:"%x %A";s:2:"fi";s:8:"%e.&m.%C";s:2:"fr";s:11:"%A %e %B %Y";s:2:"nl";s:8:"%d/%m/%y";s:2:"sv";s:8:"%Y/%m/%d";s:2:"it";s:8:"%e %B %Y";s:2:"ro";s:12:"%A, %e %B %Y";s:2:"hu";s:12:"%Y %B %e, %A";s:2:"ja";s:15:"%Y年%m月%d日";s:2:"es";s:14:"%d de %B de %Y";s:2:"vi";s:8:"%d/%m/%Y";s:2:"ar";s:8:"%d/%m/%Y";s:2:"pt";s:14:"%d de %B de %Y";s:2:"pl";s:8:"%d/%m/%y";s:2:"gl";s:14:"%d de %B de %Y";}', 'yes'),
(168, 'qtranslate_time_formats', 'a:17:{s:2:"en";s:8:"%I:%M %p";s:2:"de";s:5:"%H:%M";s:2:"zh";s:7:"%I:%M%p";s:2:"fi";s:5:"%H:%M";s:2:"fr";s:5:"%H:%M";s:2:"nl";s:5:"%H:%M";s:2:"sv";s:5:"%H:%M";s:2:"it";s:5:"%H:%M";s:2:"ro";s:5:"%H:%M";s:2:"hu";s:5:"%H:%M";s:2:"ja";s:5:"%H:%M";s:2:"es";s:10:"%H:%M hrs.";s:2:"vi";s:5:"%H:%M";s:2:"ar";s:5:"%H:%M";s:2:"pt";s:10:"%H:%M hrs.";s:2:"pl";s:5:"%H:%M";s:2:"gl";s:10:"%H:%M hrs.";}', 'yes'),
(169, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js', 'yes'),
(170, 'qtranslate_url_mode', '1', 'yes'),
(171, 'qtranslate_term_name', 'a:6:{s:9:"KREUZBERG";a:2:{s:2:"de";s:9:"KREUZBERG";s:2:"en";s:9:"KREUZBERG";}s:9:"Neukölln";a:2:{s:2:"de";s:9:"Neukölln";s:2:"en";s:9:"Neukölln";}s:15:"PRENZLAUER BERG";a:2:{s:2:"de";s:15:"PRENZLAUER BERG";s:2:"en";s:15:"PRENZLAUER BERG";}s:14:"FRIEDRICHSHAIN";a:2:{s:2:"de";s:14:"FRIEDRICHSHAIN";s:2:"en";s:14:"FRIEDRICHSHAIN";}s:9:"ALT TEGEL";a:2:{s:2:"de";s:9:"ALT TEGEL";s:2:"en";s:9:"ALT TEGEL";}s:7:"SPANDAU";a:2:{s:2:"de";s:7:"SPANDAU";s:2:"en";s:7:"SPANDAU";}}', 'yes'),
(172, 'qtranslate_use_strftime', '3', 'yes'),
(173, 'qtranslate_detect_browser_language', '1', 'yes'),
(174, 'qtranslate_hide_untranslated', '0', 'yes'),
(175, 'qtranslate_auto_update_mo', '1', 'yes'),
(176, 'qtranslate_hide_default_language', '1', 'yes'),
(177, 'qtranslate_qtranslate_services', '0', 'yes'),
(181, '_site_transient_timeout_browser_2eafc93727dd7cbb81746b9535cba76f', '1394536189', 'yes'),
(182, '_site_transient_browser_2eafc93727dd7cbb81746b9535cba76f', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"7.0.1";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(187, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(193, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(197, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(202, 'widget_widget_multilanguage', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(219, 'category_children', 'a:0:{}', 'yes'),
(220, 'category_10', 'a:5:{s:17:"bottomdescription";s:306:"<p><b>Tegel Airport:</b><br /> 13 minute drive <br /> <b>Schönefeld Airport:</b><br /> 40 minute drive<br /> <b>Hauptbahnhof Station:</b><br /> 28 minute by public transit<br /> <b>Potsdamer Platz:</b><br /> 35 minute by public transit<br /> <b>East Side Gallery:</b><br /> 51 minute by public transit</p>";s:3:"img";s:0:"";s:13:"seo_met_title";s:0:"";s:16:"seo_met_keywords";s:0:"";s:19:"seo_met_description";s:0:"";}', 'yes'),
(221, 'rewrite_rules', 'a:68:{s:49:"apartments/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:44:"apartments/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:37:"apartments/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:19:"apartments/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(247, '_transient_is_multi_author', '0', 'yes'),
(248, '_transient_all_the_cool_cats', '2', 'yes'),
(259, '_site_transient_timeout_theme_roots', '1394007797', 'yes'),
(260, '_site_transient_theme_roots', 'a:5:{s:5:"bones";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:11:"underscores";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'default'),
(4, 4, '_edit_lock', '1392899300:1'),
(5, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1393951155:1'),
(8, 1, '_edit_lock', '1393927050:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1393948971:1'),
(11, 11, '_menu_item_type', 'post_type'),
(12, 11, '_menu_item_menu_item_parent', '0'),
(13, 11, '_menu_item_object_id', '9'),
(14, 11, '_menu_item_object', 'page'),
(15, 11, '_menu_item_target', ''),
(16, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 11, '_menu_item_xfn', ''),
(18, 11, '_menu_item_url', ''),
(47, 15, '_menu_item_type', 'custom'),
(48, 15, '_menu_item_menu_item_parent', '0'),
(49, 15, '_menu_item_object_id', '15'),
(50, 15, '_menu_item_object', 'custom'),
(51, 15, '_menu_item_target', ''),
(52, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 15, '_menu_item_xfn', ''),
(54, 15, '_menu_item_url', '#section1'),
(56, 16, '_menu_item_type', 'custom'),
(57, 16, '_menu_item_menu_item_parent', '0'),
(58, 16, '_menu_item_object_id', '16'),
(59, 16, '_menu_item_object', 'custom'),
(60, 16, '_menu_item_target', ''),
(61, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 16, '_menu_item_xfn', ''),
(63, 16, '_menu_item_url', '#section2'),
(65, 17, '_menu_item_type', 'custom'),
(66, 17, '_menu_item_menu_item_parent', '0'),
(67, 17, '_menu_item_object_id', '17'),
(68, 17, '_menu_item_object', 'custom'),
(69, 17, '_menu_item_target', ''),
(70, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 17, '_menu_item_xfn', ''),
(72, 17, '_menu_item_url', '#section3'),
(74, 18, '_menu_item_type', 'custom'),
(75, 18, '_menu_item_menu_item_parent', '0'),
(76, 18, '_menu_item_object_id', '18'),
(77, 18, '_menu_item_object', 'custom'),
(78, 18, '_menu_item_target', ''),
(79, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 18, '_menu_item_xfn', ''),
(81, 18, '_menu_item_url', '#section4'),
(83, 19, '_menu_item_type', 'custom'),
(84, 19, '_menu_item_menu_item_parent', '0'),
(85, 19, '_menu_item_object_id', '19'),
(86, 19, '_menu_item_object', 'custom'),
(87, 19, '_menu_item_target', ''),
(88, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 19, '_menu_item_xfn', ''),
(90, 19, '_menu_item_url', '#section4'),
(92, 20, '_menu_item_type', 'custom'),
(93, 20, '_menu_item_menu_item_parent', '0'),
(94, 20, '_menu_item_object_id', '20'),
(95, 20, '_menu_item_object', 'custom'),
(96, 20, '_menu_item_target', ''),
(97, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 20, '_menu_item_xfn', ''),
(99, 20, '_menu_item_url', 'http://facebook/'),
(101, 21, '_menu_item_type', 'custom'),
(102, 21, '_menu_item_menu_item_parent', '0'),
(103, 21, '_menu_item_object_id', '21'),
(104, 21, '_menu_item_object', 'custom'),
(105, 21, '_menu_item_target', ''),
(106, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 21, '_menu_item_xfn', ''),
(108, 21, '_menu_item_url', 'http://twitter/'),
(110, 9, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:22;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1393944327;}'),
(111, 31, '_wp_attached_file', '2014/03/1.jpg'),
(112, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:360;s:4:"file";s:13:"2014/03/1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(113, 32, '_wp_attached_file', '2014/03/2.jpg'),
(114, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:360;s:4:"file";s:13:"2014/03/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(115, 34, '_edit_last', '1'),
(116, 34, '_edit_lock', '1393956357:1'),
(122, 34, 'attachments', '{"attachments":[{"id":"31","fields":{"title":"1","caption":""}},{"id":"32","fields":{"title":"","caption":""}}]}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-02-20 11:12:30', '2014-02-20 11:12:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-02-20 11:12:30', '2014-02-20 11:12:30', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2014-02-20 11:12:30', '2014-02-20 11:12:30', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-02-20 11:12:30', '2014-02-20 11:12:30', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2014-02-20 12:30:09', '2014-02-20 12:30:09', '', 'page2', '', 'publish', 'open', 'open', '', 'page2-2', '', '', '2014-02-20 12:30:09', '2014-02-20 12:30:09', '', 0, 'http://localhost/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2014-02-20 12:30:09', '2014-02-20 12:30:09', '', 'page2', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-02-20 12:30:09', '2014-02-20 12:30:09', '', 4, 'http://localhost/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2014-02-20 12:42:24', '2014-02-20 12:42:24', '', 'yep', '', 'publish', 'open', 'open', '', 'yep', '', '', '2014-02-20 12:42:24', '2014-02-20 12:42:24', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2014-02-20 12:42:24', '2014-02-20 12:42:24', '', 'yep', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-02-20 12:42:24', '2014-02-20 12:42:24', '', 6, 'http://localhost/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-03-04 09:58:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-04 09:58:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2014-03-04 10:30:29', '2014-03-04 10:30:29', '<div class="col-1-2">\r\n<h2>WE OFFER</h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WE ARE</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div>', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-03-04 15:56:17', '2014-03-04 15:56:17', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2014-03-04 10:30:29', '2014-03-04 10:30:29', '', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 10:30:29', '2014-03-04 10:30:29', '', 9, 'http://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2014-03-04 11:21:52', '2014-03-04 11:21:52', '', 'HOME', '', 'publish', 'open', 'open', '', '11', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(15, 1, '2014-03-04 11:28:04', '2014-03-04 11:28:04', '', 'ABOUT', '', 'publish', 'open', 'open', '', 'about', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2014-03-04 11:28:04', '2014-03-04 11:28:04', '', 'APARTMENTS', '', 'publish', 'open', 'open', '', 'apartments', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2014-03-04 11:28:04', '2014-03-04 11:28:04', '', 'LANDLORDS', '', 'publish', 'open', 'open', '', 'landlords', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2014-03-04 11:28:04', '2014-03-04 11:28:04', '', 'CONTACT', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2014-03-04 11:28:04', '2014-03-04 11:28:04', '', 'LATEST', '', 'publish', 'open', 'open', '', 'latest', '', '', '2014-03-04 11:39:26', '2014-03-04 11:39:26', '', 0, 'http://localhost/wordpress/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2014-03-04 13:19:36', '2014-03-04 13:19:36', '', 'facebook', '', 'publish', 'open', 'open', '', 'facebook', '', '', '2014-03-04 13:19:36', '2014-03-04 13:19:36', '', 0, 'http://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2014-03-04 13:19:36', '2014-03-04 13:19:36', '', 'twitter', '', 'publish', 'open', 'open', '', 'twitter', '', '', '2014-03-04 13:19:36', '2014-03-04 13:19:36', '', 0, 'http://localhost/wordpress/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2014-03-04 14:33:09', '2014-03-04 14:33:09', '<!--:en--><div class="col-1-2">\r\n	  		<h2>WE OFFER</h2>\r\n	  		<p>We offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.</p>\r\n	  	</div>\r\n	  	<div class="col-1-2">\r\n	  		<h2>WE ARE</h2>\r\n	  		<p>We are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.</p>\r\n	  	</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 14:33:09', '2014-03-04 14:33:09', '', 9, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2014-03-04 14:48:30', '2014-03-04 14:48:30', '<!--:de--><div class="col-1-2">\n<h2>UNSERE ANGEBOT</h2>\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\n\n</div>\n<div class="col-1-2">\n<h2>WIR SIND</h2>\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\n\n</div><!--:--><!--:en--><div class="col-1-2">\n<h2>WE OFFER</h2>\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\n\n</div>\n<div class="col-1-2">\n<h2>WE ARE</h2>\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\n\n</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-autosave-v1', '', '', '2014-03-04 14:48:30', '2014-03-04 14:48:30', '', 9, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2014-03-04 14:44:25', '2014-03-04 14:44:25', '<!--:en--><div class="col-1-2">\r\n<h2>WE OFFER</h2>\r\nWe offer affordable furnished, and fully equipped, apartmentsection1.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WE ARE</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 14:44:25', '2014-03-04 14:44:25', '', 9, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2014-03-04 14:45:27', '2014-03-04 14:45:27', '<!--:en--><div class="col-1-2">\r\n	  		<h2>WE OFFER</h2>\r\n	  		<p>We offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.</p>\r\n	  	</div>\r\n	  	<div class="col-1-2">\r\n	  		<h2>WE ARE</h2>\r\n	  		<p>We are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.</p>\r\n	  	</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 14:45:27', '2014-03-04 14:45:27', '', 9, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2014-03-04 14:47:29', '2014-03-04 14:47:29', '<!--:de--><div class="col-1-2">\r\n<h2>UNSERE ANGEBOT </h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WIR SIND</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div><!--:--><!--:en--><div class="col-1-2">\r\n<h2>WE OFFER</h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WE ARE</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 14:47:29', '2014-03-04 14:47:29', '', 9, 'http://localhost/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-03-04 15:02:26', '2014-03-04 15:02:26', '<!--:de--><div class="col-1-2">\r\n<h2>UNSERE ANGEBOT</h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WIR SIND</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div><!--:--><!--:en--><div class="col-1-2">\r\n<h2>WE OFFER</h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WE ARE</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div><!--:-->', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 15:02:26', '2014-03-04 15:02:26', '', 9, 'http://localhost/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2014-03-04 15:56:17', '2014-03-04 15:56:17', '<div class="col-1-2">\r\n<h2>WE OFFER</h2>\r\nWe offer affordable furnished, and fully equipped, apartments directly to international people moving to Berlin for work or for studying. We rent directly to you on flexible, fair and transparent tenancy agreements. This means we cut out the need for expensive letting agents and agencies and we will be around to help and assist you through the duration of your tenancy.\r\n\r\n</div>\r\n<div class="col-1-2">\r\n<h2>WE ARE</h2>\r\nWe are a select group of landlords with well appointed and well positioned apartments in Berlin. We have over 10 years experience renting to international professionals, workers and students in Berlin and London. We have the experience and infrastructure to ensure our customer an excellent service. Our office is multi lingual, friendly and we endeavour to make your move to berlin as smooth as possible.\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-03-04 15:56:17', '2014-03-04 15:56:17', '', 9, 'http://localhost/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2014-03-04 16:38:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-04 16:38:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=29', 0, 'post', '', 0),
(30, 1, '2014-03-04 16:41:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-04 16:41:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2014-03-04 16:41:48', '2014-03-04 16:41:48', '', '1', '', 'inherit', 'open', 'open', '', '1', '', '', '2014-03-04 16:41:48', '2014-03-04 16:41:48', '', 0, 'http://localhost/wordpress/wp-content/uploads/2014/03/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2014-03-04 16:41:48', '2014-03-04 16:41:48', '', '', '', 'inherit', 'open', 'open', '', '2', '', '', '2014-03-04 16:41:48', '2014-03-04 16:41:48', '', 0, 'http://localhost/wordpress/wp-content/uploads/2014/03/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2014-03-04 16:42:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-04 16:42:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2014-03-04 16:52:58', '2014-03-04 16:52:58', '<p>Our Tegel apartments are in the center of Alt Tegel, close to the shops and just 1 minute walk from the subway (U-Bahn) and the S-Bahn. The journey to the central Mitte district of Berlin only takes about 20 to 30 minutes.</p><p><b>2 room (+ kitchen + bathroom) approx 60 sq m</b></p><p>&nbsp;</p>', 'Grußdorfstraße', '', 'publish', 'open', 'open', '', 'street-name', '', '', '2014-03-04 18:05:57', '2014-03-04 18:05:57', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2014-03-04 16:52:58', '2014-03-04 16:52:58', 'info\r\n\r\n&nbsp;\r\n\r\n[gallery]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery ids="32,31"]', 'street name', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-03-04 16:52:58', '2014-03-04 16:52:58', '', 34, 'http://localhost/wordpress/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2014-03-04 17:21:05', '2014-03-04 17:21:05', 'Our Tegel apartments are in the center of Alt Tegel, close to the shops and just 1 minute walk from the subway (U-Bahn) and the S-Bahn. The journey to the central Mitte district of Berlin only takes about 20 to 30 minutes.\n\n<b>2 room (+ kitchen + bathroom) approx 60 sq m</b>\n\n&nbsp;\n\n[gallery]\n\n&nbsp;\n\n&nbsp;\n\n[gallery ids="32,31"]', 'Grußdorfstraße', '', 'inherit', 'open', 'open', '', '34-autosave-v1', '', '', '2014-03-04 17:21:05', '2014-03-04 17:21:05', '', 34, 'http://localhost/wordpress/34-autosave-v1/', 0, 'revision', '', 0),
(37, 1, '2014-03-04 17:20:05', '2014-03-04 17:20:05', '<p>Our Tegel apartments are in the center of Alt Tegel, close to the shops and just 1 minute walk from the subway (U-Bahn) and the S-Bahn. The journey to the central Mitte district of Berlin only takes about 20 to 30 minutes.</p>\r\n\r\n<p><b>2 room (+ kitchen + bathroom) approx 60 sq m</b></p>\r\n\r\n&nbsp;\r\n\r\n[gallery]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery ids="32,31"]', 'street name', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-03-04 17:20:05', '2014-03-04 17:20:05', '', 34, 'http://localhost/wordpress/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2014-03-04 17:45:43', '2014-03-04 17:45:43', 'Our Tegel apartments are in the center of Alt Tegel, close to the shops and just 1 minute walk from the subway (U-Bahn) and the S-Bahn. The journey to the central Mitte district of Berlin only takes about 20 to 30 minutes.\r\n\r\n<b>2 room (+ kitchen + bathroom) approx 60 sq m</b>\r\n\r\n[gallery ids="32,31"]', 'Grußdorfstraße', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-03-04 17:45:43', '2014-03-04 17:45:43', '', 34, 'http://localhost/wordpress/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2014-03-04 18:05:57', '2014-03-04 18:05:57', '<p>Our Tegel apartments are in the center of Alt Tegel, close to the shops and just 1 minute walk from the subway (U-Bahn) and the S-Bahn. The journey to the central Mitte district of Berlin only takes about 20 to 30 minutes.</p><p><b>2 room (+ kitchen + bathroom) approx 60 sq m</b></p><p>&nbsp;</p>', 'Grußdorfstraße', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-03-04 18:05:57', '2014-03-04 18:05:57', '', 34, 'http://localhost/wordpress/34-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Main menu', 'main-menu', 0),
(4, 'social', 'social', 0),
(5, 'APARTMENTS', 'apartments', 0),
(6, 'KREUZBERG', 'kreuzberg', 0),
(7, 'Neukölln', 'neukolln', 0),
(8, 'PRENZLAUER BERG', 'prenzlauer-berg', 0),
(9, 'FRIEDRICHSHAIN', 'friedrichshain', 0),
(10, 'ALT TEGEL', 'alt-tegel', 0),
(11, 'SPANDAU', 'spandau', 0),
(12, 'post-format-gallery', 'post-format-gallery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(11, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 4, 0),
(21, 4, 0),
(34, 10, 0),
(34, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', 'Alt Tegel is a district in the north-west of Berlin. It is a pretty old part of Berlin with attractive buildings and some lovely lakes nearby. At the same time it has all the advantages of a big city: there are many shops and restaurants and excellent connections to public transport.', 0, 1),
(11, 11, 'category', '', 0, 0),
(12, 12, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'alex'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '8'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'nav_menu_recently_edited', '5'),
(18, 1, 'wp_user-settings', 'widgets_access=off&editor=html&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1393953600'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'alex', '$P$Bjks0cLfs5nsOU/9..5X1SyHpO7P/m.', 'alex', 'a1exd@hotmail.co.uk', '', '2014-02-20 11:12:30', '', 0, 'alex');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
