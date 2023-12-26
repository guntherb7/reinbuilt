-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-12-12 02:14:56','2023-12-12 02:14:56','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://reinbuilt.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','https://reinbuilt.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Reinbuilt','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:119:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"team/?$\";s:24:\"index.php?post_type=team\";s:37:\"team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:32:\"team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:24:\"team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:25:\"team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:40:\"team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:29:\"team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:21:\"team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:9:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7-honeypot/honeypot.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:24:\"simple-history/index.php\";i:5;s:27:\"svg-support/svg-support.php\";i:6;s:29:\"widget-logic/widget_logic.php\";i:7;s:23:\"wordfence/wordfence.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','reinbuilt','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','reinbuilt','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','56657','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:36:\"contact-form-7-honeypot/honeypot.php\";s:22:\"honeypot4cf7_uninstall\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1717899295','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:13:{i:1703600096;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703601313;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703602582;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703602587;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703635600;a:3:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703643296;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703644513;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703644514;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703645343;a:1:{s:29:\"simple_history/maybe_purge_db\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703645787;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1704124800;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1704164181;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1703598981;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (130,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1702348525;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (149,'current_theme','reinbuilt','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_amplify','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1702422809;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (151,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'recovery_mode_email_last_sent','1703193139','yes');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (157,'acf_version','5.8.5','yes');
INSERT INTO `wp_options` VALUES (159,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (160,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.8.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1702349823;s:7:\"version\";s:5:\"5.8.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (161,'honeypot4cf7_config','a:12:{s:14:\"store_honeypot\";i:0;s:11:\"placeholder\";s:0:\"\";s:21:\"accessibility_message\";s:0:\"\";s:22:\"w3c_valid_autocomplete\";a:1:{i:0;s:5:\"false\";}s:15:\"move_inline_css\";a:1:{i:0;s:5:\"false\";}s:9:\"nomessage\";a:1:{i:0;s:5:\"false\";}s:17:\"timecheck_enabled\";a:1:{i:0;s:5:\"false\";}s:15:\"timecheck_value\";i:4;s:14:\"honeypot_count\";i:0;s:21:\"honeypot_install_date\";i:1702349340;s:30:\"honeypot_cf7_req_msg_dismissed\";i:0;s:20:\"honeypot4cf7_version\";s:5:\"2.1.1\";}','yes');
INSERT INTO `wp_options` VALUES (162,'simple_history_db_version','5','yes');
INSERT INTO `wp_options` VALUES (163,'simple_history_show_as_page','1','yes');
INSERT INTO `wp_options` VALUES (164,'simple_history_show_on_dashboard','1','yes');
INSERT INTO `wp_options` VALUES (165,'simple_history_enable_rss_feed','0','yes');
INSERT INTO `wp_options` VALUES (166,'simple_history_rss_secret','rbzbjpixtyeivvvzqmup','yes');
INSERT INTO `wp_options` VALUES (168,'bodhi_svgs_plugin_version','2.5.5','yes');
INSERT INTO `wp_options` VALUES (169,'bodhi_svgs_settings','a:4:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:12:\"sanitize_svg\";s:2:\"on\";s:24:\"sanitize_on_upload_roles\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}}','yes');
INSERT INTO `wp_options` VALUES (170,'wordfence_ls_version','1.1.7','yes');
INSERT INTO `wp_options` VALUES (171,'wfls_last_role_change','1702349772','no');
INSERT INTO `wp_options` VALUES (172,'wordfence_version','7.11.0','yes');
INSERT INTO `wp_options` VALUES (173,'wordfence_case','','yes');
INSERT INTO `wp_options` VALUES (174,'wordfence_installed','1','yes');
INSERT INTO `wp_options` VALUES (175,'wordfenceActivated','1','yes');
INSERT INTO `wp_options` VALUES (176,'wf_plugin_act_error','','yes');
INSERT INTO `wp_options` VALUES (185,'simplehistory_AvailableUpdatesLogger_plugin_updates_available','a:6:{s:19:\"akismet/akismet.php\";a:1:{s:15:\"checked_version\";s:3:\"5.3\";}s:36:\"contact-form-7/wp-contact-form-7.php\";a:1:{s:15:\"checked_version\";s:5:\"5.8.5\";}s:24:\"simple-history/index.php\";a:1:{s:15:\"checked_version\";s:5:\"4.8.0\";}s:23:\"wordfence/wordfence.php\";a:1:{s:15:\"checked_version\";s:6:\"7.11.0\";}s:24:\"wordpress-seo/wp-seo.php\";a:1:{s:15:\"checked_version\";s:4:\"21.7\";}s:34:\"advanced-custom-fields-pro/acf.php\";a:1:{s:15:\"checked_version\";s:5:\"6.2.4\";}}','yes');
INSERT INTO `wp_options` VALUES (186,'simplehistory_AvailableUpdatesLogger_theme_updates_available','a:4:{s:14:\"twentynineteen\";a:1:{s:15:\"checked_version\";s:3:\"2.7\";}s:15:\"twentytwentyone\";a:1:{s:15:\"checked_version\";s:3:\"2.0\";}s:17:\"twentytwentythree\";a:1:{s:15:\"checked_version\";s:3:\"1.3\";}s:15:\"twentytwentytwo\";a:1:{s:15:\"checked_version\";s:3:\"1.6\";}}','yes');
INSERT INTO `wp_options` VALUES (216,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703598982;s:7:\"checked\";a:2:{s:9:\"reinbuilt\";s:5:\"1.1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (218,'widget_logic','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (260,'theme_mods_integrated','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1703199917;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (262,'theme_mods_reinbuilt','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1703199914;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (266,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (267,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (271,'yoast_migrations_free','a:1:{s:7:\"version\";s:6:\"19.5.1\";}','yes');
INSERT INTO `wp_options` VALUES (272,'wpseo','a:87:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:6:\"19.5.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1702426000;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:23:\"https://reinbuilt.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1702426001;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}','yes');
INSERT INTO `wp_options` VALUES (273,'wpseo_titles','a:125:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:10:\"title-team\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-team\";s:0:\"\";s:12:\"noindex-team\";b:0;s:23:\"display-metabox-pt-team\";b:1;s:23:\"post_types-team-maintax\";i:0;s:21:\"schema-page-type-team\";s:7:\"WebPage\";s:24:\"schema-article-type-team\";s:4:\"None\";s:17:\"social-title-team\";s:9:\"%%title%%\";s:23:\"social-description-team\";s:0:\"\";s:21:\"social-image-url-team\";s:0:\"\";s:20:\"social-image-id-team\";i:0;s:20:\"title-ptarchive-team\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-ptarchive-team\";s:0:\"\";s:22:\"bctitle-ptarchive-team\";s:0:\"\";s:22:\"noindex-ptarchive-team\";b:0;s:27:\"social-title-ptarchive-team\";s:21:\"%%pt_plural%% Archive\";s:33:\"social-description-ptarchive-team\";s:0:\"\";s:31:\"social-image-url-ptarchive-team\";s:0:\"\";s:30:\"social-image-id-ptarchive-team\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (274,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (314,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1703686988','no');
INSERT INTO `wp_options` VALUES (315,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (316,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (338,'_site_transient_timeout_browser_821789b99f9168330b06379c53813800','1703687052','no');
INSERT INTO `wp_options` VALUES (339,'_site_transient_browser_821789b99f9168330b06379c53813800','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"120.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (550,'https_migration_required','1','yes');
INSERT INTO `wp_options` VALUES (585,'_transient_timeout_acf_plugin_updates','1703771781','no');
INSERT INTO `wp_options` VALUES (586,'_transient_acf_plugin_updates','a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231128\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.5\";}}','no');
INSERT INTO `wp_options` VALUES (587,'_site_transient_timeout_theme_roots','1703600782','no');
INSERT INTO `wp_options` VALUES (588,'_site_transient_theme_roots','a:2:{s:9:\"reinbuilt\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (589,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703598982;s:8:\"response\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231128\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:36:\"contact-form-7-honeypot/honeypot.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/contact-form-7-honeypot\";s:4:\"slug\";s:23:\"contact-form-7-honeypot\";s:6:\"plugin\";s:36:\"contact-form-7-honeypot/honeypot.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/contact-form-7-honeypot/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/contact-form-7-honeypot.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-256x256.png?rev=2487322\";s:2:\"1x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-128x128.png?rev=2487322\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-1544x500.jpg?rev=2487322\";s:2:\"1x\";s:78:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-772x250.jpg?rev=2487322\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:24:\"simple-history/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/simple-history\";s:4:\"slug\";s:14:\"simple-history\";s:6:\"plugin\";s:24:\"simple-history/index.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-history/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/simple-history.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/simple-history/assets/icon-256x256.png?rev=3004846\";s:2:\"1x\";s:67:\"https://ps.w.org/simple-history/assets/icon-128x128.png?rev=3004846\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/simple-history/assets/banner-1544x500.png?rev=2661050\";s:2:\"1x\";s:69:\"https://ps.w.org/simple-history/assets/banner-772x250.png?rev=2661050\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:29:\"widget-logic/widget_logic.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/widget-logic\";s:4:\"slug\";s:12:\"widget-logic\";s:6:\"plugin\";s:29:\"widget-logic/widget_logic.php\";s:11:\"new_version\";s:6:\"5.10.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/widget-logic/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/widget-logic.5.10.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-256x256.png?rev=1619621\";s:2:\"1x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-128x128.png?rev=1619621\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/widget-logic/assets/banner-1544x500.jpg?rev=1619643\";s:2:\"1x\";s:67:\"https://ps.w.org/widget-logic/assets/banner-772x250.jpg?rev=1619643\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/widget-logic/assets/banner-1544x500-rtl.jpg?rev=1619621\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-logic/assets/banner-772x250-rtl.jpg?rev=1619621\";}s:8:\"requires\";s:3:\"3.0\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.11.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}}s:7:\"checked\";a:10:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.5\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:36:\"contact-form-7-honeypot/honeypot.php\";s:5:\"2.1.1\";s:24:\"simple-history/index.php\";s:5:\"4.8.0\";s:27:\"svg-support/svg-support.php\";s:5:\"2.5.5\";s:29:\"widget-logic/widget_logic.php\";s:6:\"5.10.4\";s:23:\"wordfence/wordfence.php\";s:6:\"7.11.0\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.5.1\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','page-contact.php');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_form','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (4,6,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@amplify.local>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (5,6,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@amplify.local>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (6,6,'_messages','a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}');
INSERT INTO `wp_postmeta` VALUES (7,6,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (8,6,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (9,6,'_hash','2cd782080da9297b48e43c30c41ccc88f027a2d6');
INSERT INTO `wp_postmeta` VALUES (10,7,'_edit_lock','1702416047:1');
INSERT INTO `wp_postmeta` VALUES (11,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (12,9,'_wp_trash_meta_time','1702413075');
INSERT INTO `wp_postmeta` VALUES (14,7,'_wp_page_template','page-about.php');
INSERT INTO `wp_postmeta` VALUES (15,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,7,'button','');
INSERT INTO `wp_postmeta` VALUES (17,7,'_button','field_634f41f8da15a');
INSERT INTO `wp_postmeta` VALUES (18,7,'masonry_layout','');
INSERT INTO `wp_postmeta` VALUES (19,7,'_masonry_layout','field_634f427d0433d');
INSERT INTO `wp_postmeta` VALUES (20,7,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (21,7,'_contact_block_copy','field_634f42bb10dea');
INSERT INTO `wp_postmeta` VALUES (22,11,'button','');
INSERT INTO `wp_postmeta` VALUES (23,11,'_button','field_634f41f8da15a');
INSERT INTO `wp_postmeta` VALUES (24,11,'masonry_layout','');
INSERT INTO `wp_postmeta` VALUES (25,11,'_masonry_layout','field_634f427d0433d');
INSERT INTO `wp_postmeta` VALUES (26,11,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (27,11,'_contact_block_copy','field_634f42bb10dea');
INSERT INTO `wp_postmeta` VALUES (28,2,'_edit_lock','1702416005:1');
INSERT INTO `wp_postmeta` VALUES (29,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,2,'intro','');
INSERT INTO `wp_postmeta` VALUES (31,2,'_intro','field_6350c7d75d6b1');
INSERT INTO `wp_postmeta` VALUES (32,2,'copy','');
INSERT INTO `wp_postmeta` VALUES (33,2,'_copy','field_6350c7dc5d6b2');
INSERT INTO `wp_postmeta` VALUES (34,12,'intro','');
INSERT INTO `wp_postmeta` VALUES (35,12,'_intro','field_6350c7d75d6b1');
INSERT INTO `wp_postmeta` VALUES (36,12,'copy','');
INSERT INTO `wp_postmeta` VALUES (37,12,'_copy','field_6350c7dc5d6b2');
INSERT INTO `wp_postmeta` VALUES (38,13,'_edit_lock','1702414892:1');
INSERT INTO `wp_postmeta` VALUES (39,13,'_wp_page_template','page-partners.php');
INSERT INTO `wp_postmeta` VALUES (40,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (41,13,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (42,13,'_hero_image','field_63670c4104b1d');
INSERT INTO `wp_postmeta` VALUES (43,13,'intro','');
INSERT INTO `wp_postmeta` VALUES (44,13,'_intro','field_6350c8e1dbd7a');
INSERT INTO `wp_postmeta` VALUES (45,13,'copy','');
INSERT INTO `wp_postmeta` VALUES (46,13,'_copy','field_6350c8e1dbd90');
INSERT INTO `wp_postmeta` VALUES (47,13,'partners','');
INSERT INTO `wp_postmeta` VALUES (48,13,'_partners','field_6350c8e1dbda8');
INSERT INTO `wp_postmeta` VALUES (49,13,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (50,13,'_contact_block_copy','field_6350c8e1e76f0');
INSERT INTO `wp_postmeta` VALUES (51,14,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (52,14,'_hero_image','field_63670c4104b1d');
INSERT INTO `wp_postmeta` VALUES (53,14,'intro','');
INSERT INTO `wp_postmeta` VALUES (54,14,'_intro','field_6350c8e1dbd7a');
INSERT INTO `wp_postmeta` VALUES (55,14,'copy','');
INSERT INTO `wp_postmeta` VALUES (56,14,'_copy','field_6350c8e1dbd90');
INSERT INTO `wp_postmeta` VALUES (57,14,'partners','');
INSERT INTO `wp_postmeta` VALUES (58,14,'_partners','field_6350c8e1dbda8');
INSERT INTO `wp_postmeta` VALUES (59,14,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (60,14,'_contact_block_copy','field_6350c8e1e76f0');
INSERT INTO `wp_postmeta` VALUES (61,15,'_edit_lock','1702414932:1');
INSERT INTO `wp_postmeta` VALUES (62,15,'_wp_page_template','page-products.php');
INSERT INTO `wp_postmeta` VALUES (63,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (64,15,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (65,15,'_hero_image','field_63670c113b056');
INSERT INTO `wp_postmeta` VALUES (66,15,'intro','');
INSERT INTO `wp_postmeta` VALUES (67,15,'_intro','field_6350c842eaec6');
INSERT INTO `wp_postmeta` VALUES (68,15,'copy','');
INSERT INTO `wp_postmeta` VALUES (69,15,'_copy','field_6350c84beaec7');
INSERT INTO `wp_postmeta` VALUES (70,15,'products','');
INSERT INTO `wp_postmeta` VALUES (71,15,'_products','field_6350c851eaec8');
INSERT INTO `wp_postmeta` VALUES (72,15,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (73,15,'_contact_block_copy','field_6350c88ceaece');
INSERT INTO `wp_postmeta` VALUES (74,16,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (75,16,'_hero_image','field_63670c113b056');
INSERT INTO `wp_postmeta` VALUES (76,16,'intro','');
INSERT INTO `wp_postmeta` VALUES (77,16,'_intro','field_6350c842eaec6');
INSERT INTO `wp_postmeta` VALUES (78,16,'copy','');
INSERT INTO `wp_postmeta` VALUES (79,16,'_copy','field_6350c84beaec7');
INSERT INTO `wp_postmeta` VALUES (80,16,'products','');
INSERT INTO `wp_postmeta` VALUES (81,16,'_products','field_6350c851eaec8');
INSERT INTO `wp_postmeta` VALUES (82,16,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (83,16,'_contact_block_copy','field_6350c88ceaece');
INSERT INTO `wp_postmeta` VALUES (84,17,'_edit_lock','1702415558:1');
INSERT INTO `wp_postmeta` VALUES (85,19,'_edit_lock','1702416146:1');
INSERT INTO `wp_postmeta` VALUES (86,19,'_wp_page_template','page-team.php');
INSERT INTO `wp_postmeta` VALUES (87,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,19,'team_list','');
INSERT INTO `wp_postmeta` VALUES (89,19,'_team_list','field_634f3eae9a858');
INSERT INTO `wp_postmeta` VALUES (90,19,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (91,19,'_contact_block_copy','field_634f3ed99a85a');
INSERT INTO `wp_postmeta` VALUES (92,20,'team_list','');
INSERT INTO `wp_postmeta` VALUES (93,20,'_team_list','field_634f3eae9a858');
INSERT INTO `wp_postmeta` VALUES (94,20,'contact_block_copy','');
INSERT INTO `wp_postmeta` VALUES (95,20,'_contact_block_copy','field_634f3ed99a85a');
INSERT INTO `wp_postmeta` VALUES (96,21,'_edit_lock','1702416102:1');
INSERT INTO `wp_postmeta` VALUES (97,21,'_wp_page_template','');
INSERT INTO `wp_postmeta` VALUES (98,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (99,21,'_wp_trash_meta_time','1702416265');
INSERT INTO `wp_postmeta` VALUES (100,21,'_wp_desired_post_slug','home');
INSERT INTO `wp_postmeta` VALUES (104,26,'_wp_attached_file','2023/12/LOGO.png');
INSERT INTO `wp_postmeta` VALUES (105,26,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:717;s:6:\"height\";i:137;s:4:\"file\";s:16:\"2023/12/LOGO.png\";s:8:\"filesize\";i:9581;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"LOGO-300x57.png\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2956;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"LOGO-150x137.png\";s:5:\"width\";i:150;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2391;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-12-12 02:14:56','2023-12-12 02:14:56','',0,'http://reinbuilt.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://reinbuilt.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Contact','','publish','closed','open','','contact','','','2023-12-12 21:13:10','2023-12-12 21:13:10','',0,'http://reinbuilt.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://reinbuilt.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-12-12 02:14:56','2023-12-12 02:14:56','',0,'http://reinbuilt.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-12-12 02:35:02','2023-12-12 02:35:02','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-12-12 02:35:02','2023-12-12 02:35:02','',0,'http://reinbuilt.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-12-12 02:48:54','2023-12-12 02:48:54','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amplify.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amplify.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2023-12-12 02:48:54','2023-12-12 02:48:54','',0,'http://reinbuilt.local/?post_type=wpcf7_contact_form&p=6',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-12-12 03:11:16','2023-12-12 03:11:16','','About','','publish','closed','closed','','about','','','2023-12-12 21:20:47','2023-12-12 21:20:47','',0,'http://reinbuilt.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-12-12 03:11:16','2023-12-12 03:11:16','<?php\n/**\n * Single template\n *\n * @package amplify\n * @author Tyler Means Business LLC\n */\nget_header();?>\n\n<div id=\"404-container\" class=\"container\">\n\n	<div id=\"single-post\">\n		<div class=\"single-post_container\">\n\n			<h1>404 - Page Not Found</h1>\n		\n			<div class=\"single-post_content\">	\n				<h3>Pages</h3>\n				<ul><?php wp_list_pages(\"title_li=\" ); ?></ul>\n				<h3>Posts</h3>\n				<ul><?php wp_get_archives(\'type=postbypost\'); ?></ul>\n			</div>\n		</div>\n	</div>\n</div>\n\n<?php get_footer(); ?>','','','inherit','closed','closed','','7-revision-v1','','','2023-12-12 03:11:16','2023-12-12 03:11:16','',7,'http://reinbuilt.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-12-12 20:31:15','2023-12-12 20:31:15','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-12 20:31:15\"\n    }\n}','','','trash','closed','closed','','44ffcea8-89f4-4015-b5b8-b2b74150d084','','','2023-12-12 20:31:15','2023-12-12 20:31:15','',0,'http://reinbuilt.local/44ffcea8-89f4-4015-b5b8-b2b74150d084/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-12-12 20:56:39','2023-12-12 20:56:39','','About','','inherit','closed','closed','','7-revision-v1','','','2023-12-12 20:56:39','2023-12-12 20:56:39','',7,'http://reinbuilt.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-12-12 20:59:33','2023-12-12 20:59:33','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://reinbuilt.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Contact','','inherit','closed','closed','','2-revision-v1','','','2023-12-12 20:59:33','2023-12-12 20:59:33','',2,'http://reinbuilt.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-12-12 21:00:46','2023-12-12 21:00:46','','Partners','','publish','closed','closed','','partners','','','2023-12-12 21:00:46','2023-12-12 21:00:46','',0,'http://reinbuilt.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-12-12 21:00:46','2023-12-12 21:00:46','','Partners','','inherit','closed','closed','','13-revision-v1','','','2023-12-12 21:00:46','2023-12-12 21:00:46','',13,'http://reinbuilt.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-12-12 21:02:12','2023-12-12 21:02:12','','Products','','publish','closed','closed','','products','','','2023-12-12 21:02:12','2023-12-12 21:02:12','',0,'http://reinbuilt.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-12-12 21:02:12','2023-12-12 21:02:12','','Products','','inherit','closed','closed','','15-revision-v1','','','2023-12-12 21:02:12','2023-12-12 21:02:12','',15,'http://reinbuilt.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-12-12 21:03:00','2023-12-12 21:03:00','','Results','','publish','closed','closed','','results','','','2023-12-12 21:03:00','2023-12-12 21:03:00','',0,'http://reinbuilt.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-12-12 21:03:00','2023-12-12 21:03:00','','Results','','inherit','closed','closed','','17-revision-v1','','','2023-12-12 21:03:00','2023-12-12 21:03:00','',17,'http://reinbuilt.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-12-12 21:21:39','2023-12-12 21:21:39','','Our Team','','publish','closed','closed','','our-team','','','2023-12-12 21:21:39','2023-12-12 21:21:39','',0,'http://reinbuilt.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-12-12 21:21:39','2023-12-12 21:21:39','','Our Team','','inherit','closed','closed','','19-revision-v1','','','2023-12-12 21:21:39','2023-12-12 21:21:39','',19,'http://reinbuilt.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-12-12 21:22:49','2023-12-12 21:22:49','','Home','','trash','closed','closed','','home__trashed','','','2023-12-12 21:24:25','2023-12-12 21:24:25','',0,'http://reinbuilt.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-12-12 21:22:49','2023-12-12 21:22:49','','Home','','inherit','closed','closed','','21-revision-v1','','','2023-12-12 21:22:49','2023-12-12 21:22:49','',21,'http://reinbuilt.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-12-20 14:24:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-12-20 14:24:15','0000-00-00 00:00:00','',0,'http://reinbuilt.local/?p=24',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-12-22 02:12:21','2023-12-22 02:12:21','','LOGO','','inherit','open','closed','','logo','','','2023-12-22 02:12:21','2023-12-22 02:12:21','',0,'http://reinbuilt.local/wp-content/uploads/2023/12/LOGO.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history`
--

DROP TABLE IF EXISTS `wp_simple_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_simple_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `logger` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `occasionsID` varchar(32) DEFAULT NULL,
  `initiator` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `loggerdate` (`logger`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history`
--

LOCK TABLES `wp_simple_history` WRITE;
/*!40000 ALTER TABLE `wp_simple_history` DISABLE KEYS */;
INSERT INTO `wp_simple_history` VALUES (1,'2023-12-12 02:49:03','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','aa85c7e2696b649d547c24217de9f06c','wp_user');
INSERT INTO `wp_simple_history` VALUES (2,'2023-12-12 02:49:03','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','e14eefaa34d3aa2eee8b0bb134e004e9','wp_user');
INSERT INTO `wp_simple_history` VALUES (3,'2023-12-12 02:49:03','SimpleLogger','info','Because Simple History was only recently installed, this feed does not display many events yet. As long as the plugin remains activated you will soon see detailed information about page edits, plugin updates, users logging in, and much more.','2ad0ab965d6728820180feeaab627fcf','wp');
INSERT INTO `wp_simple_history` VALUES (4,'2023-12-12 02:49:03','SimpleLogger','info','Welcome to Simple History!\n\nThis is the main history feed. It will contain events that this plugin has logged.','0c4babaacbe315745cbb536eaa41278c','wp');
INSERT INTO `wp_simple_history` VALUES (5,'2023-12-12 02:49:03','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','aa85c7e2696b649d547c24217de9f06c','wp');
INSERT INTO `wp_simple_history` VALUES (6,'2023-12-12 02:49:03','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','e14eefaa34d3aa2eee8b0bb134e004e9','wp');
INSERT INTO `wp_simple_history` VALUES (7,'2023-12-12 02:49:05','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','445b752076fd6bc003be19ace07b1da1','wp_user');
INSERT INTO `wp_simple_history` VALUES (8,'2023-12-12 02:49:07','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','75ce18d7fffc8cfc52f9b23f7563cca1','wp_user');
INSERT INTO `wp_simple_history` VALUES (9,'2023-12-12 02:49:11','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','98ef5a59bfae89125b4c8a4abf475689','wp_user');
INSERT INTO `wp_simple_history` VALUES (10,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','73dbbfecd5ac23b5fc4c9696dc5fea33','wp');
INSERT INTO `wp_simple_history` VALUES (11,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','18ab03249e060c92c18ca7bb769ad441','wp');
INSERT INTO `wp_simple_history` VALUES (12,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','edf7cf1ae04f47182a7f0edeab1c1c1e','wp');
INSERT INTO `wp_simple_history` VALUES (13,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','6d75e3c165df1b632450cfc68816477b','wp');
INSERT INTO `wp_simple_history` VALUES (14,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','afb11f6f5389b2bfd1e1709ff8c1f7fb','wp');
INSERT INTO `wp_simple_history` VALUES (15,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','d5b3bbafcfca006218a173b1475af5d0','wp');
INSERT INTO `wp_simple_history` VALUES (16,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to theme \"{theme_name}\"','856fda0ba14a4f89ed88525f88114c74','wp');
INSERT INTO `wp_simple_history` VALUES (17,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to theme \"{theme_name}\"','353e7f2dde53e8e762f862e491ab52e7','wp');
INSERT INTO `wp_simple_history` VALUES (18,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to theme \"{theme_name}\"','5f3621ed4b905467ac0b965643cb33ef','wp');
INSERT INTO `wp_simple_history` VALUES (19,'2023-12-12 02:49:22','AvailableUpdatesLogger','notice','Found an update to theme \"{theme_name}\"','aad28c81b594cbaa6ca3abd5d2889d9d','wp');
INSERT INTO `wp_simple_history` VALUES (20,'2023-12-12 02:56:22','SimplePluginLogger','info','Updated plugin \"{plugin_name}\" to {plugin_version} from {plugin_prev_version}','402cecb9113159161211a54746d8bcaa','wp_user');
INSERT INTO `wp_simple_history` VALUES (21,'2023-12-12 03:11:16','SimplePostLogger','info','Created {post_type} \"{post_title}\"','713adeab8db262ec298a1325fa953d8d','wp_user');
INSERT INTO `wp_simple_history` VALUES (22,'2023-12-12 20:26:48','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','99bf0cef1b5b520e81f7f9c265ee8875','wp');
INSERT INTO `wp_simple_history` VALUES (23,'2023-12-12 20:31:15','SimpleThemeLogger','info','Customized theme appearance \"{setting_id}\"','f953db594f7daeec606ed79762d97d5d','wp_user');
INSERT INTO `wp_simple_history` VALUES (24,'2023-12-12 20:56:39','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','b65dc738241d3077273745d6de115056','wp_user');
INSERT INTO `wp_simple_history` VALUES (25,'2023-12-12 20:56:51','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','b65dc738241d3077273745d6de115056','wp_user');
INSERT INTO `wp_simple_history` VALUES (26,'2023-12-12 20:59:33','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','796b1dfead18f8cf04fbc771f8d0c22e','wp_user');
INSERT INTO `wp_simple_history` VALUES (27,'2023-12-12 20:59:41','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','796b1dfead18f8cf04fbc771f8d0c22e','wp_user');
INSERT INTO `wp_simple_history` VALUES (28,'2023-12-12 21:00:46','SimplePostLogger','info','Created {post_type} \"{post_title}\"','e03fbc1ff19dd69cf0b483658926065d','wp_user');
INSERT INTO `wp_simple_history` VALUES (29,'2023-12-12 21:02:12','SimplePostLogger','info','Created {post_type} \"{post_title}\"','68efb8484c45e8871b99cffe1536e7ee','wp_user');
INSERT INTO `wp_simple_history` VALUES (30,'2023-12-12 21:03:00','SimplePostLogger','info','Created {post_type} \"{post_title}\"','5490ad327340b5f7e236bae153836a24','wp_user');
INSERT INTO `wp_simple_history` VALUES (31,'2023-12-12 21:13:10','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','796b1dfead18f8cf04fbc771f8d0c22e','wp_user');
INSERT INTO `wp_simple_history` VALUES (32,'2023-12-12 21:20:47','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','b65dc738241d3077273745d6de115056','wp_user');
INSERT INTO `wp_simple_history` VALUES (33,'2023-12-12 21:21:39','SimplePostLogger','info','Created {post_type} \"{post_title}\"','21882c5628b2b52797d85819de2151b0','wp_user');
INSERT INTO `wp_simple_history` VALUES (34,'2023-12-12 21:22:49','SimplePostLogger','info','Created {post_type} \"{post_title}\"','262008f55c62f3f24fe3499feb7e8df1','wp_user');
INSERT INTO `wp_simple_history` VALUES (35,'2023-12-12 21:23:29','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','486ac70337d085db89d97ba8a2ec2e32','wp_user');
INSERT INTO `wp_simple_history` VALUES (36,'2023-12-12 21:23:34','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','486ac70337d085db89d97ba8a2ec2e32','wp_user');
INSERT INTO `wp_simple_history` VALUES (37,'2023-12-12 21:23:53','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','486ac70337d085db89d97ba8a2ec2e32','wp_user');
INSERT INTO `wp_simple_history` VALUES (38,'2023-12-12 21:24:25','SimplePostLogger','info','Moved {post_type} \"{post_title}\" to the trash','a0ddc3e264caf6a28fa363a84b4ecfc7','wp_user');
INSERT INTO `wp_simple_history` VALUES (39,'2023-12-12 23:08:14','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (40,'2023-12-12 23:13:29','SimpleThemeLogger','info','Switched theme to \"{theme_name}\" from \"{prev_theme_name}\"','27d205e1f33dcab13ffb68cf87bfdf1f','wp_user');
INSERT INTO `wp_simple_history` VALUES (41,'2023-12-12 23:13:45','SimpleThemeLogger','info','Switched theme to \"{theme_name}\" from \"{prev_theme_name}\"','f7f5121f02ffbd86cc5b90473f3e74cd','wp_user');
INSERT INTO `wp_simple_history` VALUES (42,'2023-12-12 23:16:32','SimpleOptionsLogger','info','Updated option \"{option}\"','4beac11dab4feea9f70df966b0dcb0fc','wp_user');
INSERT INTO `wp_simple_history` VALUES (43,'2023-12-13 00:06:40','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','19b93552349e06c31ee2746da3cc8fc5','wp_user');
INSERT INTO `wp_simple_history` VALUES (44,'2023-12-20 14:23:09','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','19ce914149d3140a5cb715adcd9b30ae','wp');
INSERT INTO `wp_simple_history` VALUES (45,'2023-12-20 14:24:11','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (46,'2023-12-21 21:11:58','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (47,'2023-12-21 21:12:19','SimplePluginLogger','info','Deactivated plugin \"{plugin_name}\"','ff2ca35a4e926d90ae61fa6e8e679526','wp_user');
INSERT INTO `wp_simple_history` VALUES (48,'2023-12-21 21:51:58','SimplePluginLogger','info','Deleted plugin \"{plugin_name}\"','2cd03fd175624024ce6c434594143d30','wp_user');
INSERT INTO `wp_simple_history` VALUES (49,'2023-12-21 21:52:43','SimpleMediaLogger','info','Created {post_type} \"{attachment_title}\"','53316538a3e048dceb23a4751725c43a','wp_user');
INSERT INTO `wp_simple_history` VALUES (50,'2023-12-21 21:52:44','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','45c0407428421aeaa200ba3e13636d86','wp_user');
INSERT INTO `wp_simple_history` VALUES (51,'2023-12-21 21:52:45','SimpleMediaLogger','info','Deleted {post_type} \"{attachment_title}\" (\"{attachment_filename}\")','a8e234ee8caae216a60cbfa8c2d0d1d3','wp_user');
INSERT INTO `wp_simple_history` VALUES (52,'2023-12-21 21:53:13','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','7776f5f09ea94206e75a377a15ed4148','wp_user');
INSERT INTO `wp_simple_history` VALUES (53,'2023-12-21 23:05:14','SimpleThemeLogger','info','Switched theme to \"{theme_name}\" from \"{prev_theme_name}\"','27d205e1f33dcab13ffb68cf87bfdf1f','wp_user');
INSERT INTO `wp_simple_history` VALUES (54,'2023-12-21 23:05:17','SimpleThemeLogger','info','Switched theme to \"{theme_name}\" from \"{prev_theme_name}\"','f7f5121f02ffbd86cc5b90473f3e74cd','wp_user');
INSERT INTO `wp_simple_history` VALUES (55,'2023-12-22 02:12:21','SimpleMediaLogger','info','Created {post_type} \"{attachment_title}\"','630a71c67c65ad5d3ca8d73706d30aac','wp_user');
INSERT INTO `wp_simple_history` VALUES (56,'2023-12-23 00:44:41','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (57,'2023-12-23 00:44:53','SimpleOptionsLogger','info','Updated option \"{option}\"','0464286b69bab6965bf447d1bb4aafb6','wp_user');
INSERT INTO `wp_simple_history` VALUES (58,'2023-12-23 00:44:53','SimpleOptionsLogger','info','Updated option \"{option}\"','72c851052bbee1047372a83e63d5d4f0','wp_user');
INSERT INTO `wp_simple_history` VALUES (59,'2023-12-23 00:44:53','SimpleOptionsLogger','info','Updated option \"{option}\"','01d12ddd9ecb2cf443b99a4b55b887ec','wp_user');
INSERT INTO `wp_simple_history` VALUES (60,'2023-12-23 00:44:53','SimpleOptionsLogger','info','Updated option \"{option}\"','e899a668bd08186be2931e762b708379','wp_user');
INSERT INTO `wp_simple_history` VALUES (61,'2023-12-23 00:45:08','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (62,'2023-12-23 00:45:42','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
/*!40000 ALTER TABLE `wp_simple_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history_contexts`
--

DROP TABLE IF EXISTS `wp_simple_history_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_simple_history_contexts` (
  `context_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `history_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`context_id`),
  KEY `history_id` (`history_id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history_contexts`
--

LOCK TABLES `wp_simple_history_contexts` WRITE;
/*!40000 ALTER TABLE `wp_simple_history_contexts` DISABLE KEYS */;
INSERT INTO `wp_simple_history_contexts` VALUES (1,1,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (2,1,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (3,1,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (4,1,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (5,1,'plugin_author','PÃ¤r ThernstrÃ¶m');
INSERT INTO `wp_simple_history_contexts` VALUES (6,1,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (7,1,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (8,1,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (9,1,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (10,1,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (11,1,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (12,2,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (13,2,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (14,2,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (15,2,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (16,2,'plugin_author','PÃ¤r ThernstrÃ¶m');
INSERT INTO `wp_simple_history_contexts` VALUES (17,2,'plugin_slug','simple-history');
INSERT INTO `wp_simple_history_contexts` VALUES (18,2,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (19,2,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (20,2,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (21,2,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (22,2,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (23,2,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (24,2,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (25,3,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (26,3,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (27,3,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (28,3,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (29,3,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (30,4,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (31,4,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (32,4,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (33,4,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (34,4,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (35,5,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (36,5,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (37,5,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (38,5,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (39,5,'plugin_author','PÃ¤r ThernstrÃ¶m');
INSERT INTO `wp_simple_history_contexts` VALUES (40,5,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (41,5,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (42,5,'_wp_cron_current_filter','simple_history/loggers_loaded');
INSERT INTO `wp_simple_history_contexts` VALUES (43,5,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (44,6,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (45,6,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (46,6,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (47,6,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (48,6,'plugin_author','PÃ¤r ThernstrÃ¶m');
INSERT INTO `wp_simple_history_contexts` VALUES (49,6,'plugin_slug','simple-history');
INSERT INTO `wp_simple_history_contexts` VALUES (50,6,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (51,6,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (52,6,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (53,6,'_wp_cron_current_filter','simple_history/loggers_loaded');
INSERT INTO `wp_simple_history_contexts` VALUES (54,6,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (55,7,'plugin_name','SVG Support');
INSERT INTO `wp_simple_history_contexts` VALUES (56,7,'plugin_slug','svg-support');
INSERT INTO `wp_simple_history_contexts` VALUES (57,7,'plugin_title','<a href=\"http://wordpress.org/plugins/svg-support/\">SVG Support</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (58,7,'plugin_description','Upload SVG files to the Media Library and render SVG files inline for direct styling/animation of an SVG&#8217;s internal elements using CSS/JS. <cite>By <a href=\"https://benbodhi.com\">Benbodhi</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (59,7,'plugin_author','<a href=\"https://benbodhi.com\">Benbodhi</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (60,7,'plugin_version','2.5.5');
INSERT INTO `wp_simple_history_contexts` VALUES (61,7,'plugin_url','http://wordpress.org/plugins/svg-support/');
INSERT INTO `wp_simple_history_contexts` VALUES (62,7,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (63,7,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (64,7,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (65,7,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (66,7,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (67,7,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (68,8,'plugin_name','Widget Logic');
INSERT INTO `wp_simple_history_contexts` VALUES (69,8,'plugin_slug','widget-logic');
INSERT INTO `wp_simple_history_contexts` VALUES (70,8,'plugin_title','Widget Logic');
INSERT INTO `wp_simple_history_contexts` VALUES (71,8,'plugin_description','Control widgets with WP&#8217;s conditional tags is_home etc <cite>By <a href=\"https://wpchef.org\">WPChef</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (72,8,'plugin_author','<a href=\"https://wpchef.org\">WPChef</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (73,8,'plugin_version','5.10.4');
INSERT INTO `wp_simple_history_contexts` VALUES (74,8,'plugin_url','');
INSERT INTO `wp_simple_history_contexts` VALUES (75,8,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (76,8,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (77,8,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (78,8,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (79,8,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (80,8,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (81,9,'plugin_name','Wordfence Security');
INSERT INTO `wp_simple_history_contexts` VALUES (82,9,'plugin_slug','wordfence');
INSERT INTO `wp_simple_history_contexts` VALUES (83,9,'plugin_title','<a href=\"http://www.wordfence.com/\">Wordfence Security</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (84,9,'plugin_description','Wordfence Security &#8211; Anti-virus, Firewall and Malware Scan <cite>By <a href=\"http://www.wordfence.com/\">Wordfence</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (85,9,'plugin_author','<a href=\"http://www.wordfence.com/\">Wordfence</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (86,9,'plugin_version','7.8.0');
INSERT INTO `wp_simple_history_contexts` VALUES (87,9,'plugin_url','http://www.wordfence.com/');
INSERT INTO `wp_simple_history_contexts` VALUES (88,9,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (89,9,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (90,9,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (91,9,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (92,9,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (93,9,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (94,10,'plugin_name','Akismet Anti-Spam');
INSERT INTO `wp_simple_history_contexts` VALUES (95,10,'plugin_current_version','5.0.1');
INSERT INTO `wp_simple_history_contexts` VALUES (96,10,'plugin_new_version','5.3');
INSERT INTO `wp_simple_history_contexts` VALUES (97,10,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (98,10,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (99,10,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (100,10,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (101,10,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (102,10,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (103,11,'plugin_name','Contact Form 7');
INSERT INTO `wp_simple_history_contexts` VALUES (104,11,'plugin_current_version','5.6.4');
INSERT INTO `wp_simple_history_contexts` VALUES (105,11,'plugin_new_version','5.8.4');
INSERT INTO `wp_simple_history_contexts` VALUES (106,11,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (107,11,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (108,11,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (109,11,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (110,11,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (111,11,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (112,12,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (113,12,'plugin_current_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (114,12,'plugin_new_version','4.8.0');
INSERT INTO `wp_simple_history_contexts` VALUES (115,12,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (116,12,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (117,12,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (118,12,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (119,12,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (120,12,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (121,13,'plugin_name','Wordfence Security');
INSERT INTO `wp_simple_history_contexts` VALUES (122,13,'plugin_current_version','7.8.0');
INSERT INTO `wp_simple_history_contexts` VALUES (123,13,'plugin_new_version','7.11.0');
INSERT INTO `wp_simple_history_contexts` VALUES (124,13,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (125,13,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (126,13,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (127,13,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (128,13,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (129,13,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (130,14,'plugin_name','Yoast SEO');
INSERT INTO `wp_simple_history_contexts` VALUES (131,14,'plugin_current_version','19.5.1');
INSERT INTO `wp_simple_history_contexts` VALUES (132,14,'plugin_new_version','21.6');
INSERT INTO `wp_simple_history_contexts` VALUES (133,14,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (134,14,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (135,14,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (136,14,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (137,14,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (138,14,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (139,15,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (140,15,'plugin_current_version','6.2.2');
INSERT INTO `wp_simple_history_contexts` VALUES (141,15,'plugin_new_version','6.2.4');
INSERT INTO `wp_simple_history_contexts` VALUES (142,15,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (143,15,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (144,15,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (145,15,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (146,15,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (147,15,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (148,16,'theme_name','Twenty Nineteen');
INSERT INTO `wp_simple_history_contexts` VALUES (149,16,'theme_current_version','1.4');
INSERT INTO `wp_simple_history_contexts` VALUES (150,16,'theme_new_version','2.7');
INSERT INTO `wp_simple_history_contexts` VALUES (151,16,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (152,16,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (153,16,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (154,16,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (155,16,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (156,16,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (157,17,'theme_name','twentytwentyone');
INSERT INTO `wp_simple_history_contexts` VALUES (158,17,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (159,17,'theme_new_version','2.0');
INSERT INTO `wp_simple_history_contexts` VALUES (160,17,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (161,17,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (162,17,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (163,17,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (164,17,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (165,17,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (166,18,'theme_name','twentytwentythree');
INSERT INTO `wp_simple_history_contexts` VALUES (167,18,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (168,18,'theme_new_version','1.3');
INSERT INTO `wp_simple_history_contexts` VALUES (169,18,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (170,18,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (171,18,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (172,18,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (173,18,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (174,18,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (175,19,'theme_name','twentytwentytwo');
INSERT INTO `wp_simple_history_contexts` VALUES (176,19,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (177,19,'theme_new_version','1.6');
INSERT INTO `wp_simple_history_contexts` VALUES (178,19,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (179,19,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (180,19,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (181,19,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (182,19,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (183,19,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (184,20,'plugin_slug','advanced-custom-fields-pro');
INSERT INTO `wp_simple_history_contexts` VALUES (185,20,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (186,20,'plugin_title','<a href=\"https://www.advancedcustomfields.com\">Advanced Custom Fields PRO</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (187,20,'plugin_description','Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://wpengine.com/?utm_source=wordpress.org&#038;utm_medium=referral&#038;utm_campaign=plugin_directory&#038;utm_content=advanced_custom_fields\">WP Engine</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (188,20,'plugin_author','<a href=\"https://wpengine.com/?utm_source=wordpress.org&#038;utm_medium=referral&#038;utm_campaign=plugin_directory&#038;utm_content=advanced_custom_fields\">WP Engine</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (189,20,'plugin_version','6.2.2');
INSERT INTO `wp_simple_history_contexts` VALUES (190,20,'plugin_url','https://www.advancedcustomfields.com');
INSERT INTO `wp_simple_history_contexts` VALUES (191,20,'plugin_update_info_plugin','advanced-custom-fields-pro/acf.php');
INSERT INTO `wp_simple_history_contexts` VALUES (192,20,'plugin_update_info_package','');
INSERT INTO `wp_simple_history_contexts` VALUES (193,20,'plugin_prev_version','6.2.2');
INSERT INTO `wp_simple_history_contexts` VALUES (194,20,'_message_key','plugin_bulk_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (195,20,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (196,20,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (197,20,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (198,20,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (199,20,'_server_http_referer','http://reinbuilt.local/wp-admin/update-core.php?action=do-plugin-upgrade');
INSERT INTO `wp_simple_history_contexts` VALUES (200,21,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (201,21,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (202,21,'post_title','');
INSERT INTO `wp_simple_history_contexts` VALUES (203,21,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (204,21,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (205,21,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (206,21,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (207,21,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (208,21,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (209,21,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (210,22,'plugin_name','Yoast SEO');
INSERT INTO `wp_simple_history_contexts` VALUES (211,22,'plugin_current_version','19.5.1');
INSERT INTO `wp_simple_history_contexts` VALUES (212,22,'plugin_new_version','21.7');
INSERT INTO `wp_simple_history_contexts` VALUES (213,22,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (214,22,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (215,23,'setting_id','show_on_front');
INSERT INTO `wp_simple_history_contexts` VALUES (216,23,'setting_old_value','posts');
INSERT INTO `wp_simple_history_contexts` VALUES (217,23,'setting_new_value','page');
INSERT INTO `wp_simple_history_contexts` VALUES (218,23,'control_id','show_on_front');
INSERT INTO `wp_simple_history_contexts` VALUES (219,23,'control_label','Your homepage displays');
INSERT INTO `wp_simple_history_contexts` VALUES (220,23,'control_type','radio');
INSERT INTO `wp_simple_history_contexts` VALUES (221,23,'_message_key','appearance_customized');
INSERT INTO `wp_simple_history_contexts` VALUES (222,23,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (223,23,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (224,23,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (225,23,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (226,23,'_server_http_referer','http://reinbuilt.local/wp-admin/customize.php?return=wp-adminthemes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (227,24,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (228,24,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (229,24,'post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (230,24,'post_prev_post_title','');
INSERT INTO `wp_simple_history_contexts` VALUES (231,24,'post_new_post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (232,24,'post_prev_post_content','<?php\n/**\n * Single template\n *\n * @package amplify\n * @author Tyler Means Business LLC\n */\nget_header();?>\n\n<div id=\"404-container\" class=\"container\">\n\n	<div id=\"single-post\">\n		<div class=\"single-post_container\">\n\n			<h1>404 - Page Not Found</h1>\n		\n			<div class=\"single-post_content\">	\n				<h3>Pages</h3>\n				<ul><?php wp_list_pages(\"title_li=\" ); ?></ul>\n				<h3>Posts</h3>\n				<ul><?php wp_get_archives(\'type=postbypost\'); ?></ul>\n			</div>\n		</div>\n	</div>\n</div>\n\n<?php get_footer(); ?>');
INSERT INTO `wp_simple_history_contexts` VALUES (233,24,'post_new_post_content','');
INSERT INTO `wp_simple_history_contexts` VALUES (234,24,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (235,24,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (236,24,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (237,24,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (238,24,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (239,24,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (240,24,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=7&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (241,25,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (242,25,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (243,25,'post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (244,25,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (245,25,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (246,25,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (247,25,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (248,25,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (249,25,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (250,25,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=7&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (251,26,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (252,26,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (253,26,'post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (254,26,'post_prev_post_title','Sample Page');
INSERT INTO `wp_simple_history_contexts` VALUES (255,26,'post_new_post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (256,26,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (257,26,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (258,26,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (259,26,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (260,26,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (261,26,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (262,26,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=2&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (263,27,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (264,27,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (265,27,'post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (266,27,'post_prev_page_template','default');
INSERT INTO `wp_simple_history_contexts` VALUES (267,27,'post_new_page_template','page-contact.php');
INSERT INTO `wp_simple_history_contexts` VALUES (268,27,'post_new_page_template_name','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (269,27,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (270,27,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (271,27,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (272,27,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (273,27,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (274,27,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (275,27,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=2&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (276,28,'post_id','13');
INSERT INTO `wp_simple_history_contexts` VALUES (277,28,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (278,28,'post_title','Partners');
INSERT INTO `wp_simple_history_contexts` VALUES (279,28,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (280,28,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (281,28,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (282,28,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (283,28,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (284,28,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (285,28,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (286,29,'post_id','15');
INSERT INTO `wp_simple_history_contexts` VALUES (287,29,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (288,29,'post_title','Products');
INSERT INTO `wp_simple_history_contexts` VALUES (289,29,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (290,29,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (291,29,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (292,29,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (293,29,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (294,29,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (295,29,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (296,30,'post_id','17');
INSERT INTO `wp_simple_history_contexts` VALUES (297,30,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (298,30,'post_title','Results');
INSERT INTO `wp_simple_history_contexts` VALUES (299,30,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (300,30,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (301,30,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (302,30,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (303,30,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (304,30,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (305,30,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (306,31,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (307,31,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (308,31,'post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (309,31,'post_prev_post_name','sample-page');
INSERT INTO `wp_simple_history_contexts` VALUES (310,31,'post_new_post_name','contact');
INSERT INTO `wp_simple_history_contexts` VALUES (311,31,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (312,31,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (313,31,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (314,31,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (315,31,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (316,31,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (317,31,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=2&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (318,32,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (319,32,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (320,32,'post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (321,32,'post_prev_post_name','7-2');
INSERT INTO `wp_simple_history_contexts` VALUES (322,32,'post_new_post_name','about');
INSERT INTO `wp_simple_history_contexts` VALUES (323,32,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (324,32,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (325,32,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (326,32,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (327,32,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (328,32,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (329,32,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=7&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (330,33,'post_id','19');
INSERT INTO `wp_simple_history_contexts` VALUES (331,33,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (332,33,'post_title','Our Team');
INSERT INTO `wp_simple_history_contexts` VALUES (333,33,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (334,33,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (335,33,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (336,33,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (337,33,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (338,33,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (339,33,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (340,34,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (341,34,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (342,34,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (343,34,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (344,34,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (345,34,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (346,34,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (347,34,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (348,34,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (349,34,'_server_http_referer','http://reinbuilt.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (350,35,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (351,35,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (352,35,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (353,35,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (354,35,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (355,35,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (356,35,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (357,35,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (358,35,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (359,35,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=21&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (360,36,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (361,36,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (362,36,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (363,36,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (364,36,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (365,36,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (366,36,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (367,36,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (368,36,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (369,36,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=21&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (370,37,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (371,37,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (372,37,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (373,37,'post_prev_page_template','includes/index.php');
INSERT INTO `wp_simple_history_contexts` VALUES (374,37,'post_new_page_template','');
INSERT INTO `wp_simple_history_contexts` VALUES (375,37,'post_prev_page_template_name','Blog');
INSERT INTO `wp_simple_history_contexts` VALUES (376,37,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (377,37,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (378,37,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (379,37,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (380,37,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (381,37,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (382,37,'_server_http_referer','http://reinbuilt.local/wp-admin/post.php?post=21&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (383,38,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (384,38,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (385,38,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (386,38,'_message_key','post_trashed');
INSERT INTO `wp_simple_history_contexts` VALUES (387,38,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (388,38,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (389,38,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (390,38,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (391,38,'_server_http_referer','http://reinbuilt.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (392,39,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (393,39,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (394,39,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (395,39,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (396,39,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (397,39,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (398,39,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (399,39,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (400,39,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (401,39,'_server_http_referer','http://reinbuilt.local/wp-login.php?redirect_to=httpreinbuilt.localwp-admin&reauth=1');
INSERT INTO `wp_simple_history_contexts` VALUES (402,40,'theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (403,40,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (404,40,'prev_theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (405,40,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (406,40,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (407,40,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (408,40,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (409,40,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (410,40,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (411,40,'_server_http_referer','http://reinbuilt.local/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (412,41,'theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (413,41,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (414,41,'prev_theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (415,41,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (416,41,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (417,41,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (418,41,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (419,41,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (420,41,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (421,41,'_server_http_referer','http://reinbuilt.local/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (422,42,'option','blogname');
INSERT INTO `wp_simple_history_contexts` VALUES (423,42,'old_value','amplify');
INSERT INTO `wp_simple_history_contexts` VALUES (424,42,'new_value','Reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (425,42,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (426,42,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (427,42,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (428,42,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (429,42,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (430,42,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (431,42,'_server_http_referer','http://reinbuilt.local/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (432,43,'plugin_name','Yoast SEO');
INSERT INTO `wp_simple_history_contexts` VALUES (433,43,'plugin_slug','wordpress-seo');
INSERT INTO `wp_simple_history_contexts` VALUES (434,43,'plugin_title','<a href=\"https://yoa.st/1uj\">Yoast SEO</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (435,43,'plugin_description','The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more. <cite>By <a href=\"https://yoa.st/1uk\">Team Yoast</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (436,43,'plugin_author','<a href=\"https://yoa.st/1uk\">Team Yoast</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (437,43,'plugin_version','19.5.1');
INSERT INTO `wp_simple_history_contexts` VALUES (438,43,'plugin_url','https://yoa.st/1uj');
INSERT INTO `wp_simple_history_contexts` VALUES (439,43,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (440,43,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (441,43,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (442,43,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (443,43,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (444,43,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (445,44,'plugin_name','Contact Form 7');
INSERT INTO `wp_simple_history_contexts` VALUES (446,44,'plugin_current_version','5.8.4');
INSERT INTO `wp_simple_history_contexts` VALUES (447,44,'plugin_new_version','5.8.5');
INSERT INTO `wp_simple_history_contexts` VALUES (448,44,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (449,44,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (450,45,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (451,45,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (452,45,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (453,45,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (454,45,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (455,45,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (456,45,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (457,45,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (458,45,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (459,46,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (460,46,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (461,46,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (462,46,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (463,46,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (464,46,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (465,46,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (466,46,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (467,46,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (468,47,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (469,47,'plugin_slug','advanced-custom-fields-pro');
INSERT INTO `wp_simple_history_contexts` VALUES (470,47,'plugin_title','<a href=\"https://www.advancedcustomfields.com\">Advanced Custom Fields PRO</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (471,47,'plugin_description','Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://wpengine.com/?utm_source=wordpress.org&#038;utm_medium=referral&#038;utm_campaign=plugin_directory&#038;utm_content=advanced_custom_fields\">WP Engine</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (472,47,'plugin_author','<a href=\"https://wpengine.com/?utm_source=wordpress.org&#038;utm_medium=referral&#038;utm_campaign=plugin_directory&#038;utm_content=advanced_custom_fields\">WP Engine</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (473,47,'plugin_version','6.2.2');
INSERT INTO `wp_simple_history_contexts` VALUES (474,47,'plugin_url','https://www.advancedcustomfields.com');
INSERT INTO `wp_simple_history_contexts` VALUES (475,47,'_message_key','plugin_deactivated');
INSERT INTO `wp_simple_history_contexts` VALUES (476,47,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (477,47,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (478,47,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (479,47,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (480,47,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (481,48,'plugin','advanced-custom-fields-pro/acf.php');
INSERT INTO `wp_simple_history_contexts` VALUES (482,48,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (483,48,'plugin_title','<a href=\"https://www.advancedcustomfields.com\">Advanced Custom Fields PRO</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (484,48,'plugin_description','Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (485,48,'plugin_author','<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (486,48,'plugin_version','5.8.5');
INSERT INTO `wp_simple_history_contexts` VALUES (487,48,'plugin_url','https://www.advancedcustomfields.com');
INSERT INTO `wp_simple_history_contexts` VALUES (488,48,'_message_key','plugin_deleted');
INSERT INTO `wp_simple_history_contexts` VALUES (489,48,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (490,48,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (491,48,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (492,48,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (493,48,'_server_http_referer','http://reinbuilt.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (494,49,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (495,49,'attachment_id','25');
INSERT INTO `wp_simple_history_contexts` VALUES (496,49,'attachment_title','advanced-custom-fields-pro.zip');
INSERT INTO `wp_simple_history_contexts` VALUES (497,49,'attachment_filename','advanced-custom-fields-pro.zip');
INSERT INTO `wp_simple_history_contexts` VALUES (498,49,'attachment_mime','');
INSERT INTO `wp_simple_history_contexts` VALUES (499,49,'attachment_filesize','2046033');
INSERT INTO `wp_simple_history_contexts` VALUES (500,49,'_message_key','attachment_created');
INSERT INTO `wp_simple_history_contexts` VALUES (501,49,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (502,49,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (503,49,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (504,49,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (505,49,'_server_http_referer','http://reinbuilt.local/wp-admin/plugin-install.php');
INSERT INTO `wp_simple_history_contexts` VALUES (506,50,'plugin_slug','advanced-custom-fields-pro');
INSERT INTO `wp_simple_history_contexts` VALUES (507,50,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (508,50,'plugin_url','https://www.advancedcustomfields.com');
INSERT INTO `wp_simple_history_contexts` VALUES (509,50,'plugin_version','5.8.5');
INSERT INTO `wp_simple_history_contexts` VALUES (510,50,'plugin_author','Elliot Condon');
INSERT INTO `wp_simple_history_contexts` VALUES (511,50,'plugin_requires_wp','');
INSERT INTO `wp_simple_history_contexts` VALUES (512,50,'plugin_requires_php','');
INSERT INTO `wp_simple_history_contexts` VALUES (513,50,'plugin_install_source','upload');
INSERT INTO `wp_simple_history_contexts` VALUES (514,50,'plugin_upload_name','advanced-custom-fields-pro.zip');
INSERT INTO `wp_simple_history_contexts` VALUES (515,50,'plugin_description','Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (516,50,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (517,50,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (518,50,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (519,50,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (520,50,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (521,50,'_server_http_referer','http://reinbuilt.local/wp-admin/plugin-install.php');
INSERT INTO `wp_simple_history_contexts` VALUES (522,51,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (523,51,'attachment_id','25');
INSERT INTO `wp_simple_history_contexts` VALUES (524,51,'attachment_title','advanced-custom-fields-pro.zip');
INSERT INTO `wp_simple_history_contexts` VALUES (525,51,'attachment_filename','advanced-custom-fields-pro.zip');
INSERT INTO `wp_simple_history_contexts` VALUES (526,51,'attachment_mime','');
INSERT INTO `wp_simple_history_contexts` VALUES (527,51,'_message_key','attachment_deleted');
INSERT INTO `wp_simple_history_contexts` VALUES (528,51,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (529,51,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (530,51,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (531,51,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (532,51,'_server_http_referer','http://reinbuilt.local/wp-admin/plugin-install.php');
INSERT INTO `wp_simple_history_contexts` VALUES (533,52,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (534,52,'plugin_slug','advanced-custom-fields-pro');
INSERT INTO `wp_simple_history_contexts` VALUES (535,52,'plugin_title','<a href=\"https://www.advancedcustomfields.com\">Advanced Custom Fields PRO</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (536,52,'plugin_description','Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (537,52,'plugin_author','<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (538,52,'plugin_version','5.8.5');
INSERT INTO `wp_simple_history_contexts` VALUES (539,52,'plugin_url','https://www.advancedcustomfields.com');
INSERT INTO `wp_simple_history_contexts` VALUES (540,52,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (541,52,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (542,52,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (543,52,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (544,52,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (545,52,'_server_http_referer','http://reinbuilt.local/wp-admin/update.php?action=upload-plugin');
INSERT INTO `wp_simple_history_contexts` VALUES (546,53,'theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (547,53,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (548,53,'prev_theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (549,53,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (550,53,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (551,53,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (552,53,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (553,53,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (554,53,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (555,53,'_server_http_referer','http://reinbuilt.local/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (556,54,'theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (557,54,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (558,54,'prev_theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (559,54,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (560,54,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (561,54,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (562,54,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (563,54,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (564,54,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (565,54,'_server_http_referer','http://reinbuilt.local/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (566,55,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (567,55,'attachment_id','26');
INSERT INTO `wp_simple_history_contexts` VALUES (568,55,'attachment_title','LOGO');
INSERT INTO `wp_simple_history_contexts` VALUES (569,55,'attachment_filename','LOGO.png');
INSERT INTO `wp_simple_history_contexts` VALUES (570,55,'attachment_mime','image/png');
INSERT INTO `wp_simple_history_contexts` VALUES (571,55,'attachment_filesize','9581');
INSERT INTO `wp_simple_history_contexts` VALUES (572,55,'_message_key','attachment_created');
INSERT INTO `wp_simple_history_contexts` VALUES (573,55,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (574,55,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (575,55,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (576,55,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (577,55,'_server_http_referer','http://reinbuilt.local/wp-admin/upload.php');
INSERT INTO `wp_simple_history_contexts` VALUES (578,56,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (579,56,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (580,56,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (581,56,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (582,56,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (583,56,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (584,56,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (585,56,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (586,56,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (587,57,'option','siteurl');
INSERT INTO `wp_simple_history_contexts` VALUES (588,57,'old_value','http://reinbuilt.local');
INSERT INTO `wp_simple_history_contexts` VALUES (589,57,'new_value','https://reinbuilt.local');
INSERT INTO `wp_simple_history_contexts` VALUES (590,57,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (591,57,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (592,57,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (593,57,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (594,57,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (595,57,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (596,57,'_server_http_referer','http://reinbuilt.local/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (597,58,'option','wpseo');
INSERT INTO `wp_simple_history_contexts` VALUES (598,58,'old_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"permalink_settings_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (599,58,'new_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (600,58,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (601,58,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (602,58,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (603,58,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (604,58,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (605,58,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (606,58,'_server_http_referer','http://reinbuilt.local/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (607,59,'option','wpseo');
INSERT INTO `wp_simple_history_contexts` VALUES (608,59,'old_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (609,59,'new_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"https:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (610,59,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (611,59,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (612,59,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (613,59,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (614,59,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (615,59,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (616,59,'_server_http_referer','http://reinbuilt.local/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (617,60,'option','home');
INSERT INTO `wp_simple_history_contexts` VALUES (618,60,'old_value','http://reinbuilt.local');
INSERT INTO `wp_simple_history_contexts` VALUES (619,60,'new_value','https://reinbuilt.local');
INSERT INTO `wp_simple_history_contexts` VALUES (620,60,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (621,60,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (622,60,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (623,60,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (624,60,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (625,60,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (626,60,'_server_http_referer','http://reinbuilt.local/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (627,61,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (628,61,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (629,61,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (630,61,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (631,61,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (632,61,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (633,61,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (634,61,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (635,61,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (636,61,'_server_http_referer','https://reinbuilt.local/wp-login.php?redirect_to=httpsreinbuilt.localwp-adminoptions-general.phpsettings-updatedtrue&reauth=1');
INSERT INTO `wp_simple_history_contexts` VALUES (637,62,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (638,62,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (639,62,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (640,62,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (641,62,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (642,62,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (643,62,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (644,62,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (645,62,'_server_remote_addr','127.0.0.x');
/*!40000 ALTER TABLE `wp_simple_history_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','gunther');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:6:{s:64:\"cb59f9f6e6668a3a0f896ea7e97443e797e638c3fd10868eb34e5ba11139851e\";a:4:{s:10:\"expiration\";i:1703558113;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1702348513;}s:64:\"7bc8736e76cfbe8b32c9084cde965f2a6f75bdf239df86ac6824d46b539b41be\";a:4:{s:10:\"expiration\";i:1703632094;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1702422494;}s:64:\"77a86e0500b0468ef109b474122c34560674ed84756655ba66e7ef718439f161\";a:4:{s:10:\"expiration\";i:1703365918;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703193118;}s:64:\"c0abd597b83416b299e30e7a42a9e03e072a1f167e61d72db188be888709786d\";a:4:{s:10:\"expiration\";i:1703465081;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703292281;}s:64:\"902f021944bea22e01dfc30f2f66b9a38e7de5f04bfff6e5bdba19011a2ab1db\";a:4:{s:10:\"expiration\";i:1703465108;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703292308;}s:64:\"19a424b3a7c8b0451fee47501f30016f952373fa7c1615431ced4045102c835a\";a:4:{s:10:\"expiration\";i:1703465142;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703292342;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','24');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"editorMode\";s:6:\"visual\";s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-12-12T21:23:13.303Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wfls-last-login','1703292342');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_toplevel_page_theme-instructions','a:1:{i:0;s:23:\"acf-group_634f3c8500dbe\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_toplevel_page_theme-instructions','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_toplevel_page_theme-instructions','a:2:{s:4:\"side\";s:33:\"submitdiv,acf-group_634f3c8500dbe\";s:6:\"normal\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'screen_layout_toplevel_page_theme-instructions','2');
INSERT INTO `wp_usermeta` VALUES (27,1,'_yoast_wpseo_profile_updated','1703199917');
INSERT INTO `wp_usermeta` VALUES (28,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:336:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"https://reinbuilt.local/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"gunther\";s:9:\"user_pass\";s:34:\"$P$B./sUM7gdCFcCmOR9OOoMXudlrjI7O/\";s:13:\"user_nicename\";s:7:\"gunther\";s:10:\"user_email\";s:24:\"dev-email@wpengine.local\";s:8:\"user_url\";s:22:\"http://reinbuilt.local\";s:15:\"user_registered\";s:19:\"2023-12-12 02:14:56\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"gunther\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'gunther','$P$B./sUM7gdCFcCmOR9OOoMXudlrjI7O/','gunther','dev-email@wpengine.local','http://reinbuilt.local','2023-12-12 02:14:56','',0,'gunther');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblockediplog`
--

DROP TABLE IF EXISTS `wp_wfblockediplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblockediplog`
--

LOCK TABLES `wp_wfblockediplog` WRITE;
/*!40000 ALTER TABLE `wp_wfblockediplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblockediplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblocks7`
--

DROP TABLE IF EXISTS `wp_wfblocks7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `expiration` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parameters` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `IP` (`IP`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblocks7`
--

LOCK TABLES `wp_wfblocks7` WRITE;
/*!40000 ALTER TABLE `wp_wfblocks7` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblocks7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfconfig`
--

DROP TABLE IF EXISTS `wp_wfconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfconfig`
--

LOCK TABLES `wp_wfconfig` WRITE;
/*!40000 ALTER TABLE `wp_wfconfig` DISABLE KEYS */;
INSERT INTO `wp_wfconfig` VALUES ('activatingIP',_binary '127.0.0.1','yes');
INSERT INTO `wp_wfconfig` VALUES ('actUpdateInterval',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('addCacheComment',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('advancedCommentScanning',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('ajaxWatcherDisabled_admin',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('ajaxWatcherDisabled_front',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertEmails',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_adminLogin',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_block',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_breachLogin',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_firstAdminLoginOnly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_firstNonAdminLoginOnly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_loginLockout',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_lostPasswdForm',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_nonAdminLogin',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_scanIssues',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_severityLevel',_binary '25','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_throttle',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_update',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_wafDeactivated',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_wordfenceDeactivated',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alert_maxHourly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowed404s',_binary '/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowed404s6116Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowHTTPSCaching',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowLegacy2FA',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowMySQLi',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('allScansScheduled',_binary 'a:0:{}','yes');
INSERT INTO `wp_wfconfig` VALUES ('apiKey',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoBlockScanners',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoUpdate',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoUpdateAttempts',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('bannedURLs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('blockCustomText',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('blockedTime',_binary '300','yes');
INSERT INTO `wp_wfconfig` VALUES ('blocks702Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('cacheType',_binary 'disabled','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_action',_binary 'block','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassRedirDest',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassRedirURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassViewURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_cookieVal',_binary '6577ca276999f','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_loggedInBlocked',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_redirURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_restOfSiteBlocked',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('checkSpamIP',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('config701Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('config720Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('dashboardData',_binary 'a:4:{s:9:\"generated\";i:1702420036;s:3:\"tdf\";a:3:{s:9:\"community\";i:5884;s:7:\"premium\";i:5911;s:9:\"blacklist\";i:11599;}s:10:\"attackdata\";a:3:{s:3:\"24h\";a:24:{i:0;a:2:{s:1:\"t\";i:1702332000;s:1:\"c\";i:9539319;}i:1;a:2:{s:1:\"t\";i:1702335600;s:1:\"c\";i:8877539;}i:2;a:2:{s:1:\"t\";i:1702339200;s:1:\"c\";i:8861021;}i:3;a:2:{s:1:\"t\";i:1702342800;s:1:\"c\";i:8802047;}i:4;a:2:{s:1:\"t\";i:1702346400;s:1:\"c\";i:9616821;}i:5;a:2:{s:1:\"t\";i:1702350000;s:1:\"c\";i:12978216;}i:6;a:2:{s:1:\"t\";i:1702353600;s:1:\"c\";i:17636752;}i:7;a:2:{s:1:\"t\";i:1702357200;s:1:\"c\";i:19131031;}i:8;a:2:{s:1:\"t\";i:1702360800;s:1:\"c\";i:18944219;}i:9;a:2:{s:1:\"t\";i:1702364400;s:1:\"c\";i:18629779;}i:10;a:2:{s:1:\"t\";i:1702368000;s:1:\"c\";i:17777573;}i:11;a:2:{s:1:\"t\";i:1702371600;s:1:\"c\";i:17097043;}i:12;a:2:{s:1:\"t\";i:1702375200;s:1:\"c\";i:16761739;}i:13;a:2:{s:1:\"t\";i:1702378800;s:1:\"c\";i:17316314;}i:14;a:2:{s:1:\"t\";i:1702382400;s:1:\"c\";i:15261928;}i:15;a:2:{s:1:\"t\";i:1702386000;s:1:\"c\";i:9809825;}i:16;a:2:{s:1:\"t\";i:1702389600;s:1:\"c\";i:11222028;}i:17;a:2:{s:1:\"t\";i:1702393200;s:1:\"c\";i:10893778;}i:18;a:2:{s:1:\"t\";i:1702396800;s:1:\"c\";i:11275212;}i:19;a:2:{s:1:\"t\";i:1702400400;s:1:\"c\";i:11358252;}i:20;a:2:{s:1:\"t\";i:1702404000;s:1:\"c\";i:11070474;}i:21;a:2:{s:1:\"t\";i:1702407600;s:1:\"c\";i:10815834;}i:22;a:2:{s:1:\"t\";i:1702411200;s:1:\"c\";i:10778817;}i:23;a:2:{s:1:\"t\";i:1702414800;s:1:\"c\";i:9610337;}}s:2:\"7d\";a:7:{i:0;a:2:{s:1:\"t\";i:1701734400;s:1:\"c\";i:244425971;}i:1;a:2:{s:1:\"t\";i:1701820800;s:1:\"c\";i:297601614;}i:2;a:2:{s:1:\"t\";i:1701907200;s:1:\"c\";i:214209345;}i:3;a:2:{s:1:\"t\";i:1701993600;s:1:\"c\";i:282639482;}i:4;a:2:{s:1:\"t\";i:1702080000;s:1:\"c\";i:300850111;}i:5;a:2:{s:1:\"t\";i:1702166400;s:1:\"c\";i:221728766;}i:6;a:2:{s:1:\"t\";i:1702252800;s:1:\"c\";i:294136084;}}s:3:\"30d\";a:30:{i:0;a:2:{s:1:\"t\";i:1699747200;s:1:\"c\";i:474838439;}i:1;a:2:{s:1:\"t\";i:1699833600;s:1:\"c\";i:467464320;}i:2;a:2:{s:1:\"t\";i:1699920000;s:1:\"c\";i:468123723;}i:3;a:2:{s:1:\"t\";i:1700006400;s:1:\"c\";i:518013250;}i:4;a:2:{s:1:\"t\";i:1700092800;s:1:\"c\";i:537226875;}i:5;a:2:{s:1:\"t\";i:1700179200;s:1:\"c\";i:556004449;}i:6;a:2:{s:1:\"t\";i:1700265600;s:1:\"c\";i:417207247;}i:7;a:2:{s:1:\"t\";i:1700352000;s:1:\"c\";i:413171145;}i:8;a:2:{s:1:\"t\";i:1700438400;s:1:\"c\";i:440095776;}i:9;a:2:{s:1:\"t\";i:1700524800;s:1:\"c\";i:361832373;}i:10;a:2:{s:1:\"t\";i:1700611200;s:1:\"c\";i:369416137;}i:11;a:2:{s:1:\"t\";i:1700697600;s:1:\"c\";i:432991441;}i:12;a:2:{s:1:\"t\";i:1700784000;s:1:\"c\";i:434512269;}i:13;a:2:{s:1:\"t\";i:1700870400;s:1:\"c\";i:431365043;}i:14;a:2:{s:1:\"t\";i:1700956800;s:1:\"c\";i:365315725;}i:15;a:2:{s:1:\"t\";i:1701043200;s:1:\"c\";i:318166794;}i:16;a:2:{s:1:\"t\";i:1701129600;s:1:\"c\";i:308671215;}i:17;a:2:{s:1:\"t\";i:1701216000;s:1:\"c\";i:315117844;}i:18;a:2:{s:1:\"t\";i:1701302400;s:1:\"c\";i:273157826;}i:19;a:2:{s:1:\"t\";i:1701388800;s:1:\"c\";i:285337709;}i:20;a:2:{s:1:\"t\";i:1701475200;s:1:\"c\";i:295373740;}i:21;a:2:{s:1:\"t\";i:1701561600;s:1:\"c\";i:236148396;}i:22;a:2:{s:1:\"t\";i:1701648000;s:1:\"c\";i:273047144;}i:23;a:2:{s:1:\"t\";i:1701734400;s:1:\"c\";i:244425971;}i:24;a:2:{s:1:\"t\";i:1701820800;s:1:\"c\";i:297601614;}i:25;a:2:{s:1:\"t\";i:1701907200;s:1:\"c\";i:214209345;}i:26;a:2:{s:1:\"t\";i:1701993600;s:1:\"c\";i:282639482;}i:27;a:2:{s:1:\"t\";i:1702080000;s:1:\"c\";i:300850111;}i:28;a:2:{s:1:\"t\";i:1702166400;s:1:\"c\";i:221728766;}i:29;a:2:{s:1:\"t\";i:1702252800;s:1:\"c\";i:294136084;}}}s:9:\"countries\";a:1:{s:2:\"7d\";a:10:{i:0;a:2:{s:2:\"cd\";s:2:\"US\";s:2:\"ct\";i:655558740;}i:1;a:2:{s:2:\"cd\";s:2:\"NL\";s:2:\"ct\";i:256383773;}i:2;a:2:{s:2:\"cd\";s:2:\"SG\";s:2:\"ct\";i:195700798;}i:3;a:2:{s:2:\"cd\";s:2:\"DE\";s:2:\"ct\";i:181988571;}i:4;a:2:{s:2:\"cd\";s:2:\"FR\";s:2:\"ct\";i:134236718;}i:5;a:2:{s:2:\"cd\";s:2:\"IN\";s:2:\"ct\";i:105469595;}i:6;a:2:{s:2:\"cd\";s:2:\"GB\";s:2:\"ct\";i:84302639;}i:7;a:2:{s:2:\"cd\";s:2:\"CN\";s:2:\"ct\";i:74584482;}i:8;a:2:{s:2:\"cd\";s:2:\"VN\";s:2:\"ct\";i:57802075;}i:9;a:2:{s:2:\"cd\";s:2:\"ID\";s:2:\"ct\";i:40998216;}}}}','yes');
INSERT INTO `wp_wfconfig` VALUES ('dbTest',_binary 'a:1:{s:5:\"nonce\";s:64:\"b237308e3749a4524c2ca30d95257e6154db87ea67963eb25a7988ef68f406ff\";}','no');
INSERT INTO `wp_wfconfig` VALUES ('dbVersion',_binary '8.0.16','yes');
INSERT INTO `wp_wfconfig` VALUES ('debugOn',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('deleteTablesOnDeact',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyNextCheck',_binary '1702954151','no');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyNonce',_binary 'c7e92c951f821d08792946edbdebfd2f78198252f34b0039851c7028161d77d6','no');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyRecommendation',_binary 'DEFERRED','no');
INSERT INTO `wp_wfconfig` VALUES ('diagnosticsWflogsRemovalHistory',_binary '[]','no');
INSERT INTO `wp_wfconfig` VALUES ('disableCodeExecutionUploads',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('disableConfigCaching',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('disableWAFIPBlocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('dismissAutoPrependNotice',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayAutomaticBlocks',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelBlocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelLiveTraffic',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelOptions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_dashboard_widget_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_excluded_directories',_binary 'wp-content/cache,wp-content/wflogs','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_interval',_binary 'weekly','yes');
INSERT INTO `wp_wfconfig` VALUES ('enableRemoteIpLookup',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('encKey',_binary 'db887401cf009ca0','yes');
INSERT INTO `wp_wfconfig` VALUES ('fileContentsGSB6315Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('firewallEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('hasKeyConflict',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('howGetIPs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('howGetIPs_trusted_proxies',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('howGetIPs_trusted_proxy_preset',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('isPaid',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('keyType',_binary 'free','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastAdminLogin',_binary 'a:6:{s:6:\"userID\";i:1;s:8:\"username\";s:7:\"gunther\";s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:4:\"time\";s:30:\"Sat 23rd December @ 12:45:08AM\";s:2:\"IP\";s:9:\"127.0.0.1\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastBlockAggregation',_binary '1703598983','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastDailyCron',_binary '1703598982','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastDashboardCheck',_binary '1702422534','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastNotificationID',_binary '8','no');
INSERT INTO `wp_wfconfig` VALUES ('lastPermissionsTemplateCheck',_binary '1703599037','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveActivityPauseEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTrafficEnabled',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_displayExpandedRecords',_binary '0','no');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreIPs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignorePublishers',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreUA',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreUsers',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_maxAge',_binary '30','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_maxRows',_binary '2000','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSecurityEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_blockAdminReg',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_breachPasswds',_binary 'admins','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_breachPasswds_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_countFailMins',_binary '240','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableApplicationPasswords',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableAuthorScan',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableOEmbedAuthor',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_enableSeparateTwoFactor',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_lockInvalidUsers',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_lockoutMins',_binary '240','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maskLoginErrors',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maxFailures',_binary '20','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maxForgotPasswd',_binary '20','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_requireAdminTwoFactor',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_strongPasswds',_binary 'pubs','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_strongPasswds_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_userBlacklist',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('longEncKey',_binary '72dbb5fe599cde69fa9035b0477e88511c0ef409fc4c49470c6d27a3a8414799','yes');
INSERT INTO `wp_wfconfig` VALUES ('lowResourceScansEnabled',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('manualScanType',_binary 'onceDaily','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Crawlers',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Crawlers_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Humans',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Humans_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxExecutionTime',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxGlobalRequests',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxGlobalRequests_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxMem',_binary '256','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsCrawlers',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsCrawlers_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsHumans',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsHumans_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('migration636_email_summary_excluded_directories',_binary '1','no');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_blocking',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_dashboard',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_firewall',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_livetraffic',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_loginsecurity',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_scan',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_blocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_dashboard',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_firewall',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_livetraffic',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_loginsecurity',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_scan',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('neverBlockBG',_binary 'neverBlockVerified','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_blogHighlights',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_productUpdates',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_promotions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_scanStatus',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_securityAlerts',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_updatesNeeded',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt1',_binary 'skipped','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt2',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt3',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt3Initial',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingDelayedAt',_binary '1703292314','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_blockBadPOST',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_bypassLitespeedNoabort',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_hideWPVersion',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_pwStrengthOnUpdate',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_scanComments',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_scanOutside',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_WFNet',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('previousWflogsFileList',_binary '[\"attack-data.php\",\"rules.php\",\"config-livewaf.php\",\"config-synced.php\",\"config.php\",\"config-transient.php\",\"GeoLite2-Country.mmdb\",\"template.php\",\"ips.php\",\".htaccess\"]','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkGSB',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkHowGetIPs',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkReadableConfig',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_comments',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_core',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_coreUnknown',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_diskSpace',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_fileContents',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_fileContentsGSB',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_geoipSupport',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_highSense',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_malware',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_oldVersions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_options',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_passwds',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_plugins',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_posts',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_scanImages',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspectedFiles',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspiciousAdminUsers',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspiciousOptions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_themes',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wafStatus',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wpscan_directoryListingEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wpscan_fullPathDisclosure',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scanType',_binary 'standard','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_exclude',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_force_ipv4_start',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_include_extra',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_maxDuration',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_maxIssues',_binary '1000','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_max_resume_attempts',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('schedMode',_binary 'auto','yes');
INSERT INTO `wp_wfconfig` VALUES ('schedStartHour',_binary '15','yes');
INSERT INTO `wp_wfconfig` VALUES ('scheduledScansEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('showAdminBarMenu',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('spamvertizeCheck',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('ssl_verify',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('startScansRemotely',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('supportContent',_binary '{}','no');
INSERT INTO `wp_wfconfig` VALUES ('supportHash',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('timeoffset_wf',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('timeoffset_wf_updated',_binary '1703598983','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalAlertsSent',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalLoginHits',_binary '4','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalLogins',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('touppBypassNextCheck',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('touppPromptNeeded',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('vulnerabilities_plugin',_binary 'a:10:{i:0;a:4:{s:4:\"slug\";s:14:\"contact-form-7\";s:11:\"fromVersion\";s:5:\"5.8.4\";s:10:\"vulnerable\";b:0;s:9:\"toVersion\";s:5:\"5.8.5\";}i:1;a:4:{s:4:\"slug\";s:13:\"wordpress-seo\";s:11:\"fromVersion\";s:6:\"19.5.1\";s:10:\"vulnerable\";b:0;s:9:\"toVersion\";s:4:\"21.7\";}i:2;a:4:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:11:\"fromVersion\";s:5:\"5.8.5\";s:10:\"vulnerable\";b:0;s:9:\"toVersion\";s:5:\"6.2.4\";}i:3;a:3:{s:4:\"slug\";s:7:\"akismet\";s:11:\"fromVersion\";s:3:\"5.3\";s:10:\"vulnerable\";b:0;}i:4;a:3:{s:4:\"slug\";s:11:\"hello-dolly\";s:11:\"fromVersion\";s:5:\"1.7.2\";s:10:\"vulnerable\";b:0;}i:5;a:3:{s:4:\"slug\";s:23:\"contact-form-7-honeypot\";s:11:\"fromVersion\";s:5:\"2.1.1\";s:10:\"vulnerable\";b:0;}i:6;a:3:{s:4:\"slug\";s:14:\"simple-history\";s:11:\"fromVersion\";s:5:\"4.8.0\";s:10:\"vulnerable\";b:0;}i:7;a:3:{s:4:\"slug\";s:11:\"svg-support\";s:11:\"fromVersion\";s:5:\"2.5.5\";s:10:\"vulnerable\";b:0;}i:8;a:3:{s:4:\"slug\";s:12:\"widget-logic\";s:11:\"fromVersion\";s:6:\"5.10.4\";s:10:\"vulnerable\";b:0;}i:9;a:3:{s:4:\"slug\";s:9:\"wordfence\";s:11:\"fromVersion\";s:6:\"7.11.0\";s:10:\"vulnerable\";b:0;}}','yes');
INSERT INTO `wp_wfconfig` VALUES ('vulnerabilities_theme',_binary 'a:1:{i:0;a:4:{s:4:\"slug\";s:14:\"twentynineteen\";s:9:\"toVersion\";s:3:\"2.7\";s:11:\"fromVersion\";s:3:\"1.4\";s:10:\"vulnerable\";b:0;}}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertInterval',_binary '600','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertOnAttacks',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertThreshold',_binary '100','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertWhitelist',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('waf_status',_binary 'enabled','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelisted',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelistedServices',_binary '{}','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelistHash',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('whitelistPresets',_binary '{}','no');
INSERT INTO `wp_wfconfig` VALUES ('wordfenceI18n',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressPluginVersions',_binary 'a:10:{s:26:\"advanced-custom-fields-pro\";s:5:\"5.8.5\";s:7:\"akismet\";s:3:\"5.3\";s:14:\"contact-form-7\";s:5:\"5.8.4\";s:5:\"hello\";s:5:\"1.7.2\";s:23:\"contact-form-7-honeypot\";s:5:\"2.1.1\";s:14:\"simple-history\";s:5:\"4.8.0\";s:11:\"svg-support\";s:5:\"2.5.5\";s:12:\"widget-logic\";s:6:\"5.10.4\";s:9:\"wordfence\";s:6:\"7.11.0\";s:13:\"wordpress-seo\";s:6:\"19.5.1\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressThemeVersions',_binary 'a:2:{s:9:\"reinbuilt\";s:5:\"1.1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressVersion',_binary '6.4.2','yes');
INSERT INTO `wp_wfconfig` VALUES ('wp_home_url',_binary 'https://reinbuilt.local','yes');
INSERT INTO `wp_wfconfig` VALUES ('wp_site_url',_binary 'https://reinbuilt.local','yes');
/*!40000 ALTER TABLE `wp_wfconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfcrawlers`
--

DROP TABLE IF EXISTS `wp_wfcrawlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfcrawlers`
--

LOCK TABLES `wp_wfcrawlers` WRITE;
/*!40000 ALTER TABLE `wp_wfcrawlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfcrawlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wffilechanges`
--

DROP TABLE IF EXISTS `wp_wffilechanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL,
  PRIMARY KEY (`filenameHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wffilechanges`
--

LOCK TABLES `wp_wffilechanges` WRITE;
/*!40000 ALTER TABLE `wp_wffilechanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wffilechanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wffilemods`
--

DROP TABLE IF EXISTS `wp_wffilemods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wffilemods`
--

LOCK TABLES `wp_wffilemods` WRITE;
/*!40000 ALTER TABLE `wp_wffilemods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wffilemods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhits`
--

DROP TABLE IF EXISTS `wp_wfhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhits`
--

LOCK TABLES `wp_wfhits` WRITE;
/*!40000 ALTER TABLE `wp_wfhits` DISABLE KEYS */;
INSERT INTO `wp_wfhits` VALUES (1,0.000000,1702422494.153000,_binary '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0',0,302,0,1,0,'http://reinbuilt.local/wp-login.php','http://reinbuilt.local/wp-login.php?redirect_to=http%3A%2F%2Freinbuilt.local%2Fwp-admin%2F&reauth=1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','loginOK',NULL,NULL);
INSERT INTO `wp_wfhits` VALUES (2,0.000000,1703292308.077660,_binary '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0',0,302,0,1,0,'https://reinbuilt.local/wp-login.php','https://reinbuilt.local/wp-login.php?redirect_to=https%3A%2F%2Freinbuilt.local%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&reauth=1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','loginOK',NULL,NULL);
/*!40000 ALTER TABLE `wp_wfhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhoover`
--

DROP TABLE IF EXISTS `wp_wfhoover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfhoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhoover`
--

LOCK TABLES `wp_wfhoover` WRITE;
/*!40000 ALTER TABLE `wp_wfhoover` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfhoover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfissues`
--

DROP TABLE IF EXISTS `wp_wfissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfissues`
--

LOCK TABLES `wp_wfissues` WRITE;
/*!40000 ALTER TABLE `wp_wfissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfknownfilelist`
--

DROP TABLE IF EXISTS `wp_wfknownfilelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfknownfilelist`
--

LOCK TABLES `wp_wfknownfilelist` WRITE;
/*!40000 ALTER TABLE `wp_wfknownfilelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfknownfilelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflivetraffichuman`
--

DROP TABLE IF EXISTS `wp_wflivetraffichuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`identifier`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflivetraffichuman`
--

LOCK TABLES `wp_wflivetraffichuman` WRITE;
/*!40000 ALTER TABLE `wp_wflivetraffichuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflivetraffichuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflocs`
--

DROP TABLE IF EXISTS `wp_wflocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflocs`
--

LOCK TABLES `wp_wflocs` WRITE;
/*!40000 ALTER TABLE `wp_wflocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflogins`
--

DROP TABLE IF EXISTS `wp_wflogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflogins`
--

LOCK TABLES `wp_wflogins` WRITE;
/*!40000 ALTER TABLE `wp_wflogins` DISABLE KEYS */;
INSERT INTO `wp_wflogins` VALUES (1,1,1702422494.211021,0,'loginOK','gunther',1,_binary '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_wflogins` VALUES (2,2,1703292308.267978,0,'loginOK','gunther',1,_binary '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
/*!40000 ALTER TABLE `wp_wflogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

DROP TABLE IF EXISTS `wp_wfls_2fa_secrets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `vtime` int(10) unsigned NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_2fa_secrets`
--

LOCK TABLES `wp_wfls_2fa_secrets` WRITE;
/*!40000 ALTER TABLE `wp_wfls_2fa_secrets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfls_2fa_secrets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_role_counts`
--

DROP TABLE IF EXISTS `wp_wfls_role_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`serialized_roles`,`two_factor_inactive`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_role_counts`
--

LOCK TABLES `wp_wfls_role_counts` WRITE;
/*!40000 ALTER TABLE `wp_wfls_role_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfls_role_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_settings`
--

DROP TABLE IF EXISTS `wp_wfls_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_settings`
--

LOCK TABLES `wp_wfls_settings` WRITE;
/*!40000 ALTER TABLE `wp_wfls_settings` DISABLE KEYS */;
INSERT INTO `wp_wfls_settings` VALUES ('2fa-user-grace-period',_binary '10','yes');
INSERT INTO `wp_wfls_settings` VALUES ('allow-disabling-ntp',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('allow-xml-rpc',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('captcha-stats',_binary '{\"counts\":[0,0,0,0,0,0,0,0,0,0,0],\"avg\":0}','yes');
INSERT INTO `wp_wfls_settings` VALUES ('delete-deactivation',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('disable-temporary-tables',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-auth-captcha',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-login-history-columns',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-shortcode',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-woocommerce-account-integration',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-woocommerce-integration',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('global-notices',_binary '[]','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ip-source',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ip-trusted-proxies',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('last-secret-refresh',_binary '1702349350','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ntp-failure-count',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ntp-offset',_binary '0.6646625995636','yes');
INSERT INTO `wp_wfls_settings` VALUES ('recaptcha-threshold',_binary '0.5','yes');
INSERT INTO `wp_wfls_settings` VALUES ('remember-device',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('remember-device-duration',_binary '2592000','yes');
INSERT INTO `wp_wfls_settings` VALUES ('require-2fa-grace-period-enabled',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('require-2fa.administrator',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('schema-version',_binary '2','yes');
INSERT INTO `wp_wfls_settings` VALUES ('shared-hash-secret',_binary '84ec652d8537c926287df6ec3aab27f46a7189e9cac1120a1c0ff14a81c223d7','yes');
INSERT INTO `wp_wfls_settings` VALUES ('shared-symmetric-secret',_binary 'dafb0d7b4b3ea82a3db65745df83300bd696cf01c25f25ee7c39cfc67087b18a','yes');
INSERT INTO `wp_wfls_settings` VALUES ('stack-ui-columns',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('use-ntp',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('user-count-query-state',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('whitelisted',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('xmlrpc-enabled',_binary '1','yes');
/*!40000 ALTER TABLE `wp_wfls_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfnotifications`
--

DROP TABLE IF EXISTS `wp_wfnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfnotifications`
--

LOCK TABLES `wp_wfnotifications` WRITE;
/*!40000 ALTER TABLE `wp_wfnotifications` DISABLE KEYS */;
INSERT INTO `wp_wfnotifications` VALUES ('site-AEAAAAA',1,'wfplugin_updates',502,1703598983,'<a href=\"http://reinbuilt.local/wp-admin/update-core.php\">An update is available for 3 plugins</a>','[]');
/*!40000 ALTER TABLE `wp_wfnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfpendingissues`
--

DROP TABLE IF EXISTS `wp_wfpendingissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfpendingissues`
--

LOCK TABLES `wp_wfpendingissues` WRITE;
/*!40000 ALTER TABLE `wp_wfpendingissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfpendingissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfreversecache`
--

DROP TABLE IF EXISTS `wp_wfreversecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfreversecache`
--

LOCK TABLES `wp_wfreversecache` WRITE;
/*!40000 ALTER TABLE `wp_wfreversecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfreversecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfSecurityEvents`
--

DROP TABLE IF EXISTS `wp_wfSecurityEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfSecurityEvents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `event_time` double(14,4) NOT NULL,
  `state` enum('new','sending','sent') NOT NULL DEFAULT 'new',
  `state_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfSecurityEvents`
--

LOCK TABLES `wp_wfSecurityEvents` WRITE;
/*!40000 ALTER TABLE `wp_wfSecurityEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfSecurityEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfsnipcache`
--

DROP TABLE IF EXISTS `wp_wfsnipcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfsnipcache`
--

LOCK TABLES `wp_wfsnipcache` WRITE;
/*!40000 ALTER TABLE `wp_wfsnipcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfsnipcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfstatus`
--

DROP TABLE IF EXISTS `wp_wfstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfstatus`
--

LOCK TABLES `wp_wfstatus` WRITE;
/*!40000 ALTER TABLE `wp_wfstatus` DISABLE KEYS */;
INSERT INTO `wp_wfstatus` VALUES (1,1702422535.178395,2,'error','Call to Wordfence API to resolve IPs failed: Wordfence API error: Your site did not send an API key when contacting the Wordfence servers.');
/*!40000 ALTER TABLE `wp_wfstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wftrafficrates`
--

DROP TABLE IF EXISTS `wp_wftrafficrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`,`hitType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wftrafficrates`
--

LOCK TABLES `wp_wftrafficrates` WRITE;
/*!40000 ALTER TABLE `wp_wftrafficrates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wftrafficrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfWafFailures`
--

DROP TABLE IF EXISTS `wp_wfWafFailures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfWafFailures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `throwable` text NOT NULL,
  `rule_id` int(10) unsigned DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfWafFailures`
--

LOCK TABLES `wp_wfWafFailures` WRITE;
/*!40000 ALTER TABLE `wp_wfWafFailures` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfWafFailures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,NULL,NULL,2,'post','page',1,0,NULL,NULL,'Contact','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:13:10','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (2,NULL,NULL,7,'post','page',1,0,NULL,NULL,'About','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:20:47','2023-12-12 03:11:16');
INSERT INTO `wp_yoast_indexable` VALUES (3,NULL,NULL,13,'post','page',1,0,NULL,NULL,'Partners','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:00:46','2023-12-12 21:00:46');
INSERT INTO `wp_yoast_indexable` VALUES (4,NULL,NULL,15,'post','page',1,0,NULL,NULL,'Products','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:02:12','2023-12-12 21:02:12');
INSERT INTO `wp_yoast_indexable` VALUES (5,NULL,NULL,17,'post','page',1,0,NULL,NULL,'Results','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:03:00','2023-12-12 21:03:00');
INSERT INTO `wp_yoast_indexable` VALUES (6,NULL,NULL,1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 02:14:56','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (7,NULL,NULL,19,'post','page',1,0,NULL,NULL,'Our Team','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:21:39','2023-12-12 21:21:39');
INSERT INTO `wp_yoast_indexable` VALUES (8,NULL,NULL,1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 02:14:56','2023-12-12 02:14:56');
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (7,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (8,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'http://reinbuilt.local/wp-admin/',2,NULL,'internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26  9:11:57
