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
) ENGINE=InnoDB AUTO_INCREMENT=736 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10020','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10020','yes');
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
INSERT INTO `wp_options` VALUES (106,'cron','a:14:{i:1703704496;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703706982;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703706987;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703722000;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703729696;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703730913;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703730914;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703731743;a:1:{s:29:\"simple_history/maybe_purge_db\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1703732187;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1704124800;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1704164181;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1704240400;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1704248096;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
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
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1703691346;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}','no');
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
INSERT INTO `wp_options` VALUES (216,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703691346;s:7:\"checked\";a:2:{s:9:\"reinbuilt\";s:5:\"1.1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (218,'widget_logic','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (260,'theme_mods_integrated','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1703199917;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (262,'theme_mods_reinbuilt','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1703199914;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (266,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (267,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (271,'yoast_migrations_free','a:1:{s:7:\"version\";s:6:\"19.5.1\";}','yes');
INSERT INTO `wp_options` VALUES (272,'wpseo','a:87:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:6:\"19.5.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1702426000;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:22:\"http://localhost:10020\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1702426001;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}','yes');
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
INSERT INTO `wp_options` VALUES (600,'_transient_timeout_wpseo_total_unindexed_general_items','1703709287','no');
INSERT INTO `wp_options` VALUES (601,'_transient_wpseo_total_unindexed_general_items','0','no');
INSERT INTO `wp_options` VALUES (602,'_transient_timeout_wpseo_unindexed_post_link_count','1703686574','no');
INSERT INTO `wp_options` VALUES (603,'_transient_wpseo_unindexed_post_link_count','0','no');
INSERT INTO `wp_options` VALUES (604,'_transient_timeout_wpseo_unindexed_term_link_count','1703686574','no');
INSERT INTO `wp_options` VALUES (605,'_transient_wpseo_unindexed_term_link_count','0','no');
INSERT INTO `wp_options` VALUES (624,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1703665123','no');
INSERT INTO `wp_options` VALUES (625,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (644,'_transient_timeout_wfRegistrationToken','1703709287','no');
INSERT INTO `wp_options` VALUES (645,'_transient_wfRegistrationToken','X58XgtdxL7Gr2BSXWQIm7BePAzg9u3VdUlUf_DHA1O8','no');
INSERT INTO `wp_options` VALUES (646,'_transient_timeout_acf_plugin_info_pro','1703686598','no');
INSERT INTO `wp_options` VALUES (647,'_transient_acf_plugin_info_pro','a:19:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"6.2.4\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:155:\"<a href=\"https://wpengine.com/?utm_source=wordpress.org&utm_medium=referral&utm_campaign=plugin_directory&utm_content=advanced_custom_fields\">WP Engine</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:6:\"tested\";s:5:\"6.4.2\";s:5:\"added\";s:10:\"2023-11-28\";s:12:\"last_updated\";s:10:\"2023-11-28\";s:11:\"description\";s:5216:\"<p>Advanced Custom Fields (ACF) turns WordPress sites into a fully-fledged content management system by giving you all the tools to do more with your data.</p>\n\n<p>Use the ACF plugin to take full control of your WordPress edit screens, custom field data, and more.</p>\n\n<p><strong>Add fields on demand.</strong></p>\n<p>The ACF field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons! Whether it’s something simple like adding an “author” field to a book review post, or something more complex like the structured data needs of an ecommerce site or marketplace, ACF makes adding fields to your content model easy.</p>\n\n<p><strong>Add them anywhere.</strong></p>\n<p>Fields can be added all over WordPress including posts, pages, users, taxonomy terms, media, comments and even custom options pages! It couldn’t be simpler to bring structure to the WordPress content creation experience.</p>\n\n<p><strong>Show them everywhere.</strong></p>\n<p>Load and display your custom field values in any theme template file with our hassle-free, developer friendly functions! Whether you need to display a single value or generate content based on a more complex query, the out-of-the-box functions of ACF make templating a dream for developers of all levels of experience.</p>\n\n<p><strong>Any Content, Fast.</strong></p>\n<p>Turning WordPress into a true content management system is not just about custom fields. Creating new custom post types and taxonomies is an essential part of building custom WordPress sites. Registering post types and taxonomies is now possible right in the ACF UI, speeding up the content modeling workflow without the need to touch code or use another plugin.</p>\n\n<p><strong>Simply beautiful and intentionally accessible.</strong></p>\n<p>For content creators and those tasked with data entry, the field user experience is as intuitive as they could desire while fitting neatly into the native WordPress experience. Accessibility standards are regularly reviewed and applied, ensuring ACF is able to empower as close to anyone as possible.</p>\n\n<p><strong>Documentation and developer guides.</strong></p>\n<p>Over 10 plus years of vibrant community contribution alongside an ongoing commitment to clear documentation means that you’ll be able to find the guidance you need to build what you want.</p>\n\n<h4>Features</h4>\n<ul>\n<li>Simple & Intuitive</li>\n<li>Powerful Functions</li>\n<li>Over 30 Field Types</li>\n<li>Extensive Documentation</li>\n<li>Millions of Users</li>\n</ul>\n\n<h4>Links</h4>\n<ul>\n<li><a href=\"https://www.advancedcustomfields.com/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Website</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Documentation</a></li>\n<li><a href=\"https://support.advancedcustomfields.com\">Support</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF PRO</a></li>\n</ul>\n\n<h4>PRO</h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility. The ACF PRO plugin features:</p>\n\n<ul>\n<li>The <a href=\"https://www.advancedcustomfields.com/resources/repeater/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Repeater Field</a> allows you to create a set of sub fields which can be repeated again, and again, and again.</li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/blocks/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF Blocks</a>, a powerful PHP-based framework for developing custom block types for the WordPress Block Editor (aka Gutenberg).</li>\n<li>Define, create, and manage content with the <a href=\"https://www.advancedcustomfields.com/resources/flexible-content/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Flexible Content Field</a>, which provides for multiple layout and sub field options.</li>\n<li>Use the <a href=\"https://www.advancedcustomfields.com/resources/options-page/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Options Page</a> feature to add custom admin pages to edit ACF fields.</li>\n<li>Build fully customisable image galleries with the <a href=\"https://www.advancedcustomfields.com/resources/gallery/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Gallery Field</a>.</li>\n<li>Unlock a more efficient workflow for managing field settings by reusing existing fields and field groups on demand with the <a href=\"https://www.advancedcustomfields.com/resources/clone/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Clone Field</a>.</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Upgrade to ACF PRO</a></p>\";s:12:\"installation\";s:649:\"<p>From your WordPress dashboard</p>\n\n<ol>\n<li><strong>Visit</strong> Plugins > Add New</li>\n<li><strong>Search</strong> for \"Advanced Custom Fields\" or “ACF”</li>\n<li><strong>Install and Activate</strong> Advanced Custom Fields from your Plugins page</li>\n<li><strong>Click</strong> on the new menu item \"ACF\" and create your first custom field group, or register a custom post type or taxonomy.</li>\n<li><strong>Read</strong> the documentation to <a href=\"https://www.advancedcustomfields.com/resources/getting-started-with-acf/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">get started</a></li>\n</ol>\";s:9:\"changelog\";s:4012:\"<h4>6.2.4</h4>\n<p><em>Release Date 28th November 2023</em></p>\n\n<ul>\n<li>Fix - Custom Post Types labels now match the WordPress 6.4 behavior for \"Add New\" labels</li>\n<li>Fix - When exporting both post types and taxonomies as PHP, taxonomies will now appear before post types, matching the order ACF registers them. This resolves issues where taxonomy slugs will not work in post type permalinks</li>\n<li>Fix - Advanced Settings for Taxonomies, Post Types or Options Pages now display with the correct top padding when toggled on</li>\n<li>Fix - When a parent option page is set to \"Redirect to Child Page\", the child page will now correctly show it\'s parent setting</li>\n<li>Fix - When activated as a must-use plugin, the ACF PRO \"Updates\" page is now visible. Use the existing <code>show_updates</code> setting to hide</li>\n<li>Fix - When activated as a must-use plugin, ACF PRO licenses defined in code will now correctly activate sites</li>\n<li>Fix - When <code>show_updates</code> is set or filtered to false, ACF PRO will now automatically still activate defined licenses</li>\n<li>i18n - Maintenance and internal upstream messages from the ACF PRO activation server are now translatable</li>\n</ul>\n\n<h4>6.2.3</h4>\n<p><em>Release Date 15th November 2023</em></p>\n\n<ul>\n<li><a href=\"https://www.advancedcustomfields.com/blog/acf-6-2-3/\">View Release Post</a></li>\n<li>New - An ACF Blocks specific JSON schema for block.json is now available on <a href=\"https://github.com/AdvancedCustomFields/schemas\">GitHub</a></li>\n<li>New - Flexible Content fields now show the layout name in the layout\'s header bar and supports click-to-copy</li>\n<li>New - Duplicating Flexible Content layouts now appends \"Copy\" to their name and label, matching the behavior of field group duplication</li>\n<li>Enhancement - ACF PRO will now automatically attempt license reactivation when the site URL changes, e.g. after a site migration. This resolves issues where updates may fail</li>\n<li>Enhancement - Presentation setting for \"High\" placement of the Field Group made clear that it\'s not supported in the block editor</li>\n<li>Fix - <code>acf_format_date</code> now ensures the date parameter is valid to prevent fatal errors if other data types are passed in</li>\n<li>Fix - CPTs with a custom icon URL now display the posts icon in the location column of the field groups screen</li>\n<li>Fix - The ACF JSON import form will now disable on first submit resolving an issue where you could submit the form twice</li>\n<li>Fix - The \"Add Row\" button in the Flexible Content field now displays correctly when using nested layouts</li>\n<li>Fix - Warning and Error notices no longer flicker on ACF admin pages load</li>\n<li>i18n - ACF PRO license activation success and error messages are now translatable</li>\n</ul>\n\n<h4>6.2.2</h4>\n<p><em>Release Date 25th October 2023</em></p>\n\n<ul>\n<li>Enhancement - ACF Blocks which have not been initialized by the editor will now render correctly</li>\n<li>Enhancement - Added a new <code>acf/filesize</code> filter to allow third party media plugins to bypass ACF calling <code>filesize()</code> on attachments with uncached file sizes, which may result in a remote download if offloaded</li>\n<li>Enhancement - ACF PRO license status and subscription expiry dates are now displayed on the “Updates” page</li>\n<li>Fix - Product pages for WooCommerce version 8.2 or newer now correctly support field group location rules</li>\n<li>Fix - Relationship field items can now be removed on mobile devices</li>\n<li>Fix - Color picker fields no longer autocomplete immediately after typing 3 valid hex characters</li>\n<li>Fix - Field settings no longer appear misaligned when the viewport is something other than 100%</li>\n<li>Fix - Select fields without an aria-label no longer throw a warning</li>\n<li>Fix - CPTs and Taxonomies with a custom text domain now export correctly when using PHP export</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/changelog/\">View the full changelog</a></p>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:182:{i:0;s:5:\"6.2.3\";i:1;s:5:\"6.2.2\";i:2;s:7:\"6.2.1.1\";i:3;s:5:\"6.2.1\";i:4;s:5:\"6.2.0\";i:5;s:9:\"6.2.0-RC1\";i:6;s:11:\"6.2.0-beta1\";i:7;s:5:\"6.1.8\";i:8;s:5:\"6.1.7\";i:9;s:5:\"6.1.6\";i:10;s:5:\"6.1.5\";i:11;s:5:\"6.1.4\";i:12;s:5:\"6.1.3\";i:13;s:5:\"6.1.2\";i:14;s:5:\"6.1.1\";i:15;s:5:\"6.1.0\";i:16;s:11:\"6.1.0-beta1\";i:17;s:12:\"6.1.0-alpha1\";i:18;s:5:\"6.0.7\";i:19;s:5:\"6.0.6\";i:20;s:5:\"6.0.5\";i:21;s:5:\"6.0.4\";i:22;s:5:\"6.0.3\";i:23;s:5:\"6.0.2\";i:24;s:5:\"6.0.1\";i:25;s:5:\"6.0.0\";i:26;s:9:\"6.0.0-RC3\";i:27;s:9:\"6.0.0-RC2\";i:28;s:9:\"6.0.0-RC1\";i:29;s:11:\"6.0.0-beta1\";i:30;s:12:\"6.0.0-alpha4\";i:31;s:12:\"6.0.0-alpha3\";i:32;s:12:\"6.0.0-alpha2\";i:33;s:12:\"6.0.0-alpha1\";i:34;s:6:\"5.12.6\";i:35;s:6:\"5.12.5\";i:36;s:6:\"5.12.4\";i:37;s:6:\"5.12.3\";i:38;s:6:\"5.12.2\";i:39;s:6:\"5.12.1\";i:40;s:4:\"5.12\";i:41;s:8:\"5.12-RC1\";i:42;s:10:\"5.12-beta2\";i:43;s:10:\"5.12-beta1\";i:44;s:6:\"5.11.4\";i:45;s:6:\"5.11.3\";i:46;s:6:\"5.11.2\";i:47;s:6:\"5.11.1\";i:48;s:4:\"5.11\";i:49;s:8:\"5.11-RC1\";i:50;s:6:\"5.10.2\";i:51;s:6:\"5.10.1\";i:52;s:10:\"5.10.0-RC2\";i:53;s:10:\"5.10.0-RC1\";i:54;s:4:\"5.10\";i:55;s:5:\"5.9.9\";i:56;s:5:\"5.9.8\";i:57;s:5:\"5.9.7\";i:58;s:5:\"5.9.6\";i:59;s:5:\"5.9.5\";i:60;s:5:\"5.9.4\";i:61;s:5:\"5.9.3\";i:62;s:5:\"5.9.2\";i:63;s:5:\"5.9.1\";i:64;s:5:\"5.9.0\";i:65;s:9:\"5.9.0-RC1\";i:66;s:11:\"5.9.0-beta5\";i:67;s:11:\"5.9.0-beta4\";i:68;s:11:\"5.9.0-beta3\";i:69;s:11:\"5.9.0-beta2\";i:70;s:11:\"5.9.0-beta1\";i:71;s:6:\"5.8.14\";i:72;s:6:\"5.8.13\";i:73;s:6:\"5.8.12\";i:74;s:6:\"5.8.11\";i:75;s:5:\"5.8.9\";i:76;s:5:\"5.8.8\";i:77;s:5:\"5.8.7\";i:78;s:5:\"5.8.6\";i:79;s:5:\"5.8.5\";i:80;s:5:\"5.8.4\";i:81;s:5:\"5.8.3\";i:82;s:5:\"5.8.2\";i:83;s:5:\"5.8.1\";i:84;s:5:\"5.8.0\";i:85;s:9:\"5.8.0-RC2\";i:86;s:9:\"5.8.0-RC1\";i:87;s:13:\"5.8.0-beta4.1\";i:88;s:11:\"5.8.0-beta4\";i:89;s:11:\"5.8.0-beta3\";i:90;s:11:\"5.8.0-beta2\";i:91;s:11:\"5.8.0-beta1\";i:92;s:6:\"5.7.13\";i:93;s:6:\"5.7.12\";i:94;s:6:\"5.7.10\";i:95;s:5:\"5.7.9\";i:96;s:5:\"5.7.8\";i:97;s:5:\"5.7.7\";i:98;s:5:\"5.7.6\";i:99;s:5:\"5.7.5\";i:100;s:5:\"5.7.4\";i:101;s:5:\"5.7.3\";i:102;s:5:\"5.7.2\";i:103;s:5:\"5.7.1\";i:104;s:5:\"5.7.0\";i:105;s:6:\"5.6.10\";i:106;s:5:\"5.6.9\";i:107;s:5:\"5.6.8\";i:108;s:5:\"5.6.7\";i:109;s:5:\"5.6.6\";i:110;s:5:\"5.6.5\";i:111;s:5:\"5.6.4\";i:112;s:5:\"5.6.3\";i:113;s:5:\"5.6.2\";i:114;s:5:\"5.6.1\";i:115;s:5:\"5.6.0\";i:116;s:9:\"5.6.0-RC2\";i:117;s:9:\"5.6.0-RC1\";i:118;s:11:\"5.6.0-beta2\";i:119;s:11:\"5.6.0-beta1\";i:120;s:6:\"5.5.14\";i:121;s:6:\"5.5.13\";i:122;s:6:\"5.5.12\";i:123;s:6:\"5.5.11\";i:124;s:6:\"5.5.10\";i:125;s:5:\"5.5.9\";i:126;s:5:\"5.5.7\";i:127;s:5:\"5.5.5\";i:128;s:5:\"5.5.3\";i:129;s:5:\"5.5.2\";i:130;s:5:\"5.5.1\";i:131;s:5:\"5.5.0\";i:132;s:5:\"5.4.8\";i:133;s:5:\"5.4.7\";i:134;s:5:\"5.4.6\";i:135;s:5:\"5.4.5\";i:136;s:5:\"5.4.4\";i:137;s:5:\"5.4.3\";i:138;s:5:\"5.4.2\";i:139;s:5:\"5.4.1\";i:140;s:5:\"5.4.0\";i:141;s:6:\"5.3.10\";i:142;s:5:\"5.3.9\";i:143;s:5:\"5.3.8\";i:144;s:5:\"5.3.7\";i:145;s:5:\"5.3.6\";i:146;s:5:\"5.3.5\";i:147;s:5:\"5.3.4\";i:148;s:5:\"5.3.3\";i:149;s:5:\"5.3.2\";i:150;s:5:\"5.3.1\";i:151;s:5:\"5.3.0\";i:152;s:5:\"5.2.9\";i:153;s:5:\"5.2.8\";i:154;s:5:\"5.2.7\";i:155;s:5:\"5.2.6\";i:156;s:5:\"5.2.5\";i:157;s:5:\"5.2.4\";i:158;s:5:\"5.2.3\";i:159;s:5:\"5.2.2\";i:160;s:5:\"5.2.1\";i:161;s:5:\"5.2.0\";i:162;s:5:\"5.1.9\";i:163;s:5:\"5.1.8\";i:164;s:5:\"5.1.7\";i:165;s:5:\"5.1.6\";i:166;s:5:\"5.1.5\";i:167;s:5:\"5.1.4\";i:168;s:5:\"5.1.3\";i:169;s:5:\"5.1.2\";i:170;s:5:\"5.1.1\";i:171;s:5:\"5.1.0\";i:172;s:5:\"5.0.9\";i:173;s:5:\"5.0.8\";i:174;s:5:\"5.0.7\";i:175;s:5:\"5.0.6\";i:176;s:5:\"5.0.5\";i:177;s:5:\"5.0.4\";i:178;s:5:\"5.0.3\";i:179;s:5:\"5.0.2\";i:180;s:5:\"5.0.1\";i:181;s:5:\"5.0.0\";}s:13:\"release_dates\";a:71:{s:5:\"6.2.4\";s:8:\"20231128\";s:5:\"6.2.3\";s:8:\"20231115\";s:5:\"6.2.2\";s:8:\"20231025\";s:7:\"6.2.1.1\";s:8:\"20230908\";s:5:\"6.2.1\";s:8:\"20230907\";s:5:\"6.2.0\";s:8:\"20230809\";s:5:\"6.1.8\";s:8:\"20230803\";s:5:\"6.1.7\";s:8:\"20230627\";s:5:\"6.1.6\";s:8:\"20230504\";s:5:\"6.1.5\";s:8:\"20230502\";s:5:\"6.1.4\";s:8:\"20230412\";s:5:\"6.1.3\";s:8:\"20230405\";s:5:\"6.1.2\";s:8:\"20230404\";s:5:\"6.1.1\";s:8:\"20230403\";s:5:\"6.1.0\";s:8:\"20230403\";s:5:\"6.0.7\";s:8:\"20230118\";s:5:\"6.0.6\";s:8:\"20221213\";s:5:\"6.0.5\";s:8:\"20221118\";s:5:\"6.0.4\";s:8:\"20221108\";s:5:\"6.0.3\";s:8:\"20221018\";s:5:\"6.0.2\";s:8:\"20220929\";s:5:\"6.0.1\";s:8:\"20220928\";s:5:\"6.0.0\";s:8:\"20220921\";s:6:\"5.12.6\";s:8:\"20230504\";s:6:\"5.12.5\";s:8:\"20230403\";s:6:\"5.12.4\";s:8:\"20221018\";s:6:\"5.12.3\";s:8:\"20220714\";s:6:\"5.12.2\";s:8:\"20220406\";s:6:\"5.12.1\";s:8:\"20220323\";s:4:\"5.12\";s:8:\"20220223\";s:6:\"5.11.4\";s:8:\"20211202\";s:6:\"5.11.3\";s:8:\"20211124\";s:6:\"5.11.2\";s:8:\"20211124\";s:6:\"5.11.1\";s:8:\"20211118\";s:4:\"5.11\";s:8:\"20211110\";s:6:\"5.10.2\";s:8:\"20210831\";s:6:\"5.10.1\";s:8:\"20210826\";s:4:\"5.10\";s:8:\"20210825\";s:5:\"5.9.9\";s:8:\"20210720\";s:5:\"5.9.8\";s:8:\"20210708\";s:5:\"5.9.7\";s:8:\"20210622\";s:5:\"5.9.6\";s:8:\"20210520\";s:5:\"5.9.5\";s:8:\"20210211\";s:5:\"5.9.4\";s:8:\"20210114\";s:5:\"5.9.3\";s:8:\"20201103\";s:5:\"5.9.2\";s:8:\"20201029\";s:5:\"5.9.1\";s:8:\"20200908\";s:5:\"5.9.0\";s:8:\"20200817\";s:6:\"5.8.14\";s:8:\"20200813\";s:6:\"5.8.13\";s:8:\"20200810\";s:6:\"5.8.12\";s:8:\"20200610\";s:6:\"5.8.11\";s:8:\"20200512\";s:6:\"5.8.10\";s:8:\"20200512\";s:5:\"5.8.9\";s:8:\"20200326\";s:5:\"5.8.8\";s:8:\"20200304\";s:5:\"5.8.7\";s:8:\"20191112\";s:5:\"5.8.6\";s:8:\"20191024\";s:5:\"5.8.5\";s:8:\"20191008\";s:5:\"5.8.4\";s:8:\"20190903\";s:5:\"5.8.3\";s:8:\"20190807\";s:5:\"5.8.2\";s:8:\"20190715\";s:5:\"5.8.1\";s:8:\"20190603\";s:5:\"5.8.0\";s:8:\"20190508\";s:6:\"5.7.13\";s:8:\"20190306\";s:6:\"5.7.12\";s:8:\"20190215\";s:6:\"5.7.11\";s:8:\"20190211\";s:6:\"5.7.10\";s:8:\"20190116\";s:5:\"5.7.9\";s:8:\"20181217\";s:5:\"5.7.8\";s:8:\"20181207\";s:5:\"5.7.7\";s:8:\"20181001\";s:5:\"5.7.6\";s:8:\"20180912\";}}','no');
INSERT INTO `wp_options` VALUES (688,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (689,'_transient_timeout_feed_71a7765c3d553e44aaa308159b5a2ba6','1703665222','no');
INSERT INTO `wp_options` VALUES (690,'_transient_feed_71a7765c3d553e44aaa308159b5a2ba6','a:3:{s:3:\"url\";s:22:\"https://wordpress.org/\";s:8:\"feed_url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"build\";s:14:\"20211220193300\";}','no');
INSERT INTO `wp_options` VALUES (691,'_transient_timeout_feed_mod_71a7765c3d553e44aaa308159b5a2ba6','1703665222','no');
INSERT INTO `wp_options` VALUES (692,'_transient_feed_mod_71a7765c3d553e44aaa308159b5a2ba6','1703622022','no');
INSERT INTO `wp_options` VALUES (693,'_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca','1703665223','no');
INSERT INTO `wp_options` VALUES (694,'_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"The latest news about WordPress and the WordPress community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Dec 2023 22:36:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.5-alpha-57224\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:61:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WP Briefing: Episode 69: Reflections on State of the Word\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/news/2023/12/episode-69-reflections-on-state-of-the-word/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Dec 2023 12:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=16654\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:232:\"In this episode, WordPress Executive Director Josepha Haden Chomphosy reflects on the recent 2023 State of the Word, which took place in Madrid, Spain, and some of the highlights of the work across the WordPress open source project.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:51:\"https://wordpress.org/news/files/2023/12/WPB069.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brett McSherry\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10686:\"\n<p>In this episode, WordPress Executive Director Josepha Haden Chomphosy reflects on the recent 2023 State of the Word, which took place in Madrid, Spain, and some of the highlights of the work across the WordPress open source project.</p>\n\n\n\n<p><em><strong>Have a question you’d like answered? You can submit them to&nbsp;<a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@WordPress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2 class=\"wp-block-heading\">Credits</h2>\n\n\n\n<p>Host:&nbsp;<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a><br>Editor:&nbsp;<a href=\"https://profiles.wordpress.org/dustinhartzler/\">Dustin Hartzler</a><br>Logo:&nbsp;<a href=\"https://profiles.wordpress.org/javiarce/\">Javier Arce</a><br>Production:&nbsp;<a href=\"https://profiles.wordpress.org/bjmcsherry/\">Brett McSherry</a><br>Song: Fearless First by Kevin MacLeod</p>\n\n\n\n<h2 class=\"wp-block-heading\">Show Notes</h2>\n\n\n\n<ul>\n<li><a href=\"https://wordpress.org/news/2023/12/state-of-the-word-2023-recap/\">State of the Word Recap</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/project/2023/05/17/wordpress-contributor-mentorship-program-pilot-program-proposal/\">WordPress Contributor Mentorship Program: Pilot Program Proposal</a></li>\n\n\n\n<li><a href=\"https://developer.wordpress.org/news/\">WordPress Developer Blog</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/project/2023/12/22/wordpress-end-of-year-celebrations/\">WordPress End of Year Celebrations!</a></li>\n\n\n\n<li><strong>Small List of Big Things</strong>\n<ul>\n<li><a href=\"https://make.wordpress.org/openverse/2023/12/11/introducing-enhanced-content-safety-features-on-openverse/\" target=\"_blank\" rel=\"noreferrer noopener\">Introducing Enhanced Content Safety Features on Openverse</a>&nbsp;&#8211; Introducing new features for enhanced content safety on Openverse. </li>\n\n\n\n<li><a href=\"https://wordpress.org/news/2023/12/alert-wordpress-security-team-impersonation-scams/\" target=\"_blank\" rel=\"noreferrer noopener\">Alert: WordPress Security Team Impersonation Scams</a>.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/plugins/2023/12/02/join-the-plugin-review-team/\" target=\"_blank\" rel=\"noreferrer noopener\">Join the Plugin Review Team!</a> &#8211; The Plugin Review Team is looking for new members; the deadline to apply is on December 31, 2023.</li>\n</ul>\n</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Transcripts</h2>\n\n\n\n<span id=\"more-16654\"></span>\n\n\n\n<p>[00:00:00] <strong>Josepha:</strong> Hello everyone, and welcome to the WordPress Briefing. The podcast where you can catch quick explanations of the ideas behind the WordPress open source project, some insight into the community that supports it, and get a small list of big things coming up in the next two weeks. I’m your host, Josepha Haden Chomphosy. Here we go.</p>\n\n\n\n<p>[00:00:28] (Intro music)&nbsp;</p>\n\n\n\n<p>[00:00:40]&nbsp;<strong>Josepha:</strong> We wrapped up State of the Word earlier this month, and while I was sitting there being the only person to clap for the love of cake, I realized just how much we have been able to accomplish this year. And on the one hand, I shouldn&#8217;t be surprised.</p>\n\n\n\n<p>After all, progress is radical over time yet incremental in time. But all told, 2023 has been a big year for WordPress. There&#8217;s been some radical progress in a few places. There are the things you know because you&#8217;ve heard them all year. You heard them in State of the Word.</p>\n\n\n\n<p>We turned 20, for instance. We shipped three on-time releases. We had three well-organized flagship events, and we prototyped essential parts of phase 3. But there&#8217;s a lot of work that happens outside of flagship events and software releases, and I&#8217;d like to highlight a few examples of operational excellence in our community and ecosystem.</p>\n\n\n\n<p>[00:01:31] <strong>Josepha:</strong> First highlight goes to the contributors who are building community. Going back to 2021, we&#8217;ve been working to bring people back together in person.</p>\n\n\n\n<p>And in that year, we had 19 events. In 2022, we had 24 events, so a modest increase of just over 30%. But then, in 2023, the WordPress community banded together on a campaign to reignite passion in our Meetup groups and encourage playfulness in our WordCamp planning. And not only did we see a 57% increase in active Meetup groups, But we also saw a 116% increase in WordCamps, 54 WordCamps in all. That&#8217;s about a third of the way to our all-time annual high of 142.</p>\n\n\n\n<p>And to complement these in-person opportunities, Learn also shipped 104 pieces of new content and hosted 258 online workshops because location should never be a barrier to entry for joining WordPress.&nbsp;</p>\n\n\n\n<p>[00:02:32] <strong>Josepha:</strong> Second highlight goes to the contributors who are managing our directories. We do have a lot of directories. We have Plugins, Themes, Photos, Block plugins. We got a lot.</p>\n\n\n\n<p>And I&#8217;m sure that everyone saw the consistent and borderline pleading calls to join the Plugin team this year. And for folks who&#8217;ve been around a bit, you probably recall a similar set of consistent and pleading calls to join the Theme team a few years back. Concurrent with the work to refill that contribution pipeline, folks over in Meta and across the project generally, were working on automating as many checks as possible, loosening guidelines where it was reasonable, and modernizing as many processes as we could.</p>\n\n\n\n<p>I&#8217;m happy to share that the theme wait time is at a historic low, with their longest wait sometimes just at a week. And as anxious as I am about the plugin wait times, we&#8217;re actually seeing a lot of progress there as well. As we follow a process similar to the one that we did on themes, I imagine it&#8217;s only gonna get better. So, in 2023, we&#8217;ve onboarded six new team members. And since September, the number of plugins awaiting initial review has been cut in half.</p>\n\n\n\n<p>And then coming up in Q1 of 2024, we&#8217;ll have a project focused entirely on automating as many checks as possible. So I still need you, but I also need you to know that your work there matters and is having an impact.</p>\n\n\n\n<p>[00:03:55] <strong>Josepha:</strong> The third highlight goes to the contributors who are doing outreach. This year, we launched a mentorship program with an 89% completion rate because we&#8217;ve seen time and again that our most prolific contributors had someone at the start that they felt safe asking dumb questions with. We launched and nurtured the developer blog, which was a need identified by the community because there was no place for intermediate and advanced developers to get excited about their cool explorations. And there were 53 posts there this year with thirteen thousand views, which is a 251% increase for the record, which is a ridiculous increase, but it&#8217;s a lot. Thirteen thousand views is a lot.</p>\n\n\n\n<p>We have focused on documentation as we suggested in Porto of 2022. And marketing, I know not always our favorite topic, but marketing, our ability to talk about ourselves to more than just ourselves, has increased dramatically this year.&nbsp;</p>\n\n\n\n<p>Not only have we started rolling out a modern design across our website, but we also are present and engaged on eight different platforms with 20-plus episodes of this very podcast and also video content that netted us seven and a half million views this year. That&#8217;s a lot of numbers, and there&#8217;s a post that goes with it.</p>\n\n\n\n<p>[00:05:10] <strong>Josepha:</strong> Check out the show notes. But if you&#8217;re not gonna check out the show notes because you listen to this on Pocket Casts or Google or something, go to make.WordPress.org/project, and it&#8217;ll be over there. But the point is, it&#8217;s been a banner year for the software, and I am grateful for every tester, designer, and developer that showed up for it. But I also know that what makes WordPress truly irreplaceable is our ecosystem, and it&#8217;s contributions like this and the contributors who do them that make our ecosystem vibrant and responsive and thriving on into the future.</p>\n\n\n\n<p>So, thank you all for the contributions you make to WordPress. Thank you for the shining example of how to do open source at scale, and thank you for another great year together.&nbsp;</p>\n\n\n\n<p>[00:06:04] <strong>Josepha:</strong> Which brings us now to our small list of big things. It is indeed a small this time. First up, I would like to introduce our enhanced content safety features on Openverse. By default, search results now exclude openly licensed media containing sensitive textual content. But this new feature adds additional filtering based on titles, tags, and descriptions of the work as well.</p>\n\n\n\n<p>[00:06:27] <strong>Josepha:</strong> The second thing on our small list of big things is that there is just a general alert. There&#8217;s a WordPress security team impersonation scam that&#8217;s going on out there. The team is aware of multiple ongoing phishing scams impersonating both the WordPress team and the WordPress security team in an attempt to convince administrators to install a plugin on their website which contains malware. I&#8217;ll include a link to that post just in case you have anyone that you think might need to be aware of that, but also all of our site administrators know. Like, WordPress is not gonna email you asking for passwords or anything ever. </p>\n\n\n\n<p>[00:07:02] <strong>Josepha:</strong> And item number three, I would like you to join the Plugin review team. I know I just said it in the body of the episode. But, the Plugin review team is looking for new members still who believe in our mission of guiding plugin authors in responsibly transforming their innovative ideas into reality and ensuring a great WordPress plugin experience for end users. There is a deadline to apply; it&#8217;s December 31st. And so you can get that done over the holidays, over a glass of eggnog if that&#8217;s how you choose to celebrate whatever it is that you do. </p>\n\n\n\n<p>And that&#8217;s it for your small list of big things.&nbsp;</p>\n\n\n\n<p>Don&#8217;t forget to follow us on your favorite podcast app or subscribe directly on WordPress.org/news. You&#8217;ll get a friendly reminder whenever there&#8217;s a new episode. If you liked what you heard today, share it with a fellow WordPresser. Or, if you had questions about what you heard, you can share those with me at wpbriefing@WordPress.org. I&#8217;m your host, Josepha Haden Chomphosy. See you again in a couple of weeks.&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16654\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"State of the Word 2023 Recap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/news/2023/12/state-of-the-word-2023-recap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2023 22:55:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:17:\"state of the word\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16617\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"On December 11, WordPress co-founder Matt Mullenweg traveled to beautiful Madrid, Spain, to deliver his annual State of the Word keynote. It was the first time this event took place outside the United States. Against the backdrop of Palacio Neptuno—an iconic architectural gem and UNESCO World Heritage site—nearly 200 contributors, developers, extenders, and friends of [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Nicholas Garofalo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:20384:\"\n<p>On December 11, WordPress co-founder <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> traveled to beautiful Madrid, Spain, to deliver his annual <a href=\"https://wordpress.org/state-of-the-word/\">State of the Word</a> keynote. It was the first time this event took place outside the United States. Against the backdrop of <a href=\"https://www.palacioneptuno.com/\">Palacio Neptuno</a>—an iconic architectural gem and UNESCO World Heritage site—nearly 200 contributors, developers, extenders, and friends of the project came together to hear from Matt, with millions more joining online.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\n<iframe class=\"youtube-player\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/c7M4mBVgP3Y?version=3&#038;rel=1&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;fs=1&#038;hl=en-US&#038;autohide=2&#038;wmode=transparent\" allowfullscreen=\"true\" style=\"border:0;\" sandbox=\"allow-scripts allow-same-origin allow-popups allow-presentation\"></iframe>\n</div></figure>\n\n\n\n<h2 class=\"wp-block-heading\">An introduction from the Executive Director</h2>\n\n\n\n<p>Kicking off the event, <a href=\"https://profiles.wordpress.org/chanthaboune/\" target=\"_blank\" rel=\"noreferrer noopener\">Josepha Haden Chomphosy</a>, Executive Director of the WordPress project, spoke about the community’s heart and spirit as what fuels hope for the future, ensuring the freedoms of the open web for all. She invited Matt on stage with a closing statement of confidence that such values and characteristics will move the project forward into the next 20 years as it has for the last 20.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img fetchpriority=\"high\" decoding=\"async\" width=\"1024\" height=\"682\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_35.jpg?resize=1024%2C682&#038;ssl=1\" alt=\"Josepha Haden Chomphosy, Executive Director of the WordPress project, speaking at a podium \" class=\"wp-image-16627\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_35.jpg?resize=1024%2C682&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_35.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_35.jpg?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_35.jpg?w=1280&amp;ssl=1 1280w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2 class=\"wp-block-heading\">Looking back at 2023</h2>\n\n\n\n<p>Taking the stage, Matt shared his excitement about the event being the first international State of the Word. He honored the Spanish WordPress community for hosting, citing their past WordCamp accomplishments. From there, Matt jumped right into a reflection of this year’s notable moments. He recalled the project’s 20th-anniversary celebrations, how the software has evolved, and how much more the community came together this year—doubling the number of WordCamps to 70, taking place in 33 countries.</p>\n\n\n\n<div class=\"wp-block-group has-off-white-2-background-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:var(--wp--preset--spacing--40);padding-right:0;padding-bottom:var(--wp--preset--spacing--40);padding-left:0\">\n<p class=\"has-text-align-center\">We’re always aiming to learn and improve. Tell us how to make meetups better.</p>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://wordpressdotorg.survey.fm/2023-meetup-annual-survey?p=1\" target=\"_blank\" rel=\"noreferrer noopener\">Take the 2023 Meetup Survey</a></div>\n</div>\n</div>\n\n\n\n<p>Matt continued with callouts to several resources on <a href=\"https://wordpress.org/\">WordPress.org</a>: the all-new <a href=\"https://events.wordpress.org/\">Events</a> page, the redesigned <a href=\"https://wordpress.org/showcase/\">Showcase</a>, a new <a href=\"https://wordpress.org/remembers/\">WordPress Remembers memorial</a>, and the <a href=\"https://wordpress.org/news/2023/09/openverse-wins-the-2023-oeg-open-infrastructure-award/\">award-winning Openverse</a>. He also demoed <a href=\"https://developer.wordpress.org/playground/\">WordPress Playground</a>, a tool allowing users to experiment with WordPress directly in their browsers, as well as the versatile <a href=\"https://wordpress.org/themes/twentytwentyfour/\">Twenty Twenty-Four default theme</a>.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" width=\"1024\" height=\"682\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_53.jpg?resize=1024%2C682&#038;ssl=1\" alt=\"Matías Ventura, Lead Architect of Gutenberg, speaking on stage at State of the Word\" class=\"wp-image-16621\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_53.jpg?resize=1024%2C682&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_53.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_53.jpg?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_53.jpg?w=1280&amp;ssl=1 1280w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2 class=\"wp-block-heading\">Collaborative editing and more</h2>\n\n\n\n<p>Matt recapped the four phases of the Gutenberg project, noting that work has begun on Phase 3: Collaboration before passing the microphone to <a href=\"https://profiles.wordpress.org/matveb/\">Matías Ventura</a>, Lead Architect of Gutenberg.&nbsp;</p>\n\n\n\n<p>After a quick interlude in Spanish, Matías acknowledged how much progress had been made on the software this year. He spoke about the aim of the Site Editor to become both an exemplary writing environment and a superior design tool while noting improvements to the&nbsp;<a href=\"https://wordpress.org/documentation/article/footnotes-block/\" target=\"_blank\" rel=\"noreferrer noopener\">Footnotes Block</a>&nbsp;and the ease of&nbsp;<a href=\"https://wordpress.org/documentation/article/distraction-free-mode/\" target=\"_blank\" rel=\"noreferrer noopener\">Distraction Free mode</a>.</p>\n\n\n\n<p>While there was no set timeline for collaboration and workflows, Matías was excited to share a working prototype in the Editor. He showcased some of the most interesting aspects of collaborative editing, including establishing a sync engine that allows real-time edits to be visible across sessions. He invited contributors to test the prototype in the <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg plugin</a> and <a href=\"https://github.com/WordPress/gutenberg/issues/52593\">share their feedback in Github</a>.</p>\n\n\n\n<p>From there, Matías highlighted other exciting developments, including the emphasis on Patterns and their continued evolution as a powerful tool for workflows, and the ability to connect blocks to custom fields. He was thrilled to speak about performance improvements, noting that work is in progress to make the Editor <a href=\"https://www.codevitals.run/project/gutenberg\">at least twice as fast</a>. Speaking about front-end performance, he shared what’s to come with a <a href=\"https://wpmovies.dev/\">demo of the Interactivity API</a>, showcasing how it can make transitions, search, and other interactions instant—all with standard WordPress blocks and features.&nbsp;</p>\n\n\n\n<p>Matías concluded with a look at how the Admin redesign will take cues from the Site Editor, eventually allowing users to shape their WordPress Admin experience based on their unique needs.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"684\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_09.jpg?resize=1024%2C684&#038;ssl=1\" alt=\"WordPress co-founder Matt Mullenweg speaking at a podium\" class=\"wp-image-16624\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_09.jpg?resize=1024%2C684&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_09.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_09.jpg?resize=768%2C513&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_09.jpg?w=1280&amp;ssl=1 1280w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2 class=\"wp-block-heading\">AI and Data Liberation</h2>\n\n\n\n<p>Matt returned to the stage to expand on the future of WordPress, reinforcing his past advice to <em>learn AI deeply</em>. He expressed his excitement about what can be accomplished with the wealth of AI tools available, how contributors are already experimenting with natural language processing and WordPress Playground to create and build.</p>\n\n\n\n<p>Finally, Matt introduced an additional focus for the project in 2024: <a href=\"https://wordpress.org/data-liberation/\">Data Liberation</a>, with the goal to make importing from other platforms into WordPress as frictionless as possible. He spoke about the tendency of content management systems to keep users locked in as part of his motivation to <em>unlock digital barriers</em>. The Data Liberation initiative will work on one-click migration and the export format from WordPress.&nbsp;</p>\n\n\n\n<p>More than just tools, Data Liberation reflects the project’s ethos to allow seamless contributions. With that, Matt invited anyone interested to jump into the action, noting a new <a href=\"https://github.com/wordpress/data-liberation\">Data Liberation GitHub repository</a> and forthcoming <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack</a> channels as places to get started.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Questions and answers</h2>\n\n\n\n<p>Following the presentation, Matt fielded questions from the live-stream and in-person audiences during an interactive question-and-answer session hosted by <a href=\"https://profiles.wordpress.org/monchomad/\">Jose Ramón Padrón (Moncho)</a>.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\n<iframe loading=\"lazy\" class=\"youtube-player\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/S01uBD2pyQY?version=3&#038;rel=1&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;fs=1&#038;hl=en-US&#038;autohide=2&#038;wmode=transparent\" allowfullscreen=\"true\" style=\"border:0;\" sandbox=\"allow-scripts allow-same-origin allow-popups allow-presentation\"></iframe>\n</div></figure>\n\n\n\n<p>Additional questions from the live session will be answered in a follow-up post on <a href=\"https://make.wordpress.org/project\">make.WordPress.org/project</a>. Subscribe to our blog notifications to be sure you don’t miss it. And don’t forget to mark your calendars for next year’s <a href=\"https://asia.wordcamp.org/2024/\">WordCamp Asia</a> (Taipei, Taiwan), <a href=\"https://europe.wordcamp.org/2024/\">WordCamp Europe</a> (Torino, Italy), and WordCamp US (Portland, Oregon, United States).</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-jetpack-tiled-gallery aligncenter is-style-rectangular\"><div class=\"tiled-gallery__gallery\"><div class=\"tiled-gallery__row\"><div class=\"tiled-gallery__col\" style=\"flex-basis:34.98661%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"720\" data-id=\"16628\" data-link=\"https://wordpress.org/news/?attachment_id=16628\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg\" data-width=\"1280\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_37_04-1024x576.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"853\" data-id=\"16618\" data-link=\"https://wordpress.org/news/?attachment_id=16618\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg\" data-width=\"1280\" src=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_22-1024x682.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure></div><div class=\"tiled-gallery__col\" style=\"flex-basis:65.01339%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"853\" data-id=\"16626\" data-link=\"https://wordpress.org/news/?attachment_id=16626\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg\" data-width=\"1280\" src=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_36_31-1024x682.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure></div></div><div class=\"tiled-gallery__row\"><div class=\"tiled-gallery__col\" style=\"flex-basis:75.87343%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=600&#038;ssl=1 600w,https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=900&#038;ssl=1 900w,https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=1500&#038;ssl=1 1500w,https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=1800&#038;ssl=1 1800w,https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?strip=info&#038;w=1920&#038;ssl=1 1920w\" alt=\"\" data-height=\"1080\" data-id=\"16632\" data-link=\"https://wordpress.org/news/?attachment_id=16632\" data-url=\"https://wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png\" data-width=\"1920\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/sotw-2023-final.006-1024x576.png?ssl=1\" data-amp-layout=\"responsive\" /></figure></div><div class=\"tiled-gallery__col\" style=\"flex-basis:24.12657%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_38-576x1024.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_38-576x1024.jpg?strip=info&#038;w=720&#038;ssl=1 720w\" alt=\"\" data-height=\"1280\" data-id=\"16630\" data-link=\"https://wordpress.org/news/?attachment_id=16630\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_38-576x1024.jpg\" data-width=\"720\" src=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_38-576x1024.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure></div></div><div class=\"tiled-gallery__row\"><div class=\"tiled-gallery__col\" style=\"flex-basis:63.00314%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i2.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i2.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i2.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"853\" data-id=\"16620\" data-link=\"https://wordpress.org/news/?attachment_id=16620\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg\" data-width=\"1280\" src=\"https://i2.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_35_11-1024x682.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure></div><div class=\"tiled-gallery__col\" style=\"flex-basis:36.99686%\"><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"720\" data-id=\"16619\" data-link=\"https://wordpress.org/news/?attachment_id=16619\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg\" data-width=\"1280\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_34_45-1024x576.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure><figure class=\"tiled-gallery__item\"><img decoding=\"async\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg?strip=info&#038;w=600&#038;ssl=1 600w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg?strip=info&#038;w=900&#038;ssl=1 900w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg?strip=info&#038;w=1200&#038;ssl=1 1200w,https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg?strip=info&#038;w=1280&#038;ssl=1 1280w\" alt=\"\" data-height=\"720\" data-id=\"16629\" data-link=\"https://wordpress.org/news/?attachment_id=16629\" data-url=\"https://wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg\" data-width=\"1280\" src=\"https://i1.wp.com/wordpress.org/news/files/2023/12/IMAGE-2023-12-11-13_38_08-1024x576.jpg?ssl=1\" data-amp-layout=\"responsive\" /></figure></div></div></div></div>\n\n\n\n<p><em><em>Thank you to <a href=\'https://profiles.wordpress.org/laurlittle/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>laurlittle</a>, <a href=\'https://profiles.wordpress.org/eidolonnight/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>eidolonnight</a>, <a href=\'https://profiles.wordpress.org/nilovelez/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nilovelez</a>, <a href=\'https://profiles.wordpress.org/fepr/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>fepr</a>, <a href=\'https://profiles.wordpress.org/cbringmann/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>cbringmann</a>, and the many others who made this event and post possible.</em></em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16617\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:61:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WP Briefing: Episode 68: Toward a More Interconnected Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/news/2023/12/episode-68-toward-a-more-interconnected-web/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2023 12:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=16569\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:235:\"In this episode, WordPress Executive Director, Josepha Haden Chomphosy articulates the vision for a collaborative ecosystem where knowledge sharing and contributions to open source tools lead to a more interconnected and empowered web.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:51:\"https://wordpress.org/news/files/2023/12/WPB068.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brett McSherry\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:14552:\"\n<p>In this episode, WordPress Executive Director, Josepha Haden Chomphosy articulates the vision for a collaborative ecosystem where knowledge sharing and contributions to open source tools lead to a more interconnected and empowered web.</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to&nbsp;<a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@WordPress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2 class=\"wp-block-heading\">Credits</h2>\n\n\n\n<p>Host:&nbsp;<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a><br>Editor:&nbsp;<a href=\"https://profiles.wordpress.org/dustinhartzler/\">Dustin Hartzler</a><br>Logo:&nbsp;<a href=\"https://profiles.wordpress.org/javiarce/\">Javier Arce</a><br>Production:&nbsp;<a href=\"https://profiles.wordpress.org/bjmcsherry/\">Brett McSherry</a><br>Song: Fearless First by Kevin MacLeod</p>\n\n\n\n<h2 class=\"wp-block-heading\">Show Notes</h2>\n\n\n\n<ul>\n<li><a href=\"https://wordpress.org/news/2022/11/state-of-the-word-2022/\">State of the Word 2022</a></li>\n\n\n\n<li><a href=\"https://thephp.foundation/\">PHP Foundation</a></li>\n\n\n\n<li>Josepha&#8217;s <a href=\"https://make.wordpress.org/project/2022/01/21/big-picture-goals-2022/\">Big Picture Goals 2022</a></li>\n\n\n\n<li><strong>Small List of Big Things</strong>\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/11/22/whats-new-in-gutenberg-17-1-22-november/\">Gutenberg 17.1</a> has been released and is <a href=\"https://wordpress.org/plugins/gutenberg/\" target=\"_blank\" rel=\"noreferrer noopener\">available for download</a>! The latest release includes new enhancements, bug fixes, and continued work on Phase 3 features.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/community/2023/11/17/announcing-the-2023-annual-meetup-survey/\" target=\"_blank\" rel=\"noreferrer noopener\">Announcing the 2023 Annual Meetup Survey</a> &#8211; The Community team proposed a survey for all meetup members and organizers. Please complete the <a href=\"https://wordpressdotorg.survey.fm/2023-meetup-annual-survey\" target=\"_blank\" rel=\"noreferrer noopener\">Annual Meetup Survey</a>  by January 14, 2024– even if you haven&#8217;t participated in a meetup recently!</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/training/2023/11/29/request-for-feedback-lesson-handbook-pages/\" target=\"_blank\" rel=\"noreferrer noopener\">Request for feedback: Lesson Handbook pages</a> &#8211; As the Training team progresses towards the 2024 launch of <a href=\"https://make.wordpress.org/training/2023/07/07/project-thread-learning-pathways-on-learn-wordpress/\">Learning Pathways</a>, they&#8217;re developing a set of content creation guidelines to streamline and scale the process. These guidelines will focus on efficient methods for developing, reviewing, and updating content. To gather input, a <a href=\"https://docs.google.com/document/d/1twvDGmVZsyjBZbi9abiqoA_a2G7O_WNis_iGL2Sccg0/edit#heading=h.srkdcrt4k0v8\">Google Doc</a> has been created where you can share your ideas. Please provide your feedback and comments on this document by Tuesday, December 19, 2023.</li>\n\n\n\n<li><a href=\"https://playground.wordpress.net/\">WordPress Playground</a> makes WordPress instantly accessible for users, learners, extenders, and contributors.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/project/2023/11/30/embracing-matrix-for-enhanced-communication/\">Embracing Matrix for Enhanced Communication</a></li>\n</ul>\n</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Transcripts</h2>\n\n\n\n<span id=\"more-16569\"></span>\n\n\n\n<p>[00:00:00] <strong>Josepha:</strong> Hello everyone. And welcome to the WordPress Briefing. The podcast where you can catch quick explanations of the ideas behind the WordPress open source project, some insight into the community that supports it, and get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go.</p>\n\n\n\n<p>[00:00:28] (Intro music)&nbsp;</p>\n\n\n\n<p>[00:00:40] <strong>Josepha:</strong> If you&#8217;re already familiar with the WordPress project, and if you&#8217;re listening to this podcast, I feel like it&#8217;s a safe assumption that you&#8217;re probably also familiar with the fact that we are what&#8217;s considered a free and open source software project. We adhere to the four freedoms of open source. We track bugs in the open, and we believe that knowledge sharing can only improve our products. </p>\n\n\n\n<p>But you might not be aware of the other open source projects that are foundational to ours and otherwise are integral to our commitment to the open web. At last year&#8217;s State of the Word, Matt mentioned that one of the coolest things about being a plugin or theme author in WordPress is that you get to run your open source project on the same infrastructure that WordPress runs on. So, no matter whether you have five installs or five thousand, you&#8217;re getting the benefits of our bug trackers, messaging, and network of project sites. But beyond those, which are, of course, near and dear to us, we also support projects like PHP and its foundation. Openverse and its founding organization Creative Commons, and of course, the two that we&#8217;re hearing a lot about this year and next, Playground and Matrix.</p>\n\n\n\n<p>[00:01:52] <strong>Josepha:</strong> That&#8217;s a lot of projects and not even a comprehensive list. And honestly, it can seem, I don&#8217;t know, a little weird. Like, we&#8217;re a FOSS CMS, right? You probably know why we contribute back to PHP. It&#8217;s the same reason we ask people to contribute to WordPress. But why are we giving so much time to a media search engine, or a Web Assembly implementation, or even a messaging protocol?</p>\n\n\n\n<p>At first glance, there are, of course, a lot of quick and easy answers. For instance, like, open source is open source. Any open source contribution is going to be a good contribution. All open source in the world increases good and freedom in the world. Like, open source is open source. Makes sense, right?</p>\n\n\n\n<p>Another quick and easy answer is, you know, they&#8217;re part of us. And that&#8217;s true, definitely, for PHP, like, they&#8217;re part of us, and so we should be contributing back to them. Because we rely on them so much. And then a third quick and easy answer is that we, as the biggest open source CMS on the planet, basically, we can, spare a lending hand. We can offer a little bit of help to those around us.&nbsp;</p>\n\n\n\n<p>[00:03:03] <strong>Josepha:</strong> And those are all true. I don&#8217;t think that anyone would disagree with any of that. But the thing that ties it all together for me is something that&#8217;s a little harder to see. In the 2022 goals that I posted, I said that my second goal for our year was to support open source alternatives for all site-building necessities.</p>\n\n\n\n<p>At the time, I was primarily talking about Openverse and the directory of photos that was being created as a CC-first source. But that also applies to all of our directories. It did then, just as it does now. And Trac, and our vast network of WordPress sites. All the tools we use in order to collaborate with, and lead for, and learn from each other.</p>\n\n\n\n<p>I want us to be able to do everything it takes to build an online presence using open source tools and methods because WordPress is just a glorious little microcosm of the interconnected web. It reminds me of this art installation I had the privilege of experiencing. It&#8217;s called Meow Wolf. I went to the one in Denver, but there are a few different installations across the U.S.&nbsp;The one that I went to is this massive art installation, and it is designed to be interactive, but it wasn&#8217;t until you started sharing your experience sharing your knowledge with other people that you realized it was also collaborative, a set of buttons you pushed in one room would cause a light show in some other room.</p>\n\n\n\n<p>[00:04:34] <strong>Josepha:</strong> So you were enhancing the experience of strangers in some completely disconnected room to yours, and they couldn&#8217;t distinguish it from an automation or something they did, or just plain old magic. And that&#8217;s what we&#8217;re doing by supporting these other open source tools. Yes, every new open source contribution results in more freedom in the world. Yes, we owe support to the components that got us where we are today. And yes, we absolutely can and should pay it forward. But more importantly than all that, we&#8217;re creating the opportunity for new interactions, new brilliance, and new defenders of the open web every time that we work on these open source products.</p>\n\n\n\n<p>[00:05:20] <strong>Josepha:</strong> And it doesn&#8217;t matter if we will ever see any of those people. And it doesn&#8217;t matter if they will ever thank us. What matters is that we see that knowledge like this is worth preserving and worth sharing. Because knowledge shared, information shared is like light. The more you share it, the more there is.</p>\n\n\n\n<p>And I want you to be able to take that sharing and use it to light the world. I want you to be able to go out and tell people how open source has changed your life, how WordPress has opened doors for you, or how much these tools have empowered your clients. I want you to remember why you came to WordPress in the first place, and I need you to hear me when I say that I need you here in WordPress today because every little ripple of good that we create makes the world a little more good.</p>\n\n\n\n<p>[00:06:12] (Music interlude)&nbsp;</p>\n\n\n\n<p>[00:06:20] <strong>Josepha:</strong> (SLBT) And now, my friends, that brings us to our time for the small list of big things. I&#8217;ve got a kind of a big list because I always kind of have a big list anymore, but the first thing on my list is Gutenberg 17.1. That has been released and is available for download. It includes several new enhancements, loads of bug fixes, and continues that work on phase three features that we are starting to see come through. If you don&#8217;t have it already, go out and grab it, test it, break it, and tell us what you tested and how it broke things.&nbsp;</p>\n\n\n\n<p>[00:06:52] <strong>Josepha:</strong> The second thing on my small list of big things is that there is currently an annual meetup survey out. So, we&#8217;ve had an increase in our meetup events, and certainly an increase in the active number of meetup groups that we have, but the community team is proposing a unified survey for all meetup members and organizers, and if you haven&#8217;t participated in it yet go and fill it out. You don&#8217;t have to have actually gone to a meetup event recently in order to take it, but, you know, it might be helpful. Either way, you have until January 14, 2024, to fill that out.</p>\n\n\n\n<p>[00:07:30] <strong>Josepha:</strong> The third thing on my small list of big things is a request for feedback. The training team is working toward launching Learning Pathways in 2024. They&#8217;re looking to create a new set of content creation guidelines that enables the learning pathways to scale with a straightforward process for developing, reviewing, and updating that content. There&#8217;s a Google doc for you where you can contribute your ideas, and that doc will be open for feedback through this week and into next week. I believe it closes on Tuesday, the 19th of December, 2023.</p>\n\n\n\n<p>[00:08:04] <strong>Josepha:</strong> And then the final thing on my small list of big things is actually, it&#8217;s a dual call-in. I already said with my first one about the Gutenberg plugin: get in there and test it and break it, and then tell us how it broke and what you were doing when you were testing it and broke it. And I encourage you to do that also for Matrix and Playground.</p>\n\n\n\n<p>So Playground has been a really big deal all year long. It was a big deal at the end of last year. It showed up for us in November 2022 and has been really just growing in surprising ways all the way through 2023. So if you have not yet seen it, you haven&#8217;t gotten your hands on it yet, it&#8217;s a WordPress installation that is loaded entirely in the browser, totally server-free, and we&#8217;re looking at a couple of new implementations that make it easier for users who are trying to, like, kick the tires of WordPress before they decide, and developers who are wanting to test new pull requests and things like that.</p>\n\n\n\n<p>So keep an eye out if it sounds interesting; it is interesting. And wander over and figure out how that&#8217;s working. And the other thing in that last call for collective testing is Matrix. So Matrix is an open source federated messaging protocol, and like so many technology projects out there at the moment, we are trying to make sure that we are preparing ourselves for the future arrival of Web 3 and all of the things that are coming along with current advancements in federated everything and AI and etc., etc.</p>\n\n\n\n<p>And so, Matrix is an open source messaging protocol. There are a lot of different ways to get connected. I&#8217;ll share a link to one of the posts in the show notes over on WordPress.org/news. But if you&#8217;re interested in learning a bit about it and you don&#8217;t really want to like figure out what sort of client is comfortable for you to use. There&#8217;s also on-site chat implementations for, I want to say, like 10 or 12 of our largest or most regularly meeting groups that we have. You can go to parts of the website like make.WordPress.org/core/chat and check those out. If you have a WordPress.org account, then you can have access to that on-site chat, and that is it.</p>\n\n\n\n<p>That&#8217;s the whole low barrier to entryway of figuring that out with us. Come and break stuff with us, everyone, and tell us how to make it better.&nbsp;</p>\n\n\n\n<p>[00:10:33] <strong>Josepha:</strong> And that, my friends, is your small list of big things. Don&#8217;t forget to follow us on your favorite podcast app or subscribe directly on WordPress.org/news. You&#8217;ll get a friendly reminder whenever there&#8217;s a new episode. If you liked what you heard today, share it with a fellow WordPresser. Or, if you had questions about what you heard, you can share those with me at wpbriefing@WordPress.org. I&#8217;m your host, Josepha Haden Chomphosy. Thank you for tuning in today for the WordPress Briefing, and I&#8217;ll see you again in a couple of weeks.</p>\n\n\n\n<p>[00:11:00] (Music outro)&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16569\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"The Month in WordPress – November 2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2023/12/the-month-in-wordpress-november-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Dec 2023 11:20:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:18:\"month in wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16575\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"November is usually a busy month for the WordPress project, and this year is no different. Following the empowering release of WordPress 6.4, the energy continues to build, setting the stage for the anticipated State of the Word and upcoming projects.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Reyes Martínez\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11827:\"\n<p>November is usually a busy month for the WordPress project, and this year is no different. Following the empowering release of WordPress 6.4, the energy continues to build, setting the stage for the anticipated State of the Word and upcoming projects.&nbsp;</p>\n\n\n\n<p>Read on for all the exciting updates that marked the past month.</p>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Get ready for State of the Word</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"683\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1024%2C683&#038;ssl=1\" alt=\"State of the Word 2023\" class=\"wp-image-16438\" style=\"object-fit:cover\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1024%2C683&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1536%2C1024&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=2048%2C1365&amp;ssl=1 2048w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Mark your calendars—State of the Word 2023 is approaching fast. In this annual keynote, WordPress co-founder Matt Mullenweg celebrates the progress of the open source project and offers a glimpse into its future.</p>\n\n\n\n<p>For the first time in WordPress history, the event will be held outside North America, in the vibrant city of <a href=\"https://wordpress.org/news/2023/11/state-of-the-word-2023-madrid-spain/\">Madrid, Spain, on December 11, 2023</a>.</p>\n\n\n\n<p>If you’re unable to attend the State of the Word in person, you can watch it live on the <a href=\"https://www.youtube.com/live/1MwT9EEkguE?si=TYwAe5qnKA3DlRMX\">WordPress YouTube channel</a> or join one of the many community-led watch parties. <a href=\"https://wordpress.org/state-of-the-word\">Find one near you</a> or <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/state-of-the-word-watch-parties/\">organize one</a>.</p>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-3 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-dark-strokes-grey-background-color has-text-color has-background has-link-color wp-element-button\" href=\"https://wordpress.org/state-of-the-word/\">Learn more about State of the Word 2023</a></div>\n</div>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Meet Twenty Twenty-Four</h2>\n\n\n\n<p>Along with the release of <a href=\"https://wordpress.org/download/releases/6-4/\">WordPress 6.4</a> “Shirley,” the new default <a href=\"https://wordpress.org/news/2023/11/introducing-twenty-twenty-four/\">Twenty Twenty-Four theme was introduced</a>.</p>\n\n\n\n<p>This theme breaks away from the tradition of previous default themes that focused on a specific topic or style. Instead, Twenty Twenty-Four was created to fit any website and explore different use cases for entrepreneurs, artists, and writers.</p>\n\n\n\n<p>You’ll find more than 35 beautiful patterns, including full-page patterns for templates like homepage, search, and more. Twenty Twenty-Four boasts the latest site editing capabilities and a sophisticated aesthetic inspired by contemporary design trends.</p>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-4 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-dark-strokes-grey-background-color has-text-color has-background has-link-color wp-element-button\" href=\"https://playground.wordpress.net/?theme=twentytwentyfour\">Check out Twenty Twenty-Four now</a></div>\n</div>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">New in the Gutenberg plugin</h2>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/11/10/whats-new-in-gutenberg-17-0-9-november/\">Gutenberg 17.0</a> was released on November 9, 2023. It introduced improvements to the Command Palette, an alternative implementation of the DropdownMenu component, additional visual cues for LinkControl, and various accessibility and performance iterations.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/11/22/whats-new-in-gutenberg-17-1-22-november/\">Gutenberg 17.1</a> shipped on November 22, 2023. In addition to several accessibility and writing flow enhancements, this version brought a new block spacing control in the Quote block.</li>\n</ul>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<a class=\"wp-block-jetpack-podcast-player jetpack-podcast-player__direct-link\" href=\"https://wordpress.org/news/2023/10/episode-64-patterns-in-wordpress/\">https://wordpress.org/news/2023/10/episode-64-patterns-in-wordpress/</a>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Team updates</h2>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/project/2023/11/30/embracing-matrix-for-enhanced-communication/\">WordPress is switching to Matrix</a> in replacement of the Making WordPress Slack. The move stems from the project&#8217;s commitment to implementing a new chat system aligned with WordPress&#8217;s open source values. If you haven&#8217;t already, now is the time to explore Matrix and share your questions.</li>\n\n\n\n<li>With phishing scams on the rise, the WordPress Security team is actively monitoring the current threat and has posted <a href=\"https://wordpress.org/news/2023/12/alert-wordpress-security-team-impersonation-scams/\">an advisory to help you protect your site</a>.</li>\n\n\n\n<li>The Plugin Review team is now <a href=\"https://make.wordpress.org/plugins/2023/12/02/join-the-plugin-review-team/\">reopening applications to join their team</a>. They’re looking for three new members who can improve the state of the plugin review queue and help create a diverse and inclusive team.</li>\n\n\n\n<li>Over the past few months, contributors have been working on <a href=\"https://make.wordpress.org/meta/2023/11/22/redesigning-developer-resources-and-a-call-for-testing/\">redesigning the WordPress.org Developer Resources</a> section.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/11/06/proposal-2024-major-release-timing/\">This post</a> outlines proposed dates for major WordPress releases in 2024.</li>\n\n\n\n<li>The Meta team shared an <a href=\"https://make.wordpress.org/meta/2023/11/22/plugin-directory-preview-button-revisited/\">improved version of the plugin preview feature</a>. This version builds on feedback and allows plugin developers to safely test the preview experience for their plugins in a <a href=\"https://developer.wordpress.org/playground/\">WordPress Playground</a> environment.</li>\n\n\n\n<li>Polyglots and Meta contributors introduced <a href=\"https://make.wordpress.org/meta/2023/11/29/create-tours-for-make-p2s/\">a new plugin called Tour</a>, which enables the creation of tours to guide contributors through a Make WordPress blog.</li>\n\n\n\n<li>Are you looking to broaden your knowledge and improve your WordPress skills? See <a href=\"https://make.wordpress.org/updates/2023/12/01/whats-new-on-learn-wordpress-in-november-2023/\">what’s new on Learn WordPress in November 2023</a>.</li>\n\n\n\n<li>The latest edition of People of WordPress features back-end web developer <a href=\"https://wordpress.org/news/2023/12/people-of-wordpress-artemy-kaydash/\">Artemy Kaydash</a> from Ukraine.</li>\n</ul>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<a class=\"wp-block-jetpack-podcast-player jetpack-podcast-player__direct-link\" href=\"https://wordpress.org/news/2023/10/episode-64-patterns-in-wordpress/\">https://wordpress.org/news/2023/10/episode-64-patterns-in-wordpress/</a>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Requests for feedback &amp; testing</h2>\n\n\n\n<ul>\n<li>The Community team announced the <a href=\"https://make.wordpress.org/community/2023/11/17/announcing-the-2023-annual-meetup-survey/\">2023 Annual Meetup Survey</a>. Both event attendees and organizers are encouraged to provide feedback in this 5-minute survey to help strengthen WordPress meetups in the future.</li>\n\n\n\n<li><a href=\"https://make.wordpress.org/updates/2023/11/23/mobile-team-update-november-22nd/\">Version 23.7</a> of the WordPress mobile app for iOS and Android is ready for testing.</li>\n</ul>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">WordPress events</h2>\n\n\n\n<ul>\n<li><img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f1f9-1f1fc.png\" alt=\"🇹🇼\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> WordCamp Asia opened the <a href=\"https://asia.wordcamp.org/2024/the-third-batch-of-tickets-on-sale-now/\">third round of ticket sales</a> and announced that <a href=\"https://asia.wordcamp.org/2024/announcing-our-first-speaker-matt-mullenweg/\">their first speaker is WordPress co-founder Matt Mullenweg</a>. The conference will be held in Taipei, Taiwan, on March 7-9, 2024.</li>\n\n\n\n<li><img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f1ea-1f1fa.png\" alt=\"🇪🇺\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> WordCamp Europe <a href=\"https://europe.wordcamp.org/2024/call-for-sponsors/\">opened its call for sponsors</a> and <a href=\"https://europe.wordcamp.org/2024/speakers/call-for-speakers/\">speakers</a> for their conference slated to take place in Torino, Italy, on June 13-15, 2024.&nbsp;</li>\n\n\n\n<li>Don’t miss these upcoming WordCamps:\n<ul>\n<li><img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f1ee-1f1f3.png\" alt=\"🇮🇳\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://ahmedabad.wordcamp.org/2023/\">WordCamp Ahmedabad 2023</a>, India on December 9, 2023</li>\n\n\n\n<li><img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f1f5-1f1f0.png\" alt=\"🇵🇰\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://lahore.wordcamp.org/2023/\">WordCamp Lahore 2023</a>, Pakistan on December 9-10, 2023</li>\n</ul>\n</li>\n</ul>\n\n\n\n<div style=\"height:3px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<p><em><strong>Have a story we should include in the next issue of The Month in WordPress? Fill out </strong></em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><strong><em>this quick form</em></strong></a><em><strong> to let us know.</strong></em></p>\n\n\n\n<p><em>Thank you to <a href=\"https://profiles.wordpress.org/bernard0omnisend/\">Bernard Meyer</a> for contributing to this edition of The Month in WordPress.</em></p>\n\n\n\n<div class=\"wp-block-group is-layout-constrained wp-block-group-is-layout-constrained\">\n<h3 class=\"wp-block-heading\">Subscribe to WordPress News</h3>\n\n\n\n<p>Join other subscribers and receive WordPress news directly in your inbox.</p>\n\n\n<div class=\"wp-block-jetpack-subscriptions__supports-newline is-style-split wp-block-jetpack-subscriptions\">\n		<div>\n			<div>\n				<div>\n					<p >\n						<a href=\"https://wordpress.org/news/?post_type=post&#038;p=16575\" style=\"text-decoration: none; font-size: 16px;padding: 15px 23px 15px 23px;margin: 0px; margin-left: 10px;border-radius: 0px;border-width: 1px; background-color: #113AF5; color: #FFFFFF;\">Subscribe</a>\n					</p>\n				</div>\n			</div>\n		</div>\n	</div></div>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16575\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WordPress 6.4.2 Maintenance &amp; Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wordpress.org/news/2023/12/wordpress-6-4-2-maintenance-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Dec 2023 17:03:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16562\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:352:\"WordPress 6.4.2 is now available! This minor release features 7 bug fixes in Core. The fixes include a bug fix for an issue causing stylesheet and theme directories to sometimes return incorrect results. This release also features one security fix. Because this is a security release, it is recommended that you update your sites immediately. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Aaron Jorbin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6255:\"\n<h2 class=\"wp-block-heading\">WordPress 6.4.2 is now available!</h2>\n\n\n\n<p>This minor release features <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=6.4.2&amp;groupdesc=1&amp;group=resolution&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">7 bug fixes</a> in Core. The fixes include a bug fix for an issue causing stylesheet and theme directories to sometimes return incorrect results.</p>\n\n\n\n<p>This release also features one security fix. Because this is a security release, <strong>it is recommended that you update your sites immediately</strong><strong>.</strong></p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/wordpress-6.4.2.zip\">download WordPress 6.4.2 from WordPress.org</a>, or visit your WordPress Dashboard, click “Updates”, and then click “Update Now”. If you have sites that support automatic background updates, the update process will begin automatically.</p>\n\n\n\n<p>WordPress 6.4.2 is a short-cycle release. The next major release will be version 6.5 released in early 2024.</p>\n\n\n\n<p>For more information on this release, please visit the <a href=\"https://wordpress.org/documentation/wordpress-version/version-6-4-2/\">HelpHub site</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Security updates included in this release</h2>\n\n\n\n<p>The security team addressed the following vulnerability in this release.</p>\n\n\n\n<ul>\n<li>A Remote Code Execution vulnerability that is not directly exploitable in core, however the security team feels that there is a potential for high severity when combined with some plugins, especially in multisite installs.</li>\n</ul>\n\n\n\n<p>To help the security team and WordPressers around the world, you are encouraged to <a href=\"https://hackerone.com/wordpress?type=team\">responsibly report vulnerabilities</a>. This allows vulnerabilities to be fixed in future releases.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Thank you to these WordPress contributors</h2>\n\n\n\n<p>This release was led by <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>.</p>\n\n\n\n<p>WordPress 6.4.2 would not have been possible without the contributions of the following people. Their asynchronous coordination to deliver maintenance and security fixes into a stable release is a testament to the power and capability of the WordPress community.</p>\n\n\n\n<p class=\"is-style-wporg-props-long\"><a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/wildworks\">Aki Hamano</a>, <a href=\"https://profiles.wordpress.org/atachibana\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/angelasjin\">Angela Jin</a>, <a href=\"https://profiles.wordpress.org/antonvlasenko\">Anton Vlasenko</a>, <a href=\"https://profiles.wordpress.org/barry\">Barry</a>, <a href=\"https://profiles.wordpress.org/Bernhard%20Reiter\">bernhard-reiter</a>, <a href=\"https://profiles.wordpress.org/icaleb\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/coreyw\">Corey Worrell</a>, <a href=\"https://profiles.wordpress.org/crstauf\">crstauf</a>, <a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/kebbet\">Erik</a>, <a href=\"https://profiles.wordpress.org/gaambo\">Fabian Todt</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/priethor\">Héctor Prieto</a>, <a href=\"https://profiles.wordpress.org/ironprogrammer\">ironprogrammer</a>, <a href=\"https://profiles.wordpress.org/isabel_brison\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/luminuu\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/kharisblank\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/krupalpanchal\">Krupal Panchal</a>, <a href=\"https://profiles.wordpress.org/kdowns\">Kylen Downs</a>, <a href=\"https://profiles.wordpress.org/meta4\">meta4</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/partyfrikadelle\">partyfrikadelle</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/NekoJonez\">Pieterjan Deneys</a>, <a href=\"https://profiles.wordpress.org/rawrly\">rawrly</a>, <a href=\"https://profiles.wordpress.org/rebasaurus\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/hellofromTonya\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a></p>\n\n\n\n<h2 class=\"wp-block-heading\">How to contribute</h2>\n\n\n\n<p>To get involved in WordPress core development, head over to Trac, <a href=\"https://core.trac.wordpress.org/report/6\">pick a ticket</a>, and join the conversation in the <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a>. Need help? Check out the <a href=\"https://make.wordpress.org/core/handbook/tutorials/faq-for-new-contributors/\">Core Contributor Handbook</a>.</p>\n\n\n\n<p>As a final reminder, The WordPress Security Team will never email you requesting that you install a plugin or theme on your site, and will never ask for an administrator username and password. <a href=\"https://wordpress.org/news/2023/12/alert-wordpress-security-team-impersonation-scams/\">Please stay vigilant against phishing attacks</a>.</p>\n\n\n\n<p><em>Thanks to <a href=\"https://profiles.wordpress.org/angelasjin/\">@angelasjin</a> and <a href=\"https://wordpress.slack.com/team/U02SVSW3U\">@desrosj</a> for proofreading.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16562\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Alert: WordPress Security Team Impersonation Scams\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/news/2023/12/alert-wordpress-security-team-impersonation-scams/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Dec 2023 23:13:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16547\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"The WordPress Security Team is aware of multiple ongoing phishing scams impersonating both the “WordPress team” and the “WordPress Security Team“ in an attempt to convince administrators to install a plugin on their website which contains malware. The WordPress Security Team will never email you requesting that you install a plugin or theme on your [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Peter Wilson\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4939:\"\n<p>The WordPress Security Team is aware of multiple ongoing phishing scams impersonating both the “WordPress team” and the “WordPress Security Team“ in an attempt to convince administrators to install a plugin on their website which contains malware.</p>\n\n\n\n<p><strong>The WordPress Security Team will never email you requesting that you install a plugin or theme on your site, and will never ask for an administrator username and password.</strong></p>\n\n\n\n<p>If you receive an unsolicited email claiming to be from WordPress with instructions similar to those described above, please disregard the emails and indicate that the email is a scam to your email provider.</p>\n\n\n\n<p>These emails link to a phishing site that appears to be the WordPress plugin repository on a domain that is not owned by WordPress or an associated entity. Both <a href=\"https://patchstack.com/articles/fake-cve-phishing-campaign-tricks-wordpress-users-to-install-malware/\">Patchstack</a> and <a href=\"https://www.wordfence.com/blog/2023/12/psa-fake-cve-2023-45124-phishing-scam-tricks-users-into-installing-backdoor-plugin/\">Wordfence</a> have written articles that go in to further detail.</p>\n\n\n\n<p>Official emails from the WordPress project will always:</p>\n\n\n\n<ul>\n<li>Come from a <code>@wordpress.org</code> or <code>@wordpress.net</code> domain.</li>\n\n\n\n<li>Should also say “Signed by: wordpress.org” in the email details section.</li>\n</ul>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"450\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/12/email-details-signed-by-wordpressdotorg.png?resize=1024%2C450&#038;ssl=1\" alt=\"Screenshot of email sent by a WordPress.org email account. The details include &quot;mailed-by wordpress.org&quot; and &quot;signed-by wordpress.org&quot;.\" class=\"wp-image-16548\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/12/email-details-signed-by-wordpressdotorg.png?resize=1024%2C450&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/12/email-details-signed-by-wordpressdotorg.png?resize=300%2C132&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/12/email-details-signed-by-wordpressdotorg.png?resize=768%2C337&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/12/email-details-signed-by-wordpressdotorg.png?w=1202&amp;ssl=1 1202w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>The WordPress Security Team will only communicate with WordPress users in the following locations:</p>\n\n\n\n<ul>\n<li>the Making WordPress Secure blog at <a href=\"https://make.wordpress.org/security\">make.wordpress.org/security</a></li>\n\n\n\n<li>the main WordPress News site at <a href=\"https://wordpress.org/news\">wordpress.org/news</a></li>\n</ul>\n\n\n\n<p>The WordPress Plugin team will never communicate directly with a plugin’s users but may email plugin support staff, owners and contributors. These emails will be sent from <a href=\"mailto:plugins@wordpress.org\">plugins@wordpress.org</a> and be signed as indicated above.</p>\n\n\n\n<p>The official WordPress plugin repository is located at <a href=\"https://wordpress.org/plugins\">wordpress.org/plugins</a> with internationalized versions on subdomains, such as <a href=\"https://fr.wordpress.org/plugins\">fr.wordpress.org/plugins</a>, <a href=\"https://en-au.wordpress.org/plugins\">en-au.wordpress.org/plugins</a>, etc. A subdomain may contain a hyphen, however a dot will always appear before wordpress.org.</p>\n\n\n\n<p>A WordPress site’s administrators can also access the plugin repository via the plugins menu in the WordPress dashboard.</p>\n\n\n\n<p>As WordPress is the most used CMS, these types of phishing scams will happen occasionally. Please be vigilant for unexpected emails asking you to install a theme, plugin or linking to a login form.</p>\n\n\n\n<p>The Scamwatch website has some tips for <a href=\"https://www.scamwatch.gov.au/protect-yourself/ways-to-spot-and-avoid-scams\">identifying emails and text messages that are likely to be scams</a>.</p>\n\n\n\n<p>As always, if you believe that you have discovered a security vulnerability in WordPress, please <a href=\"https://wordpress.org/about/security/\">follow the project’s Security policies</a> by privately and responsibly disclosing the issue directly to the WordPress Security team through the project’s official <a href=\"https://hackerone.com/wordpress\">HackerOne page</a>.</p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<p><em>Thank you <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/otto/\">Otto</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a>, and <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> for their collaboration on and review of this post.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16547\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:69:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"People of WordPress: Artemy Kaydash\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2023/12/people-of-wordpress-artemy-kaydash/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Dec 2023 14:28:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Interviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"HeroPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:19:\"People of WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16470\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"The latest People of WordPress features back-end web developer Artemy Kaydash, from Ukraine. \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Abha Thakor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:14009:\"\n<p class=\"has-darker-grey-color has-off-white-2-background-color has-text-color has-background has-link-color wp-elements-9b663d0d5861b05380bcaca160ef01c8\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--60);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--60)\">The&nbsp;<em>People of WordPress</em>&nbsp;series shares inspiring stories of how people’s lives can change for the better through WordPress and its global community of contributors.</p>\n\n\n\n<p>Artemy Kaydash discovered that working with WordPress has opened possibilities greater than he imagined. For him, the &#8220;active, responsive, and enthusiastic community&#8221; makes the software fresh and alive with many ways to experiment and practice adapting it for clients&#8217; needs.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"640\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?resize=1024%2C640&#038;ssl=1\" alt=\"Artemy Kaydash stood in front of water\" class=\"wp-image-16242\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?resize=1024%2C640&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?resize=300%2C188&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?resize=768%2C480&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?resize=1536%2C960&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-featured-img.jpg?w=1920&amp;ssl=1 1920w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Back-end development with WordPress has proven to be a rewarding career choice for Artemy. He believes developers can inspire others to choose the same career path by sharing the opportunities and satisfaction of working with the content management system (CMS).</p>\n\n\n\n<h2 class=\"wp-block-heading\">The adventure of learning WordPress</h2>\n\n\n\n<p>Learning new software can be daunting, but Artemy realized that learning with and from inspiring people makes a real difference: &#8220;I vividly remember my first WordPress experience. I was confused, had many questions, and was desperately trying to understand how to do the most simple things.&#8221;</p>\n\n\n\n<p>Working initially in a small agency in Ukraine, Artemy had basic HTML/CSS skills and had just started learning PHP development. His senior colleagues helped him take his first steps in web development and were patient with his questions.</p>\n\n\n\n<p>The agency director later gave him the responsibility of creating a WordPress website for a friend. He recalls being nervous, as he was not yet confident in his PHP skills. Colleagues reassured Artemy as he worked, and he went on to build a career in international web development.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"640\" height=\"1024\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?resize=640%2C1024&#038;ssl=1\" alt=\"Artemy reflecting on his learning as he looks outside of a window in a cafe\n\" class=\"wp-image-16241\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?resize=640%2C1024&amp;ssl=1 640w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?resize=188%2C300&amp;ssl=1 188w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?resize=768%2C1229&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?resize=960%2C1536&amp;ssl=1 960w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-at-a-cafe.jpg?w=1200&amp;ssl=1 1200w\" sizes=\"(max-width: 640px) 100vw, 640px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Like many others, Artemy found that experimenting with WordPress intrigued him, and he wanted to learn more about it. Looking back, he said: &#8220;The first theme I built was awful. It was composed of my own creative solutions and code snippets I found in searches. It had lots of bugs, but as people say, &#8216;the first pancake is always a bit tricky.\'&#8221;</p>\n\n\n\n<p>Artemy is a great believer in reflective learning, going back and reviewing a piece of development. He said: &#8220;No matter how bad it was, it was my first experience, and I learned a lot about the basic concepts of WordPress. That&#8217;s why I believe that learning by doing is the best way to learn something new.&#8221;</p>\n\n\n\n<p>He added: &#8220;My advice to others is don&#8217;t be afraid of doing something awful when you create something for the first time. It&#8217;s okay. We&#8217;ve all been through that initial phase.&#8221;</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"640\" height=\"1024\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?resize=640%2C1024&#038;ssl=1\" alt=\"Artemy looking across a lake in the winter time\" class=\"wp-image-16245\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?resize=640%2C1024&amp;ssl=1 640w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?resize=188%2C300&amp;ssl=1 188w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?resize=768%2C1229&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?resize=960%2C1536&amp;ssl=1 960w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-winter-lake.jpg?w=1200&amp;ssl=1 1200w\" sizes=\"(max-width: 640px) 100vw, 640px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>&#8220;It&#8217;s nice to have a mentor when you learn something new. Luckily, you don&#8217;t need a person sitting next to you anymore. All of us have got the best mentor possible: the Internet. If you don&#8217;t know how to do something, then search for how other people have done the same thing,&#8221; Artemy said.</p>\n\n\n\n<p>&#8220;No wonder some say that one of the most required skills of every developer is the willingness to learn and to know how to search for information. This is one of the reasons WordPress is one of the best options for beginners. Now there is so much more information and help available to learn, more than there was when I first began.&#8221;</p>\n\n\n\n<p>Artemy feels that the willingness of others to share their experience and problem-solve together is a big strength of the WordPress community and also the reason for its ongoing success: &#8220;When you stumble upon a problem, there&#8217;s a high probability that someone already asked the same question on one of the forums or websites. If you&#8217;re lucky enough, someone already wrote a post about your problem with a great explanation of how to solve it with examples and code snippets.&#8221;</p>\n\n\n\n<h2 class=\"wp-block-heading\">WordPress is for beginners and long-term careers</h2>\n\n\n\n<p>WordPress is not a software with strict limits, and it can be adapted and used in many different ways by beginners and advanced developers.</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>I like to learn something that excites me and makes my brain work. With WordPress, I am able to find interesting and creative solutions.</p>\n</blockquote>\n\n\n\n<p>There are so many new things to learn that Artemy decided to stay in web development, and he sees it as a perfect channel for his creativity and abstract thinking. It may seem very different from his initial education in literature, sociology, and philosophy. Still, he has found those studies sharpened his skills for understanding, communicating, and working with clients on creative solutions to challenges.</p>\n\n\n\n<p>Artemy enjoys the client side of his work and interacting with different studios and agencies. His international work allows him to use WordPress and WooCommerce in many different environments, both large and small, which keeps the software exciting. He said: &#8220;I believe if you want to learn something you have to practice using it a lot. Open source is a big advantage in this.&#8221; Artemy found that the more he experiences various sites and clients, the more flexible and helpful he can be in helping them find the right solution.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Inspired to help others use WordPress</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"639\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?resize=1024%2C639&#038;ssl=1\" alt=\"Artemy standing on the pier\" class=\"wp-image-16243\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?resize=1024%2C639&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?resize=300%2C187&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?resize=768%2C480&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?resize=1536%2C959&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2023/10/artemy-from-pier.jpg?w=1920&amp;ssl=1 1920w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>A willingness to share and grow skills together is what open source environments champion. This collaborative environment inspired Artemy to focus on using WordPress professionally and to share what he learned. &#8220;There is a lot of free code and snippets available for anyone to use. I have been grateful to all of the people who have written answers on sites like Stack Overflow, written blog posts, created free plugins, and other helpful materials. It made me want to help others when I was able to.&#8221;</p>\n\n\n\n<p>In August 2021, Artemy began blogging about using WordPress:&nbsp;&#8220;I like to think that this way I am repaying my learning debt for all the content I have consumed. It makes me happy to see that people really read my posts, and it helps them solve their WordPress problems. So, today, when I face a problem and can&#8217;t find the solution, I think it might be a great idea for a new post!&#8221;</p>\n\n\n\n<p>He also likes to keep up with how other people use WordPress by visiting Stack Overflow, WordPress Facebook groups, and other communities where people ask questions almost daily. He helps where he can in those channels or gains inspiration for new content. He believes&nbsp;<a href=\"https://learn.wordpress.org/\" target=\"_blank\" rel=\"noreferrer noopener\">Learn.WordPress.org</a>&nbsp;and the&nbsp;<a href=\"https://developer.wordpress.org/news/\" target=\"_blank\" rel=\"noreferrer noopener\">Developer Blog</a>&nbsp;are valuable resources for beginners and more advanced developers too. As those resources grow, they will increasingly become a place where others can share their development knowledge and use cases.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Every community is a two-way street</h2>\n\n\n\n<p>Artemy encourages everyone to become a part of the WordPress community. “There are a lot of opportunities for everyone,” he said. “You can help with the translation of your favorite plugins or themes. You can create your own plugin or become a contributor to an already existing open source plugin. You can write tutorials. You can write reviews helping other people to choose the best option for them. You can help people on support forums.”</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>Every contribution, big or small, makes WordPress better. It is a great experience to be part of it.</p>\n</blockquote>\n\n\n\n<h2 class=\"wp-block-heading\">Share the stories</h2>\n\n\n\n<p>Help share these open source contributor stories and continue to grow the community.&nbsp;Meet more WordPressers in the&nbsp;<a href=\"https://wordpress.org/news/category/newsletter/interviews/\">People of WordPress series</a>.</p>\n\n\n\n<p>To discover more about how to use WordPress, and start your own story, visit&nbsp;<a href=\"https://learn.wordpress.org/\">Learn.WordPress.org</a>.</p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<p><em>Thanks to <a href=\"https://profiles.wordpress.org/kayart/\" target=\"_blank\" rel=\"noreferrer noopener\">Artemy Kaydash</a> for sharing about his adventures in WordPress, and to <a href=\"https://profiles.wordpress.org/webcommsat/\" target=\"_blank\" rel=\"noreferrer noopener\">Abha Thakor</a>, <a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\" target=\"_blank\" rel=\"noreferrer noopener\">Nalini Thakor</a>, <a href=\"https://profiles.wordpress.org/meher/\" target=\"_blank\" rel=\"noreferrer noopener\">Meher Bala</a>, <a href=\"https://profiles.wordpress.org/marks99/\" target=\"_blank\" rel=\"noreferrer noopener\">Mark Smallman</a>, <a href=\"https://profiles.wordpress.org/eidolonnight/\" target=\"_blank\" rel=\"noreferrer noopener\">Nicholas Garofalo</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\" target=\"_blank\" rel=\"noreferrer noopener\">Chloe Bringmann</a>, and <a href=\"https://profiles.wordpress.org/marybaum/\" target=\"_blank\" rel=\"noreferrer noopener\">Mary Baum</a> for interviews, editorial, images, and reviews. </em></p>\n\n\n\n<div class=\"wp-block-media-text is-stacked-on-mobile is-vertically-aligned-center\" style=\"grid-template-columns:29% auto\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"180\" height=\"135\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?resize=180%2C135&#038;ssl=1\" alt=\"HeroPress logo\" class=\"wp-image-8409 size-full\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<p class=\"has-small-font-size\"><em>This People of WordPress feature is inspired by an essay originally published on </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>, a community initiative created by Topher DeRosia. It highlights people in the WordPress community who have overcome barriers and whose stories might otherwise go unheard. </em>#HeroPress </p>\n</div></div>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16470\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:61:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WP Briefing: Episode 67: Openverse &amp; Photo Directory Rewind\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2023/11/openverse-photo-directory-rewind/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Nov 2023 12:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=16454\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:265:\"WordPress Executive Director, Josepha Haden Chomphosy, returns to a recent episode of the WordPress Briefing, which discussed two resources for openly licensed media in the WordPress project– Openverse and Photo Directory– and how they differ from one another! \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:50:\"https://wordpress.org/news/files/2023/11/WP067.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brett McSherry\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11659:\"\n<p>WordPress Executive Director, Josepha Haden Chomphosy, returns to a recent episode of the WordPress Briefing, which discussed two resources for openly licensed media in the WordPress project– Openverse and Photo Directory– and how they differ from one another! </p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to&nbsp;<a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@WordPress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2 class=\"wp-block-heading\">Credits</h2>\n\n\n\n<p>Host: <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a><br>Editor: <a href=\"https://profiles.wordpress.org/dustinhartzler/\">Dustin Hartzler</a><br>Logo: <a href=\"https://profiles.wordpress.org/javiarce/\">Javier Arce</a><br>Production: <a href=\"https://profiles.wordpress.org/bjmcsherry/\">Brett McSherry</a><br>Song: Fearless First by Kevin MacLeod</p>\n\n\n\n<h2 class=\"wp-block-heading\">Show Notes</h2>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/photos/\">Photo Directory Make Page</a></li>\n\n\n\n<li><a href=\"https://wordpress.org/photos/submit/\">Submit a Photo to the Photo Directory</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/openverse/\">Openverse Make Page</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/issues/44496\">Openverse Call for Contributions: Block Editor Integration</a> (now closed)</li>\n\n\n\n<li><strong>Small List of Big Things</strong>\n<ul>\n<li><a href=\"https://wordpress.org/news/2023/11/state-of-the-word-2023-madrid-spain/\" target=\"_blank\" rel=\"noreferrer noopener\">State of the Word</a>&nbsp;&#8211; The countdown is on for this year&#8217;s State of the Word! If you missed the initial announcement a few weeks ago, you&#8217;ll want to mark your calendars for December 11, 2023. State of the Word will include a Q&amp;A session. If you want to participate, you can send your question to&nbsp;<a href=\"mailto:ask-matt@wordcamp.org\" target=\"_blank\" rel=\"noreferrer noopener\">ask-matt@wordcamp.org</a>&nbsp;or ask during the event via the Q&amp;A app Slido. A QR code for your submission will be provided during the event live stream.</li>\n\n\n\n<li>WordCamp Asia has <a href=\"https://asia.wordcamp.org/2024/call-for-sponsors-extended-to-november-30th/\" target=\"_blank\" rel=\"noreferrer noopener\">extended their call for sponsors</a>, slated to take place in Taipei, Taiwan, March 7-9, 2024. The new deadline has been extended to November 30, 2023.</li>\n\n\n\n<li>The Documentation Team created a new GitHub repo for end-user documentation and its translations to all locales. More info about this can be found&nbsp;<a href=\"https://make.wordpress.org/project/2023/09/06/documentation-translation-localization/\" target=\"_blank\" rel=\"noreferrer noopener\">here</a>.</li>\n</ul>\n</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Transcripts</h2>\n\n\n\n<span id=\"more-16454\"></span>\n\n\n\n<p>[00:00:00] <strong>Josepha:</strong> Hello everyone. And welcome to the WordPress Briefing. The podcast where you can catch quick explanations of the ideas behind the WordPress open source project, some insight into the community that supports it and get a small list of big things coming up in the next two weeks.</p>\n\n\n\n<p>I&#8217;m your host, Josepha Haden Chomphosy. Here we go.</p>\n\n\n\n<p>[00:00:28] (Intro music)</p>\n\n\n\n<p>[00:00:40] <strong>Josepha:</strong> Today, we&#8217;re going to take a listen to last year&#8217;s episode about Openverse and the Photo Directory. A lot has changed in that project, well in, in both of those projects since then. For instance, the Photo Directory just passed a 10,000 photo milestone. And Openverse, in the past year, got their own URL and have been hard at work strengthening the reliability of their APIs.</p>\n\n\n\n<p>[00:01:03] <strong>Josepha:</strong> But for some folks, it might still be a little unclear just what the difference is between these two projects. So let&#8217;s take a listen, and don&#8217;t forget to catch the updated small list of big things at the end of the episode.&nbsp;</p>\n\n\n\n<p>[00:01:13] (Music interlude)</p>\n\n\n\n<p>[00:01:21] <strong>Josepha:</strong> About 18 months ago, the Openverse project became part of the WordPress open source project, and at roughly the same time, we also welcomed in the Photo Directory.</p>\n\n\n\n<p>Since that time, we&#8217;ve seen growth of teams supporting both of these initiatives. But if you&#8217;re not involved in the day-to-day, it can be hard to know how those two things fit together or if they fit together at all.</p>\n\n\n\n<p>[00:01:41] <strong>Josepha:</strong> Today, let&#8217;s take a brief tour of those two projects and why they came to be.&nbsp;In my timeline, work on the Photo Directory started before the work on Openverse, so that&#8217;s where we&#8217;ll start.</p>\n\n\n\n<p>For as long as I can remember, the WordPress community has raised the need for WordPress-first ways to have and host GPL-compatible photos for use in themes, site builds, and marketing efforts as a whole. As recently as 2016, that was still coming up as a question at various flagship events and among the career photographers that contribute their time to WordPress.</p>\n\n\n\n<p>[00:02:13] <strong>Josepha:</strong> So, in 2017 and 2018, as attention started to turn toward rebuilding the CMS using blocks, it dropped down the list of priority items. But it never really went away as a thing that people were hoping we could do for the project as a whole. So in 2019, it was becoming clear that having open source-first tools of all varieties for people whose businesses were built on our software would help broaden the availability of the open source freedoms we believe in.</p>\n\n\n\n<p>This began the work on the Photo Directory with the intention of providing a GPL-friendly, community-driven repository of images. It has since launched, and we have photos in it now. We have a whole team around it. It&#8217;s wonderful. But that is how that all kind of came to be.&nbsp;</p>\n\n\n\n<p>[00:02:58] <strong>Josepha:</strong> Openverse, on the other hand, was launched as CC Search in 2019 with the laudable mandate to increase the discoverability and accessibility of open access media.</p>\n\n\n\n<p>Late in 2020, while work on the Photo Directory was underway, Matt shared with me that the team was looking for a new project home. When I first met with them, they shared an overview of the product, which they shorthanded as an open source search engine that searches openly licensed images. We were working on a repo of openly licensed images, so clearly, this was all written in the stars. And so you might be asking yourself at this point, great, how does it work together?</p>\n\n\n\n<p>I think for most of us, the timeline there kind of covers the question of what is the difference between these two things.&nbsp;</p>\n\n\n\n<p>But because I never know which of you will want to strike up a conversation about open source on an elevator, I&#8217;ve also got the elevator pitch version as well.&nbsp;</p>\n\n\n\n<p>[00:03:52] <strong>Josepha:</strong> Openverse is an open source search engine that searches, indexes, and aggregates copy left media from across the web using sources such as WordPress&#8217;s Photo Directory, Flickr&#8217;s CC Tagged Media, and Wikimedia, to name just a few.&nbsp;</p>\n\n\n\n<p>Another key difference between the Photo Directory and Openverse is that in order to contribute to the Photo Directory, now that it&#8217;s all built, that&#8217;s mostly done by submitting photos or reviewing photos. So, you don&#8217;t really need to be a developer to join in.&nbsp;</p>\n\n\n\n<p>Openverse not only is a developer-centric contribution opportunity, but it also uses a different tech stack than WordPress as a whole. So, it&#8217;s a good place for folks to go if they&#8217;re looking to broaden their horizons.</p>\n\n\n\n<p>[00:04:37] <strong>Josepha:</strong> So that&#8217;s your elevator pitch of what is Openverse and how does it use the Photo Directory.&nbsp;</p>\n\n\n\n<p>You have a couple of ways that you can get involved with these two projects. For the Photo Directory, as I mentioned at the start, you can always contribute photos, and they could always use more photo contributions.</p>\n\n\n\n<p>I&#8217;ll include a link to the submission guidelines in the show notes below, and as I mentioned, it is a no-code way to give back to the WordPress project. So, no code is required, no development environments, no testing skills. The Photo Directory team also could always use more contributors to help with the moderating of photo submissions.</p>\n\n\n\n<p>And so I&#8217;ll link to their making WordPress page in the show notes as well so that you can get started there.&nbsp;</p>\n\n\n\n<p>[00:05:22] <strong>Josepha:</strong> And as I mentioned before, Openverse is an aggregator, so it doesn&#8217;t host any media itself, but it is always accepting suggestions for new GPL-compatible media providers. I&#8217;ll link the area where you can leave suggestions in the show notes as well.</p>\n\n\n\n<p>And if you are more code-inclined, there&#8217;s an open issue for adding Openverse browsing to the block editor right now.&nbsp;&nbsp;</p>\n\n\n\n<p>So I&#8217;ll link that issue in the show notes in case you thought to yourself, gosh, that sounds like my most favorite thing to do. That is where you can go.&nbsp;</p>\n\n\n\n<p>[00:05:53] (Music interlude)&nbsp;</p>\n\n\n\n<p>[00:06:01] <strong>Josepha:</strong> And that brings us now to our November 2023 small list of big things.</p>\n\n\n\n<p>[00:06:07] <strong>Josepha:</strong> The first thing that&#8217;s on the small list of big things this week is that the countdown is on for this year&#8217;s State of the Word. If you missed the initial announcement a few weeks ago, you&#8217;ll want to mark your calendars for December 11th, 2023. State of the Word will include a Q&amp;A session, and if you want to participate, you can send your question to ask-matt@wordcamp.org.&nbsp;Or, ask during the event via the Q&amp;A app Slido. A QR code for your submission will be provided during the event live stream, so if you&#8217;re choosing that option, don&#8217;t worry; there&#8217;s not anything to do right this second.&nbsp;</p>\n\n\n\n<p>[00:06:40] <strong>Josepha:</strong> The second thing on the list is that WordCamp Asia has extended their call for sponsors for the conference that is slated to take place in Taipei, Taiwan, March 7th through 9th, 2024. The new deadline has been extended to November 30th, 2023, and so if you have been on the fence about whether to sponsor that event or not, for one, please do sponsor it, and for two, you still have a little bit of time to get over there and show your support.</p>\n\n\n\n<p>[00:07:05] <strong>Josepha:</strong> And then the last thing on the small list of big things is that the documentation team now has a new GitHub repo created for end-user documentation and its translations into all locales. For more information about this, come check out the show notes. I will have a link right there for you. And that, my friends, is your small list of big things.</p>\n\n\n\n<p>[00:07:26] <strong>Josepha:</strong> Don&#8217;t forget to follow us on your favorite podcast app or subscribe directly on WordPress.org/news. You&#8217;ll get a friendly reminder whenever there&#8217;s a new episode. If you liked what you heard today, share it with a fellow WordPresser. Or, if you have questions about what you heard, you can share those with me at wpbriefing@WordPress.org. I&#8217;m your host, Josepha Haden Chomphosy. Thanks for tuning in today for the WordPress Briefing, and I&#8217;ll see you again in a couple of weeks.&nbsp;</p>\n\n\n\n<p>[00:07:51] (Music outro)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16454\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"State of the Word 2023 – Madrid, Spain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2023/11/state-of-the-word-2023-madrid-spain/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Nov 2023 20:03:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"sotw\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"state of the word\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16429\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"The countdown is on for this year\'s State of the Word! If you missed the initial announcement a few weeks ago, mark your calendars for December 11, 2023.\n\nState of the Word is the annual keynote in which WordPress co-founder Matt Mullenweg celebrates the progress of the open source project and offers a glimpse into its future.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Dan Soschin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4321:\"\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"683\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1024%2C683&#038;ssl=1\" alt=\"State of the Word\" class=\"wp-image-16438\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1024%2C683&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=1536%2C1024&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2023/11/SOTW-Blue.png?resize=2048%2C1365&amp;ssl=1 2048w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>The countdown is on for this year&#8217;s State of the Word! If you missed the initial announcement a few weeks ago, you&#8217;ll want to mark your calendars for December 11, 2023.</p>\n\n\n\n<p>State of the Word is the annual keynote in which WordPress co-founder <a href=\"https://ma.tt/\">Matt Mullenweg</a> celebrates the progress of the open source project and offers a glimpse into its future.</p>\n\n\n\n<p>For the first time, State of the Word ventures beyond North America, bringing the WordPress community to a new and vibrant city that plays a vital role in the WordPress project &#8212; Madrid, Spain! The event will be live-streamed to WordPress enthusiasts and newcomers around the globe via the <a href=\"https://youtube.com/wordpress\">WordPress YouTube channel</a>.</p>\n\n\n\n<p>Please visit the <a href=\"https://wordpress.org/state-of-the-word\">event website</a> for more event details and live-streaming information.</p>\n\n\n\n<p><strong>What:</strong> State of the Word 2023<br><strong>When: </strong><a href=\"https://calendar.google.com/calendar/u/0/r/eventedit?text=State+of+the+Word+2023&amp;dates=20231211T150000Z/20231211T190000Z&amp;details=State+of+the+Word+is+the+annual+keynote+address+delivered+by+the+WordPress+project%E2%80%99s+co-founder%2C+Matt+Mullenweg.+Every+year%2C+Matt+shares+reflections+on+the+project%E2%80%99s+progress+and+the+future+of+open+source.+Expect+this+and+more+in+this+year%E2%80%99s+edition.%0A%0AState+of+the+Word+will+be+live+streamed+from+Madrid,+Spain,+and+is+free+for+all+to+watch+or+attend+in+person+with+a+ticket.%0A%0Ahttps://wordpress.org/state-of-the-word/\">December 11, 2023, 15:00 UTC</a> (Start of live stream)<br><strong>Where: </strong><a href=\"https://www.palacioneptuno.com/\">Palacio Neptuno</a>, Madrid, Spain<br><strong>Streaming: </strong><a href=\"https://youtube.com/wordpress\">Watch the live stream</a> on the WordPress YouTube channel.<br><strong>Tickets: </strong><a href=\"https://wordcampcentral.survey.fm/request-a-seat-sotw-2023-spain\">Request a ticket to attend in person</a>.<strong><br></strong><em>Please note that the venue’s capacity is limited; therefore, not all ticket requests will be granted. </em><br><strong>Meetups: </strong>The community will support several local watch parties globally, both in<br>person and online. <a href=\"https://wordpress.org/state-of-the-word\">Find one near you or organize one</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Have a question for Matt?</h2>\n\n\n\n<p>State of the Word will include a Q&amp;A session. If you want to participate, you can send your question to ask-matt@wordcamp.org or ask during the event via the Q&amp;A app Slido. A QR code for your submission will be provided during the event live stream.</p>\n\n\n\n<p>Given the volume of questions usually submitted, only some will be answered live, while others will be covered in a follow-up post published after the event on <a href=\"https://make.wordpress.org/project\">make.wordpress.org/project</a>.</p>\n\n\n\n<p>Is this your first State of the Word? Check out <a href=\"https://wordpress.tv/tag/state-of-the-word/\">prior events on WordPress.tv</a> for an introduction to the format.</p>\n\n\n\n<p>See you in person and online on December 11!</p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<p><em>Thank you to <a href=\"https://profiles.wordpress.org/rmartinezduque/\">Reyes Martínez</a> and <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a> for reviewing this post.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16429\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:68:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n										\n					\n		\n		\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Introducing Twenty Twenty-Four\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/news/2023/11/introducing-twenty-twenty-four/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Nov 2023 18:29:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:6:\"Design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:18:\"Twenty Twenty-Four\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16394\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"Meet Twenty Twenty-Four, the most versatile default theme yet—bundled with WordPress 6.4 and ready to make it uniquely yours.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:59:\"https://wordpress.org/news/files/2023/11/tt4-i9-small-1.mp4\";s:6:\"length\";s:7:\"6747134\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:82:\"https://wordpress.org/news/files/2023/11/tt4-howto-replace-template_compressed.mp4\";s:6:\"length\";s:8:\"12815358\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Maggie Cabrera\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7224:\"\n<p>When it comes to designing a website, one size doesn&#8217;t fit all. We understand that every WordPress user has unique needs and goals, whether you&#8217;re an aspiring entrepreneur, a passionate photographer, a prolific writer, or a bit of them all. That&#8217;s why we are thrilled to introduce <a href=\"https://wordpress.org/themes/twentytwentyfour/\"><strong>Twenty Twenty-Four</strong></a>, the most versatile default theme yet—bundled with <a href=\"https://wordpress.org/download/releases/6-4/\">WordPress 6.4</a> and ready to make it uniquely yours.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls poster=\"https://wordpress.org/news/files/2023/11/TT4-square.jpg\" src=\"https://wordpress.org/news/files/2023/11/tt4-i9-small-1.mp4\"></video></figure>\n\n\n\n<h2 class=\"wp-block-heading\">A theme for every style</h2>\n\n\n\n<p>Unlike past default themes, Twenty Twenty-Four breaks away from the tradition of focusing on a specific topic or style. Instead, this theme has been thoughtfully crafted to cater to any type of website, regardless of its focus. The theme explores <strong>three different use cases</strong>: one designed for entrepreneurs and small businesses, another for photographers and artists, and a third tailored for writers and bloggers. Thanks to its multi-faceted nature and adaptability, Twenty Twenty-Four emerges as the perfect fit for any of your projects.</p>\n\n\n\n<p>As you dive into its templates and patterns, you will notice how the new Site Editor functionality opens up different pathways for building your site seamlessly.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Patterns at every step</h2>\n\n\n\n<p>Whether you&#8217;re looking to craft an About page, showcase your work, handle RSVPs, or design captivating landing pages, Twenty Twenty-Four has got you covered.<strong> </strong>Choose from an extensive collection of <a href=\"https://2024.wordpress.net/index.php/patterns/\"><strong>over 35 beautiful patterns</strong></a> to customize and suit your needs.</p>\n\n\n\n<p>For the first time, this theme features full-page patterns for templates like homepage, archive, search, single pages, and posts. Some are exclusively available during the template-switching and creation process, ensuring you have the right options when you need them.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2023/11/tt4-howto-replace-template_compressed.mp4\"></video></figure>\n\n\n\n<p>Moreover, you can take advantage of a variety of patterns for page sections, such as FAQs, testimonials, or pricing, to meet your site&#8217;s most specific requirements.</p>\n\n\n\n<p>With this diverse pattern library, Twenty Twenty-Four offers a flexible canvas to quickly assemble pages without having to start from scratch—saving you time and energy in the creation process. Just let your creativity flow and explore the possibilities!</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"682\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?resize=1024%2C682&#038;ssl=1\" alt=\"Screenshots of Twenty Twenty-Four patterns.\" class=\"wp-image-16397\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?resize=1024%2C682&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?resize=1536%2C1023&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2023/11/TT4-Post-Image-1.jpg?w=1600&amp;ssl=1 1600w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2 class=\"wp-block-heading\">Site editing in its finest form</h2>\n\n\n\n<p>Twenty Twenty-Four ushers in a new era of block themes by bringing together the latest WordPress site editing capabilities. Discover newer design tools such as background image support in Group blocks and vertical text, providing an intuitive and efficient way to create compelling, interactive content.</p>\n\n\n\n<p>Find image placeholders with predefined aspect ratio settings within patterns, allowing you to drop images that perfectly fill the space. To go one step further, make your visuals interactive by enabling lightboxes. Ideal for showcasing galleries or portfolio images, this feature allows your visitors to expand and engage with them in full-screen mode. Activate it globally for all images throughout your site or for specific ones.</p>\n\n\n\n<p>For a smoother browsing experience on your site, you can disable the &#8220;Force page reload&#8221; setting in the Query Loop block. This allows the necessary content to be loaded dynamically when switching between different pages without needing a full-page refresh.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Elegance with purpose</h2>\n\n\n\n<p>Twenty Twenty-Four goes beyond versatility with a beautiful aesthetic inspired by contemporary design trends, giving your website a sleek and modern look. Key design elements include:</p>\n\n\n\n<ul>\n<li><strong>Cardo font for headlines</strong>: The Cardo font adds a touch of elegance to your site, creating a sophisticated visual experience.</li>\n\n\n\n<li><strong>Sans-serif system font for paragraphs</strong>: The sans-serif font ensures that your texts are cleaner and easier to read, enhancing overall readability.</li>\n\n\n\n<li><strong>Eight style variations</strong>: Twenty Twenty-Four presents a light color palette for a fresh and inviting appearance out-of-the-box, but you can customize it with seven additional style variations. Each includes fonts and colors carefully curated to work beautifully alongside the patterns and templates.</li>\n\n\n\n<li><strong>Sans-serif variations</strong>: Besides the default styles, the theme offers two additional sans-serif variations, providing more choices for your site&#8217;s typography.</li>\n</ul>\n\n\n\n<p>Along with its design, Twenty Twenty-Four has been meticulously optimized for performance. This ensures that your website not only looks great but also delivers a fast and efficient user experience.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://playground.wordpress.net/?theme=twentytwentyfour\">Explore Twenty Twenty-Four now</a></div>\n</div>\n\n\n\n<p>More information can be found in the following links:</p>\n\n\n\n<ul>\n<li><a href=\"https://wordpress.org/themes/twentytwentyfour/\">Download Twenty Twenty-Four</a></li>\n\n\n\n<li><a href=\"https://wordpress.org/documentation/article/twenty-twenty-four/\">Twenty Twenty-Four Documentation</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/08/24/introducing-twenty-twenty-four/\">Twenty Twenty-Four Kick Off</a></li>\n</ul>\n\n\n\n<p><em>The Twenty Twenty-Four theme was designed by </em><a href=\"https://profiles.wordpress.org/beafialho/\"><em>Beatriz Fialho</em></a><em> and made possible thanks to the passion and tireless work of <a href=\"https://github.com/WordPress/twentytwentyfour/blob/trunk/CONTRIBUTORS.md\">more than 120 contributors</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16394\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:12:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 26 Dec 2023 20:20:22 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:25:\"strict-transport-security\";s:12:\"max-age=3600\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 26 Dec 2023 12:00:00 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:7:\"alt-svc\";s:19:\"h3=\":443\"; ma=86400\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20211220193300\";}','no');
INSERT INTO `wp_options` VALUES (695,'_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca','1703665223','no');
INSERT INTO `wp_options` VALUES (696,'_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca','1703622023','no');
INSERT INTO `wp_options` VALUES (726,'_site_transient_timeout_theme_roots','1703693146','no');
INSERT INTO `wp_options` VALUES (727,'_site_transient_theme_roots','a:2:{s:9:\"reinbuilt\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (729,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703691347;s:8:\"response\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231128\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:36:\"contact-form-7-honeypot/honeypot.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/contact-form-7-honeypot\";s:4:\"slug\";s:23:\"contact-form-7-honeypot\";s:6:\"plugin\";s:36:\"contact-form-7-honeypot/honeypot.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/contact-form-7-honeypot/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/contact-form-7-honeypot.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-256x256.png?rev=2487322\";s:2:\"1x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-128x128.png?rev=2487322\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-1544x500.jpg?rev=2487322\";s:2:\"1x\";s:78:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-772x250.jpg?rev=2487322\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:24:\"simple-history/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/simple-history\";s:4:\"slug\";s:14:\"simple-history\";s:6:\"plugin\";s:24:\"simple-history/index.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-history/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/simple-history.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/simple-history/assets/icon-256x256.png?rev=3004846\";s:2:\"1x\";s:67:\"https://ps.w.org/simple-history/assets/icon-128x128.png?rev=3004846\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/simple-history/assets/banner-1544x500.png?rev=2661050\";s:2:\"1x\";s:69:\"https://ps.w.org/simple-history/assets/banner-772x250.png?rev=2661050\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:29:\"widget-logic/widget_logic.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/widget-logic\";s:4:\"slug\";s:12:\"widget-logic\";s:6:\"plugin\";s:29:\"widget-logic/widget_logic.php\";s:11:\"new_version\";s:6:\"5.10.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/widget-logic/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/widget-logic.5.10.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-256x256.png?rev=1619621\";s:2:\"1x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-128x128.png?rev=1619621\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/widget-logic/assets/banner-1544x500.jpg?rev=1619643\";s:2:\"1x\";s:67:\"https://ps.w.org/widget-logic/assets/banner-772x250.jpg?rev=1619643\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/widget-logic/assets/banner-1544x500-rtl.jpg?rev=1619621\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-logic/assets/banner-772x250-rtl.jpg?rev=1619621\";}s:8:\"requires\";s:3:\"3.0\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.11.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}}s:7:\"checked\";a:10:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.5\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:36:\"contact-form-7-honeypot/honeypot.php\";s:5:\"2.1.1\";s:24:\"simple-history/index.php\";s:5:\"4.8.0\";s:27:\"svg-support/svg-support.php\";s:5:\"2.5.5\";s:29:\"widget-logic/widget_logic.php\";s:6:\"5.10.4\";s:23:\"wordfence/wordfence.php\";s:6:\"7.11.0\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.5.1\";}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_postmeta` VALUES (28,2,'_edit_lock','1703624743:1');
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
INSERT INTO `wp_postmeta` VALUES (107,28,'intro','');
INSERT INTO `wp_postmeta` VALUES (108,28,'_intro','field_6350c7d75d6b1');
INSERT INTO `wp_postmeta` VALUES (109,28,'copy','');
INSERT INTO `wp_postmeta` VALUES (110,28,'_copy','field_6350c7dc5d6b2');
INSERT INTO `wp_postmeta` VALUES (111,2,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (112,2,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (113,30,'_edit_lock','1703624054:1');
INSERT INTO `wp_postmeta` VALUES (114,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,33,'_edit_lock','1703702597:1');
INSERT INTO `wp_postmeta` VALUES (116,41,'footnotes','');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-12-12 02:14:56','2023-12-12 02:14:56','',0,'http://localhost:10020/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','','Contact','','publish','closed','open','','contact','','','2023-12-26 20:20:33','2023-12-26 20:20:33','',0,'http://localhost:10020/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-12-12 02:14:56','2023-12-12 02:14:56','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10020.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-12-12 02:14:56','2023-12-12 02:14:56','',0,'http://localhost:10020/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-12-12 02:35:02','2023-12-12 02:35:02','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-12-12 02:35:02','2023-12-12 02:35:02','',0,'http://localhost:10020/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-12-12 02:48:54','2023-12-12 02:48:54','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amplify.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amplify.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2023-12-12 02:48:54','2023-12-12 02:48:54','',0,'http://localhost:10020/?post_type=wpcf7_contact_form&p=6',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-12-12 03:11:16','2023-12-12 03:11:16','','About','','publish','closed','closed','','about','','','2023-12-12 21:20:47','2023-12-12 21:20:47','',0,'http://localhost:10020/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-12-12 03:11:16','2023-12-12 03:11:16','<?php\n/**\n * Single template\n *\n * @package amplify\n * @author Tyler Means Business LLC\n */\nget_header();?>\n\n<div id=\"404-container\" class=\"container\">\n\n	<div id=\"single-post\">\n		<div class=\"single-post_container\">\n\n			<h1>404 - Page Not Found</h1>\n		\n			<div class=\"single-post_content\">	\n				<h3>Pages</h3>\n				<ul><?php wp_list_pages(\"title_li=\" ); ?></ul>\n				<h3>Posts</h3>\n				<ul><?php wp_get_archives(\'type=postbypost\'); ?></ul>\n			</div>\n		</div>\n	</div>\n</div>\n\n<?php get_footer(); ?>','','','inherit','closed','closed','','7-revision-v1','','','2023-12-12 03:11:16','2023-12-12 03:11:16','',7,'http://localhost:10020/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-12-12 20:31:15','2023-12-12 20:31:15','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-12 20:31:15\"\n    }\n}','','','trash','closed','closed','','44ffcea8-89f4-4015-b5b8-b2b74150d084','','','2023-12-12 20:31:15','2023-12-12 20:31:15','',0,'http://localhost:10020/44ffcea8-89f4-4015-b5b8-b2b74150d084/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-12-12 20:56:39','2023-12-12 20:56:39','','About','','inherit','closed','closed','','7-revision-v1','','','2023-12-12 20:56:39','2023-12-12 20:56:39','',7,'http://localhost:10020/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-12-12 20:59:33','2023-12-12 20:59:33','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10020/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Contact','','inherit','closed','closed','','2-revision-v1','','','2023-12-12 20:59:33','2023-12-12 20:59:33','',2,'http://localhost:10020/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-12-12 21:00:46','2023-12-12 21:00:46','','Partners','','publish','closed','closed','','partners','','','2023-12-12 21:00:46','2023-12-12 21:00:46','',0,'http://localhost:10020/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-12-12 21:00:46','2023-12-12 21:00:46','','Partners','','inherit','closed','closed','','13-revision-v1','','','2023-12-12 21:00:46','2023-12-12 21:00:46','',13,'http://localhost:10020/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-12-12 21:02:12','2023-12-12 21:02:12','','Products','','publish','closed','closed','','products','','','2023-12-12 21:02:12','2023-12-12 21:02:12','',0,'http://localhost:10020/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-12-12 21:02:12','2023-12-12 21:02:12','','Products','','inherit','closed','closed','','15-revision-v1','','','2023-12-12 21:02:12','2023-12-12 21:02:12','',15,'http://localhost:10020/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-12-12 21:03:00','2023-12-12 21:03:00','','Results','','publish','closed','closed','','results','','','2023-12-12 21:03:00','2023-12-12 21:03:00','',0,'http://localhost:10020/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-12-12 21:03:00','2023-12-12 21:03:00','','Results','','inherit','closed','closed','','17-revision-v1','','','2023-12-12 21:03:00','2023-12-12 21:03:00','',17,'http://localhost:10020/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-12-12 21:21:39','2023-12-12 21:21:39','','Our Team','','publish','closed','closed','','our-team','','','2023-12-12 21:21:39','2023-12-12 21:21:39','',0,'http://localhost:10020/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-12-12 21:21:39','2023-12-12 21:21:39','','Our Team','','inherit','closed','closed','','19-revision-v1','','','2023-12-12 21:21:39','2023-12-12 21:21:39','',19,'http://localhost:10020/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-12-12 21:22:49','2023-12-12 21:22:49','','Home','','trash','closed','closed','','home__trashed','','','2023-12-12 21:24:25','2023-12-12 21:24:25','',0,'http://localhost:10020/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-12-12 21:22:49','2023-12-12 21:22:49','','Home','','inherit','closed','closed','','21-revision-v1','','','2023-12-12 21:22:49','2023-12-12 21:22:49','',21,'http://localhost:10020/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-12-20 14:24:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-12-20 14:24:15','0000-00-00 00:00:00','',0,'http://localhost:10020/?p=24',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-12-22 02:12:21','2023-12-22 02:12:21','','LOGO','','inherit','open','closed','','logo','','','2023-12-22 02:12:21','2023-12-22 02:12:21','',0,'http://localhost:10020/wp-content/uploads/2023/12/LOGO.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-12-26 20:20:32','2023-12-26 20:20:32','','Contact','','inherit','closed','closed','','2-revision-v1','','','2023-12-26 20:20:32','2023-12-26 20:20:32','',2,'http://localhost:10020/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-12-26 20:22:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-12-26 20:22:17','0000-00-00 00:00:00','',0,'http://localhost:10020/?post_type=acf-field-group&p=29',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-12-26 20:22:27','2023-12-26 20:22:27','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"modified\";i:1669669585;s:5:\"local\";s:4:\"json\";}','Contact Page','contact-page','publish','closed','closed','','group_6350c7cda0466','','','2023-12-26 20:22:27','2023-12-26 20:22:27','',0,'http://localhost:10020/?p=30',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-12-26 20:22:27','2023-12-26 20:22:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Intro','intro','publish','closed','closed','','field_6350c7d75d6b1','','','2023-12-26 20:22:27','2023-12-26 20:22:27','',30,'http://localhost:10020/?post_type=acf-field&p=31',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-12-26 20:22:27','2023-12-26 20:22:27','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Copy','copy','publish','closed','closed','','field_6350c7dc5d6b2','','','2023-12-26 20:22:27','2023-12-26 20:22:27','',30,'http://localhost:10020/?post_type=acf-field&p=32',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-12-26 20:48:33','2023-12-26 20:48:33','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Block: Contact','block-contact','publish','closed','closed','','group_658b3bcd6615f','','','2023-12-26 20:59:00','2023-12-26 20:59:00','',0,'http://localhost:10020/?post_type=acf-field-group&#038;p=33',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-12-26 20:48:33','2023-12-26 20:48:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:61:\"REINBUILT LUXURY:  15 STEP GUIDE TO BUILDING YOUR LUXURY HOME\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','title','publish','closed','closed','','field_658b3bdf2fc68','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=34',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-12-26 20:48:33','2023-12-26 20:48:33','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Logo','logo','publish','closed','closed','','field_658b3c022fc69','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=35',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-12-26 20:53:14','2023-12-26 20:53:14','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"First Name\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','First Name','first_name','publish','closed','closed','','field_658b3c4ea207c','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=36',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-12-26 20:53:14','2023-12-26 20:53:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:9:\"Last Name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Last Name','last_name','publish','closed','closed','','field_658b3cada207d','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=37',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-12-26 20:53:14','2023-12-26 20:53:14','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email','email','publish','closed','closed','','field_658b3cc1a207e','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=38',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-12-26 20:53:14','2023-12-26 20:53:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Submit','submit','publish','closed','closed','','field_658b3ce5a207f','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&#038;p=39',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-12-26 20:54:06','2023-12-26 20:54:06','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image','image','publish','closed','closed','','field_658b3d44aa411','','','2023-12-26 20:54:06','2023-12-26 20:54:06','',33,'http://localhost:10020/?post_type=acf-field&p=40',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-12-26 21:06:39','2023-12-26 21:06:39','','Contact','','inherit','closed','closed','','2-autosave-v1','','','2023-12-26 21:06:39','2023-12-26 21:06:39','',2,'http://localhost:10020/?p=41',0,'revision','',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
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
INSERT INTO `wp_simple_history` VALUES (63,'2023-12-26 14:16:13','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (64,'2023-12-26 20:18:40','SimpleUserLogger','info','Logged in','79a4bd45d92bed3a8d7a43ee18e88217','wp_user');
INSERT INTO `wp_simple_history` VALUES (65,'2023-12-26 20:20:32','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','796b1dfead18f8cf04fbc771f8d0c22e','wp_user');
INSERT INTO `wp_simple_history` VALUES (66,'2023-12-26 20:22:27','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','6297e3a37f37e08214c2c1c490d54387','wp_user');
INSERT INTO `wp_simple_history` VALUES (67,'2023-12-26 20:22:27','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','6297e3a37f37e08214c2c1c490d54387','wp_user');
INSERT INTO `wp_simple_history` VALUES (68,'2023-12-26 20:48:33','SimplePostLogger','info','Created {post_type} \"{post_title}\"','8d9d8b9b93a146a1bdcfb5acdec386ca','wp_user');
INSERT INTO `wp_simple_history` VALUES (69,'2023-12-26 20:53:14','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e91a94f8425c72be8607ef81894745b5','wp_user');
INSERT INTO `wp_simple_history` VALUES (70,'2023-12-26 20:54:06','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e91a94f8425c72be8607ef81894745b5','wp_user');
INSERT INTO `wp_simple_history` VALUES (71,'2023-12-26 20:59:00','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e91a94f8425c72be8607ef81894745b5','wp_user');
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
) ENGINE=InnoDB AUTO_INCREMENT=778 DEFAULT CHARSET=utf8;
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
INSERT INTO `wp_simple_history_contexts` VALUES (5,1,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (6,1,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (7,1,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (8,1,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (9,1,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (10,1,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (11,1,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (12,2,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (13,2,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (14,2,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (15,2,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (16,2,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (17,2,'plugin_slug','simple-history');
INSERT INTO `wp_simple_history_contexts` VALUES (18,2,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (19,2,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (20,2,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (21,2,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (22,2,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (23,2,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (24,2,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (25,3,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (26,3,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (27,3,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (28,3,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (29,3,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (30,4,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (31,4,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (32,4,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (33,4,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (34,4,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (35,5,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (36,5,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (37,5,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (38,5,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (39,5,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (40,5,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (41,5,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (42,5,'_wp_cron_current_filter','simple_history/loggers_loaded');
INSERT INTO `wp_simple_history_contexts` VALUES (43,5,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (44,6,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (45,6,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (46,6,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (47,6,'plugin_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (48,6,'plugin_author','Pär Thernström');
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
INSERT INTO `wp_simple_history_contexts` VALUES (67,7,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
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
INSERT INTO `wp_simple_history_contexts` VALUES (80,8,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
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
INSERT INTO `wp_simple_history_contexts` VALUES (93,9,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php?plugin_status=all&paged=1&s');
INSERT INTO `wp_simple_history_contexts` VALUES (94,10,'plugin_name','Akismet Anti-Spam');
INSERT INTO `wp_simple_history_contexts` VALUES (95,10,'plugin_current_version','5.0.1');
INSERT INTO `wp_simple_history_contexts` VALUES (96,10,'plugin_new_version','5.3');
INSERT INTO `wp_simple_history_contexts` VALUES (97,10,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (98,10,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (99,10,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (100,10,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (101,10,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (102,10,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (103,11,'plugin_name','Contact Form 7');
INSERT INTO `wp_simple_history_contexts` VALUES (104,11,'plugin_current_version','5.6.4');
INSERT INTO `wp_simple_history_contexts` VALUES (105,11,'plugin_new_version','5.8.4');
INSERT INTO `wp_simple_history_contexts` VALUES (106,11,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (107,11,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (108,11,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (109,11,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (110,11,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (111,11,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (112,12,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (113,12,'plugin_current_version','3.3.1');
INSERT INTO `wp_simple_history_contexts` VALUES (114,12,'plugin_new_version','4.8.0');
INSERT INTO `wp_simple_history_contexts` VALUES (115,12,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (116,12,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (117,12,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (118,12,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (119,12,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (120,12,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (121,13,'plugin_name','Wordfence Security');
INSERT INTO `wp_simple_history_contexts` VALUES (122,13,'plugin_current_version','7.8.0');
INSERT INTO `wp_simple_history_contexts` VALUES (123,13,'plugin_new_version','7.11.0');
INSERT INTO `wp_simple_history_contexts` VALUES (124,13,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (125,13,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (126,13,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (127,13,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (128,13,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (129,13,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (130,14,'plugin_name','Yoast SEO');
INSERT INTO `wp_simple_history_contexts` VALUES (131,14,'plugin_current_version','19.5.1');
INSERT INTO `wp_simple_history_contexts` VALUES (132,14,'plugin_new_version','21.6');
INSERT INTO `wp_simple_history_contexts` VALUES (133,14,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (134,14,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (135,14,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (136,14,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (137,14,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (138,14,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (139,15,'plugin_name','Advanced Custom Fields PRO');
INSERT INTO `wp_simple_history_contexts` VALUES (140,15,'plugin_current_version','6.2.2');
INSERT INTO `wp_simple_history_contexts` VALUES (141,15,'plugin_new_version','6.2.4');
INSERT INTO `wp_simple_history_contexts` VALUES (142,15,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (143,15,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (144,15,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (145,15,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (146,15,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (147,15,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (148,16,'theme_name','Twenty Nineteen');
INSERT INTO `wp_simple_history_contexts` VALUES (149,16,'theme_current_version','1.4');
INSERT INTO `wp_simple_history_contexts` VALUES (150,16,'theme_new_version','2.7');
INSERT INTO `wp_simple_history_contexts` VALUES (151,16,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (152,16,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (153,16,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (154,16,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (155,16,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (156,16,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (157,17,'theme_name','twentytwentyone');
INSERT INTO `wp_simple_history_contexts` VALUES (158,17,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (159,17,'theme_new_version','2.0');
INSERT INTO `wp_simple_history_contexts` VALUES (160,17,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (161,17,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (162,17,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (163,17,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (164,17,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (165,17,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (166,18,'theme_name','twentytwentythree');
INSERT INTO `wp_simple_history_contexts` VALUES (167,18,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (168,18,'theme_new_version','1.3');
INSERT INTO `wp_simple_history_contexts` VALUES (169,18,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (170,18,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (171,18,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (172,18,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (173,18,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (174,18,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (175,19,'theme_name','twentytwentytwo');
INSERT INTO `wp_simple_history_contexts` VALUES (176,19,'theme_current_version','false');
INSERT INTO `wp_simple_history_contexts` VALUES (177,19,'theme_new_version','1.6');
INSERT INTO `wp_simple_history_contexts` VALUES (178,19,'_message_key','theme_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (179,19,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (180,19,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (181,19,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (182,19,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (183,19,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
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
INSERT INTO `wp_simple_history_contexts` VALUES (199,20,'_server_http_referer','http://localhost:10020/wp-admin/update-core.php?action=do-plugin-upgrade');
INSERT INTO `wp_simple_history_contexts` VALUES (200,21,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (201,21,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (202,21,'post_title','');
INSERT INTO `wp_simple_history_contexts` VALUES (203,21,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (204,21,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (205,21,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (206,21,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (207,21,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (208,21,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (209,21,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
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
INSERT INTO `wp_simple_history_contexts` VALUES (226,23,'_server_http_referer','http://localhost:10020/wp-admin/customize.php?return=wp-adminthemes.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (240,24,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=7&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (241,25,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (242,25,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (243,25,'post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (244,25,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (245,25,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (246,25,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (247,25,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (248,25,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (249,25,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (250,25,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=7&action=edit');
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
INSERT INTO `wp_simple_history_contexts` VALUES (262,26,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=2&action=edit');
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
INSERT INTO `wp_simple_history_contexts` VALUES (275,27,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=2&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (276,28,'post_id','13');
INSERT INTO `wp_simple_history_contexts` VALUES (277,28,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (278,28,'post_title','Partners');
INSERT INTO `wp_simple_history_contexts` VALUES (279,28,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (280,28,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (281,28,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (282,28,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (283,28,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (284,28,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (285,28,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (286,29,'post_id','15');
INSERT INTO `wp_simple_history_contexts` VALUES (287,29,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (288,29,'post_title','Products');
INSERT INTO `wp_simple_history_contexts` VALUES (289,29,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (290,29,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (291,29,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (292,29,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (293,29,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (294,29,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (295,29,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (296,30,'post_id','17');
INSERT INTO `wp_simple_history_contexts` VALUES (297,30,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (298,30,'post_title','Results');
INSERT INTO `wp_simple_history_contexts` VALUES (299,30,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (300,30,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (301,30,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (302,30,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (303,30,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (304,30,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (305,30,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
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
INSERT INTO `wp_simple_history_contexts` VALUES (317,31,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=2&action=edit');
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
INSERT INTO `wp_simple_history_contexts` VALUES (329,32,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=7&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (330,33,'post_id','19');
INSERT INTO `wp_simple_history_contexts` VALUES (331,33,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (332,33,'post_title','Our Team');
INSERT INTO `wp_simple_history_contexts` VALUES (333,33,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (334,33,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (335,33,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (336,33,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (337,33,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (338,33,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (339,33,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (340,34,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (341,34,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (342,34,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (343,34,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (344,34,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (345,34,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (346,34,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (347,34,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (348,34,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (349,34,'_server_http_referer','http://localhost:10020/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (350,35,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (351,35,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (352,35,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (353,35,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (354,35,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (355,35,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (356,35,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (357,35,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (358,35,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (359,35,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=21&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (360,36,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (361,36,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (362,36,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (363,36,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (364,36,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (365,36,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (366,36,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (367,36,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (368,36,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (369,36,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=21&action=edit');
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
INSERT INTO `wp_simple_history_contexts` VALUES (382,37,'_server_http_referer','http://localhost:10020/wp-admin/post.php?post=21&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (383,38,'post_id','21');
INSERT INTO `wp_simple_history_contexts` VALUES (384,38,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (385,38,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (386,38,'_message_key','post_trashed');
INSERT INTO `wp_simple_history_contexts` VALUES (387,38,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (388,38,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (389,38,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (390,38,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (391,38,'_server_http_referer','http://localhost:10020/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (392,39,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (393,39,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (394,39,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (395,39,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (396,39,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (397,39,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (398,39,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (399,39,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (400,39,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (401,39,'_server_http_referer','http://localhost:10020/wp-login.php?redirect_to=httpreinbuilt.localwp-admin&reauth=1');
INSERT INTO `wp_simple_history_contexts` VALUES (402,40,'theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (403,40,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (404,40,'prev_theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (405,40,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (406,40,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (407,40,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (408,40,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (409,40,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (410,40,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (411,40,'_server_http_referer','http://localhost:10020/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (412,41,'theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (413,41,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (414,41,'prev_theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (415,41,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (416,41,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (417,41,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (418,41,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (419,41,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (420,41,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (421,41,'_server_http_referer','http://localhost:10020/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (422,42,'option','blogname');
INSERT INTO `wp_simple_history_contexts` VALUES (423,42,'old_value','amplify');
INSERT INTO `wp_simple_history_contexts` VALUES (424,42,'new_value','Reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (425,42,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (426,42,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (427,42,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (428,42,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (429,42,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (430,42,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (431,42,'_server_http_referer','http://localhost:10020/wp-admin/options-general.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (444,43,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (480,47,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (493,48,'_server_http_referer','http://localhost:10020/wp-admin/plugins.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (505,49,'_server_http_referer','http://localhost:10020/wp-admin/plugin-install.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (521,50,'_server_http_referer','http://localhost:10020/wp-admin/plugin-install.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (532,51,'_server_http_referer','http://localhost:10020/wp-admin/plugin-install.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (545,52,'_server_http_referer','http://localhost:10020/wp-admin/update.php?action=upload-plugin');
INSERT INTO `wp_simple_history_contexts` VALUES (546,53,'theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (547,53,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (548,53,'prev_theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (549,53,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (550,53,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (551,53,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (552,53,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (553,53,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (554,53,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (555,53,'_server_http_referer','http://localhost:10020/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (556,54,'theme_name','reinbuilt');
INSERT INTO `wp_simple_history_contexts` VALUES (557,54,'theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (558,54,'prev_theme_name','integrated');
INSERT INTO `wp_simple_history_contexts` VALUES (559,54,'prev_theme_version','1.1.0');
INSERT INTO `wp_simple_history_contexts` VALUES (560,54,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (561,54,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (562,54,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (563,54,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (564,54,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (565,54,'_server_http_referer','http://localhost:10020/wp-admin/themes.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (577,55,'_server_http_referer','http://localhost:10020/wp-admin/upload.php');
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
INSERT INTO `wp_simple_history_contexts` VALUES (588,57,'old_value','http://localhost:10020');
INSERT INTO `wp_simple_history_contexts` VALUES (589,57,'new_value','http://localhost:10020');
INSERT INTO `wp_simple_history_contexts` VALUES (590,57,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (591,57,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (592,57,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (593,57,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (594,57,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (595,57,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (596,57,'_server_http_referer','http://localhost:10020/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (597,58,'option','wpseo');
INSERT INTO `wp_simple_history_contexts` VALUES (598,58,'old_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"permalink_settings_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (599,58,'new_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (600,58,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (601,58,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (602,58,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (603,58,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (604,58,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (605,58,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (606,58,'_server_http_referer','http://localhost:10020/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (607,59,'option','wpseo');
INSERT INTO `wp_simple_history_contexts` VALUES (608,59,'old_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"http:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (609,59,'new_value','{\n    \"tracking\": false,\n    \"license_server_version\": false,\n    \"ms_defaults_set\": false,\n    \"ignore_search_engines_discouraged_notice\": false,\n    \"indexing_first_time\": true,\n    \"indexing_started\": false,\n    \"indexing_reason\": \"home_url_option_changed\",\n    \"indexables_indexing_completed\": true,\n    \"index_now_key\": \"\",\n    \"version\": \"19.5.1\",\n    \"previous_version\": \"\",\n    \"disableadvanced_meta\": true,\n    \"enable_headless_rest_endpoints\": true,\n    \"ryte_indexability\": true,\n    \"baiduverify\": \"\",\n    \"googleverify\": \"\",\n    \"msverify\": \"\",\n    \"yandexverify\": \"\",\n    \"site_type\": \"\",\n    \"has_multiple_authors\": \"\",\n    \"environment_type\": \"\",\n    \"content_analysis_active\": true,\n    \"keyword_analysis_active\": true,\n    \"enable_admin_bar_menu\": true,\n    \"enable_cornerstone_content\": true,\n    \"enable_xml_sitemap\": true,\n    \"enable_text_link_counter\": true,\n    \"enable_index_now\": true,\n    \"show_onboarding_notice\": true,\n    \"first_activated_on\": 1702426000,\n    \"myyoast-oauth\": false,\n    \"semrush_integration_active\": true,\n    \"semrush_tokens\": [],\n    \"semrush_country_code\": \"us\",\n    \"permalink_structure\": \"\\/%postname%\\/\",\n    \"home_url\": \"https:\\/\\/reinbuilt.local\",\n    \"dynamic_permalinks\": false,\n    \"category_base_url\": \"\",\n    \"tag_base_url\": \"\",\n    \"custom_taxonomy_slugs\": [],\n    \"enable_enhanced_slack_sharing\": true,\n    \"zapier_integration_active\": false,\n    \"zapier_subscription\": [],\n    \"zapier_api_key\": \"\",\n    \"enable_metabox_insights\": true,\n    \"enable_link_suggestions\": true,\n    \"algolia_integration_active\": false,\n    \"import_cursors\": [],\n    \"workouts_data\": {\n        \"configuration\": {\n            \"finishedSteps\": []\n        }\n    },\n    \"configuration_finished_steps\": [],\n    \"dismiss_configuration_workout_notice\": false,\n    \"dismiss_premium_deactivated_notice\": false,\n    \"importing_completed\": [],\n    \"wincher_integration_active\": true,\n    \"wincher_tokens\": [],\n    \"wincher_automatically_add_keyphrases\": false,\n    \"wincher_website_id\": \"\",\n    \"wordproof_integration_active\": false,\n    \"wordproof_integration_changed\": false,\n    \"first_time_install\": true,\n    \"should_redirect_after_install_free\": false,\n    \"activation_redirect_timestamp_free\": 1702426001,\n    \"remove_feed_global\": false,\n    \"remove_feed_global_comments\": false,\n    \"remove_feed_post_comments\": false,\n    \"remove_feed_authors\": false,\n    \"remove_feed_categories\": false,\n    \"remove_feed_tags\": false,\n    \"remove_feed_custom_taxonomies\": false,\n    \"remove_feed_post_types\": false,\n    \"remove_feed_search\": false,\n    \"remove_atom_rdf_feeds\": false,\n    \"remove_shortlinks\": false,\n    \"remove_rest_api_links\": false,\n    \"remove_rsd_wlw_links\": false,\n    \"remove_oembed_links\": false,\n    \"remove_generator\": false,\n    \"remove_emoji_scripts\": false,\n    \"remove_powered_by_header\": false,\n    \"remove_pingback_header\": false,\n    \"clean_campaign_tracking_urls\": false,\n    \"clean_permalinks\": false,\n    \"clean_permalinks_extra_variables\": \"\",\n    \"search_cleanup\": false,\n    \"search_cleanup_emoji\": false,\n    \"search_cleanup_patterns\": false,\n    \"search_character_limit\": 50\n}');
INSERT INTO `wp_simple_history_contexts` VALUES (610,59,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (611,59,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (612,59,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (613,59,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (614,59,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (615,59,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (616,59,'_server_http_referer','http://localhost:10020/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (617,60,'option','home');
INSERT INTO `wp_simple_history_contexts` VALUES (618,60,'old_value','http://localhost:10020');
INSERT INTO `wp_simple_history_contexts` VALUES (619,60,'new_value','http://localhost:10020');
INSERT INTO `wp_simple_history_contexts` VALUES (620,60,'option_page','general');
INSERT INTO `wp_simple_history_contexts` VALUES (621,60,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (622,60,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (623,60,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (624,60,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (625,60,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (626,60,'_server_http_referer','http://localhost:10020/wp-admin/options-general.php');
INSERT INTO `wp_simple_history_contexts` VALUES (627,61,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (628,61,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (629,61,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (630,61,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (631,61,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (632,61,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (633,61,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (634,61,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (635,61,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (636,61,'_server_http_referer','http://localhost:10020/wp-login.php?redirect_to=httpsreinbuilt.localwp-adminoptions-general.phpsettings-updatedtrue&reauth=1');
INSERT INTO `wp_simple_history_contexts` VALUES (637,62,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (638,62,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (639,62,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (640,62,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (641,62,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (642,62,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (643,62,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (644,62,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (645,62,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (646,63,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (647,63,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (648,63,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (649,63,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (650,63,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (651,63,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (652,63,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (653,63,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (654,63,'_server_remote_addr','127.0.0.x');
INSERT INTO `wp_simple_history_contexts` VALUES (655,64,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (656,64,'user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (657,64,'user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (658,64,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (659,64,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (660,64,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (661,64,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (662,64,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (663,64,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (664,65,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (665,65,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (666,65,'post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (667,65,'post_prev_post_content','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10020/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->');
INSERT INTO `wp_simple_history_contexts` VALUES (668,65,'post_new_post_content','');
INSERT INTO `wp_simple_history_contexts` VALUES (669,65,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (670,65,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (671,65,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (672,65,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (673,65,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (674,65,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (675,65,'_server_http_referer','http://localhost:3000/wp-admin/post.php?post=2&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (676,66,'post_id','30');
INSERT INTO `wp_simple_history_contexts` VALUES (677,66,'post_type','post');
INSERT INTO `wp_simple_history_contexts` VALUES (678,66,'post_title','group_6350c7cda0466');
INSERT INTO `wp_simple_history_contexts` VALUES (679,66,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (680,66,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (681,66,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (682,66,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (683,66,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (684,66,'_server_http_referer','http://localhost:3000/wp-admin/edit.php?post_type=acf-field-group&post_status=sync');
INSERT INTO `wp_simple_history_contexts` VALUES (685,67,'post_id','30');
INSERT INTO `wp_simple_history_contexts` VALUES (686,67,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (687,67,'post_title','Contact Page');
INSERT INTO `wp_simple_history_contexts` VALUES (688,67,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (689,67,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (690,67,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (691,67,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (692,67,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (693,67,'_server_http_referer','http://localhost:3000/wp-admin/edit.php?post_type=acf-field-group&post_status=sync');
INSERT INTO `wp_simple_history_contexts` VALUES (694,68,'post_id','33');
INSERT INTO `wp_simple_history_contexts` VALUES (695,68,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (696,68,'post_title','Block: Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (697,68,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (698,68,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (699,68,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (700,68,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (701,68,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (702,68,'_server_http_referer','http://localhost:3000/wp-admin/post-new.php?post_type=acf-field-group&wp-post-new-reload=true');
INSERT INTO `wp_simple_history_contexts` VALUES (703,69,'post_id','33');
INSERT INTO `wp_simple_history_contexts` VALUES (704,69,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (705,69,'post_title','Block: Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (706,69,'acf_added_fields_0_key','field_658b3c4ea207c');
INSERT INTO `wp_simple_history_contexts` VALUES (707,69,'acf_added_fields_0_name','first_name');
INSERT INTO `wp_simple_history_contexts` VALUES (708,69,'acf_added_fields_0_label','First Name');
INSERT INTO `wp_simple_history_contexts` VALUES (709,69,'acf_added_fields_0_type','textarea');
INSERT INTO `wp_simple_history_contexts` VALUES (710,69,'acf_added_fields_1_key','field_658b3cada207d');
INSERT INTO `wp_simple_history_contexts` VALUES (711,69,'acf_added_fields_1_name','last_name');
INSERT INTO `wp_simple_history_contexts` VALUES (712,69,'acf_added_fields_1_label','Last Name');
INSERT INTO `wp_simple_history_contexts` VALUES (713,69,'acf_added_fields_1_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (714,69,'acf_added_fields_2_key','field_658b3cc1a207e');
INSERT INTO `wp_simple_history_contexts` VALUES (715,69,'acf_added_fields_2_name','email');
INSERT INTO `wp_simple_history_contexts` VALUES (716,69,'acf_added_fields_2_label','Email');
INSERT INTO `wp_simple_history_contexts` VALUES (717,69,'acf_added_fields_2_type','email');
INSERT INTO `wp_simple_history_contexts` VALUES (718,69,'acf_added_fields_3_key','field_658b3ce5a207f');
INSERT INTO `wp_simple_history_contexts` VALUES (719,69,'acf_added_fields_3_name','submit');
INSERT INTO `wp_simple_history_contexts` VALUES (720,69,'acf_added_fields_3_label','Submit');
INSERT INTO `wp_simple_history_contexts` VALUES (721,69,'acf_added_fields_3_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (722,69,'acf_modified_fields_0_ID_prev','35');
INSERT INTO `wp_simple_history_contexts` VALUES (723,69,'acf_modified_fields_0_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (724,69,'acf_modified_fields_0_label_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (725,69,'acf_modified_fields_0_label_new','Logo');
INSERT INTO `wp_simple_history_contexts` VALUES (726,69,'acf_modified_fields_0_name_new','logo');
INSERT INTO `wp_simple_history_contexts` VALUES (727,69,'acf_modified_fields_0_type_prev','text');
INSERT INTO `wp_simple_history_contexts` VALUES (728,69,'acf_modified_fields_0_type_new','image');
INSERT INTO `wp_simple_history_contexts` VALUES (729,69,'acf_modified_fields_1_ID_prev','34');
INSERT INTO `wp_simple_history_contexts` VALUES (730,69,'acf_modified_fields_1_name_prev','title');
INSERT INTO `wp_simple_history_contexts` VALUES (731,69,'acf_modified_fields_1_label_prev','Title');
INSERT INTO `wp_simple_history_contexts` VALUES (732,69,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (733,69,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (734,69,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (735,69,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (736,69,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (737,69,'_server_http_referer','http://localhost:3000/wp-admin/post.php?post=33&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (738,70,'post_id','33');
INSERT INTO `wp_simple_history_contexts` VALUES (739,70,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (740,70,'post_title','Block: Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (741,70,'acf_added_fields_0_key','field_658b3d44aa411');
INSERT INTO `wp_simple_history_contexts` VALUES (742,70,'acf_added_fields_0_name','image');
INSERT INTO `wp_simple_history_contexts` VALUES (743,70,'acf_added_fields_0_label','Image');
INSERT INTO `wp_simple_history_contexts` VALUES (744,70,'acf_added_fields_0_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (745,70,'acf_modified_fields_0_ID_prev','35');
INSERT INTO `wp_simple_history_contexts` VALUES (746,70,'acf_modified_fields_0_name_prev','logo');
INSERT INTO `wp_simple_history_contexts` VALUES (747,70,'acf_modified_fields_0_label_prev','Logo');
INSERT INTO `wp_simple_history_contexts` VALUES (748,70,'acf_modified_fields_1_ID_prev','34');
INSERT INTO `wp_simple_history_contexts` VALUES (749,70,'acf_modified_fields_1_name_prev','title');
INSERT INTO `wp_simple_history_contexts` VALUES (750,70,'acf_modified_fields_1_label_prev','Title');
INSERT INTO `wp_simple_history_contexts` VALUES (751,70,'acf_modified_fields_2_ID_prev','36');
INSERT INTO `wp_simple_history_contexts` VALUES (752,70,'acf_modified_fields_2_name_prev','first_name');
INSERT INTO `wp_simple_history_contexts` VALUES (753,70,'acf_modified_fields_2_label_prev','First Name');
INSERT INTO `wp_simple_history_contexts` VALUES (754,70,'acf_modified_fields_3_ID_prev','37');
INSERT INTO `wp_simple_history_contexts` VALUES (755,70,'acf_modified_fields_3_name_prev','last_name');
INSERT INTO `wp_simple_history_contexts` VALUES (756,70,'acf_modified_fields_3_label_prev','Last Name');
INSERT INTO `wp_simple_history_contexts` VALUES (757,70,'acf_modified_fields_4_ID_prev','38');
INSERT INTO `wp_simple_history_contexts` VALUES (758,70,'acf_modified_fields_4_name_prev','email');
INSERT INTO `wp_simple_history_contexts` VALUES (759,70,'acf_modified_fields_4_label_prev','Email');
INSERT INTO `wp_simple_history_contexts` VALUES (760,70,'acf_modified_fields_5_ID_prev','39');
INSERT INTO `wp_simple_history_contexts` VALUES (761,70,'acf_modified_fields_5_name_prev','submit');
INSERT INTO `wp_simple_history_contexts` VALUES (762,70,'acf_modified_fields_5_label_prev','Submit');
INSERT INTO `wp_simple_history_contexts` VALUES (763,70,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (764,70,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (765,70,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (766,70,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (767,70,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (768,70,'_server_http_referer','http://localhost:3000/wp-admin/post.php?post=33&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (769,71,'post_id','33');
INSERT INTO `wp_simple_history_contexts` VALUES (770,71,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (771,71,'post_title','Block: Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (772,71,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (773,71,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (774,71,'_user_login','gunther');
INSERT INTO `wp_simple_history_contexts` VALUES (775,71,'_user_email','dev-email@wpengine.local');
INSERT INTO `wp_simple_history_contexts` VALUES (776,71,'_server_remote_addr','::');
INSERT INTO `wp_simple_history_contexts` VALUES (777,71,'_server_http_referer','http://localhost:3000/wp-admin/post.php?post=33&action=edit');
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
INSERT INTO `wp_term_relationships` VALUES (30,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"7bc8736e76cfbe8b32c9084cde965f2a6f75bdf239df86ac6824d46b539b41be\";a:4:{s:10:\"expiration\";i:1703632094;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1702422494;}s:64:\"6d113aff6ed9bccc82dc200007724b01691fec1e4cf1132233157a65afc5cfa3\";a:4:{s:10:\"expiration\";i:1703772973;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703600173;}s:64:\"865929620f83d902bfeecc8afbaedf099127370feced0de50f68a23c7a472d3d\";a:4:{s:10:\"expiration\";i:1703794720;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703621920;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','24');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"editorMode\";s:6:\"visual\";s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:24:\"yoast-seo/document-panel\";}}s:9:\"_modified\";s:24:\"2023-12-26T20:19:08.157Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wfls-last-login','1703621920');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_toplevel_page_theme-instructions','a:1:{i:0;s:23:\"acf-group_634f3c8500dbe\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_toplevel_page_theme-instructions','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_toplevel_page_theme-instructions','a:2:{s:4:\"side\";s:33:\"submitdiv,acf-group_634f3c8500dbe\";s:6:\"normal\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'screen_layout_toplevel_page_theme-instructions','2');
INSERT INTO `wp_usermeta` VALUES (27,1,'_yoast_wpseo_profile_updated','1703199917');
INSERT INTO `wp_usermeta` VALUES (30,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:335:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://localhost:10020/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"gunther\";s:9:\"user_pass\";s:34:\"$P$B./sUM7gdCFcCmOR9OOoMXudlrjI7O/\";s:13:\"user_nicename\";s:7:\"gunther\";s:10:\"user_email\";s:24:\"dev-email@wpengine.local\";s:8:\"user_url\";s:22:\"http://localhost:10020\";s:15:\"user_registered\";s:19:\"2023-12-12 02:14:56\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"gunther\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
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
INSERT INTO `wp_users` VALUES (1,'gunther','$P$B./sUM7gdCFcCmOR9OOoMXudlrjI7O/','gunther','dev-email@wpengine.local','http://localhost:10020','2023-12-12 02:14:56','',0,'gunther');
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
INSERT INTO `wp_wfconfig` VALUES ('dbTest',_binary 'a:1:{s:5:\"nonce\";s:64:\"c4220b16ae79715483b354066a8301c87bed0d45ef2d3709347dbfe5149d34aa\";}','no');
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
INSERT INTO `wp_wfconfig` VALUES ('lastBlockAggregation',_binary '1703691345','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastDailyCron',_binary '1703691345','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastDashboardCheck',_binary '1702422534','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastNotificationID',_binary '9','no');
INSERT INTO `wp_wfconfig` VALUES ('lastPermissionsTemplateCheck',_binary '1703692492','yes');
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
INSERT INTO `wp_wfconfig` VALUES ('onboardingDelayedAt',_binary '1703621925','yes');
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
INSERT INTO `wp_wfconfig` VALUES ('timeoffset_wf_updated',_binary '1703691346','yes');
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
INSERT INTO `wp_wfconfig` VALUES ('wp_home_url',_binary 'http://localhost:10020','yes');
INSERT INTO `wp_wfconfig` VALUES ('wp_site_url',_binary 'http://localhost:10020','yes');
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
INSERT INTO `wp_wfhits` VALUES (1,0.000000,1702422494.153000,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0',0,302,0,1,0,'http://localhost:10020/wp-login.php','http://localhost:10020/wp-login.php?redirect_to=http%3A%2F%2Freinbuilt.local%2Fwp-admin%2F&reauth=1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','loginOK',NULL,NULL);
INSERT INTO `wp_wfhits` VALUES (2,0.000000,1703292308.077660,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0',0,302,0,1,0,'http://localhost:10020/wp-login.php','http://localhost:10020/wp-login.php?redirect_to=https%3A%2F%2Freinbuilt.local%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&reauth=1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','loginOK',NULL,NULL);
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
INSERT INTO `wp_wflogins` VALUES (1,1,1702422494.211021,0,'loginOK','gunther',1,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
INSERT INTO `wp_wflogins` VALUES (2,2,1703292308.267978,0,'loginOK','gunther',1,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
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
INSERT INTO `wp_wfls_settings` VALUES ('ntp-offset',_binary '0.20747804641724','yes');
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
INSERT INTO `wp_wfnotifications` VALUES ('site-AEAAAAA',1,'wfplugin_updates',502,1703691347,'<a href=\"http://localhost:10020/wp-admin/update-core.php\">An update is available for 3 plugins</a>','[]');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://localhost:10020/contact/','31:574a77373af7192f248bd63032f8d8df',2,'post','page',1,0,NULL,NULL,'Contact','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-27 01:20:33',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:20:33','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (2,NULL,NULL,7,'post','page',1,0,NULL,NULL,'About','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:20:47','2023-12-12 03:11:16');
INSERT INTO `wp_yoast_indexable` VALUES (3,NULL,NULL,13,'post','page',1,0,NULL,NULL,'Partners','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:00:46','2023-12-12 21:00:46');
INSERT INTO `wp_yoast_indexable` VALUES (4,NULL,NULL,15,'post','page',1,0,NULL,NULL,'Products','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:02:12','2023-12-12 21:02:12');
INSERT INTO `wp_yoast_indexable` VALUES (5,NULL,NULL,17,'post','page',1,0,NULL,NULL,'Results','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:03:00','2023-12-12 21:03:00');
INSERT INTO `wp_yoast_indexable` VALUES (6,NULL,NULL,1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 02:14:56','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (7,NULL,NULL,19,'post','page',1,0,NULL,NULL,'Our Team','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 21:21:39','2023-12-12 21:21:39');
INSERT INTO `wp_yoast_indexable` VALUES (8,NULL,NULL,1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-13 00:06:41','2023-12-20 14:23:10',1,NULL,NULL,NULL,NULL,0,NULL,0,'2023-12-12 02:14:56','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (9,'http://localhost:10020/author/gunther/','38:e746af3b478542cd57dc6f03926f380c',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://1.gravatar.com/avatar/729ae85bf62b9917e93538db2f2688ca?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://1.gravatar.com/avatar/729ae85bf62b9917e93538db2f2688ca?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2023-12-26 20:19:08','2023-12-27 01:59:00',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:59:00','2023-12-12 02:14:56');
INSERT INTO `wp_yoast_indexable` VALUES (10,'http://localhost:10020/?post_type=acf-field&p=31','48:54281cc2299624f11fa8c542ad8cdf82',31,'post','acf-field',1,30,NULL,NULL,'Intro','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:22:27','2023-12-27 01:22:27',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:22:27','2023-12-26 20:22:27');
INSERT INTO `wp_yoast_indexable` VALUES (11,'http://localhost:10020/?post_type=acf-field&p=32','48:d71b2b1ab888ec9bcf9c62be0c6e531c',32,'post','acf-field',1,30,NULL,NULL,'Copy','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:22:27','2023-12-27 01:22:27',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:22:27','2023-12-26 20:22:27');
INSERT INTO `wp_yoast_indexable` VALUES (12,'http://localhost:10020/?post_type=acf-field-group&p=30','54:a7fd464ce59a2d987e65dfce2de2e31b',30,'post','acf-field-group',1,0,NULL,NULL,'Contact Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:22:27','2023-12-27 01:22:27',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:22:27','2023-12-26 20:22:27');
INSERT INTO `wp_yoast_indexable` VALUES (13,'http://localhost:10020/?post_type=acf-field&p=34','48:8a46631390bc4f27bc6d9c1bf93a8d01',34,'post','acf-field',1,33,NULL,NULL,'Title','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:48:33','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:48:33');
INSERT INTO `wp_yoast_indexable` VALUES (14,'http://localhost:10020/?post_type=acf-field&p=35','48:3c9a3409c0f87edbe191bbfb19be8de0',35,'post','acf-field',1,33,NULL,NULL,'Logo','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:48:33','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:48:33');
INSERT INTO `wp_yoast_indexable` VALUES (15,'http://localhost:10020/?post_type=acf-field-group&p=33','54:8b94f583261899f35ad91c0f3f2bc12f',33,'post','acf-field-group',1,0,NULL,NULL,'Block: Contact','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:48:33','2023-12-27 01:59:00',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-12-26 20:59:00','2023-12-26 20:48:33');
INSERT INTO `wp_yoast_indexable` VALUES (16,'http://localhost:10020/?post_type=acf-field&p=36','48:d3f178c596f2fa785c78e04f073d7894',36,'post','acf-field',1,33,NULL,NULL,'First Name','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:53:14','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:53:14');
INSERT INTO `wp_yoast_indexable` VALUES (17,'http://localhost:10020/?post_type=acf-field&p=37','48:ec08f1eabfa99fc8448526639280705d',37,'post','acf-field',1,33,NULL,NULL,'Last Name','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:53:14','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:53:14');
INSERT INTO `wp_yoast_indexable` VALUES (18,'http://localhost:10020/?post_type=acf-field&p=38','48:6870e9d0cfc359b2c4ddf1c52cf47665',38,'post','acf-field',1,33,NULL,NULL,'Email','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:53:14','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:53:14');
INSERT INTO `wp_yoast_indexable` VALUES (19,'http://localhost:10020/?post_type=acf-field&p=39','48:7e872668f042807fe0eec3da553150f4',39,'post','acf-field',1,33,NULL,NULL,'Submit','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:53:14','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:53:14');
INSERT INTO `wp_yoast_indexable` VALUES (20,'http://localhost:10020/?post_type=acf-field&p=40','48:5bbc772779db3a75fe94de3171a010bf',40,'post','acf-field',1,33,NULL,NULL,'Image','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-12-26 20:54:06','2023-12-27 01:54:06',1,NULL,NULL,NULL,NULL,1,NULL,2,'2023-12-26 20:54:06','2023-12-26 20:54:06');
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
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (9,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (13,15,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (14,15,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (15,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (16,15,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (17,15,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (18,15,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (19,15,1,1);
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

-- Dump completed on 2023-12-27 14:05:09
