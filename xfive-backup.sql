# WordPress MySQL database migration
#
# Generated: Saturday 19. September 2020 15:08 UTC
# Hostname: 127.0.0.1:3306
# Database: `xfive`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `mzptrgs7_commentmeta`
#

DROP TABLE IF EXISTS `mzptrgs7_commentmeta`;


#
# Table structure of table `mzptrgs7_commentmeta`
#

CREATE TABLE `mzptrgs7_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_commentmeta`
#

#
# End of data contents of table `mzptrgs7_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_comments`
#

DROP TABLE IF EXISTS `mzptrgs7_comments`;


#
# Table structure of table `mzptrgs7_comments`
#

CREATE TABLE `mzptrgs7_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_comments`
#
INSERT INTO `mzptrgs7_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-10 08:13:31', '2020-09-10 08:13:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `mzptrgs7_comments`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_links`
#

DROP TABLE IF EXISTS `mzptrgs7_links`;


#
# Table structure of table `mzptrgs7_links`
#

CREATE TABLE `mzptrgs7_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_links`
#

#
# End of data contents of table `mzptrgs7_links`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_options`
#

DROP TABLE IF EXISTS `mzptrgs7_options`;


#
# Table structure of table `mzptrgs7_options`
#

CREATE TABLE `mzptrgs7_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_options`
#
INSERT INTO `mzptrgs7_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://xfive.task', 'yes'),
(2, 'home', 'http://xfive.task', 'yes'),
(3, 'blogname', 'Xfive Recruitment Task', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arturkowalczyc@wp.pl', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=56&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:33:"disable-emojis/disable-emojis.php";i:3;s:25:"timber-library/timber.php";i:4;s:49:"wp-sync-db-media-files/wp-sync-db-media-files.php";i:5;s:25:"wp-sync-db/wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:74:"C:\\Users\\Artur\\Projects\\xfive\\wp/wp-content/themes/xfive-chisel/single.php";i:1;s:74:"C:\\Users\\Artur\\Projects\\xfive\\wp/wp-content/themes/xfive-chisel/search.php";i:2;s:72:"C:\\Users\\Artur\\Projects\\xfive\\wp/wp-content/themes/xfive-chisel/page.php";i:3;s:84:"C:\\Users\\Artur\\Projects\\xfive\\wp/wp-content/themes/xfive-chisel/recruitment-task.php";i:4;s:81:"C:\\Users\\Artur\\Projects\\xfive\\wp/wp-content/themes/xfive-chisel/inc/acf-setup.php";}', 'no'),
(40, 'template', 'xfive-chisel', 'yes'),
(41, 'stylesheet', 'xfive-chisel', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '56', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615277611', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'mzptrgs7_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `mzptrgs7_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1600528415;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1600546415;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1600589614;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1600594713;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1600594714;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1601021614;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'theme_mods_twentytwenty', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1599725625;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(124, 'current_theme', 'Xfive', 'yes'),
(125, 'theme_switched', '', 'yes'),
(126, 'theme_mods_xfive-chisel', 'a:2:{s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(132, 'recovery_keys', 'a:0:{}', 'yes'),
(139, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"1sKD90ZWZ7njntLVxL8Xq6+URF0KiWJ7";s:10:"allow_pull";b:1;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(140, 'acf_version', '5.8.7', 'yes'),
(152, 'can_compress_scripts', '1', 'no'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(207, 'recently_activated', 'a:0:{}', 'yes'),
(235, 'recovery_mode_email_last_sent', '1600272829', 'yes') ;

#
# End of data contents of table `mzptrgs7_options`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_postmeta`
#

DROP TABLE IF EXISTS `mzptrgs7_postmeta`;


#
# Table structure of table `mzptrgs7_postmeta`
#

CREATE TABLE `mzptrgs7_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_postmeta`
#
INSERT INTO `mzptrgs7_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(608, 34, '_wp_trash_meta_status', 'publish'),
(609, 34, '_wp_trash_meta_time', '1600397948'),
(927, 56, '_edit_last', '1'),
(928, 56, '_wp_page_template', 'default'),
(929, 56, 'shape-images_0_image', '63'),
(930, 56, '_shape-images_0_image', 'image'),
(931, 56, 'shape-images_0_shape', 'circle'),
(932, 56, '_shape-images_0_shape', 'shape'),
(933, 56, 'shape-images', '4'),
(934, 56, '_shape-images', 'shape-images-options'),
(935, 57, 'shape-images_0_image', '37'),
(936, 57, '_shape-images_0_image', 'image'),
(937, 57, 'shape-images_0_shape', 'rectangle'),
(938, 57, '_shape-images_0_shape', 'shape'),
(939, 57, 'shape-images', '1'),
(940, 57, '_shape-images', 'shape-images-options'),
(941, 56, '_edit_lock', '1600527888:1'),
(942, 58, 'shape-images_0_image', '37'),
(943, 58, '_shape-images_0_image', 'image'),
(944, 58, 'shape-images_0_shape', 'rectangle'),
(945, 58, '_shape-images_0_shape', 'shape'),
(946, 58, 'shape-images', '1'),
(947, 58, '_shape-images', 'shape-images-options'),
(963, 61, '_wp_attached_file', '2020/09/new-zealand-583176_1920.jpg'),
(964, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:35:"2020/09/new-zealand-583176_1920.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:35:"new-zealand-583176_1920-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"new-zealand-583176_1920-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"new-zealand-583176_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"new-zealand-583176_1920-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(965, 62, '_wp_attached_file', '2020/09/new-zealand-583181_1920.jpg'),
(966, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:35:"2020/09/new-zealand-583181_1920.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:35:"new-zealand-583181_1920-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"new-zealand-583181_1920-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"new-zealand-583181_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"new-zealand-583181_1920-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(967, 63, '_wp_attached_file', '2020/09/new-zealand-679068_1920.jpg'),
(968, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:794;s:4:"file";s:35:"2020/09/new-zealand-679068_1920.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:35:"new-zealand-679068_1920-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"new-zealand-679068_1920-1024x678.jpg";s:5:"width";i:1024;s:6:"height";i:678;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"new-zealand-679068_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"new-zealand-679068_1920-768x508.jpg";s:5:"width";i:768;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(969, 64, '_wp_attached_file', '2020/09/sun-rise-661541_1920.jpg'),
(970, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:32:"2020/09/sun-rise-661541_1920.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:32:"sun-rise-661541_1920-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"sun-rise-661541_1920-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"sun-rise-661541_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"sun-rise-661541_1920-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(971, 56, 'shape-images_1_image', '61'),
(972, 56, '_shape-images_1_image', 'image'),
(973, 56, 'shape-images_1_shape', 'rectangle'),
(974, 56, '_shape-images_1_shape', 'shape'),
(975, 56, 'shape-images_2_image', '62'),
(976, 56, '_shape-images_2_image', 'image'),
(977, 56, 'shape-images_2_shape', 'rectangle'),
(978, 56, '_shape-images_2_shape', 'shape'),
(979, 56, 'shape-images_3_image', '64'),
(980, 56, '_shape-images_3_image', 'image'),
(981, 56, 'shape-images_3_shape', 'circle'),
(982, 56, '_shape-images_3_shape', 'shape'),
(983, 66, 'shape-images_0_image', '63'),
(984, 66, '_shape-images_0_image', 'image'),
(985, 66, 'shape-images_0_shape', 'circle'),
(986, 66, '_shape-images_0_shape', 'shape'),
(987, 66, 'shape-images', '4'),
(988, 66, '_shape-images', 'shape-images-options'),
(989, 66, 'shape-images_1_image', '61'),
(990, 66, '_shape-images_1_image', 'image'),
(991, 66, 'shape-images_1_shape', 'rectangle'),
(992, 66, '_shape-images_1_shape', 'shape'),
(993, 66, 'shape-images_2_image', '62'),
(994, 66, '_shape-images_2_image', 'image'),
(995, 66, 'shape-images_2_shape', 'rectangle'),
(996, 66, '_shape-images_2_shape', 'shape'),
(997, 66, 'shape-images_3_image', '64'),
(998, 66, '_shape-images_3_image', 'image'),
(999, 66, 'shape-images_3_shape', 'circle'),
(1000, 66, '_shape-images_3_shape', 'shape'),
(1004, 67, 'shape-images_0_image', '63'),
(1005, 67, '_shape-images_0_image', 'image'),
(1006, 67, 'shape-images_0_shape', 'circle'),
(1007, 67, '_shape-images_0_shape', 'shape'),
(1008, 67, 'shape-images', '4'),
(1009, 67, '_shape-images', 'shape-images-options'),
(1010, 67, 'shape-images_1_image', '61'),
(1011, 67, '_shape-images_1_image', 'image'),
(1012, 67, 'shape-images_1_shape', 'rectangle'),
(1013, 67, '_shape-images_1_shape', 'shape'),
(1014, 67, 'shape-images_2_image', '62'),
(1015, 67, '_shape-images_2_image', 'image'),
(1016, 67, 'shape-images_2_shape', 'rectangle'),
(1017, 67, '_shape-images_2_shape', 'shape'),
(1018, 67, 'shape-images_3_image', '64'),
(1019, 67, '_shape-images_3_image', 'image'),
(1020, 67, 'shape-images_3_shape', 'circle'),
(1021, 67, '_shape-images_3_shape', 'shape'),
(1022, 68, 'shape-images_0_image', '63'),
(1023, 68, '_shape-images_0_image', 'image'),
(1024, 68, 'shape-images_0_shape', 'circle'),
(1025, 68, '_shape-images_0_shape', 'shape'),
(1026, 68, 'shape-images', '4'),
(1027, 68, '_shape-images', 'shape-images-options'),
(1028, 68, 'shape-images_1_image', '61'),
(1029, 68, '_shape-images_1_image', 'image'),
(1030, 68, 'shape-images_1_shape', 'rectangle'),
(1031, 68, '_shape-images_1_shape', 'shape'),
(1032, 68, 'shape-images_2_image', '62'),
(1033, 68, '_shape-images_2_image', 'image'),
(1034, 68, 'shape-images_2_shape', 'rectangle'),
(1035, 68, '_shape-images_2_shape', 'shape'),
(1036, 68, 'shape-images_3_image', '64'),
(1037, 68, '_shape-images_3_image', 'image'),
(1038, 68, 'shape-images_3_shape', 'circle'),
(1039, 68, '_shape-images_3_shape', 'shape'),
(1040, 69, 'shape-images_0_image', '63'),
(1041, 69, '_shape-images_0_image', 'image') ;
INSERT INTO `mzptrgs7_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1042, 69, 'shape-images_0_shape', 'circle'),
(1043, 69, '_shape-images_0_shape', 'shape'),
(1044, 69, 'shape-images', '4'),
(1045, 69, '_shape-images', 'shape-images-options'),
(1046, 69, 'shape-images_1_image', '61'),
(1047, 69, '_shape-images_1_image', 'image'),
(1048, 69, 'shape-images_1_shape', 'rectangle'),
(1049, 69, '_shape-images_1_shape', 'shape'),
(1050, 69, 'shape-images_2_image', '62'),
(1051, 69, '_shape-images_2_image', 'image'),
(1052, 69, 'shape-images_2_shape', 'rectangle'),
(1053, 69, '_shape-images_2_shape', 'shape'),
(1054, 69, 'shape-images_3_image', '64'),
(1055, 69, '_shape-images_3_image', 'image'),
(1056, 69, 'shape-images_3_shape', 'circle'),
(1057, 69, '_shape-images_3_shape', 'shape'),
(1058, 63, '_edit_lock', '1600440128:1'),
(1059, 63, '_wp_attachment_image_alt', 'Lake-Wakatipu'),
(1060, 63, '_edit_last', '1'),
(1061, 64, '_edit_lock', '1600440147:1'),
(1062, 64, '_wp_attachment_image_alt', 'Sun-rise'),
(1063, 64, '_edit_last', '1'),
(1064, 62, '_edit_lock', '1600440166:1'),
(1065, 62, '_wp_attachment_image_alt', 'New-Zealand'),
(1066, 62, '_edit_last', '1'),
(1067, 61, '_edit_lock', '1600440231:1'),
(1068, 61, '_wp_attachment_image_alt', 'Whole-Lake-Wakatipu'),
(1069, 61, '_edit_last', '1'),
(1070, 70, 'shape-images_0_image', '63'),
(1071, 70, '_shape-images_0_image', 'image'),
(1072, 70, 'shape-images_0_shape', 'circle'),
(1073, 70, '_shape-images_0_shape', 'shape'),
(1074, 70, 'shape-images', '4'),
(1075, 70, '_shape-images', 'shape-images-options'),
(1076, 70, 'shape-images_1_image', '61'),
(1077, 70, '_shape-images_1_image', 'image'),
(1078, 70, 'shape-images_1_shape', 'rectangle'),
(1079, 70, '_shape-images_1_shape', 'shape'),
(1080, 70, 'shape-images_2_image', '62'),
(1081, 70, '_shape-images_2_image', 'image'),
(1082, 70, 'shape-images_2_shape', 'rectangle'),
(1083, 70, '_shape-images_2_shape', 'shape'),
(1084, 70, 'shape-images_3_image', '64'),
(1085, 70, '_shape-images_3_image', 'image'),
(1086, 70, 'shape-images_3_shape', 'circle'),
(1087, 70, '_shape-images_3_shape', 'shape') ;

#
# End of data contents of table `mzptrgs7_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_posts`
#

DROP TABLE IF EXISTS `mzptrgs7_posts`;


#
# Table structure of table `mzptrgs7_posts`
#

CREATE TABLE `mzptrgs7_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_posts`
#
INSERT INTO `mzptrgs7_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-10 08:13:31', '2020-09-10 08:13:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-10 08:13:31', '2020-09-10 08:13:31', '', 0, 'http://xfive.task/?p=1', 0, 'post', '', 1),
(3, 1, '2020-09-10 08:13:31', '2020-09-10 08:13:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://xfive.task.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-10 08:13:31', '2020-09-10 08:13:31', '', 0, 'http://xfive.task/?page_id=3', 0, 'page', '', 0),
(33, 1, '2020-09-18 02:53:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-18 02:53:39', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?p=33', 0, 'post', '', 0),
(34, 1, '2020-09-18 02:59:08', '2020-09-18 02:59:08', '{"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2020-09-18 02:59:08"},"page_on_front":{"value":"7","type":"option","user_id":1,"date_modified_gmt":"2020-09-18 02:59:08"}}', '', '', 'trash', 'closed', 'closed', '', '0365fd6e-5da3-4fa5-b7f9-d873e6a6b289', '', '', '2020-09-18 02:59:08', '2020-09-18 02:59:08', '', 0, 'http://xfive.task/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2020-09-18 03:02:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 03:02:51', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=35', 0, 'page', '', 0),
(36, 1, '2020-09-18 03:03:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 03:03:08', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=36', 0, 'page', '', 0),
(39, 1, '2020-09-18 03:51:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 03:51:47', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=39', 0, 'page', '', 0),
(49, 1, '2020-09-18 13:37:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:37:33', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=49', 0, 'page', '', 0),
(50, 1, '2020-09-18 13:38:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:38:04', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=50', 0, 'page', '', 0),
(51, 1, '2020-09-18 13:38:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:38:28', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=51', 0, 'page', '', 0),
(52, 1, '2020-09-18 13:39:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:39:21', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=52', 0, 'page', '', 0),
(53, 1, '2020-09-18 13:39:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:39:56', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=53', 0, 'page', '', 0),
(54, 1, '2020-09-18 13:43:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:43:39', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-09-18 13:43:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 13:43:42', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=55', 0, 'page', '', 0),
(56, 1, '2020-09-18 13:45:22', '2020-09-18 13:45:22', 'This project might be trickier than it seems. Look around carefully. What you see?\r\n\r\nThe sky is blue, the grass is green. The sun shines through the window.', 'New Zealand', '', 'publish', 'closed', 'closed', '', 'new-zealand', '', '', '2020-09-18 14:46:28', '2020-09-18 14:46:28', '', 0, 'http://xfive.task/?page_id=56', 0, 'page', '', 0),
(57, 1, '2020-09-18 13:45:22', '2020-09-18 13:45:22', '', '', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 13:45:22', '2020-09-18 13:45:22', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-09-18 13:55:18', '2020-09-18 13:55:18', '', 'Recruitment Task', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 13:55:18', '2020-09-18 13:55:18', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-09-18 14:14:28', '2020-09-18 14:14:28', '', 'Whole Lake Wakatipu', '', 'inherit', 'open', 'closed', '', 'new-zealand-583176_1920', '', '', '2020-09-18 14:45:41', '2020-09-18 14:45:41', '', 56, 'http://xfive.task/wp-content/uploads/2020/09/new-zealand-583176_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-09-18 14:14:29', '2020-09-18 14:14:29', '', 'New Zealand', '', 'inherit', 'open', 'closed', '', 'new-zealand-583181_1920', '', '', '2020-09-18 14:45:08', '2020-09-18 14:45:08', '', 56, 'http://xfive.task/wp-content/uploads/2020/09/new-zealand-583181_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-09-18 14:14:30', '2020-09-18 14:14:30', '', 'Lake Wakatipu', '', 'inherit', 'open', 'closed', '', 'new-zealand-679068_1920', '', '', '2020-09-18 14:44:30', '2020-09-18 14:44:30', '', 56, 'http://xfive.task/wp-content/uploads/2020/09/new-zealand-679068_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-09-18 14:14:30', '2020-09-18 14:14:30', '', 'Sun Rise', '', 'inherit', 'open', 'closed', '', 'sun-rise-661541_1920', '', '', '2020-09-18 14:44:47', '2020-09-18 14:44:47', '', 56, 'http://xfive.task/wp-content/uploads/2020/09/sun-rise-661541_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-09-18 14:14:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-18 14:14:36', '0000-00-00 00:00:00', '', 0, 'http://xfive.task/?page_id=65', 0, 'page', '', 0),
(66, 1, '2020-09-18 14:15:38', '2020-09-18 14:15:38', '', 'Recruitment Task', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 14:15:38', '2020-09-18 14:15:38', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-09-18 14:17:11', '2020-09-18 14:17:11', '', 'New Zealand', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 14:17:11', '2020-09-18 14:17:11', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-09-18 14:18:53', '2020-09-18 14:18:53', '<!--(figmeta)eyJmaWxlS2V5IjoibEVEUFdxYmxHcVE2eGFJcllTZ3Z1UiIsInBhc3RlSUQiOi0xLCJkYXRhVHlwZSI6InNjZW5lIn0K(/figmeta)--><!--(figma)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(/figma)-->This project might be trickier than it seems. Look around carefully. What you see? The sky is blue, the grass is green. The sun shines through the window.', 'New Zealand', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 14:18:53', '2020-09-18 14:18:53', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-09-18 14:21:21', '2020-09-18 14:21:21', 'This project might be trickier than it seems. Look around carefully. What you see? The sky is blue, the grass is green. The sun shines through the window.', 'New Zealand', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 14:21:21', '2020-09-18 14:21:21', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-09-18 14:46:28', '2020-09-18 14:46:28', 'This project might be trickier than it seems. Look around carefully. What you see?\r\n\r\nThe sky is blue, the grass is green. The sun shines through the window.', 'New Zealand', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-18 14:46:28', '2020-09-18 14:46:28', '', 56, 'http://xfive.task/56-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `mzptrgs7_posts`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_term_relationships`
#

DROP TABLE IF EXISTS `mzptrgs7_term_relationships`;


#
# Table structure of table `mzptrgs7_term_relationships`
#

CREATE TABLE `mzptrgs7_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_term_relationships`
#
INSERT INTO `mzptrgs7_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `mzptrgs7_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_term_taxonomy`
#

DROP TABLE IF EXISTS `mzptrgs7_term_taxonomy`;


#
# Table structure of table `mzptrgs7_term_taxonomy`
#

CREATE TABLE `mzptrgs7_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_term_taxonomy`
#
INSERT INTO `mzptrgs7_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `mzptrgs7_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_termmeta`
#

DROP TABLE IF EXISTS `mzptrgs7_termmeta`;


#
# Table structure of table `mzptrgs7_termmeta`
#

CREATE TABLE `mzptrgs7_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_termmeta`
#

#
# End of data contents of table `mzptrgs7_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_terms`
#

DROP TABLE IF EXISTS `mzptrgs7_terms`;


#
# Table structure of table `mzptrgs7_terms`
#

CREATE TABLE `mzptrgs7_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_terms`
#
INSERT INTO `mzptrgs7_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `mzptrgs7_terms`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_usermeta`
#

DROP TABLE IF EXISTS `mzptrgs7_usermeta`;


#
# Table structure of table `mzptrgs7_usermeta`
#

CREATE TABLE `mzptrgs7_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_usermeta`
#
INSERT INTO `mzptrgs7_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'mzptrgs7_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'mzptrgs7_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'mzptrgs7_dashboard_quick_press_last_post_id', '33'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'mzptrgs7_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'mzptrgs7_user-settings-time', '1600438876'),
(21, 1, 'session_tokens', 'a:2:{s:64:"2c7596306b84c277e3447885654467cf060ff1ce83a5d5e877cd6ad82740268a";a:4:{s:10:"expiration";i:1600486232;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0";s:5:"login";i:1600313432;}s:64:"2d2c57976ea2745ddbb3d98fb34168080f78444185edbd75a5c747bd3136b2b5";a:4:{s:10:"expiration";i:1600570417;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0";s:5:"login";i:1600397617;}}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(24, 1, 'mzptrgs7_media_library_mode', 'list') ;

#
# End of data contents of table `mzptrgs7_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `mzptrgs7_users`
#

DROP TABLE IF EXISTS `mzptrgs7_users`;


#
# Table structure of table `mzptrgs7_users`
#

CREATE TABLE `mzptrgs7_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mzptrgs7_users`
#
INSERT INTO `mzptrgs7_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhSe6X5iBJKtWigEcXvxQvdPuoyVCt.', 'admin', 'arturkowalczyc@wp.pl', 'http://xfive.task', '2020-09-10 08:13:31', '', 0, 'admin') ;

#
# End of data contents of table `mzptrgs7_users`
# --------------------------------------------------------

#
# Add constraints back in
#

