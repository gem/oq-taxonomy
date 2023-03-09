-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: taxonomy
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `taxonomy_action_log_config`
--

DROP TABLE IF EXISTS `taxonomy_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_action_log_config`
--

LOCK TABLES `taxonomy_action_log_config` WRITE;
/*!40000 ALTER TABLE `taxonomy_action_log_config` DISABLE KEYS */;
INSERT INTO `taxonomy_action_log_config` VALUES (1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA');
INSERT INTO `taxonomy_action_log_config` VALUES (20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `taxonomy_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_action_logs`
--

DROP TABLE IF EXISTS `taxonomy_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_action_logs`
--

LOCK TABLES `taxonomy_action_logs` WRITE;
/*!40000 ALTER TABLE `taxonomy_action_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_action_logs_extensions`
--

DROP TABLE IF EXISTS `taxonomy_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_action_logs_extensions`
--

LOCK TABLES `taxonomy_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `taxonomy_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `taxonomy_action_logs_extensions` VALUES (1,'com_banners');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (2,'com_cache');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (3,'com_categories');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (4,'com_config');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (5,'com_contact');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (6,'com_content');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (7,'com_installer');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (8,'com_media');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (9,'com_menus');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (10,'com_messages');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (11,'com_modules');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (12,'com_newsfeeds');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (13,'com_plugins');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (14,'com_redirect');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (15,'com_tags');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (16,'com_templates');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (17,'com_users');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (18,'com_checkin');
INSERT INTO `taxonomy_action_logs_extensions` VALUES (19,'com_scheduler');
/*!40000 ALTER TABLE `taxonomy_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_action_logs_users`
--

DROP TABLE IF EXISTS `taxonomy_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_action_logs_users`
--

LOCK TABLES `taxonomy_action_logs_users` WRITE;
/*!40000 ALTER TABLE `taxonomy_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_assets`
--

DROP TABLE IF EXISTS `taxonomy_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_assets`
--

LOCK TABLES `taxonomy_assets` WRITE;
/*!40000 ALTER TABLE `taxonomy_assets` DISABLE KEYS */;
INSERT INTO `taxonomy_assets` VALUES (1,0,0,165,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `taxonomy_assets` VALUES (2,1,1,2,1,'com_admin','com_admin','{}');
INSERT INTO `taxonomy_assets` VALUES (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (6,1,11,12,1,'com_config','com_config','{}');
INSERT INTO `taxonomy_assets` VALUES (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (8,1,17,38,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}');
INSERT INTO `taxonomy_assets` VALUES (9,1,39,40,1,'com_cpanel','com_cpanel','{}');
INSERT INTO `taxonomy_assets` VALUES (10,1,41,42,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `taxonomy_assets` VALUES (11,1,43,44,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (12,1,45,46,1,'com_login','com_login','{}');
INSERT INTO `taxonomy_assets` VALUES (14,1,47,48,1,'com_massmail','com_massmail','{}');
INSERT INTO `taxonomy_assets` VALUES (15,1,49,50,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `taxonomy_assets` VALUES (16,1,51,54,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (17,1,55,56,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (18,1,57,130,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (19,1,131,134,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (20,1,135,136,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (21,1,137,138,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (23,1,139,140,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (24,1,145,148,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (26,1,149,150,1,'com_wrapper','com_wrapper','{}');
INSERT INTO `taxonomy_assets` VALUES (27,8,18,19,2,'com_content.category.2','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (28,3,4,5,2,'com_banners.category.3','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (29,7,14,15,2,'com_contact.category.4','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (30,19,132,133,2,'com_newsfeeds.category.5','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (32,24,146,147,2,'com_users.category.7','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (33,1,151,152,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (34,1,153,154,1,'com_joomlaupdate','com_joomlaupdate','{}');
INSERT INTO `taxonomy_assets` VALUES (35,1,155,156,1,'com_tags','com_tags','{}');
INSERT INTO `taxonomy_assets` VALUES (36,1,157,158,1,'com_contenthistory','com_contenthistory','{}');
INSERT INTO `taxonomy_assets` VALUES (37,1,159,160,1,'com_ajax','com_ajax','{}');
INSERT INTO `taxonomy_assets` VALUES (38,1,161,162,1,'com_postinstall','com_postinstall','{}');
INSERT INTO `taxonomy_assets` VALUES (39,18,58,59,2,'com_modules.module.1','Main Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (40,18,60,61,2,'com_modules.module.2','Login','{}');
INSERT INTO `taxonomy_assets` VALUES (41,18,62,63,2,'com_modules.module.3','Popular Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (42,18,64,65,2,'com_modules.module.4','Recently Added Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (43,18,66,67,2,'com_modules.module.8','Toolbar','{}');
INSERT INTO `taxonomy_assets` VALUES (44,18,68,69,2,'com_modules.module.9','Notifications','{}');
INSERT INTO `taxonomy_assets` VALUES (45,18,70,71,2,'com_modules.module.10','Logged-in Users','{}');
INSERT INTO `taxonomy_assets` VALUES (46,18,72,73,2,'com_modules.module.12','Admin Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (48,18,78,79,2,'com_modules.module.14','User Status','{}');
INSERT INTO `taxonomy_assets` VALUES (49,18,80,81,2,'com_modules.module.15','Title','{}');
INSERT INTO `taxonomy_assets` VALUES (50,18,82,83,2,'com_modules.module.16','Login Form','{}');
INSERT INTO `taxonomy_assets` VALUES (51,18,84,85,2,'com_modules.module.17','Breadcrumbs','{}');
INSERT INTO `taxonomy_assets` VALUES (52,18,86,87,2,'com_modules.module.79','Multilanguage status','{}');
INSERT INTO `taxonomy_assets` VALUES (53,18,90,91,2,'com_modules.module.86','Joomla Version','{}');
INSERT INTO `taxonomy_assets` VALUES (54,16,52,53,2,'com_menus.menu.1','Main Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (55,18,94,95,2,'com_modules.module.87','Sample Data','{}');
INSERT INTO `taxonomy_assets` VALUES (56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}');
INSERT INTO `taxonomy_assets` VALUES (57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}');
INSERT INTO `taxonomy_assets` VALUES (58,56,23,24,3,'com_content.transition.1','Unpublish','{}');
INSERT INTO `taxonomy_assets` VALUES (59,56,25,26,3,'com_content.transition.2','Publish','{}');
INSERT INTO `taxonomy_assets` VALUES (60,56,27,28,3,'com_content.transition.3','Trash','{}');
INSERT INTO `taxonomy_assets` VALUES (61,56,29,30,3,'com_content.transition.4','Archive','{}');
INSERT INTO `taxonomy_assets` VALUES (62,56,31,32,3,'com_content.transition.5','Feature','{}');
INSERT INTO `taxonomy_assets` VALUES (63,56,33,34,3,'com_content.transition.6','Unfeature','{}');
INSERT INTO `taxonomy_assets` VALUES (64,56,35,36,3,'com_content.transition.7','Publish & Feature','{}');
INSERT INTO `taxonomy_assets` VALUES (65,1,141,142,1,'com_privacy','com_privacy','{}');
INSERT INTO `taxonomy_assets` VALUES (66,1,143,144,1,'com_actionlogs','com_actionlogs','{}');
INSERT INTO `taxonomy_assets` VALUES (67,18,74,75,2,'com_modules.module.88','Latest Actions','{}');
INSERT INTO `taxonomy_assets` VALUES (68,18,76,77,2,'com_modules.module.89','Privacy Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (70,18,88,89,2,'com_modules.module.103','Site','{}');
INSERT INTO `taxonomy_assets` VALUES (71,18,92,93,2,'com_modules.module.104','System','{}');
INSERT INTO `taxonomy_assets` VALUES (72,18,96,97,2,'com_modules.module.91','System Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (73,18,98,99,2,'com_modules.module.92','Content Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (74,18,100,101,2,'com_modules.module.93','Menus Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (75,18,102,103,2,'com_modules.module.94','Components Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (76,18,104,105,2,'com_modules.module.95','Users Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (77,18,106,107,2,'com_modules.module.99','Frontend Link','{}');
INSERT INTO `taxonomy_assets` VALUES (78,18,108,109,2,'com_modules.module.100','Messages','{}');
INSERT INTO `taxonomy_assets` VALUES (79,18,110,111,2,'com_modules.module.101','Post Install Messages','{}');
INSERT INTO `taxonomy_assets` VALUES (80,18,112,113,2,'com_modules.module.102','User Status','{}');
INSERT INTO `taxonomy_assets` VALUES (82,18,114,115,2,'com_modules.module.105','3rd Party','{}');
INSERT INTO `taxonomy_assets` VALUES (83,18,116,117,2,'com_modules.module.106','Help Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (84,18,118,119,2,'com_modules.module.107','Privacy Requests','{}');
INSERT INTO `taxonomy_assets` VALUES (85,18,120,121,2,'com_modules.module.108','Privacy Status','{}');
INSERT INTO `taxonomy_assets` VALUES (86,18,122,123,2,'com_modules.module.96','Popular Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (87,18,124,125,2,'com_modules.module.97','Recently Added Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (88,18,126,127,2,'com_modules.module.98','Logged-in Users','{}');
INSERT INTO `taxonomy_assets` VALUES (89,18,128,129,2,'com_modules.module.90','Login Support','{}');
INSERT INTO `taxonomy_assets` VALUES (90,1,163,164,1,'com_scheduler','com_scheduler','{}');
/*!40000 ALTER TABLE `taxonomy_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_associations`
--

DROP TABLE IF EXISTS `taxonomy_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_associations`
--

LOCK TABLES `taxonomy_associations` WRITE;
/*!40000 ALTER TABLE `taxonomy_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_banner_clients`
--

DROP TABLE IF EXISTS `taxonomy_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_banner_clients`
--

LOCK TABLES `taxonomy_banner_clients` WRITE;
/*!40000 ALTER TABLE `taxonomy_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_banner_tracks`
--

DROP TABLE IF EXISTS `taxonomy_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_banner_tracks`
--

LOCK TABLES `taxonomy_banner_tracks` WRITE;
/*!40000 ALTER TABLE `taxonomy_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_banners`
--

DROP TABLE IF EXISTS `taxonomy_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_banners`
--

LOCK TABLES `taxonomy_banners` WRITE;
/*!40000 ALTER TABLE `taxonomy_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_categories`
--

DROP TABLE IF EXISTS `taxonomy_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_categories`
--

LOCK TABLES `taxonomy_categories` WRITE;
/*!40000 ALTER TABLE `taxonomy_categories` DISABLE KEYS */;
INSERT INTO `taxonomy_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',265,'2023-03-09 10:01:54',265,'2023-03-09 10:01:54',0,'*',1);
/*!40000 ALTER TABLE `taxonomy_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_contact_details`
--

DROP TABLE IF EXISTS `taxonomy_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_contact_details`
--

LOCK TABLES `taxonomy_contact_details` WRITE;
/*!40000 ALTER TABLE `taxonomy_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_content`
--

DROP TABLE IF EXISTS `taxonomy_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_content`
--

LOCK TABLES `taxonomy_content` WRITE;
/*!40000 ALTER TABLE `taxonomy_content` DISABLE KEYS */;
INSERT INTO `taxonomy_content` VALUES (4,1,'Adjoining buildings on three sides [BP3]','adjoining-buildings-on-three-sides-bp3','<p>The building has adjoining or attached buildings on three sides (typical
ly one building on each side, and one behind). An example is a building within a block, that is also adjacent to a building in the back.</p>\r\n<p><img alt=\"BP3_diagram_2\" class=\"image-inline\" src=\"
../images/bp3_diagram_2_400x274.jpg\" /></p>\r\n<p>The building shown in black in this plan view has adjoining buildings on three sides.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00'
,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,250,'','',1,2059,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (5,3,'Wholesale trade and storage (warehouse) [COM2]','wholesale-trade-and-storage-com2','<p>All warehouses and storage facilities.</p>\r\n','',1,8,'0000-00-00 00:00
:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,251,'','',1,1013,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (6,4,'Basalt [SPBA]','basalt-spba','<p><a name=\"taxonomy:SPBA\"></a></p>\r\n<p>Basalt is a dark-colored, fine-grained, igneous volcanic rock which is hard and dense
. Individual mineral crystals are typically hard to see with the naked eye, although some kinds can contain larger crystals, or it may have holes that are empty (bubbles) or filled with other minerals.  
Basalts are generally black or dark grey and polish well.  As a result, they are not easily scratched by metal objects. Basalt is often used for paving and ocasionally for wall construction.</p>\r\n<p><i
mg alt=\"SPBA_New Zealand_Bothara_1\" class=\"image-inline\" height=\"244\" src=\"../images/spba_new-zealand_bothara_1_325x244.jpg\" width=\"325\" /></p>\r\n<p>Stone masonry building - walls are likely t
o be a mix of basalt and trachyte stones with variation in block size and colour (J. Bothara)</p>\r\n<p><img alt=\"SPBA_New Zealand_ClarkW_1\" class=\"image-inline\" height=\"230\" src=\"../images/spba_n
ew-zealand_clarkw_1_306x230.jpg\" width=\"306\" /></p>\r\n<p>A stone masonry building built in 1920s in Christchurch, New Zealand; exterior stonework is Halswell basalt with Oamaru limestone facings (W. 
Clark)</p>\r\n<p><img alt=\"SPBA_New Zealand_ClarkW_2\" class=\"image-inline\" src=\"../images/spba_new-zealand_clarkw_2_238x357.jpg\" /></p>\r\n<p>A 19th century stone masonry construction: exterior wal
l wythe is fine grained grey Halswell basalt, with facing stones and base course of pinkish-brown Port Hills trachyte and string courses of speckled Hoon Hay basalt; Canterbury Provincial Buildings compl
ex, Christchurch, New Zealand (W. Clark)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,252,'','',1,15
84,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (7,5,'Soft storey [SOS]','soft-storey-sos','<p>One storey is higher than others, or one storey is weaker than others. A soft or weak storey exists if the height of t
hat storey is at least 15% greater than storeys above or below; or if it has at least 30% fewer columns in the case of a frame system, or at least 30% less full-height structural or infill wall length in
 the case of a wall or infill wall system, or if by other engineering calculation or approximation the storey appears to have 30% less lateral stiffness or strength. This irregularity is often found in b
uildings where open first (ground) storey is used to make space for parking, shops, or offices.</p>\r\n<p><img alt=\"SOS_diagram_Charleson_1\" class=\"image-inline\" height=\"214\" src=\"../images/sos_di
agram_charleson_1_619x214.jpg\" width=\"619\" /></p>\r\n<p>Examples of soft storey configurations (A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p.146, Fig. 9.3).</p>\r\n<
p style=\"text-align: left; \"><img alt=\"Soft Story 1.JPG\" class=\"image-inline\" height=\"313\" src=\"../images/SOS_NewZealand_Charleson_1_234x313.jpg\" width=\"234\" /></p>\r\n<p style=\"text-align: 
left; \">Soft storey in a reinforced concrete building, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"SOS_India_Brzev_1\" class=\"image-inline\" src=\"../images/sos_india_b
rzev_1_400x313.jpg\" /></p>\r\n<p style=\"text-align: left; \">Soft storey in reinforced concrete buildings, India (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"SOS_FEMA454_1\" class=\"ima
ge-inline\" src=\"../images/sos_fema454_1_460x104.jpg\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"SOS_FEMA454_2\" class=\"image-inline\" src=\"../images/sos_fema454_2_318x165.jpg\" /></p>\r\n<
p style=\"text-align: left; \">Olive View Hospital suffered severe damage in the 1971 San Fernando, California, due to discontinuous reinforced concrete shear walls shown shaded on the vertical section d
rawing. A soft two-storey layer of rigid reinforced concrete frames supported a stiff shear wall-frame structure above. Severe damage occurred in the soft storey portion, as shown in the photo (FEMA 454)
.</p>\r\n<p style=\"text-align: left; \"><img alt=\"SOS_USA_Brzev_1\" class=\"image-left\" height=\"238\" src=\"../images/sos_usa_brzev_1_374x238.jpg\" width=\"374\" /></p>\r\n<p style=\"text-align: left
; \"><img alt=\"SOS_FEMAP807_1\" class=\"image-inline\" height=\"333\" src=\"../images/sos_femap807_1_249x333.png\" width=\"249\" /></p>\r\n<p style=\"text-align: left; \">Soft storey wood-frame building
s are common in suburban areas of California (such as <a class=\"external-link\" href=\"https://www.eeri.org/products-page/other-special-reports/soft-story-risk-reduction-lessons-from-the-berkeley-data/\
">Berkeley</a>) and Pacific Northwest, USA. In most cases, these are residential apartment buildings and ground floor is used for parking, as shown on the photo (S. Brzev). An exploded view of a typical 
soft-storey wood-frame building is shown on the drawing (FEMA P-807).</p>\r\n<p style=\"text-align: left; \"><img alt=\"SOS_USA_NISEE_1\" class=\"image-left\" height=\"203\" src=\"../images/sos_usa_nisee
_1-1_305x203.jpg\" width=\"305\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"Soft storey, wood-frame buildings damaged in the 1989 Loma Prieta earthquake, California (EERI)\" class=\"image-inlin
e\" height=\"204\" src=\"../images/SOS_USA_EERI_1_307x204.jpg\" width=\"307\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Several soft-storey wood-fram
e buildings were damaged in the 1994 Northridge earthquake and the 1989 Loma Prieta, California earthquake (left photo: Courtesy of the NICEE, University of California, Berkeley; right photo: EERI Reconn
aissance Team)</p>\r\n<p><img alt=\"SOS_Taiwan_EERI_1\" class=\"image-left\" height=\"238\" src=\"../images/sos_taiwan_eeri_1_359x238.jpg\" width=\"359\" /></p>\r\n<p><img alt=\"SOS_Taiwan_WHE62_1\" clas
s=\"image-inline\" height=\"187\" src=\"../images/sos_taiwan_whe62_1-1_275x187.jpg\" width=\"275\" /></p>\r\n \r\n \r\n<p>Several reinforced concrete frame buildings with open front suffered damage in th
e 1999 Chi Chi, Taiwan earthquake. These buildings had masonry infill walls in the upper storeys. The rigid upper storeys caused significant lateral displacements in the columns at the lower level, as sh
own on the drawing. The photo shows a typical damage observed in these buildings (G.C. Yao and M.S. Sheu, Taiwan, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.
net/category/asia/taiwan\">World Housing Encyclopedia</a> Report 62</span>)</p>\r\n<p><img alt=\"SOS_India_IITB_1\" class=\"image-inline\" src=\"../images/sos_india_iitb_1_453x290.jpg\" /></p>\r\n<p>Seve
ral mixed occupancy buildings with stores at the ground floor were severely damaged or experienced collapse in the 2001 Bhuj, India earthquake (Indian Institute of Technology Bombay and EdM, 2001)</p>\r\
n<p><img alt=\"SOS_India_IITB_3\" class=\"image-left\" height=\"250\" src=\"../images/sos_india_iitb_3_326x250.jpg\" width=\"326\" /><img alt=\"SOS_India_IITB_2\" class=\"image-inline\" height=\"196\" sr
c=\"../images/sos_india_iitb_2_310x196.jpg\" width=\"310\" /></p>\r\n \r\n \r\n<p>Ground floor is used for parking in many reinforced concrete framed buildings in Indian cities. Many buildings of this ty
pe experienced severe damage or collapse in the 2001 Bhuj earthquake. Left photo shows a building with open ground floor adjacent to a similar building that lost its ground floor due to the soft storey e
ffect; right photo shows extensive damage in the columns at the ground floor level due to the earthquake, also due to the soft storey mechanism (Indian Institute of Technology Bombay and EdM, 2001)</p>\r
\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,253,'','',1,6858,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (8,6,'Industrial [IND]','industrial-ind','<p>The building is used for industrial processes and manufacturing.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,254,'','',1,858,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (9,7,'Unknown material of exterior walls [EW99]','unknown-material-ew99','<p><a name=\"taxonomy:EW99\"></a></p>\r\n<p>The material covering the exterior walls is unk
nown. There is insufficient information available or it is not possible to determine the material from a visual survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 
00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,255,'','',1,894,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (10,8,'Masonry, unknown reinforcement [M99]','masonry-unknown-reinforcement-m99','<p><a name=\"taxonomy:M99\"></a></p>\r\n<p>It is clear that the structural material
 is masonry, but the type of reinforcement is unknown. The reinforcing may be hidden, or information about it is unavailable.</p>\r\n<p><img alt=\"M99_Portugal_Brzev_1\" class=\"image-inline\" height=\"3
16\" src=\"../images/m99_portugal_brzev_1_381x316.jpg\" width=\"381\" /></p>\r\n<p>These buildings in Lisbon, Portugal are likely of masonry construction, but it is not known whether reinforcement was pr
ovided (note exterior walls covered by glazed ceramic tiles typical of Portugal) (S. Brzev)</p>\r\n<p><img alt=\"M99_Poland_Scawthorn_1\" class=\"image-inline\" height=\"268\" src=\"../images/m99_poland_
scawthorn_1_510x268.jpg\" width=\"510\" /></p>\r\n<p>These buildings in Vroclaw, Poland are likely of masonry construction, but it is not known whether reinforcement was provided (C. Scawthorn)</p>\r\n',
'',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,256,'','',1,1096,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (11,9,'Entertainment [COM5]','entertainment-com5','<p><span>Restaurants, bars, cafes</span></p>\r\n<p><span><br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'
','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,257,'','',1,888,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (12,10,'T-shape [PLFT]','t-shape-plft','<p>The footprint of the building when viewed in plan resembles the shape of the letter T.</p>\r\n<p><img alt=\"PLFT_San Franc
isco_USA_Googleearth_1\" class=\"image-inline\" height=\"291\" src=\"../images/plft_san-francisco_usa_googleearth_1_377x291.jpg\" width=\"377\" /></p>\r\n<p>A building with T-shaped plan, San Francisco, 
California, USA (Map data ©2013   Google, SIO, NOAA, U.S. Navy, NGA, GEBCO, Image Landsat)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:0
0','0000-00-00 00:00:00','','','',1,258,'','',1,1460,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (13,11,'Curved [RSH7]','curved-rsh7','<p>The roof is curved. It may be of a regular round arched shape, or more irregularly curved when viewed in section.</p>\r\n<p>
<img alt=\"RSH7_Canada_Brzev_3\" class=\"image-inline\" height=\"148\" src=\"../images/rsh7_canada_brzev_3_425x148.jpg\" width=\"425\" /></p>\r\n<p>Curved roof, Rogers Arena, Vancouver, Canada (S. Brzev)
</p>\r\n<p><img alt=\"RSH7_Iran_Naeim_1\" class=\"image-inline\" height=\"242\" src=\"../images/rsh7_iran_naeim_1_325x242.jpg\" width=\"325\" /></p>\r\n<p>Curved roof (earthen dome), Iran (F. Naeim, <spa
n class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/asia/iran\">World Housing Encyclopedia</a> Report 104</span>)</p>\r\n<p><img alt=\"RSH7_Canada_Brzev_1\" 
class=\"image-inline\" src=\"../images/rsh7_canada_brzev_1-1_400x242.jpg\" /></p>\r\n<p>Irregular curved roof, Canada (S. Brzev)</p>\r\n<p><img alt=\"RSH7_Canada_Brzev_2\" class=\"image-inline\" height=\
"340\" src=\"../images/rsh7_canada_brzev_2_339x340.jpg\" width=\"339\" /></p>\r\n<p>Regular curved roof, Canada (S. Brzev)</p>\r\n<p><img alt=\"RSH7_China_Brzev_1\" class=\"image-inline\" src=\"../images
/rsh7_china_brzev_1_400x340.jpg\" /></p>\r\n<p>Curved roof shape, Beijing Capital International Airport, China (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,249,'','',1,1136,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (14,83,'Upper and lower bound for the date of construction or retrofit [YBET]','upper-and-lower-bound-for-the-date-of-construction-or-retrofit-ybet','<p>Lower bound 
and upper bound of the year in which the building was first completed (e.g. 1930-1940). This is the best estimate of construction date if it is not known precisely.</p>','',1,8,'0000-00-00 00:00:00',536,
'','2020-03-04 10:06:59',536,0,'0000-00-00 00:00:00','2020-03-04 10:06:59','0000-00-00 00:00:00','','','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\"
:\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"sh
ow_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_emai
l_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_o
ptions\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,248,'','',1,1071,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (15,13,'Riveted connections [RIV]','riveted-connections-riv','<p>Structural steel members are connected together with steel rivets. Riveted connections are no longer
 used, however they can be found in buildings built before 1950s (this date may differ depending on the country).</p>\r\n<p><span><img alt=\"Riveted connection, Canada (Ojdrovic Engineering)\" class=\"im
age-inline\" src=\"../images/RIV_Canada_OjdrovicEngineering_1_400x194.jpg\" /></span></p>\r\n<p>Riveted connection, Canada (Ojdrovic Engineering)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 
00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,247,'','',1,1374,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (16,14,'Steel, other [SO]','steel-other-so','<p>Any steel construction type that is known but does not fit the descriptions of the other steel construction types in 
this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,238,'','',1,945,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (17,15,'Range of number of storeys below ground [HBBET]','range-of-number-of-storeys-below-ground-hbbet','<p>Recording the number of storeys below ground as a range 
can be used where there is a lack of certainty about the exact number of storeys below ground but the surveyor is able to determine a range. This does not include the ground floor. It includes storage an
d mechanical plant levels only if these cover over 50% of the plan area.<br /><br />HBBET:a,b <br />where a=upper bound and b= lower bound for the range <br />Example: HBET:2,1  <br />(between 1 and 2 le
vels of basement)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,239,'','',1,916,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (18,16,'Wooden structure with light roof covering [RWO1]','wooden-structure-with-light-roof-covering-rwo1','<p>Wooden beams or trusses and joists, supporting light r
oof covering, e.g. corrugated sheets. Also includes curved roof structures e.g. vaulted roofs.</p>\r\n<p><img alt=\"RW01_New Zealand_ClarkW_1\" class=\"image-inline\" height=\"217\" src=\"../images/rw01_
new-zealand_clarkw_1_326x217.jpg\" width=\"326\" /></p>\r\n<p>Timber beams and joists supporting light roofing, New Zealand (W. Clark)</p>\r\n<p><img alt=\"RW1_Cuba_Brzev_1\" class=\"image-inline\" heigh
t=\"251\" src=\"../images/rw1_cuba_brzev_1_335x251.jpg\" width=\"335\" /></p>\r\n<p>Wooden roof truss structure, Cuba (S. Brzev)</p>\r\n<p><img alt=\"RW01_USA_Brzev_2\" class=\"image-inline\" src=\"../im
ages/rw01_usa_brzev_2_400x251.jpg\" /></p>\r\n<p>Wooden roof truss, California, USA (S. Brzev)</p>\r\n<p><img alt=\"Wooden truss structure supporting wooden planks and steel sheet roofing, Chile (S. Brze
v) \" class=\"image-inline\" src=\"../images/RWO1_Chile_Brzev_2_400x251.jpg\" /></p>\r\n<p>Wooden structure supporting wooden planks and steel sheet roofing, Chile (S. Brzev)</p>\r\n<p><img alt=\"Wooden 
truss structure supporting light metal roofing, Chile (S. Brzev)\" class=\"image-inline\" src=\"../images/RWO1_Chile_Brzev_1_400x251.jpg\" /></p>\r\n<p>Wooden truss structure supporting light metal roofi
ng, Chile (S. Brzev)</p>\r\n<p><img alt=\"RW01_Indonesia_Bothara_1\" class=\"image-inline\" src=\"../images/wooden-structure-supporting-light-roofing-corrugated-steel-sheet-indonesia-j.-bothara_400x251.j
pg\" /></p>\r\n<p>Wooden roof structure supporting light metal roofing, Indonesia (J. Bothara)</p>\r\n<p><img alt=\"Wooden beam and joist roof, Peru (S. Brzev)\" class=\"image-inline\" src=\"../images/RW
O1_Peru_Brzev_1_400x251.jpg\" /></p>\r\n<p>Wooden beam and joist roof, Peru (S. Brzev)</p>\r\n<p><img alt=\"RW01_Curico_Chile_MoroniM_1\" class=\"image-inline\" src=\"../images/rw01_curico_chile_moronim_
1_400x251.jpg\" /></p>\r\n<p>A church with a vaulted wooden roof in Curico, Chile damaged in the 2010 Maule, Chile earthquake (M.O. Moroni)</p>\r\n<p><img alt=\"RW01_Canada_Brzev_1\" class=\"image-inline
\" src=\"../images/rw01_canada_brzev_1_400x251.jpg\" /></p>\r\n<p>Curved wooden glulam beams supporting light metal roof covering, Canada (S. Brzev)</p>\r\n<p><img alt=\"RW01_Canada_Brzev_2\" class=\"ima
ge-left\" height=\"282\" src=\"../images/rw01_canada_brzev_2_350x282.jpg\" width=\"350\" /></p>\r\n \r\n<p><img alt=\"RW01_Canada_Brzev_3\" class=\"image-inline\" height=\"193\" src=\"../images/rw01_cana
da_brzev_3_257x193.jpg\" width=\"257\" /></p>\r\n \r\n \r\n \r\n<p>A roof structure consisting of steel decking supported by wooden glulam beams, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 
00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,240,'','',1,2345,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (19,17,'Wood [W]','wood-w','<p>Wood construction may consist of posts or columns and beams as in Post and Beam construction, as light wood framing consisting of clos
ely-spaced posts as in light wood-framed Walls, or as in solid wood construction where thick planks or logs are laid horizontally to create load-bearing Walls.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'
','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,241,'','',1,1212,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (20,18,'Deep foundation, with lateral capacity [FOSDL]','deep-foundation-with-lateral-capacity-fosdl','<p>The foundations are 1m deep or more below grade, and they h
ave lateral capacity. Foundations with lateral capacity include tie-beams, foundation walls, inclined piles, piles or piers on wide spread footings.</p>\r\n \r\n<p><img alt=\"FOSDL_diagram_-_1\" class=\"
image-inline\" src=\"../images/fosdl_diagram_-_1_400x236.jpg\" /></p>\r\n<p>An example of a braced timber pile deep foundation with lateral capacity. This example is a deep foundation that is braced. Ano
ther option is for the deep pile not to be braced but to just act as a  vertical cantilever provided the height of the pile is not too great  above ground level.</p>\r\n','',1,8,'0000-00-00 00:00:00',536
,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,242,'','',1,1896,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (21,19,'Cripple wall [CRW]','cripple-wall-crw','<p>A cripple wall is a wall that is less than a full storey high, and it usually occurs between a foundation and the 
ground floor in a light wood frame building (thus creating a crawl space). These walls are weak because they are typically sheathed with only stucco or horizontal wood siding on the exterior side of the 
wall. These sheathing materials are  inadequate wall-bracing methods. Damage and collapse of older wood frame buildings at the cripple-wall level was observed in past earthquakes.</p>\r\n<p><img alt=\"CR
W_FEMA G225_1\" class=\"image-inline\" src=\"../images/crw_fema-g225_1_400x255.jpg\" /></p>\r\n<p>Cripple wall and crawl space (FEMA G225)</p>\r\n<p><img alt=\"Collapse of a wood-frame house which slid o
ver the cripple wall, 1983 Coalinga, California earthquake (EERI) \" class=\"image-inline\" src=\"../images/CRW_USA_EERI_1_400x255.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P {
 margin-bottom: 0.21cm } --> <!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Collapse of a wood-frame house which slid over the cripple wall, 1983 Coalinga, Calif
ornia earthquake (EERI Reconnaissance Team)</p>\r\n<p><img alt=\"CRW_USA_NISEE_1\" class=\"image-inline\" src=\"../images/crw_usa_nisee_1-1_125x187.jpg\" /></p>\r\n<p>Cripple wall failure in the 1971 San
 Fernando, California earthquake (Courtesy of K.V. Steinbrugge and the NISEE, University of California, Berkeley)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:
00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,243,'','',1,1819,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (22,20,'Wood-reinforced [RW]','wood-reinforced-rw','<p>Masonry walls that are reinforced against earthquake forces by horizontal, vertical, and/or diagonal <span>woo
d</span> members. The <span>wood</span> reinforcement might consist of <span>wood</span> bond beams at eaves level to tie walls together or may be vertical posts attached to walls to reduce the amount of
 earthquake damage.</p>\r\n<p><img alt=\"RW_Pakistan_Bothara_1\" class=\"image-inline\" height=\"218\" src=\"../images/rw_pakistan_bothara_1_468x218.jpg\" width=\"468\" /></p>\r\n<p>Rubble stone masonry 
in mud mortar with timber bands (local name: Bhatar), NWFP, Pakistan (J. Bothara)</p>\r\n<p><img alt=\"RW_India_Rai_2\" class=\"image-inline\" src=\"../images/rw_india_rai_2_400x218.jpg\" /></p>\r\n<p><i
>Taq</i> is a timber-laced masonry construction where horizontal timbers are embedded in masonry walls at each floor level; this is a traditional construction found in Kashmir, India (D. Rai)</p>\r\n<p><
img alt=\"Adobe building with a wood bond beam at eaves level, Peru (M. Blondet)\" class=\"image-inline\" height=\"255\" src=\"../images/RW_Peru_Blondet_1_337x255.jpg\" width=\"337\" /></p>\r\n<p>Adobe b
uilding with a wood bond beam at eaves level, Peru (M. Blondet)</p>\r\n<p><img alt=\"Dhajji Dewari construction in Kashmir, India (D. Rai)\" class=\"image-inline\" height=\"218\" src=\"../images/RW_India
_Rai_1_331x218.jpg\" width=\"331\" /></p>\r\n<p>Dhajji Dewari construction in Kashmir, India (D. Rai)</p>\r\n<p><img alt=\"RW_Portugal_Brzev_3\" class=\"image-left\" height=\"291\" src=\"../images/rw_por
tugal_brzev_3_291x291.jpg\" width=\"291\" /></p>\r\n \r\n<p><img alt=\"RW_Portugal_Brzev_1\" class=\"image-inline\" height=\"238\" src=\"../images/rw_portugal_brzev_1_325x238.jpg\" width=\"325\" /><img a
lt=\"RW_Portugal_Brzev_2\" class=\"image-left\" height=\"236\" src=\"../images/rw_portugal_brzev_2_316x236.jpg\" width=\"316\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>\"Pombalino\"
 buildings in Lisbon, Portugal are historic masonry buildings with wooden bracing members; these buildings were built after the devastating 1755 earthquake - refer to <a class=\"external-link\" href=\"ht
tp://www.world-housing.net/whereport1view.php?id=100099\">World Housing Encyclopedia Report 92</a> (Cardoso, Lopes, Bento, and D\'Ayala) for more information</p>\r\n<p><img alt=\"RW_Chile_Brzev_1\" class
=\"image-left\" height=\"223\" src=\"../images/rw_chile_brzev_1_298x223.jpg\" width=\"298\" /></p>\r\n<p><img alt=\"RW_Chile_Astroza_1\" class=\"image-left\" height=\"217\" src=\"../images/rw_chile_astro
za_1-2_302x217.jpg\" width=\"302\" /></p>\r\n<p><img alt=\"RW_Chile_Astroza_2\" class=\"image-inline\" height=\"253\" src=\"../images/rw_chile_astroza_1-1_318x253.jpg\" width=\"318\" /></p>\r\n<p><img al
t=\"RW_Chile_Astroza_3\" class=\"image-inline\" height=\"193\" src=\"../images/chile_astroza_3_320x193.jpg\" width=\"320\" /></p>\r\n<p>Wood reinforced adobe buildings can be found in Chile (tabiquería d
e madera rellena de adobe). The photo at the top shows a building in Santiago (note the exposed wall portion) and the bottom photos shows a building in Cauquenes damaged in the 2010 Maule earthquake (S. 
Brzev and M. Astroza)</p>\r\n<p><img alt=\"RW_Algeria_Farsi_1\" class=\"image-inline\" height=\"259\" src=\"../images/rw_algeria_farsi_1_322x259.jpg\" width=\"322\" /></p>\r\n<p>Wood-reinforced stone mas
onry, Algeria (M. Farsi)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,244,'','',1,2046,'',0,'','',''
);
INSERT INTO `taxonomy_content` VALUES (23,21,'Type of lateral load-resisting system','type-of-lateral-load-resisting-system','<p><a name=\"taxonomyTag:type-of-lateral-load-resisting-system\"></a></p>\r\n
<p>Lateral load-resisting system is the structural system that provides resistance against horizontal earthquake forces through vertical and horizontal components. It is important to identify the most ap
propriate lateral load-resisting system. Please refer to the descriptions of relevant glossary terms before making the selection.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0
000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,245,'','',1,1048,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (24,22,'Flat [RSH1]','flat-rsh1','<p>The roof is flat. Any roof with a slope of less than 7 degrees.</p>\r\n<p><img alt=\"RSH1_Canada_Brzev_1\" class=\"image-inline\
" height=\"293\" src=\"../images/rsh1_canada_brzev_1_334x293.jpg\" width=\"334\" /></p>\r\n<p>Flat concrete roof (waffle slab system), Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"RSH1_India_Brzev_1
\" class=\"image-inline\" height=\"249\" src=\"../images/rsh1_india_brzev_1_351x249.jpg\" width=\"351\" /></p>\r\n<p>Flat concrete roofs, India (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','00
00-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,246,'','',1,1416,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (25,23,'Material of exterior walls, other [EWO]','material-of-exterior-wall-other-ewo','<p>The material covering the exterior walls is known, but it does not fit any
 of the definitions found in this table.</p>\r\n<p><img alt=\"EWO_China_Brzev_1\" class=\"image-left\" src=\"../images/ewpl_china_brzev_1_400x221.jpg\" /></p>\r\n<p><img alt=\"EWO_China_Brzev_2\" class=\
"image-inline\" height=\"201\" src=\"../images/ewpl_china_brzev_2_268x201.jpg\" width=\"268\" /></p>\r\n<p>Exterior shell (walls and the roof) of the National Swimming Center in Beijing, China is made of
 a 0.2 mm thick plastic Teflon-like foil, which simulates bubbles (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00
 00:00:00','','','',1,259,'','',1,975,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (26,24,'Stone, unknown type [SP99]','stone-unknown-type-sp99','<p>It is clear that the structure is stone, but the type of stone is unknown. There is insufficient in
formation or it is not possible to identify the exact type of stone.</p>\r\n<p><img alt=\"SP99_France_BrzevS_1\" class=\"image-inline\" height=\"253\" src=\"../images/spli_france_brzevs_2_327x253.jpg\" w
idth=\"327\" /></p>\r\n<p>Stone masonry building, Southern France (S. Brzev)</p>\r\n<p><img alt=\"SP99_France_BrzevS_2\" class=\"image-left\" height=\"297\" src=\"../images/spli_france_brzevs_3_335x297.j
pg\" width=\"335\" /></p>\r\n \r\n<p><img alt=\"SP99_France_BrzevS_3\" class=\"image-inline\" height=\"215\" src=\"../images/spli_france_brzevs_4_292x215.jpg\" width=\"292\" /></p>\r\n \r\n \r\n<p>Stone 
masonry building, museum, Antibes, France (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,26
0,'','',1,1101,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (27,25,'Covered parking garage [COM7]','covered-parking-garage-com7','<p><span>Car parking facilities, covered and multi-storey. Does not include flat open lots.</sp
an></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,261,'','',1,930,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (28,26,'Masonry, reinforced [MR]','masonry-reinforced-mr','<p>Masonry wall construction in which reinforcement is embedded in such a manner that two materials act to
gether in resisting forces. The reinforcement resists tension while the masonry resists compression. Reinforcement can take various forms, such as internal steel or wooden rods or bars grouted into mason
ry units or laid in horizontal mortar courses. Alternatively, vertical and/or horizontal wood or reinforced concrete posts or bands can be provided to increase the strength of individual building element
s like walls and or tie them together. In some cases, textile reinforcing which is plastered over is used to reinforce masonry walls.</p>\r\n<p><img alt=\"Masonry, Reinforced - construction\" class=\"ima
ge-left\" height=\"384\" src=\"../images/MR_Canada_McEwan_1_243x384.jpg\" style=\"float: left; \" width=\"243\" /></p>\r\n<span></span>\r\n<span></span>\r\n<p><img alt=\"MR_Canada_Brzev_1\" class=\"image
-inline\" height=\"265\" src=\"../images/mr_canada_brzev_1_370x265.jpg\" width=\"370\" /><br /><br /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"t
ext-align: left; \">Reinforced masonry construction using concrete block masonry and steel reinforcement, Canada (left: B. McEwen; right: Anderson and Brzev, 2009)</p>\r\n<p style=\"text-align: left; \">
<img alt=\"MR_India_Rai_1\" class=\"image-inline\" height=\"306\" src=\"../images/mr_india_rai_1_314x306.jpg\" width=\"314\" /></p>\r\n<p style=\"text-align: left; \">Wood-reinforced brick masonry known 
as Dhaji Dhewari in Kashmir, India (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MR_Peru_N. Tarque_1\" class=\"image-inline\" src=\"../images/mr_peru_n.-tarque_1_400x306.jpg\" /></p>\r\n<p
 style=\"text-align: left; \">Adobe walls reinforced with a polymer mesh (geogrid) attached to the walls by plastic or nylon strings, Peru (N. Tarque)</p>\r\n<p><img alt=\"Masonry-reinforced-adobe-Peru\"
 class=\"image-inline\" height=\"266\" src=\"../images/MR_Peru_Charleson_1_354x266.jpg\" style=\"float: left; \" width=\"354\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r
\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \">Detail of an adobe wall reinforced with polymer mesh, Peru (A. Char
leson)</p>\r\n<p><img alt=\"Masonry-reinforced-NZ\" class=\"image-inline\" src=\"../images/MR_NewZealand_Charleson_1_400x266.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<spa
n></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: 
left; \">Reinforced concrete block masonry, New Zealand - note vertical reinforcing bars placed in hollow cores (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MR_Chile_Brzev_1\" class=\
"image-inline\" height=\"258\" src=\"../images/mr_chile_brzev_1_344x258.jpg\" width=\"344\" /></p>\r\n<p style=\"text-align: left; \">Reinforced clay block masonry, Chile (S. Brzev)</p>\r\n<p style=\"tex
t-align: left; \"><img alt=\"MR_Chile_WHE5\" class=\"image-inline\" height=\"481\" src=\"../images/mr_chile_whe5_665x481.jpg\" width=\"665\" /></p>\r\n<p style=\"text-align: left; \">Typical reinforcemen
t arrangement, Chile (Moroni, Gomez, and Astroza, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/south-america/chile\">World Housing Encyclopedia</a
> Report 5</span>)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,274,'','',1,4047,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (29,27,'Fired clay unit, unknown type [CL99]','fired-clay-unit-unknown-type-cl99','<p>It is clear that the structural material is <a class=\"internal-link\" href=\"f
ired-clay-brick\">fired clay</a> brick, but the type of brick is unknown. The bricks may be hidden, or it may not be possible to determine solid from hollow brickwork, or information about it is unavaila
ble.</p>\r\n<p><img alt=\"Fired Clay Unit- Unknown Type 1.JPG\" class=\"image-inline\" src=\"../images/CL99_Peru_Brzev_1_400x308.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n
<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-
align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Fired clay brick wall, Chile (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00
',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,275,'','',1,1254,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (30,28,'Floor connections','floor-connections','<p>Classifies floor connections that transfer in-plane forces of floor diaphragms to the lateral load-resisting struc
ture of the building (e.g. walls), and also restrain outward displacements of walls. These connections apply to suspended floor diaphragms only, they do not apply to floors at ground floor level.</p>\r\n
','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,276,'','',1,1217,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (31,29,'Concrete blocks, solid [CBS]','concrete-blocks-solid-cbs','<p><a class=\"internal-link\" href=\"concrete-blocks\">Concrete blocks</a> with less than 30% hole
s (cavities).</p>\r\n<p><img alt=\"CBS_Peru_Charleson_1\" class=\"image-inline\" src=\"../images/cbs_peru_charleson_1_400x228.jpg\" /></p>\r\n<p>Concrete blocks, solid, Peru (A. Charleson)</p>\r\n','',1,
8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,277,'','',1,1218,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (32,30,'Wood [RWO]','wood-rwo','<p>The roof structure is constructed of wood</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00
:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,278,'','',1,1004,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (33,31,'Airport [COM10]','airport-com10','<p>A building or group of buildings that accompany a landing strip for aircraft, for loading and unloading of passengers.</
p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,279,'','',1,1548,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (34,32,'Deep foundation, no lateral capacity [FOSDN]','deep-foundation-no-lateral-capacity-fosdn','<p>The foundations are 1m deep or more below grade, and they have 
no lateral capacity. Foundations with no lateral capacity include piles without lateral bracing support.</p>\r\n \r\n<p><img alt=\"FOSDN_diagram_-_1\" class=\"image-inline\" src=\"../images/fosdn_diagram
_-_1_400x236.jpg\" /></p>\r\n<p>An example of a timber pile deep foundation with no lateral capacity.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00
-00 00:00:00','0000-00-00 00:00:00','','','',1,280,'','',1,1779,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (35,33,'Roof covering','roof-covering','<p>The material that covers the roof. In most cases this is different to the material of the roof system, but in some cases t
he roof covering will be the same as the roof system. In both cases, both the roof covering and the roof system should be defined where they are known. Where there are multiple covering materials present
 on the roof(s), choose the covering that covers more of the roof(s) by area than any other covering material.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00'
,'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,281,'','',1,854,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (36,34,'Concrete blocks, hollow [CBH]','concrete-blocks-hollow-cbh','<p><a class=\"internal-link\" href=\"concrete-blocks\">Concrete blocks</a> with two or more cell
s (cavities) comprising more than 30% of the volume, which may be grouted and reinforced.</p>\r\n<p><img alt=\"Concrete blocks hollow 1.JPG\" class=\"image-inline\" src=\"../images/CBH_Peru_Brzev_1_400x2
24.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Hollow concrete blocks, Peru (S. Brzev)</p>\r\n<p><img alt=\"Hollow Concrete Blocks 1.JPG\" c
lass=\"image-inline\" height=\"228\" src=\"../images/CBH_Haiti-Canada_Brzev_1_503x228.jpg\" style=\"float: left; \" width=\"503\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align:
 left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-alig
n: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Hollow concrete blocks with three cells, Haïti (front) and with two cells, Canada (rear), (S. Brzev)</p>\r\n'
,'',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,282,'','',1,1616,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (37,35,'Setback [SET]','setback-set','<p>Abrupt change in elevational profile, such as in a building with tower and podium that creates a notch effect. A setback exi
sts if the horizontal dimension of the seismic force-resisting system in any story is more than 130% of that in an adjacent story. Note that the Setback irregularity is a special albeit common case of <a
 class=\"internal-link\" href=\"change-in-vertical-structure-include-large-overhangs-chv\">Change in Vertical Structure</a>, and therefore it has its own definition.</p>\r\n<p align=\"LEFT\"><img alt=\"S
ET_diagram_Charleson_1\" class=\"image-inline\" src=\"../images/set_diagram_charleson_1_400x247.jpg\" /></p>\r\n<p align=\"LEFT\">Simplified examples of typical building shapes that have setbacks (A. Cha
rleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p154 fig. 9.21).</p>\r\n<p><img alt=\"An example of a building with several setbacks (FEMA 2002)\" class=\"image-inline\" src=\"../
images/SET_-_FEMA154_1_400x247.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p align=\"LEFT\">An example of a building with several setbacks (FEMA 1
54, 2002)</p>\r\n<p align=\"LEFT\"><img alt=\"SET_Canada_Brzev_1\" class=\"image-inline\" height=\"328\" src=\"../images/set_canada_brzev_1_333x328.jpg\" width=\"333\" /></p>\r\n<p align=\"LEFT\">A build
ing with a setback, Vancouver, Canada (S. Brzev)</p>\r\n<p align=\"LEFT\"><img alt=\"SET_Florida_USA_Brzev_1\" class=\"image-inline\" height=\"240\" src=\"../images/set_florida_usa_brzev_1_321x240.jpg\" 
width=\"321\" /></p>\r\n<p align=\"LEFT\">A building with a setback, Fort Lauderdale, Florida, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,273,'','',1,1897,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (38,36,'Informal housing [RES6]','informal-housing-res6','<p><span>Any form of shelter or settlement which is illegal, falls outside of government control or regulat
ion, or is not afforded protection by the state. </span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',
1,272,'','',1,961,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (39,37,'Steel connections, unknown [SC99]','steel-connections-unknown-sc99','<p>It is clear that the structure is steel, but the type of steel connections is unknown
. The connections are not visible or there is insufficient information to determine their type.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00
:00:00','0000-00-00 00:00:00','','','',1,271,'','',1,856,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (40,38,'Mud mortar [MOM]','mud-mortar-mom','<p><span>Soil  is mixed with water and used as <a class=\"internal-link\" href=\"mortar\">mortar</a> for various types of
 masonry construction. It is characterized by earthen colour, and it can be easily scratched (removed) from the wall using a sharp object (like a key).This type of mortar can be found mostly in adobe con
struction (e.g. Latin America and  Asia), and stone masonry housing construction in remote rural areas where cement and/or lime are either unavailable or too expensive (e.g. south-east Asia). Mud mortar 
is a low-strength mortar, and it is the weakest of all mortar types. </span></p>\r\n<p><span><img alt=\"Mud mortar and adobe blocks (S. Brzev)\" class=\"image-inline\" src=\"../images/MOM_Peru_Brzev_1_40
0x271.jpg\" /></span></p>\r\n<p>Mud mortar and adobe blocks, Peru (S. Brzev)</p>\r\n<p><img alt=\"Mud mortar and fired clay bricks (D. Rai)\" class=\"image-inline\" src=\"../images/MOM_India_Rai_1_400x27
1.jpg\" /></p>\r\n<p>Mud mortar and fired clay bricks, India (D. Rai)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:
00','','','',1,262,'','',1,6312,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (41,39,'Reinforced concrete bands [RCB]','reinforced-concrete-bands-rcb','<p>There are horizontal bands of reinforced concrete within a masonry wall. Usually at plin
th, lintel or roof level.</p>\r\n<p><img alt=\"Stone masonry buildings with reinforced concrete bands at the lintel level, India (S. Brzev)\" class=\"image-inline\" src=\"../images/RCB_India_Brzev_1_400x
194.jpg\" /></p>\r\n<p>Stone masonry buildings with reinforced concrete bands at the lintel level, India (S. Brzev)</p>\r\n<p><img alt=\"Stone masonry bulding with a reinforced concrete band at lintel le
vel, Nepal (M. Schildkamp)\" class=\"image-inline\" src=\"../images/RCB_Nepal_Schildkamp_1_400x194.jpg\" /></p>\r\n<p>Stone masonry bulding with a reinforced concrete band at lintel level, Nepal (M. Schi
ldkamp)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,263,'','',1,2759,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (42,40,'10-19 Units [RES2D]','10-19-units-res2d','<p><span>Apartments, condominiums, townhouses of 10-19 units. Residential units are structurally connected.</span><
/p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,264,'','',1,1091,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (43,41,'Other vertical irregularity [IRVO]','other-vertical-irregularity-irvo','<p>A Vertical Irregularity, not defined as any of the other Vertical Irregularity def
initions in this table, that is likely to adversely affect the earthquake performance of the building.</p>\r\n<p>Examples include weight (mass) irregularity where the weight of one floor is greater than 
150% of an adjacent floor, and in-plane discontinuity where an in plane-offset of a vertical lateral load-resisting system causes greater overturning demands on the supporting structure. An example is wh
ere, say a braced frame at ground level consists of two bays, but there are three bays above. Other vertical irregularities include non-concentric column-beam joints.</p>\r\n<p><img alt=\"Weight (mass) i
rregularity (FEMA 2006)\" class=\"image-inline\" src=\"../images/IRVO_-_FEMA454_1_400x270.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p align=\"LEFT\
">Weight (mass) irregularity (FEMA 454)</p>\r\n<p align=\"LEFT\"> </p>\r\n<p align=\"LEFT\"><img alt=\"In-plane discontinuity (FEMA 2006)\" class=\"image-inline\" src=\"../images/IRVO_-_FEMA454_2_400x270
.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p align=\"LEFT\">In-plane discontinuity (FEMA 454, 2006)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','
0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,265,'','',1,1744,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (44,42,'Unknown material [MAT99]','unknown-material-mat99','<p><span>The lateral load-resisting system material is unknown due to it being unclear which material is 
used. The material may be hidden, or information about it is unavailable.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-0
0-00 00:00:00','','','',1,266,'','',1,985,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (45,43,'Cement-based boards for exterior walls [EWCB]','cement-based-boards-ewcb','<p>Fibre cement or asbestos boards, and fibre-reinforced concrete (FCR) and glass 
reinforced concrete (GRC) panels.</p>\r\n<p><img alt=\"EWCB_Canada_Brzev_1\" class=\"image-left\" height=\"254\" src=\"../images/ewcb_canada_brzev_1_326x254.jpg\" width=\"326\" /><img alt=\"EWCB_Canada_B
rzev_2\" class=\"image-inline\" height=\"201\" src=\"../images/ewcb_canada_brzev_2_278x201.jpg\" width=\"278\" /></p>\r\n \r\n \r\n<p>Exterior walls made of corrugated asbestos sheets, Canada (S. Brzev)<
/p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,267,'','',1,1322,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (46,44,'Composite steel roof deck and concrete slab [RME3]','composite-steel-deck-and-concrete-slab-rme3','<p>Reinforced concrete cast onto steel decking, supported 
by beams or load bearing walls. They are sometimes overlaid with light-weight roofing. This system is similar to the floor system called <a class=\"internal-link\" href=\"composite-steel-deck-and-concret
e-slab-fme3\">Composite Steel Floor Deck and Concrete Slab</a>.</p>\r\n<p><img alt=\"RME3_Canada_Brzev_2\" class=\"image-inline\" height=\"221\" src=\"../images/rme3_canada_brzev_2_294x221.jpg\" width=\"
294\" /></p>\r\n<p>Composite steel deck and concrete slab supported by steel trusses, Canada (S. Brzev)</p>\r\n<p><img alt=\"RME3_Canada_Brzev_1\" class=\"image-inline\" height=\"224\" src=\"../images/rm
e3_canada_brzev_1_298x224.jpg\" width=\"298\" /></p>\r\n<p>Steel trusses (Open Web Steel Joists) supported by precast concrete tilt-up walls, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'
','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,268,'','',1,2564,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (47,45,'Metal exterior walls [EWME]','metal-ewme-weme','<p>All types of metal cladding and wall materials. Includes aluminum planks, corrugated steel sheets (CGI) or
 aluminium sheets, aluminium composite sheets, copper sheets, wire mesh and perforated sheet metal.</p>\r\n<p><img alt=\"EWME_Canada_BrzevS_1\" class=\"image-left\" height=\"302\" src=\"../images/ewme_ca
nada_brzevs_1_314x302.jpg\" width=\"314\" /><img alt=\"EWME_Canada_BrzevS_2\" class=\"image-inline\" height=\"246\" src=\"../images/ewme_canada_brzevs_2_280x246.jpg\" width=\"280\" /></p>\r\n \r\n \r\n<p
>A building with exterior walls made of aluminum sheets, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWME_Canada_BrzevS_3\" class=\"image-left\" height=\"227\" src=\"../images/ewme_canada_brzevs_3_
303x227.jpg\" width=\"303\" /><img alt=\"EWME_Canada_BrzevS_4\" class=\"image-inline\" height=\"222\" src=\"../images/ewme_canada_brzevs_4_321x222.jpg\" width=\"321\" /></p>\r\n \r\n<p>Corrugated steel s
heets, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWME_Kenya_Jaiswal_1\" class=\"image-inline\" src=\"../images/ewme_kenya_jaiswal_1_400x222.jpg\" /></p>\r\n<p>Exterior wall made of corrugated metal sheets, 
Kenya (K. Jaiswal)</p>\r\n<p><img alt=\"EWME_India_Brzev_1\" class=\"image-inline\" height=\"317\" src=\"../images/ewme_india_brzev_1_317x317.jpg\" width=\"317\" /></p>\r\n<p>Corrugated metal sheets used
 as exterior cladding, India (S. Brzev)</p>\r\n<p><img alt=\"EWME_Sweden_Scawthorn_1\" class=\"image-left\" height=\"329\" src=\"../images/ewme_sweden_scawthorn_1_247x329.jpg\" width=\"247\" /><img alt=\
"EWME_Sweden_Scawthorn_2\" class=\"image-inline\" height=\"268\" src=\"../images/ewme_sweden_scawthorn_2_201x268.jpg\" width=\"201\" /></p>\r\n \r\n \r\n \r\n<p>HSB Turning Torso in Malmö, Sweden has alu
minum exterior walls (C. Scawthorn)</p>\r\n<p><img alt=\"EWME_USA_Scawthorn_1\" class=\"image-inline\" height=\"209\" src=\"../images/ewme_usa_scawthorn_1_314x209.jpg\" width=\"314\" /></p>\r\n<p>Stainle
ss steel exterior walls in a high-rise building, New York City, USA (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000
-00-00 00:00:00','','','',1,269,'','',1,1125,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (48,46,'Range of height of ground floor level above grade [HFBET]','range-of-height-of-ground-floor-level-above-grade-hfbet','<p>Recording the range of height of gro
und floor level above grade is used where the exact height is uncertain but it is possible for the surveyor to determine a range, or where the height varies more than 1m and the maximum and minimum heigh
t can be recorded. <br /><br />Units: metres<br /><br />HFBET:a,b <br />where a= upper bound and b=lower bound  <br /><br />Example: HFBET: 1.5,0.5  (height ranges between 1.5 m and 0.5 m)</p>\r\n','',1,
8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,270,'','',1,893,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (49,47,'Temporary lodging [RES3]','temporary-lodging-res3','<p>Guest accommodation; including hotels, motels, guest lodges, cabins, and holiday accommodation.</p>\r\
n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,283,'','',1,929,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (50,48,'Metal floor beams supporting precast concrete slabs [FME2]','metal-beams-supporting-precast-concrete-slabs-fme2','<p>Precast concrete slabs (e.g. hollow-core
 slabs) supported by steel beams.</p>\r\n \r\n<p><img alt=\"Metal beams supporting precast concrete slabs, India (S. Brzev)\" class=\"image-inline\" src=\"../images/FME2-RME2_India_Brzev_1_400x238.jpg\" 
/></p>\r\n<p><span class=\"contenttype-undefined\">Metal beams supporting precast concrete slabs, India (S. Brzev)</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,190,'','',1,2152,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (51,49,'Building occupancy class - general','building-occupancy-class-general','<p>The main overall type of occupancy</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0
000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,203,'','',1,1050,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (52,50,'Rectangular, with an opening in plan [PLFRO]','rectangular-with-an-opening-plfro','<p><a name=\"taxonomy:PLFRO\"></a></p>\r\n<!-- P { margin-bottom: 0.21cm; 
direction: ltr; color: rgb(0, 0, 0); }P.western { font-family: \"Liberation Serif\",\"MS PMincho\",serif; font-size: 12pt; }P.cjk { font-family: \"Droid Sans\",\"AVGmdBU\"; font-size: 12pt; }P.ctl { font
-family: \"Lohit Hindi\",\"AVGmdBU\"; font-size: 12pt; } -->\r\n<p class=\"western\">Same as PLFR but with an open internal courtyard or full height roofed atrium.</p>\r\n<p class=\"western\"><img alt=\"
PLFRO_Canada_Ottawa_Googleearth_1\" class=\"image-inline\" height=\"248\" src=\"../images/plfro_canada_ottawa_googleearth_1_267x248.jpg\" width=\"267\" /></p>\r\n<p class=\"western\">This building in Ott
awa, Canada has a rectangular-shaped plan with an interior opening (atrium) (Map data ©2013  Google, DigitalGlobe)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00
:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,204,'','',1,1126,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (53,51,'Material type','material-type','<p>The material of the structural members that resist lateral loads and are the part of the <a class=\"internal-link\" href=\
"lateral-load-resisting-system\">Lateral Load-Resisting System</a>.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00
','','','',1,205,'','',1,1187,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (54,52,'Solar panelled roofs [RMT10]','solar-panelled-roofs-rmt10','<p>Roofs where photovoltaic solar panels or solar hot water panels cover more of the roof area th
an any other roof covering material. There are two types of photovoltaic solar panelled roofs: Solar Photovoltaic Roofs and Building Integrated Photovoltaics. Solar photovoltaic roofs either completely d
isplace conventional roof covering, or are installed over the existing conventional roof and attached to it via special mounting. Building Integrated Photovoltaics (BIPV) refer to photovoltaics modules w
hich are directly incorporated into a building envelope by replacing conventional roof covering with photovoltaic elements.</p>\r\n<p><img alt=\"RMT10_Serbia_StamenicL_1\" class=\"image-inline\" src=\"..
/images/rmt10_serbia_stamenicl_1_400x196.jpg\" /></p>\r\n<p>Solar photovoltaic roof, Belgrade, Serbia (L. Stamenic)</p>\r\n<p><img alt=\"RMT10_Canada_Stamenic_1\" class=\"image-left\" height=\"396\" src=
\"../images/rmt11_canada_stamenic_1_311x396.jpg\" width=\"311\" /><img alt=\"RMT10_Canada_Stamenic_2\" class=\"image-inline\" height=\"192\" src=\"../images/rmt10_canada_stamenic_2_282x192.jpg\" width=\"
282\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Solar photovoltaic roof (exterior and interior view), Canada (L. Stamenic)</p>\r\n<p><img alt=\"RMT10_Germany_Stamenic_1\" class=\"image-inline\
" src=\"../images/rmt10_germany_stamenic_1_400x192.jpg\" /></p>\r\n<p>Building Integrated Photovoltaics in a fire hall, Germany (L. Stamenic)</p>\r\n<p><img alt=\"RMT10_USA_Brzev_1\" class=\"image-inline
\" src=\"../images/rmt10_usa_brzev_1_400x192.jpg\" /></p>\r\n<p>Solar Photovoltaic Roof, California (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00'
,'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,206,'','',1,1109,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (55,53,'Wall [LWAL]','wall-lwal','<p>A wall is a vertical planar building element which usually resists gravity loads, but also resists horizontal forces and provide
s stability to a building during an earthquake. Usually its length is greater than 6 times its thickness. Any vertical elements, like studs in light wood framed walls, are to be included in assessing the
 wall thickness.</p>\r\n<p>Wall describes the lateral load-resisting structure comprising of walls and frames where the walls, due to their substantial lengths, resist the vast majority of the lateral lo
ad.  Walls may be monolithic as in the case of reinforced concrete walls, or be of masonry construction. They can also comprise several materials as in the case of confined masonry construction with its 
system of masonry walls and reinforced concrete confining columns and beams, light wood framing with its sheet lining combining with the wood to provide earthquake bracing, or walls where mud has been ap
plied to a light wood framework as in quincha construction.</p>\r\n<p>Also within the definition of walls, coupled-walls or coupled-shear walls are to be included. These structures consist of two or more
 walls in the same plane (forming walls with openings up their heights) that are connected usually at every story by beams whose span-to-depth ratios are much smaller than for conventional beams.</p>\r\n
<p style=\"text-align: left; \"><img alt=\"LWAL_diagram_Charleson_1\" class=\"image-inline\" height=\"316\" src=\"../images/lwal_diagram_charleson_1_354x316.jpg\" width=\"354\" /></p>\r\n<p style=\"text-
align: left; \">A simplified drawing of a building with shear walls (A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2).</p>\r\n<p style=\"text-align: left; \"
><img alt=\"wall 1.JPG\" class=\"image-left\" height=\"237\" src=\"../images/LWAL_Peru_Brzev_1_277x237.jpg\" width=\"277\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; 
\"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left
; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n \r\n<p>Walls, quincha construction, Peru (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"Wall 2.JPG\" class=\"image-left\" height=\"21
5\" src=\"../images/LWAL_NewZealand_Charleson_1_287x215.jpg\" width=\"287\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"><img alt=\"LWAL_Nepal_Porter_1\" class=\"ima
ge-inline\" height=\"181\" src=\"../images/lwal_nepal_porter_1_347x181.jpg\" width=\"347\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Wall, precast concrete, New Z
ealand (left - A. Charleson) and Denver, USA (right - K. Porter)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LWAL_USA_Scawthorn_1\" class=\"image-left\" height=\"206\" src=\"../images/lwal_usa_scaw
thorn_1_318x206.jpg\" width=\"318\" /><img alt=\"LWAL_USA_Scawthorn_2\" class=\"image-inline\" height=\"208\" src=\"../images/lwal_usa_scawthorn_2_318x208.jpg\" width=\"318\" /></p>\r\n<p style=\"text-al
ign: left; \">A cast-in-place reinforced concrete building with a Wall lateral load-resisting system, Oakland, California, USA (C. Scawthorn)</p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"te
xt-align: left; \"><img alt=\"LWAL_Peru_Brzev_2\" class=\"image-inline\" src=\"../images/lwal_peru_brzev_2_400x208.jpg\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete wall building under 
construction, Lima, Peru (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LWAL_New Zealand_Bothara_1\" class=\"image-inline\" height=\"230\" src=\"../images/lfinf_nepal_bothara_1-1_333x230.jp
g\" width=\"333\" /></p>\r\n<p>Pre-1976 in-situ reinforced concrete wall construction, Christchurch, New Zealand (J. Bothara)</p>\r\n<p style=\"text-align: left; \"><img alt=\"Wall 3.JPG\" class=\"image-
inline\" height=\"232\" src=\"../images/LWAL_NewZealand_Charleson_2_310x232.jpg\" width=\"310\" /></p>\r\n<p style=\"text-align: left; \">Wall, unreinforced masonry, New Zealand (A. Charleson)</p>\r\n<p 
style=\"text-align: left; \"><img alt=\"LWAL_New Zealand_Charleson_1\" class=\"image-left\" height=\"318\" src=\"../images/lwal_new-zealand_charleson_1_240x318.jpg\" width=\"240\" /><img alt=\"LWAL_Canad
a_Brzev_1\" class=\"image-inline\" height=\"249\" src=\"../images/lwal_canada_brzev_1_317x249.jpg\" width=\"317\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\
r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Wood stud walls (left) and cold-formed steel stud wall (right) act as the Wall system for the purpose of Lateral Load-Resisting
 System classification; left photo shows a wood stud wall from New Zealand (A. Charleson), and the right photo shows a cold-formed steel stud wall from Canada (S. Brzev)</p>\r\n<p style=\"text-align: lef
t; \"><img alt=\"LWAL_Canada_Brzev_2\" class=\"image-inline\" height=\"277\" src=\"../images/lwal_canada_brzev_2_297x277.jpg\" width=\"297\" /></p>\r\n<p style=\"text-align: left; \">Confined masonry act
s like a Wall system (<a class=\"external-link\" href=\"http://www.confinedmasonry.org/risk-management-solutions-supports-network/design-guideline-working-group\">Seismic Design Guide for Low-Rise Masonr
y Buildings</a>, EERI and IAEE)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LWAL_India_Rawal_1\" class=\"image-inline\" height=\"179\" src=\"../images/lwal_india_rawal_1_380x179.jpg\" width=\"380\"
 /></p>\r\n<p style=\"text-align: left; \">Assam type construction consists of small-sized wood columns and beams which are braced with ikra walls; this acts like a Wall system since connections between 
the wooden members are unable to transfer bending moments; this traditional construction in Assam, India has shown good performance in past earthquakes (People in Centre)</p>\r\n<p style=\"text-align: le
ft; \"><img alt=\"LWAL_India_Rai_1\" class=\"image-inline\" height=\"221\" src=\"../images/lwal_india_rai_1_264x221.jpg\" width=\"264\" /></p>\r\n<p style=\"text-align: left; \">Dhaji Dhewari buildings i
n Kashmir, India consist of wood-reinforced brick masonry walls (D. Rai)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LWAL_Kyrgyzstan_Kanbolotov_2\" class=\"image-left\" height=\"306\" src=\"../imag
es/lwal_kyrgyzstan_kanbolotov_2_275x306.jpg\" width=\"275\" /><img alt=\"LWAL_Kyrgyzstan_Kanbolotov_1\" class=\"image-inline\" height=\"242\" src=\"../images/lwal_kyrgyzstan_kanbolotov_1_322x242.jpg\" wi
dth=\"322\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Cast-in place concrete wal
l construction, Kyrgyzstan (K. Kanbolotov)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,207,'','',1,
2898,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (56,54,'Metal floor, unknown [FME99]','metal-unknown-fme99','<p>It is clear that the floor structure is made from metal, but the type of metal structural system is u
nknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00
:00:00','','','',1,208,'','',1,825,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (57,55,'Concrete blocks','concrete-blocks','<p>Concrete blocks are hollow or solid masonry units consisting of Portland cement and suitable aggregates combined with 
water. These blocks are usually laid in mortar. The following types of concrete blocks are included in the Taxonomy:</p>\r\n<ul>\r\n<li><a class=\"internal-link\" href=\"concrete-blocks-unknown-type-cb99
\">Concrete blocks, unknown type</a></li>\r\n<li><a class=\"internal-link\" href=\"concrete-blocks-solid-cbs\">Concrete blocks, solid</a></li>\r\n<li><a class=\"internal-link\" href=\"concrete-blocks-hol
low-cbh\">Concrete blocks, hollow</a></li>\r\n</ul>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,209,'',
'',1,1156,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (58,56,'Floor-wall diaphragm connection present [FWCP]','floor-wall-diaphragm-connection-present-fwcp','<p>There are connections between the floor diaphragm(s) and t
he walls, capable of transferring in-plane forces from roof to wall and restraining outward displacements of walls.</p>\r\n<p><img alt=\"FWCP_WHE stonemasonry 4-13\" class=\"image-inline\" height=\"330\"
 src=\"../images/fwcp_whe-stonemasonry-4-13_558x330.jpg\" width=\"558\" /></p>\r\n<p>Examples of retrofit methods to improve strength of existing wall-to-floor connections in stone masonry buildings with
 wooden floors (<a class=\"external-link\" href=\"http://www.world-housing.net/wp-content/uploads/2011/06/Stone_Masonry_English.pdf\">Improving the Seismic Performance of Stone Masonry Buildings</a>, Bot
hara and Brzev, EERI, 2011)</p>\r\n<p><img alt=\"FWCP_WHE stonemasonry 4-15\" class=\"image-inline\" height=\"498\" src=\"../images/fwcp_whe-stonemasonry-4-15_593x498.jpg\" width=\"593\" /></p>\r\n<p>Exa
mples of retrofit methods to improve strength of wall-to-floor connections in stone masonry buildings with reinforced concrete floors (<a class=\"external-link\" href=\"http://www.world-housing.net/wp-co
ntent/uploads/2011/06/Stone_Masonry_English.pdf\">Improving the Seismic Performance of Stone Masonry Buildings</a>, Bothara and Brzev, EERI, 2011)</p>\r\n<p><img alt=\"FWCP_-_FEMA_1\" class=\"image-inlin
e\" height=\"322\" src=\"../images/fwcp_-_fema172_1_491x322.jpg\" width=\"491\" /></p>\r\n<p>Example of retrofit method to improve strength of wall-to-floor connections of a wood diaphragm - note: N refe
rs to New and E refers to Existing components (FEMA 172, 1992)</p>\r\n<p><img alt=\"FWCP_-_FEMA_2\" class=\"image-inline\" height=\"363\" src=\"../images/fwcp_-_fema172_2_490x363.jpg\" width=\"490\" /></
p>\r\n<p>Example of retrofit method to improve strength of wall-to-floor  connections of a<a class=\"internal-link\" href=\"composite-steel-deck-and-concrete-slab-fme3\"> composite concrete slab and stee
l deck diaphragm</a> to a concrete or masonry wall; note: N refers to New and E refers to Existing components (FEMA 172, 1992)</p>\r\n<p><img alt=\"FWCP_Canada_Brzev_1\" class=\"image-left\" height=\"239
\" src=\"../images/fwcp_canada_brzev_1_321x239.jpg\" width=\"321\" /></p>\r\n<p><img alt=\"FWCP_Canada_Brzev_2\" class=\"image-inline\" height=\"231\" src=\"../images/fwcp_canada_brzev_2_307x231.jpg\" wi
dth=\"307\" /></p>\r\n \r\n<p>A retrofitted unreinforced brick masonry building with floor-wall anchors visible at the exterior, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"FWCP_Seattle_USA_Brzev_1
\" class=\"image-inline\" height=\"283\" src=\"../images/fwcp_seattle_usa_brzev_1_333x283.jpg\" width=\"333\" /></p>\r\n<p>A retrofitted unreinforced brick masonry building showing exposed floor-wall and
 roof-wall anchors at the exterior, Seattle, USA (S. Brzev)</p>\r\n<p><img alt=\"FWCP_Seattle_USA_Brzev_2\" class=\"image-inline\" height=\"151\" src=\"../images/fwcp_seattle_usa_brzev_2_337x151.jpg\" wi
dth=\"337\" /></p>\r\n<p>A typical wall anchor, consisting of a steel rod and an exterior steel plate exposed at the exterior; note that anchor plates are of different shapes and sizes (S. Brzev)</p>\r\n
','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,210,'','',1,5219,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (59,57,'Unknown structural irregularity [IR99]','unknown-structural-irregularity-ir99','<p>It is not known whether there are any structural irregularities, or what t
ype of irregularities may exist. The building hasn’t been inspected sufficiently to determine this, or this information about the building is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','00
00-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,211,'','',1,855,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (60,58,'Roof','roof-1','<p>The structural system supporting the roof cladding of the building. Lean-to roofs or smaller parts of the roof that differ in structural m
aterial to the main roof are not considered.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,202,'','',
1,986,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (61,59,'Earthen roof covering [RMT9]','earthen-rmt9','<p>All roof types of earthen construction, including adobe-type covering with lathes. Includes \'green roof\', 
\'sod roof\', \'turf roof\', where the roof is covered with a layer of soil on a waterproof membrane and planted with grass or plants.</p>\r\n<p><img alt=\"RMT9_Iran_Naeim_1\" class=\"image-inline\" heig
ht=\"285\" src=\"../images/rmt9_iran_naeim_1_383x285.jpg\" width=\"383\" /></p>\r\n<p>Earthen roof covering, Iran (F. Naeim, World Housing Encyclopedia <span class=\"external-link\">Report 104</span>)</p
>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,201,'','',1,1089,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (62,60,'Building occupancy class - detail','building-occupancy-class-detail','<p>A more detailed occupancy description than the <a class=\"internal-link\" href=\"bui
lding-occupancy-class-general\">Building occupancy class - general</a></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00
:00','','','',1,200,'','',1,1223,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (63,61,'Clay or concrete tile roof covering [RMT1]','clay-or-concrete-tile-rmt1','<p>All types of clay tile and concrete tile roofing. Overlapping and sometimes fast
ened to wood battens. Also includes flat roofs that are covered with paving tiles (laid over some type of membrane), but does not include stone slabs.</p>\r\n<p><img alt=\"RMT1_Cuba_Brzev_1\" class=\"ima
ge-inline\" height=\"244\" src=\"../images/rmt1_cuba_brzev_1_326x244.jpg\" width=\"326\" /></p>\r\n<p>Clay tiles, Cuba (S. Brzev)</p>\r\n<p><img alt=\"RMT1_Indonesia_Bothara_1\" class=\"image-inline\" he
ight=\"275\" src=\"../images/rmt1_indonesia_bothara_1_366x275.jpg\" width=\"366\" /></p>\r\n<p>Clay tile roof covering, Padang, Indonesia (J. Bothara)</p>\r\n<p><img alt=\"RMT1_India_Rawal_1\" class=\"im
age-inline\" src=\"../images/rmt1_india_rawal_1_400x275.jpg\" /></p>\r\n<p>Clay tiles (Mangalore tiles), India (People in Centre)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0
000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,191,'','',1,1670,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (64,62,'Masonry, confined [MCF]','masonry-confined-mcf','<p>Masonry construction where masonry walls are first laid and then horizontal and vertical reinforced concr
ete confining elements are cast. In this type of construction the concrete bonds to the masonry and the small-size columns and beams (called tie-columns and tie-beams) confine masonry wall panels. Confin
ed masonry can be classified as the <a class=\"internal-link\" href=\"wall-lwal\">Wall</a> lateral load-resisting system since the masonry bears gravity and lateral loads and the slender columns and beam
s do not constitute rigid frames but rather function as confining members. Construction where columns and beams are constructed <i>before</i> the masonry walls are laid is classified as an <a class=\"int
ernal-link\" href=\"infilled-flat-slab-plate-or-infilled-waffle-slab-lflsinf\"> Infilled Flat Slab/Plate</a>.</p>\r\n<p><img alt=\"Masonry Confined 1.jpg\" class=\"image-inline\" src=\"../images/Masonry 
Confined 1.jpg_400x208.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p s
tyle=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Confined masonry construction, showing that masonry walls are constructed first, followed by reinforced concrete confining elements (T
. Schacher)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MCF_Schacher_2\" class=\"image-inline\" src=\"../images/mcf_schacher_2_400x208.jpg\" /></p>\r\n<p style=\"text-align: left; \">A confined mas
onry building can be recognized by toothing, that is, interface between concrete and masonry wall as shown on the left photo; this is unlike reinforced concrete frame, where frame is constructed first an
d there is no toothing. However, confined masonry in some countries (e.g. Argentina and Indonesia) is practiced without toothing (T. Schacher)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MCF_Haiti_
Benjamin_1\" class=\"image-left\" height=\"261\" src=\"../images/mcf_haiti_benjamin_1_339x261.jpg\" width=\"339\" /><img alt=\"MCF_Haiti_Benjamin_2\" class=\"image-inline\" height=\"263\" src=\"../images
/mcf_haiti_benjamin_2_193x263.jpg\" width=\"193\" /></p>\r\n<p style=\"text-align: left; \">Confined masonry under construction using concrete blocks, Haiti (B. Benjamin)</p>\r\n<p><img alt=\"Masonry con
fined 2.JPG\" class=\"image-inline\" height=\"256\" src=\"../images/Masonry confined 2.JPG_302x256.jpg\" style=\"float: left; \" width=\"302\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\
n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n \r\n<p style=\"text-align: left; \">Confined masonry wall under construction using clay brick units, Chile (S. Brzev
)</p>\r\n<p><img alt=\"MCF_Mexico_Brzev_1\" class=\"image-inline\" src=\"../images/mcf_mexico_brzev_1_400x256.jpg\" /></p>\r\n<p style=\"text-align: left; \">Confined masonry building, Mexico (S. Brzev)<
/p>\r\n<p style=\"text-align: left; \"><img alt=\"MCF_Indonesia_Bothara_1\" class=\"image-inline\" height=\"276\" src=\"../images/mcf_indonesia_bothara_1_353x276.jpg\" width=\"353\" /></p>\r\n<p style=\"
text-align: left; \">Confined masonry construction, Indonesia (J. Bothara)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MCF_Algeria_Farsi_1\" class=\"image-inline\" height=\"223\" src=\"../images/mc
f_algeria_farsi_1_335x223.jpg\" width=\"335\" /></p>\r\n<p style=\"text-align: left; \">Confined stone masonry construction, Algeria (M. Farsi)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00
:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,192,'','',1,2841,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (65,63,'Bamboo, straw or thatch roof [RWO5]','bamboo-straw-or-thatch-roof-rwo5','<p>The surface of the roof is made from reed materials such as bamboo, straw or that
ch; laid onto wood battens, with a primary structure of wood members. No sheet material is used for the roofing.</p>\r\n<p><img alt=\"Thatch roof 1, Nepal (M. Schildkamp)\" class=\"image-inline\" src=\".
./images/RWO5_Nepal_Schildkamp_1_400x332.jpg\" /></p>\r\n<p>Thatch roof, Nepal (M. Schildkamp)</p>\r\n<p><img alt=\"RWO5_Chile_Mihaldzic_1\" class=\"image-inline\" src=\"../images/rwo5_chile_mihaldzic_1_
400x332.jpg\" /></p>\r\n<p>Straw roof, Chile (S. Mihaldzic)</p>\r\n<p><img alt=\"Bamboo roof, Malawi (WHE report 46)\" class=\"image-inline\" src=\"../images/RWO5_Malawi_WHE46_1_400x332.jpg\" /></p>\r\n<
p>Bamboo roof, Malawi (M. Sassu and I. Ngoma, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/africa/malawi\">World Housing Encyclopedia</a> Report 4
6</span>)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,193,'','',1,1906,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (66,64,'Multi-unit, unknown type [RES2]','multi-unit-unknown-type-res2','<p><span>It is clear that the building is a multi-unit residential building, with structural
ly connected neighbouring units or apartments stacked vertically, but the number of dwellings in the building is unknown.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'00
00-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,194,'','',1,1007,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (67,65,'Offices, professional/technical services [COM3]','offices-professional-technical-services-com3','<p><span>All office buildings, including banks, but excludin
g national and local government office buildings. For government buildings refer to GOV1 Government General Services.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-0
0-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,195,'','',1,884,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (68,66,'Vaulted masonry roof [RM1]','vaulted-masonry-rm1','<p>Masonry spans between bearing walls and is overlaid with fill. A flat roof surface is provided and is o
ften overlaid with roofing. Includes two-way vaults and masonry domes.</p>\r\n \r\n<p><img alt=\"Brick masonry vault (M. Lutman)\" class=\"image-inline\" src=\"../images/FM1-RM1_-_Lutman_1_400x301.jpg\" 
/></p>\r\n<p>Brick masonry vault (M. Lutman)</p>\r\n \r\n<p><img alt=\"Brick masonry double vault, Italy (S. Brzev)\" class=\"image-inline\" src=\"../images/FM1-RM1_Italy_Brzev_1_400x301.jpg\" /></p>\r\n
<p>Brick masonry double vault, Italy (S. Brzev)</p>\r\n \r\n<p><img alt=\"Double vaulted masonry roof, Peru (S. Brzev)\" class=\"image-inline\" src=\"../images/RM1_Peru_Brzev_1_400x301.jpg\" /></p>\r\n<p
>Double vaulted masonry roof, Peru (S. Brzev)</p>\r\n \r\n<p><img alt=\"Vaulted masonry roof, Italy (S. Brzev)\" class=\"image-inline\" src=\"../images/RM1_Italy_Brzev_1_400x301.jpg\" /></p>\r\n<p><span 
class=\"contenttype-image\">Vaulted masonry roof, Italy (S. Brzev)</span></p>\r\n \r\n<p><span class=\"contenttype-image\"><img alt=\"Damage of masonry buildings with vaulted masonry roofs in L\'Aquila e
arthquake, Italy (T. Schacher)\" class=\"image-inline\" src=\"../images/RM1_Italy_Schacher_1_400x301.jpg\" /><br /></span></p>\r\n<p>Damage to masonry buildings with vaulted masonry roofs in L\'Aquila ea
rthquake, Italy (T. Schacher)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,196,'','',1,1621,'',0,'',
'','');
INSERT INTO `taxonomy_content` VALUES (69,67,'Vegetative roof covering [RMT8]','vegetative-rmt8','<p>All types of roof covering made from lightweight vegetative material. Includes birch bark roof, split 
stem bamboo, thatched. Does not include planted \'green roofs\' with soil and living plants.</p>\r\n<p><img alt=\"RMT8_Assam_India_Rawal_1\" class=\"image-inline\" src=\"../images/rmt8_assam_india_rawal_
1_400x265.jpg\" /></p>\r\n<p>Thatch roof covering, India (People in Centre)</p>\r\n<p><img alt=\"RMT8_Cuba_Brzev_1\" class=\"image-inline\" src=\"../images/rmt8_cuba_brzev_1_400x265.jpg\" /></p>\r\n<p>Th
atch roof covering, Cuba (S. Brzev)</p>\r\n<p><img alt=\"RMT8_Dominican Republic_BrzevS_1\" class=\"image-inline\" src=\"../images/rmt8_dominican-republic_brzevs_1_400x265.jpg\" /></p>\r\n<p>Thatch roof 
covering, airport building, Dominican Republic (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','',''
,1,197,'','',1,1260,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (70,68,'Hospital/medical clinic [COM4]','hospital-medical-clinic-com4','<p>All medical facilities, including hospitals and clinics.</p>\r\n','',1,8,'0000-00-00 00:00
:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,198,'','',1,879,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (71,69,'Plan irregularity or vertical irregularity','plan-irregularity-or-vertical-irregularity','<p>An indication as to whether a <a class=\"internal-link\" href=\"
plan-irregularity-primary-irpp\">plan structural irregularity</a> and/or a <a class=\"internal-link\" href=\"vertical-structural-irregularity-primary-irvp\">vertical structural irregularity</a> are prese
nt</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,199,'','',1,1318,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (72,70,'Precast prestressed concrete [PCPS]','precast-prestressed-concrete-pcps','<p>As per Precast Concrete, but where members of the Lateral Load-Resisting System 
are prestressed or post-tensioned with steel cables or rods.</p>\r\n<p><img alt=\"Precast Prestressed Concrete 1.jpg\" class=\"image-inline\" src=\"../images/PCPS_Serbia_Dimitrijevic_1_221x245.jpg\" styl
e=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>
\r\n<p style=\"text-align: left; \">Erection of precast concrete columns (R. Dimitrijevic, Serbia, Serbia, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/cat
egory/europe/serbia\">World Housing Encyclopedia</a> Report 68</span>)</p>\r\n<p><img alt=\"Precast Prestressed Concrete 1.jpg\" class=\"image-inline\" src=\"../images/PCPS_Serbia_Dimitrijevic_2_292x199.
jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p 
style=\"text-align: left; \">Precast prestressed concrete building under construction, showing precast slabs and columns (R. Dimitrijevic, Serbia, <span class=\"external-link\"><a class=\"external-link\"
 href=\"http://www.world-housing.net/category/europe/serbia\">World Housing Encyclopedia</a> Report 68</span>)</p>\r\n<p><img alt=\"Precast Prestressed Concrete 3.jpg\" class=\"image-inline\" src=\"../im
ages/PCPS_Serbia_Dimitrijevic_3_400x265.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align
: left; \"> </p>\r\n<p style=\"text-align: left; \">Anchorage of horizontal prestressing cables at the column-to-slab joint (R. Dimitrijevic, Serbia, <span class=\"external-link\"><a class=\"external-lin
k\" href=\"http://www.world-housing.net/category/europe/serbia\">World Housing Encyclopedia</a> Report 68</span>)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:
00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,212,'','',1,1522,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (73,71,'Wood, other [WO]','wood-other-wo','<p>Any <span>wood</span> construction type that is known but does not fit the descriptions of the other <span>wood</span> 
construction types in this table.</p>\r\n<p><img alt=\"WO_Indonesia_Bothara_1\" class=\"image-inline\" src=\"../images/wo_indonesia_bothara_1_367x235.jpg\" /></p>\r\n<p>Wood building, Padang, Indonesia (
J. Bothara)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,213,'','',1,1087,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (74,72,'Light industrial [IND2]','light-industrial-ind2','<p>Factories and facilities considered as light industry. E.g. Factories, telecommunications, textiles, tra
nsportation services, utilities.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,236,'','',1,879,'',0,'
','','');
INSERT INTO `taxonomy_content` VALUES (75,73,'Shallow foundation, with lateral capacity [FOSSL]','shallow-foundation-with-lateral-capacity-fossl','<p>The foundations are less than 1m deep below grade, an
d they have lateral capacity. Foundations with lateral capacity include tie-beams, foundation walls bracing in the direction of their lengths, inclined piles, piles or piers on wide spread footings, cant
ilevered or braced piles, and slabs on grade.</p>\r\n \r\n<p><img alt=\"FOSSL_diagram_-_1\" class=\"image-inline\" src=\"../images/fossl_diagram_-_1_400x240.jpg\" /></p>\r\n<p>An example of a braced timb
er pile shallow foundation that has lateral capacity.</p>\r\n \r\n<p><img alt=\"FOSSL_diagram_-_2\" class=\"image-inline\" src=\"../images/fossl_diagram_-_2_400x240.jpg\" /></p>\r\n<p>An example of a sla
b-on-grade shallow foundation that has lateral capacity.</p>\r\n \r\n<p><img alt=\"FOSSL_NewZealand_Charleson_1\" class=\"image-inline\" src=\"../images/fossl_newzealand_charleson_1_400x240.jpg\" /></p>\
r\n<p><img alt=\"FOSSL_NewZealand_Charleson_2\" class=\"image-inline\" src=\"../images/fossl_newzealand_charleson_2_400x240.jpg\" /></p>\r\n<p>Examples of braced timber pile foundations, New Zealand (Cha
rleson).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,214,'','',1,2633,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (76,74,'Retail trade [COM1]','retail-trade-com1','<p>All retail uses, including retail shops, supermarkets, shopping malls.</p>\r\n','',1,8,'0000-00-00 00:00:00',536
,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,227,'','',1,883,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (77,75,'H-shape [PLFH]','h-shape-plfh','<p>The footprint of the building when viewed in plan resembles the shape of the letter H.</p>\r\n<p><img alt=\"PLFH_Stanford 
Uni_CA_USA_Googleearth_1\" class=\"image-inline\" height=\"319\" src=\"../images/plfh_stanford-uni_ca_usa_googleearth_1_559x319.jpg\" width=\"559\" /></p>\r\n<p>A building with H-shaped plan, Stanford Un
iversity, California, USA (Map data  ©2013   Google, SIO, NOAA, U.S. Navy, NGA, GEBCO, LDEO-Columbia, NSF, Image Landsat)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,228,'','',1,1020,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (78,76,'Dual frame-wall system [LDUAL]','dual-frame-wall-system-ldual','<p>The lateral load-resisting structure comprises of <a class=\"internal-link\" href=\"moment
-frame-lfm\">moment frames</a> and shear walls acting together in the same direction, and it is mostly applicable to reinforced concrete structures. Due to wall slenderness, the structural system cannot 
be classified as a <a class=\"internal-link\" href=\"wall-lwal\">Wall</a> system; however shear walls interact with the moment frames and resist seismic effects. The walls are usually solid (not perforat
ed by openings) and they can be found around the stairwells, elevator shafts, and/or at the perimeter of the building. The walls may have a positive effect on the performance of the frames such as by pre
venting a soft storey collapse. Very slender walls of a dual frame-wall system may or may not have been designed for the level of earthquake forces that could be imposed upon them. Note that the dual fra
me-wall system is a <a class=\"internal-link\" href=\"hybrid-lateral-load-resisting-system-lh\">Hybrid Lateral Load-Resisting System</a>, however it has been identified as a separate system in this taxon
omy. It may be difficult to distinguish a Dual system from the Wall system in a reinforced concrete building. The user will need to have additional information related to the building design and local bu
ilding codes and design practices.</p>\r\n<p><img alt=\"LDUAL_-_Charleson_1\" class=\"image-inline\" src=\"../images/ldual_-_charleson_1_400x374.jpg\" /></p>\r\n<p><span><span>A simplified drawing of a d
ual frame-wall structure running in one direction showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2). <br
 /></span></span></p>\r\n<p><img alt=\"Typical dual frame-wall building, Greece (WHE Report 15)\" class=\"image-left\" height=\"152\" src=\"../images/LDUAL_Greece_WHE15_1_241x152.jpg\" width=\"241\" /></
p>\r\n<p><img alt=\"Plan showing primary lateral load-resisting elements,   Greece (WHE Report 15)\" class=\"image-inline\" height=\"269\" src=\"../images/LDUAL_Greece_WHE15_2_378x269.jpg\" width=\"378\"
 /></p>\r\n<p><span class=\"contenttype-image\">A typical reinforced concrete building with the frame-wall dual system,   Greece (T.P. Tassios and K. Syrmakezis, <span class=\"external-link\"><a class=\"
external-link\" href=\"http://www.world-housing.net/category/europe/greece\">World Housing Encyclopedia</a> Report 15</span>)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"LDUAL_Algeria_F
arsi_1\" class=\"image-left\" height=\"338\" src=\"../images/ldual_algeria_farsi_1_181x338.jpg\" width=\"181\" /><img alt=\"LDUAL_Algeria_Farsi_2\" class=\"image-inline\" height=\"348\" src=\"../images/l
dual_algeria_farsi_2_309x348.jpg\" width=\"309\" /></span></p>\r\n<p><span class=\"contenttype-image\">Dual frame-wall system is common for contemporary reinforced concrete building construction in Alger
ia (M. Farsi)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"LDUAL_Chile_WHE6_1\" class=\"image-left\" height=\"323\" src=\"../images/ldual_chile_whe6_1_183x323.jpg\" width=\"183\" /><img 
alt=\"LDUAL_Chile_WHE6_2\" class=\"image-inline\" height=\"521\" src=\"../images/ldual_chile_whe6_2_414x521.jpg\" width=\"414\" /></span></p>\r\n<p><span class=\"contenttype-image\">Reinforced concrete d
ual frame-wall construction, Chile (M.O. Moroni, C. Gomez, and M. Astroza, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/south-america/chile\">Worl
d Housing Encyclopedia</a> Report 6</span>)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"LDUAL_Kyrgyzstan_Begaliev_2\" class=\"image-left\" height=\"326\" src=\"../images/ldual_kyrgyzsta
n_begaliev_2_259x326.jpg\" width=\"259\" /></span></p>\r\n \r\n \r\n \r\n \r\n<p><span class=\"contenttype-image\"><img alt=\"LDUAL_Kyrgyzstan_Begaliev_1\" class=\"image-inline\" height=\"150\" src=\"../
images/ldual_kyrgyzstan_belgaliev_1_358x150.jpg\" width=\"358\" /></span></p>\r\n \r\n \r\n<p>Dual reinforced concrete frame and wall construction, Kyrgyzstan (U. Begaliev, A. Duishev, and R. Musakov)</p
>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,229,'','',1,12227,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (79,82,'Adobe blocks [ADO]','adobe-blocks-ado','<p>Sun-dried (or air-dried), unfired mud (clay) masonry, where the clay is cast into blocks (and sometimes into brick
s) and then laid, as opposed to walls constructed in-place out of earth, as in earth construction (<a class=\"internal-link\" href=\"cob-or-wet-construction-etc\">cob</a> or <a class=\"internal-link\" hr
ef=\"rammed-earth-etr\">rammed earth</a>). Adobe blocks can be used both in <a class=\"internal-link\" href=\"masonry-unreinforced-mur\">unreinforced</a> and <a class=\"internal-link\" href=\"masonry-rei
nforced-mr\">reinforced</a> masonry construction. Several types of reinforcement are available, including <a class=\"internal-link\" href=\"wood-reinforced-rw\">wood</a>, <a class=\"internal-link\" href=
\"bamboo-cane-or-rope-reinforced-rb\">bamboo/cane</a>, or <a class=\"internal-link\" href=\"fibre-reinforcing-mesh-rcm\">fibre reinforcing mesh</a>.</p>\r\n<p><img class=\"image-inline\" src=\"images/ado
_peru_n.-tarque_1_284x213.jpg\" alt=\"ADO_Peru_N. Tarque_1\" width=\"284\" height=\"213\" /></p>\r\n<p>Adobe blocks are commonly used for single-family housing in Peru (N. Tarque)</p>\r\n<p><img class=\"
image-inline\" src=\"images/ado_cuzco_peru_brzev_1_333x277.jpg\" alt=\"ADO_Cuzco_Peru_Brzev_1\" width=\"333\" height=\"277\" /></p>\r\n<p>Tw-storey adobe building in Cuzco, Peru (S. Brzev)</p>\r\n<p><img
 class=\"image-inline\" src=\"images/ado_iran_bakshi_ghannad_yekrangnia_1_282x211.png\" alt=\"ADO_Iran_Bakshi_Ghannad_Yekrangnia_1\" /></p>\r\n<p>Adobe house, Iran (A. Bakshi, M.A.Ghannad, and M. Yekrang
nia)</p>\r\n<p><img class=\"image-inline\" src=\"images/ado_tajikistan_niyazov_1_313x235.jpg\" alt=\"ADO_Tajikistan_Niyazov_1\" width=\"313\" height=\"235\" /></p>\r\n<p>Adobe construction, Tajikistan (J
. Niyazov)</p>\r\n<p><img class=\"image-left\" style=\"float: left;\" src=\"images/ADO_Peru_Blondet_1_275x184.jpg\" alt=\"Adobe blocks 1.jpg\" width=\"275\" height=\"184\" /></p>\r\n<p><img class=\"image
-inline\" style=\"float: left;\" src=\"images/ADO_Peru_Brzev_1_301x160.jpg\" alt=\"Adobe blocks 2.JPG\" width=\"301\" height=\"160\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-alig
n: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: 
left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Manufacturing of adobe blocks in Peru (left - M. Blondet) and different sizes of adobe blocks (right- S. Brzev)</p>
\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"images/Adobe blocks 4.JPG_297x269.jpg\" alt=\"ADO_Peru_Brzev_2\" width=\"297\" height=\"269\" /></p>\r\n<p style=\"text-align: left;\"
>Adobe blocks of different shapes and sizes, Peru (S. Brzev)</p>\r\n<p><img class=\"image-inline\" style=\"float: left;\" src=\"images/ADO_Chile_Brzev_1_277x189.jpg\" alt=\"Adobe blocks 3.JPG\" width=\"2
77\" height=\"189\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"te
xt-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">A recently constructed ad
obe wall, Chile (S.Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-left\" src=\"images/ado_chile_brzev_3_336x214.jpg\" alt=\"ADO_Chile_Brzev_3\" width=\"336\" height=\"214\" /><img class=
\"image-inline\" src=\"images/ADO_Chile_Brzev_2.JPG_271x182.jpg\" alt=\"ADO_Chile_Brzev_2.JPG\" width=\"271\" height=\"182\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;
\"> Existing adobe buildings built in early 1900s in Chile (left) and a building damaged in the 2010 Maule earthquake (right) (S. Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-left\" sr
c=\"images/ado_usa_brzev_1_289x222.jpg\" alt=\"ADO_USA_Brzev_1\" width=\"289\" height=\"222\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" 
src=\"images/ado_usa_brzev_2_230x123.jpg\" alt=\"ADO_USA_Brzev_2\" width=\"230\" height=\"123\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-a
lign: left;\">Mission Dolores (built in 1788) is the oldest building in San Francisco, California, USA; the building was constructed using adobe blocks (see photo on the right) (S. Brzev)</p>\r\n<p style
=\"text-align: left;\"><img class=\"image-inline\" src=\"images/ado_usa_brzev_3_251x260.jpg\" alt=\"ADO_USA_Brzev_3\" width=\"251\" height=\"260\" /></p>\r\n<p style=\"text-align: left;\">Exposed adobe w
alls in a 19th century adobe building in Sonoma, California (S. Brzev)</p>','',1,8,'0000-00-00 00:00:00',536,'','2020-03-04 11:41:19',536,0,'0000-00-00 00:00:00','2017-02-27 13:09:51','0000-00-00 00:00:0
0','','','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"lin
k_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"sh
ow_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\
",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,230,''
,'',1,4604,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (80,78,'Wooden floor [FW]','wood-fw','<p>The floor structure is constructed of wood. Note that this refers to the structure, and not wood overlay flooring or plywood
 sheet laid over a different structural material.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,231,'
','',1,974,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (81,79,'Agriculture [AGR]','agriculture-agr','<p>The building is used for farming and produce growing purposes.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00
-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,232,'','',1,1481,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (82,80,'Cement mortar [MOC]','cement-mortar-moc','<p>Cement <a class=\"internal-link\" href=\"mortar\">mortar</a> between masonry units consists of a cement and sand
  mix. Cement mortar has a light grey colour (similar to concrete). It is considered a high-strength mortar, and it cannot be easily removed from the wall. However, mix proportions for cement mortar wide
ly range between countries, from 1:6 cement:sand to 1:3 cement:sand. Note that a  larger amount of cement results in higher mortar strength and influences the strength of masonry construction.  Cement mo
rtar can be used for all types of masonry construction, except for adobe masonry.</p>\r\n<p><span><img alt=\"Cement mortar (S. Brzev)\" class=\"image-inline\" src=\"../images/MOC_-_Brzev_1_400x201.jpg\" 
/></span></p>\r\n<p>Cement mortar (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,233,'','',
1,2005,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (83,81,'Roof-wall diaphragm connection not provided [RWCN]','roof-wall-diaphragm-connection-not-provided-rwcn','<p>There are no connections between the roof diaphrag
m and the walls that are capable of transferring in-plane forces from roof to wall and restraining outward displacements of walls.</p>\r\n<p><img alt=\"RWCN_-_FEMA172_1\" class=\"image-inline\" height=\"
293\" src=\"../images/rwcn_-_fema172_1_393x293.jpg\" width=\"393\" /></p>\r\n<p>Example of connections of a steel deck diaphragm to a concrete or masonry wall, that may be inadequate (adapted from FEMA 1
72, 1992)</p>\r\n<p><img alt=\"RWCN_New Zealand_ClarkW_1\" class=\"image-inline\" height=\"224\" src=\"../images/rwcn_new-zealand_clarkw_1_336x224.jpg\" width=\"336\" /></p>\r\n<p>An inadequate connectio
n of a wooden roof to the masonry wall in a building damaged in the 2011 Christchurch, New Zealand earthquake (W. Clark)</p>\r\n<p><img alt=\"RWCN_Loma_Prieta_1989_EERI_1\" class=\"image-inline\" src=\".
./images/rwcn_loma_prieta_1989_eeri_1_400x224.jpg\" /></p>\r\n<p>Out-of-plane collapse of masonry walls at the top floor level in a building due to inadequate roof-wall connection, 1989 Loma Prieta, Cali
fornia earthquake (EERI Reconnaissance Team)</p>\r\n<p><img alt=\"RWCN_Northridge_1994_EERI_1\" class=\"image-inline\" src=\"../images/rwcn_northridge_1994_eeri_1_400x224.jpg\" /></p>\r\n<p>Out-of-plane 
collapse of masonry walls in a building damaged in the 1994 Northridge, California earthquake; note floor-wall anchors (EERI Reconnaissance Team)</p>\r\n<p><img alt=\"RWCN_Canada_AdamsJ_1\" class=\"image
-left\" height=\"268\" src=\"../images/rwcn_canada_adamsj_1_297x268.jpg\" width=\"297\" /></p>\r\n \r\n<p><img alt=\"RWCN_Canada_AdamsJ_2\" class=\"image-inline\" height=\"225\" src=\"../images/rwcn_cana
da_adamsj_2_301x225.jpg\" width=\"301\" /></p>\r\n \r\n<p>Roof-wall diaphragm connections between steel trusses (known as Open Web Steel Joists in North America) and masonry walls may be inadequate if su
pport dimensions and attachment are not adequately designed and/or constructed (J. Adams)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00
','0000-00-00 00:00:00','','','',1,234,'','',1,2031,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (84,82,'Roof-wall diaphragm connection unknown [RWC99]','roof-wall-diaphragm-connection-unknown-rwc99','<p>It is not known if there are any connections between the r
oof diaphragm and the walls that are capable of transferring in-plane forces from roof to wall and restraining outward displacements of walls. There is insufficient information available or the connectio
ns are not visible from a survey.</p>\r\n<p><img alt=\"FWC99_Canada_Brzev_1\" class=\"image-inline\" height=\"273\" src=\"../images/fwc99_canada_brzev_1_365x273.jpg\" width=\"365\" /></p>\r\n<p>It is oft
en difficult to assess whether floor-wall connections are present based on the exterior view alone - an interior inspection is required (S. Brzev)</p>\r\n<p><img alt=\"FWC99_Canada_Brzev_2\" class=\"imag
e-inline\" height=\"275\" src=\"../images/fwc99_canada_brzev_2_330x275.jpg\" width=\"330\" /></p>\r\n<p>Floor-wall and roof-wall connections in stone masonry buildings are usually not exposed at the exte
rior (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,235,'','',1,1073,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (85,83,'Earth, unknown reinforcement [E99]','earth-unknown-reinforcement-e99','<p>It is clear that the structural material is <a class=\"internal-link\" href=\"earth
-1\">earth</a>, but whether or not it is reinforced is unknown. Examples of earthen construction include <a class=\"internal-link\" href=\"cob-or-wet-construction-etc\">cob</a>, <a class=\"internal-link\
" href=\"rammed-earth-etr\">rammed earth</a>, etc. Note that <a class=\"internal-link\" href=\"adobe-blocks-ado\">adobe</a> is not considered as earthen construction technology (it is a masonry construct
ion).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,226,'','',1,1055,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (86,84,'Solid wood [WS]','solid-wood-ws','<p>Walls are made from solid wood. Includes hewn or unhewn log construction.</p>\r\n<p><img alt=\"WS_USA_Brzev_2\" class=\"
image-inline\" height=\"235\" src=\"../images/ws_usa_brzev_2_314x235.jpg\" width=\"314\" /></p>\r\n<p>Log wood wall intersection, USA (S. Brzev)</p>\r\n<p><img alt=\"Solid wood (log) construction, Canada
 (S. Brzev)\" class=\"image-inline\" src=\"../images/WS_Canada_Brzev_1_400x235.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Solid wood (log) cons
truction, Canada (S. Brzev)</p>\r\n<p><img alt=\"WS_USA_Brzev_1\" class=\"image-inline\" src=\"../images/ws_usa_brzev_1_400x235.jpg\" /></p>\r\n<p>Solid wood construction, USA (S. Brzev)</p>\r\n','',1,8,
'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,225,'','',1,1172,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (87,85,'Wood-based sheets on joists or beams [FW3]','wood-based-sheets-on-joists-for-floor-fw3','<p>Plywood, particle board, or other sheet material fixed over woode
n members.</p>\r\n \r\n<p><img alt=\"FW3_NewZealand_Charleson_1\" class=\"image-inline\" src=\"../images/fw3_newzealand_charleson_1_400x195.jpg\" /></p>\r\n<p>Wood based sheets on joists or beams, Wellin
gton, New Zealand (A. Charleson)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,224,'','',1,1133,'',0,
'','','');
INSERT INTO `taxonomy_content` VALUES (88,86,'Government, unknown type [GOV99]','government-unknown-type-gov99','<p>It is clear that the building is used by national or local government, but the exact ty
pe of government use is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,215,'','',1,874,'',0,'
','','');
INSERT INTO `taxonomy_content` VALUES (89,87,'Rammed earth [ETR]','rammed-earth-etr','<p>Wall construction of earth which is compacted by hand or mechanically into formwork that is then removed and the w
all allowed to dry. This technique makes it possible to build monolithic walls in compacted earth.</p>\r\n<p><img alt=\"ETR_Afghanistan_AKDN_1\" class=\"image-inline\" src=\"../images/etr_afghanistan_akd
n_1_400x265.png\" /></p>\r\n<p>Rammed earth construction in Bamyan Province, Afghanistan (Aga Khan Development Network)</p>\r\n<p><img alt=\"ETR_Afghanistan_AKDN_2\" class=\"image-inline\" src=\"../image
s/etr_afghanistan_akdn_2_400x265.jpg\" /></p>\r\n<p><span>Rammed earth walls are constructed using local soil mixed with pebbles and water. The mix is compacted in wooden  formwork (made of planks placed
 at regular intervals) to form monolithic walls (Aga Khan Development Network)</span></p>\r\n<p><span><img alt=\"ETR_Tajikistan_Niyazov_1\" class=\"image-left\" height=\"237\" src=\"../images/etr_tajikis
tan_niyazov_1_318x237.jpg\" width=\"318\" /><img alt=\"ETR_Tajikistan_Niyazov_2\" class=\"image-inline\" height=\"226\" src=\"../images/etr_tajikistan_niyazov_2_300x226.jpg\" width=\"300\" /></span></p>\
r\n \r\n<p><span>Rammed earth construction, Tajikistan (J. Niyazov)<br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-0
0-00 00:00:00','','','',1,216,'','',1,1492,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (90,88,'Material technology','material-technology','<p>A more detailed description of the <a class=\"internal-link\" href=\"material-type\">material type</a></p>\r\n
','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,217,'','',1,1032,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (91,89,'Roof system material','roof-system-material','<p>The general classification of the material of the roof system. Roof system is the structure that supports ro
of covering and environmental loading (such as rain and snow). Roof system is often not exposed from the exterior of the building. The material of roof system is usually different from the material of ro
of covering.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,218,'','',1,880,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (92,90,'Flat slab/plate or waffle slab [LFLS]','flat-slab-plate-or-waffle-slab-lfls','<p>Slabs and columns are constructed without beams. Unlike flat plates, flat sl
abs have capitals and/or drop panels at the tops of columns. (A capital is the upper portion of the column, which is usually of conical shape and larger in cross-section than the remaining portion of the
 column; a drop panel is a thickened portion of the slab in the area adjacent to a column.) Slab band systems, consisting of continuous wide beams spanning between the columns, also fall in this category
 due to specific beam-column connections (click <a class=\"internal-link\" href=\"cast-in-place-beam-supported-reinforced-concrete-floor-fc2\">here</a> for more information). Primarily designed to resist
 gravity loads, these systems possess very limited ability to resist earthquake forces. If there are numerous walls <i>they</i> should be considered the lateral load-resisting system.</p>\r\n<p><img alt=
\"LFLS_-_Charleson_1\" class=\"image-inline\" height=\"301\" src=\"../images/lfls_-_charleson_1_348x301.jpg\" width=\"348\" /></p>\r\n<p><span><span>A simplified drawing of a flat slab / plate or waffle 
slab structure (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</span></span></p>\r\n<p><img alt=\"LFLS_Allen&amp;Brzev_1\" class=\"image-inli
ne\" height=\"252\" src=\"../images/lfls_1_353x252.jpg\" width=\"353\" /></p>\r\n<p>Partial section of a flat plate structure</p>\r\n<p><img alt=\"LFLS_Allen&amp;Brzev_2\" class=\"image-inline\" height=\
"276\" src=\"../images/lfls_2_360x276.jpg\" width=\"360\" /></p>\r\n<p>Diagram showing examples of flat plate and flat slabs</p>\r\n<p><img alt=\"LFLS_USA_Brzev_3\" class=\"image-inline\" height=\"273\" 
src=\"../images/lfls_brzev_usa_1_345x273.jpg\" width=\"345\" /></p>\r\n<p>Reinforced concrete flat plate system, Eugene, USA (S. Brzev)</p>\r\n<p><img alt=\"LFLS_Canada_Brzev_1\" class=\"image-left\" hei
ght=\"308\" src=\"../images/lfls_canada_brzev_1_382x308.jpg\" width=\"382\" /><img alt=\"LFLS_Canada_Brzev_2\" class=\"image-inline\" height=\"311\" src=\"../images/lfls_canada_brzev_2-1_166x311.jpg\" wi
dth=\"166\" /></p>\r\n<p>Flat slab structure, Canada - note column capitals (S. Brzev)</p>\r\n<p><img alt=\"LFLS_Canada_Brzev_5\" class=\"image-left\" height=\"194\" src=\"../images/lfls_brzev_canada_5_3
89x194.jpg\" width=\"389\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"LFLS_Canada_Brzev_6\" class=\"image-inline\" src=\"../images/lfls_brzev_canada_6_200x194.jpg\" /></p>\r\n<p style=\"text-al
ign: left; \"> </p>\r\n<p style=\"text-align: left; \">Reinforced concrete flat slab system (note column capitals), Vancouver, Canada (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFLS_UK_
Brzev_1\" class=\"image-inline\" height=\"303\" src=\"../images/lfls_brzev_uk_1_354x303.jpg\" width=\"354\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete flat slab with a column capital, 
London, UK (S. Brzev)</p>\r\n<p><img alt=\"Flat Slab Plate or Waffle Slab 2.jpg\" class=\"image-inline\" src=\"../images/LFLS_Australia_Charleson_1_400x303.jpg\" style=\"float: left; \" /></p>\r\n<span><
/span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n \r\n<p>Flat slab, Australia - note drop panels beneath t
he slab (A. Charleson)</p>\r\n<p><img alt=\"LFLS_Canada_Brzev_8\" class=\"image-inline\" src=\"../images/lfls_canada_brzev_8_400x303.jpg\" /></p>\r\n<p>Slab band system, Canada (S. Brzev)</p>\r\n<p style
=\"text-align: left; \"><img alt=\"A reinforced concrete building with flat slabs under construction, Kenya (K. Jaiswal)\" class=\"image-inline\" src=\"../images/LFLS_Kenya_Jaiswal_1_400x303.jpg\" /></p>
\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>A reinforced concrete building with flat plate system under construction, Kenya (K. Jaiswal)</p>\r\n<p><img a
lt=\"LFLS_Canada_Brzev_2\" class=\"image-inline\" src=\"../images/lfls_canada_brzev_2_400x303.jpg\" /></p>\r\n<p>Reinforced concrete flat slab under construction, Canada (S. Brzev)</p>\r\n<p><img alt=\"L
FLS_USA_Brzev_1\" class=\"image-left\" height=\"245\" src=\"../images/lfls_usa_brzev_1_327x245.jpg\" width=\"327\" /><img alt=\"LFLS_USA_Brzev_2\" class=\"image-inline\" height=\"218\" src=\"../images/lf
ls_usa_brzev_2_278x218.jpg\" width=\"278\" /></p>\r\n \r\n<p>Reinforced concrete parking garage with flat slab system, USA (S. Brzev)</p>\r\n<p><img alt=\"LFLS_Canada_Brzev_7\" class=\"image-inline\" hei
ght=\"250\" src=\"../images/lfls_brzev_canada_7_375x250.jpg\" width=\"375\" /></p>\r\n<p>This reinforced concrete building has a waffle slab system, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"LFLS
_USA_Brzev_4\" class=\"image-left\" height=\"278\" src=\"../images/lfls_brzev_usa_2_354x278.jpg\" width=\"354\" /><img alt=\"LFLS_USA_Brzev_5\" class=\"image-inline\" height=\"198\" src=\"../images/LFLS_
Brzev_USA_3.JPG_264x198.jpg\" width=\"264\" /></p>\r\n \r\n \r\n \r\n<p>A reinforced concrete waffle slab, Eugene, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0
000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,219,'','',1,8794,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (93,86,'Single dwelling [RES1]','single-dwelling-res1','<p>House that is detached. A single residential unit, which would typically house one family. It is stand-alo
ne and is not structurally joined to other residential units.</p>','',1,8,'0000-00-00 00:00:00',536,'','2020-10-09 13:49:04',536,536,'2020-10-09 13:49:04','2020-10-09 13:49:04','0000-00-00 00:00:00','','
','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_categ
ory\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publ
ish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alt
ernative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,220,'','',1,14
55,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (94,92,'Plan irregularity-primary [IRPP]','plan-irregularity-primary-irpp','<p>A structural irregularity that is observed in the plan (horizontal plane) of the build
ing. If more than one plan irregularity is observed, the primary plan  irregularity is that deemed to be the most significant in terms of affecting the building’s seismic performance, and the secondary p
lan irregularity is that deemed to be the next most significant.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','
','','',1,221,'','',1,1052,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (95,93,'Regular or irregular','regular-or-irregular','<p>Does the building possess structural irregularities from a seismic perspective?</p>\r\n','',1,8,'0000-00-00 
00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,222,'','',1,826,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (96,94,'Assembly [ASS]','assembly-ass','<p>The building is a place of worship, <span>or a membership organisation such as a club or society.</span></p>\r\n','',1,8,'
0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,223,'','',1,1702,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (97,95,'Parallel to street [PF]','parallel-to-street-pf','<p>Direction X is parallel to the building facade that is parallel to the street. If there is no building f
acade parallel to the street, define Direction X as \'Unspecified direction\'.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-
00 00:00:00','','','',1,237,'','',1,945,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (98,96,'Fired clay hollow blocks or tiles [CLBLH]','fired-clay-hollow-blocks-or-tiles-clblh','<p><a class=\"internal-link\" href=\"fired-clay-brick\">Fired clay</a> 
blocks, lightweight extruded type, with several small perforations. Volume of perforations may range from 25 to 70% of the gross block volume. The perforations are laid in the horizontal direction.</p>\r
\n<p><img alt=\"Fired Clay Hollow Blocks 2.JPG\" class=\"image-inline\" height=\"250\" src=\"../images/CLBLH_Peru_Brzev_1_277x250.jpg\" style=\"float: left; \" width=\"277\" /></p>\r\n<p style=\"text-ali
gn: left; \"> </p>\r\n<p style=\"text-align: left; \">Fired hollow clay bricks with horizontally-laid perforations, Peru (S. Brzev)</p>\r\n<p><img alt=\"Fired Clay Hollow Blocks 1.JPG\" class=\"image-inl
ine\" height=\"260\" src=\"../images/CLBLH_Iran_Charleson_1_347x260.jpg\" style=\"float: left; \" width=\"347\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \
">Fired hollow clay blocks, Iran (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CLBLH_Chile_WHE5\" class=\"image-inline\" src=\"../images/clblh_chile_whe5_400x260.jpg\" /></p>\r\n<p sty
le=\"text-align: left; \">Hollow clay masonry blocks and the reinforcing scheme, Chile (Moroni, Gomez, and Astroza, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housin
g.net/category/south-america/chile\">World Housing Encyclopedia</a> Report 5</span>)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CLBLH_Serbia_Brzev_1\" class=\"image-left\" src=\"../images/clblh_se
rbia_brzev_1_400x260.jpg\" /><img alt=\"CLBLH_Serbia_Brzev_2\" class=\"image-inline\" height=\"125\" src=\"../images/clblh_serbia_brzev_2_304x125.jpg\" width=\"304\" /></p>\r\n<p style=\"text-align: left
; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Hollow clay tile masonry construct
ion, Belgrade, Serbia (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CLBLH_Albania_Scawthorn_1\" class=\"image-inline\" height=\"297\" src=\"../images/clblh_albania_scawthorn_1_590x297.jpg\
" width=\"590\" /></p>\r\n<p style=\"text-align: left; \">Fired clay tile masonry wall construction, Albania (C. Scawthorn)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CLBLH_Portugal_Brzev_1\" clas
s=\"image-inline\" src=\"../images/clblh_portugal_brzev_1_400x297.jpg\" /></p>\r\n<p style=\"text-align: left; \">Fired clay hollow blocks as a museum exhibit, Portugal (S. Brzev)</p>\r\n','',1,8,'0000-0
0-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,332,'','',1,2665,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (99,97,'Residential [RES]','residential-res','<p>The building is mainly used as housing.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000
-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,345,'','',1,850,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (100,98,'Slate roof covering [RMT4]','slate-rmt4','<p>Tiles of slate, foliated, homogeneous metamorphic rock derived from an original shale-type sedimentary rock com
posed of clay or volcanic ash. These tiles are usually thin and dark grey in colour. Overlapping and usually fastened to wood battens.</p>\r\n<p><img alt=\"RMT4_Canada_OjdrovicN_1\" class=\"image-inline\
" src=\"../images/rmt4_canada_ojdrovicn_1_400x312.jpg\" /></p>\r\n<p>Slate roof tiles, Canada (Ojdrovic Engineering)</p>','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:0
0','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,346,'','',1,1164,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (101,99,'Precast concrete roof without reinforced concrete topping [RC4]','precast-concrete-roof-system-without-reinforced-concrete-topping-rc4','<p>Precast concrete
 units without reinforced concrete topping. Precast units include hollow-core slabs, solid slabs, or a system of precast concrete joists with timber or hollow concrete infill. Sometimes overlaid with lig
ht-weight roofing.</p>\r\n \r\n<p><img alt=\"Precast concrete hollow core slabs (tropicalconcrete.com)\" class=\"image-inline\" src=\"../images/FC4-RC4_-_tropicalconcrete_1_400x244.jpg\" /></p>\r\n<p>Pre
cast concrete hollow core slabs (tropicalconcrete.com)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,
347,'','',1,1505,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (102,100,'Vertical structural irregularity - secondary [IRVS]','vertical-structural-irregularity-secondary-irvs','<p>A structural irregularity that is observed in th
e elevation or section of the building (vertical plane). If more than one vertical irregularity is observed, the primary vertical irregularity is that deemed to be the most significant in terms of affect
ing the building’s seismic performance, and the secondary vertical irregularity is that deemed to be the next most significant. If there is only one structural vertical structural irregularity observed, 
the term \"No Irregularity\" will be used by default.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,3
48,'','',1,987,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (103,101,'Unknown plan shape [PLF99]','unknown-plan-shape-plf99','<p>The shape of the building plan is unknown. There is insufficient information available or the sh
ape of the plan is not visible from a survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,349,'',''
,1,875,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (104,102,'Earthen roof [RE]','earthen-re','<p>The roof structure is of earthen construction.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'
0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,350,'','',1,854,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (105,103,'Agriculture, unknown type [AGR99]','agriculture-unknown-type-agr99','<p>The building is used for agriculture, but it is not known what type of agricultural
 use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,351,'','',1,1860,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (106,104,'Pre-school facility [EDU1]','pre-school-facility-edu1','<p>Any pre-school educational centre. E.g. Child care centre, crèche.</p>\r\n','',1,8,'0000-00-00 0
0:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,352,'','',1,873,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (107,105,'Roof tie-down present [RTDP]','roof-tie-down-present-rtdp','<p>There are connections that provide vertical attachment of roof to walls in order to restrain
 roof from wind lift-off.</p>\r\n<p><img alt=\"RTDP_FEMAP804_1\" class=\"image-inline\" src=\"../images/rtdp_femap804_1_768x194.jpg\" /></p>\r\n<p>A diagram showing roof-wall tie-down connections for res
isting wind loads (FEMA P-804, 2010)</p>\r\n<p><img alt=\"RTDP_WHE stonemasonry 4-7\" class=\"image-inline\" src=\"../images/rtdp_whe-stonemasonry-4-7_400x194.jpg\" /></p>\r\n<p>An example of a retrofit 
bond beam with roof tie-down anchor bolts (\"J\" bolts) (<a class=\"external-link\" href=\"http://www.world-housing.net/wp-content/uploads/2011/06/Stone_Masonry_English.pdf\">Improving Seismic Performanc
e of Stone Masonry Buildings</a>, Bothara and Brzev, EERI, 2011).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',
'','','',1,353,'','',1,1559,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (108,106,'Metal beams or trusses supporting light roofing [RME1]','metal-beams-or-trusses-supporting-light-roofing-rme1','<p>Metal beams or trusses supporting light-
weight roofing system e.g. corrugated metal or plywood sheets over steel rafters or purlins.</p>\r\n<p><img alt=\"RME1_India_Brzev_1\" class=\"image-inline\" src=\"../images/rme1_india_brzev_1_400x238.jp
g\" /></p>\r\n<p>Curved steel beams supporting corrugated steel sheet roofing, Mumbai, India (S. Brzev)</p>\r\n<p><img alt=\"Steel trusses (open web steel joists) supporting corrugated steel roofing 1, C
anada (S. Brzev)\" class=\"image-inline\" src=\"../images/RME1_Canada_Brzev_1_400x238.jpg\" /></p>\r\n<p>Steel trusses (open web steel joists) supporting corrugated steel roofing, Canada (S. Brzev)</p>\r
\n<p><img alt=\"Steel trusses (open web steel joists) supporting corrugated steel roofing 2, Canada (S. Brzev)\" class=\"image-inline\" src=\"../images/RME1_Canada_Brzev_2_400x238.jpg\" /></p>\r\n<p><spa
n class=\"contenttype-undefined\">Detail of steel trusses (open web steel joists) supporting corrugated steel roofing, Canada (S. Brzev)</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00
:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,344,'','',1,4599,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (109,107,'Cast-in-place beam-supported reinforced concrete roof [RC2]','cast-in-place-beam-supported-reinforced-concrete-roof-rc2','<p>Reinforced concrete slabs are 
supported by beams. This includes  cast-in-place slabs with beams on all sides, waffle slabs with beams,  slab band system (common in Canada), one-way joist system (common in  North America), and clay ti
le coffered reinforced concrete slabs. They are sometimes overlaid with light-weight roofing.</p>\r\n<p><img alt=\"RC2 Canada Brzev 1\" class=\"image-inline\" src=\"../images/rc2-canada-brzev-1_400x221.j
pg\" /></p>\r\n<p>Reinforced concrete slab supported by beams, Canada (S. Brzev)</p>\r\n<p><img alt=\"RC2 Canada Brzev 2\" class=\"image-inline\" src=\"../images/rc2-canada-brzev-2_400x221.jpg\" /></p>\r
\n<p>Reinforced concrete slab band system, Canada (S. Brzev)</p>\r\n<p><img alt=\"RC2_Canada_Brzev_3\" class=\"image-inline\" src=\"../images/rc2_canada_brzev_3_400x221.jpg\" /></p>\r\n<p>Reinforced conc
rete slab supported by beams, Canada (S. Brzev)</p>\r\n<p><img alt=\"RC2_USA_Brzev_1\" class=\"image-inline\" src=\"../images/rc2_usa_brzev_1_400x221.jpg\" /></p>\r\n<p>Reinforced concrete waffle slab sy
stem with beams, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,343,'','',1,1755,'',0,'
','','');
INSERT INTO `taxonomy_content` VALUES (110,108,'College/university, research facilities and/or labs [EDU4]','college-university-research-facilities-and-or-labs-edu4','<p>A building used for research, or 
laboratory buildings, within a university or college.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,3
42,'','',1,958,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (111,109,'Equipped with base isolation and/or energy dissipation devices [DBD]','equipped-with-base-isolation-and-or-energy-dissipation-devices-dbd','<p>The building
 is equipped with base isolation and/or energy dissipation devices; this is an alternative to conventional seismic design approach, where buildings are designed for ductile performance. Base isolation re
duces seismic effects in a building by “decoupling” it from the ground. This is achieved by installing isolation devices (isolators), usually at the base level of a building. In some cases, isolation dev
ices are provided above the base. Base isolation devices are often not visible from the building exterior.</p>\r\n<p>Energy dissipation devices (often called seismic dampers) reduce seismic effects in a 
building by providing supplemental damping. Energy dissipation devices act in a similar manner like shock absorbers (brakes) in cars. There are several types of devices and they are more often visible (p
articularly in retrofitted buildings) and look similar to diagonal steel braces.</p>\r\n<p><img alt=\"DBD_Hildebrand_Hall_Berkeley_USA_Brzev_1\" class=\"image-left\" height=\"244\" src=\"../images/dbd_hi
ldebrand_hall_berkeley_usa_brzev_1_330x244.jpg\" width=\"330\" /><img alt=\"DBD_Hildebrand Hall_Berkeley_USA_BrzevS_2\" class=\"image-inline\" height=\"201\" src=\"../images/dbd_hildebrand-hall_berkeley_
usa_brzevs_2_302x201.jpg\" width=\"302\" /></p>\r\n \r\n \r\n<p>Unbonded braces (also known as Nippon braces) as a retrofit solution for the Hildebrand Hall, University of Berkeley, California (S.Brzev)<
/p>\r\n<p><img alt=\"DBD_Union_House_Auckland_New_Zealand_BrzevS_1\" class=\"image-inline\" height=\"377\" src=\"../images/dbd_union_house_auckland_new_zealand_brzevs_1_242x377.jpg\" width=\"242\" /></p>
\r\n<p>Energy dissipation devices were installed in the Union House, Auckland, New Zealand (S. Brzev)</p>\r\n<p><img alt=\"DBD_Japan_Scawthorn_1\" class=\"image-inline\" height=\"414\" src=\"../images/db
d_japan_scawthorn_1_549x414.jpg\" width=\"549\" /></p>\r\n<p>Kyoto University Clock Tower (Japan) is a 1925 concrete building retrofitted in 2000s using base isolation (drawing by M. Nakashima and photos
 by C. Scawthorn)</p>\r\n<p><img alt=\"DBD_USA_Brzev_1\" class=\"image-inline\" height=\"257\" src=\"../images/dbd_usa_brzev_1_377x257.jpg\" width=\"377\" /></p>\r\n<p><span>The San Francisco Internation
al Airport (USA) is equipped with friction pendulum isolation devices (S. Brzev)</span></p>\r\n<p><img alt=\"DBD_Chile_Brzev_3\" class=\"image-left\" height=\"211\" src=\"../images/dbd_chile_brzev_3_379x
211.jpg\" width=\"379\" /><img alt=\"DBD_Chile_Brzev_4\" class=\"image-inline\" height=\"329\" src=\"../images/dbd_chile_brzev_4_249x329.jpg\" width=\"249\" /></p>\r\n<p>Edificio Comunidad Andalucía, a f
our-storey masonry building in Santiago, Chile was built in 1992 and it is equipped with the high damping rubber isolation devices; an exterior view of the building is shown left (S. Brzev) and a floor p
lan showing isolator locations is shown right (M. Moroni)</p>\r\n<p><img alt=\"DBD_Chile_Brzev_1\" class=\"image-left\" height=\"264\" src=\"../images/dbd_chile_brzev_1_352x264.jpg\" width=\"352\" /><img
 alt=\"DBD_Chile_Brzev_2\" class=\"image-inline\" height=\"247\" src=\"../images/dbd_chile_brzev_2_210x247.jpg\" width=\"210\" /></p>\r\n \r\n<p>Edificio San Agustín (Catholic University of Chile) is con
crete building in Santiago, Chile built in 2001 and equipped with lead core base isolation devices; the left photo shows the building and the right photo shows a typical isolation device located in the b
asement (S. Brzev)</p>\r\n<p><img alt=\"DBD_Chile_Brzev_5\" class=\"image-left\" height=\"363\" src=\"../images/dbd_chile_brzev_5_292x363.jpg\" width=\"292\" /></p>\r\n \r\n<p><img alt=\"DBD_Chile_Brzev_
6\" class=\"image-inline\" height=\"243\" src=\"../images/dbd_chile_brzev_6_324x243.jpg\" width=\"324\" /></p>\r\n \r\n \r\n \r\n \r\n<p>Parque Araucano is a 22-storey concrete tower in Santiago, Chile e
quipped with two tuned mass dampers at the roof level; the left photo shows the building and the right one shows a tuned mass damper suspended from the roof (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:0
0',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,333,'','',1,1900,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (112,110,'Rectangular, solid [PLFR]','rectangular-solid-plfr','<p class=\"western\">The shape of the building plan is approximately rectangular, with only minor vari
ations from a rectangular shape. Two opposite sides are clearly longer than the other two sides.</p>\r\n<p class=\"western\"><img alt=\"PLFR_Canada_Brzev_1\" class=\"image-inline\" height=\"218\" src=\".
./images/plfr_canada_brzev_1_577x218.jpg\" width=\"577\" /></p>\r\n<p class=\"western\">A building with rectangular plan shape, Vancouver, Canada (left photo: S. Brzev, right: Map data ©2013  Google, Pro
vince of British Columbia, DigitalGlobe)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,334,'','',1,11
54,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (113,111,'Masonry floor, unknown [FM99]','masonry-unknown-fm99','<p>It is clear that the floor structure is made from masonry, but the type of masonry system is unkn
own. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00
:00','','','',1,335,'','',1,831,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (114,112,'Bamboo [WBB]','bamboo-wbb','<p>Hollow-stemmed plant. Its stiff tubular stems, sometimes up to 150-200 mm diameter, are used as a building material. It is c
ommonly used as split and woven construction, in the form of trusses and frames. Bamboo construction has been traditionally used in South-East Asia (India), East Asia (China), South Pacific, and to certa
in extent in Central and South America.</p>\r\n<p><img alt=\"WBB_Japan_BrzevM_1\" class=\"image-inline\" height=\"264\" src=\"../images/wbb_japan_brzevm_1_319x264.jpg\" width=\"319\" /></p>\r\n<p>Bamboo 
grove in Kyoto, Japan (M. Brzev)</p>\r\n<p><img alt=\"RB_Assam_India_Rawal_1\" class=\"image-inline\" height=\"224\" src=\"../images/rb_assam_india_rawal_1_325x224.jpg\" width=\"325\" /></p>\r\n<p>Bamboo
 frame construction on stilts found in flood- and earthquake-prone areas such as Assam, India (People in Centre)</p>\r\n<p><img alt=\"WBB_India_Rawal_1\" class=\"image-inline\" height=\"242\" src=\"../im
ages/wbb_india_rawal_1_323x242.jpg\" width=\"323\" /></p>\r\n<p>Bamboo frame construction, Assam, India (People in Centre)</p>\r\n<p><img alt=\"WBB_Central America_GUADUABAMBOO_1\" class=\"image-inline\"
 height=\"191\" src=\"../images/wbb_central-america_guaduabamboo_1_305x191.jpg\" width=\"305\" /></p>\r\n<p>Woven bamboo mats are used in low-income housing in Central America (www.guaduabamboo.com/image
s/low_income_bamboo_housing.jpg)</p>\r\n<p><img alt=\"WBB_Philippines_SLR07_1\" class=\"image-inline\" height=\"217\" src=\"../images/wbb_philippines_slr07_1_327x217.jpg\" width=\"327\" /></p>\r\n<p>Trad
itional Bahay Kubo homes in Phillipines are built using bamboo (http://slr07.files.wordpress.com/2011/06/bahay-kubo.jpg)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00
 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,336,'','',1,1400,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (115,113,'Ductility unknown [DU99]','ductility-unknown-du99','<p>It is unknown whether the structure is designed and constructed to be ductile. The structural compon
ents may be hidden, or information about them is unavailable. It is usually not obvious whether a building was designed to perform in a ductile manner, without additional information such as design calcu
lations and construction drawings.</p>\r\n<p><img alt=\"D99_Philippines Manila Scawthorn_1\" class=\"image-inline\" src=\"../images/d99_philippines-manila-scawthorn_1_400x251.jpg\" /></p>\r\n<p>It is not
 clear whether this reinforced concrete frame building in Manila, Philippines was designed and constructed to perform in a ductile manner (C. Scawthorn)</p>\r\n<p><img alt=\"D99_Kyrgyzstan_Scawthorn_1\" 
class=\"image-inline\" src=\"../images/d99_kyrgyzstan_scawthorn_1_400x251.jpg\" /></p>\r\n<p>It is not clear whether this building under construction in Bishkek, Kyrgyzstan was designed to perform in a d
uctile manner (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,337,'','',1,1154,'',0,'','
','');
INSERT INTO `taxonomy_content` VALUES (116,114,'Masonry floor [FM]','masonry-fm','<p>The floor structure is constructed of masonry.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,
'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,354,'','',1,904,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (117,115,'Vaulted earthen roofs [RE1]','vaulted-earthen-roofs-re1','<p>These systems include earthen domes and vaults.</p>\r\n<p><img alt=\"Earthen masonry domes, Ir
an (F. Naeim)\" class=\"image-inline\" height=\"251\" src=\"../images/RE1_Iran_Naeim_1_337x251.jpg\" width=\"337\" /></p>\r\n<p>Earthen masonry domes, Iran (F. Naeim, <span class=\"external-link\"><a cla
ss=\"external-link\" href=\"http://www.world-housing.net/category/asia/iran\">World Housing Encyclopedia</a> Report 104</span>)</p>\r\n<p><img alt=\"Collapse of earthen buildings with domed roofs in the 
2003 Bam, Iran earthquake (F. Naeim)\" class=\"image-inline\" height=\"301\" src=\"../images/RE1_Iran_Naeim_2_311x301.jpg\" width=\"311\" /></p>\r\n<p>Collapse of earthen buildings with domed roofs in th
e 2003 Bam, Iran earthquake (F. Naeim, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/asia/iran\">World Housing Encyclopedia</a> Report 104</span>)<
/p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,338,'','',1,1057,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (118,116,'Plastic/vinyl exterior walls, various [EWPL]','plastic-vinyl-various-ewpl','<p>All types of plastic cladding. Includes plastic siding, corrugated plastic s
heet.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,339,'','',1,874,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (119,117,'Composite masonry and concrete roof system [RM3]','composite-masonry-and-concrete-roof-system-rm3','<p>Cast-in-place concrete joists with hollow clay tiles
 and cast-in-place reinforced concrete topping, sometimes overlaid with roofing. These roofs may or may not have reinforced concrete ring beams at the perimeter.</p>\r\n<p><img alt=\"Hollow clay tiles wi
th cast-in-place concrete joists and topping, Slovenia (WHE Report 73)\" class=\"image-inline\" src=\"../images/FM3-RM3_Slovenia_WHE73_1_400x211.jpg\" /></p>\r\n<p><span class=\"contenttype-image\">Hollo
w clay tiles with cast-in-place concrete joists and topping, Slovenia (M. Lutman and M. Tomazevic, <a class=\"external-link\" href=\"http://www.world-housing.net/whereport1view.php?id=100082\">World Hous
ing Encyclopedia Report 73</a>)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"Prefabricated reinforced hollow clay tile beams, with reinforced concrete ring beams, Italy (Maffei et al., 2
006)\" class=\"image-inline\" src=\"../images/FM3-RM3_Italy_Maffei_1_400x211.jpg\" /></span></p>\r\n<p>Prefabricated reinforced hollow clay tile beams, with reinforced concrete ring beams, Italy (Maffei 
et al., EERI, 2006)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,340,'','',1,1372,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (120,118,'Mortar type unknown [MO99]','mortar-type-unknown-mo99','<p>It is clear that <a class=\"internal-link\" href=\"mortar\">mortar</a> is used in between masonr
y units, but the type of mortar is unknown. The mortar may be hidden, as in the case of a plastered wall, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 
00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,341,'','',1,939,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (121,119,'Earth technology, other [ETO]','earth-technology-other-eto','<p>Any <a class=\"internal-link\" href=\"earth-1\">earthen</a> construction type that is known
 but does not fit the descriptions of the other earth construction types in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',
'0000-00-00 00:00:00','','','',1,355,'','',1,982,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (122,120,'Residential, unknown type [RES99]','residential-unknown-type-res99','<p>It is clear that the building is a residential building, but the format of the dwel
lings and number of dwellings in the building is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','',''
,1,368,'','',1,859,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (123,121,'Floor system material','floor-system-material','<p>The material is that from which the floor is primarily constructed. Do not include materials that are no
n-structural or that are not part of the structure of the floor. In many cases floor structures can be overlaid with timber flooring or tiles etc., but it is the structure under that overlay material tha
t should be listed as the material of the floor.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,369,''
,'',1,905,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (124,122,'Year unknown [Y99]','year-unknown-y99','<p><span>The year of construction is unknown. It is impossible to determine in which decade the building was built,
 information is unavailable, or the building has not been inspected sufficiently to determine its age.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,370,'','',1,1002,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (125,123,'Metal, other [MEO]','metal-other-meo','<p>Any metal construction type that is known (and is not steel) but does not fit the descriptions of the other metal
 construction types in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,371,'','',1,851,'',0
,'','','');
INSERT INTO `taxonomy_content` VALUES (126,124,'Infilled flat slab/plate or infilled waffle slab [LFLSINF]','infilled-flat-slab-plate-or-infilled-waffle-slab-lflsinf','<p>As per Flat Slab/Plate or Waffle
 Slab, but where masonry or concrete infills provide lateral stability. For this type of lateral load-resisting system the infills are located between columns, otherwise the system should be described as
 Wall.</p>\r\n<p><span><span><img alt=\"LFLSINF_-_Charleson_1\" class=\"image-inline\" height=\"289\" src=\"../images/lflsinf_-_charleson_1_336x289.jpg\" width=\"336\" /><br />A simplified drawing of an 
infilled flat slab / plate or infilled waffle slab structure (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</span></span></p>\r\n<p><img alt
=\"LFSLINF_Allen&amp;Brzev_1\" class=\"image-inline\" height=\"233\" src=\"../images/lfslinf_1_331x233.jpg\" width=\"331\" /></p>\r\n<p><span><span><span><span><span><span><span><span><span><span><span><
span>Partial section of an infilled flat plate structure</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n<p><img alt=\"LFLS_Allen&amp;Brzev_2\" class=\"image-in
line\" height=\"281\" src=\"../images/lfls_2_366x281.jpg\" width=\"366\" /></p>\r\n<p>Diagram showing examples of flat plate and flat slabs</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:
00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,373,'','',1,1780,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (127,125,'Fired clay','fired-clay-brick','<p>Fired clay masonry units are formed while plastic and burnt (low-fired) or fired (high-fired) in a kiln.</p>\r\n','',1,8
,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,374,'','',1,945,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (128,126,'Mostly residential and commercial [MIX1]','mostly-residential-and-commercial-mix1','<p>The building is mixed use, a mixture of residential and commercial. 
The majority of the floor area is for residential use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,
375,'','',1,841,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (129,127,'Fabric [RFA]','fabric-rfa','<p><a name=\"taxonomy:RFA\"></a></p>\r\n<p><span><span>The  building has a fabric roof. Fabric is defined in this case as a tex
tile  material, woven or otherwise bonded into a thin flexible sheet. Examples  of fabric roofs include <a class=\"internal-link\" href=\"inflatable-or-tensile-membrane-roof-rfa1\">tensile membranes, inf
latable roofs</a>, and <a class=\"internal-link\" href=\"fabric-other-rfao\"><span class=\"internal-link\">other types of fabric</span> roofs</a> such as plastic sheet, tarpaulin, canvas sheeting.</span>
</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,376,'','',1,1196,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (130,128,'Slope of the ground [HD]','slope-of-the-ground-hd','<p><a name=\"taxonomy:HD\"></a></p>\r\n<p>The slope of the ground is input where the building is locate
d on a sloping site, where the height of the <a class=\"internal-link\" href=\"ground-floor\">ground floor</a> above grade varies by more than 1 m. The slope of the building is measured across the length
 of the building footprint, in the direction where the greatest difference in level is observed. The slope is measured as an angle from horizontal (expressed in degrees), where a flat site would be zero 
(0) degrees.<br /><br />For flat sites, where the variation of height of ground floor level above grade is less than 1m, the default value is zero (0) degrees.</p>\r\n<p>The slope of ground can be specif
ied as follows:</p>\r\n<p>HD:a                       (where a denotes slope in degrees)</p>\r\n<p>Example: HD:10 (the slope is 10 degrees)</p>\r\n<p><img alt=\"HD_diagram_-_1\" class=\"image-inline\" src
=\"../images/hd_diagram_-_1_400x223.jpg\" /></p>\r\n<p>The slope of the ground is calculated from the length of the building footprint (in the direction where the greatest difference in level is observed
), and the change in level of grade across this length.</p>\r\n<p><img alt=\"HD_USA_Brzev_1\" class=\"image-inline\" src=\"../images/hd_usa_brzev_1_400x223.jpg\" /></p>\r\n<p>The slope of ground for thes
e buildings in San Francisco, California is around 12 degrees, that is, HD:12</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-0
0 00:00:00','','','',1,377,'','',1,3242,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (131,129,'Number of storeys below ground unknown [HB99]','number-of-storeys-below-ground-unknown-hb99','<p>The number of storeys of the building below ground is unkn
own. It is impossible to determine the number of storeys within an estimated range, or to an approximate number. Information is unavailable, or the building has not been inspected sufficiently to determi
ne its number of storeys above ground.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,367,'','',1,832,
'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (132,130,'Stone, other type [SPO]','stone-other-type-spo','<p>The type of stone is known, but its type is not listed in the table. For example, metamorphic rocks, e.
g. gneiss, marble, quartzite, etc. Gneiss is a common type of metamorphic rock used for wall construction in Europe (e.g. Southern Switzerland, Italy, etc.).</p>\r\n<p><img alt=\"SPO_Switzerland_Schacher
_1\" class=\"image-left\" height=\"432\" src=\"../images/spo_switzerland_schacher_1_324x432.jpg\" width=\"324\" /><img alt=\"SPO_Switzerland_Schacher_2\" class=\"image-inline\" height=\"218\" src=\"../im
ages/spo_switzerland_schacher_2_291x218.jpg\" width=\"291\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Gneiss stone wall residential construction, Ticino, Southern Switzerland (T. Schacher)</p>\r\n<
p><img alt=\"SPO_Switzerland_Schacher_3\" class=\"image-left\" height=\"306\" src=\"../images/spo_switzerland_schacher_3_377x306.jpg\" width=\"377\" /></p>\r\n<p><img alt=\"SPO_Switzerland_Schacher_4\" c
lass=\"image-inline\" height=\"194\" src=\"../images/spo_switzerland_schacher_4_259x194.jpg\" width=\"259\" /></p>\r\n \r\n \r\n \r\n \r\n<p>Gneiss stone walls, a 12th century church, Ticino, Southern Sw
itzerland (T. Schacher)</p>\r\n<p><img alt=\"SPO_Italy_Benedetti_1\" class=\"image-inline\" height=\"348\" src=\"../images/spo_italy_benedetti_1_301x348.jpg\" width=\"301\" /></p>\r\n<p>Heterogeneous (mi
xed) masonry wall uses a combination of limestone and limestone, as well as clay bricks for arching lintels, L\'Aquila, Italy (A. Benedetti)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00
:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,366,'','',1,1048,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (133,131,'Mortar','mortar','<p>Mortar provides a uniform bed for laying the masonry units, and to bond the units together to produce a structurally sound and weather
proof construction. The following types of mortar are included in the GEM Building Taxonomy:</p>\r\n<ul>\r\n<li><a class=\"internal-link\" href=\"mud-mortar-mom\">Mud mortar</a></li>\r\n<li><a class=\"in
ternal-link\" href=\"lime-mortar-mol\">Lime mortar</a></li>\r\n<li><a class=\"internal-link\" href=\"cement-mortar-moc\">Cement mortar</a></li>\r\n<li><a class=\"internal-link\" href=\"lime-cement-mortar
-mocl\">Cement:lime mortar</a></li>\r\n</ul>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,356,'','',1,12
05,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (134,132,'Wood-based sheets on rafters or purlins [RWO3]','wood-based-sheets-on-rafters-or-purlins-rwo3','<p>Plywood, particle board, or other sheet material fixed o
ver wooden members.</p>\r\n<p><img alt=\"RWO3_USA_Charleson_1\" class=\"image-inline\" src=\"../images/rwo3_usa_charleson_1_400x195.jpg\" /></p>\r\n<p>Wood-based sheets on rafters or purlins, California 
(A. Charleson)</p>\r\n<p><img alt=\"RW03_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rw03_canada_brzev_1_400x195.jpg\" /></p>\r\n<p>Plywood sheets over wood rafters or purlins - a roof under 
construction in Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,357,'','',
1,1439,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (135,133,'Stucco finish on light framing for exterior walls [EWSL]','stucco-finish-on-light-framing-ewsl','<p>Plaster finish over sheet material such as fibre cement
 board or expanded polystyrene, fixed to metal or wood studs.</p>\r\n<p><img alt=\"EWSL_Canada_BrzevS_1\" class=\"image-left\" height=\"272\" src=\"../images/ewsl_canada_brzevs_1_362x272.jpg\" width=\"36
2\" /></p>\r\n \r\n<p><img alt=\"EWSL_Canada_BrzevS_2\" class=\"image-inline\" height=\"238\" src=\"../images/ewsl_canada_brzevs_2_253x238.jpg\" width=\"253\" /></p>\r\n \r\n<p>Stucco cladding over wood 
stud walls, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,358,'','',1,1254,'',0,'',
'','');
INSERT INTO `taxonomy_content` VALUES (136,134,'Floor material, unknown [F99]','floor-material-unknown-f99','<p>The material of the floor is unknown. It has not been inspected sufficiently to determine t
he material, or information is unavailable. In some cases the material of the structure of the floor will not be visible due to overlay of floor covering materials and/or the presence of ceilings below t
he floor that may be a different material.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,359,'','',1,
875,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (137,135,'Heavy Industrial [IND1]','heavy-industrial-ind1','<p>Factories and facilities considered as heavy industry. E.g. Oil and petrochemical, power generation an
d distribution, pulp and paper.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,360,'','',1,939,'',0,''
,'','');
INSERT INTO `taxonomy_content` VALUES (138,136,'Concrete roof [RC]','concrete-rc','<p>The roof structure is constructed of concrete.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0
,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,361,'','',1,1039,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (139,137,'Concrete, unknown reinforcement [C99]','concrete-unknown-reinforcement-c99','<p><a name=\"taxonomy:C99\"></a></p>\r\n<p>The structural material is <a class
=\"internal-link\" href=\"concrete\">concrete</a>, but it is not known if the concrete is reinforced or unreinforced.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00
:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,362,'','',1,1151,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (140,138,'Approximate date of construction or retrofit [YAPP]','approximate-date-of-construction-or-retrofit-yapp','<p><a name=\"taxonomy:YAPP\"></a></p>\r\n<p><span
>This is the best estimate of construction date if it is not known precisely. E.g. the construction likely took place between 1930 and 1940, so the year entered is 1935.</span></p>\r\n','',1,8,'0000-00-0
0 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,363,'','',1,1516,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (141,139,'Welded connections [WEL]','welded-connections-wel','<p><span>Structural steel members are welded together. This usually only applies to regular-weight stee
l members.</span></p>\r\n<p><span><img alt=\"Welded connection (A. Charleson)\" class=\"image-inline\" src=\"../images/WEL_NewZealand_Charleson_1_400x242.jpg\" style=\"float: left; \" /></span></p>\r\n<s
pan></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Welded connec
tion of steel brace to gusset plate, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"WEL_USA_Brzev_1\" class=\"image-left\" height=\"330\" src=\"../images/wel_usa_brzev_1_342
x330.jpg\" width=\"342\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"><img alt=\"WEL_USA_Brzev_2\" class=\"image-inline\" height=\"195\" src=\"../images/wel_usa_brze
v_2_295x195.jpg\" width=\"295\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\
r\n<p style=\"text-align: left; \">Welded steel brace connection, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-0
0-00 00:00:00','','','',1,364,'','',1,1526,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (142,140,'Triangular, with an opening in plan [PLFDO]','triangular-shape-with-an-opening-plfdo','<p class=\"western\">The building footprint is approximately triangu
lar in shape, or a tapered wedge shape, and it has an open internal courtyard (<strong>Δ</strong>).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-0
0 00:00:00','0000-00-00 00:00:00','','','',1,365,'','',1,896,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (143,141,'Number of storeys above ground [H]','number-of-storeys-above-ground-h','<p>Number of storeys or floors above ground, including the <a class=\"internal-link
\" href=\"ground-floor\">ground floor</a> and floors above. Also includes storage and mechanical plant levels only if these cover over 50% of the plan area, but does not include basements below ground. I
f the building is stepped in height, then record the number of storeys of the highest part.</p>\r\n \r\n<p>The number of storeys above ground can be recorded as an exact number, or as a range, or as an a
pproximate number if the exact number is not known. It can also be recorded as unknown.</p>\r\n<p><img alt=\"H_diagram_-_1\" class=\"image-inline\" src=\"../images/h_diagram_-_1_400x291.jpg\" /></p>\r\n<
p><img alt=\"H_diagram_-_2\" class=\"image-inline\" src=\"../images/h_diagram_-_2_400x291.jpg\" /></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00
 00:00:00','0000-00-00 00:00:00','','','',1,372,'','',1,1790,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (144,142,'Approximate number of storeys above ground [HAPP]','approximate-number-of-storeys-above-ground-happ','<p><a name=\"taxonomy:HAPP\"></a></p>\r\n<p>An approx
imate number of storeys above ground can be determined by the surveyor where the exact number of storeys above ground is not clear from survey or drawing. The number of the floors above ground includes t
he ground floor and floors above. It also includes storage and mechanical plant levels only if these cover over 50% of the plan area, but does not include basements below ground. If the building is stepp
ed in height, then record the highest part.</p>\r\n<p><br />HAPP:n <br />where n = approximate number of storeys above ground level (integer) <br />Example: HAPP:2 (approximately two-storey high building
)</p>\r\n<p><img alt=\"HAPP_Manilla_Philippines_Scawthorn_1\" class=\"image-inline\" src=\"../images/happ_manilla_philippines_scawthorn_1_400x260.jpg\" /></p>\r\n<p>This building in Manilla, Philippines 
is approximately 20 storeys high (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,331,'',
'',1,1669,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (145,143,'Polygonal, with an opening in plan [PLFPO]','polygonal-with-an-opening-in-plan-plfpo','<p><a name=\"taxonomy:PLFPO\"></a>Same as PLFP but with an open inte
rnal courtyard or full height roofed atrium.</p>\r\n<p><img alt=\"PLFPO_USA_WashingtonDC_Googleearth_1\" class=\"image-inline\" height=\"297\" src=\"../images/plfpo_usa_washingtondc_googleearth_1_472x297
.jpg\" width=\"472\" /></p>\r\n<p>The Pentagon in Washington, D.C., USA has pentagonal plan shape with an interior courtyard (Map data ©2013  Google, Commonwealth of Virginia, DigitalGlobe)</p>\r\n','',1
,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,284,'','',1,937,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (146,144,'Wooden beams or trusses and joists supporting heavy flooring [FW2]','wooden-beams-or-trusses-and-joists-supporting-heavy-flooring-fw2','<p>Examples include
 a wooden floor with a balast fill (earth or other material) covered by clay tiles, found in high precipitation regions around the world. Another example of heavy covering is stone tiles, which are used 
for roofing and flooring.</p>\r\n<p><img alt=\"Floor structure with wooden beams and planks, balast fill, and tile flooring  (Bothara and Brzev, 2011)\" class=\"image-inline\" src=\"../images/FW2_-_Botha
raBrzevEERI_1_400x144.jpg\" /></p>\r\n<p><span class=\"contenttype-undefined\">Floor structure with wooden beams and planks, balast fill, and tile flooring  <a class=\"external-link\" href=\"http://www.w
orld-housing.net/wp-content/uploads/2011/06/Stone_Masonry_English.pdf\">(Improving Seismic Performance of Stone Masonry Buildings</a>, Bothara and Brzev, EERI, 2011)</span></p>\r\n<p><img alt=\"Wood floo
r with heavy overlay, India (S. Brzev)\" class=\"image-inline\" src=\"../images/FW2_India_Brzev_1_400x144.jpg\" /></p>\r\n<p>Wood floor with heavy overlay, India (S. Brzev)</p>\r\n<p><span class=\"conten
ttype-undefined\"><br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,297,'','',1,1405,'',0,'
','','');
INSERT INTO `taxonomy_content` VALUES (147,145,'Cinema or concert hall [ASS3]','cinema-or-concert-hall-ass3','<p>A venue for performance and viewing of films, including music and dance performances.</p>\
r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,298,'','',1,982,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (148,146,'Occupancy','occupancy','<p>The type of activity (function) that the building is used for. This does not refer directly to the number of occupants.</p>\r\n'
,'',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,299,'','',1,955,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (149,147,'Cold-formed steel members [SL]','cold-formed-steel-members-sl','<p>Steel members that are formed from folded (cold-formed) sheet steel. Typically used in s
teel framed house construction in conjunction with sheet materials that may provide bracing.</p>\r\n<p><img alt=\"Lightweight steel framing, Canada (S.Brzev)\" class=\"image-inline\" height=\"289\" src=\
"../images/SL_Canada_Brzev_1_366x289.jpg\" width=\"366\" /></p>\r\n<p>Cold-formed steel framing, Canada (S.Brzev)</p>\r\n<p><img alt=\"SL_USA_Brzev_1\" class=\"image-inline\" height=\"258\" src=\"../imag
es/sl_usa_brzev_1_213x258.jpg\" width=\"213\" /></p>\r\n<p>Cold-formed steel framing detail, USA (S. Brzev)</p>\r\n<p><img alt=\"SL_Kyrgyzstan_Kanbolotov_1\" class=\"image-left\" height=\"300\" src=\"../
images/sl_kyrgyzstan_kanbolotov_1_371x300.jpg\" width=\"371\" /></p>\r\n<p><img alt=\"SL_Kyrgyzstan_Begaliev_2\" class=\"image-inline\" height=\"303\" src=\"../images/sl_kyrgyzstan_begaliev_2_232x303.jpg
\" width=\"232\" /></p>\r\n<p>Cold-formed steel construction, Kyrgyzstan (left: K. Kanbolotov; right: U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n<p><img alt=\"SL_Kyrgyzstan_Begaliev_1\" class=\"imag
e-inline\" height=\"238\" src=\"../images/sl_kyrgyzstan_begaliev_1_316x238.jpg\" width=\"316\" /></p>\r\n<p>Cold-formed steel framing under construction, Kyrgyzstan (U. Begaliev, A. Duishev, and R. Musak
ov)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,300,'','',1,1730,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (150,148,'Complex regular [RSH8]','complex-regular-rsh8','<p>The roof is a complex combination of roof forms with a degree of regularity such as symmetry.</p>\r\n<p>
<img alt=\"RSH8_NewZealand_Charleson_1\" class=\"image-inline\" height=\"225\" src=\"../images/rsh8_newzealand_charleson_1_301x225.jpg\" width=\"301\" /></p>\r\n<p>Complex regular roof, a symmetrical arr
angement of multiple pitched gable roofs, New Zealand (A Charleson).</p>\r\n<p><img alt=\"RSH8_NewZealand_Charleson_2\" class=\"image-inline\" height=\"226\" src=\"../images/rsh8_newzealand_charleson_2_3
01x226.jpg\" width=\"301\" /></p>\r\n<p>Complex regular roof, a repeating arrangement of multiple pitched gable roofs, New Zealand (A Charleson).</p>\r\n<p><img alt=\"RSH8_Cambodia_Pnom Penh_Scawthorn_1\
" class=\"image-inline\" height=\"312\" src=\"../images/rsh8_cambodia_pnom-penh_scawthorn_1_306x312.jpg\" width=\"306\" /></p>\r\n<p>Complex regular roof, Phom Penh, Cambodia (C. Scawthorn)</p>\r\n<p><im
g alt=\"RSH8_Indonesia_Scawthorn_1\" class=\"image-inline\" height=\"211\" src=\"../images/rsh8_indonesia_scawthorn_1_283x211.jpg\" width=\"283\" /></p>\r\n<p>A school building in Padang, Indonesia - roo
f form derives from water buffalo horn (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,3
01,'','',1,1125,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (151,149,'Concrete, reinforced [CR]','concrete-reinforced-cr','<p><a class=\"internal-link\" href=\"concrete\">Concrete</a> that is reinforced by metal, usually stee
l rods or bars cast into the concrete, or by other reinforcement such as glass or metal fibres or natural materials that are strong in tension.</p>\r\n<p>Includes prestressed concrete, and can be pre-cas
t or cast-in-place.</p>\r\n<p><img alt=\"CR_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/cr_canada_brzev_1_400x255.jpg\" /></p>\r\n<p>Reinforced concrete slab and columns under construction, C
anada (S. Brzev)</p>\r\n<p><img alt=\"reinforced concrete - 1\" class=\"image-inline\" src=\"../images/CR_NewZealand_Charleson_1_400x255.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></s
pan>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-al
ign: left; \">Reinforced concrete building, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CR_USA_Brzev_1\" class=\"image-inline\" src=\"../images/cr_usa_brzev_1_400x255.jpg
\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete wall and column retrofitted with carbon fibrewrap, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'
0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,302,'','',1,1864,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (152,150,'Education [EDU]','education-edu','<p>The building is mainly used for education, including schools and universities.</p>\r\n','',1,8,'0000-00-00 00:00:00',5
36,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,303,'','',1,882,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (153,151,'Cast-in-place prestressed concrete [CIPPS]','cast-in-place-prestressed-concrete-cipps','<p>As per Cast-in-Place Concrete, but where primary members of the 
Lateral Load-Resisting System are post-tensioned with steel cables or rods.</p>\r\n<p><img alt=\"CIPPS_Canada_Brzev_1\" class=\"image-inline\" height=\"197\" src=\"../images/cipps_canada_brzev_1_315x197.
jpg\" width=\"315\" /></p>\r\n<p>A typical prestressing cable (S. Brzev)</p>\r\n<p><img alt=\"CIPPS_Canada_Brzev_2\" class=\"image-left\" height=\"215\" src=\"../images/cipps_canada_brzev_2_387x215.jpg\"
 width=\"387\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Prestressing cables laid out before the concrete pour (Canada, S. Brzev)</p>\r\n<p><img alt=\"CIPPS_Canada_Brzev_3\" class=\"image-left
\" height=\"245\" src=\"../images/cipps_canada_brzev_3_359x245.jpg\" width=\"359\" /><img alt=\"CIPPS_Canada_Brzev_4\" class=\"image-inline\" height=\"199\" src=\"../images/cipps_canada_brzev_4_243x199.j
pg\" width=\"243\" /></p>\r\n \r\n \r\n<p>Anchorage of a prestressed concrete element, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000
-00-00 00:00:00','0000-00-00 00:00:00','','','',1,304,'','',1,1515,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (154,152,'Lime mortar [MOL]','lime-mortar-mol','<p><span><a class=\"internal-link\" href=\"mortar\">Mortar</a> between masonry units consists of a mix  of lime putty
 and sand. It is characterized by a light beige colour. Lime mortar is a low-strength (weak) mortar, and it can be easily scratched (removed) from the wall using a sharp tool (like a key). Lime mortar ca
n be found in older buildings, mostly fired clay masonry construction. </span></p>\r\n<p><span><img alt=\"Fired clay brick masonry in lime mortar, Canada (Ojdrovic Engineering)\" class=\"image-inline\" s
rc=\"../images/MOL_Canada_OjdrovicEngineering_1_400x304.jpg\" /></span></p>\r\n<p>Fired clay brick masonry in lime mortar, Canada (Ojdrovic Engineering)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000
-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,305,'','',1,1377,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (155,153,'Dressed stone [STDRE]','dressed-stone-stdre','<p><a name=\"taxonomy:STDRE\"></a></p>\r\n<p>Square or rectangular-shaped prismatic stone blocks in bonded co
urses with narrow joints, with or without mortar. Usually found in areas where calcareous stones and tuffs (rocks formed from volcanic ash), which are relatively easy to shape, are available.</p>\r\n<p><
img alt=\"Dressed Stone\" class=\"image-inline\" src=\"../images/STDRE_Italy_Maffei_1_202x158.png\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<
span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \">Dressed stone masonry wall, Italy (Maffei et al., EERI, 2006)</p>\r\n<p style=\"text-align: left; \"><img alt=\"STDRE_Italy_Benedetti_1\" 
class=\"image-inline\" src=\"../images/stdre_italy_benedetti_1_400x374.jpg\" /></p>\r\n<p style=\"text-align: left; \">A stone masonry wall (exterior wall wythe built using tuff stone) in San Giuliano da
maged in the 2002 Molise earthquake,  Italy (A. Benedetti)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','
',1,296,'','',1,1385,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (156,154,'Roof tie-down not provided [RTDN]','roof-tie-down-not-provided-rtdn','<p><a name=\"taxonomy:RTDN\"></a></p>\r\n<p>There are no connections that provide ver
tical attachment of roof to walls in order to restrain roof from wind lift-off, or the connections are considered to be inadequate.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,
'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,295,'','',1,864,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (157,155,'Railway station [COM9]','railway-station-com9','<p><a name=\"taxonomy:COM9\"></a></p>\r\n<p>A building or group of buildings where trains stop, for loading
 and unloading of passengers, and  buildings used for the loading and unloading of freight trains. This does not include covered sheds for storage and maintenance of trains.</p>\r\n','',1,8,'0000-00-00 0
0:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,294,'','',1,887,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (158,156,'Precast concrete floor without reinforced concrete topping [FC4]','precast-concrete-floor-without-reinforced-concrete-topping-fc4','<p><a name=\"taxonomy:F
C4\"></a></p>\r\n<p>Precast concrete units without reinforced concrete topping. Precast units include hollow-core slabs, solid slabs, or a system of precast concrete joists with timber or hollow concrete
 infill.</p>\r\n<p><img alt=\"Precast concrete hollow core slabs (tropicalconcrete.com)\" class=\"image-inline\" src=\"../images/FC4-RC4_-_tropicalconcrete_1_400x400.jpg\" /></p>\r\n<p>Precast concrete h
ollow core slabs (tropicalconcrete.com)</p>\r\n<p><img alt=\"FC4_China_Dai_1\" class=\"image-inline\" height=\"250\" src=\"../images/fc4_china_dai_1_334x250.jpg\" width=\"334\" /></p>\r\n<p>Concrete floo
rs consisting of hollow core slabs with inadequate connections collapsed in the 2008 Wenchuan, China earthquake (J. Dai)</p>\r\n<p><img alt=\"FC4_Canada_AdamsJ_1\" class=\"image-inline\" height=\"219\" s
rc=\"../images/fc4_canada_adamsj_1_343x219.jpg\" width=\"343\" /></p>\r\n<p>Precast concrete hollow floor slab supported by concrete block masonry walls, Canada (J. Adams)</p>\r\n','',1,8,'0000-00-00 00:
00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,285,'','',1,2139,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (159,157,'Metal roof [RME]','metal-rme','<p><a name=\"taxonomy:RME\"></a></p>\r\n<p>The roof structure is constructed of metal. Note that this refers to the structur
e, and not any lightweight sheet metal roof covering that might be present.</p>\r\n<p><img alt=\"RME_Canada_Brzev_1\" class=\"image-inline\" height=\"248\" src=\"../images/rme_canada_brzev_1_519x248.jpg\
" width=\"519\" /></p>\r\n<p>Metal (steel) roof structure consisting of steel beams (rolled steel sections), supporting steel trusses (open web steel joists) and steel roof covering, Canada (S. Brzev)</p
>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,286,'','',1,1103,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (160,158,'Roof connections','roof-connections','<p><a name=\"taxonomyTag:roof-connections\"></a></p>\r\n<p>This attribute defines the following two aspects of connec
tions from the roof to the structure of the building:<br /><br />(a) Connections that enable the roof diaphragm to transfer horizontal shear forces induced by an earthquake or wind to the lateral load-re
sisting structure of the building and to prevent walls from falling away from the diaphragm.<br /><br />(b) Connections from the roof to the vertical structure of the building to prevent wind uplift or l
ift-off.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,287,'','',1,882,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (161,159,'Concrete roof, unknown [RC99]','concrete-unknown-rc99','<p><a name=\"taxonomy:RC99\"></a></p>\r\n<p>It is clear that the roof structure is made from concre
te, but the type of concrete system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:
00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,288,'','',1,923,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (162,160,'Cast-in-place concrete [CIP]','cast-in-place-concrete-cip','<p><a name=\"taxonomy:CIP\"></a></p>\r\n<p>Concrete that has been cast on site in its final loc
ation in the structure.</p>\r\n<p><img alt=\"CIP_USA_Charleson_1\" class=\"image-inline\" height=\"221\" src=\"../images/cip_usa_charleson_1_295x221.jpg\" width=\"295\" /></p>\r\n<p>Cast-in-place constru
ction (columns), California (A. Charleson)</p>\r\n<p><img alt=\"CIP_Canada_Brzev_3\" class=\"image-inline\" height=\"253\" src=\"../images/cip_canada_brzev_3_210x253.jpg\" width=\"210\" /></p>\r\n<p>Cast
-in-place concrete beam construction (note reinforcement and formwork), Canada (S. Brzev)</p>\r\n<p><img alt=\"CIP_Canada_Brzev_2\" class=\"image-left\" height=\"216\" src=\"../images/cip_canada_brzev_2_
329x216.jpg\" width=\"329\" /><img alt=\"CIP_Canada_Brzev_1\" class=\"image-inline\" height=\"204\" src=\"../images/cip_canada_brzev_1_307x204.jpg\" width=\"307\" /></p>\r\n \r\n<p>Cast-in-place reinforc
ed concrete slab reinforcement installation (left) and the slab supported by the shoring after the concrete has been cast (right), Canada (S. Brzev)</p>\r\n<p><img alt=\"CIP_India_Brzev_1\" class=\"image
-inline\" height=\"202\" src=\"../images/cip_india_brzev_1_285x202.jpg\" width=\"285\" /></p>\r\n<p>Cast-in-place concrete construction, India (note formwork for the slab construction) (S. Brzev)</p>\r\n
<p><img alt=\"CIP_USA_Scawthorn_1\" class=\"image-inline\" height=\"187\" src=\"../images/cip_usa_scawthorn_1_289x187.jpg\" width=\"289\" /></p>\r\n<p>Cast-in-place reinforced concrete building under con
struction, California (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,289,'','',1,2207,'
',0,'','','');
INSERT INTO `taxonomy_content` VALUES (163,161,'Wooden exterior walls [EWW]','wood-eww','<p><a name=\"taxonomy:EWW\"></a></p>\r\n<p>All types of wood cladding, including wood planks, wood shingles, plywo
od sheets. Also includes wood construction where it also forms the exterior wall surface, such as solid wood or log construction.</p>\r\n<p><img alt=\"EWW_Canada_BrzevS_1\" class=\"image-inline\" src=\".
./images/eww_canada_brzevs_1_768x193.jpg\" /></p>\r\n<p>Wood plank cladding (lower level) and wood shingles (upper level), Canada (S. Brzev)</p>\r\n<p><img alt=\"EWW_Cuba_BrzevS_1\" class=\"image-inline\
" height=\"249\" src=\"../images/eww_cuba_brzevs_1_151x249.jpg\" width=\"151\" /></p>\r\n<p>Wood plank siding, Cuba (S. Brzev)</p>\r\n<p><img alt=\"EWW_StMaartens_BrzevS_1\" class=\"image-inline\" height
=\"287\" src=\"../images/eww_stmaartens_brzevs_1_273x287.jpg\" width=\"273\" /></p>\r\n<p>Wood shingles cladding, Saint Martin (Caribbean) (S. Brzev)</p>\r\n<p><img alt=\"EWW_USA_BrzevS_1\" class=\"image
-inline\" height=\"257\" src=\"../images/eww_usa_brzevs_1_378x257.jpg\" width=\"378\" /></p>\r\n<p>Log wood walls, USA (S. Brzev)</p>\r\n<p><img alt=\"EWW_USA_BrzevS_2\" class=\"image-left\" height=\"287
\" src=\"../images/eww_usa_brzevs_2_315x287.jpg\" width=\"315\" /></p>\r\n<p><img alt=\"EWW_USA_Brzev_3\" class=\"image-inline\" height=\"294\" src=\"../images/eww_usa_brzev_2_231x294.jpg\" width=\"231\"
 /></p>\r\n<p>Wood shingles, California, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1
,290,'','',1,1163,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (164,162,'Exterior walls','exterior-walls','<p><a name=\"taxonomyTag:exterior-walls\"></a></p>\r\n<p>This term is related to the material that covers most of the ext
erior walls of the building. If two materials each cover equal areas of walls, choose the heavier material. Where there are multiple materials present on the exterior walls, choose the material that cove
rs more of the walls by area than any other material.<br /><br />In some cases this will be the same material as \"Material of the lateral load resisting system\" if the lateral loads are resisted by the
 exterior walls and if the structural material is exposed. However in many cases the material that covers the exterior walls will be a separate cladding material that does not resist lateral loads and is
 laid over the lateral load-resisting structure. In both cases, the material of exterior walls should still be defined if it is known, even if it is the same material that forms the lateral load-resistin
g structure.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,291,'','',1,969,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (165,163,'Sawtooth [RSH6]','sawtooth-rsh6','<p><a name=\"taxonomy:RSH6\"></a></p>\r\n<p>A series of monopitch roofs all sloping in the same direction, giving the imp
ression of a sawtooth in elevation. The vertical walls that separate each roof from each other are typically glazed.</p>\r\n<p><img alt=\"RSH6_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rsh6
_canada_brzev_1_400x247.jpg\" /></p>\r\n<p>Sawtooth roof, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','
0000-00-00 00:00:00','','','',1,292,'','',1,1213,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (166,164,'Polygonal, solid (e.g. trapezoid, pentagon, hexagon) [PLFP]','polygonal-solid-plfp','<p><a name=\"taxonomy:PLFP\"></a></p>\r\n<p>The shape of the building 
plan is approximately polygonal, with only minor  variations from a polygonal shape. Polygon is a plane figure bounded by a finite number of straight lines (called sides), which connect up and form a clo
sed shape. This term refers to shapes that can be approximated as regular convex polygons (see the drawing below for illustration). Polygon is regular when its side are of equal length. The following pol
ygonal shapes are included in this category: trapezoid (4 sides), pentagon (5 sides), hexagon (6 sides), heptagon (7 sides), octagon (8 sides), etc. Note that <a class=\"internal-link\" href=\"square-sol
id-plfsq\">square</a> and <a class=\"internal-link\" href=\"triangular-shape-solid-plfd\">triangle</a> are also polygons, however they have been identified as separate items in the table.</p>\r\n<p><img 
alt=\"PLFP_Wikipedia_Salix Alba_1\" class=\"image-inline\" src=\"../images/plfp_wikipedia_salix-alba_1_166x156.jpg\" /></p>\r\n<p>Any line drawn through a regular convex polygon meets its boundary exactl
y twice - the example shows a pentagonal shape (adapted from Salix Alba for English Wikipedia)</p>\r\n<p><img alt=\"PLFP_Japan_Scawthorn&amp;Googleearth_1\" class=\"image-inline\" src=\"../images/plfp_ja
pan_scawthorn-googleearth_1_685x245.jpg\" /></p>\r\n<p>A building with trapezoidal plan, <span>Shiraikan Building, </span>Kyoto  University, Japan (left: Map data ©2013  Google, ZENRIN; right: C.  Scawth
orn)</p>\r\n<p><img alt=\"PLFP_Chile_WHE6_1_1\" class=\"image-inline\" src=\"../images/plfp_chile_whe6_1_1_400x306.jpg\" /></p>\r\n<p>A reinforced concrete high-rise building in Chile with hexagonal plan
 shape (O. Moroni, C. Gomez, and M. Astroza, Chile, <a class=\"external-link\" href=\"http://www.world-housing.net/category/south-america/chile\">World Housing Encyclopedia</a> Report 6)</p>\r\n<p><img a
lt=\"PLFP_USA_San Francisco_Googleearth_1\" class=\"image-inline\" src=\"../images/plfp_usa_san-francisco_googleearth_1_768x306.jpg\" /></p>\r\n<p>The Octagon House in San Francisco, California has octag
onal plan  shape (Map data ©2013   Google, DigitalGlobe, U.S. Geological  Survey, USDA)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',
'0000-00-00 00:00:00','','','',1,293,'','',1,1560,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (167,165,'Composite cast-in-place reinforced concrete and masonry floor system [FM3]','composite-cast-in-place-reinforced-concrete-and-masonry-floor-system-fm3','<p>
<a name=\"taxonomy:FM3\"></a></p>\r\n<p>Cast-in-place concrete joists with hollow clay tiles and cast-in-place reinforced concrete topping, sometimes overlaid with flooring. These floors may or may not h
ave reinforced concrete ring beams at the perimeter.</p>\r\n<p><img alt=\"Hollow clay tiles with cast-in-place concrete joists and topping, Slovenia (WHE Report 73)\" class=\"image-inline\" src=\"../imag
es/FM3-RM3_Slovenia_WHE73_1_400x211.jpg\" /></p>\r\n<p><span class=\"contenttype-image\">Hollow clay tiles with cast-in-place concrete joists and topping, Slovenia (M. Lutman and M. Tomazevic, <a class=\
"external-link\" href=\"http://www.world-housing.net/whereport1view.php?id=100082\">World Housing Encyclopedia Report 73</a>)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"Prefabricated r
einforced hollow clay tile beams, with reinforced concrete ring beams, Italy (Maffei et al., 2006)\" class=\"image-inline\" src=\"../images/FM3-RM3_Italy_Maffei_1_400x211.jpg\" /></span></p>\r\n<p>Prefab
ricated reinforced hollow clay tile beams, with reinforced concrete ring beams, Italy (Maffei et al., EERI, 2006)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:
00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,306,'','',1,1194,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (168,166,'Number of storeys','number-of-storeys','<p><a name=\"taxonomyTag:number-of-storeys\"></a></p>\r\n<p>The total number of storeys of a building, both above a
nd below ground-level</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,307,'','',1,888,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (169,167,'Type of irregularity','type-of-irregularity','<p><a name=\"taxonomyTag:type-of-irregularity\"></a>Detailed description of a type of irregularity identified
 in <a class=\"internal-link\" href=\"plan-irregularity-or-vertical-irregularity\">plan irregularity or vertical irregularity</a></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0
000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,308,'','',1,1093,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (170,168,'Adjoining building(s) on one side [BP1]','adjoining-building-on-one-side-bp1','<p>The building has adjoining or attached building(s) <b>on one side</b>; th
is includes corner buildings (end buildings within a block) and semi-detached buildings (with two housing units).</p>\r\n<p><img alt=\"BP1_diagram_1\" class=\"image-inline\" height=\"208\" src=\"../image
s/bp1_diagram_1_305x208.jpg\" width=\"305\" /></p>\r\n<p>The building shown in black in this plan view has an adjoining building on one side.</p>\r\n<p><img alt=\"BP1_Canada_Brzev_1\" class=\"image-inlin
e\" height=\"229\" src=\"../images/bp1_canada_brzev_1_619x229.jpg\" width=\"619\" /></p>\r\n<p>An example of a building within a block with adjoining buildings on one side, Vancouver, Canada (left photo:
 S. Brzev, right: Map data ©2013 Google, Province of British Columbia, DigitalGlobe)</p>\r\n<p><img alt=\"BP1_NewZealand_Allen_1\" class=\"image-inline\" src=\"../images/bp1_newzealand_allen_1_400x229.jp
g\" /></p>\r\n<p>Semi-detached townhouse, adjoining building on one side, New Zealand (L. Allen).</p>\r\n<p><img alt=\"BP1_ConstitutionChile_Brzev_1\" class=\"image-inline\" height=\"274\" src=\"../image
s/bp1_constitutionchile_brzev_1_365x274.jpg\" width=\"365\" /></p>\r\n<p>Semi-detached house, adjoining building on one side, Constitution, Chile (S. Brzev).</p>\r\n<p><img alt=\"BP1_SeattleUSA_Brzev_1\"
 class=\"image-inline\" src=\"../images/bp1_seattleusa_brzev_1_400x274.jpg\" /></p>\r\n<p>A building on a corner, with an adjoining building on one side, Seattle, USA (S. Brzev).</p>','',1,8,'0000-00-00 
00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,321,'','',1,2731,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (171,169,'Other lateral load-resisting system [LO]','other-lateral-load-resisting-system-lo','<p><a name=\"taxonomy:LO\"></a></p>\r\n<p>A lateral load-resisting syst
em that is known but does not fit into the other definitions in this table. Other systems include tension structures, shell structures, space-structures, folded plates, tubes and other complex structural
 systems for very tall buildings.</p>\r\n<p><img alt=\"LO_China_Willms_1\" class=\"image-inline\" src=\"../images/lo_china_willms_1_400x291.jpg\" /></p>\r\n<p>National Swimming Center in Beijing, China (
also known as The Cube) is a space (3-D) frame assembled from 22,000 steel tubes welded to 12,000 nodes; this is a unique structure (D. Willms)</p>\r\n<p><img alt=\"LO_Canada_Brzev_1\" class=\"image-inli
ne\" height=\"270\" src=\"../images/lo_canada_brzev_1_339x270.jpg\" width=\"339\" /></p>\r\n<p>Space truss structure, Science World, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536
,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,322,'','',1,1173,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (172,170,'System ductility','system-ductility','<p><span><a name=\"taxonomyTag:system-ductility\"></a></span></p>\r\n<p><span>Ductility denotes an ability of a build
ing structure to undergo significant deformations before the failure occurs in structural members or their connections. These large deformations (usually referred to as plastic or inelastic deformations)
 are accompanied by damage in some of the structural components. Structures which show ductile performance may experience permanent deformations after a major earthquake.</span></p>\r\n<p>Ductility is on
e of the most important factors affecting building performance in an earthquake. In general, a building can be classified as <a class=\"internal-link\" href=\"ductile-duc\">ductile</a> or <a class=\"inte
rnal-link\" href=\"non-ductile-dno\">non-ductile</a>, depending on its expected seismic performance (based on the design and construction) before an earthquake, or its observed performance after an earth
quake. It is difficult, if not impossible, to determine whether a lateral load-resisting system should be classified as ductile or non-ductile based on visual information only. It is also difficult to de
termine whether a system is ductile or non-ductile solely based on information about material of the lateral load-resisting system. For example, a reinforced concrete building can perform either in ducti
le or non-ductile manner, as explained in the related glossary terms. Unreinforced masonry buildings are generally expected to behave in a non-ductile manner, however reinforced or confined masonry build
ings are expected to show ductile performance.</p>\r\n<p>According to the conventional seismic design approach, buildings are designed for ductile performance. Alternatively, a building can be <a class=\
"internal-link\" href=\"equipped-with-base-isolation-and-or-energy-dissipation-devices-dbd\">equipped with base isolation and/or energy dissipation  devices</a>. The objective of this approach is to avoi
d damage in structural components and building content in case of a major earthquake.</p>\r\n<p><img alt=\"System_ductility_Murty_1\" class=\"image-inline\" src=\"../images/system_ductility_murty_1_400x2
38.jpg\" /></p>\r\n<p>Ductile performance of a building is characterized by large horizontal deformations (lateral sway), as shown by the green curve, while non-ductile behaviour is characterized by smal
ler horizontal deformations and brittle damage or collapse of a building or its components, as shown by the red curve (C.V.R. Murty, <a class=\"external-link\" href=\"http://www.iitk.ac.in/nicee/EQTips/E
QTip08.pdf\">Earthquake Tip 8</a>, NICEE, India)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,323,''
,'',1,2456,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (173,171,'Vegetative exterior walls [EWV]','vegetative-ewv','<p><a name=\"taxonomy:EWV\"></a></p>\r\n<p>All types of plant-based wall materials. Includes matting, pa
lm, thatch, straw.</p>\r\n<p><img alt=\"EWV_Assam_India_Rawal_1\" class=\"image-inline\" height=\"265\" src=\"../images/ewv_assam_india_rawal_1_384x265.jpg\" width=\"384\" /></p>\r\n<p>Exterior walls mad
e of matting (Ikra walls), Assam, India (People in Centre)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','
',1,324,'','',1,1163,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (174,172,'Material of the lateral load-resisting system','material-of-the-lateral-load-resisting-system','<p>The material is that from which the Lateral Load-Resisti
ng System is primarily constructed. If there is more than one Lateral Load-Resisting System, chose the material of the more seismically vulnerable system. Do not include materials that are non-structural
 or that are not part of the primary Lateral Load-resisting System. For example, if Unreinforced Masonry walls resist the majority of the lateral load in a building where most of the gravity loads are ca
rried by say wood or steel frames, the Material Type of the Lateral Load-resisting System should be listed as Masonry, Unreinforced.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0
,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,325,'','',1,1010,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (175,173,'Stone slab roof covering [RMT5]','stone-slab-rmt5','<p><a name=\"taxonomy:RMT5\"></a></p>\r\n<p>Flat roofs that are covered with stone slabs (other than sl
ate).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,326,'','',1,1012,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (176,174,'Height of ground floor level above grade [HF]','height-of-ground-floor-level-above-grade-hf','<p><a name=\"taxonomy:HF\"></a></p>\r\n<p>Grade is the level 
of the ground at the perimeter of the building. This attribute records the height of the <a class=\"internal-link\" href=\"ground-floor\">ground floor</a> level of the building above grade. <br /><br />T
he height of ground floor level above grade can be recorded as an exact number, or as a range, or as an approximate number. It can also be recorded as unknown. <br /><br />Grade is usually somewhat lower
 than the ground floor level, and this information is relevant for flood hazard and foundation seismic performance.</p>\r\n<p><img alt=\"HF_diagram_-_1\" class=\"image-inline\" src=\"../images/hf_diagram
_-_1_400x195.jpg\" /></p>\r\n<p>An example of how the height of the ground floor level above grade is measured on a flat site</p>\r\n<p><img alt=\"HF_Cambodia_Scawthorn_1\" class=\"image-inline\" src=\".
./images/hf_cambodia_scawthorn_1_400x195.jpg\" /></p>\r\n<p>Height of ground floor level above grade in this dwelling in Cambodia is at least 2 meters (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00'
,536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,327,'','',1,4107,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (177,175,'Metal roof, unknown [RME99]','metal-unknown-rme99','<p><a name=\"taxonomy:RME99\"></a></p>\r\n<p>It is clear that the roof structure is made from metal, bu
t the type of metal structural system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:0
0:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,328,'','',1,817,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (178,176,'Irregular plan shape [PLFI]','irregular-plan-shape-plfi','<p class=\"western\">The building footprint is a shape that cannot be reasonably described by one
 of the shapes in this table. Buildings with A-, B-, F- or P-shaped plans are included in this class.</p>\r\n<p class=\"western\"><img alt=\"PLFI_Bilbao_Spain_Wikimedia_GoogleEarth_1\" class=\"image-inli
ne\" height=\"169\" src=\"../images/plfi_bilbao_spain_googleearth_1_477x169.jpg\" width=\"477\" /></p>\r\n<p class=\"western\">Guggenheim Museum in Bilbao, Spain has an irregular plan shape (Left: <a hre
f=\"http://upload.wikimedia.org/wikipedia/commons/1/1d/Guggenheim_Museum,_Bilbao,_July_2010_%2806%29.JPG\">http://upload.wikimedia.org/wikipedia/commons/1/1d/Guggenheim_Museum,_Bilbao,_July_2010_%2806%29
.JPG</a>; Right: map data ©2013  Google, Eusco Jaurlaritza, Gobierno Vasco)</p>\r\n<p class=\"western\"><img alt=\"PLFB_Ottawa_Canada_Googleearth_1\" class=\"image-inline\" height=\"185\" src=\"../images
/plfb_ottawa_canada_googleearth_1_424x185.jpg\" width=\"424\" /></p>\r\n<p class=\"western\">Supreme Court of Canada building in Ottawa has a B-shaped plan (Map data ©2013  Google, DigitalGlobe)</p>\r\n<
p class=\"western\"><img alt=\"PLFI_Canada_Ottawa_Googleearth_1\" class=\"image-inline\" src=\"../images/plfi_canada_ottawa_googleearth_1_400x185.jpg\" /></p>\r\n<p class=\"western\">The West Block is a 
part of the building complex housing the Canadian Parliament (Parliament Hill, Ottawa, Canada); the building has a P-shaped plan (Map data ©2013  Google, DigitalGlobe)</p>\r\n<p class=\"western\"><img al
t=\"PLFI_Canada_Vancouver_Brzev_Googleearth_1\" class=\"image-inline\" src=\"../images/plfi_canada_vancouver_brzev_googleearth_1_400x185.jpg\" /></p>\r\n<p class=\"western\">Central Public Library in Van
couver, Canada has a circular plan shape with an opening, plus a free-standing elliptical wall, and an office tower (Map data ©2013  Google, DigitalGlobe)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','00
00-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,329,'','',1,1389,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (179,177,'Plywood panels or other light-weight panels for roof [RWO4]','plywood-panels-or-other-light-weight-panels-for-roof-rwo4','<p><a name=\"taxonomy:RWO4\"></a>
</p>\r\n<p>Panels are supported on beams or bearing walls (possibly stressed-skin).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','000
0-00-00 00:00:00','','','',1,320,'','',1,873,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (180,178,'Number of storeys unknown [H99]','number-of-stories-unknown-h99','<p><a name=\"taxonomy:H99\"></a></p>\r\n<p>The number of storeys in the building above gr
ound level is unknown. It is impossible to determine the number of storeys within an estimated range, or  an approximate number. Information is unavailable, or the building has not been inspected suffici
ently to determine its number of storeys above ground.</p>\r\n<p><img alt=\"H99_China_Willms_1\" class=\"image-inline\" src=\"../images/h99_china_willms_1_400x291.jpg\" /></p>\r\n<p>It is difficult to de
termine number of storeys in the CCTV Headquarters building in Beijing, China based on the exterior view only (D. Willms)</p>\r\n<p><img alt=\"H99_China_Willms_2\" class=\"image-inline\" src=\"../images/
h99_china_willms_2_400x291.jpg\" /></p>\r\n<p>A building with undefined number of storeys, Beijing, China (D. Willms)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00
:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,319,'','',1,1047,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (181,179,'Fired clay solid bricks [CLBRS]','fired-clay-solid-bricks-clbrs','<p><a name=\"taxonomy:CLBRS\"></a></p>\r\n<p><a class=\"internal-link\" href=\"fired-clay
-brick\">Fired</a> or burnt solid clay bricks, usually formed in a shape of rectangular prism.</p>\r\n<p><img alt=\"Fired Clay Hollow Bricks 2.JPG\" class=\"image-inline\" height=\"316\" src=\"../images/
CLBRS_Peru_Brzev_1_356x316.jpg\" style=\"float: left; \" width=\"356\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<sp
an></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Fired clay solid bricks, Chile (S. Brzev)</p>\r\n<p style=\"text-
align: left; \"><img alt=\"CLBRS_India_Brzev_1\" class=\"image-inline\" height=\"318\" src=\"../images/clbrs_india_brzev_1_313x318.jpg\" width=\"313\" /></p>\r\n<p style=\"text-align: left; \">Fired clay
 bricks (also known as burnt clay bricks) at a construction site, India (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"CLBRS_New Zealand_Bothara_1\" class=\"image-inline\" height=\"308\" sr
c=\"../images/clbrs_new-zealand_bothara_1_407x308.jpg\" width=\"407\" /></p>\r\n<p style=\"text-align: left; \">Clay brick masonry in cement:sand mortar, Christchurch, New Zealand (J. Bothara)</p>\r\n','
',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,318,'','',1,2047,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (182,180,'Earthen roof, unknown [RE99]','earthen-unknown-re99','<p><a name=\"taxonomy:RE99\"></a></p>\r\n<p>It is clear that the roof structure is made from earthen 
construction, but the type of earthen construction system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',
0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,309,'','',1,867,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (183,181,'Triangular, solid [PLFD]','triangular-shape-solid-plfd','<p><a name=\"taxonomy:PLFD\"></a></p>\r\n<p>The shape of the building footprint is approximately t
riangular in shape, or a tapered wedge shape.</p>\r\n<p><img alt=\"PLFD_Vancouver_Canada_googleearth_1\" class=\"image-inline\" height=\"217\" src=\"../images/plfd_vancouver_canada_googleearth_1_333x217.
jpg\" width=\"333\" /></p>\r\n<p>A building with triangular plan shape, Hotel Europe, Vancouver, Canada (Left: S. Brzev; Right: map data ©2013   Google, Province of British Columbia, DigitalGlobe, IMTCAN
)</p>\r\n<p><img alt=\"PLFD_San Francisco_USA_Googleearth_1\" class=\"image-inline\" height=\"270\" src=\"../images/plfd_san-francisco_usa_googleearth_1_264x270.jpg\" width=\"264\" /></p>\r\n<p>A buildin
g with triangular plan shape, San Francisco, California, USA (Map data  ©2013   Google, SIO, NOAA, U.S. Navy, NGA, GEBCO, Image Landsat)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00'
,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,310,'','',1,1063,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (184,182,'Approximate number of storeys below ground [HBAPP]','approximate-number-of-storeys-below-ground-hbapp','<p><a name=\"taxonomy:HBAPP\"></a></p>\r\n<p>An app
roximate number of storeys below ground can be determined by the surveyor where the exact number of storeys above ground is not clear from survey or drawing. This does not include the ground floor. It in
cludes storage and mechanical plant levels only if these cover over 50% of the plan area.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00
','0000-00-00 00:00:00','','','',1,311,'','',1,1886,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (185,183,'Metal floor [FME]','metal-fme','<p><a name=\"taxonomy:FME\"></a></p>\r\n<p>The floor structure is constructed of metal. Note that this refers to the struct
ure, and not any lightweight sheet flooring (such as plywood) that might be present.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','00
00-00-00 00:00:00','','','',1,312,'','',1,997,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (186,184,'Structural irregularity','structural-irregularity','<p><a name=\"taxonomyTag:structural-irregularity\"></a></p>\r\n<p><span>Structural irregularity is a fe
ature of a building\'s structural  arrangement, such as one storey significantly higher than other  storeys, an irregular building shape or <span>a </span>change of structural system or material, that pr
oduces a known vulnerability during an earthquake. The user can choose <span>a </span>maximum of two vertical and two plan  irregularities for a building. However, if a building has two irregularities of
 the same type (plan/vertical), the user needs to prioritize them by identifying the primary irregularity first and the secondary irregularity next. <span> </span></span></p>\r\n','',1,8,'0000-00-00 00:0
0:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,313,'','',1,1424,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (187,185,'Masonry exterior walls [EWMA]','masonry-ewma','<p><a name=\"taxonomy:EWMA\"></a></p>\r\n<p>All types of masonry units used as cladding, infill, or exposed 
wall structure. Includes a variety of masonry units, including adobe bricks and blocks, burnt clay bricks and blocks, stone, ceramic tile. It is often difficult to identify type of masonry units once the
 walls have been covered by plaster. These walls can be in the form of veneers, cavity walls, infill walls, as well as all of these materials used as <a class=\"internal-link\" href=\"wall-lwal\">Wall</a
> structure (a part of the Lateral Load-Resisting System), and where they are not covered by another material.</p>\r\n<p><img alt=\"EWMA_Berkeley_USA_BrzevS_1\" class=\"image-inline\" height=\"289\" src=
\"../images/ewma_berkeley_usa_brzevs_1_307x289.jpg\" width=\"307\" /></p>\r\n<p>Stone masonry at the ground floor level and brick masonry above, Berkeley, California (S. Brzev)</p>\r\n<p><img alt=\"EWMA_
Canada_McEwen_5\" class=\"image-inline\" height=\"265\" src=\"../images/ewma_canada_mcewen_5_201x265.jpg\" width=\"201\" /></p>\r\n<p>An older partially demolished multi-wythe brick masonry wall in Vanco
uver, Canada (B. McEwen)</p>\r\n<p><img alt=\"EWMA_Charleson_1\" class=\"image-inline\" height=\"198\" src=\"../images/masonry-cavity-wall_347x198.jpg\" width=\"347\" /></p>\r\n<p>An exterior masonry wal
l may be a part of the cavity wall system, which consists of two masonry walls separated by an air gap; usually, one wall is load-bearing while the other is veneer (cladding). These walls may be connecte
d by metal ties, and horizontal reinforcement may be provided (A. Charleson)</p>\r\n<p><img alt=\"EWMA_NewZealand_Holmes_1\" class=\"image-inline\" height=\"385\" src=\"../images/ewma_newzealand_holmes_1
_482x385.jpg\" width=\"482\" /></p>\r\n<p>An illustration of cavity wall construction in New Zealand circa 1960 - note an interior (loadbearing) wythe and an exterior (veneer) wythe separated by a 50 mm 
air gap; the wythes are connected by galvanized wire ties (Holmes,I.L., <a class=\"external-link\" href=\"http://www.iitk.ac.in/nicee/wcee/article/vol3_IV-244.pdf\">Concrete Masonry Buildings in New Zeal
and</a>, <i>Proceedings of the 3rd World Conference on Earthquake Engineering, </i>Session IV: 244-255,1965 - reproduced with the permission of the International Association for Earthquake Engineering)</
p>\r\n<p><img alt=\"EWMA_NewZealand_Centeno_1\" class=\"image-inline\" height=\"235\" src=\"../images/ewma_newzealand_centeno_1_583x235.jpg\" width=\"583\" /></p>\r\n<p>Concrete block cavity walls damage
d in the 2011 Christchurch, New Zealand earthquake: the photos show damage of both exterior and interior wall wythes (J. Centeno)</p>\r\n<p><img alt=\"EWMA_Canada_McEwen_1\" class=\"image-inline\" src=\"
../images/ewma_canada_mcewen_1_400x235.jpg\" /></p>\r\n<p>Masonry veneers are common exterior walls in Canada and the USA; a masonry veneer is a single-wythe brick masonry wall securely fastened to a str
uctural backing (e.g. <a class=\"external-link\" href=\"http://www.masonrybc.org/wall_details/concrete-support-block-1-1.htm\">concrete masonry block wall</a>, <a class=\"external-link\" href=\"http://ww
w.masonrybc.org/wall_details/concrete-support-steel-1-1.htm\">steel</a> or <a class=\"external-link\" href=\"http://www.masonrybc.org/wall_details/concrete-support-wood-1-1.htm\">wood</a> stud framing). 
A veneer can be attached to structural backing by means of metal ties (B. McEwen, Canada; hyperlinked drawings courtesy of Masonry Institute of BC)</p>\r\n<p><img alt=\"EWMA_Canada_McEwen_2\" class=\"ima
ge-inline\" height=\"190\" src=\"../images/ewma_canada_mcewen_2_338x190.jpg\" width=\"338\" /></p>\r\n<p>A diagram showing layered construction of a <a class=\"external-link\" href=\"http://www.masonrybc
.org/wall_details/concrete-support-block-1-1.htm\">concrete block masonry backup wall with clay brick masonry veneer</a> and insulation in between (web link permission courtesy of Masonry Institute of BC
, Canada)</p>\r\n<p><img alt=\"EWMA_Canada_McEwen_3\" class=\"image-inline\" src=\"../images/ewma_canada_mcewen_3_400x190.jpg\" /></p>\r\n<p>The exterior walls shown on the top photos look like loadbeari
ng brick masonry construction. The photo on the left shows an older loadbearing brick masonry wall (built between 1900 and 1950), while the photo on the right shows a wall in a modern building (built bet
ween 1990 and 2010) which has similar masonry detailing like older buildings. However, the exterior brick masonry wall is a veneer and the loadbearing wall is likely a wood frame. The wall has weep holes
 characteristic of veneer construction (see detail on the bottom photo). The photos were taken in Vancouver, Canada (B. McEwen)</p>\r\n<p><img alt=\"EWMA_Canada_McEwen_4\" class=\"image-inline\" height=\
"197\" src=\"../images/ewma_canada_mcewen_4_351x197.jpg\" width=\"351\" /></p>\r\n<p>A concrete brick veneer wall with weep holes (B. McEwen)</p>\r\n<p><img alt=\"EWMA_Canada_Brzev_1\" class=\"image-left
\" height=\"376\" src=\"../images/ewma_canada_brzev_1_263x376.jpg\" width=\"263\" /></p>\r\n \r\n \r\n \r\n \r\n<p><img alt=\"EWMA_Canada_Brzev_2\" class=\"image-inline\" height=\"227\" src=\"../images/e
wma_canada_brzev_2_315x227.jpg\" width=\"315\" /></p>\r\n \r\n \r\n<p>An example of a masonry veneer in a reinforced concrete building in Vancouver, Canada; veneer can be identified by weep holes, as sho
wn in the photo (S. Brzev)</p>\r\n<p><img alt=\"EWMA_Chile_BrzevS_1\" class=\"image-inline\" height=\"222\" src=\"../images/ewma_chile_brzevs_1_268x222.jpg\" width=\"268\" /></p>\r\n<p>Adobe masonry wall
s: exposed (during construction), Chile (S.Brzev)</p>\r\n<p><img alt=\"EWMA_Peru_Loaiza_Blondet_1\" class=\"image-inline\" height=\"260\" src=\"../images/ewma_peru_loaiza_blondet_1_347x260.jpg\" width=\"
347\" /></p>\r\n<p>Adobe masonry walls overlaid by plaster, Peru (C. Loaiza and M. Blondet, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/south-ame
rica/peru\">World Housing Encyclopedia</a> Report 52</span>)</p>\r\n<p><img alt=\"EWMA_France_BrzevS_1\" class=\"image-inline\" height=\"292\" src=\"../images/ewma_france_brzevs_1_377x292.jpg\" width=\"3
77\" /></p>\r\n<p>Stone masonry walls: dressed stone at the front facade and uncoursed stone masonry in the perpendicular direction, France (S. Brzev)</p>\r\n<p><img alt=\"EWMA_Moncton_Canada_Brzev_1\" c
lass=\"image-inline\" src=\"../images/ewma_moncton_canada_brzev_1_400x292.jpg\" /></p>\r\n<p>Exposed brick masonry walls, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWMA_Moncton_Canada_BrzevS_1\" class=\"ima
ge-inline\" src=\"../images/ewma_moncton_canada_brzevs_1_400x292.jpg\" /></p>\r\n<p>Exterior stone masonry walls, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWMA_Portugal_Brzev_1\" class=\"image-inline\" src
=\"../images/ewma_portugal_brzev_1_400x292.jpg\" /></p>\r\n<p>Many buildings in Lisbon, Portugal have glazed ceramic tiles bonded to exterior walls (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,''
,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,314,'','',1,2102,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (188,186,'Exact date of construction or retrofit [YEX]','exact-date-of-construction-or-retrofit-yex','<p><span>Year during which the construction was completed.</spa
n></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,315,'','',1,858,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (189,187,'Curved, with an opening in plan [PLFCO]','circular-with-an-opening-plfco','<p class=\"western\">The building footprint is a round shape; circular, elliptic
al, or ovoid, and it has an interior open courtyard (whether roofed or not).</p>\r\n<p class=\"western\"><img alt=\"PLFCO_Beijing_China_GoogleEarth_1\" class=\"image-inline\" height=\"332\" src=\"../imag
es/plfco_beijing_china_googleearth_1_410x332.jpg\" width=\"410\" /></p>\r\n<p class=\"western\">Beijing National Stadium (also known as the Bird\'s Nest) has a circular plan shape with an opening (Map da
ta ©2013  Google,  DigitalGlobe)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,316,'','',1,1213,'',0,
'','','');
INSERT INTO `taxonomy_content` VALUES (190,188,'Roof shape','roof-shape','<p>The shape and angle of the roof on the building. If the building has more than one roof, describe the largest roof.</p>\r\n','
',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,317,'','',1,867,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (191,189,'Masonry unit, unknown [MUN99]','masonry-unit-unknown-mun99','<p>It is clear that the structural material is masonry, but the type of masonry is unknown. Th
e build-up of the wall may be hidden, as in the case of a plastered wall, or information about it is unavailable.</p>\r\n<p><img alt=\"MUN99_Chile_Brzev_1\" class=\"image-inline\" height=\"243\" src=\"..
/images/mun99_chile_brzev_1_435x243.jpg\" width=\"435\" /></p>\r\n<p><img alt=\"MUN99_Chile_Brzev_2\" class=\"image-inline\" height=\"272\" src=\"../images/mun99_chile_brzev_2_430x272.jpg\" width=\"430\"
 /></p>\r\n<p>Walls in masonry buildings are usually covered by plaster at the exterior and it is difficult to identify type of masonry unit used in such cases - like in the case of the masonry building 
in Constitution, Chile shown in the top photo; however, a closer inspection of the walls and the building interior revealed the adobe construction, as shown in the bottom photo (S. Brzev)</p>\r\n<p><img 
alt=\"MUN99_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/mun99_canada_brzev_1_400x272.jpg\" /></p>\r\n<p>This is likely a masonry building, but the type of masonry unit is not known, Halifax, 
Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,330,'','',1,1103,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (192,190,'Cob or wet construction [ETC]','cob-or-wet-construction-etc','<p>Stacked earthen construction that uses clay-based soil in the form of a cohesive paste. Th
e material is first kneaded and then shaped into large balls, which are either stacked (piled) on top of one another or thrown forcefully onto the wall. A layer is left to dry before adding the next laye
r to build up walls. It is not rammed after placement, as with Rammed Earth. It is possible to build very thick walls (thickness varies from 40 to 200 cm) using this technique. The earthen mixture may co
ntain fibres, usually straw, grass, or twigs, but that is not an universal practice. Straw is often used as an additive for cob wall construction in Europe.</p>\r\n<p><img alt=\"Cob1\" class=\"image-inli
ne\" src=\"../images/cob1_400x275.jpg\" /></p>\r\n<p><span class=\"discreet\">A cob wall under construction, India (People in Centre)</span></p>\r\n<p><span class=\"discreet\"><img alt=\"Cob2\" class=\"i
mage-inline\" src=\"../images/cob2_400x275.jpg\" style=\"float: left; \" /></span></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p><span class=\"discreet\">Cob building under construction, In
dia (People in Centre)<br /></span></p>\r\n<p><span class=\"discreet\"><img alt=\"Cob3\" class=\"image-inline\" src=\"../images/cob3_400x275.jpg\" style=\"float: left; \" /></span></p>\r\n \r\n \r\n \r\n
 \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p><span class=\"discreet\">Cob building, India (People in Centre)<br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00
:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,49,'','',1,1884,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (193,191,'Mixed, unknown type [MIX99]','mixed-unknown-type-mix99','<p><a name=\"taxonomy:MIX99\"></a></p>\r\n<p>The building is clearly mixed use, but the types of u
se are unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,62,'','',1,877,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (194,192,'Earth','earth-1','<p>Earthen construction includes a variety of techniques where entire buildings or their components are built from earth, with or without
 additives or reinforcement.  Earthen construction does not include adobe which is considered to be masonry. The following types of earthen construction are included in the GEM Building Taxonomy:</p>\r\n
<ul>\r\n<li><a class=\"internal-link\" href=\"earth-unknown-reinforcement-e99\">Earth, unknown reinforcement</a></li>\r\n<li><a class=\"internal-link\" href=\"earth-unreinforced-eu\">Earth, unreinforced<
/a></li>\r\n<li><a class=\"internal-link\" href=\"earth-reinforced-er\">Earth, reinforced</a></li>\r\n</ul>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-
00-00 00:00:00','0000-00-00 00:00:00','','','',1,63,'','',1,1150,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (195,193,'Agricultural processing [AGR3]','agricultural-processing-agr3','<p><a name=\"taxonomy:AGR3\"></a></p>\r\n<p>A building used for any agricultural process. T
his includes sorting of produce, milking of cows, abattoirs.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',''
,'',1,64,'','',1,1375,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (196,194,'Earth, unreinforced [EU]','earth-unreinforced-eu','<p><a class=\"internal-link\" href=\"earth-1\">Earthen</a> construction, without any reinforcement. This
 includes <a class=\"internal-link\" href=\"rammed-earth-etr\">rammed earth</a> construction, <a class=\"internal-link\" href=\"cob-or-wet-construction-etc\">cob</a>, etc., but it doesn\'t include <a cla
ss=\"internal-link\" href=\"adobe-blocks-ado\">adobe</a> construction, which is considered as a masonry construction practice.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000
-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,65,'','',1,1131,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (197,195,'Pounding potential [POP]','pounding-potential-pop','<p><a name=\"taxonomy:POP\"></a></p>\r\n<p style=\"text-align: left; \">Insufficient or no seismic sepa
ration gap between buildings thus allowing them to pound and damage each other. A building can have pounding potential if the gap between buildings is less than 4% of the height (h) of the lower building
, e.g. less than 400 mm for h = 10 m.</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_diagram_-_1\" class=\"image-inline\" src=\"../images/pop_diagram_-_1_400x297.jpg\" /></p>\r\n<p style=\"text-al
ign: left; \">If <i>x</i> is less than 4% of <i>h</i>, the buildings can have pounding potential.</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_USA_Brzev_1\" class=\"image-left\" height=\"318\" s
rc=\"../images/pop_usa_brzev_1_273x318.jpg\" width=\"273\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_USA_Brzev_2\" class=\"image-inline\" height=\"
251\" src=\"../images/pop_usa_brzev_2_297x251.jpg\" width=\"297\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n \r\n<p>Many adjacent buildings in urban centres without a separation gap have poundin
g potential, Seattle, USA (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Nepal_PorterK_1\" class=\"image-inline\" height=\"356\" src=\"../images/lfinf_nepal_porter_1_182x356.jpg\" width
=\"182\" /></p>\r\n<p style=\"text-align: left; \">Adjacent buildings of different height, pounding potential, Kathmandu, Nepal (K. Porter)</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Algeria_B
rzev_1\" class=\"image-inline\" src=\"../images/pop_algeria_brzev_1_400x356.jpg\" /></p>\r\n<p style=\"text-align: left; \">Two adjacent reinforced concrete buildings on a sloped ground suffered a major 
damage in the 2003 Boumerdes, Algeria earthquake; the buildings had an inadequate seismic gap, and the pounding effect was significant due to floor slabs at different elevations (S. Brzev)</p>\r\n<p styl
e=\"text-align: left; \"><img alt=\"POP_Greece_Pomonis_1\" class=\"image-inline\" height=\"360\" src=\"../images/pop_greece_pomonis_1_242x360.jpg\" width=\"242\" /></p>\r\n<p style=\"text-align: left; \"
>Damage due to pounding in reinforced concrete buildings with floors at different elevations in the 1999 Athens earthquake (A. Pomonis)</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Turkey_WHE64_
1\" class=\"image-left\" height=\"239\" src=\"../images/pop_turkey_whe64_1_374x239.jpg\" width=\"374\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Turkey_WHE64_2\" class=\"image-inline\" hei
ght=\"245\" src=\"../images/pop_turkey_whe64_2_158x245.jpg\" width=\"158\" /></p>\r\n<p style=\"text-align: left; \">Pounding damage in adjacent buildings of different heights affected by the 1999 Turkey
 earthquakes (Gulat, Ascheim, and Spence, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/europe/turkey\">World Housing Encyclopedia</a> Report 64</s
pan>)</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Chile_Brzev_1\" class=\"image-left\" src=\"../images/pop_chile_brzev_1_400x245.jpg\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"Mason
ry reinforced 3.jpg\" class=\"image-inline\" height=\"251\" src=\"../images/POP_Chile_Brzev_1_181x251.jpg\" width=\"181\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \
"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Pounding damage in Santiago due to th
e 2010 Chile earthquake (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_Chile_Brzev_2\" class=\"image-left\" height=\"230\" src=\"../images/pop_chile_brzev_2_299x230.jpg\" width=\"299\" 
/><img alt=\"POP_Chile_Brzev_3\" class=\"image-inline\" height=\"221\" src=\"../images/pop_chile_brzev_3_293x221.jpg\" width=\"293\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p>Damage to an unr
einforced masonry building in Santiago due to the pounding effect in the 2010 Chile earthquake (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"Pounding Potential 2.JPG\" class=\"image-inline
\" src=\"../images/POP_Chile_Brzev_2_400x221.jpg\" /></p>\r\n<p style=\"text-align: left; \">Pounding damage due to the 2010 Chile earthquake (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"
POP_USA_Scawthorn_1\" class=\"image-left\" height=\"394\" src=\"../images/pop_usa_scawthorn_1_297x394.jpg\" width=\"297\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"POP_USA_Scawthorn_2\" class=
\"image-inline\" height=\"294\" src=\"../images/pop_usa_scawthorn_2_220x294.jpg\" width=\"220\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text
-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Adjacent buildings without seismic gap, pounding potential, San Francisco, USA (C. Scawthorn)</p>\r\n<p 
style=\"text-align: left; \"><img alt=\"POP_USA_Scawthorn_3\" class=\"image-left\" height=\"400\" src=\"../images/pop_usa_scawthorn_3_277x400.jpg\" width=\"277\" /></p>\r\n<p style=\"text-align: left; \"
><img alt=\"POP_USA_Scawthorn_4\" class=\"image-inline\" src=\"../images/pop_usa_scawthorn_4_400x400.jpg\" /></p>\r\n<p style=\"text-align: left; \">Adjacent buildings of different height without seismic
 gap, pounding potential, San Francisco, USA (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','',
'',1,66,'','',1,2532,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (198,196,'Ductile [DUC]','ductile-duc','<p><a name=\"taxonomy:DUC\"></a></p>\r\n<p>The structure incorporates ductile design, where steel members or reinforcing are 
designed to undergo plastic deformation in over-load situations before failure under earthquake loads occurs in structural members or their connections. Provision of ductility is achieved by both providi
ng a hierarchy of member strengths in a structural system (known as Capacity Design Approach) as well as special member detailing. For example, ductile moment frames will have columns stronger than the b
eams and shear force detailing will prevent shear failures of both beams and columns occurring before flexural yielding.</p>\r\n<p><img alt=\"DUC_NICEE_Murty_2\" class=\"image-inline\" src=\"../images/du
c_nicee_murty_2_400x150.jpg\" /></p>\r\n<p>The main objective of the Capacity Design Approach is to ensure that buildings perform in a ductile manner, that is, to avoid brittle failure and collapse in ea
rthquakes. The designer needs to select structural components in which extensive deformation and damage may be expected, while the remaining portion of the structure must remain strong enough, or flexibl
e enough, to sustain these forces and deformations. This is can be explained on an example of a chain, where ductile links represent locations at which significant plastic deformations are expected (duct
ile links), while brittle links represent other structural components. For example, in a reinforced concrete frame extensive deformations are expected in the beams (analogous to ductile links), while col
umns need to remain strong (analogous to brittle links) (illustration by C.V.R. Murty, <a class=\"external-link\" href=\"http://www.iitk.ac.in/nicee/EQTips/EQTip09.pdf\">Earthquake Tip 9</a>, NICEE, Indi
a)</p>\r\n<p><img alt=\"DUC_Murty_1\" class=\"image-inline\" src=\"../images/duc_murty_1_400x150.jpg\" /></p>\r\n<p>One of the design requirements for ductile performance of reinforced concrete moment fr
ames is to ensure Strong Column-Weak Beam design concept - beams must be the weakest links (C.V.R. Murty, <a class=\"external-link\" href=\"http://www.iitk.ac.in/nicee/EQTips/EQTip09.pdf\">Earthquake Tip
 9</a>, NICEE, India)</p>\r\n<p><img alt=\"DUC_FEMA451B_1\" class=\"image-inline\" src=\"../images/duc_fema451b_1_400x150.jpg\" /></p>\r\n<p>Plastic hinges (shown in red colour) are locations in a reinfo
rced concrete or steel moment frame system where significant deformations and damage are expected to take place during a major earthquake (FEMA 451B, 2006)</p>\r\n<p><img alt=\"DUC_FEMA451B_2\" class=\"i
mage-left\" height=\"257\" src=\"../images/duc_fema451b_2_326x257.jpg\" width=\"326\" /></p>\r\n<p><img alt=\"DUC_FEMA451B_3\" class=\"image-inline\" height=\"225\" src=\"../images/duc_fema451b_3_308x225
.jpg\" width=\"308\" /></p>\r\n \r\n \r\n<p>Special reinforcement detailing provisions are critical for ductile performance of reinforced concrete <a class=\"internal-link\" href=\"moment-frame-lfm\">mom
ent frame</a> systems. Confinement is supplied by closely spaced reinforcement, usually in the form of hoops or ties. Reinforced concrete frames with adequately confined columns performed well in past ea
rthquakes (illustrations: FEMA 451B)</p>\r\n<p><img alt=\"DUC_FEMA451B_4\" class=\"image-left\" height=\"241\" src=\"../images/duc_fema451b_4_295x241.jpg\" width=\"295\" /></p>\r\n<p><img alt=\"DUC_Canad
a_Brzev_1\" class=\"image-inline\" height=\"251\" src=\"../images/duc_canada_brzev_1_277x251.jpg\" width=\"277\" /></p>\r\n<p>Ductile behaviour of steel moment frame structures can be achieved using Redu
ced Beam Section (also known as dogbone connection). The dogbone connection consists of trimming a portion of the steel beam flange in the region adjacent to the beam-to-column connection; this type of c
onnection acts as a ductile fuse, and it forces yielding to occur within  the reduced section of the beam; see an I-shaped beam with dogbone connection ready for the construction, Canada (drawing: FEMA 3
55D, photo: S. Brzev)</p>\r\n<p><img alt=\"DUC_FEMA306_1\" class=\"image-inline\" src=\"../images/duc_fema306_1_318x249.jpg\" /></p>\r\n<p>Reinforced concrete and reinforced masonry <a class=\"internal-l
ink\" href=\"wall-lwal\">walls</a> with proper reinforcement amount and detailing are expected to show ductile seismic performance (FEMA 306, 1999)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,67,'','',1,2845,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (199,197,'Precast concrete [PC]','precast-concrete-pc','<p><a name=\"taxonomy:PC\"></a></p>\r\n<p>Prefabricated (precast) concrete structural elements that are moved
 into their final position in the structure after they have been cast. They can be tied together by protruding reinforcing bars and in-situ concrete at connections or by on-site welding of cast-in steel 
connections between elements. Connections to floor slabs are often made by reinforcing bars lapping with reinforcement in floor slab concrete topping. Typical precast elements, such as wall panels, beams
 and columns are manufactured off site, but they can also be cast on site before being erected, like tilt-up panels.</p>\r\n<p><img alt=\"Precast concrete 1.JPG\" class=\"image-inline\" height=\"232\" sr
c=\"../images/PC_NewZealand_Charleson_1_307x232.jpg\" style=\"float: left; \" width=\"307\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\
n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Erection of precast concrete wall panels, New Zealand (A. Charleson)</p>\r\n<p style=\"text-ali
gn: left; \"><img alt=\"PC_Nepal_PorterK_1\" class=\"image-left\" height=\"209\" src=\"../images/pc_nepal_porterk_1_319x209.jpg\" width=\"319\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Nep
al_PorterK_2\" class=\"image-inline\" height=\"216\" src=\"../images/pc_nepal_porterk_2_280x216.jpg\" width=\"280\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Nepal_PorterK_3\" class=\"image
-inline\" src=\"../images/pc_nepal_porter_3_400x216.jpg\" /></p>\r\n<p style=\"text-align: left; \">Precast concrete wall construction, Denver, USA (K. Porter)</p>\r\n<p style=\"text-align: left; \"><img
 alt=\"PC_Kyrgyzstan_Kanbolotov_1\" class=\"image-left\" height=\"227\" src=\"../images/pc_kyrgyzstan_kanbolotov_1_302x227.jpg\" width=\"302\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=
\"text-align: left; \"><img alt=\"PC_Kyrgyzstan_Begaliev_1\" class=\"image-inline\" height=\"201\" src=\"../images/pc_kyrgyzstan_begaliev_1_269x201.jpg\" width=\"269\" /></p>\r\n<p style=\"text-align: le
ft; \">Large panel precast concrete construction is found in Kyrgyzstan and other CIS states (left: K. Kanbolotov; right: U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n<p style=\"text-align: left; \"><
img alt=\"PC_Kyrgyzstan_Begaliev_2\" class=\"image-left\" height=\"286\" src=\"../images/pc_kyrgyzstan_begaliev_2_325x286.jpg\" width=\"325\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\
"text-align: left; \"><img alt=\"PC_Kyrgyzstan_Begaliev_3\" class=\"image-inline\" height=\"229\" src=\"../images/pc_kyrgyzstan_begaliev_3_311x229.jpg\" width=\"311\" /></p>\r\n<p style=\"text-align: lef
t; \"> </p>\r\n<p style=\"text-align: left; \">Precast large panel concrete building under construction, Kyrgyzstan (U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n<p style=\"text-align: left; \"><img a
lt=\"PC_Kyrgyzstan_Begaliev_4\" class=\"image-left\" height=\"237\" src=\"../images/pc_kyrgyzstan_begaliev_4_310x237.jpg\" width=\"310\" /><img alt=\"PC_Kyrgyzstan_Begaliev_5\" class=\"image-inline\" hei
ght=\"246\" src=\"../images/pc_kyrgyzstan_begaliev_5_326x246.jpg\" width=\"326\" /></p>\r\n<p style=\"text-align: left; \">Precast concrete panels being transported to the construction site, Kyrgyzstan (
U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Costa Rica_Cuevaz Ramirez_2\" class=\"image-inline\" height=\"197\" src=\"../images/pc_costa-rica_cuevaz-rami
rez_2_434x197.jpg\" width=\"434\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Costa Rica_Cuevaz Ramirez_1\" class=\"image-inline\" height=\"182\" src=\"../images/pc_costa-rica_cuevaz-ramirez_
1_270x182.jpg\" width=\"270\" /></p>\r\n<p style=\"text-align: left; \">Precast concrete construction technology comprising horizontal wall panels and vertical posts and is used for one-storey housing, C
osta Rica (A. Cuevas Ramirez)</p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Canada_Abbuhl_2\" class=\"image-left\" height=\"337\" src=\"../images/pc_canada_abbuhl_2_222x337.jpg\" width=\"222\" /><
/p>\r\n<p style=\"text-align: left; \"><img alt=\"PC_Canada_Abbuhl_1\" class=\"image-inline\" height=\"327\" src=\"../images/pc_canada_abbuhl_1_279x327.jpg\" width=\"279\" /></p>\r\n<p style=\"text-align
: left; \"> </p>\r\n<p style=\"text-align: left; \">Tilt-up wall panels are precast in horizontal position at the construction site and lifted to the final vertical position (Canada, T. Abbuhl)</p>\r\n<p
 style=\"text-align: left; \"><img alt=\"PC_Canada_Brzev_1\" class=\"image-left\" src=\"../images/pc_canada_brzev_1_400x327.jpg\" /><img alt=\"PC_Canada_Brzev_2\" class=\"image-inline\" height=\"244\" sr
c=\"../images/pc_canada_brzev_2_326x244.jpg\" width=\"326\" /></p>\r\n<p style=\"text-align: left; \">Tilt-up wall construction, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00
 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,68,'','',1,3731,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (200,198,'50+ Units [RES2F]','50-units-res2f','<p><span>Apartments, condominiums, townhouses of 50+ units. Residential units are structurally connected.</span></p>\r
\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,69,'','',1,1218,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (201,199,'Bamboo, cane or rope reinforced [RB]','bamboo-cane-or-rope-reinforced-rb','<p><a name=\"taxonomy:RB\"></a></p>\r\n<p>The wall is bamboo-, cane-, or rope-re
inforced, as sometimes used in adobe walls.</p>\r\n \r\n<p><img alt=\"Mud wall with bamboo reinforcement, Kenya (K. Jaiswal)\" class=\"image-inline\" src=\"../images/RB_Kenya_Jaiswal_1_400x260.jpg\" /></
p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Mud wall with bamboo reinforcement, Kenya (K. Jaiswal)</p>\r\n \r\n<div class=\"important\"></div>\r\n<div cl
ass=\"important\"></div>\r\n<p><img alt=\"Adobe wall with vertical cane reinforcement, Peru (M. Blondet)\" class=\"image-inline\" height=\"332\" src=\"../images/RB_Peru_Blondet_1_401x332.jpg\" width=\"40
1\" /></p>\r\n<p>Adobe wall with vertical cane reinforcement, Peru (M. Blondet)</p>\r\n<p><img alt=\"Adobe wall with cane reinforcement, Peru (S. Brzev)\" class=\"image-inline\" src=\"../images/RB_Peru_B
rzev_1_400x332.jpg\" /></p>\r\n<p>Adobe wall with cane reinforcement, Peru (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0
000-00-00 00:00:00','','','',1,70,'','',1,2106,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (202,200,'Fabric roof, other [RFAO]','fabric-other-rfao','<p><a name=\"taxonomy:RFAO\"></a></p>\r\n<p>The type of fabric roof is known, but it is not adequately desc
ribed by the other attributes in this table. This includes any other type of fabric not inflatable or stretched like a tensile membrane, such as plastic sheet, tarpaulin, or canvas sheeting.</p>\r\n<p><i
mg alt=\"RFAO_Canada_Brzev_1\" class=\"image-left\" height=\"243\" src=\"../images/rfao_canada_brzev_1_371x243.jpg\" width=\"371\" /></p>\r\n \r\n<p><img alt=\"RFAO_Canada_Brzev_2\" class=\"image-inline\
" height=\"182\" src=\"../images/rfao_canada_brzev_2_243x182.jpg\" width=\"243\" /></p>\r\n \r\n<p>A tent-like storage facility with a fabric roof (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'',
'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,61,'','',1,1548,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (203,201,'Complex irregular [RSH9]','complex-irregular-rsh9','<p><a name=\"taxonomy:RSH9\"></a></p>\r\n<p>The roof is an irregular shape, consisting of forms that ar
e not of regular configuration.</p>\r\n \r\n<p><img alt=\"RSH9_USA_BrzevS_1\" class=\"image-inline\" height=\"345\" src=\"../images/rsh9_usa_brzevs_1_323x345.jpg\" width=\"323\" /></p>\r\n<p>Irregular cu
rved roof, Experience Music Project Museum, Seattle, USA (S. Brzev)</p>\r\n \r\n<p><img alt=\"RSH9_NewZealand_Charleson_1\" class=\"image-inline\" src=\"../images/rsh9_newzealand_charleson_1_400x345.jpg\
" /></p>\r\n<p>An irregular roof, an arrangement of multiple roof shapes and pitches on a single building, New Zealand (A. Charleson)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,
0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,60,'','',1,1229,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (204,202,'Government emergency response [GOV2]','government-emergency-response-gov2','<p><span>Any local government or national government-owned building that has an
 essential post-disaster function. E.g. Police, fire station, emergency operations centre. For hospitals see COM5 Hospital / Medical clinic.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,59,'','',1,840,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (205,203,'Unknown occupancy type [OC99]','unknown-occupancy-type-oc99','<p>The use of the building is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-
00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,50,'','',1,918,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (206,204,'Education, unknown type [EDU99]','education-unknown-type-edu99','<p>It is clear that the building is used for education, but the exact type of educational 
use is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,51,'','',1,839,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (207,205,'Membrane roof covering [RMT3]','membrane-roofing-rmt3','<p><a name=\"taxonomy:RMT3\"></a></p>\r\n<p>Sheet membrane or liquid-applied membrane roofing surfa
ce. Sheet membranes will typically be bituminous or synthetic rubber sheet. Examples of liquid-applied membranes are asphalt, and those that are fibreglass-reinforced.  Sometimes a membrane system is cov
ered with sand, small stones or stone chip. Most commonly used on a concrete or plywood sheet roof system.</p>\r\n<p><img alt=\"RMT3_Canada_Brzev_1\" class=\"image-inline\" height=\"238\" src=\"../images
/rmt3_canada_brzev_1_476x238.jpg\" width=\"476\" /></p>\r\n<p>Membrane roofing, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','
0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,52,'','',1,1052,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (208,206,'Composite steel floor deck and concrete slab [FME3]','composite-steel-deck-and-concrete-slab-fme3','<p><a name=\"taxonomy:FME3\"></a></p>\r\n<p>Reinforced 
concrete cast onto steel decking, supported by beams or loadbearing walls.</p>\r\n<p><img alt=\"FME3_UK_SteelDecking_1\" class=\"image-inline\" height=\"229\" src=\"../images/fme3_uk_steeldecking_1_314x2
29.jpg\" width=\"314\" /></p>\r\n<p>Composite steel deck and concrete slab (SteelDecking, UK)</p>\r\n<p><img alt=\"FME3_Canada_Brzev_1\" class=\"image-inline\" height=\"235\" src=\"../images/fme3_canada_
brzev_1_314x235.jpg\" width=\"314\" /></p>\r\n<p>Steel trusses (open web steel joists) supporting composite steel and concrete floor system, Canada (S. Brzev)</p>\r\n<p><img alt=\"Steel beams supporting 
composite steel and concrete deck flooring, USA (S. Brzev)\" class=\"image-inline\" height=\"327\" src=\"../images/FME3_USA_Brzev_1_310x327.jpg\" width=\"310\" /></p>\r\n<p><span class=\"contenttype-unde
fined\">Steel beams supporting composite steel and concrete deck floor, USA (S. Brzev)</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:0
0:00','0000-00-00 00:00:00','','','',1,53,'','',1,5966,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (209,207,'Foundation System','foundation-system','<p><a name=\"taxonomyTag:foundation-system\"></a></p>\r\n<p>The type of foundation system, clagssified according to
 depth and whether it has lateral load-resisting capacity. A foundation system is the part of the building structure that is in contact with the ground and transfers the loads of the building structure i
nto the ground.</p>\r\n<p>Lateral capacity denotes some form of specific lateral support e.g. tie-beams, foundation walls, inclined piles, piles or piers on wide spread footings, and piles deeply embedde
d or braced with some type of diagonal bracing. It also applies to slabs on grade, in which the whole slab or a major part of it is in contact with the ground.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'
','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,54,'','',1,930,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (210,208,'No irregularity [IRN]','no-irregularity-irn','<p><a name=\"taxonomy:IRN\"></a></p>\r\n<p>There is no irregularity in this category.</p>\r\n','',1,8,'0000-0
0-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,55,'','',1,843,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (211,209,'Roof material, other [RO]','roof-material-other-ro','<p><a name=\"taxonomy:RO\"></a></p>\r\n<p>The roof structure material is known, but they do not fit wi
thin any of the definitions in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,56,'','',1,8
27,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (212,210,'Slope of the ground - general','slope-of-the-ground-general','<a name=\"taxonomyTag:slope-of-the-ground\" />\r\n<p><span>The slope of the ground is input w
here the building is located on a sloping site, where the height of the </span><a class=\"internal-link\" href=\"ground-floor\">ground floor</a><span> above grade varies by more than 1 m. </span></p>\r\n
','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,57,'','',1,973,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (213,211,'Mobile home [RES5]','mobile-home-res5','<p><a name=\"taxonomy:RES5\"></a></p>\r\n<p>A lightweight wheeled trailer home that can be towed, and that provides
 temporary or permanent accommodation. This does not include motorised trucks or camper vans.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:0
0:00','0000-00-00 00:00:00','','','',1,58,'','',1,851,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (214,212,'Metal beams, trusses or joists supporting light flooring [FME1]','metal-beams-trusses-or-joists-supporting-light-flooring-fme1','<p><a name=\"taxonomy:FME1
\"></a></p>\r\n<p>Metal beams or trusses supporting light-weight flooring system e.g. plywood sheets over steel rafters or purlins.</p>\r\n \r\n<p><img alt=\"FME1_NewZealand_Charleson_1\" class=\"image-i
nline\" src=\"../images/fme1_newzealand_charleson_1_400x238.jpg\" /></p>\r\n<p>Metal beams or trusses supporting light flooring, Wellington, A W Charleson</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','00
00-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,71,'','',1,1028,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (215,213,'Assembly, unknown type [ASS99]','assembly-unknown-type-ass99','<p><a name=\"taxonomy:ASS99\"></a>It is clear that the building is a building used for relig
ion or non-profit organisations, but the exact type of this use is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 
00:00:00','','','',1,72,'','',1,1576,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (216,214,'Concrete floor, unknown [FC99]','concrete-unknown-fc99','<p><a name=\"taxonomy:FC99\"></a></p>\r\n<p>It is clear that the floor structure is made from conc
rete, but the type of concrete system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:0
0:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,73,'','',1,928,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (217,215,'Concrete blocks, unknown type [CB99]','concrete-blocks-unknown-type-cb99','<p><a name=\"taxonomy:CB99\"></a></p>\r\n<p>It is clear that the masonry unit is
 <a class=\"internal-link\" href=\"concrete-blocks\">concrete block</a>, but the type of block is unknown. The blocks may be hidden, or it may not be possible to determine solid from hollow blockwork, or
 information about it is unavailable.</p>\r\n<p><img alt=\"CBH_Peru_Brzev_1\" class=\"image-inline\" src=\"../images/CBH_Peru_Brzev_1_400x228.jpg\" /></p>\r\n<p>Various types of concrete blocks, Peru (S.
 Brzev)</p>\r\n<p><img alt=\"CB99_Cuba_Brzev_1\" class=\"image-inline\" height=\"366\" src=\"../images/cb99_cuba_brzev_1_578x366.jpg\" width=\"578\" /></p>\r\n<p>Concrete block construction, Cuba (S. Brz
ev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,86,'','',1,1328,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (218,216,'Date of construction or retrofit','date-of-construction','<p><a name=\"taxonomyTag:date-of-construction-or-retrofit\"></a></p>\r\n<p>Date of construction c
an be taken from when the building was completed. If the building consists of structures that vary in age, use the earliest date. If the structure of the building has been upgraded (retrofitted) in a man
ner that improves its seismic performance, enter the date of the retrofit instead of the date of construction.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00'
,'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,87,'','',1,1016,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (219,217,'Slope of the ground unknown [HD99]','slope-of-the-ground-unknown-hd99','<p><a name=\"taxonomy:HD99\"></a></p>\r\n<p>The slope of the ground is unknown. It 
is impossible to determine the slope, as information is unavailable, or the building has not been inspected sufficiently to determine the slope of the ground.</p>\r\n<p><img alt=\"HD99_Canada_Brzev_1\" c
lass=\"image-inline\" src=\"../images/hd99_canada_brzev_1_400x223.jpg\" /></p>\r\n<p>This building in Vancouver, Canada was built on a sloped ground, however the slope (in terms of number of degrees) is 
unknown (S. Brzev)</p>\r\n<p><img alt=\"HD99_Portugal_Brzev_1\" class=\"image-inline\" src=\"../images/hd99_portugal_brzev_1_400x223.jpg\" /></p>\r\n<p>Buildings in this street in Lisbon, Portugal were b
uilt on a sloped ground, however the slope information is not available (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000
-00-00 00:00:00','','','',1,88,'','',1,1098,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (220,218,'Concrete exterior walls [EWC]','concrete-ewc','<p><a name=\"taxonomy:EWC\"></a></p>\r\n<p>All types of concrete construction and cladding, reinforced or un
reinforced, including where there is a plaster finish directly applied to the concrete. Includes cast-in-place or precast concrete panels, but not thin panels such as glass reinforced concrete (GRC) pane
ls or fibre cement board.</p>\r\n<p><img alt=\"EWC_Canada_BrzevS_1\" class=\"image-left\" height=\"328\" src=\"../images/ewc_canada_brzevs_1_361x328.jpg\" width=\"361\" /></p>\r\n \r\n \r\n \r\n \r\n \r\
n \r\n \r\n \r\n \r\n \r\n \r\n<p>Cast in-place reinforced concrete exterior walls, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWC_Canada_BrzevS_2\" class=\"image-left\" height=\"245\" src=\"../im
ages/ewc_canada_brzevs_2_317x245.jpg\" width=\"317\" /><img alt=\"EWC_Canada_BrzevS_3\" class=\"image-inline\" height=\"249\" src=\"../images/ewc_canada_brzevs_3_217x249.jpg\" width=\"217\" /></p>\r\n<p>
Exterior walls made of cast-in-place reinforced concrete, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWC_USA_BrzevS_1\" class=\"image-inline\" height=\"244\" src=\"../images/ewc_usa_brzevs_1_171x2
44.jpg\" width=\"171\" /></p>\r\n<p>Reinforced concrete wall panels, USA (S. Brzev)</p>\r\n<p><img alt=\"EWC_USA_Brzev_1\" class=\"image-inline\" height=\"255\" src=\"../images/ewc_usa_brzev_1_372x255.jp
g\" width=\"372\" /></p>\r\n<p>Exterior concrete wall panels, Seattle, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0
000-00-00 00:00:00','','','',1,89,'','',1,1398,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (221,219,'Lateral load-resisting system','lateral-load-resisting-system','<p><a name=\"taxonomyTag:lateral-load-resisting-system\"></a></p>\r\n<!-- 		@pa
ge { margin: 2cm } 		P { margin-bottom: 0.21cm } --> <!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm; direction: ltr; color: #000000; widows: 0; orphans: 0 } 		P.western { font-family: \"Liberation Serif\", \"Times New Roman\", serif; font-size: 12pt; so-language: en-NZ } 		P.cjk { font-family: \"Droid Sans\"; font-size: 12pt; so-language: zh-CN } 
		P.ctl { font-family: \"Lohit Hindi\"; font-size: 12pt; so-language: hi-IN } -->\r\n<p>The structural system that provides resistance against horizontal earthquake forces through vertical 
and horizontal components.</p>\r\n<p class=\"western\">It is possible to identify different lateral load-resisting systems in two principal directions of the building by using the Direction attribute. In
 some buildings, there is more than one  lateral load-resisting system in each principal direction, or the system varies up the height of the building, in which case the Hybrid Lateral Load-Resisting Sys
tem attribute is used.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,90,'','',1,1335,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (222,220,'L-shape [PLFL]','l-shape-plfl','<p>The footprint of the building when viewed in plan resembles the shape of the letter <b>L</b>; that is, the building is a
 single unit (no seismic gap) with two ‘wings’ near to or at right angles to each other.</p>\r\n<p><img alt=\"PLFL_USA_Brzev&amp;Googleearth_1\" class=\"image-inline\" height=\"208\" src=\"../images/plfl
_usa_brzev-googleearth_1_592x208.jpg\" width=\"592\" /></p>\r\n<p>This building in San Francisco, California has a L-shaped plan (Left: S. Brzev; right: Map data ©2013   Google, DigitalGlobe, U.S. Geolog
ical Survey)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,91,'','',1,1146,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (223,221,'Fibre cement or metal tile roof covering [RMT2]','fibre-cement-or-metal-tile-rmt2','<p><a name=\"taxonomy:RMT2\"></a></p>\r\n<p>Lightweight fibre cement/as
bestos sheet tiles, or pressed metal tiles. Overlapping and usually fastened to wood battens.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:0
0:00','0000-00-00 00:00:00','','','',1,92,'','',1,957,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (224,222,'Wooden roof, unknown [RWO99]','wood-unknown-rwo99','<p><a name=\"taxonomy:RWO99\"></a></p>\r\n<p>It is clear that the roof structure is made from wood, but
 the type of wooden structural system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:0
0:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,93,'','',1,926,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (225,223,'Unknown lateral load-resisting system [L99]','unknown-lateral-load-resisting-system-l99','<p><a name=\"taxonomy:L99\"></a></p>\r\n<p>Lateral load-resisting
 system unknown due to it being unclear which system is used. The system may be hidden, or information about it is unavailable.</p>\r\n<p><img alt=\"L99_shanghai_China_Scawthorn_1\" class=\"image-inline\
" src=\"../images/l99_shanghai_china_scawthorn_1_400x240.jpg\" /></p>\r\n<p>Lateral load-resisting system for this building in Shanghai, China is unknown (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:
00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,94,'','',1,1010,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (226,224,'Wooden floor, unknown [FW99]','wood-unknown-fw99','<p><a name=\"taxonomy:FW99\"></a></p>\r\n<p>It is clear that the floor structure is made from wood, but 
the type of wooden structural system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00
:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,85,'','',1,918,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (227,225,'Shallow-arched masonry floor [FM2]','shallow-arched-masonry-floor-fm2','<p><a name=\"taxonomy:FM2\"></a></p>\r\n<p><span>Shallow-arched masonry floor spans
 between metal, timber or concrete joists, with ballast fill and overlaid with flooring.</span></p>\r\n<p><span><img alt=\"RM2_Lutman_1\" class=\"image-inline\" src=\"../images/RM2_-_Lutman_1_400x240.jpg
\" /></span></p>\r\n<p><span><span>Masonry jack-arch construction (M. Lutman)</span></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:
00','0000-00-00 00:00:00','','','',1,84,'','',1,1516,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (228,226,'5-9 Units [RES2C]','5-9-units-res2c','<p><span>Apartments, condominiums, townhouses of 5-9 units. Residential units are structurally connected.</span></p>\
r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,83,'','',1,1123,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (229,227,'Masonry reinforcement, unknown [MR99]','masonry-reinforcement-unknown-mr99','<p><a name=\"taxonomy:MR99\"></a></p>\r\n<p>It is known that the masonry struc
ture is reinforced, but the type of reinforcement is not known.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',''
,'','',1,74,'','',1,865,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (230,228,'Public building [COM6]','public-building-com6','<p><span>Examples: gallery, museum, monument building, library</span></p>\r\n','',1,8,'0000-00-00 00:00:00'
,536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,75,'','',1,873,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (231,229,'Rubble (field stone) or semi-dressed stone [STRUB]','rubble-field-stone-or-semi-dressed-stone-strub','<p><a name=\"taxonomy:STRUB\"></a></p>\r\n<p>Rubble/f
ield <a class=\"internal-link\" href=\"stone-masonry\">stone masonry</a> is composed of uncoursed rounded field stones or roughly-cut stones used for construction with or without mortar. There are two wa
ll wythes and a core, usually filled with stone rubble and mud. Semi-dressed stone masonry is characterized by one wall wythe (usually exterior) built using shaped stones; usually only the exposed stone 
surface is shaped. In some cases, stone masonry can be reinforced, usually with wood elements (<a class=\"internal-link\" href=\"wood-reinforced-rw\">wood-reinforced</a>).</p>\r\n<p><img alt=\"Rubble -fi
eld stone- or semi-dressed stone 1.jpg\" class=\"image-inline\" height=\"247\" src=\"../images/STRUB_Italy_Schacher_1_275x247.jpg\" style=\"float: left; \" width=\"275\" /></p>\r\n<span></span>\r\n<span>
</span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n \r\n<p>Rubble stone masonry, Italy (T. Schacher)</p>\r\n<p style=\"text-align: left; \"><
img alt=\"STRUB_Indonesia_Bothara_1\" class=\"image-inline\" src=\"../images/strub_indonesia_bothara_1_400x247.jpg\" /></p>\r\n<p style=\"text-align: left; \">Rubble stone masonry constructed using round
 river stones in lime or cement:lime mortar, usually 250 mm thick, West Sumatra, Indonesia (J. Bothara)</p>\r\n<p style=\"text-align: left; \"><img alt=\"STRUB_UK_Brzev_1\" class=\"image-inline\" height=
\"317\" src=\"../images/strub_uk_brzev_1_347x317.jpg\" width=\"347\" /></p>\r\n<p style=\"text-align: left; \">Random rubble stone masonry, Cambridge, United Kingdom (S. Brzev)</p>\r\n<p style=\"text-ali
gn: left; \"><img alt=\"STRUB_Algeria_Farsi_1\" class=\"image-inline\" src=\"../images/strub_algeria_farsi_1_400x317.jpg\" /></p>\r\n<p style=\"text-align: left; \">Stone masonry building in Algiers suff
ered damage in the 2003 Boumerdes, Algeria earthquake (M. Farsi)</p>\r\n<p style=\"text-align: left; \"><img alt=\"STRUB_Pakistan_Bothara_1\" class=\"image-inline\" src=\"../images/strub_pakistan_bothara
_1_547x254.jpg\" /></p>\r\n<p style=\"text-align: left; \">Rubble stone masonry with timber bands, NWFP, Pakistan (J. Bothara)</p>\r\n<p><img alt=\"Rubble -field stone- or semi-dressed stone 2.jpeg\" cla
ss=\"image-inline\" src=\"../images/STRUB_India_Brzev_1_400x317.jpg\" style=\"float: left; \" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-a
lign: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text
-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"te
xt-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Rubble stone masonry, Maharashtra, India (S. Brzev)</p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"><img alt=\"
Rubble -field stone- or semi-dressed stone 3.jpg\" class=\"image-inline\" src=\"../images/STRUB_India_Brzev_3_400x317.jpg\" /> <img alt=\"Rubble -field stone- or semi-dressed stone 3.jpg\" class=\"image-
inline\" src=\"../images/STRUB_India_Brzev_2_400x317.jpg\" style=\"padding-left: 0px; float: none; \" /></p>\r\n<p style=\"text-align: left; \">Semi-dressed stone masonry, Maharashtra, India (S. Brzev)</
p>\r\n<p style=\"text-align: left; \"><img alt=\"STRUB_Chile_Mihaldzic_1\" class=\"image-inline\" src=\"../images/strub_chile_mihaldzic_1_400x317.jpg\" /></p>\r\n<p style=\"text-align: left; \">Semi-dres
sed stone masonry in mud mortar, Chile (S. Mihaldzic)</p>\r\n<p style=\"text-align: left; \"><img alt=\"STRUB_Marrakesh_Morocco_Scawthorn_1\" class=\"image-inline\" height=\"279\" src=\"../images/strub_m
arrakesh_morocco_scawthorn_1_343x279.jpg\" width=\"343\" /></p>\r\n<p style=\"text-align: left; \"><img alt=\"STRUB_Marrakesh_Morocco_Scawthorn_2\" class=\"image-inline\" height=\"199\" src=\"../images/s
trub_marrakesh_morocco_scawthorn_2_361x199.jpg\" width=\"361\" /></p>\r\n<p style=\"text-align: left; \">Rubble stone masonry, Marrakesh, Morocco (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,
'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,76,'','',1,2732,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (232,230,'Direction of the building','direction-of-the-building','<p><a name=\"taxonomyTag:direction-of-building\"></a></p>\r\n<p>The Direction attribute is intended
 to identify two principal horizontal directions of the building plan.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00
:00','','','',1,77,'','',1,945,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (233,231,'Unknown foundation system [FOS99]','unknown-foundation-system-fos99','<p><a name=\"taxonomy:FOS99\"></a></p>\r\n<p>The type of foundation system is unknown
. There is insufficient information available or it is not possible to determine the foundation type from a survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:0
0:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,78,'','',1,921,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (234,232,'Government general services [GOV1]','government-general-services-gov1','<p><span>Office buildings used for national government or local government purposes
.</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,79,'','',1,887,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (235,233,'Direction Y ','direction-y','<p><a name=\"taxonomyTag:direction-y\"></a></p>\r\n<p>Second principal horizontal direction of the building plan. This directi
on is always perpendicular (orthogonal) to Direction X. It is defined as <a class=\"internal-link\" href=\"perpendicular-to-street-of\">Perpendicular to Street</a> if Direction X is listed as <a class=\"
internal-link\" href=\"parallel-to-street-pf\">Parallel to Street</a>. Alternatively, it is defined as <a class=\"internal-link\" href=\"unspecified-direction-d99\">Unspecified Direction</a> when Directi
on X is defined as Unspecified Direction. See the <a class=\"internal-link\" href=\"direction\">Direction</a> glossary term for an illustrative example.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000
-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,80,'','',1,1059,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (236,234,'Direction X ','direction-x','<p><a name=\"taxonomyTag:direction-x\"></a></p>\r\n<p>First principal horizontal direction of the building plan. It is listed 
as <a class=\"internal-link\" href=\"parallel-to-street-pf\">Parallel to Street</a> if the building has a façade parallel to the street, or is listed as <a class=\"internal-link\" href=\"unspecified-dire
ction-d99\">Unspecified Direction</a> if the building does not. If there is more than one façade parallel to a street, consider Direction X as parallel to the façade where the main entrance is located. S
ee the <a class=\"internal-link\" href=\"direction\">Direction</a> glossary term for an illustrative example.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,81,'','',1,4157,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (237,235,'Institutional housing [RES4]','institutional-housing-res4','<p>Group housing; including military, college, prisons, and nursing homes.</p>\r\n','',1,8,'000
0-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,82,'','',1,808,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (238,236,'Roof shape, other [RSHO]','roof-shape-other-rsho','<p><a name=\"taxonomy:RSHO\"></a></p>\r\n<p>The shape of the roof is known, but it cannot be described b
y any of the roof shapes in this table.</p>\r\n<p><img alt=\"RSHO_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rsho_canada_brzev_1_400x194.jpg\" /></p>\r\n<p>Conical roof shape, H.R. MacMillan
 Space Centre, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,95,'','',1,
1089,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (239,237,'Adjoining buildings on two sides [BP2]','adjoining-buildings-on-two-sides-bp2','<p>A building, usually located on a street corner, with adjoining or attach
ed buildings <b>on two sides</b>. This includes mid-terrace buildings, buildings which are a part of the row of at least three buildings, or corner buildings with adjoining buildings on two perpendicular
 sides.</p>\r\n<p><img alt=\"BP2_diagram_2\" class=\"image-inline\" height=\"193\" src=\"../images/bpi_diagram_1_297x193.jpg\" width=\"297\" /></p>\r\n<p>Example 1: the building shown in black in this pl
an is located within a block and it has adjoining buildings on two sides.</p>\r\n<p><img alt=\"BPC_diagram_1\" class=\"image-inline\" height=\"200\" src=\"../images/bpc_diagram_1_304x200.jpg\" width=\"30
4\" /></p>\r\n<p>Example 2: the building shown in black in this plan view is located on a corner and has adjoining buildings on two perpendicular sides.</p>\r\n<p><img alt=\"BP2_Canada_Brzev_1\" class=\"
image-inline\" height=\"211\" src=\"../images/bp2_canada_brzev_1_607x211.jpg\" width=\"607\" /></p>\r\n<p>An example of a building within a block with adjoining buildings on two sides, Vancouver, Canada 
(left photo: S. Brzev, right: Map data ©2013 Google, Province of British Columbia, DigitalGlobe)</p>\r\n<p><img alt=\"BPC_NewZealand_Allen_1\" class=\"image-inline\" height=\"183\" src=\"../images/bpc_ne
wzealand_allen_1_326x183.jpg\" width=\"326\" /></p>\r\n<p>A corner building with adjoining buildings on two perpendicular sides, New Zealand (L. Allen).</p>\r\n<p><img alt=\"BPC_TalcaChile_Brzev_1\" clas
s=\"image-inline\" height=\"222\" src=\"../images/bpc_talcachile_brzev_1_297x222.jpg\" width=\"297\" /></p>\r\n<p>A corner building with adjoining buildings on two perpendicular sides, Talca, Chile (S. B
rzev).</p>\r\n<p><img alt=\"BP2_NewZealand_Allen_3\" class=\"image-inline\" height=\"196\" src=\"../images/bpi_newzealand_allen_2_347x196.jpg\" width=\"347\" /></p>\r\n<p>Terrace housing with adjoining h
ouses on two sides, New Zealand (L. Allen)</p>\r\n<p><img alt=\"BP2_ SantiagoChile_Brzev_1\" class=\"image-inline\" height=\"298\" src=\"../images/bpi_-santiagochile_brzev_1_243x298.jpg\" width=\"243\" /
></p>\r\n<p>A midrise building in Santiago, Chile with adjoining low-rise buildings on two sides (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0
000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,2,'','',1,5881,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (240,238,'Stone masonry','stone-masonry','<p>Stone masonry construction is usually composed of stones and mortar. The stones range from unshaped field stones (<a cla
ss=\"internal-link\" href=\"rubble-field-stone-or-semi-dressed-stone-strub\">rubble masonry construction</a>) to shaped stone blocks (<a class=\"internal-link\" href=\"dressed-stone-stdre\">dressed stone
 masonry</a>).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,15,'','',1,1179,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (241,239,'Hybrid lateral load-resisting system [LH]','hybrid-lateral-load-resisting-system-lh','<p>Hybrid Lateral Load-Resisting System (LLRS) exists in one of the f
ollowing two cases: a) there is more than one LLRS in the building, but there is no clear distinction between LLRSs in two principal directions (X and Y), or b) there is only one LLRS in the building, bu
t two or more materials of the LLRS are used in different portions of the building. Note that <a class=\"internal-link\" href=\"dual-frame-wall-system-ldual\">Dual Frame-Wall System</a> is also a hybrid 
system, however it has been classified as a separate LLRS in the taxonomy. It should be also noted that <a class=\"internal-link\" href=\"direction\">Direction</a> attribute is intended to be used to des
cribe buildings with two distinct LLRSs in principal directions of the building, which are also hybrid systems.</p>\r\n<p>Different LLRSs could exist up the building height, or there could be more than o
ne system in each principal direction of the building. For example, reinforced concrete moment frame exists in bottom one or two storeys and load-bearing masonry in the upper storeys in the same building
.</p>\r\n<p>An example of a hybrid LLRS where two different materials are used is Wall system, where load-bearing masonry exists in bottom one or two storeys supporting a wooden lateral load-resisting sy
stem (also classified as Wall) above.</p>\r\n<p><img alt=\"LH_Chile_Moroni_1\" class=\"image-left\" height=\"198\" src=\"../images/direction_chile_moroni_3_259x198.jpg\" width=\"259\" /></p>\r\n<p><img a
lt=\"LH_Chile_Moroni_2\" class=\"image-inline\" height=\"214\" src=\"../images/direction_chile_moroni_4_375x214.jpg\" width=\"375\" /></p>\r\n<p>An example of a hybrid system from Chile, where reinforced
 concrete columns exist in longitudinal direction (baylines 1 and 3) at the lower two floor levels, and there are reinforced masonry walls at upper levels (as shown on the floor plan above). Reinforced c
oncrete walls along bayline 2 exist at the ground floor level, and there are reinforced masonry walls at upper levels. Walls in transverse direction (baylines A and C) are of reinforced masonry at all fl
oor levels. Walls along bayline B are of reinforced concrete construction at the ground floor level, and reinforced masonry construction at upper levels (M.O. Moroni Yadlin).</p>\r\n<p><img alt=\"LH_Gree
ce_Pomonis_1\" class=\"image-inline\" src=\"../images/lh_greece_pomonis_1_400x214.jpg\" /></p>\r\n<p><span>An old loadbearing brick masonry building at the ground  floor has been overlaid by new reinforc
ed concrete frame construction  above; the damage to the masonry part occurred during the Athens  earthquake of Sept. 7, 1999; reinforced concrete frame extensions (in  plan, or elevation, or both) to ol
d masonry buildings are frequent in  Greece </span><span>where they constitute around 5% of the existing building stock</span><span>” (A. Pomonis)</span></p>\r\n<p><img alt=\"LH_China_Dai_2\" class=\"ima
ge-left\" height=\"235\" src=\"../images/lh_china_dai_2_313x235.jpg\" width=\"313\" /></p>\r\n<p><img alt=\"LH_China_Dai_1\" class=\"image-inline\" height=\"226\" src=\"../images/lh_china_dai_1_299x226.j
pg\" width=\"299\" /></p>\r\n \r\n<p>Buildings with reinforced concrete frame used in the first storey and confined masonry above can be found in China; some buildings of this type were affected by the 2
008 Wenchuan earthquake (J. Dai)</p>\r\n<p><img alt=\"LH_Kyrgyzstan_Kanbolotov_1\" class=\"image-left\" height=\"233\" src=\"../images/lh_kyrgyzstan_kanbolotov_1_311x233.jpg\" width=\"311\" /></p>\r\n<p>
<img alt=\"LH_Kyrgyzstan_Begaliev_1\" class=\"image-inline\" height=\"235\" src=\"../images/lh_kyrgyzstan_begaliev_1_313x235.jpg\" width=\"313\" /></p>\r\n<p>Buildings with a cast in-situ reinforced conc
rete frame at the ground floor level and brick masonry or concrete walls above can be found in Kyrgyzstan (left: K. Kanbolotov; right: U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n<p><img alt=\"LH_Kob
e_Japan_Scawthorn_1\" class=\"image-inline\" height=\"267\" src=\"../images/lh_kobe_japan_scawthorn_1_371x267.jpg\" width=\"371\" /></p>\r\n<p>C<span>ollapse of the 6th storey of the 8-storey Kobe City H
all Annex building in the 1995 Kobe, Japan earthquake. The collapse was likely due to a hybrid lateral load-resisting system consisting of steel reinforced concrete (SRC) at lower floors and RC frame at 
upper floors (C. Scawthorn). <br /></span></p>\r\n<p><img alt=\"LH_New Zealand_Centeno_1\" class=\"image-left\" height=\"314\" src=\"../images/lh_new-zealand_centeno_1_235x314.jpg\" width=\"235\" /><img 
alt=\"LH_New Zealand_Centeno_2\" class=\"image-inline\" height=\"321\" src=\"../images/lh_new-zealand_centeno_2_242x321.jpg\" width=\"242\" /></p>\r\n<p>A six-storey building damaged in the February 2011
 Christchurch, New Zealand earthquake has reinforced concrete walls at the ground floor level and reinforced masonry construction above (in the form of interior reinforced concrete block walls in the int
erior and cavity walls at the exterior) (J. Centeno)</p>\r\n<p><img alt=\"LH_USA_Bonowitz_1\" class=\"image-inline\" height=\"274\" src=\"../images/lh_usa_bonowitz_1_366x274.jpg\" width=\"366\" /></p>\r\
n<p>A hybrid system consisting of cast-in-place reinforced concrete construction at the ground floor level and wood frame construction above can be found in California (USA) and British Columbia (Canada)
 (D. Bonowitz)</p>\r\n<p><img alt=\"LH_USA_Bonowitz_2\" class=\"image-left\" height=\"224\" src=\"../images/lh_usa_bonowitz_2_299x224.jpg\" width=\"299\" /></p>\r\n<p><img alt=\"LH_USA_Bonowitz_3\" class
=\"image-inline\" height=\"230\" src=\"../images/lh_usa_bonowitz_3_307x230.jpg\" width=\"307\" /></p>\r\n<p>Reinforced concrete columns and walls in the ground storey and wood frame apartments above - gr
ound floor usually used for parking, California (D. Bonowitz). A building with precast reinforced concrete frame at the ground floor level and wood frame above collapsed in the 1994 Northridge, Californi
a earthquake (the concrete frame collapsed and the building lost ground floor) (FEMA 454)</p>\r\n<p><img alt=\"LH_India_Rai_1\" class=\"image-inline\" height=\"270\" src=\"../images/lh_india_rai_1_360x27
0.jpg\" width=\"360\" /></p>\r\n<p>A building with the ground floor consisting of unreinforced stone and brick masonry construction, and the second storey with Dhajji Dewari construction, Kashmir, India 
(D. Rai)</p>\r\n<p><img alt=\"LH_Chile_Brzev_2\" class=\"image-left\" height=\"261\" src=\"../images/lh_chile_brzev_2_295x261.jpg\" width=\"295\" /><img alt=\"LH_Chile_Brzev_1\" class=\"image-inline\" he
ight=\"265\" src=\"../images/lh_chile_brzev_1-1_309x265.jpg\" width=\"309\" /></p>\r\n<p>A building with a hybrid lateral load-resisting system consisting of the confined masonry construction at the firs
t storey and timber construction at the second storey, Constitution, Chile (S. Brzev)</p>\r\n<p><img alt=\"LH_Greece_Pomonis_2\" class=\"image-left\" height=\"184\" src=\"../images/lh_greece_pomonis_2_32
5x184.jpg\" width=\"325\" /><img alt=\"LH_Greece_Pomonis_3\" class=\"image-inline\" height=\"191\" src=\"../images/lh_greece_pomonis_3_288x191.jpg\" width=\"288\" /></p>\r\n<p>An example of a hybrid syst
em with reinforced concrete frame at the ground floor level and steel frame above, Athens, Greece (the left photo shows a building under construction and the right photo shows a similar building when com
pleted) (A. Pomonis)</p>\r\n<p><img alt=\"LH_India_Rai_2\" class=\"image-inline\" src=\"../images/lh_india_rai_2_400x191.jpg\" /></p>\r\n<p>A hybrid building with stone masonry wall at the ground floor, 
brick masonry wall at the second floor, and Dhajji Dewari construction (note wooden posts) at the top floor level, Kashmir, India (D. Rai)</p>\r\n<p><img alt=\"LH_Chile_Astroza_1\" class=\"image-inline\"
 height=\"261\" src=\"../images/lh_chile_astroza_1_403x261.jpg\" width=\"403\" /></p>\r\n<p>A hybrid system consisting of confined masonry at the bottom floor and reinforced clay block masonry above; thi
s photo shows a building in Chile which suffered damage at the second floor in the 1985 Llolleo earthquake (M. Astroza)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 
00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,16,'','',1,1945,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (242,240,'U- or C-shape [PLFU]','u-shape-plfu','<p class=\"western\">The footprint of the building when viewed in plan resembles the shape of the letter <b>U</b>.</p
>\r\n<p class=\"western\">Note that this also includes “<b>C</b>” shaped buildings (which look like a “<b>U</b>” when viewed from another direction).</p>\r\n<p class=\"western\"><img alt=\"PLFU_Canada_Ot
tawa_Googleearth_1\" class=\"image-inline\" height=\"218\" src=\"../images/plfu_canada_ottawa_googleearth_1_244x218.jpg\" width=\"244\" /></p>\r\n<p class=\"western\">Fairmont Chateau Laurier Hotel in Ot
tawa, Canada has a U-shaped plan (Map data ©2013  Google, DigitalGlobe)</p>\r\n<p class=\"western\"><img alt=\"PLFU_Canada_Toronto_Googleearth_1\" class=\"image-inline\" height=\"228\" src=\"../images/pl
fu_canada_toronto_googleearth_1_268x228.jpg\" width=\"268\" /></p>\r\n<p class=\"western\">City Hall in Toronto, Canada has two half-circle office towers, curving around a circular council chamber; the t
owers can be classified as U-shaped building plans (Map data ©2013  Google, DigitalGlobe)</p>\r\n<p class=\"western\"><img alt=\"PLFU_Japan_Scawthorn_1\" class=\"image-inline\" height=\"196\" src=\"../im
ages/plfu_japan_scawthorn_1_582x196.jpg\" width=\"582\" /></p>\r\n<p class=\"western\">A building with U-shaped plan (left photo: C. Scawthorn, right: Map data ©2013  Google, ZENRIN)</p>\r\n','',1,8,'000
0-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,17,'','',1,1262,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (243,241,'Wooden beams or trusses and joists supporting light flooring [FW1]','wooden-beams-or-trusses-and-joists-supporting-light-flooring-fw1','<p><a name=\"taxono
my:FW1\"></a></p>\r\n<p>Wooden beams or trusses and joists, supporting light flooring, e.g. wooden planks.</p>\r\n<p><img alt=\"Wooden beams with two perpendicular layers of wood-plank flooring, Italy (M
affei et al. 2006)\" class=\"image-inline\" src=\"../images/FW1_Italy_Maffei_1_400x144.jpg\" /></p>\r\n<p>Wooden beams with two perpendicular layers of wood-plank flooring, Italy (Maffei et al., EERI, 20
06)</p>\r\n<p><img alt=\"Wooden floor structure overlaid by planks and bamboo strips, Nepal (WHE Report 74)\" class=\"image-inline\" src=\"../images/FW1_Nepal_WHE74_1_400x144.gif\" /></p>\r\n<p>Wooden fl
oor structure overlaid by planks and bamboo strips, Nepal (Y.K. Parajuli, J. Bothara, and B.K. Upadhyay, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/categ
ory/asia/nepal\">World Housing Encyclopedia</a> Report 74</span>)</p>\r\n<p><img alt=\"FW1_Portugal_Brzev_1\" class=\"image-inline\" height=\"267\" src=\"../images/fw1_portugal_brzev_1_362x267.jpg\" widt
h=\"362\" /></p>\r\n<p>Wooden joists supporting light flooring, Portugal (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','000
0-00-00 00:00:00','','','',1,18,'','',1,1117,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (244,242,'Mostly residential and industrial [MIX4]','mostly-residential-and-industrial-mix4','<p><a name=\"taxonomy:MIX4\"></a></p>\r\n<p>The building is mixed use, 
a mixture of residential and industrial. The majority of the floor area is for residential use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00
:00:00','0000-00-00 00:00:00','','','',1,19,'','',1,811,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (245,243,'Height','height','<p>The height of the building is defined in this table, measured in storeys. The number of storeys below ground is also defined, as is th
e height of the <a class=\"internal-link\" href=\"ground-floor\">ground floor</a> level above grade, and the slope of the site.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'000
0-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,20,'','',1,1062,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (246,244,'Precast concrete roof with reinforced concrete topping [RC3]','precast-concrete-roof-system-with-reinforced-concrete-topping-rc3','<p><a name=\"taxonomy:RC
3\"></a></p>\r\n<p>Precast concrete units with reinforced concrete topping. Precast units  include hollow-core slabs, solid slabs, a system of precast concrete  joists with timber or hollow masonry infil
l, double-tee units. Sometimes overlaid with light-weight roofing. This system is similar to <a class=\"internal-link\" href=\"precast-concrete-floor-with-reinforced-concrete-topping-fc3\">Precast Concre
te Floor with Reinforced Concrete Topping</a>.</p>\r\n<p><img alt=\"Precast roof system, Algeria (S. Brzev)\" class=\"image-inline\" src=\"../images/RC3_Algeria_Brzev_1_400x244.jpg\" /></p>\r\n<p><span c
lass=\"contenttype-undefined\">Roof/floor system consisting of cast-in-place reinforced concrete joists and precast concrete masonry units, Algeria (S. Brzev)</span></p>\r\n<p><img alt=\"RC3_Chile_Brzev_
1\" class=\"image-inline\" src=\"../images/precast-roof-system-chile-s.-brzev_400x244.jpg\" /></p>\r\n<p>Roof/floor system consisting of concrete masonry units and cast-in-situ  reinforced concrete joist
s (known as \"Tralix\" system), Chile (S. Brzev)</p>\r\n<p><span class=\"contenttype-undefined\"><img alt=\"RC3_Nepal_PorterK_1\" class=\"image-inline\" height=\"250\" src=\"../images/rc3_nepal_porterk_1
_331x250.jpg\" width=\"331\" /></span></p>\r\n<p><span class=\"contenttype-undefined\">A double-tee beam lifted by the crane at the construction site, Denver, USA (K. Porter)</span></p>\r\n<p><span class
=\"contenttype-undefined\"><img alt=\"RC3_Nepal_PorterK_2\" class=\"image-inline\" height=\"265\" src=\"../images/rc3_nepal_porterk_2_256x265.jpg\" width=\"256\" /></span></p>\r\n<p><span class=\"content
type-undefined\">Wall corbels ready to support double-tees, Denver, USA (K. Porter)<br /></span></p>\r\n<p><span class=\"contenttype-undefined\"><br /></span></p>\r\n \r\n<div id=\"_mcePaste\"><!--[if !m
so]> <mce:style><!  v\\:* {behavior:url(#default#VML);} o\\:* {behavior:url(#default#VML);} w\\:* {behavior:url(#default#VML);} .shape {behavior:url(#default#VML);} --> <!--[endif] --><!--[if gte mso 9]>
<xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves /> <w:TrackFormatting /> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvali
d> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF /> <w:LidThemeOther>EN-CA</w:LidThemeOther> <w:LidThemeAsian>X-NON
E</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGro
wAutofit /> <w:SplitPgBreakAndParaMark /> <w:EnableOpenTypeKerning /> <w:DontFlipMirrorIndents /> <w:OverrideTableStyleHps /> </w:Compatibility> <m:mathPr> <m:mathFont m:val=\"Cambria Math\" /> <m:brkBin
 m:val=\"before\" /> <m:brkBinSub m:val=\"&#45;-\" /> <m:smallFrac m:val=\"off\" /> <m:dispDef /> <m:lMargin m:val=\"0\" /> <m:rMargin m:val=\"0\" /> <m:defJc m:val=\"centerGroup\" /> <m:wrapIndent m:val
=\"1440\" /> <m:intLim m:val=\"subSup\" /> <m:naryLim m:val=\"undOvr\" /> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUse
d=\"true\"   DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"   LatentStyleCount=\"267\"> <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QF
ormat=\"true\" Name=\"Normal\" /> <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\" /> <w:LsdException Locked=\"false\" 
Priority=\"9\" QFormat=\"true\" Name=\"heading 2\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true
\" Name=\"heading 4\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\" /> <w:L
sdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\" /> <w:LsdException Locked=\"false\" 
Priority=\"9\" QFormat=\"true\" Name=\"heading 9\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\" /> <w:LsdException
 Locked=\"false\" Priority=\"39\" Name=\"toc 3\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\" /> <w:LsdException L
ocked=\"false\" Priority=\"39\" Name=\"toc 6\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\" /> <w:LsdException Loc
ked=\"false\" Priority=\"39\" Name=\"toc 9\" /> <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\" /> <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"
    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\" /> <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\" /> <w:LsdException Locked=\"false\" Priority=\"11\" SemiHid
den=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\" /> <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"S
trong\" /> <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"59\" SemiHid
den=\"false\"    UnhideWhenUsed=\"false\" Name=\"Table Grid\" /> <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\" /> <w:LsdException Locked=\"false\" Priority=\"1\" Sem
iHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shadin
g\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    Un
hideWhenUsed=\"false\" Name=\"Light Grid\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\" /> <w:LsdException Locked=\"false
\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"M
edium List 1\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\
"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\" /> <w:LsdException 
Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false
\" Name=\"Dark List\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading\" /> <w:LsdException Locked=\"false\" Priority=\"72\" Se
miHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid\" /> <w:Lsd
Exception Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    Unh
ideWhenUsed=\"false\" Name=\"Light List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\" /> <w:LsdException Loc
ked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUse
d=\"false\" Name=\"Medium Shading 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\" /> <w:LsdException Lock
ed=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\" /> <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\" /> <w
:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\" /> <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"   
 UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\" /> <
w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"  
  UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\" /> <w:LsdEx
ception Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhe
nUsed=\"false\" Name=\"Colorful Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\" /> <w:LsdException 
Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUse
d=\"false\" Name=\"Light Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\" /> <w:LsdException Locked=\"f
alse\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" N
ame=\"Medium Shading 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\" /> <w:LsdException Locked=\"false
\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Na
me=\"Medium List 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\" /> <w:LsdException Locked=\"false\" Prio
rity=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Me
dium Grid 3 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"71\"
 SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful L
ist Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"60\" Sem
iHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent
 3\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"fal
se\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"
 /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"fals
e\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\" /> <w:
LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    
UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\" /> <w:LsdExceptio
n Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWh
enUsed=\"false\" Name=\"Colorful List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\" /> <w:LsdException Lo
cked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=
\"false\" Name=\"Light List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\" /> <w:LsdException Locked=\"false\
" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" 
Name=\"Medium Shading 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\" /> <w:LsdException Locked=\"false\"
 Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name
=\"Medium Grid 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priori
ty=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark
 List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"72\
" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Gri
d Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiH
idden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\" 
/> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"fa
lse\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\" /
> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\
"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\" /> <w:Ls
dException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    Un
hideWhenUsed=\"false\" Name=\"Dark List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\" /> <w:LsdExcepti
on Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhen
Used=\"false\" Name=\"Colorful Grid Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\" /> <w:LsdException Lock
ed=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"fal
se\" Name=\"Light Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\" /> <w:LsdException Locked=\"false
\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\"
 Name=\"Medium List 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\" /> <w:LsdException Locked=\"false\" P
riority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\
"Medium Grid 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\" /> <w:LsdException Locked=\"false\" Priority
=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful S
hading Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"73\" 
SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name
=\"Subtle Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\" /> <w:LsdException Locked=\"false\" Pr
iority=\"31\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\" /> <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"    UnhideWhenUsed=\"fals
e\" QFormat=\"true\" Name=\"Intense Reference\" /> <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\" /> <w:LsdExceptio
n Locked=\"false\" Priority=\"37\" Name=\"Bibliography\" /> <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\" /> </w:LatentStyles> </xml><![endif]--></div>\r\n','',1,
8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,21,'','',1,3111,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (247,245,'Wood, unknown [W99]','wood-unknown-w99','<p><a name=\"taxonomy:W99\"></a></p>\r\n<p>It is clear that the structural material resisting lateral loads is woo
d, but the type of wood construction is<br />unknown. The wood structure may be hidden, or information about it is unavailable.</p>\r\n<p><img alt=\"W99_New Zealand_ClarkW_1\" class=\"image-inline\" src=
\"../images/w99_new-zealand_clarkw_1_448x343.jpg\" /></p>\r\n<p>Wood house, Christchurch, New Zealand (W. Clark)</p>\r\n<p><img alt=\"W99_Tajikistan_Niyazov_1\" class=\"image-inline\" src=\"../images/w99
_tajikistan_niyazov_1_470x354.jpg\" /></p>\r\n<p>Wood house, Tajikistan (J. Niyazov)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','00
00-00-00 00:00:00','','','',1,22,'','',1,1072,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (248,246,'Unspecified direction [D99]','unspecified-direction-d99','<p><a name=\"taxonomy:D99\"></a></p>\r\n<p>Use this attribute if the building does not have a faç
ade that is parallel to a street. Choose any other façade and define Direction X parallel to it. Direction Y will  be perpendicular (orthogonal) to Direction X. This includes buildings that are not locat
ed next to a street or their orientation is not parallel to the street. It also applies to any building where information about its direction is unavailable</p>\r\n<p><img alt=\"Direction_3\" class=\"ima
ge-inline\" src=\"../images/D99_-_Diagram_1_400x240.jpg\" /></p>\r\n<p>Unspecified Direction - when street cannot be identified</p>\r\n<p><img alt=\"Direction_4\" class=\"image-inline\" src=\"../images/D
99_-_Diagram_2_400x240.jpg\" /></p>\r\n<p>Unspecified Direction - case of a building with a curved plan shape</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,23,'','',1,1244,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (249,247,'No lateral load-resisting system [LN]','no-lateral-load-resisting-system-ln','<p>There is no identifiable structural system that is capable of resisting se
ismic loads, for example a post-and-beam structure where columns are not cantilevered and the connections between column and beam are not moment-resisting.</p>\r\n<p><img alt=\"LN_Allen&amp;Brzev_1\" cla
ss=\"image-inline\" height=\"252\" src=\"../images/ln_allen-brzev_1_357x252.jpg\" width=\"357\" /></p>\r\n<p>A structure without lateral load-resisting system is unstable when subjected to lateral loads,
 while a moment frame is able to resist seismic forces</p>\r\n<p><img alt=\"LN_-_Charleson_1\" class=\"image-inline\" height=\"164\" src=\"../images/ln_-_charleson_1_573x164.jpg\" width=\"573\" /></p>\r\
n<p>None of these lateral load-resisting systems exist in a building classified as No Lateral Load-Resisting System</p>\r\n<p><img alt=\"LN_Greece_McEwen_1\" class=\"image-left\" height=\"180\" src=\"../
images/ln_greece_mcewen_1_386x180.jpg\" width=\"386\" /><img alt=\"LN_Greece_McEwen_2\" class=\"image-inline\" height=\"169\" src=\"../images/ln_greece_mcewen_2_225x169.jpg\" width=\"225\" /></p>\r\n \r\
n<p>Ancient Greek temple Parthenon in Athens (construction completed in 432 BC) can be classified as No Lateral Load-Resisting System, because there is no moment connection between columns and beams; the
 photos show the temple during the structural rehabilitation in 2007 (B. McEwen)</p>\r\n<p><img alt=\"LN_PNH Palace A-4_Scawthorn_1\" class=\"image-inline\" height=\"289\" src=\"../images/ln_pnh-palace-a
-4_scawthorn_1_392x289.jpg\" width=\"392\" /></p>\r\n<p>This building is a part of the Royal Palace complex in Pnom Penh, Cambodia. Its lateral load-resisting system can be characterized as No Lateral Lo
ad-Resisting System because it doesn\'t have any apparent lateral bracing (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'
,'0000-00-00 00:00:00','','','',1,14,'','',1,2203,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (250,248,'Floor-wall diaphragm connection unknown [FWC99]','floor-wall-diaphragm-connection-unknown-fwc99','<p><a name=\"FWC99\"></a></p>\r\n<p>It is not known if th
ere are any connections between the floor diaphragm(s) and the walls that are capable of transfering in-plane forces from floors to wall and restraining outward displacements of walls. There is insuffici
ent information available or the connections are not visible from a survey.</p>\r\n<p><img alt=\"FWC99_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/fwc99_canada_brzev_1_400x151.jpg\" /></p>\r\
n<p>It is not clear if floor-wall diaphragm connections are present for this unreinforced brick masonry building (S. Brzev)</p>\r\n<p><img alt=\"FWC99_Canada_Brzev_2\" class=\"image-inline\" height=\"265
\" src=\"../images/fwc99_canada_brzev_2_317x265.jpg\" width=\"317\" /></p>\r\n<p>It is not clear if floor-wall diaphragm connections are present in this stone masonry building (S. Brzev)</p>\r\n','',1,8,
'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,13,'','',1,974,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (251,249,'Concrete, unreinforced [CU]','concrete-unreinforced-cu','<p><a name=\"taxonomy:CU\"></a></p>\r\n<p><a class=\"internal-link\" href=\"concrete\">Concrete</a
> does not contain steel reinforcing, or reinforcing of any kind.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',
'','','',1,12,'','',1,1180,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (252,250,'Re-entrant corner [REC]','re-entrant-corner-rec','<p><a name=\"taxonomy:REC\"></a></p>\r\n<p>An L-, U-, E- or other (in plan) shaped building where two win
gs may oscillate out-of-phase, leading to large shear stresses in floor and/or roof diaphragms.<br /><br />If the plan setback is at least 15% of both plan dimensions, then the setback is considered to f
orm a re-entrant corner.</p>\r\n<p><img alt=\"REC_diagram_Charleson_1\" class=\"image-inline\" src=\"../images/rec_diagram_charleson_1_400x248.jpg\" /></p>\r\n<p>Examples of building shapes with re-entra
nt corners (A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p133 fig. 8.10)</p>\r\n<p><img alt=\"REC_diagram_1\" class=\"image-inline\" src=\"../images/rec_diagram_1_400x248
.jpg\" /></p>\r\n<p>This diagram illustrates the principle that a 15% plan setback is required in both directions for it to be considered a re-entrant corner.</p>\r\n<p><img alt=\"REC_FEMA454_1\" class=\
"image-inline\" src=\"../images/rec_fema454_1_322x352.jpg\" /></p>\r\n<p>Movement of the  wings of an L-shaped building during an earthquake results in high shear stresses combined with a  stress concent
ration at the re-entrant corner; this is aggravated by torsional effects which develop since the center of mass and the center of rigidity cannot coincide in this form. (FEMA 454)</p>\r\n<p><img alt=\"RE
C_USA_NISEE_1\" class=\"image-left\" height=\"190\" src=\"../images/rec_usa_nisee_1_286x190.jpg\" width=\"286\" /><img alt=\"REC_USA_NISEE_2\" class=\"image-inline\" height=\"194\" src=\"../images/rec_us
a_nisee_2_293x194.jpg\" width=\"293\" /></p>\r\n<p>West Anchorage High School suffered extensive damage in the 1964 Alaska earthquake. Stress concentration at re-entrant corner caused damage in the concr
ete roof diaphragm of this reinforced concrete building. The left photo shows building damage, and floor plan drawing is shown on the right  (Courtesy of the NISEE, University of California, Berkeley)</p
>\r\n<p><img alt=\"REC_India_Brzev_1\" class=\"image-inline\" src=\"../images/rec_india_brzev_1_400x194.jpg\" /></p>\r\n<p>An L-shaped building with re-entrant corner, India (S. Brzev)</p>\r\n','',1,8,'0
000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,3,'','',1,10660,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (253,251,'Shallow foundation, no lateral capacity [FOSN]','shallow-foundation-no-lateral-capacity-fosn','<p><a name=\"taxonomy:FOSN\"></a></p>\r\n<p>The foundations 
are less than 1m deep below grade, and they have no lateral capacity. Foundations with no lateral capacity include piles without lateral bracing support.</p>\r\n \r\n<p><img alt=\"FOSSN_diagram_-_1\" cla
ss=\"image-inline\" src=\"../images/fossn_diagram_-_1_400x240.jpg\" /></p>\r\n<p>An example of a timber pile shallow foundation with no lateral capacity.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','000
0-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,4,'','',1,1440,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (254,252,'Direction','direction','<p><a name=\"taxonomyTag:direction\"></a></p>\r\n<p>The Direction attribute is intended to identify two principal horizontal direct
ions of the building plan. It is possible to specify different <a class=\"internal-link\" href=\"lateral-load-resisting-system\"><span class=\"internal-link\">Lateral Load-Resisting System</span></a> (LL
RS) and the corresponding <a class=\"internal-link\" href=\"material-of-the-lateral-load-resisting-system\">Material of the Lateral Load-Resisting System </a>in two directions called Direction X and Dire
ction Y; these systems are often referred to as Hybrid Systems or Mixed Systems. Where it is possible to specify directions, <a class=\"internal-link\" href=\"direction-x\">Direction X</a> is parallel to
 street, and <a class=\"internal-link\" href=\"direction-y\">Direction Y</a> is perpendicular (orthogonal) to street. In some cases, it is not possible to identify Direction X and Direction Y - thus the 
user can select <a class=\"internal-link\" href=\"unspecified-direction-d99\">Unspecified Direction</a>.</p>\r\n<p>Note that other types of hybrid systems can be described by the <a class=\"internal-link
\" href=\"hybrid-lateral-load-resisting-system-lh\">Hybrid Lateral Load-Resisting System</a> attribute, which should be applied in one of the  following cases: a) there is more than one LLRS in the build
ing, but there is no clear distinction between LLRSs in directions X and Y, or b) there is only one LLRS, but two or more materials of the LLRS  are used in different portions of the building.</p>\r\n<p>
<img alt=\"Direction_1\" class=\"image-inline\" src=\"../images/Direction_-_diagram_1_768x272.jpg\" /></p>\r\n<p>A building showing possible orientation for Directions X and Y</p>\r\n<p align=\"left\"><b
>EXAMPLE 1: </b>A building has two different LLRSs: reinforced concrete flat plate (slab and column system) parallel to street, and reinforced concrete wall system perpendicular to street, as shown below
. In this case, Direction X (parallel to street) is associated with a flat plate system (LFLS) (see Section 2), and Direction Y (perpendicular to street) is associated with a wall system (LWAL) (see Sect
ion 1).</p>\r\n<p align=\"left\"><img alt=\"Direction_2\" class=\"image-inline\" height=\"568\" src=\"../images/Direction_-_diagram_2_448x568.jpg\" width=\"448\" /></p>\r\n<p align=\"left\">EXAMPLE 2: Th
e Direction attribute can be used to describe a hybrid LLRS from  Chile, with reinforced concrete frames in longitudinal  direction (Direction X) and confined masonry in transverse  direction (Direction 
Y). It is assumed that Direction X (parellel to  street) is longitudinal direction because entrance to individual housing  units is in that direction (M. O. Moroni Yadlin).</p>\r\n<p align=\"left\"><img 
alt=\"Direction_Chile_Moroni_1\" class=\"image-left\" height=\"126\" src=\"../images/lh_chile_moroni_1_309x126.jpg\" width=\"309\" /></p>\r\n<p align=\"left\"><img alt=\"Direction_Chile_Moroni_2\" class=
\"image-inline\" height=\"246\" src=\"../images/direction_chile_moroni_2_497x246.jpg\" width=\"497\" /></p>\r\n<p align=\"left\">EXAMPLE 3: The Direction attribute can be used to describe a hybrid system
 from  Chile, where confined masonry is used in one direction and reinforced  concrete shear walls in other direction (Moroni, Gomez, and Astroza, Chile, <span class=\"external-link\"><a class=\"external
-link\" href=\"http://www.world-housing.net/category/south-america/chile\">World Housing Encyclopedia</a> Report 8</span>). The photo shows an earthquake-damaged building, and the drawing shows a typical
 building plan (not related to the building shown on the photo).</p>\r\n<p align=\"left\"><img alt=\"Direction_Chile_WHE8_1\" class=\"image-left\" height=\"190\" src=\"../images/lh_chile_whe8_1_286x190.j
pg\" width=\"286\" /><img alt=\"Direction_Chile_WHE8_2\" class=\"image-inline\" height=\"374\" src=\"../images/lh_chile_whe8_2_338x374.jpg\" width=\"338\" /></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'',
'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,5,'','',1,1552,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (255,253,'Granite [SPGR]','granite-spgr','<p><a name=\"taxonomy:SPGR\"></a></p>\r\n<p>Granite is a light-colored igneous rock with a random arrangement of minerals g
rains large enough to be visible with the unaided eye.  Granite is a coarse-grained, light-colored igneous rock composed mainly of feldspars and quartz with minor amounts of mica and amphibole minerals. 
 This mineral composition usually gives granite a red, pink, gray or white color with light and dark mineral grains scattered throughout the rock.  Granite polishes well and resists weathering and acid r
ain.  Granite is hard and difficult to shape into regular blocks; for that reason it is mostly used for random rubble or semi-dressed stone masonry construction. Granite is generally resistant to scratch
ing by metal.</p>\r\n<p><img alt=\"SPGR_India_BrzevS_1\" class=\"image-left\" height=\"285\" src=\"../images/spgr_india_brzevs_1_356x285.jpg\" width=\"356\" /></p>\r\n \r\n \r\n<p><img alt=\"SPGR_India_B
rzevS_2\" class=\"image-inline\" height=\"219\" src=\"../images/spgr_india_brzevs_2_269x219.jpg\" width=\"269\" /></p>\r\n \r\n<p>Granite is used for wall construction in Maharashtra, India (S. Brzev)</p
>\r\n<p><img alt=\"SPGR_Pakistan_Schacher_1\" class=\"image-inline\" height=\"277\" src=\"../images/spsa_pakistan_schacher_1_319x277.jpg\" width=\"319\" /></p>\r\n<p>Granite stone boulders prepared for c
onstruction, Pakistan (T.Schacher)</p>\r\n<p><img alt=\"SPGR_Peru_BrzevS_1\" class=\"image-left\" height=\"187\" src=\"../images/spgr_peru_brzevs_1_390x187.jpg\" width=\"390\" /></p>\r\n<p><img alt=\"SPG
R_Peru_BrzevS_2\" class=\"image-inline\" height=\"195\" src=\"../images/spgr_peru_brzevs_2_237x195.jpg\" width=\"237\" /></p>\r\n<p>Granite was used for the construction of Inca building complex, Macchu 
Picchu, Peru (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,6,'','',1,1030,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (256,84,'Latest possible date of construction or retrofit [YPRE]','latest-possible-date-of-construction-or-retrofit-ypre','<p>The construction was completed before t
he World War II, thus the year entered is 1939.</p>','',1,8,'0000-00-00 00:00:00',536,'','2020-03-04 10:35:48',536,536,'2020-03-04 10:37:28','2020-03-04 10:07:41','0000-00-00 00:00:00','','','{\"article_
layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"s
how_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\
",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readm
ore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,7,'','',1,884,'{\"robots\":\
"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (257,255,'Non-ductile [DNO]','non-ductile-dno','<p><a name=\"taxonomy:DNO\"></a></p>\r\n<p>Steel members and steel reinforcing are not designed nor constructed to un
dergo plastic deformation before failure under earthquake loads. In the event of over-load during an earthquake structural members are expected to suffer brittle failure. For example, moment frames with 
weak columns and strong beams are non-ductile because once the columns are damaged they usually are unable to resist gravity loads.  Reinforced concrete frames will also be classified as non-ductile if b
eam and column ties have 90 degree rather than 135 degree hooks, and if there is insufficient quantity and spacing of shear reinforcement to prevent shear failure before flexural failure.</p>\r\n<p>Unrei
nforced masonry buildings usually demonstrate non-ductile performance in earthquakes.</p>\r\n<p><img alt=\"DNO_Colombia_WHE11_1\" class=\"image-inline\" src=\"../images/dno_colombia_whe11_1_610x280.jpg\"
 /></p>\r\n<p>Details of a non-ductile reinforced concrete frame at critical locations:  beam-column joint, beam and column (L.G. Mejia, Colombia, <span class=\"external-link\"><a class=\"external-link\"
 href=\"http://www.world-housing.net/category/south-america/colombia\">World Housing Encyclopedia</a> Report 11</span>)</p>\r\n<p><img alt=\"DNO_Colombia_WHE11_2\" class=\"image-inline\" src=\"../images/
dno_colombia_whe11_2_400x289.jpg\" /></p>\r\n<p>Widely spaced transverse reinforcement (ties in columns and stirrups in beams) are characteristic for non-ductile reinforced concrete frame; this isometric
 drawing shows a possible seismic strengthening technique (L.G. Mejia, Colombia, <span class=\"external-link\"><a class=\"external-link\" href=\"http://www.world-housing.net/category/south-america/colomb
ia\">World Housing Encyclopedia</a> Report 11</span>)</p>\r\n<p><img alt=\"DNO_Brzev_Pao_1\" class=\"image-inline\" src=\"../images/dno_brzev_pao_1_400x289.jpg\" /></p>\r\n<p>Ties in reinforced concrete 
columns: a) 135 degree hooks (ductile detailing), and b) 90 degree hooks (non-ductile detailing) (Brzev, S. and Pao, J.<i> Reinforced Concrete Design: A Practical Approach</i>, Pearson Learning Solutions
, 2012)</p>\r\n<p><img alt=\"DNO_India_Bhuj_Murty_1\" class=\"image-left\" height=\"280\" src=\"../images/dno_india_bhuj_murty_1_376x280.jpg\" width=\"376\" /></p>\r\n<p><img alt=\"DNO_India_Bhuj_Muty_2\
" class=\"image-inline\" height=\"291\" src=\"../images/dno_india_bhuj_muty_2_218x291.jpg\" width=\"218\" /></p>\r\n<p>Failure of reinforced concrete columns at the ground floor level of a building with 
the <a class=\"internal-link\" href=\"soft-storey-sos\">soft storey</a> irregularity in the 2001 Bhuj, India earthquake; the columns were characterized by non-ductile details, such as widely spaced ties 
and 90 degree hooks in ties (C.V.R. Murty, EERI Reconnaissance Team)</p>\r\n<p><img alt=\"DNO_Taiwan_Chi Chi_EERI_1\" class=\"image-inline\" src=\"../images/dno_taiwan_chi-chi_eeri_1_400x291.jpg\" /></p>
\r\n<p>Failure at the base of a reinforced concrete column due to 90 degree hooks and widely spaced ties was observed in the 1999 Chi Chi, Taiwan earthquake; use of 90 degree hooks is a feature of non-du
ctile concrete construction (EERI Reconaissance Team)</p>\r\n<p><img alt=\"DNO_USA_Northridge_BAREP_1\" class=\"image-inline\" src=\"../images/dno_usa_northridge_barep_1_400x291.jpg\" /></p>\r\n<p>Older 
steel moment frame buildings were damaged in the 1994 Northridge, California earthquake due to non-ductile beam-column connections and weld fractures (EERI and Bay Area Regional Earthquake Preparedness P
roject, CAL-OES)</p>\r\n<p><img alt=\"DNO_Haiti_EERI_Lang_1\" class=\"image-inline\" src=\"../images/dno_haiti_eeri_lang_1_400x291.jpg\" /></p>\r\n<p>Damage of a poorly constructed confined masonry build
ing in the 2010 Haiti earthquake; this is considered a non-ductile performance (A. Lang, EERI Reconnaissance Team)</p>\r\n<p><img alt=\"DNO_Algeria_Brzev_1\" class=\"image-inline\" src=\"../images/dno_al
geria_brzev_1_400x291.jpg\" /></p>\r\n<p>Unreinforced masonry buildings often show non-ductile performance and suffer damage in major earthquakes, such as the 2003 Boumerdes, Algeria earthquake (S. Brzev
)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,8,'','',1,6047,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (258,256,'School [EDU2]','school-edu2','<p>Any school-age educational centre. Includes government-owned and private schools.</p>\r\n','',1,8,'0000-00-00 00:00:00',53
6,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,9,'','',1,889,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (259,257,'Shallow-arched masonry roof [RM2]','shallow-arched-masonry-rm2','<p><a name=\"taxonomy:RM2\"></a></p>\r\n<p>Shallow-arched masonry roof spans between metal
, timber or concrete joists, with ballast fill and overlaid with roofing.</p>\r\n<p><img alt=\"Masonry jack-arch construction (M. Lutman)\" class=\"image-inline\" src=\"../images/RM2_-_Lutman_1_400x240.j
pg\" /></p>\r\n<p>Masonry jack-arch construction (M. Lutman)</p>\r\n \r\n<p><img alt=\"Masonry jack-arch construction (A. Pomonis)\" class=\"image-inline\" src=\"../images/RM2_-_Pomonis_1_400x240.jpg\" /
></p>\r\n<p>Masonry jack-arch construction (A. Pomonis)</p>\r\n \r\n<p><img alt=\"Brick masonry jack arch construction, Canada (Ojdrovic Engineering)\" class=\"image-inline\" src=\"../images/RM2_Canada_O
jdrovicEngineering_1_400x240.jpg\" /></p>\r\n<p>Brick masonry jack arch construction, Canada (Ojdrovic Engineering)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:0
0:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,10,'','',1,2320,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (260,258,'Shape of the building plan','shape-of-the-building-plan','<p><a name=\"taxonomyTag:shape-of-the-building-plan\"></a></p>\r\n<p>Shape of the building plan (
often referred to as \"footprint\") is the shape of the projection of the exterior edge of the building at grade onto the horizontal plane. To the extent possible, it is classified according to various s
imple shapes and letters of the alphabet. The shape from the table that most closely resembles the shape of the building footprint should be listed. <br /><br />Where the building changes in plan cross-s
ection (such as in the case of tower and podium, or a setback) some judgment is called for – in general, the shape that the building conforms to for the majority of its height should be listed, and may d
iffer from the footprint (plan cross-section) at ground floor level.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:0
0','','','',1,11,'','',1,2225,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (261,259,'Tuff [SPTU]','tuff-sptu','<p><a name=\"taxonomy:SPTU\"></a></p>\r\n<p>Tuff is an igneous volcanic rock made up of rock and mineral fragments that are compa
cted with volcanic ash.  In general, the grain size of the ash is below 4 mm (above 4 mm: volcanic breccia).  The colour of tuff is variable (and strongly depends on its weathering and chemical compositi
on), but it is mostly greyish, brown, or yellow  It is a low-density, high-porosity rock that is often soft and porous and can therefore be scratched by metal objects. It is a relatively soft stone and i
t has been widely used for masonry construction in regions where it is available (e.g. Italy, Armenia, etc.).</p>\r\n<p><img alt=\"SPTU_Italy_Benedetti_1\" class=\"image-inline\" height=\"202\" src=\"../
images/sptu_italy_benedetti_1_321x202.jpg\" width=\"321\" /></p>\r\n<p>Tuff stone blocks, Italy (A. Benedetti)</p>\r\n<p><img alt=\"SPTU_Italy_ilcasale1742_1\" class=\"image-inline\" src=\"../images/sptu
_italy_ilcasale1742_1_400x202.jpg\" /></p>\r\n<p>A view of Sovana, Italy - most buildings are built using tuff masonry and the city was built on a tuff cliff (<a class=\"external-link\" href=\"http://ilc
asale1742.it/en/\">http://ilcasale1742.it/en/</a>)</p>\r\n<p><img alt=\"SPTU_Italy_fototoscana_1\" class=\"image-inline\" height=\"239\" src=\"../images/sptu_italy_fototoscana_1_339x239.jpg\" width=\"339
\" /></p>\r\n<p>Tuff stone was used for the construction of Bourbon del Monte Palace (16th century), Sovana, Italy (<a class=\"external-link\" href=\"http://www.fototoscana.it\">www.fototoscana.it</a>)</
p>\r\n<p><img alt=\"SPTU_Italy_Benedetti_2\" class=\"image-inline\" height=\"204\" src=\"../images/sptu_italy_benedetti_2_312x204.jpg\" width=\"312\" /></p>\r\n<p>Tuff stone used in modern wall construct
ion, Italy (A. Benedetti)</p>\r\n<p><img alt=\"SPTU_Italy_Benedetti_3\" class=\"image-inline\" height=\"245\" src=\"../images/sptu_italy_benedetti_3_343x245.jpg\" width=\"343\" /></p>\r\n<p>A wall built 
using dressed tuff stone exterior wythe over a rubble masonry in San Giuliano damaged in the 2002 Molise earthquake, Italy (A. Benedetti)</p>\r\n<p><img alt=\"SPTU_Algeria_Farsi_1\" class=\"image-inline\
" src=\"../images/sptu_algeria_farsi_1_400x245.jpg\" /></p>\r\n<p>Tuff stone masonry in Algiers, Algeria was affected by the 2003 Boumerdes earthquake (M. Farsi)</p>\r\n','',1,8,'0000-00-00 00:00:00',536
,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,24,'','',1,1222,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (262,260,'Iron [MEIR]','iron-meir','<p><a name=\"taxonomy:MEIR\"></a></p>\r\n<p>Generally cast iron, but includes all grades of iron.</p>\r\n','',1,8,'0000-00-00 00:
00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,25,'','',1,914,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (263,261,'E-shape [PLFE]','e-shape-plfe','<p><a name=\"taxonomy:PLFE\"></a></p>\r\n<p>The footprint of the building when viewed in plan resembles the shape of the le
tter E.</p>\r\n<p><img alt=\"PLFE_Vancouver_Canada_Googleearth_1\" class=\"image-inline\" height=\"388\" src=\"../images/plfe_vancouver_canada_googleearth_1_452x388.jpg\" width=\"452\" /></p>\r\n<p>A bui
lding with E-shaped plan, Vancouver, Canada (Map data ©2013   Google, Province of British Columbia, DigitalGlobe, IMTCAN)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,26,'','',1,1501,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (264,262,'Exact number of storeys above ground [HEX]','exact-number-of-storeys-above-ground-hex','<p><a name=\"taxonomy:HEX\"></a></p>\r\n<p>The exact number of stor
eys above ground is clear from survey or drawings. The exact number of the floors above ground includes the ground floor and floors above. It also includes storage and mechanical plant levels only if the
se cover over 50% of the plan area, but does not include basements below ground. If the building is stepped in height, then record the highest part. <br /><br />HEX:n    <br />where n= maximum number of 
storeys above ground level <br />Example: HEX:2 (exactly two-storey high building)</p>\r\n<p><img alt=\"HEX_Morocco_Scawthorn_1\" class=\"image-inline\" src=\"../images/hex_morocco_scawthorn_1_400x388.jp
g\" /></p>\r\n<p>This is an eight storey building in Morocco (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 
00:00:00','','','',1,39,'','',1,1097,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (265,263,'Plywood panels or other light-weight panels for floor [FW4]','plywood-panels-or-other-light-weight-panels-for-floor-fw4','<p><a name=\"taxonomy:FW4\"></a><
/p>\r\n<p>Panels are supported on beams or bearing walls (possibly stressed-skin).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000
-00-00 00:00:00','','','',1,40,'','',1,847,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (266,264,'3-4 Units [RES2B]','3-4-units-res2b','<p><span>Apartments, condominiums, townhouses of 3-4 units. Residential units are structurally connected.</span></p>\
r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,41,'','',1,1144,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (267,265,'Mixed use [MIX]','mixed-use-mix','<p>The building is used for commercial or retail at the ground floor, with residential  or office accommodation above. Ch
oose this attribute if the proportion of the commercial and residential occupancies are approximately equal. Otherwise for mixed occupancy choose the dominant occupancy. For example, choose ‘mixed occupa
ncy’ for a two story building with a single-family dwelling above a shop, but choose multi-family dwelling for a ten-story apartment building with shops at ground floor.</p>\r\n','',1,8,'0000-00-00 00:00
:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,42,'','',1,900,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (268,266,'Mostly commercial and industrial [MIX3]','mostly-commercial-and-industrial-mix3','<p><a name=\"taxonomy:MIX3\"></a></p>\r\n<p>The building is mixed use, a 
mixture of commercial and industrial. The majority of the floor area is for commercial use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:
00','0000-00-00 00:00:00','','','',1,43,'','',1,939,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (269,267,'Precast concrete floor with reinforced concrete topping [FC3]','precast-concrete-floor-with-reinforced-concrete-topping-fc3','<p>Precast concrete units wit
h reinforced concrete topping. Precast units include hollow-core slabs, solid slabs, a system of precast concrete joists with timber or hollow masonry infill, and double-tee units.</p>\r\n<p><img alt=\"F
C3_Albania_Scawthorn_1\" class=\"image-inline\" src=\"../images/fc3_albania_scawthorn_1_400x219.jpg\" /></p>\r\n<p>Concrete floor system (Macedonian joists) found in Albania. Polystyrene or similar insul
ation blocks between concrete joists.  A concrete form was constructed, above which concrete joists are laid between supporting concrete beams.  In between the thus suspended joists, the blocks of insula
tion are placed on the formwork, spaced so as to create a void containing each joist.  A topping slab is poured, which fills the voids, enclosing the joist in concrete. (C. Scawthorn)</p>\r\n<p><img alt=
\"FC3_Albania_Scawthorn_2\" class=\"image-inline\" height=\"352\" src=\"../images/fc3_albania_scawthorn_2_264x352.jpg\" width=\"264\" /></p>\r\n<p>Macedonian joists ready for the floor construction, Alba
nia (C. Scawthorn)</p>\r\n<p><img alt=\"FC3_Algeria_ Brzev_1\" class=\"image-inline\" src=\"../images/fc3_algeria_-brzev_1_400x352.jpg\" /></p>\r\n<p>Floor system consisting of concrete masonry units and
 reinforced concrete joists cast in-situ, Algeria (S. Brzev)</p>\r\n<p><img alt=\"FC3_Chile_Brzev_1\" class=\"image-inline\" src=\"../images/fc3_chile_brzev_1_400x352.jpg\" /></p>\r\n<p>Floor system cons
isting of concrete masonry units and cast-in-situ reinforced concrete joists (known as \"Tralix\" system), Chile (S. Brzev)</p>\r\n<p><img alt=\"FC3_Chile_Astroza_1\" class=\"image-inline\" src=\"../imag
es/precast-roof-system-tralix-chile-tralix-catalogue_400x352.jpg\" /></p>\r\n<p>\"Tralix\" system construction, Chile (M. Astroza)</p>\r\n<p><img alt=\"FC3_Haiti_Lang_1\" class=\"image-inline\" src=\"../
images/fc3_haiti_lang_1_400x352.jpg\" /></p>\r\n<p>Floor system consisting of concrete masonry units and cast-in-situ reinforced concrete joists, Haiti (A. Lang)</p>\r\n<p><img alt=\"Reinforced concrete 
precast joist floor/roof system, Canada (S. Brzev)\" class=\"image-left\" height=\"195\" src=\"../images/FC3_Canada_Brzev_1_300x195.jpg\" width=\"300\" /></p>\r\n<p><img alt=\"FC3_Canada_Brzev_4\" class=
\"image-inline\" height=\"187\" src=\"../images/fc3_canada_brzev_4_313x187.jpg\" width=\"313\" /></p>\r\n \r\n<p><span class=\"contenttype-undefined\">Precast concrete floor systems (double-tee units) ar
e typically fabricated with a 50 mm flange and topped in the field with cast-in-place concrete (Canada, S. Brzev)</span></p>\r\n<p><span class=\"contenttype-undefined\"><img alt=\"FC3_Canada_Brzev_2\" cl
ass=\"image-left\" height=\"195\" src=\"../images/fc3_canada_brzev_2_338x195.jpg\" width=\"338\" /><img alt=\"FC3_Canada_Brzev_3\" class=\"image-inline\" height=\"202\" src=\"../images/fc3_canada_brzev_3
_262x202.jpg\" width=\"262\" /></span></p>\r\n<p><span class=\"contenttype-undefined\">A typical double-tee element (left) and the end support (right) (S. Brzev)<br /></span></p>\r\n<p><span class=\"cont
enttype-undefined\"><img alt=\"FC3_Nepal_PorterK_1\" class=\"image-left\" height=\"261\" src=\"../images/fc3_nepal_porter_347x261.jpg\" width=\"347\" /></span></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n 
\r\n \r\n \r\n<p>Double-tee beam lifted by crane at the construction site, Denver, USA (K. Porter)</p>\r\n<p><img alt=\"FC3_Nepal_PorterK_2\" class=\"image-inline\" height=\"265\" src=\"../images/fc3_nep
al_porterk_2_256x265.jpg\" width=\"256\" /></p>\r\n<p>Wall corbels ready to support double-tees, Denver, USA (K. Porter)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00
 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,44,'','',1,3956,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (270,268,'Wattle and daub [WWD]','wattle-and-daub-wwd','<p>A wooden frame around a lattice consisting of woven twigs (wattles that is filled or plastered with mud), 
reeds, grass, or bamboo. The earth is very clayey and mixed with straw or other vegetable fibres.</p>\r\n<p><img alt=\"WWD_India_Rawal_2\" class=\"image-inline\" src=\"../images/wwd_india_rawal_2_400x242
.jpg\" /></p>\r\n<p>Wattle and daub construction, India (People in Centre)</p>\r\n<p><img alt=\"WWD_India_Rawal_3\" class=\"image-inline\" src=\"../images/wwd_india_rawal_3_400x242.jpg\" /></p>\r\n<p>Wat
tle and daub construction, India (People in Centre)</p>\r\n<p><img alt=\"WWD_India_Rawal_1\" class=\"image-inline\" src=\"../images/wwd_india_rawal_1_400x242.jpg\" /></p>\r\n<p>Wattle and daub wall detai
l (People in Centre)</p>\r\n<p><img alt=\"WWD_Peru_Brzev_1\" class=\"image-inline\" src=\"../images/wwd_peru_brzev_1_400x242.jpg\" /></p>\r\n<p><i>Quincha</i> is a traditional construction in Peru, where
 walls are built using wooden sticks or reeds plastered with mud (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 
00:00:00','','','',1,45,'','',1,1785,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (271,269,'Earthen exterior walls [EWE]','earthen-exterior-walls-ewe','<p>All types of earthen construction, including cob, rammed earth, bajareque, quincha, sod, ban
co, wattle and daub.</p>\r\n<p><img alt=\"EWE_India_Rawal_1\" class=\"image-inline\" src=\"../images/ewe_india_rawal_1_400x251.jpg\" /></p>\r\n<p><a class=\"internal-link\" href=\"cob-or-wet-construction
-etc\">Cob</a> construction, India (overlaid by plaster) (People in Centre)</p>\r\n<p><img alt=\"EWE_Kenya_Jaiswal_1\" class=\"image-inline\" src=\"../images/ewe_kenya_jaiswal_1_400x251.jpg\" /></p>\r\n<
p>Mud walls reinforced with bamboo reinforcement, Kenya (K. Jaiswal)</p>\r\n<p><img alt=\"EWE_Peru_Brzev_1\" class=\"image-inline\" src=\"../images/ewe_peru_brzev_1_400x251.jpg\" /></p>\r\n<p>Quincha con
struction, Peru - exposed at the lower level and overlaid with mud plaster above (S. Brzev)</p>\r\n<p><img alt=\"EWE_India_Rawal_2\" class=\"image-left\" height=\"392\" src=\"../images/ewe_india_rawal_2_
372x392.jpg\" width=\"372\" /></p>\r\n<p><img alt=\"EWE_India_Rawal_3\" class=\"image-inline\" height=\"229\" src=\"../images/ewe_india_rawal_3_264x229.jpg\" width=\"264\" /></p>\r\n \r\n \r\n \r\n \r\n 
\r\n \r\n<p>Wattle and daub construction, India (People in Centre)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00'
,'','','',1,46,'','',1,1102,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (272,270,'Exact number of storeys below ground [HBEX]','exact-number-of-storeys-below-ground-hbex','<p>The exact number of storeys below ground is clear from survey 
or drawings. This does not include the ground floor. <br /><br />Fixed number (integer) e.g. HBEX:2 (two levels of basement)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-0
0-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,47,'','',1,906,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (273,271,'Unknown concrete technology [CT99]','unknown-concrete-technology-ct99','<p><a name=\"taxonomy:CT99\"></a></p>\r\n<p>It is clear that the structural materia
l is concrete, but the type of concrete construction and whether it was precast, cast-in-place, pre-stressed etc is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-0
0-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,38,'','',1,892,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (274,272,'Moment frame [LFM]','moment-frame-lfm','<p>This is a frame consisting of beams and columns, with strong and rigid beam-to-column connections. Includes fram
es with very slender walls, that do not resist a significant proportion of earthquake load. The frames can be single frames, or multiple bays repeated horizontally and/or vertically. These frames are not
 infilled with materials like masonry or concrete which would transform their behaviour to that of an infilled frame.</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFM_diagram_Charleson_1\" class=\"i
mage-inline\" height=\"262\" src=\"../images/lfm_diagram_charleson_1_303x262.jpg\" width=\"303\" /></p>\r\n<p style=\"text-align: left; \"><span><span>A simplified drawing of a moment-resisting frame str
ucture showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2). <br /></span></span></p>\r\n<p style=\"text-al
ign: left; \"><span><span><img alt=\"LFM_Allen&amp;Brzev_1\" class=\"image-left\" height=\"227\" src=\"../images/lfm_1_294x227.jpg\" width=\"294\" /><br /></span></span></p>\r\n<p style=\"text-align: lef
t; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: l
eft; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n \r\n<p><span><span><span><span>Partial section of a moment frame structure</span></span></span></span></p>\r\n<p style=\"text-align: left; \"><i
mg alt=\"LFM_India_Brzev_1\" class=\"image-left\" height=\"159\" src=\"../images/lfm_india_brzev_1_353x159.jpg\" width=\"353\" /><img alt=\"LFM_India_Brzev_2\" class=\"image-inline\" height=\"249\" src=\
"../images/lfm_india_brzev_2_279x249.jpg\" width=\"279\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete frame building under construction, India (S. Brzev)</p>\r\n<p style=\"text-align: le
ft; \"><img alt=\"LFM_Thailand_Lilavivat_1\" class=\"image-inline\" height=\"243\" src=\"../images/lfm_thailand_lilavivat_1_337x243.jpg\" width=\"337\" /></p>\r\n<p style=\"text-align: left; \">Reinforce
d concrete frame under construction, Thailand (C. Lilavivat)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFM_Canada_Brzev_1\" class=\"image-inline\" height=\"241\" src=\"../images/lfm_canada_brzev_
1_353x241.jpg\" width=\"353\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete buildings with a moment frame system have beams as a part of the floor system (Canada, S. Brzev)</p>\r\n<p><img
 alt=\"Moment Frame 1.JPG\" class=\"image-inline\" height=\"190\" src=\"../images/LFM_NewZealand_Charleson_1_338x190.jpg\" style=\"float: left; \" width=\"338\" /></p>\r\n<span></span>\r\n<span></span>\r
\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \">Moment frame, concrete, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: lef
t; \"><img alt=\"LFM_New Zealand_Bothara_1\" class=\"image-inline\" height=\"263\" src=\"../images/lfm_new-zealand_bothara_1_349x263.jpg\" width=\"349\" /></p>\r\n<p style=\"text-align: left; \">A 1970s 
reinforced concrete frame, Wellington, New Zealand (J. Bothara)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFM_Kyrgyzstan_Kanbolotov_1\" class=\"image-inline\" height=\"307\" src=\"../images/lfm_k
yrgyzstan_kanbolotov_1_324x307.jpg\" width=\"324\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete frame building, Kyrgyzstan (K. Kanbolotov)</p>\r\n<p style=\"text-align: left; \"><img alt
=\"LFM_Kyrgyzstan_Begaliev_1\" class=\"image-inline\" height=\"261\" src=\"../images/ldual_kyrgyzstan_belgaliev_1-1_346x261.jpg\" width=\"346\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concre
te frame building under construction, Kyrgyzstan (U. Begaliev, A. Duishev, and R. Musakov)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:0
0','0000-00-00 00:00:00','','','',1,37,'','',1,3348,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (275,273,'Industrial, unknown type [IND99]','industrial-unknown-type-ind99','<p>It is clear that the building is an industrial building, but the exact type of indust
rial use is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,36,'','',1,887,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (276,274,'Wooden or asphalt shingle roof covering [RMT7]','wooden-and-asphalt-shingles-rmt7','<p><a name=\"taxonomy:RMT7\"></a></p>\r\n<p>Wooden shingles are usually
 split wood, overlapping and fastened to wood battens. Wooden shingles are usually made of cedar, redwood, hardwood etc. Asphalt shingles are small overlapping sheets of asphalt, usually fastened to a pl
ywood sheet substrate. An alternative form is made of glass fiber or polyester fleece impregnated with bituminous material (tar, asphaltic bitumen).</p>\r\n<p><img alt=\"RMT7_USA_Krstic_1\" class=\"image
-left\" height=\"208\" src=\"../images/rmt7_usa_krstic_1_290x208.jpg\" width=\"290\" /><img alt=\"RMT7_USA_Krstic_2\" class=\"image-inline\" src=\"../images/rmt7_usa_krstic_2_200x208.jpg\" /></p>\r\n \r\
n \r\n \r\n<p>Wooden shingle roof covering, USA (S. Krstic)</p>\r\n<p><img alt=\"RMT7_Canada_BrzevS_1\" class=\"image-left\" height=\"201\" src=\"../images/rmt7_canada_brzevs_1_332x201.jpg\" width=\"332\
" /></p>\r\n \r\n<p><img alt=\"RMT7_Canada_Brzev_2\" class=\"image-inline\" height=\"144\" src=\"../images/rmt7_canada_brzev_2_285x144.jpg\" width=\"285\" /></p>\r\n \r\n<p>A roof with asphalt shingle co
vering, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,27,'','',1,1143,'',0,'','',''
);
INSERT INTO `taxonomy_content` VALUES (277,275,'Unknown roof covering [RMT99]','unknown-roof-covering-rmt99','<p><a name=\"taxonomy:RMT99\"></a></p>\r\n<p>The type of roof covering is unknown. There is i
nsufficient information available or it is not visible from a survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:
00','','','',1,28,'','',1,909,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (278,276,'Irregular structure [IRIR]','irregular-structure-irir','<p><a name=\"taxonomy:IRIR\"></a></p>\r\n<p>At least one structural irregularity (plan and/or verti
cal) listed in the table is present. A <b>primary</b> (plan or vertical) Irregularity is considered to increase the seismic vulnerability of the building more than the <b>Secondary</b> Irregularity.</p>\
r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,29,'','',1,1003,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (279,277,'Hot-rolled steel members [SR]','hot-rolled-steel-members-sr','<p><a name=\"taxonomy:SR\"></a></p>\r\n<p>Steel sections that have been hot rolled or fabrica
ted from plates welded together and used as primary lateral load-resisting structure, welded or bolted together.</p>\r\n<p><img alt=\"SR_Canada_Brzev_1\" class=\"image-left\" height=\"218\" src=\"../imag
es/sr_canada_brzev_1_386x218.jpg\" width=\"386\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Hot-rolled steel sections at a construction site: I-shaped (called W sections in North America),
 channel sections (called C sections in North America, etc. (Canada - S. Brzev)</p>\r\n<p><img alt=\"SR_Canada_Brzev_2\" class=\"image-inline\" height=\"169\" src=\"../images/sr_canada_brzev_2_345x169.jp
g\" width=\"345\" /></p>\r\n<p>Hot-rolled hollow steel sections (HSS sections), Canada (S. Brzev)</p>\r\n<p><img alt=\"SR_NewZealand_Charleson_1\" class=\"image-inline\" src=\"../images/sr_newzealand_cha
rleson_1_400x169.jpg\" /></p>\r\n<p>Steel building construction, hot-rolled steel members, Wellington, New Zealand (A. Charleson)</p>\r\n<p><img alt=\"SR_USA_Brzev_1\" class=\"image-inline\" src=\"../ima
ges/sr_usa_brzev_1_400x169.jpg\" /></p>\r\n<p>Steel building under construction, hot-rolled steel members, California (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'00
00-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,30,'','',1,1435,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (280,278,'Floor material, other [FO]','floor-material-other-fo','<p><a name=\"taxonomy:FO\"></a></p>\r\n<p>The floor structure material is known, but they do not fit
 within any of the definitions in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,31,'','',
1,846,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (281,279,'Heavy wood [WHE]','heavy-wood-whe','<p><span>Wood</span> frame members of large cross-sections are used. They may form some type of frame or a Post and Bea
m system. Includes infilled heavy <span>wood</span> frames such as Half-<span>wood</span>ed buildings.</p>\r\n<p><img alt=\"Heavy Timber 1.jpg\" class=\"image-inline\" src=\"../images/WHE_NewZealand_Char
leson_1_400x195.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></spa
n>\r\n<p style=\"text-align: left; \">Heavy wood, New Zealand (A. Charleson)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00
 00:00:00','','','',1,32,'','',1,1080,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (282,280,'Approximate height of ground floor level above grade [HFAPP]','approximate-height-of-ground-floor-level-above-grade-hfapp','<p><a name=\"taxonomy:HFAPP\"><
/a></p>\r\n<p>The approximate height of the ground floor above grade can be determined by the surveyor where the exact height is not clear from survey or drawing. <br />Units: metres<br /><br />Example: 
HFAPP:0.5 (approximately 0.5 m)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,33,'','',1,1592,'',0,''
,'','');
INSERT INTO `taxonomy_content` VALUES (283,281,'Pitched and hipped [RSH3]','pitched-and-hipped-rsh3','<p><a name=\"taxonomy:RSH3\"></a></p>\r\n<p>The roof is pitched (sloped) on all sides.</p>\r\n<p><img
 alt=\"RSH3_Indonesia_Bothara_1\" class=\"image-inline\" height=\"306\" src=\"../images/rsh3_indonesia_bothara_1-1_406x306.jpg\" width=\"406\" /></p>\r\n<p>Pitched and hipped roof, Padang, Indonesia (J. 
Bothara)</p>\r\n<p><img alt=\"RSH3_India_Rawal_1\" class=\"image-inline\" src=\"../images/rsh3_india_rawal_1_400x306.jpg\" /></p>\r\n<p>Pitched and hipped roof, Assam, India (People in Centre)</p>\r\n<p>
<img alt=\"RSH3_Indonesia_Bothara_1\" class=\"image-inline\" src=\"../images/rsh3_indonesia_bothara_1_400x306.jpg\" /></p>\r\n<p>Pitched and hipped roof, Indonesia (J. Bothara)</p>\r\n','',1,8,'0000-00-0
0 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,34,'','',1,1194,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (284,282,'No elevated or suspended floor material [FN]','no-elevated-or-suspended-floor-material-fn','<p><a name=\"taxonomy:FN\"></a></p>\r\n<p>The building is a sin
gle storey building with no floors above ground floor level, and the ground floor level is not elevated above grade.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:
00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,35,'','',1,867,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (285,283,'Other plan irregularity [IRHO]','other-horizontal-irregularity-irho','<p><a name=\"taxonomy:IRHO\"></a></p>\r\n<p>A plan irregularity, not defined as any o
f the other Plan Irregularity definitions in this table, that is likely to adversely affect the earthquake performance of the building.</p>\r\n<p>Examples of such plan irregularities include discontinuou
s diaphragms, and vertical lateral load-resisting elements non-parallel to the major orthogonal axes of the lateral load-resisting system. Cantilevers supporting lateral load-resisting elements like infi
ll walls that are likely to resist seismic forces that overhang the structure below are examples of out-of-plane offsets.</p>\r\n \r\n<p><img alt=\"Discontinuous diaphragm (cutout) (FEMA 2006)\" class=\"
image-inline\" src=\"../images/IRHO_-_FEMA454_1_400x291.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Discontinuous diaphragm (cutout) (FEMA 454)</
p>\r\n \r\n<p><img alt=\"Non-parallel lateral load-resisting system (FEMA 2006)\" class=\"image-inline\" src=\"../images/IRHO_-_FEMA454_2_400x291.jpg\" /></p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } --> <!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Non-parallel lateral load-resisting system (FEMA 454)</p>\r\n','',1,8,'0000-00-00 00:
00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,48,'','',1,1850,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (286,284,'Concrete','concrete','<p>Concrete is a composite material consisting of Portland cement, coarse aggregate (crushed stone), fine aggregate (sand), and water
. It is usually grey in colour. The following types of concrete are included in the GEM Building Taxonomy:</p>\r\n<ul>\r\n<li><a class=\"internal-link\" href=\"concrete-unknown-reinforcement-c99\">Concre
te, unknown reinforcement</a></li>\r\n<li><a class=\"internal-link\" href=\"concrete-unreinforced-cu\">Concrete, unreinforced</a></li>\r\n<li><a class=\"internal-link\" href=\"concrete-reinforced-cr\">Co
ncrete, reinforced</a></li>\r\n<li><a class=\"internal-link\" href=\"concrete-composite-with-steel-sections-src\">Concrete, composite with steel section</a></li>\r\n</ul>\r\n','',1,8,'0000-00-00 00:00:00
',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,96,'','',1,1533,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (287,285,'Glass exterior walls [EWG]','glass-ewg','<p><a name=\"taxonomy:EWG\"></a></p>\r\n<p>Glass curtain walls, storefront glass systems, or any other exterior wa
lls where glass windows cover more of the walls by area than any other material. Also includes solar panelled exterior walls, where photovoltaics modules are integrated directly into a building envelope 
by replacing curtain walls (Building Integrated Photovoltaics).</p>\r\n<p><img alt=\"EWG_Chile_BrzevS_1\" class=\"image-inline\" src=\"../images/ewg_chile_brzevs_1_400x265.jpg\" /></p>\r\n<p>A highrise o
ffice building with glass curtain walls, Santiago, Chile (S. Brzev)</p>\r\n<p><img alt=\"EWG_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/ewg_canada_brzev_1_400x265.jpg\" /></p>\r\n<p>A buildi
ng with glass curtain walls, Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWG_Canada_Brzev_1\" class=\"image-inline\" height=\"257\" src=\"../images/ewg_canada_brzev_1-1_374x257.jpg\" width=\"374\" 
/></p>\r\n<p>Exterior walls in this building are mostly of glass and masonry, however glass is considered to be a prevalent material, Halifax, Canada (S. Brzev)</p>\r\n<p><img alt=\"EWG_Canada_Stamenic_1
\" class=\"image-inline\" src=\"../images/ewg_canada_stamenic_1_400x257.jpg\" /></p>\r\n<p>Solar (photovoltaic) modules as exterior walls, Vancouver, Canada (L. Stamenic)</p>\r\n<p><img alt=\"EWG_UK_Stam
enic_1\" class=\"image-inline\" src=\"../images/ewg_stamenic_uk_1_400x257.jpg\" /></p>\r\n<p>Solar (photovoltaic) modules as exterior walls, United Kingdom (L. Stamenic)</p>\r\n','',1,8,'0000-00-00 00:00
:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,143,'','',1,1340,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (288,286,'Metal (except steel) [ME]','metal-except-steel-me','<p><a name=\"taxonomy:ME\"></a></p>\r\n<p>Metal (except steel) is a material like aluminium or iron use
d as structural elements.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,156,'','',1,1086,'',0,'','','
');
INSERT INTO `taxonomy_content` VALUES (289,287,'Cast-in-place beam-supported reinforced concrete floor [FC2] ','cast-in-place-beam-supported-reinforced-concrete-floor-fc2','<p><a name=\"taxonomy:FC2\"></
a></p>\r\n<h3></h3>\r\n<p>Reinforced concrete slabs are supported by beams. This includes cast-in-place slabs with beams on all sides, waffle slabs with beams, slab band system (common in Canada), one-wa
y joist system (common in North America), and clay tile coffered reinforced concrete slabs.</p>\r\n<p><img alt=\"FC2 Canada Brzev 1\" class=\"image-inline\" src=\"../images/fc2-canada-brzev-1_400x328.jpg
\" /></p>\r\n<p>Reinforced concrete slab supported by beams, parking garage, Canada (S. Brzev)</p>\r\n<p><img alt=\"FC2_Canada_Brzev_4\" class=\"image-inline\" height=\"221\" src=\"../images/fc2_canada_b
rzev_4_359x221.jpg\" width=\"359\" /></p>\r\n<p>Slab band floor system consisting of columns supported by wide beams and slabs is common in Western Canada (S. Brzev and J. Pao, Reinforced Concrete Design
: A Practical Approach, Pearson Learning Solutions, 2013)</p>\r\n<p><img alt=\"FC2 Canada Brzev 2\" class=\"image-inline\" src=\"../images/fc2-canada-brzev-2_400x221.jpg\" /></p>\r\n<p>Reinforced concret
e slab band floor system in a parking garage, Canada (S. Brzev)</p>\r\n<p><img alt=\"FC2_Canada_Brzev_3\" class=\"image-inline\" src=\"../images/fc2_canada_brzev_3_400x221.jpg\" /></p>\r\n<p>Reinforced c
oncrete slab on beams in a parking garage, Canada (S. Brzev)</p>\r\n<p><img alt=\"FC2_USA_Brzev_1\" class=\"image-inline\" src=\"../images/fc2_usa_brzev_1_400x221.jpg\" /></p>\r\n<p>Reinforced concrete w
affle slab with beams, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,157,'','',1,3744,
'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (290,288,'Infilled frame [LFINF]','infilled-frame-lfinf','<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may o
r may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the struc
tural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be par
t-height or completely fill the frame.</p>\r\n<p><img alt=\"LFINF_-_Charleson_1\" class=\"image-inline\" src=\"../images/lfinf_-_charleson_1_400x353.jpg\" /></p>\r\n<p><span><span>A simplified drawing of
 an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)<br /></span></span></p>\r
\n<p><img alt=\"LFINF_Allen&amp;Brzev_1\" class=\"image-inline\" height=\"278\" src=\"../images/lfinf_1_369x278.jpg\" width=\"369\" /></p>\r\n<p><span><span><span><span>Partial section of an infilled fra
me structure</span></span></span></span></p>\r\n<p><img alt=\"Infilled Frame 1.JPG\" class=\"image-inline\" height=\"277\" src=\"../images/LFINF_India_Charleson_1_368x277.jpg\" style=\"float: left; \" wi
dth=\"368\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left;
 \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: lef
t; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: l
eft; \"> </p>\r\n<p style=\"text-align: left; \">Reinforced concrete frame with brick masonry infill walls, India (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFINF_India_Brzev_1\" cl
ass=\"image-inline\" src=\"../images/lfinf_india_brzev_1_400x277.jpg\" /></p>\r\n<p style=\"text-align: left; \">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)<
/p>\r\n<p style=\"text-align: left; \"><img alt=\"LFINF_Indonesia_Bothara_1\" class=\"image-inline\" height=\"269\" src=\"../images/lfinf_indonesia_bothara_1_358x269.jpg\" width=\"358\" /></p>\r\n<p>Rein
forced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara)</p>\r\n<p><img alt=\"LFINF_Nepal_Bothara_1\" class=\"image-inline\" height=\"256\" src=\"../images/lfinf_ne
pal_bothara_1_368x256.jpg\" width=\"368\" /></p>\r\n<p>Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)</p>\r\n<p><img alt=\"LFINF_Algeria_Fars
i_1\" class=\"image-inline\" height=\"265\" src=\"../images/lfinf_algeria_farsi_1_378x265.jpg\" width=\"378\" /></p>\r\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged 
in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img alt=\"LFINF_Algeria_Brzev_1\" class=\"image-inline\" height=\"265\" src=\"../images/lfinf_algeria_brzev_1_353x265.jpg\" width=\"353\" /></p>\r\n<p
>This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey 
level (S. Brzev)</p>\r\n<p><img alt=\"LFINF_Uganda_Lemkuhl_1\" class=\"image-inline\" height=\"246\" src=\"../images/lfinf_uganda_lemkuhl_1_329x246.jpg\" width=\"329\" /></p>\r\n<p>Reinforced concrete fr
ame building with hollow clay block infills, Uganda (E. Lemkuhl)</p>\r\n<p><img alt=\"LFINF_Tangier_Morocco_Scawthorn_1\" class=\"image-inline\" src=\"../images/lfinf_tangier_morocco_scawthorn_1_382x323.
jpg\" /></p>\r\n<p>Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn)</p>\r\n<p><img alt=\"LFINF_Rabbat_Morocco_Scawthorn_2\" class=\"image-inline\" height=\"232\" src=\"../i
mages/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\" width=\"286\" /></p>\r\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)</p>\r\n<p><img alt=\"LFI
NF_Vietnam_Scawthorn_1\" class=\"image-inline\" height=\"353\" src=\"../images/lfinf_vietnam_scawthorn_1_265x353.jpg\" width=\"265\" /></p>\r\n<p>Reinforced concrete frame with masonry infills under cons
truction, Vietnam (C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,158,'','',1,2937,'',0,
'','','');
INSERT INTO `taxonomy_content` VALUES (291,289,'Roof system type','roof-system-type','<p><a name=\"taxonomyTag:roof-system-type\"></a></p>\r\n<p>Detailed classification of the type of roof system. Note t
hat roof covering material is a separate attribute and is classified as \'roof covering\'.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:0
0','0000-00-00 00:00:00','','','',1,159,'','',1,969,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (292,290,'Floor system type','floor-system-type','<p>Classifies floor structural systems according to materials and methods of construction. Do not include materials
 that are non-structural or that are not part of the floor structure. In many cases floor structures are overlaid with timber flooring or tiles etc., but it is the structure under that overlay material t
hat should be listed as the floor type.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,160,'','',1,947
,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (293,291,'Roof covering, other [RMTO]','roof-covering-other-rmto','<p><a name=\"taxonomy:RMTO\"></a></p>\r\n<p>The roof covering material is known, but it is not ade
quately described by any of the roof covering types listed in this table.</p>\r\n<p>For example: glass roof</p>\r\n<p><img alt=\"RMTO_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rmto_canada_b
rzev_1-1_400x194.jpg\" /></p>\r\n<p>Glass roof covering, Law Courts building, Vancouver, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','00
00-00-00 00:00:00','0000-00-00 00:00:00','','','',1,161,'','',1,992,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (294,292,'Ground floor','ground-floor','<p><a name=\"taxonomyTag:ground-floor\"></a></p>\r\n<p>The floor level of the building that is either on-grade, or the closes
t floor to outside ground level. Commonly called ground floor, but also called ‘first floor’ in American terminology. On sloping sites the lowest floor level is called the ground floor.</p>\r\n','',1,8,'
0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,162,'','',1,1038,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (295,293,'Bus station [COM8]','bus-station-com8','<p><a name=\"taxonomy:COM8\"></a></p>\r\n<p>A building or group of buildings where buses stop, for loading and unlo
ading of passengers.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,163,'','',1,1027,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (296,294,'Description of the direction','description-of-the-direction','<p><a name=\"taxonomyTag:description-of-the-direction\"></a></p>\r\n<p>Where it is possible t
o specify directions, Direction X is parallel to  street, and Direction Y is perpendicular (orthogonal) to street. In some  cases, it is not possible to identify Direction X and Direction Y -  thus the u
ser can select Unspecified Direction.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,164,'','',1,964,'
',0,'','','');
INSERT INTO `taxonomy_content` VALUES (297,295,'Perpendicular to street [OF]','perpendicular-to-street-of','<p><a name=\"taxonomy:OF\"></a></p>\r\n<p>Direction Y is perpendicular (orthogonal) to the buil
ding facade that is parallel to the street. If there is no building facade parallel to the street, define Direction Y as \'Unspecified direction\'.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,155,'','',1,1170,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (298,296,'Stone, unknown technology [ST99]','stone-masonry-unknown-type-st99','<p><a name=\"taxonomy:ST99\"></a></p>\r\n<p>It is clear that the structural material i
s stone, but the type of <a class=\"internal-link\" href=\"stone-masonry\">stone masonry</a> is unknown. The build-up of the wall may be hidden, as in the case of a plastered wall, or information about i
t is unavailable.</p>\r\n<p><img alt=\"ST99_Canada_Brzev_1\" class=\"image-inline\" height=\"285\" src=\"../images/st99_canada_brzev_1_341x285.jpg\" width=\"341\" /></p>\r\n<p>This is a stone masonry bui
lding, but there is a mix of technologies - street facade was built in dressed stone masonry and the other exterior wall is built using random rubble stone masonry (Halifax, Canada, S. Brzev)</p>\r\n',''
,1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,154,'','',1,1175,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (299,297,'Cast-in-place beamless reinforced concrete floor [FC1]','cast-in-place-beamless-reinforced-concrete-floor-fc1','<p><a name=\"taxonomy:FC1\"></a></p>\r\n<p>
Reinforced concrete slabs are supported by columns or load-bearing walls. Flat slabs are supported by columns with capitals and/or drop panels, while flat plates are supported by columns without capitals
. This floor system also includes waffle slabs without beams. Slabs or plates can be post-tensioned.</p>\r\n<p><img alt=\"FC1_Canada_Brzev_1\" class=\"image-inline\" height=\"343\" src=\"../images/fc1_ca
nada_brzev_1_393x343.jpg\" width=\"393\" /></p>\r\n<p>Waffle slab concrete construction, post office building, Canada (S. Brzev)</p>\r\n<p><img alt=\"FC1_USA_Brzev_1\" class=\"image-inline\" height=\"328
\" src=\"../images/fc1_usa_brzev_1_400x328.jpg\" width=\"400\" /></p>\r\n<p>Flat plate concrete construction, parking garage, USA (S. Brzev)</p>\r\n<p><span class=\"contenttype-image\"><img alt=\"Reinfor
ced concrete flat slab system with capitals, UK (S. Brzev)\" class=\"image-inline\" src=\"../images/FC1-RC1_UK_Brzev_1_400x328.jpg\" /></span></p>\r\n<p><span class=\"contenttype-undefined\">Reinforced c
oncrete flat slab system with capitals, UK (S. Brzev)</span></p>\r\n<p><span class=\"contenttype-undefined\"><img alt=\"FC1_Haiti_Irfanoglu_1\" class=\"image-inline\" src=\"../images/fc1_haiti_irfanoglu_
1_400x328.jpg\" /></span></p>\r\n<p><span class=\"contenttype-undefined\"><img alt=\"FC1_Haiti_Lang_1\" class=\"image-inline\" src=\"../images/fc1_haiti_lang_1_400x328.jpg\" /><br /></span></p>\r\n<p><sp
an class=\"contenttype-undefined\">Floor slab system consisting of cast-in-place reinforced concrete voided with concrete blocks was observed in Haiti after the 2010 earthquake (top photo - A. Irfanoglu 
and bottom photo - A. Lang)<br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,153,'','',1,25
27,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (300,298,'2 Units (duplex) [RES2A]','2-units-duplex-res2a','<p>Two residential units joined together. Can be stacked vertically, or joined horizontally as two semi-d
etached houses.</p>','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,144,'','',1,1189,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (301,299,'Range of number of storeys above ground [HBET]','range-of-number-of-storeys-above-ground-hbet','<p><a name=\"taxonomy:HBET\"></a></p>\r\n<p>Recording the n
umber of storeys above ground as a range can be used to reflect either the surveyor’s lack of certainty for a single building, or when height ranges are used in regional surveys. <br /><br />HBET:a,b<br 
/>where a=upper bound and b= lower bound for the range <br />Example: HBET:3,1 (height range from 1 to 3 storeys)</p>\r\n<p><img alt=\"HBET_Portugal_Brzev_1\" class=\"image-inline\" src=\"../images/hbet_
portugal_brzev_1_400x226.jpg\" /></p>\r\n<p>Height of buildings within this block in Lisbon, Portugal ranges from 4 to 5 storeys (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:
00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,145,'','',1,1158,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (302,300,'Bolted connections [BOL]','bolted-connections-bol','<p><a name=\"taxonomy:BOL\"></a></p>\r\n<p>Structural steel or timber members are bolted together with 
steel bolts and nuts.</p>\r\n<p><img alt=\"BOL_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/bol_canada_brzev_1_400x230.jpg\" /></p>\r\n<p>Bolted connection of three steel members joined at a c
olumn, Canada *S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,146,'','',1,1403,'',0,'','',''
);
INSERT INTO `taxonomy_content` VALUES (303,301,'X-shape [PLFX]','x-shape-plfx','<p><a name=\"taxonomy:PLFX\"></a></p>\r\n<p>The footprint of the building when viewed in plan resembles the shape of the le
tter X.</p>\r\n<p>Note that this also includes crucifom-shaped plans (resembling the \"+\" sign).</p>\r\n<p><img alt=\"PLFX_Vancouver_Canada_Googleearth_1\" class=\"image-inline\" height=\"299\" src=\"..
/images/plfx_vancouver_canada_googleearth_1_288x299.jpg\" width=\"288\" /></p>\r\n<p>A building with X-shaped plan, Vancouver, Canada (Map data ©2013   Google, Province of British Columbia, DigitalGlobe,
 IMTCAN)</p>\r\n<p><img alt=\"PLFX_Japan_Scawthorn&amp;Googleearth_1\" class=\"image-inline\" height=\"181\" src=\"../images/plfx_japan_scawthorn-googleearth_1_600x181.jpg\" width=\"600\" /></p>\r\n<p>A 
building with cruciform-shaped plan, Clock Tower Building, Kyoto University, Japan (left: Map data ©2013  Google, ZENRIN; right: C. Scawthorn)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:
00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,147,'','',1,1165,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (304,302,'Roof-wall diaphragm connection present [RWCP]','roof-wall-diaphragm-connection-present-rwcp','<p>There are connections between the roof diaphragm and the w
alls, capable of transferring in-plane forces from roof to wall and restraining outward displacements of walls.</p>\r\n<p><img alt=\"RWCP_-_FEMA_1\" class=\"image-inline\" height=\"349\" src=\"../images/
rwcp_-_fema172_1_472x349.jpg\" width=\"472\" /></p>\r\n<p>Example of retrofit method to improve strength of wall-to-roof  connections of a steel deck diaphragm to a concrete or masonry wall; note that N 
refers to New and E refers to existing components (FEMA 172, 1992)</p>\r\n<p><img alt=\"RWCP_Allen&amp;Brzev_1\" class=\"image-inline\" src=\"../images/rwcp_1_400x349.jpg\" /></p>\r\n<p>Diagram showing a
 roof-wall connection for wood diaphragm and masonry wall, and parapet bracing.</p>\r\n<p><img alt=\"RWCP_Seattle_USA_Brzev_1\" class=\"image-inline\" src=\"../images/rwcp_seattle_usa_brzev_1_400x349.jpg
\" /></p>\r\n<p>Roof-wall diaphragm connection in a retrofitted building in Seattle, USA achieved through steel anchors (S. Brzev)</p>\r\n<p><img alt=\"RWCP_Seattle_USA_Brzev_2\" class=\"image-inline\" s
rc=\"../images/rwcp_seattle_usa_brzev_2_400x349.jpg\" /></p>\r\n<p>A typical wall anchor, consisting of a steel rod and an exterior steel  plate exposed at the exterior; note that anchor plates are of di
fferent  shapes and sizes (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,148,'','',1,2282,'
',0,'','','');
INSERT INTO `taxonomy_content` VALUES (305,303,'Arena [ASS2]','arena-ass2','<p><a name=\"taxonomy:ASS2\"></a></p>\r\n<p>A large sporting venue with seating for more than 1000 spectators. Seating can be i
ndoor or outdoors.<br /><br />Refer also to Recreation and Leisure for sporting venues with fewer spectators.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,149,'','',1,1580,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (306,304,'Earth, reinforced [ER]','earth-reinforced-er','<p><a name=\"taxonomy:ER\"></a></p>\r\n<p><a class=\"internal-link\" href=\"earth-1\">Earthen</a> constructi
on that is reinforced by horizontal and or vertical bands or posts from wood or other materials capable of resisting bending and or tension. Examples of horizontal reinforcement are eaves or lintel bands
. The reinforcement increases the strength of walls and/or functions to tie walls together.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:
00','0000-00-00 00:00:00','','','',1,150,'','',1,1062,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (307,305,'Fired clay hollow bricks [CLBRH]','fired-clay-hollow-bricks-clbrh','<p><a name=\"taxonomy:CLBRH\"></a></p>\r\n<p><a class=\"internal-link\" href=\"fired-cl
ay-brick\">Fired</a> perforated clay bricks with one or more holes (cavities) through the thickness of the brick with the area of cavities in excess of 25% of the volume. The holes can be seen from above
 after the brick has been laid.</p>\r\n<p><img alt=\"Fired Clay Hollow Bricks 1.JPG\" class=\"image-inline\" src=\"../images/CLBRH_Iran_Charleson_1_400x297.jpg\" style=\"float: left; \" /></p>\r\n<span><
/span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \">Fired cl
ay hollow bricks, Iran (A. Charleson)</p>\r\n<p><img alt=\"Fired Clay Hollow Bricks 2.JPG\" class=\"image-inline\" src=\"../images/CLBRH_Peru_Brzev_1_400x297.jpg\" style=\"float: left; \" /></p>\r\n<span
></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \">Fired clay hollow brick
s with vertical perforations, Peru (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,151,'',''
,1,1972,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (308,306,'Mostly industrial and commercial [MIX5]','mostly-industrial-and-commercial-mix5','<p><a name=\"taxonomy:MIX5\"></a></p>\r\n<p>The building is mixed use, a 
mixture of industrial and commercial. The majority of the floor area is for industrial use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:
00','0000-00-00 00:00:00','','','',1,152,'','',1,847,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (309,307,'Y-shape [PLFY]','y-shape-plfy','<p><a name=\"taxonomy:FLPY\"></a></p>\r\n<p>The footprint of the building when viewed in plan resembles the shape of the le
tter Y.</p>\r\n<p><img alt=\"PLFY_Vancouver_Canada_Googleearth_1\" class=\"image-inline\" height=\"339\" src=\"../images/plfy_vancouver_canada_googleearth_1_413x339.jpg\" width=\"413\" /></p>\r\n<p>A bui
lding with Y-shaped plan, Vancouver, Canada (Map data ©2013   Google, Province of British Columbia, DigitalGlobe, IMTCAN)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,165,'','',1,1288,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (310,308,'Steel [S]','steel-s','<p><a name=\"taxonomy:S\"></a></p>\r\n<p>Steel is a strong and malleable material (alloy of iron and carbon) used for structural and 
non-structural purposes. Includes all grades and alloys of steel.</p>\r\n<p><img alt=\"Steel\" class=\"image-inline\" src=\"../images/S_NewZealand_Charleson_1_400x376.jpg\" style=\"float: left; \" /></p>
\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span
>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Steel building under construction, New Zealand (A. Charleson)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','
0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,166,'','',1,1272,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (311,309,'Animal shelter [AGR2]','animal-shelter-agr2','<p><a name=\"taxonomy:AGR2\"></a></p>\r\n<p>A building in which animals are reared, or where they take shelte
r.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,167,'','',1,1435,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (312,310,'Earthen floor, unknown [FE99]','earthen-unknown-fe99','<p><a name=\"taxonomy:FE99\"></a></p>\r\n<p>It is clear that the floor structure is made from earthe
n construction, but the type of earthen construction system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00
',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,180,'','',1,891,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (313,311,'Foundation, other [FOSO]','foundation-other-foso','<p><a name=\"taxonomy:FOSO\"></a></p>\r\n<p>The type of foundation system is known, but none of the foun
dation system types in this table adequately describe it.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','',''
,1,181,'','',1,862,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (314,312,'Change in vertical structure (includes large overhangs) [CHV]','change-in-vertical-structure-include-large-overhangs-chv','<p><a name=\"taxonomy:CHV\"></a>
</p>\r\n<p>Changes in vertical structure when the structural system and/or structural material changes up the height of the building. This also covers the irregularity referred to as \"Offset Structure\"
 in some building codes. The Offset Structure refers to a case when the lateral load-resisting system is not vertically continuous from foundation to roof, but has a horizontal offset somewhere up its he
ight. These buildings may have two different lateral load-resisting systems at some floor levels, but not across all levels (vertically), or across the entire plan (horizontally).</p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p><img alt=\"Change in vertical structure (FEMA 2006)\" class=\"image-left\" src=\"../images/CHV_-_FEMA454_1_400x201.jpg\" /></p>\r\n \
r\n \r\n \r\n \r\n \r\n \r\n<p>Change in vertical structure (FEMA 454, 2006)</p>\r\n<p><img alt=\"Out-of-plane offset: discontinuous shear walls (FEMA 2006)\" class=\"image-inline\" src=\"../images/CHV_-
_FEMA454_2_222x146.jpg\" /></p>\r\n<p>Offset structure - discontinuous shear walls (FEMA 454, 2006)</p>\r\n<p><img alt=\"CHV_USA_Brzev_5\" class=\"image-left\" height=\"367\" src=\"../images/chv_usa_brze
v_5_170x367.jpg\" width=\"170\" /><img alt=\"CHV_USA_Brzev_4\" class=\"image-inline\" height=\"302\" src=\"../images/chv_usa_brzev_4_226x302.jpg\" width=\"226\" /></p>\r\n \r\n \r\n \r\n<p>Transamerica P
yramid, the tallest skyscraper in San Francisco, California is characterized by a change in vertical structure (S. Brzev)</p>\r\n<p><img alt=\"CHV_USA_Brzev_1\" class=\"image-inline\" height=\"326\" src=
\"../images/chv_usa_brzev_1_198x326.jpg\" width=\"198\" /></p>\r\n<p>Change in vertical structure, Seattle, USA (S. Brzev)</p>\r\n<p><img alt=\"CHV_China_Willms_1\" class=\"image-inline\" height=\"263\" 
src=\"../images/chv_china_willms_1_267x263.jpg\" width=\"267\" /></p>\r\n<p>Change in vertical structure, a temple in China (D. Willms)</p>\r\n<p><img alt=\"CHV_Pakistan_Kashmir_Scawthorn_1\" class=\"ima
ge-inline\" height=\"301\" src=\"../images/chv_pakistan_kashmir_scawthorn_1_280x301.jpg\" width=\"280\" /></p>\r\n<p>This building in Rawalpindi, Pakistan is characterized by a change in vertical structu
re and it suffered damage in the 2005 Kashmir earthquake (C. Scawthorn)</p>\r\n<p><img alt=\"CHV_Morocco_Scawthorn_1\" class=\"image-inline\" height=\"339\" src=\"../images/chv_morocco_scawthorn_1_254x33
9.jpg\" width=\"254\" /></p>\r\n<p>A Kasbah in Tanger, Morocco with a large overhang (C. Scawthorn)</p>\r\n<p><img alt=\"CHV_USA_Brzev_2\" class=\"image-left\" height=\"268\" src=\"../images/chv_usa_brze
v_2_312x268.jpg\" width=\"312\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Change in vertical structure, Seattle Central Library, USA (S. Brzev)</p>\r\n<p><img alt=\"CHV_Hildebrand_Ha
ll_Berkeley_USA_BrzevS_1\" class=\"image-inline\" height=\"278\" src=\"../images/chv_hildebrand_hall_berkeley_usa_brzevs_1_335x278.jpg\" width=\"335\" /></p>\r\n<p>A building with large overhangs, Univer
sity of California Berkeley, USA (S. Brzev)</p>\r\n<p><img alt=\"CHV_India_Rawal_1\" class=\"image-inline\" height=\"291\" src=\"../images/chv_india_rawal_1_354x291.jpg\" width=\"354\" /></p>\r\n<p>This 
building in India has large overhangs (People in Centre)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',
1,182,'','',1,1958,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (315,313,'No mortar [MON]','no-mortar-mon','<p>Dry laid masonry units where no <a class=\"internal-link\" href=\"mortar\">mortar</a> has been used.</p>\r\n<p><img al
t=\"No mortar (dry masonry) (S. Brzev)\" class=\"image-inline\" src=\"../images/MON_-_Brzev_1_400x289.jpg\" /></p>\r\n<p>Masonry walls without mortar (also known as dry masonry) were built by Inca civili
zation in Machu Picchu, Peru (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,183,'','',1,120
7,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (316,314,'Braced frame [LFBR]','braced-frame-lfbr','<p>A framework of beams and columns in which inclined, often diagonal, structural members brace the building and 
provide strength and rigidity. The bracing can take a variety of forms. If diagonal members are stocky they resist both tension and compression forces. However if slender, they resist tension forces only
. Usually, braced frame members are triangulated and meet at joints (similar to a vertical truss). Eccentrically Braced Frames are the exception - their inclined members are deliberately offset at joints
 in order to create ductile fuse regions in the steel beams. Braced Frames may or may not be infilled.</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFBR_diagram_Charleson_2\" class=\"image-inline\" 
height=\"315\" src=\"../images/lfbr_diagram_charleson_2_348x315.jpg\" width=\"348\" /></p>\r\n<p style=\"text-align: left; \">A simplified drawing of a typical cross-braced frame structure (A. Charleson,
 <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2).</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFBR_diagram_Charleson_1\" class=\"image-inline\" height=\"482\" src=\
"../images/lfbr_diagram_charleson_1_559x482.jpg\" width=\"559\" /></p>\r\n<p style=\"text-align: left; \">Examples of different types of braced frames (A. Charleson, <i>Seismic Design for Architects</i>,
 Architectural Press 2008, p. 77, Fig. 5.23).</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFBR_Mexico_Scawthorn_1\" class=\"image-inline\" height=\"326\" src=\"../images/lfbr_mexico_scawthorn_1_244
x326.jpg\" width=\"244\" /></p>\r\n<p style=\"text-align: left; \">Exterior braced frame as a retrofit scheme for a reinforced concrete building, Mexico (C. Scawthorn)</p>\r\n<p><img alt=\"LFBR_USA_Brzev
_2\" class=\"image-inline\" height=\"246\" src=\"../images/lfbr_usa_brzev_2_352x246.jpg\" width=\"352\" /></p>\r\n<p>Braced frame (Chevron braces), Seattle, USA (S. Brzev)</p>\r\n<div class=\"important\"
></div>\r\n<div class=\"important\"></div>\r\n<p><img alt=\"Braced Frame 1.JPG\" class=\"image-inline\" height=\"261\" src=\"../images/LFBR_NewZealand_Charleson_1_348x261.jpg\" style=\"float: left; \" wi
dth=\"348\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"
text-align: left; \">Eccentrically braced steel frame under construction, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFBR_Canada_Brzev_1\" class=\"image-inline\" src=\".
./images/lfbr_canada_brzev_1_400x261.jpg\" /></p>\r\n<p style=\"text-align: left; \">Concentrically braced steel frame under construction, Canada (S. Brzev)</p>\r\n<p><img alt=\"Braced Frame 2.JPG\" clas
s=\"image-inline\" src=\"../images/LFBR_India_Charleson_1_400x261.jpg\" style=\"float: left; \" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span
>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Concentrically braced frame, India (A. Charleson)</p>\r\n
<p><img alt=\"Braced Frame 3.JPG\" class=\"image-inline\" height=\"380\" src=\"../images/LFBR_Iran_Charleson_1_285x380.jpg\" style=\"float: left; \" width=\"285\" /></p>\r\n<span></span>\r\n<span></span>
\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<p style=\"t
ext-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Braced frame, Iran (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFBR_Seattle_USA_BrzevS_1\" class=\"image-left\" height=\"
354\" src=\"../images/lfbr_seattle_usa_brzevs_1_286x354.jpg\" width=\"286\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"><im
g alt=\"LFBR_Seattle_USA_BrzevS_2\" class=\"image-inline\" height=\"216\" src=\"../images/lfbr_seattle_usa_brzevs_2_278x216.jpg\" width=\"278\" /></p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style
=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Steel braced frame, Seattle, USA (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LFB
R_University Hall_Berkeley_USA_1\" class=\"image-inline\" height=\"379\" src=\"../images/lfbr_university-hall_berkeley_usa_1_344x379.jpg\" width=\"344\" /></p>\r\n<p style=\"text-align: left; \">Exterior
 steel braced frame as a retrofit solution, University Hall, University of Berkeley, California (S. Brzev)</p>\r\n<p style=\"text-align: left; \"><img alt=\"LO_China_Brzev_1\" class=\"image-left\" src=\"
../images/lo_china_brzev_1_400x379.jpg\" /><img alt=\"LO_China_Brzev_3\" class=\"image-inline\" height=\"208\" src=\"../images/lo_china_brzev_3_328x208.jpg\" width=\"328\" /></p>\r\n<p style=\"text-align
: left; \">Birds Nest Stadium in Beijing, China has a 3-D braced frame structural system (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-0
0 00:00:00','0000-00-00 00:00:00','','','',1,184,'','',1,15628,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (317,315,'Roof tie-down unknown [RTD99]','roof-tie-down-unknown-rtd99','<p>It is not known whether connections are present that provide vertical attachment of roof t
o walls in order to restrain roof from wind lift-off. There is insufficient information available or the connections are not visible from a survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,185,'','',1,835,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (318,316,'College/university, offices and/or classrooms [EDU3]','college-university-offices-and-or-classrooms-edu3','<p>Buildings used for higher education and vocat
ional training. Group housing, e.g. college residences, is not included in this category: refer to Institutional housing.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,186,'','',1,1006,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (319,317,'Number of storeys below ground [HB]','number-of-storeys-below-ground-hb','<p><a name=\"taxonomy:HB\"></a></p>\r\n<p>Number of storeys below the level of th
e primary entrance, otherwise described as the number of basements or basement levels. This does not include the <a class=\"internal-link\" href=\"ground-floor\">ground floor</a>. If it is known that the
re are no storeys below ground floor, the number is zero. It includes storage and mechanical plant levels only if these cover over 50% of the plan area.<br /><br />The number of storeys below ground can 
be recorded as an exact number, or as a range, or as an approximate number if the exact number is not known. It can also be recorded as unknown.</p>\r\n \r\n<p><img alt=\"HB_diagram_-_1\" class=\"image-i
nline\" src=\"../images/hb_diagram_-_1_400x291.jpg\" /></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1
,187,'','',1,1204,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (320,318,'Metal roof beams supporting precast concrete slabs [RME2]','metal-beams-supporting-precast-concrete-slabs-rme2','<p><a name=\"taxonomy:RME2\"></a></p>\r\n<
p>Precast concrete slabs (e.g. hollow-core slabs) supported by steel beams.</p>\r\n \r\n<p><img alt=\"Metal beams supporting precast concrete slabs, India (S. Brzev)\" class=\"image-inline\" src=\"../ima
ges/FME2-RME2_India_Brzev_1_400x238.jpg\" /></p>\r\n<p>Metal beams supporting precast concrete slabs, India (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 0
0:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,188,'','',1,2054,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (321,319,'Metal, Unknown [ME99]','metal-unknown-me99','<p><a name=\"taxonomy:ME99\"></a></p>\r\n<p>It is clear that the structural material of the Lateral Load Resis
ting System is metal (and is not steel), but the type of metal is unknown. The material may be hidden or coated, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000
-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,179,'','',1,808,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (322,320,'Government [GOV]','government-gov','<p>The building is used by national or local government, and includes office buildings, and facilities involved in emer
gency management. Medical and educational facilities are not included in this category.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',
'0000-00-00 00:00:00','','','',1,178,'','',1,855,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (323,321,'Post and beam [LPB]','post-and-beam-lpb','<p>A framework of posts and beams where posts are spaced several meters apart. If the posts do not cantilever fro
m the foundations, lateral stability may be supplemented by infill walls or by small diagonal bracing members (knee braces) at post and beam connections that provide some rigidity against horizontal forc
es. Includes systems comprised of cantilevered posts and trusses with simple pin-jointed connections between them. If most of the seismic resistance is provided by walls or infill walls  then the lateral
 load-resisting system should be described as Wall.</p>\r\n<p>Note that posts and beams include vertically cantilevered posts or columns without rigidly connected beams that would otherwise transform thi
s structural system into a moment frame. If these vertical members have a height to depth or length (measured in the direction they resist horizontal load) less than 3.0 they should be considered as Wall
s.</p>\r\n<p><img alt=\"LPB_Allen&amp;Charleson_1\" class=\"image-inline\" src=\"../images/lpb_1_400x297.jpg\" /></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:
00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,177,'','',1,1802,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (324,322,'Recreation and leisure [COM11]','recreation-and-leisure-com11','<p><a name=\"taxonomy:COM11\"></a></p>\r\n<p>All sports and recreational facilities with se
ating for fewer than 1000 spectators.<br /><br />Refer to \'Arena\' for larger sporting venues with large numbers of spectators.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'00
00-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,168,'','',1,937,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (325,323,'Mostly commercial and residential [MIX2]','mostly-commercial-and-residential-mix2','<p><a name=\"taxonomy:MIX2\"></a></p>\r\n<p>The building is mixed use, 
a mixture of commercial and residential. The majority of the floor area is for commercial use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:
00:00','0000-00-00 00:00:00','','','',1,169,'','',1,834,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (326,324,'Commercial and public, unknown type [COM99]','commercial-and-public-unknown-type-com99','<p>It is clear that the building is a commercial building, but the
 exact type of commercial use is unknown.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,170,'','',1,1
012,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (327,325,'Vaulted masonry floor [FM1]','vaulted-masonry-fm1','<p><a name=\"taxonomy:FM1\"></a></p>\r\n<p>Masonry spans between bearing walls and is overlaid with fil
l. A flat floor surface is provided and is often overlaid with flooring. Includes two-way vaults and masonry domes.</p>\r\n<p><img alt=\"Brick masonry vault (M. Lutman)\" class=\"image-inline\" src=\"../
images/FM1-RM1_-_Lutman_1_400x301.jpg\" /></p>\r\n<p><span class=\"contenttype-image\">Brick masonry vault (M. Lutman)</span></p>\r\n<p><span class=\"contenttype-image\"><img alt=\"Brick masonry double v
ault, Italy (S. Brzev)\" class=\"image-inline\" src=\"../images/FM1-RM1_Italy_Brzev_1_400x301.jpg\" /></span></p>\r\n<p>Brick masonry double vault, Italy (S. Brzev)</p>\r\n<p><img alt=\"FM1_Portugal_Brze
v_1\" class=\"image-inline\" src=\"../images/fm1_portugal_brzev_1_400x301.jpg\" /></p>\r\n<p>Stone masonry double vault, Portugal (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00
:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,171,'','',1,1391,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (328,326,'Masonry, unreinforced [MUR]','masonry-unreinforced-mur','<p><a name=\"taxonomy:MUR\"></a></p>\r\n<p>Masonry without any form of reinforcement.</p>\r\n<p><i
mg alt=\"MUR_Indonesia_Bothara_1\" class=\"image-inline\" height=\"274\" src=\"../images/mur_indonesia_bothara_1_364x274.jpg\" width=\"364\" /></p>\r\n<p>Unreinforced brick masonry construction (covered 
by plaster), Indonesia (J. Bothara)</p>\r\n<p><img alt=\"MUR_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/mur_canada_brzev_1_400x274.jpg\" /></p>\r\n<p>A typical unreinforced masonry building 
from the beginning of 20th century, Halifax, Canada (S. Brzev)</p>\r\n<p><img alt=\"MUR_Switzerland_Schacher_1\" class=\"image-inline\" height=\"360\" src=\"../images/mur_switzerland_schacher_1_270x360.j
pg\" width=\"270\" /></p>\r\n<p>Unreinforced stone masonry, Switzerland (T. Schacher)</p>\r\n<p><img alt=\"MUR_Chile_Brzev_1\" class=\"image-inline\" height=\"293\" src=\"../images/mur_chile_brzev_1-1_33
5x293.jpg\" width=\"335\" /></p>\r\n<p>Unreinforced brick masonry damaged in the 2010 Maule, Chile earthquake (S. Brzev)</p>\r\n<p><img alt=\"MUR_Peru_N. Tarque_1\" class=\"image-left\" height=\"248\" sr
c=\"../images/mur_peru_n.-tarque_1_331x248.jpg\" width=\"331\" /></p>\r\n<p><img alt=\"Masonry Unreinforced 1.JPG\" class=\"image-inline\" height=\"221\" src=\"../images/CU_Peru_Charleson_1_296x221.jpg\"
 style=\"float: left; \" width=\"296\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<
p style=\"text-align: left; \"> </p>\r\n<p style=\"text-align: left; \">Unreinforced adobe masonry, Peru (left-N. Tarque and right-A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"MUR_Moro
cco_Scawthorn_1\" class=\"image-inline\" src=\"../images/mur_morocco_scawthorn_1_420x257.jpg\" /></p>\r\n<p style=\"text-align: left; \">Unreinforced stone masonry building, Morocco (C. Scawthorn)</p>\r\
n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,172,'','',1,2094,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (329,327,'Roof material, unknown [R99]','roof-material-unknown-r99','<p><a name=\"taxonomy:R99\"></a></p>\r\n<p>The material of the roof is unknown. It has not been 
inspected sufficiently to determine the material, or information is unavailable. In some cases the material of the structure of the roof will not be visible due to overlay of roofing materials and/or the
 presence of ceilings that may be a different material.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1
,173,'','',1,795,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (330,328,'Square, with an opening in plan [PLFSQO]','square-with-an-interior-opening-plfsqo','<p class=\"western\">Same as PLFSQ but with an open internal courtyard 
or full height roofed atrium.</p>\r\n<p class=\"western\"><img alt=\"PLFSQO_Japan_Scawthorn_1\" class=\"image-inline\" height=\"254\" src=\"../images/plfsqo_japan_scawthorn_1_558x254.jpg\" width=\"558\" 
/></p>\r\n<p class=\"western\">A building with a square plan shape with an opening, Japan (left photo: C. Scawthorn, right: Map data ©2013  Google, ZENRIN)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0
000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,174,'','',1,1027,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (331,329,'Masonry unit, other [MO]','masonry-unit-other-mo','<p><a name=\"taxonomy:MO\"></a></p>\r\n<p>Any masonry type that is known but does not fit the descriptio
ns of the other masonry types in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,175,'','',
1,870,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (332,330,'Light wood members [WLI]','light-timber-members-wli','<p><a name=\"taxonomy:WLI\"></a></p>\r\n<p>Small wood members typically with maximum dimensions in th
e order of 100 mm. Usually, they are closely-spaced. Light wood framed house construction, which usually includes sheet linings or wood boards that provide most of the bracing is classified as a Wall lat
eral load-resisting system.</p>\r\n<p><img alt=\"Light Timber Members 1.JPG\" class=\"image-inline\" height=\"304\" src=\"../images/WLI_NewZealand_Charleson_1_228x304.jpg\" style=\"float: left; \" width=
\"228\" /></p>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r\n<span></span>\r
\n<p style=\"text-align: left; \">Light Wood Framing, New Zealand (A.Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"WLI_Japan_Scawthorn_1\" class=\"image-inline\" src=\"../images/wli_japan_
scawthorn_1_400x304.jpg\" /></p>\r\n<p style=\"text-align: left; \">Modern Japanese house under construction, showing full storey diagonal bracing (note, some bracing is only temporary) (C. Scawthorn)</p
>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,176,'','',1,1303,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (333,331,'Height of ground floor level above grade unknown [HF99]','height-of-ground-floor-level-above-grade-unknown-hf99','<p><a name=\"taxonomy:HF99\"></a></p>\r\n
<p>The height of the ground floor above grade is unknown. It is impossible to determine this height within an estimated range, or give an exact or approximate height. Information is unavailable, or the b
uilding has not been inspected sufficiently to determine the height of the ground floor above grade.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-
00 00:00:00','0000-00-00 00:00:00','','','',1,189,'','',1,914,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (334,332,'S-shape [PLFS]','s-shape-plfs','<p><a name=\"taxonomy:PLFS\"></a></p>\r\n<p>The footprint of the building when viewed in plan resembles the shape of the le
tter S.</p>\r\n<p><img alt=\"PLFS_Vancouver_Canada_Googleearth_1\" class=\"image-inline\" height=\"376\" src=\"../images/plfs_vancouver_canada_googleearth_1_474x376.jpg\" width=\"474\" /></p>\r\n<p>A bui
lding with S-shaped plan, Vancouver, Canada (Map data ©2013   Google, Province of British Columbia, DigitalGlobe, IMTCAN)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-0
0 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,97,'','',1,1094,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (335,333,'Concrete floor [FC]','concrete-fc','<p><a name=\"taxonomy:FC\"></a></p>\r\n<p>The floor structure is constructed of concrete.</p>\r\n','',1,8,'0000-00-00 0
0:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,110,'','',1,982,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (336,334,'Cement:lime mortar [MOCL]','lime-cement-mortar-mocl','<p><span><a class=\"internal-link\" href=\"mortar\">Mortar</a> between masonry units consists of ceme
nt, lime, and sand.</span> These materials are used in different mix proportions. For example, a lower strength mortar of this type would have a proportion 1:2:9 cement:lime:sand, and a higher strength m
ortar would have proportions of 1:1/2:3 1/2 cement:lime:sand. This mortar has a similar colour as  cement:sand mortar. Lime is usually added to improve workability at the time of construction, but it doe
s not improve strength.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,111,'','',1,1177,'',0,'','','')
;
INSERT INTO `taxonomy_content` VALUES (337,335,'Produce storage [AGR1]','produce-storage-agr1','<p><a name=\"taxonomy:AGR1\"></a></p>\r\n<p>A building used for the storage of agricultural produce. It inc
ludes grain storage, hay, silage, fruit, vegetables.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,11
2,'','',1,829,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (338,336,'Religious gathering [ASS1]','religious-gathering-ass1','<p>Place for religious gathering such as church, mosque, temple, synagogue, or monastery.</p>\r\n',
'',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,113,'','',1,818,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (339,337,'Fibre reinforcing mesh [RCM]','fibre-reinforcing-mesh-rcm','<p><a name=\"taxonomy:RCM\"></a></p>\r\n<p><span>This  is an overlay of reinforcing mesh bonded
 or attached to a masonry wall to  provide reinforcement. The reinforcement is usually in the form of  fibre reinforced  polymer (FRP) mesh or fabrics using glass or carbon fibres bonded to  the wall wit
h a resin, or polymer grid (geogrid) attached to the wall  with plastic or nylon ties. Mesh is often also placed on the interior  surfaces of walls and to surfaces of interior walls.  The mesh is usually
 plastered over. Cement or mud plaster is used. This type of reinforcement is often installed in existing buildings as a  seismic retrofit provision.</span></p>\r\n \r\n<p><img alt=\"RCM_Peru_N. Tarque_1
\" class=\"image-left\" height=\"198\" src=\"../images/rcm_peru_n.-tarque_1_313x198.jpg\" width=\"313\" /><img alt=\"RCM_Peru_N. Tarque_3\" class=\"image-inline\" height=\"205\" src=\"../images/rcm_peru_
n.-tarque_3_306x205.jpg\" width=\"306\" /></p>\r\n<p>Adobe walls reinforced with polymer mesh, construction phase; note the mesh overlaid with mud plaster on the right photo (N. Tarque)</p>\r\n<p><img al
t=\"Adobe building reinforced with fibre reinforced mesh (geogrid), Peru (S. Brzev)\" class=\"image-left\" height=\"228\" src=\"../images/RCM_Peru_Brzev_1_313x228.jpg\" width=\"313\" /></p>\r\n<p><img al
t=\"RCM_Peru_N. Tarque_2\" class=\"image-inline\" height=\"244\" src=\"../images/rcm_peru_n.-tarque_2_276x244.jpg\" width=\"276\" /></p>\r\n<p>Polymer mesh (geogrid) laid in form of horizontal and vertic
al bands, adobe walls, Peru (left-S. Brzev and right-N. Tarque)</p>\r\n<p><img alt=\"Concrete block masonry reinforced with fibre reinforced composite mesh (J. Sherstobitoff)\" class=\"image-inline\" hei
ght=\"267\" src=\"../images/RCM_Canada_Sherstobitoff_1_334x267.jpg\" width=\"334\" /></p>\r\n<p>Concrete block masonry reinforced with fibre reinforced composite mesh, Canada (J. Sherstobitoff)</p>\r\n',
'',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,114,'','',1,2146,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (340,338,'Pitched with dormers [RSH4]','pitched-with-dormers-rsh4','<p><a name=\"taxonomy:RSH4\"></a></p>\r\n<p>A pitched roof with projecting vertical windows that 
have their own pitched roofs that intersect the main roof.</p>\r\n \r\n<p><img alt=\"RSH4_NewZealand_Charleson_1\" class=\"image-inline\" src=\"../images/rsh4_newzealand_charleson_1_400x306.jpg\" /></p>\
r\n<p>Pitched roof with dormers, New Zealand (A.Charleson)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','
',1,115,'','',1,1090,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (341,339,'Concrete roof without additional covering [RMN]','concrete-roof-without-additional-covering-rmn','<p><a name=\"taxonomy:RMN\"></a></p>\r\n<p>The roof struc
ture is concrete slab and there is no other covering surface over the structure of the roof system, other than paint or a clear seal. This attribute does not apply to concrete tiles or fibre cement sheet
.</p>\r\n<p><img alt=\"RMN_India_Brzev_1\" class=\"image-inline\" src=\"../images/rmn_india_brzev_1_400x255.jpg\" /></p>\r\n<p>Concrete roof without additional covering, India (S. Brzev)</p>\r\n','',1,8,
'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,116,'','',1,1411,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (342,340,'Detached building [BPD]','detached-building-bpd','<p><a name=\"taxonomy:BPD\"></a></p>\r\n<p>The building may be within a block, but it is not attached to 
any other building. This applies to buildings whose neighbouring buildings are spaced apart a distance equal to or more than 4% of the height of the lower building. Where  buildings are spaced closer tha
n this, but not attached, they are considered to be adjacent.</p>\r\n<p><img alt=\"BPD_diagram_1\" class=\"image-left\" height=\"214\" src=\"../images/bpd_diagram_1_314x214.jpg\" width=\"314\" /></p>\r\n
<p><img alt=\"BPD_diagram_2\" class=\"image-inline\" height=\"214\" src=\"../images/BPD_diagram_2_318x214.jpg\" width=\"318\" /></p>\r\n<p>The buildings shown in black in this plan view are detached, as 
the two  neighbouring buildings are too far away to be considered adjacent.</p>\r\n<p><img alt=\"BPD_Canada_Brzev_1\" class=\"image-inline\" height=\"272\" src=\"../images/bpd_canada_brzev_1_695x272.jpg\
" width=\"695\" /></p>\r\n<p>An example of a detached building, Vancouver, Canada (Map data ©2013  Google, Province of British Columbia, DigitalGlobe, IMTCAN)</p>\r\n<p><img alt=\"BPD_NewZealand_Allen_1\
" class=\"image-inline\" src=\"../images/bpd_newzealand_allen_1_400x272.jpg\" /></p>\r\n<p>Detached building on a corner, where the neighbouring buildings are too far away to be considered adjacent, New 
Zealand (L. Allen).</p>\r\n<p><img alt=\"BPD_PutuChile_Brzev_1\" class=\"image-inline\" src=\"../images/bpd_putuchile_brzev_1_400x272.jpg\" /></p>\r\n<p>Detached building, where the neighbouring building
s are too far away to be considered adjacent. Putu, Chile (S. Brzev).</p>\r\n<p><img alt=\"BPD_SantiagoChile_Brzev_1\" class=\"image-inline\" src=\"../images/bpd_santiagochile_brzev_1_400x272.jpg\" /></p
>\r\n<p>The building in the foreground is detached, as the neighbouring buildings are too far away to be considered adjacent. Santiago, Chile (S. Brzev).</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','000
0-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,117,'','',1,1228,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (343,341,'Wooden beams or trusses with heavy roof covering [RWO2]','wooden-beams-or-trusses-with-heavy-roof-covering-rwo2','<p>Wooden beams or trusses and joists, su
pporting heavy roof covering. Examples include a sloped wooden roof with a layer of earth covered by clay roof tiles, found in high precipitation regions around the world. Another example of heavy coveri
ng is stone tiles, which are used for roofing.</p>\r\n<p>This also includes flat roofs with heavy roof covering made from mixture of clay, straw and tamped earth. New layers are added annually to the roo
f as a protection against rain and snow percolation. These roofs are predominantly found in single-storey buildings in rural areas of Eastern Turkey, Iran, Afghanistan, Pakistan, India, China, as well as
 in the Andean highlands and other regions.</p>\r\n<p><img alt=\"RW02_Iran_Mahdizadeh_Yekrangnia_1\" class=\"image-left\" height=\"210\" src=\"../images/rw02_iran_mahdizadeh_yekrangnia_1_305x210.jpg\" wi
dth=\"305\" /></p>\r\n<p><img alt=\"RW02_Iran_Mahdizadeh_Yekrangnia_2\" class=\"image-inline\" height=\"238\" src=\"../images/rw02_iran_mahdizadeh_yekrangnia_2_326x238.jpg\" width=\"326\" /></p>\r\n<p>Fl
at wooden roof with heavy mud and straw overlay, Iran (A. Mahdizadeh, M. Yekrangnia)</p>\r\n<p><img alt=\"RW02_Algeria_Farsi_1\" class=\"image-inline\" height=\"223\" src=\"../images/rw02_algeria_farsi_1
_445x223.jpg\" width=\"445\" /></p>\r\n<p>Unreinforced masonry building in Baghlia City experienced roof collapse in the 2003 Boumerdes, Algeria earthquake; the timber roof structure supported clay tile 
roof covering (M. Farsi)</p>\r\n<p><img alt=\"RW02_Peru_N. Tarque_1\" class=\"image-inline\" height=\"254\" src=\"../images/rw02_peru_n.-tarque_1_338x254.jpg\" width=\"338\" /></p>\r\n<p>Typical flat roo
f found in adobe buildings in Peru made of wooden (or bamboo) beams overlaid with straw, mud, and in some cases tiles or metal sheets (N. Tarque)</p>\r\n<p><img alt=\"Wooden roof structure with stone sla
te tiles, Nepal (M. Schildkamp)\" class=\"image-inline\" height=\"283\" src=\"../images/RWO2_Nepal_Schildkamp_1_358x283.jpg\" width=\"358\" /></p>\r\n<p>Wooden roof structure with stone slate tiles, Nepa
l (M. Schildkamp)</p>\r\n \r\n<p><img alt=\"Wooden roof supporting clay tiles, Chile (S. Brzev)\" class=\"image-inline\" src=\"../images/RWO2_Chile_Brzev_1_400x283.jpg\" /></p>\r\n<p>Wooden roof supporti
ng clay tiles, Chile (S. Brzev)</p>\r\n \r\n<p><img alt=\"Wooden structure supporting heavy mud overlay, India (S. Brzev) \" class=\"image-inline\" src=\"../images/RWO2_India_Brzev_1_400x283.jpg\" /></p>
\r\n<p>Flat wooden roof structure supporting heavy mud covering, India (S. Brzev)</p>\r\n<p><img alt=\"RW02_india_brzev_1\" class=\"image-inline\" src=\"../images/rw02_india_brzev_1_400x283.jpg\" /></p>\
r\n<p>Wooden roof with a heavy mud overlay caused many fatalities in the 1993 Maharashtra, India earthquake (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 0
0:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,118,'','',1,2210,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (344,342,'Commercial and public [COM]','commercial-and-public-com','<p>The building is mainly used for commercial and public purposes, including retail, storage, spo
rts facilities, hospitals, libraries and museums.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,109,'
','',1,980,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (345,343,'Curved, solid [PLFC]','curved-solid-plfc','<p>The building footprint is a round shape; circular, elliptical, or ovoid.</p>\r\n<p><img alt=\"PLFC_Canada_Brz
ev_1\" class=\"image-inline\" height=\"236\" src=\"../images/plfc_canada_brzev_1_602x236.jpg\" width=\"602\" /></p>\r\n<p>A building with a solid elliptical plan shape, Vancouver, Canada (Map data ©2013 
 Google, Province of British Columbia, DigitalGlobe, IMTCAN)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',''
,'',1,108,'','',1,1204,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (346,344,'Plan irregularity-secondary [IRPS]','plan-irregularity-secondary-irps','<p>A structural irregularity that is observed in the plan (horizontal plane) of the
 building. If more than one plan irregularity is observed, the primary plan  irregularity is that deemed to be the most significant in terms of affecting the building’s seismic performance, and the secon
dary plan irregularity is that deemed to be the next most significant. If there is only one structural structural irregularity observed, the term \"No Irregularity\" will be used by default</p>\r\n','',1
,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,107,'','',1,856,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (347,345,'Pitched with gable ends [RSH2]','pitched-with-gable-ends-rsh2','<p><a name=\"taxonomy:RSH2\"></a></p>\r\n<p>The roof is pitched (sloped) on two sides up to
 a central ridge. At each end of the roof, i.e. the other two sides, there is a vertical gable. Gable is a triangular wall between the roof wedges.</p>\r\n<p><img alt=\"RSH2_Chile_Brzev_1.JPG\" class=\"i
mage-inline\" src=\"../images/RSH2_Chile_Brzev_1.JPG_400x306.jpg\" /></p>\r\n<p>Pitched roof with gable walls (shown in white colour), Chile (S. Brzev)</p>\r\n<p><img alt=\"RSH2_Nepal_ Schildkamp_1\" cla
ss=\"image-inline\" src=\"../images/rsh2_nepal_-schildkamp_1_400x306.jpg\" /></p>\r\n<p>Pitched roofs, Nepal (M. Schildkamp)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-0
0-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,98,'','',1,1386,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (348,346,'Earthen floor [FE]','earthen-fe','<p><a name=\"taxonomy:FE\"></a></p>\r\n<p>The floor structure is of earthen construction.</p>\r\n','',1,8,'0000-00-00 00:
00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,99,'','',1,861,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (349,347,'Other material [MATO]','other-material-mato','<p><a name=\"taxonomy:MATO\"></a></p>\r\n<p>Materials such as reeds, plastics and fabrics. Any known material
 that does not fit into the other definitions in this table.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',''
,'',1,100,'','',1,919,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (350,348,'Unknown roof shape [RSH99]','unknown-roof-shape-rsh99','<p><a name=\"taxonomy:RSH99\"></a></p>\r\n<p>The roof shape is unknown. There is insufficient infor
mation available and  the roof shape is not observable from the survey.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:0
0:00','','','',1,101,'','',1,804,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (351,349,'Other gatherings [ASS4]','other-gatherings-ass4','<p><a name=\"taxonomy:ASS4\"></a></p>\r\n<p>A building used for social gatherings such as clubs (other th
an sports clubs), societies, political parties, function centres and conference centres, community halls, town halls.<br /><br /><br /><br />Refer to Sports and Recreation for sports clubs.</p>\r\n','',1
,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,102,'','',1,885,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (352,350,'Masonry roof [RM]','masonry-rm','<p><a name=\"taxonomy:RM\"></a></p>\r\n<p>The roof structure is constructed of masonry.</p>\r\n','',1,8,'0000-00-00 00:00:
00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,103,'','',1,918,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (353,351,'Tensile membrane or fabric roof [RMT11]','tensile-membrane-or-fabric-roof-rmt11','<p><a name=\"taxonomy:RMT11\"></a></p>\r\n<p><span>The roof is made of fa
bric, including tensile membrane, inflatable fabric structures, and other types of fabric sheet roof. </span></p>\r\n<p><span> </span><span>A tensile membrane roof is made </span><span>of stretched fabri
c, usually stretched in two directions to form a tensioned surface. Examples of tension membranes include polyester coated with PVC and glass fibre coated with teflon.</span></p>\r\n<p>An inflatable roof
 uses fabric chambers pressurized with air to form a self-supporting structure.</p>\r\n<p><span>Also included is any other type of fabric roof not inflatable or </span><span>stretched like a tensile memb
rane, </span>and includes <span>plastic sheet, tarpaulin, canvas sheeting.</span></p>\r\n<p><span><img alt=\"RMT11_Canada_Brzev_2\" class=\"image-inline\" src=\"../images/rmt11_canada_brzev_2_400x238.jpg
\" /></span></p>\r\n<p><span>Canada Place in Vancouver, Canada is an example of tensile fabric roof structure (S. Brzev)</span></p>\r\n<p><span><img alt=\"RMT11_Canada_Brzev_1\" class=\"image-inline\" he
ight=\"243\" src=\"../images/rmt11_canada_brzev_1_370x243.jpg\" width=\"370\" /></span></p>\r\n<p><span>An example of a fabric roof (S. Brzev)<br /></span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0
000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,104,'','',1,1311,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (354,352,'Monopitch [RSH5]','monopitch-rsh5','<p>The roof slopes in one direction. Lean-to-roof is a special case of monopitch roof - it has a single pitch that rest
s against a higher wall.</p>\r\n<p><img alt=\"RSH5_Mexico_Brzev_1\" class=\"image-inline\" src=\"../images/rsh5_mexico_brzev_1_400x261.jpg\" /></p>\r\n<p>Monopitch roof, Mexico (S. Brzev)</p>\r\n<p><img 
alt=\"RSH5_Canada_Brzev_1\" class=\"image-inline\" height=\"271\" src=\"../images/rsh5_canada_brzev_1_374x271.jpg\" width=\"374\" /></p>\r\n<p>Monopitch roof, Canada (S. Brzev)</p>\r\n','',1,8,'0000-00-0
0 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,105,'','',1,1199,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (355,353,'Material properties','material-properties','<p>Detailed information related to <a class=\"internal-link\" href=\"material-technology\">material technology<
/a>, such as steel connections, types of stone masonry and mortar</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',
'','','',1,106,'','',1,972,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (356,354,'Sandstone [SPSA]','sandstone-spsa','<p>Sandstone is a sedimentary rock formed of sand grains typically (1/16 to 2 mm in diameter) that are cemented togethe
r. Sand-sized particles are generally composed of other rocks and minerals, such as feldspar, quartz, rock fragments, and clay.  The material cementing the sand grains can be silica,  calcium carbonate, 
or iron oxides. Depending on the composition of the sands and cement, the hardness of sandstone can vary.  Sandstone can be a variety of colours, but are typically grey, brown, yellow, and sometimes red,
 green, or white.</p>\r\n<p><img alt=\"SPSA_Cyprus_Pomonis_1\" class=\"image-inline\" src=\"../images/spsa_cyprus_pomonis_1_400x199.jpg\" /></p>\r\n<p>A two-storey sandstone masonry building, West Cyprus
 (A. Pomonis)</p>\r\n<p><img alt=\"SPSA_Canada_OjdrovicEng_1\" class=\"image-left\" height=\"241\" src=\"../images/spsa_canada_ojdroviceng_1_320x241.jpg\" width=\"320\" /></p>\r\n<p><img alt=\"SPSA_Canad
a_OjdrovicEn_2\" class=\"image-inline\" height=\"213\" src=\"../images/spsa_canada_ojdrovicen_2_285x213.jpg\" width=\"285\" /></p>\r\n \r\n<p>Exterior walls built in Nepean sandstone, National Parliament
 Building Complex, Ottawa, Canada (Ojdrovic Engineering)</p>\r\n<p><img alt=\"SPSA_Algeria_Farsi_1\" class=\"image-inline\" height=\"237\" src=\"../images/spsa_algeria_farsi_1_379x237.jpg\" width=\"379\"
 /></p>\r\n<p>Sandstone masonry walls in Ben-Daoud damaged in the 2010 earthquake, Algeria (M. Farsi)</p>\r\n<p><img alt=\"SPSA_Algeria_Farsi_2\" class=\"image-inline\" src=\"../images/spsa_algeria_farsi
_2_400x237.jpg\" /></p>\r\n<p>Sandstone masonry walls with timber reinforcement in Beni-Ourtilane damaged in the 2000 earthquake (M. Farsi)</p>\r\n<p><img alt=\"SPSA_Pakistan_MMRafi_1\" class=\"image-lef
t\" height=\"206\" src=\"../images/spsa_pakistan_mmrafi_1_376x206.jpg\" width=\"376\" /></p>\r\n<p><img alt=\"SPSA_Pakistan_MMRafi_2\" class=\"image-inline\" height=\"196\" src=\"../images/spsa_pakistan_
mmrafi_2_225x196.jpg\" width=\"225\" /></p>\r\n \r\n<p>Sandstone walls under construction, Pakistan (M.M. Rafi)</p>\r\n<p><img alt=\"SPSA_Delhi_India_BrzevS_1\" class=\"image-left\" height=\"332\" src=\"
../images/spsa_delhi_india_brzevs_1_308x332.jpg\" width=\"308\" /><img alt=\"SPSA_Delhi_India_BrzevS_2\" class=\"image-inline\" height=\"174\" src=\"../images/spsa_delhi_india_brzevs_2_236x174.jpg\" widt
h=\"236\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Sandstone masonry construction, Bara Gumbad Mosque, New Delhi, India (S. Brzev)</p>\r\n<p><img alt=\"SPSA_India_BrzevS_3\" class=\"image-inline\" src=
\"../images/spsa_india_brzevs_3_400x174.jpg\" /></p>\r\n<p>Sandstone construction, Sun Temple, Modhera, Gujarat, India (S. Brzev)</p>\r\n<p><img alt=\"SPSA_Chile_Brzev_1\" class=\"image-inline\" height=\
"247\" src=\"../images/spsa_chile_brzev_1_328x247.jpg\" width=\"328\" /></p>\r\n<p>Sandstone exterior wall, Chile (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-0
0-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,119,'','',1,1205,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (357,355,'Limestone [SPLI]','limestone-spli','<p>Limestone is a sedimentary rock made primarily of the mineral calcite (calcium carbonate).  Limstones are usually wh
ite or grey, but maybe coloured brown, yellow,  or red  or blueish, grey, or black (due to iron oxides or carbon).  Most limestones are usually  fine grained and featureless, but may also be medium to co
arse grained, or contain fossils. Because calcite is a not much harder than a fingernail, limestones are generally soft and can be scratched with metal easily.  A diagnostic characteristic of limestone i
s that it effervesces (bubbles) when in contact with a solution of weak (5%) hydrochloric acid.</p>\r\n<p><img alt=\"SPLI_Algeria_Farsi_3\" class=\"image-inline\" height=\"255\" src=\"../images/spli_alge
ria_farsi_3_339x255.jpg\" width=\"339\" /></p>\r\n<p>Limestone blocks used for stone masonry construction, Algeria (M. Farsi)</p>\r\n<p><img alt=\"SPLI_Greece_Pomonis_1\" class=\"image-inline\" src=\"../
images/spli_greece_pomonis_1_400x255.jpg\" /></p>\r\n<p>Loadbearing masonry walls built using limestone - note hewn stones in the corners and wooden lintels, Pylos, South West Peloponnese, Greece (A. Pom
onis)</p>\r\n<p><img alt=\"SPLI_Nepal_Schildkamp_1\" class=\"image-inline\" src=\"../images/spli_nepal_schildkamp_1_400x255.jpg\" /></p>\r\n<p>Limestone wall construction, school building, Nepal (M. Schi
ldkamp)</p>\r\n<p><img alt=\"SPLI_Canada_Lee_1\" class=\"image-left\" src=\"../images/spli_canada_lee_1_400x255.jpg\" /><img alt=\"SPLI_Canada_Lee_2\" class=\"image-inline\" src=\"../images/spli_canada_l
ee_2_200x255.jpg\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Limestone masonry, multi-family housing, Kingston, Ontario, Canada (J. Lee)</p>\r\n<p><img alt=\"SPLI_Canada_Lee_3\" class=\"image-inline\" h
eight=\"185\" src=\"../images/spli_canada_lee_3_384x185.jpg\" width=\"384\" /><img alt=\"SPLI_Canada_Lee_4\" class=\"image-inline\" src=\"../images/spli_canada_lee_4_200x185.jpg\" /></p>\r\n<p>Limestone 
masonry, single-family home, Kingston, Ontario, Canada (J. Lee)</p>\r\n<p><img alt=\"SPLI_Canada_Lee_5\" class=\"image-left\" src=\"../images/spli_canada_lee_5_400x185.jpg\" /><img alt=\"SPLI_Canada_Lee_
6\" class=\"image-inline\" src=\"../images/spli_canada_lee_6_200x185.jpg\" /></p>\r\n \r\n \r\n \r\n \r\n<p>Limestone masonry, single-family housing, Kingston, Ontario, Canada (J. Lee)</p>\r\n<p><img alt
=\"SPLI_Canada_Lee_7\" class=\"image-left\" src=\"../images/spli_canada_lee_7_400x185.jpg\" /></p>\r\n<p><img alt=\"SPLI_Canada_Lee_8\" class=\"image-inline\" src=\"../images/spli_canada_lee_8_200x185.jp
g\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Limestone masonry construction, church, Kingston, Ontario, Canada (J. Lee)</p>\r\n<p><img alt=\"SPLI_Algeria_Farsi_1\" class=\"image-inline\" src=\"../image
s/spli_algeria_farsi_1_400x185.jpg\" /></p>\r\n<p>Limestone masonry wall in Ben-Daoud damaged in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img alt=\"SPLI_Algeria_Farsi_2\" class=\"image-inline\" 
height=\"256\" src=\"../images/spli_algeria_farsi_2_340x256.jpg\" width=\"340\" /></p>\r\n<p>Limestone masonry wall in Beni-Ourtilane damaged in the 2000 earthquake (M. Farsi)</p>\r\n<p><img alt=\"SPLI_I
taly _Brzev_1\" class=\"image-inline\" height=\"217\" src=\"../images/spli_italy-_brzev_1_289x217.jpg\" width=\"289\" /></p>\r\n<p>Limestone wall construction, Italy (S. Brzev)</p>\r\n<p><img alt=\"SPLI_
France_BrzevS_1\" class=\"image-inline\" src=\"../images/spli_france_brzevs_1-1_400x217.jpg\" /></p>\r\n<p>Limestone masonry walls in a six-storey residential building, Nice, France (S. Brzev)</p>\r\n','
',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,120,'','',1,1210,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (358,356,'Torsion eccentricity [TOR]','torsion-eccentricity-tor','<p><a name=\"taxonomy:TOR\"></a></p>\r\n<p>For at least one direction (across or along the building
) the centre of rigidity or resistance is located anywhere beyond the half-way point between the centre of a typical floor plan and the side of the building.</p>\r\n<p>Torsion is created when the centre 
of mass (CM) and the centre of rigidity or resistance (CR) in the building do not coincide - the distance between these two points is referred to as torsion eccentricity. CM is usually the geometric cent
re of the floor (in plan). Location of the CR depends on the characteristics of components of lateral load-resisting system (shear walls, moment frames, braced frames, etc.). Torsional effects can develo
p only in buildings with rigid diaphragms. Also large torsion eccentricities may not lead to torsion irregularity if lateral load-resisting structure normal to the torsion generating structure is widely-
spaced in plan and strong.</p>\r\n<p><img alt=\"Torsional forces in a building (FEMA, 2006)\" class=\"image-inline\" height=\"279\" src=\"../images/TOR_-_FEMA454_1_335x279.jpg\" width=\"335\" /></p>\r\n<
!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>How torsional effects develop in a building (FEMA 454)</p>\r\n<p><img alt=\"TOR_FEMA454_2\" class=\"image-inline\" sr
c=\"../images/tor_fema454_2_363x228.jpg\" /></p>\r\n<p>Torsional effects can develop in buildings whose configuration is regular and symmetrical, however stiff structural components such as strairwells o
r elevator cores are offset with regards to the centre of mass. The photo shows a building in Vina del Mar that was severely damaged in the 1985 Llolleo, Chile earthquake, and the drawing shows its floor
 plan (FEMA 454)</p>\r\n<p><img alt=\"TOR_FEMA454_1\" class=\"image-inline\" src=\"../images/tor_fema454_1_452x250.jpg\" /></p>\r\n<p>Torsional effects develop in corner buildings or open front buildings
, such as shown on the drawing (FEMA 454)</p>\r\n<p><img alt=\"TOR_Canada_Brzev_1\" class=\"image-inline\" height=\"219\" src=\"../images/tor_canada_brzev_1_374x219.jpg\" width=\"374\" /></p>\r\n<p>An op
en front building (fire station), Vancouver, Canada (S. Brzev)</p>\r\n<p><img alt=\"TOR_USA_NISEE_1\" class=\"image-left\" height=\"213\" src=\"../images/tor_usa_nisee_1_317x213.jpg\" width=\"317\" /><im
g alt=\"TOR_USA_NRC_1\" class=\"image-inline\" height=\"223\" src=\"../images/tor_usa_nisee_1-1_248x223.jpg\" width=\"248\" /></p>\r\n<p>Collapse of the J.C. Penney building in the 1964 Anchorage, USA ea
rthquake was attributed to torsional effects. Shear walls existed mostly along south and west facade. There were no shear walls in the north facade, which was covered by precast concrete panels, and ther
e was a partial shear wall in the east facade. Torsional effects caused collapse of the east wall, and progressive collapse in the south and west walls. The photo shows east facade of the building after 
the earthquake, and the drawing shows a building plan (Courtesy of the NISEE, University of California, Berkeley, and U.S. National Research Council)</p>\r\n<p><img alt=\"TOR_Pakistan_Tomazevic 1\" class
=\"image-inline\" height=\"301\" src=\"../images/tor_pakistan_tomazevic-1_526x301.jpg\" width=\"526\" /></p>\r\n<p>A reinforced concrete frame building under construction was damaged in the 2005 Kashmir 
earthquake in Pakistan (see Figure 1). Columns in upper storeys suffered severe damage and permanent displacements (Figure 3) due to a decrease in the stiffness at upper storeys; this was caused by concr
ete block infill walls at the ground floor level. The damage in the columns was aggravated by the presence of a rigid stairwell in one of the corners (see Figure 1) which collapsed (see Figure 3).  The s
tairwell caused torsional effects in the building due to eccentricity between the centre of mass and the centre of resistance (M. Tomazevic)</p>\r\n<p><img alt=\"TOR_New Zealand_Centeno_1\" class=\"image
-inline\" height=\"547\" src=\"../images/tor_new-zealand_centeno_1_547x547.jpg\" width=\"547\" /></p>\r\n<p>A reinforced concrete building was damaged in the 2011 Christchurch, New Zealand earthquake due
 to torsional effects. Lateral load resisting system consisted of reinforced concrete shear walls and elevator core along the east and north-west direction and reinforced concrete and masonry columns at 
the south, as shown on the plan. The damage was most pronounced in reinforced masonry  and reinforced concrete columns located at the southern facade of the building, as shown in the photo (J. Centeno)</
p>\r\n<p><img alt=\"TOR_Taiwan_NISEE_1\" class=\"image-inline\" height=\"233\" src=\"../images/tor_taiwan_nisee_1_155x233.jpg\" width=\"155\" /></p>\r\n<p>Building with an open  first storey along street
 corner and walls along other exterior faces collapsed in the 1999 Chi Chi, Taiwan earthquake. The building tilted due to collapse of first storey columns,  creating apparent torsional weakness (Courtesy
 of the NISEE, University of California, Berkeley, photo: J. Moehle)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:0
0','','','',1,121,'','',1,7955,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (359,357,'Slate [SPSL]','slate-spsl','<p>Slate is a very fine-grained metamorphic rock that easily splits into characteristic, thin slices, i.e. it is very cleavable
. Slate is characteristically grey or grey-blue (but can also be black, green, purple, red, or brown).  Because it is composed mainly of fine-grained mica flakes and quartz, it is intermediate in hardnes
s, but can still be scratched by metal.  It has a dull luster and strong cleavage.  Its nonabsorbent properties and durability make it a popular material for roof tiles and paving slabs, and in some case
s it is used for wall construction.</p>\r\n<p><img alt=\"SPSL_Chile_Brzev_2\" class=\"image-left\" src=\"../images/spsl_chile_brzev_2_400x312.jpg\" /></p>\r\n<p><img alt=\"SPSL_Chile_BrzevS_1\" class=\"i
mage-inline\" height=\"279\" src=\"../images/spsl_chile_brzevs_1_292x279.jpg\" width=\"292\" /></p>\r\n<p>Slate stone used for wall construction in coastal areas of Chile (S. Brzev)</p>\r\n<p><img alt=\"
SPSL_Pakistan_SHLodi_1\" class=\"image-left\" height=\"214\" src=\"../images/spsl_pakistan_shlodi_1_298x214.jpg\" width=\"298\" /></p>\r\n<p><img alt=\"SPSL_Pakistan_SHLodi_2\" class=\"image-inline\" hei
ght=\"223\" src=\"../images/spsl_pakistan_shlodi_2_296x223.jpg\" width=\"296\" /></p>\r\n<p>Slate stone used for wall construction, Pakistan (S.H.Lodi)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-
00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,134,'','',1,1158,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (360,358,'20-49 Units [RES2E]','20-49-units-res2e','<p><span>Apartments, condominiums, townhouses of 20-49 units. Residential units are structurally connected.</span
></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,135,'','',1,1120,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (361,359,'Concrete, composite with steel section [SRC]','concrete-composite-with-steel-sections-src','<p><a name=\"taxonomy:SRC\"></a></p>\r\n<p>Members of the later
al load-resisting system consist of large metal or steel sections filled with or encased in <a class=\"internal-link\" href=\"concrete\">concrete</a> to increase their strength rather than for fire-prote
ction only.</p>\r\n<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p>Sometimes this composite structural material or steel reinforced concrete (SRC) is used in co
njunction with other materials like reinforced concrete or steel construction. For example, a SRC frame might be constructed above or below some reinforced concrete frame stories, or a building might con
tain both SRC and reinforced concrete or steel frames. In these situations one has to assess whether the SRC frames or members will define the seismic performance of the overall structure. If that is not
 the case then the other structural material should be selected.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','
','','',1,136,'','',1,1331,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (362,360,'Square, solid [PLFSQ]','square-solid-plfsq','<p><a name=\"taxonomy:PLFSQ\"></a></p>\r\n<p>The shape of the building plan is approximately square, with only
 minor variations from a square shape. Its sides are approximately equal in length.</p>\r\n<p><img alt=\"PLFSQ_Vancouver_Canada_Googleearth_1\" class=\"image-inline\" height=\"308\" src=\"../images/plfsq
_vancouver_canada_googleearth_1_508x308.jpg\" width=\"508\" /></p>\r\n<p>A building with square plan shape, Vancouver, Canada (Map data ©2013   Google, Province of British Columbia, DigitalGlobe, IMTCAN)
</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,137,'','',1,1048,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (363,361,'Masonry roof, unknown [RM99]','masonry-unknown-rm99','<p><a name=\"taxonomy:RM99\"></a></p>\r\n<p>It is clear that the roof structure is made from masonry,
 but the type of masonry system is unknown. The system may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',
'0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,138,'','',1,820,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (364,362,'Floor','floor','<p>This table only applies to intermediate floors above ground level that have a diaphragm action under lateral loads. The structure of gro
und floors is not included in this table. In the case of single storey buildings, this section should be left blank.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:
00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,139,'','',1,1062,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (365,363,'Metal or asbestos sheets [RMT6]','metal-or-asbestos-sheets-rmt6','<p><a name=\"taxonomy:RMT6\"></a></p>\r\n<p>Sheet metal roofing, usually corrugated sheet
s or tray type. Typical metals include copper, lead, iron-zinc, corrugated galvanized iron (CGI), aluminum, and steel. This also includes asbestos sheets. Does not include metal roofing tiles.</p>\r\n<p>
<img alt=\"RMT6_New Zealand_Charleson_1\" class=\"image-inline\" src=\"../images/rmt6_new-zealand_charleson_1_400x209.jpg\" /></p>\r\n<p>Asbestos sheet roof covering, New Zealand (A. Charleson)</p>\r\n<p
><img alt=\"RMT6_Canada_BrzevS_1\" class=\"image-inline\" height=\"306\" src=\"../images/rmt6_canada_brzevs_1_345x306.jpg\" width=\"345\" /></p>\r\n<p>Metal sheet roofing, Canada (S. Brzev)</p>\r\n<p><im
g alt=\"RMT6_Canada_Brzev_1\" class=\"image-inline\" height=\"183\" src=\"../images/rmt6_canada_brzev_1_363x183.jpg\" width=\"363\" /></p>\r\n<p>Steel decking joined by welds at regular spacing, Canada (
S. Brzev)</p>\r\n<p><img alt=\"RMT6_USA_BrzevS_1\" class=\"image-inline\" height=\"319\" src=\"../images/rmt6_usa_brzevs_1_298x319.jpg\" width=\"298\" /></p>\r\n<p>Metal roofing, Experience Music Project
, Seattle, USA (S. Brzev)</p>\r\n<p><img alt=\"RMT6_New Zealand_ClarkW_1\" class=\"image-inline\" height=\"294\" src=\"../images/rmt6_new-zealand_clarkw_1_401x294.jpg\" width=\"401\" /></p>\r\n<p>Metal s
heet roof covering, New Zealand (W. Clark)</p>\r\n<p><img alt=\"RMT6_India_Rai_1\" class=\"image-inline\" src=\"../images/rmt6_india_rai_1_400x294.jpg\" /></p>\r\n<p>Corrugated galvanized iron (CGI) roof
ing, India (D. Rai)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,140,'','',1,2169,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (366,364,'Inflatable or tensile membrane roof [RFA1]','inflatable-or-tensile-membrane-roof-rfa1','<p>An inflatable roof uses fabric chambers pressurised with air to 
form a self-supporting structure.<br /><br />A tensile membrane roof is made of stretched fabric, usually stretched in two directions to form a tensioned surface. Examples of tension membranes include po
lyester coated with PVC and glass fibre coated with Teflon.</p>\r\n<p><img alt=\"RFA1_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rfa1_canada_brzev_1_400x353.jpg\" /></p>\r\n<p>BC Place Stadi
um in Vancouver, Canada has a tensile membrane roof; the roof is covered by a semi-transparent plastic material (ETFE) (S. Brzev)</p>\r\n<p><img alt=\"RFA1_Canada_Brzev_2\" class=\"image-inline\" src=\".
./images/rfa1_canada_brzev_2_400x353.jpg\" /></p>\r\n<p>Canada Place in Vancouver, Canada, a tent-like structure that resembles a sailing ship, has a tensile membrane roof (S. Brzev)</p>\r\n','',1,8,'000
0-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,141,'','',1,1255,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (367,365,'Regular structure [IRRE]','regular-structure-irre','<p><a name=\"taxonomy:IRRE\"></a></p>\r\n<p>None of the structural irregularities listed in the table, 
and no other significant structural irregularities have been observed.</p>\r\n \r\n<p><img alt=\"An example of a regular structure, Chile (S. Brzev)\" class=\"image-inline\" src=\"../images/IRIR_Chile_Br
zev_1_400x194.jpg\" /></p>\r\n<p>An example of a regular structure, Chile (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','00
00-00-00 00:00:00','','','',1,142,'','',1,2019,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (368,366,'Building position within a block','building-position-within-a-block','<p><a name=\"taxonomyTag:building-position-within-a-block\"></a></p>\r\n<p>The positi
on of a building in relation to other neighbouring buildings, in terms of the number of adjoining buildings and their location relative to the building under consideration. Adjoining is defined in this t
able as spaced apart a distance less than 4% of the height of the lower building.</p>\r\n<p><img alt=\"buildingpositionwithinablock_diagram_-_1\" class=\"image-inline\" src=\"../images/buildingpositionwi
thinablock_diagram_-_1_400x208.jpg\" /></p>\r\n<p>If <i>x</i> is less than 4% of <i>h</i>, the buildings are considered to be adjacent.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',
0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,133,'','',1,1444,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (369,367,'Short column [SHC]','short-column-shc','<p style=\"text-align: left; \">A column of short length that will fail in shear rather than bend under lateral def
ormation when the column is overloaded during an earthquake. Includes captive columns, where wall elements (usually non-structural walls that are part of the enclosure system) effectively shorten some co
lumns to less than the floor to beam height.</p>\r\n<p style=\"text-align: left; \">As a rule of thumb, a building has short columns if there are captive columns where the capturing non-structural walls 
reduce the height of unsupported length of the column by at least half, or where the capturing non-structural walls reduce the aspect ratio (height to depth ratio, where the depth of the column is measur
ed parallel to the wall) of the column to less than 2:1.</p>\r\n<p><img alt=\"SHC_diagram_Charleson_1\" class=\"image-inline\" src=\"../images/shc_diagram_charleson_1_400x240.jpg\" /></p>\r\n<p>Examples 
of short columns (A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p148 fig. 9.8).</p>\r\n<p><img alt=\"SHC_diagram_Charleson_2\" class=\"image-inline\" src=\"../images/shc_d
iagram_charleson_2_400x240.jpg\" /></p>\r\n<p>Example of short columns caused by part-height masonry infill (A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p150 fig. 9.14).
</p>\r\n<p style=\"text-align: left; \"><img alt=\"Short Column 1.JPG\" class=\"image-inline\" src=\"../images/SHC_NewZealand_Charleson_1_400x240.jpg\" /></p>\r\n<p style=\"text-align: left; \">Short Col
umn in reinforced concrete construction, New Zealand (A. Charleson)</p>\r\n<p style=\"text-align: left; \"><img alt=\"Captive columns in a reinforced concrete building damaged in the 2003 Boumerdes, Alge
ria earthquake (M. Farsi)\" class=\"image-inline\" src=\"../images/SHC_Algeria_Farsi_1_400x240.jpg\" /></p>\r\n<p>Captive columns in a reinforced concrete building damaged in the 2003 Boumerdes, Algeria 
earthquake (M. Farsi)</p>\r\n<p><img alt=\"SHC_India_NICEE_1\" class=\"image-inline\" height=\"312\" src=\"../images/shc_india_nicee_1_415x312.jpg\" width=\"415\" /></p>\r\n<p>A building with captive col
umns suffered damage in the 2001 Bhuj, India earthquake (NICEE and IIT Kanpur)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-
00 00:00:00','','','',1,132,'','',1,2841,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (370,368,'Exact height of ground floor level above grade [HFEX]','exact-height-of-ground-floor-level-above-grade-hfex','<p>The exact height of the ground level above
 grade is clear from survey or drawings, and it does not vary more than 1m across the footprint of the building. The average height is defined to an accuracy of 0.1m.<br /><br />Units: metres<br /><br />
Example: HFEX:0.7  (height is exactly 0.7 m)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,131,'','',
1,854,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (371,369,'Steel-reinforced [RS]','steel-reinforced-rs','<p>Steel reinforcing bars can be used within the build-up of a concrete masonry wall, within cavities that ar
e then filled with poured concrete. Alternatively, steel welded wire mesh overlaid with cement plaster can be attached to interior or exterior wall surfaces with steel dowels.</p>\r\n<p><img alt=\"Concre
te block masonry construction with steel reinforcement, Canada (B. McEwen)\" class=\"image-inline\" src=\"../images/RS_Canada_McEwan_1_400x376.jpg\" /></p>\r\n<p>Concrete block masonry construction with 
steel reinforcement, Canada (B. McEwen)</p>\r\n<p><img alt=\"RS_Peru_N. Tarque_1\" class=\"image-inline\" src=\"../images/rcm_peru_n.-tarque_4_400x376.jpg\" /></p>\r\n<p>An adobe building reinforced exte
rnally with steel wire mesh overlaid with cement plaster, Peru (N. Tarque)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 0
0:00:00','','','',1,122,'','',1,1547,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (372,370,'Other occupancy type [OCO]','other-occupancy-type-oco','<p>Use that is known, but is not adequately described by any of the uses listed in this table.</p>\
r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,123,'','',1,974,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (373,371,'Steel, unknown [S99]','steel-unknown-s99','<p>It is clear that the structural material is steel, but the type of steel construction is unknown. The steel s
tructure may be hidden, or information about it is unavailable.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',''
,'','',1,124,'','',1,932,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (374,372,'Mostly industrial and residential [MIX6]','mostly-industrial-and-residential-mix6','<p><a name=\"taxonomy:MIX6\"></a></p>\r\n<p>The building is mixed use, 
a mixture of industrial and residential. The majority of the floor area is for industrial use.</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:
00:00','0000-00-00 00:00:00','','','',1,125,'','',1,834,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (375,373,'Unknown earth technology [ET99]','unknown-earth-technology-et99','<p>It is clear that the structural material is earth construction, but the type of constr
uction is unknown. The structural material may be hidden, such as in the case of a plastered earth wall, or information about it is unavailable.</p>\r\n<p><img alt=\"ET99_India_Rawal_1\" class=\"image-in
line\" height=\"248\" src=\"../images/et99_india_rawal_1_330x248.jpg\" width=\"330\" /></p>\r\n<p>It is difficult to identify type of earthen construction when the walls are covered with plaster, like in
 this example of <a class=\"internal-link\" href=\"cob-or-wet-construction-etc\">cob</a> construction in India (People in Centre)</p>\r\n<p><img alt=\"ET99_Chile_Brzev_1\" class=\"image-left\" height=\"2
76\" src=\"../images/et99_chile_brzev_1_437x276.jpg\" width=\"437\" /></p>\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>Older low-rise masonry buildings in Chile are of adobe construction
 (see the exposed portion of the wall); adobe is NOT considered to be an earthen construction (it is a masonry construction technology) (S. Brzev)</p>\r\n<p><img alt=\"ET99_Peru_Brzev_1\" class=\"image-i
nline\" height=\"240\" src=\"../images/et99_peru_brzev_1_265x240.jpg\" width=\"265\" /></p>\r\n<p>Many buildings in Peru are of adobe construction; adobe is NOT considered as earthen construction (it is 
a masonry construction technology) (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,126,'',''
,1,1053,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (376,374,'Vertical structural irregularity - primary [IRVP]','vertical-structural-irregularity-primary-irvp','<p>A structural irregularity that is observed in the el
evation or section of the building (vertical plane). If more than one vertical irregularity is observed, the primary vertical irregularity is that deemed to be the most significant in terms of affecting 
the building’s seismic performance, and the secondary vertical irregularity is that deemed to be the next most significant.</p>\r\n<p><img alt=\"CHV_USA_Brzev_3\" class=\"image-inline\" src=\"../images/C
hange in Vertical Structure 3.JPG_400x265.jpg\" /></p>\r\n<p>Example of a reinforced concrete building with a vertical irregularity, USA (S. Brzev)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-0
0 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,127,'','',1,2004,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (377,375,'Cast-in-place beamless reinforced concrete roof [RC1]','cast-in-place-beamless-reinforced-concrete-roof-rc1','<p>Reinforced concrete slabs are supported by
 columns or load-bearing  walls. Flat slabs are supported by columns with capitals and/or drop  panels, while flat plates are supported by columns without capitals.  This floor system also includes waffl
e slabs without beams. Slabs or  plates can be post-tensioned. They are sometimes overlaid with lightweight roofing.</p>\r\n<p><img alt=\"RC1_Canada_Brzev_1\" class=\"image-inline\" src=\"../images/rc1_c
anada_brzev_1_400x328.jpg\" /></p>\r\n<p>Reinforced concrete waffle slab, Canada (S. Brzev)</p>\r\n<p><img alt=\"RC1_USA_Brzev_1\" class=\"image-inline\" src=\"../images/rc1_usa_brzev_1_400x328.jpg\" /><
/p>\r\n<p>Reinforced concrete flat plate supported by columns, USA (S. Brzev)</p>\r\n<p><img alt=\"Reinforced concrete roof slab, Pakistan (J. Bothara)\" class=\"image-inline\" src=\"../images/RC1_Pakist
an_Bothara_1_400x328.jpg\" /></p>\r\n<p>Reinforced concrete roof slab supported by walls, Pakistan (J. Bothara)</p>\r\n<p><span class=\"contenttype-image\"><img alt=\"Reinforced concrete flat slab system
 with capitals, UK (S. Brzev)\" class=\"image-inline\" src=\"../images/FC1-RC1_UK_Brzev_1_400x328.jpg\" /></span></p>\r\n<p><span class=\"contenttype-image\">Reinforced concrete flat slab system with cap
itals, UK (S. Brzev)</span></p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,128,'','',1,2005,'',0,'',''
,'');
INSERT INTO `taxonomy_content` VALUES (378,376,'Floor-wall diaphragm connection not provided [FWCN]','floor-wall-diaphragm-connection-not-provided-fwcn','<p>There are no connections between the floor dia
phragm(s) and the walls that are capable of transferring in-plane forces from roof to wall and restraining outward displacements of walls.</p>\r\n<p><img alt=\"FWCN_FEMA 310 4-37\" class=\"image-inline\"
 height=\"306\" src=\"../images/fwcn_fema-310-4-37_305x306.jpg\" width=\"305\" /></p>\r\n<p>Inadequate wooden floor-to-wall connection (FEMA 310, 1998)</p>\r\n<p><img alt=\"FWCN_-_FEMA172_1\" class=\"ima
ge-inline\" height=\"339\" src=\"../images/fwcn_-_fema172_1_517x339.jpg\" width=\"517\" /></p>\r\n<p>Example of wall-to-floor connections of a wood diaphragm, that may be inadequate (adapted from FEMA 17
2, 1992)</p>\r\n<p><img alt=\"FWCN_-_FEMA172_2\" class=\"image-inline\" height=\"383\" src=\"../images/fwcn_-_fema172_2_517x383.jpg\" width=\"517\" /></p>\r\n<p>Example of connections of a composite conc
rete slab and steel deck diaphragm to a concrete or masonry wall, that may be inadequate (adapted from FEMA 172, 1992)</p>\r\n<p><img alt=\"FWCN_Allen&amp;Brzev_1\" class=\"image-inline\" src=\"../images
/fwcn_allen-brzev_1_400x383.jpg\" /></p>\r\n<p>Cast-in-place reinforced concrete floor supported by concrete wall. The  connection may not be adequate if construction joints are not able to  transfer lat
eral loads across the interface.</p>\r\n<p><img alt=\"FWCN_Canada_AdamsJ_1\" class=\"image-left\" height=\"238\" src=\"../images/fwcn_canada_adamsj_1_318x238.jpg\" width=\"318\" /><img alt=\"FWCN_Canada_
AdamsJ_2\" class=\"image-inline\" height=\"225\" src=\"../images/fwcn_canada_adamsj_2_300x225.jpg\" width=\"300\" /></p>\r\n \r\n<p>Floor-wall diaphragm connections between steel trusses (known as Open W
eb Steel Joists in North America) and masonry walls may be inadequate if support provided by the wall is not adequately designed and/or constructed (J. Adams)</p>\r\n<p><img alt=\"FWCN_Canada_AdamsJ_3\" 
class=\"image-inline\" height=\"301\" src=\"../images/fwcn_canada_adamsj_3_354x301.jpg\" width=\"354\" /></p>\r\n<p>Support for hollow concrete slabs provided by masonry walls may be inadequate (J. Adams
)</p>\r\n<p><img alt=\"FWCN_China_Dai_1\" class=\"image-inline\" height=\"222\" src=\"../images/fwcn_china_dai_1_295x222.jpg\" width=\"295\" /></p>\r\n<p>Inadequate support for precast concrete hollow fl
oor slabs provided by supporting beams contributed to building collapse in the 2008 Wenchuan, China earthquake (J. Dai)</p>\r\n<p><img alt=\"FWCN_New Zealand_Elwood_1\" class=\"image-inline\" src=\"../im
ages/fwcn_new-zealand_elwood_1_400x222.jpg\" /></p>\r\n<p>Out-of-plane wall collapse was reported in some unreinforced masonry buildings due to the 2011 Christchurch, New Zealand earthquake; the building
 shown on the photo had inadequate floor-wall connections (K. Elwood)</p>\r\n','',1,8,'0000-00-00 00:00:00',536,'','0000-00-00 00:00:00',0,536,'2020-03-03 16:02:17','0000-00-00 00:00:00','0000-00-00 00:0
0:00','','','',1,129,'','',1,2510,'',0,'','','');
INSERT INTO `taxonomy_content` VALUES (379,79,'Infilled Frame','infilled-frame','<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be me
chanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performan
ce of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or com
pletely fill the frame.</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_-_charleson_1_400x281.jpg\" alt=\"LFINF_-_Charleson_1\" /></p>\r\n<p>A simplified drawing of an infilled frame structur
e showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</p>\r\n<p><img class=\"image-inline\" src=\"../image
s/lfinf_1_369x278.jpg\" alt=\"LFINF_Allen&amp;Brzev_1\" width=\"369\" height=\"278\" /></p>\r\n<p>Partial section of an infilled frame structure</p>\r\n<p><img class=\"image-inline\" style=\"float: left;
\" src=\"../images/LFINF_India_Charleson_1_368x277.jpg\" alt=\"Infilled Frame 1.JPG\" width=\"368\" height=\"277\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r
\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<
p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Reinforced co
ncrete frame with brick masonry infill walls, India (A. Charleson)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"../images/lfinf_india_brzev_1_400x277.jpg\" alt=\"LFINF_India_Br
zev_1\" /></p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\
" src=\"../images/lfinf_indonesia_bothara_1_358x269.jpg\" alt=\"LFINF_Indonesia_Bothara_1\" width=\"358\" height=\"269\" /></p>\r\n<p>Reinforced concrete frame building with concrete block infill walls, 
Padang, Indonesia (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_nepal_bothara_1_368x256.jpg\" alt=\"LFINF_Nepal_Bothara_1\" width=\"368\" height=\"256\" /></p>\r\n<p>Reinforced
 concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_algeria_farsi_1_378x265.jpg\" alt=\"LFINF_Al
geria_Farsi_1\" width=\"378\" height=\"265\" /></p>\r\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img class=\"
image-inline\" src=\"../images/lfinf_algeria_brzev_1_353x265.jpg\" alt=\"LFINF_Algeria_Brzev_1\" width=\"353\" height=\"265\" /></p>\r\n<p>This reinforced concrete frame building with hollow clay tile in
fills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev)</p>\r\n<p><img class=\"image-inline\" src=\"../i
mages/lfinf_uganda_lemkuhl_1_329x246.jpg\" alt=\"LFINF_Uganda_Lemkuhl_1\" width=\"329\" height=\"246\" /></p>\r\n<p>Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl)<
/p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_tangier_morocco_scawthorn_1_382x323.jpg\" alt=\"LFINF_Tangier_Morocco_Scawthorn_1\" /></p>\r\n<p>Reinforced concrete frame with masonry infills
, Tangier, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\" alt=\"LFINF_Rabbat_Morocco_Scawthorn_2\" width=\"286\" height=\"232\
" /></p>\r\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_vietnam_scawthorn_1_265x353.j
pg\" alt=\"LFINF_Vietnam_Scawthorn_1\" width=\"265\" height=\"353\" /></p>\r\n<p>Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn)</p>','',1,8,'0000-00-00 00:00:00
',536,'','2017-02-27 13:15:05',536,0,'0000-00-00 00:00:00','2017-02-27 12:52:22','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block
_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_
create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\
":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\
"show_urls_images_frontend\":\"\"}',4,130,'','',1,8681,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (381,69,'About','about','<p>It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture th
e best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk..<br /><br /> GEM Nexus is an action-oriented platform where collaborators of t
he Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for f
eedback and discussion with a wider community of experts and stakeholders.<br /><br /> To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodat
es your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowle
dge.<br /><br /></p>\r\n<p>Principles of the GEM Nexus Community<br /> Principle #1: Share<br /> In order to have a lasting impact on seismic risk assessment and to create tools and models that are appli
cable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you 
can if you are part of a (global) group, and share your knowledge and opinions wherever applicable.<br /><br /> Principle #2: Respect<br /> The work that the various groups share is meant to trigger disc
ussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don’t place it out of context.<br /><br />
 Principle #3: Collaborative<br /> Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration ov
er competition, and create an atmosphere for building on one another\'s ideas.<br /><br /> Principle #4: Always in Beta<br /> Contribute for continuous improvement and iteration. That goes for the commun
ity, Nexus and GEM in general. To this end, submit your suggestions.<br /><br /></p>','',1,9,'2016-10-24 08:11:58',536,'','2016-10-25 14:00:50',536,0,'0000-00-00 00:00:00','2016-10-24 08:11:58','0000-00-
00 00:00:00','{}','{}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category
\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_na
vigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"art
icle_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',1,3465,'{\"robots\":\"\",\"author\":\"\"
,\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (382,72,'Term of use','term-of-use','<p>Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by th
e following terms and conditions of use, which together with our <a href=\"https://www.globalquakemodel.org/terms-of-use\" target=\"_blank\">privacy policy </a>govern the GEM Foundation’s relationship wi
th you in relation to this website.</p>\r\n<p>GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing sei
smic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our <a href=\"https://www.globalquakemodel.org/terms-of-use\" targe
t=\"_blank\">licensing policy</a></p>\r\n<p><br /><br />Furthermore we note that:</p>\r\n<p>- All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are ac
knowledged on the website.</p>\r\n<p>- Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</p>\r\n<p>- Your use of this website and any dispute arising out
 of such use of the website is subject to the laws of Italy.</p>\r\n<p> </p>\r\n<h3><b>Disclaimer</b></h3>\r\n<p>The  contents of this website are created by the users of GEM Nexus and reflect their pers
onal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the complete
ness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you
 place on such information is therefore at your own risk.</p>\r\n<p>In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any los
s or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.</p>\r\n<p>Through this website you are able to link to other websites which are
 not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endors
e the views expressed within them.</p>\r\n<p>Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the web
site being temporarily unavailable due to technical issues beyond our control.</p>','',1,10,'2016-10-25 14:03:20',536,'','2016-11-14 11:14:46',536,0,'0000-00-00 00:00:00','2016-10-25 14:03:20','0000-00-0
0 00:00:00','{}','{}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\
":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_nav
igation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"arti
cle_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,'','',1,2520,'{\"robots\":\"\",\"author\":\"\",
\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (387,78,'new terminology for gem taxonomy','new-terminology-for-gem-taxonomy','<p>new terminology for gem taxonomy</p>\r\n<p> </p>\r\n<p><img src=\"../images/terms/P
enguins.jpg\" alt=\"\" /></p>','',1,8,'2016-12-02 09:15:04',538,'','2016-12-02 09:15:04',0,0,'0000-00-00 00:00:00','2016-12-02 09:15:04','0000-00-00 00:00:00','{}','{}','{}',1,1,'','',1,957,'{}',0,'*',''
,'');
INSERT INTO `taxonomy_content` VALUES (388,80,'Infilled Frame','infilled-frame','<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be me
chanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performan
ce of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or com
pletely fill the frame.</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_-_charleson_1_400x281.jpg\" alt=\"LFINF_-_Charleson_1\" /></p>\r\n<p>A simplified drawing of an infilled frame structur
e showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</p>\r\n<p><img class=\"image-inline\" src=\"../image
s/lfinf_1_369x278.jpg\" alt=\"LFINF_Allen&amp;Brzev_1\" width=\"369\" height=\"278\" /></p>\r\n<p>Partial section of an infilled frame structure</p>\r\n<p><img class=\"image-inline\" style=\"float: left;
\" src=\"../images/LFINF_India_Charleson_1_368x277.jpg\" alt=\"Infilled Frame 1.JPG\" width=\"368\" height=\"277\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r
\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<
p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Reinforced co
ncrete frame with brick masonry infill walls, India (A. Charleson)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"../images/lfinf_india_brzev_1_400x277.jpg\" alt=\"LFINF_India_Br
zev_1\" /></p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\
" src=\"../images/lfinf_indonesia_bothara_1_358x269.jpg\" alt=\"LFINF_Indonesia_Bothara_1\" width=\"358\" height=\"269\" /></p>\r\n<p>Reinforced concrete frame building with concrete block infill walls, 
Padang, Indonesia (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_nepal_bothara_1_368x256.jpg\" alt=\"LFINF_Nepal_Bothara_1\" width=\"368\" height=\"256\" /></p>\r\n<p>Reinforced
 concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_algeria_farsi_1_378x265.jpg\" alt=\"LFINF_Al
geria_Farsi_1\" width=\"378\" height=\"265\" /></p>\r\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img class=\"
image-inline\" src=\"../images/lfinf_algeria_brzev_1_353x265.jpg\" alt=\"LFINF_Algeria_Brzev_1\" width=\"353\" height=\"265\" /></p>\r\n<p>This reinforced concrete frame building with hollow clay tile in
fills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev)</p>\r\n<p><img class=\"image-inline\" src=\"../i
mages/lfinf_uganda_lemkuhl_1_329x246.jpg\" alt=\"LFINF_Uganda_Lemkuhl_1\" width=\"329\" height=\"246\" /></p>\r\n<p>Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl)<
/p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_tangier_morocco_scawthorn_1_382x323.jpg\" alt=\"LFINF_Tangier_Morocco_Scawthorn_1\" /></p>\r\n<p>Reinforced concrete frame with masonry infills
, Tangier, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\" alt=\"LFINF_Rabbat_Morocco_Scawthorn_2\" width=\"286\" height=\"232\
" /></p>\r\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"../images/lfinf_vietnam_scawthorn_1_265x353.j
pg\" alt=\"LFINF_Vietnam_Scawthorn_1\" width=\"265\" height=\"353\" /></p>\r\n<p>Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn)</p>','',0,2,'2017-02-27 12:58:43
',536,'','2017-02-27 13:00:37',536,0,'0000-00-00 00:00:00','2017-02-27 12:58:43','0000-00-00 00:00:00','{}','{}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_b
lock_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"s
how_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_h
its\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"
\",\"show_urls_images_frontend\":\"\"}',2,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (389,81,'example example','example-example','<p><img src=\"../images/Screenshot-from-2017-02-02-17-27-45.png\" alt=\"\" width=\"505\" height=\"663\" /></p>','',1,8,'
2017-02-27 13:08:15',536,'','2017-02-27 13:08:56',536,0,'0000-00-00 00:00:00','2017-02-27 13:08:15','0000-00-00 00:00:00','{}','{}','{}',2,0,'','',1,909,'{}',0,'*','','');
INSERT INTO `taxonomy_content` VALUES (390,85,'Bis Unknown earth technology [ET99]','bis-unknown-earth-technology-et99','<p>rororo</p>','',-2,2,'2020-03-04 10:11:45',536,'','2020-03-04 10:11:52',536,0,'0
000-00-00 00:00:00','2020-03-04 10:11:45','0000-00-00 00:00:00','{}','{}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\"
:\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_autho
r\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\
"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_ima
ges_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','','');
/*!40000 ALTER TABLE `taxonomy_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `taxonomy_content_frontpage`
--

DROP TABLE IF EXISTS `taxonomy_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_content_frontpage`
--

LOCK TABLES `taxonomy_content_frontpage` WRITE;
/*!40000 ALTER TABLE `taxonomy_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_content_rating`
--

DROP TABLE IF EXISTS `taxonomy_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_content_rating`
--

LOCK TABLES `taxonomy_content_rating` WRITE;
/*!40000 ALTER TABLE `taxonomy_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_content_types`
--

DROP TABLE IF EXISTS `taxonomy_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_content_types`
--

LOCK TABLES `taxonomy_content_types` WRITE;
/*!40000 ALTER TABLE `taxonomy_content_types` DISABLE KEYS */;
INSERT INTO `taxonomy_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `taxonomy_content_types` VALUES (2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `taxonomy_content_types` VALUES (3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `taxonomy_content_types` VALUES (4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','','');
INSERT INTO `taxonomy_content_types` VALUES (5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `taxonomy_content_types` VALUES (10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `taxonomy_content_types` VALUES (12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `taxonomy_content_types` VALUES (13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `taxonomy_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_contentitem_tag_map`
--

DROP TABLE IF EXISTS `taxonomy_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_contentitem_tag_map`
--

LOCK TABLES `taxonomy_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `taxonomy_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_extensions`
--

DROP TABLE IF EXISTS `taxonomy_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_extensions`
--

LOCK TABLES `taxonomy_extensions` WRITE;
/*!40000 ALTER TABLE `taxonomy_extensions` DISABLE KEYS */;
INSERT INTO `taxonomy_extensions` VALUES (1,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (2,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (3,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (4,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (5,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (6,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (7,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (8,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (9,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (10,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (11,0,'com_login','component','com_login',NULL,'',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (12,0,'com_media','component','com_media',NULL,'',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (13,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (14,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (15,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (16,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (17,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (18,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (19,0,'com_content','component','com_content',NULL,'',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (20,0,'com_config','component','com_config',NULL,'',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (21,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (22,0,'com_users','component','com_users',NULL,'',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (23,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (24,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (25,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (26,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (27,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (28,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (29,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (30,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (31,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (32,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (33,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (34,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (35,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (36,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (37,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (38,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (39,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (40,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (41,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (42,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (43,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (44,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (45,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (46,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (47,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (48,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (49,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (50,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (51,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (52,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (53,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (54,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (55,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (56,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (57,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (58,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (59,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (60,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (61,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (62,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (63,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (64,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (65,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (66,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (67,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (68,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (69,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (70,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (71,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (72,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (73,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (74,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (75,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (76,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (77,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (78,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (79,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (80,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (81,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (82,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (83,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (84,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (85,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (86,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (87,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (88,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (89,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (90,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (91,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"taggable\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (92,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"versionable\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (93,0,'plg_captcha_recaptcha','plugin','recaptcha',NULL,'captcha',0,0,1,0,1,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (94,0,'plg_captcha_recaptcha_invisible','plugin','recaptcha_invisible',NULL,'captcha',0,0,1,0,1,'{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"2017-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (95,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (96,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (97,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (98,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (99,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (100,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (101,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (102,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (103,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (104,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (105,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (106,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (107,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (108,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (109,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (110,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (111,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (112,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (113,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.6\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (114,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (115,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (116,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (117,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (118,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (119,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (120,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (121,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (122,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"JComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (123,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (124,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (125,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (126,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (127,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (128,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (129,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (130,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (131,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"JComponentHelper::filterText\"}','',NULL,NULL,13,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (132,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (133,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (134,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (135,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (136,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (137,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (138,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (139,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (140,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (141,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (142,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (143,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (144,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (145,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (146,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (147,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (148,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (149,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (150,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (151,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (152,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (153,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (154,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (155,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (156,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (157,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (158,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (159,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (160,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (161,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (162,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (163,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (164,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (165,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (166,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (167,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (168,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (169,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (170,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (171,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (172,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (173,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (174,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (175,0,'plg_system_logrotation','plugin','logrotation',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}','{\"lastrun\":1678356125}','',NULL,NULL,13,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (176,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (177,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (178,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (179,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (180,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','',NULL,NULL,18,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (181,0,'plg_system_sessiongc','plugin','sessiongc',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2018-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}','','',NULL,NULL,19,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (182,0,'plg_system_shortcut','plugin','shortcut',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (183,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"skipto\"}','{}','',NULL,NULL,20,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (184,0,'plg_system_stats','plugin','stats',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','','',NULL,NULL,21,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (185,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (186,0,'plg_system_updatenotification','plugin','updatenotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2015-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1678356125}','',NULL,NULL,23,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (187,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,24,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (188,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (189,0,'plg_task_demo_tasks','plugin','demotasks',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"demotasks\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (190,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"requests\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (191,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (192,0,'plg_multifactorauth_totp','plugin','totp',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (193,0,'plg_multifactorauth_yubikey','plugin','yubikey',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (194,0,'plg_multifactorauth_webauthn','plugin','webauthn',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (195,0,'plg_multifactorauth_email','plugin','email',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (196,0,'plg_multifactorauth_fixed','plugin','fixed',NULL,'multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (197,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (198,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (199,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (200,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (201,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (202,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (203,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (204,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (205,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (206,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (207,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (208,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (209,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (210,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (211,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (212,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (213,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (214,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (215,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (216,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (217,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (218,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (219,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (220,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (221,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (222,0,'atum','template','atum',NULL,'',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (223,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"logoFile\":\"\",\"fluidContainer\":\"0\",\"sidebarLeftWidth\":\"3\",\"sidebarRightWidth\":\"3\"}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (224,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (225,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.8.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (226,225,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.8\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (227,225,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.8\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (228,225,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.8\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `taxonomy_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_fields`
--

DROP TABLE IF EXISTS `taxonomy_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_fields`
--

LOCK TABLES `taxonomy_fields` WRITE;
/*!40000 ALTER TABLE `taxonomy_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_fields_categories`
--

DROP TABLE IF EXISTS `taxonomy_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_fields_categories`
--

LOCK TABLES `taxonomy_fields_categories` WRITE;
/*!40000 ALTER TABLE `taxonomy_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_fields_groups`
--

DROP TABLE IF EXISTS `taxonomy_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_fields_groups`
--

LOCK TABLES `taxonomy_fields_groups` WRITE;
/*!40000 ALTER TABLE `taxonomy_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_fields_values`
--

DROP TABLE IF EXISTS `taxonomy_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_fields_values`
--

LOCK TABLES `taxonomy_fields_values` WRITE;
/*!40000 ALTER TABLE `taxonomy_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_filters`
--

DROP TABLE IF EXISTS `taxonomy_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_filters`
--

LOCK TABLES `taxonomy_finder_filters` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_links`
--

DROP TABLE IF EXISTS `taxonomy_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_links`
--

LOCK TABLES `taxonomy_finder_links` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_links_terms`
--

DROP TABLE IF EXISTS `taxonomy_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_links_terms` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_links_terms`
--

LOCK TABLES `taxonomy_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_links_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_logging`
--

DROP TABLE IF EXISTS `taxonomy_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_logging`
--

LOCK TABLES `taxonomy_finder_logging` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_taxonomy`
--

DROP TABLE IF EXISTS `taxonomy_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_taxonomy`
--

LOCK TABLES `taxonomy_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_taxonomy` VALUES (1,0,0,1,0,'','ROOT','root',1,1,'*');
/*!40000 ALTER TABLE `taxonomy_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `taxonomy_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_taxonomy_map`
--

LOCK TABLES `taxonomy_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_terms`
--

DROP TABLE IF EXISTS `taxonomy_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_terms`
--

LOCK TABLES `taxonomy_finder_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_terms_common`
--

DROP TABLE IF EXISTS `taxonomy_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_terms_common`
--

LOCK TABLES `taxonomy_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_terms_common` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_terms_common` VALUES ('a','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('about','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('above','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('after','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('again','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('against','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('all','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('am','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('an','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('and','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('any','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('are','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('aren\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('as','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('at','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('be','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('because','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('been','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('before','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('being','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('below','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('between','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('both','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('but','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('by','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('can\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('cannot','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('could','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('couldn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('did','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('didn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('do','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('does','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('doesn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('doing','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('don\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('down','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('during','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('each','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('few','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('for','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('from','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('further','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('had','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('hadn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('has','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('hasn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('have','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('haven\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('having','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('he','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('he\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('he\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('he\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('her','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('here','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('here\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('hers','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('herself','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('him','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('himself','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('his','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('how','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('how\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('i','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('i\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('i\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('i\'m','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('i\'ve','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('if','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('in','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('into','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('is','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('isn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('it','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('it\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('its','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('itself','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('let\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('me','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('more','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('most','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('mustn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('my','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('myself','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('no','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('nor','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('not','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('of','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('off','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('on','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('once','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('only','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('or','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('other','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('ought','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('our','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('ours','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('ourselves','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('out','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('over','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('own','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('same','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('shan\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('she','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('she\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('she\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('she\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('should','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('shouldn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('so','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('some','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('such','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('than','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('that','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('that\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('the','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('their','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('theirs','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('them','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('themselves','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('then','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('there','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('there\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('these','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('they','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('they\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('they\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('they\'re','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('they\'ve','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('this','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('those','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('through','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('to','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('too','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('under','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('until','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('up','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('very','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('was','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('wasn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('we','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('we\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('we\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('we\'re','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('we\'ve','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('were','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('weren\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('what','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('what\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('when','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('when\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('where','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('where\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('which','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('while','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('who','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('who\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('whom','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('why','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('why\'s','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('with','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('won\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('would','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('wouldn\'t','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('you','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('you\'d','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('you\'ll','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('you\'re','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('you\'ve','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('your','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('yours','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('yourself','en',0);
INSERT INTO `taxonomy_finder_terms_common` VALUES ('yourselves','en',0);
/*!40000 ALTER TABLE `taxonomy_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_tokens`
--

DROP TABLE IF EXISTS `taxonomy_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_tokens`
--

LOCK TABLES `taxonomy_finder_tokens` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `taxonomy_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL DEFAULT '0',
  `total_weight` float unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_tokens_aggregate`
--

LOCK TABLES `taxonomy_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_finder_types`
--

DROP TABLE IF EXISTS `taxonomy_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_types`
--

LOCK TABLES `taxonomy_finder_types` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_history`
--

DROP TABLE IF EXISTS `taxonomy_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_history`
--

LOCK TABLES `taxonomy_history` WRITE;
/*!40000 ALTER TABLE `taxonomy_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_languages`
--

DROP TABLE IF EXISTS `taxonomy_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_languages`
--

LOCK TABLES `taxonomy_languages` WRITE;
/*!40000 ALTER TABLE `taxonomy_languages` DISABLE KEYS */;
INSERT INTO `taxonomy_languages` VALUES (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `taxonomy_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_mail_templates`
--

DROP TABLE IF EXISTS `taxonomy_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_mail_templates`
--

LOCK TABLES `taxonomy_mail_templates` WRITE;
/*!40000 ALTER TABLE `taxonomy_mail_templates` DISABLE KEYS */;
INSERT INTO `taxonomy_mail_templates` VALUES ('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_privacyconsent.request.reminder','plg_system_privacyconsent','','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_system_updatenotification.mail','plg_system_updatenotification','','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}');
INSERT INTO `taxonomy_mail_templates` VALUES ('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `taxonomy_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_menu`
--

DROP TABLE IF EXISTS `taxonomy_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_menu`
--

LOCK TABLES `taxonomy_menu` WRITE;
/*!40000 ALTER TABLE `taxonomy_menu` DISABLE KEYS */;
INSERT INTO `taxonomy_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,43,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,19,NULL,NULL,0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_menu_types`
--

DROP TABLE IF EXISTS `taxonomy_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_menu_types`
--

LOCK TABLES `taxonomy_menu_types` WRITE;
/*!40000 ALTER TABLE `taxonomy_menu_types` DISABLE KEYS */;
INSERT INTO `taxonomy_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0);
/*!40000 ALTER TABLE `taxonomy_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_messages`
--

DROP TABLE IF EXISTS `taxonomy_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_messages`
--

LOCK TABLES `taxonomy_messages` WRITE;
/*!40000 ALTER TABLE `taxonomy_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_messages_cfg`
--

DROP TABLE IF EXISTS `taxonomy_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_messages_cfg`
--

LOCK TABLES `taxonomy_messages_cfg` WRITE;
/*!40000 ALTER TABLE `taxonomy_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_modules`
--

DROP TABLE IF EXISTS `taxonomy_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_modules`
--

LOCK TABLES `taxonomy_modules` WRITE;
/*!40000 ALTER TABLE `taxonomy_modules` DISABLE KEYS */;
INSERT INTO `taxonomy_modules` VALUES (1,39,'Main Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `taxonomy_modules` VALUES (2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (3,41,'Popular Articles','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (16,50,'Login Form','','',7,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*');
INSERT INTO `taxonomy_modules` VALUES (17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `taxonomy_modules` VALUES (79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (87,55,'Sample Data','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (88,67,'Latest Actions','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (89,68,'Privacy Dashboard','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*');
INSERT INTO `taxonomy_modules` VALUES (103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
INSERT INTO `taxonomy_modules` VALUES (108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*');
/*!40000 ALTER TABLE `taxonomy_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_modules_menu`
--

DROP TABLE IF EXISTS `taxonomy_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_modules_menu`
--

LOCK TABLES `taxonomy_modules_menu` WRITE;
/*!40000 ALTER TABLE `taxonomy_modules_menu` DISABLE KEYS */;
INSERT INTO `taxonomy_modules_menu` VALUES (1,0);
INSERT INTO `taxonomy_modules_menu` VALUES (2,0);
INSERT INTO `taxonomy_modules_menu` VALUES (3,0);
INSERT INTO `taxonomy_modules_menu` VALUES (4,0);
INSERT INTO `taxonomy_modules_menu` VALUES (6,0);
INSERT INTO `taxonomy_modules_menu` VALUES (7,0);
INSERT INTO `taxonomy_modules_menu` VALUES (8,0);
INSERT INTO `taxonomy_modules_menu` VALUES (9,0);
INSERT INTO `taxonomy_modules_menu` VALUES (10,0);
INSERT INTO `taxonomy_modules_menu` VALUES (12,0);
INSERT INTO `taxonomy_modules_menu` VALUES (14,0);
INSERT INTO `taxonomy_modules_menu` VALUES (15,0);
INSERT INTO `taxonomy_modules_menu` VALUES (16,0);
INSERT INTO `taxonomy_modules_menu` VALUES (17,0);
INSERT INTO `taxonomy_modules_menu` VALUES (79,0);
INSERT INTO `taxonomy_modules_menu` VALUES (86,0);
INSERT INTO `taxonomy_modules_menu` VALUES (87,0);
INSERT INTO `taxonomy_modules_menu` VALUES (88,0);
INSERT INTO `taxonomy_modules_menu` VALUES (89,0);
INSERT INTO `taxonomy_modules_menu` VALUES (90,0);
INSERT INTO `taxonomy_modules_menu` VALUES (91,0);
INSERT INTO `taxonomy_modules_menu` VALUES (92,0);
INSERT INTO `taxonomy_modules_menu` VALUES (93,0);
INSERT INTO `taxonomy_modules_menu` VALUES (94,0);
INSERT INTO `taxonomy_modules_menu` VALUES (95,0);
INSERT INTO `taxonomy_modules_menu` VALUES (96,0);
INSERT INTO `taxonomy_modules_menu` VALUES (97,0);
INSERT INTO `taxonomy_modules_menu` VALUES (98,0);
INSERT INTO `taxonomy_modules_menu` VALUES (99,0);
INSERT INTO `taxonomy_modules_menu` VALUES (100,0);
INSERT INTO `taxonomy_modules_menu` VALUES (101,0);
INSERT INTO `taxonomy_modules_menu` VALUES (102,0);
INSERT INTO `taxonomy_modules_menu` VALUES (103,0);
INSERT INTO `taxonomy_modules_menu` VALUES (104,0);
INSERT INTO `taxonomy_modules_menu` VALUES (105,0);
INSERT INTO `taxonomy_modules_menu` VALUES (106,0);
INSERT INTO `taxonomy_modules_menu` VALUES (107,0);
INSERT INTO `taxonomy_modules_menu` VALUES (108,0);
/*!40000 ALTER TABLE `taxonomy_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_newsfeeds`
--

DROP TABLE IF EXISTS `taxonomy_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_newsfeeds`
--

LOCK TABLES `taxonomy_newsfeeds` WRITE;
/*!40000 ALTER TABLE `taxonomy_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_overrider`
--

DROP TABLE IF EXISTS `taxonomy_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_overrider`
--

LOCK TABLES `taxonomy_overrider` WRITE;
/*!40000 ALTER TABLE `taxonomy_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_postinstall_messages`
--

DROP TABLE IF EXISTS `taxonomy_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_postinstall_messages`
--

LOCK TABLES `taxonomy_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `taxonomy_postinstall_messages` DISABLE KEYS */;
INSERT INTO `taxonomy_postinstall_messages` VALUES (1,224,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
INSERT INTO `taxonomy_postinstall_messages` VALUES (2,224,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1);
INSERT INTO `taxonomy_postinstall_messages` VALUES (3,224,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1);
INSERT INTO `taxonomy_postinstall_messages` VALUES (4,224,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1);
INSERT INTO `taxonomy_postinstall_messages` VALUES (5,224,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1);
/*!40000 ALTER TABLE `taxonomy_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_privacy_consents`
--

DROP TABLE IF EXISTS `taxonomy_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_privacy_consents`
--

LOCK TABLES `taxonomy_privacy_consents` WRITE;
/*!40000 ALTER TABLE `taxonomy_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_privacy_requests`
--

DROP TABLE IF EXISTS `taxonomy_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_privacy_requests`
--

LOCK TABLES `taxonomy_privacy_requests` WRITE;
/*!40000 ALTER TABLE `taxonomy_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_redirect_links`
--

DROP TABLE IF EXISTS `taxonomy_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_redirect_links`
--

LOCK TABLES `taxonomy_redirect_links` WRITE;
/*!40000 ALTER TABLE `taxonomy_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_scheduler_tasks`
--

DROP TABLE IF EXISTS `taxonomy_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_scheduler_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_scheduler_tasks`
--

LOCK TABLES `taxonomy_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `taxonomy_scheduler_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_schemas`
--

DROP TABLE IF EXISTS `taxonomy_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_schemas`
--

LOCK TABLES `taxonomy_schemas` WRITE;
/*!40000 ALTER TABLE `taxonomy_schemas` DISABLE KEYS */;
INSERT INTO `taxonomy_schemas` VALUES (224,'4.2.7-2022-12-29');
/*!40000 ALTER TABLE `taxonomy_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_session`
--

DROP TABLE IF EXISTS `taxonomy_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_session`
--

LOCK TABLES `taxonomy_session` WRITE;
/*!40000 ALTER TABLE `taxonomy_session` DISABLE KEYS */;
INSERT INTO `taxonomy_session` VALUES (_binary '6b009eb1589f03aa02e99582eeb0ac1a',0,1,1678357805,'joomla|s:688:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjM7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjc4MzU2MTI1O3M6NDoibGFzdCI7aToxNjc4MzU2OTY3O3M6Mzoibm93IjtpOjE2NzgzNTc4MDU7fXM6NToidG9rZW4iO3M6MzI6IjM2NGNmNjQxYTIxMzI0YTI4YzRlYzljZTc4MDdlZWE5Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,'');
/*!40000 ALTER TABLE `taxonomy_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_tags`
--

DROP TABLE IF EXISTS `taxonomy_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_tags`
--

LOCK TABLES `taxonomy_tags` WRITE;
/*!40000 ALTER TABLE `taxonomy_tags` DISABLE KEYS */;
INSERT INTO `taxonomy_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',265,'2023-03-09 10:01:53','',265,'2023-03-09 10:01:53','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_template_overrides`
--

DROP TABLE IF EXISTS `taxonomy_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_template_overrides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_template_overrides`
--

LOCK TABLES `taxonomy_template_overrides` WRITE;
/*!40000 ALTER TABLE `taxonomy_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_template_styles`
--

DROP TABLE IF EXISTS `taxonomy_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_template_styles`
--

LOCK TABLES `taxonomy_template_styles` WRITE;
/*!40000 ALTER TABLE `taxonomy_template_styles` DISABLE KEYS */;
INSERT INTO `taxonomy_template_styles` VALUES (10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}');
INSERT INTO `taxonomy_template_styles` VALUES (11,'cassiopeia',0,'1','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');
/*!40000 ALTER TABLE `taxonomy_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_ucm_base`
--

DROP TABLE IF EXISTS `taxonomy_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_ucm_base`
--

LOCK TABLES `taxonomy_ucm_base` WRITE;
/*!40000 ALTER TABLE `taxonomy_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_ucm_content`
--

DROP TABLE IF EXISTS `taxonomy_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int unsigned DEFAULT NULL,
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_ucm_content`
--

LOCK TABLES `taxonomy_ucm_content` WRITE;
/*!40000 ALTER TABLE `taxonomy_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_update_sites`
--

DROP TABLE IF EXISTS `taxonomy_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_update_sites`
--

LOCK TABLES `taxonomy_update_sites` WRITE;
/*!40000 ALTER TABLE `taxonomy_update_sites` DISABLE KEYS */;
INSERT INTO `taxonomy_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1678356125,'',NULL,NULL);
INSERT INTO `taxonomy_update_sites` VALUES (2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_4.xml',1,1678356118,'',NULL,NULL);
INSERT INTO `taxonomy_update_sites` VALUES (3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,'',NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_update_sites_extensions`
--

DROP TABLE IF EXISTS `taxonomy_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_update_sites_extensions`
--

LOCK TABLES `taxonomy_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `taxonomy_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `taxonomy_update_sites_extensions` VALUES (1,224);
INSERT INTO `taxonomy_update_sites_extensions` VALUES (2,225);
INSERT INTO `taxonomy_update_sites_extensions` VALUES (3,24);
/*!40000 ALTER TABLE `taxonomy_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_updates`
--

DROP TABLE IF EXISTS `taxonomy_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_updates`
--

LOCK TABLES `taxonomy_updates` WRITE;
/*!40000 ALTER TABLE `taxonomy_updates` DISABLE KEYS */;
INSERT INTO `taxonomy_updates` VALUES (1,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/af-ZA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (2,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'4.0.2.1','','https://update.joomla.org/language/details4/ar-AA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (3,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/bg-BG_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (4,2,0,'Catalan','','pkg_ca-ES','package','',0,'4.0.4.2','','https://update.joomla.org/language/details4/ca-ES_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (5,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'4.2.0.1','','https://update.joomla.org/language/details4/zh-CN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (6,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'4.2.3.1','','https://update.joomla.org/language/details4/zh-TW_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (7,2,0,'Czech','','pkg_cs-CZ','package','',0,'4.2.0.1','','https://update.joomla.org/language/details4/cs-CZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (8,2,0,'Danish','','pkg_da-DK','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/da-DK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (9,2,0,'Dutch','','pkg_nl-NL','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/nl-NL_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (10,2,0,'English, Australia','','pkg_en-AU','package','',0,'4.2.8.2','','https://update.joomla.org/language/details4/en-AU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (11,2,0,'English, Canada','','pkg_en-CA','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-CA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (12,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-NZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (13,2,0,'English, USA','','pkg_en-US','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-US_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (14,2,0,'Estonian','','pkg_et-EE','package','',0,'4.2.7.3','','https://update.joomla.org/language/details4/et-EE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (15,2,0,'Finnish','','pkg_fi-FI','package','',0,'4.1.1.2','','https://update.joomla.org/language/details4/fi-FI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (16,2,0,'Flemish','','pkg_nl-BE','package','',0,'4.2.6.1','','https://update.joomla.org/language/details4/nl-BE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (17,2,0,'French','','pkg_fr-FR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/fr-FR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (18,2,0,'Georgian','','pkg_ka-GE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ka-GE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (19,2,0,'German','','pkg_de-DE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-DE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (20,2,0,'German, Austria','','pkg_de-AT','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-AT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (21,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-LI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (22,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-LU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (23,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-CH_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (24,2,0,'Greek','','pkg_el-GR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/el-GR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (25,2,0,'Hungarian','','pkg_hu-HU','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/hu-HU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (26,2,0,'Irish','','pkg_ga-IE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ga-IE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (27,2,0,'Italian','','pkg_it-IT','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/it-IT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (28,2,0,'Japanese','','pkg_ja-JP','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ja-JP_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (29,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/kk-KZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (30,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'4.2.6.1','','https://update.joomla.org/language/details4/lt-LT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (31,2,0,'Macedonian','','pkg_mk-MK','package','',0,'4.2.4.1','','https://update.joomla.org/language/details4/mk-MK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (32,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'4.0.1.1','','https://update.joomla.org/language/details4/nb-NO_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (33,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/fa-IR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (34,2,0,'Polish','','pkg_pl-PL','package','',0,'4.2.8.2','','https://update.joomla.org/language/details4/pl-PL_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (35,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'4.0.3.1','','https://update.joomla.org/language/details4/pt-BR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (36,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'4.0.0-rc4.2','','https://update.joomla.org/language/details4/pt-PT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (37,2,0,'Romanian','','pkg_ro-RO','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ro-RO_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (38,2,0,'Russian','','pkg_ru-RU','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ru-RU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (39,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/sr-RS_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (40,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'4.2.5.1','','https://update.joomla.org/language/details4/sr-YU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (41,2,0,'Slovak','','pkg_sk-SK','package','',0,'4.0.6.1','','https://update.joomla.org/language/details4/sk-SK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (42,2,0,'Slovenian','','pkg_sl-SI','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/sl-SI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (43,2,0,'Spanish','','pkg_es-ES','package','',0,'4.2.3.1','','https://update.joomla.org/language/details4/es-ES_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (44,2,0,'Swedish','','pkg_sv-SE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/sv-SE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (45,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ta-IN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (46,2,0,'Thai','','pkg_th-TH','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/th-TH_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (47,2,0,'Turkish','','pkg_tr-TR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/tr-TR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (48,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'4.2.5.1','','https://update.joomla.org/language/details4/uk-UA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (49,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'4.2.2.1','','https://update.joomla.org/language/details4/vi-VN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (50,2,0,'Welsh','','pkg_cy-GB','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `taxonomy_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_user_keys`
--

DROP TABLE IF EXISTS `taxonomy_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_user_keys`
--

LOCK TABLES `taxonomy_user_keys` WRITE;
/*!40000 ALTER TABLE `taxonomy_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_user_mfa`
--

DROP TABLE IF EXISTS `taxonomy_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_user_mfa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_user_mfa`
--

LOCK TABLES `taxonomy_user_mfa` WRITE;
/*!40000 ALTER TABLE `taxonomy_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_user_notes`
--

DROP TABLE IF EXISTS `taxonomy_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_user_notes`
--

LOCK TABLES `taxonomy_user_notes` WRITE;
/*!40000 ALTER TABLE `taxonomy_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_user_profiles`
--

DROP TABLE IF EXISTS `taxonomy_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_user_profiles`
--

LOCK TABLES `taxonomy_user_profiles` WRITE;
/*!40000 ALTER TABLE `taxonomy_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_user_usergroup_map`
--

DROP TABLE IF EXISTS `taxonomy_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_user_usergroup_map`
--

LOCK TABLES `taxonomy_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `taxonomy_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `taxonomy_user_usergroup_map` VALUES (265,8);
/*!40000 ALTER TABLE `taxonomy_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_usergroups`
--

DROP TABLE IF EXISTS `taxonomy_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_usergroups`
--

LOCK TABLES `taxonomy_usergroups` WRITE;
/*!40000 ALTER TABLE `taxonomy_usergroups` DISABLE KEYS */;
INSERT INTO `taxonomy_usergroups` VALUES (1,0,1,18,'Public');
INSERT INTO `taxonomy_usergroups` VALUES (2,1,8,15,'Registered');
INSERT INTO `taxonomy_usergroups` VALUES (3,2,9,14,'Author');
INSERT INTO `taxonomy_usergroups` VALUES (4,3,10,13,'Editor');
INSERT INTO `taxonomy_usergroups` VALUES (5,4,11,12,'Publisher');
INSERT INTO `taxonomy_usergroups` VALUES (6,1,4,7,'Manager');
INSERT INTO `taxonomy_usergroups` VALUES (7,6,5,6,'Administrator');
INSERT INTO `taxonomy_usergroups` VALUES (8,1,16,17,'Super Users');
INSERT INTO `taxonomy_usergroups` VALUES (9,1,2,3,'Guest');
/*!40000 ALTER TABLE `taxonomy_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_users`
--

DROP TABLE IF EXISTS `taxonomy_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_users`
--

LOCK TABLES `taxonomy_users` WRITE;
/*!40000 ALTER TABLE `taxonomy_users` DISABLE KEYS */;
INSERT INTO `taxonomy_users` VALUES (265,'admin','admin','buildingtaxonomy@globalquakemodel.org','$2y$10$hCzwxwDrgzNZ1n4.5RsS2uA5lGTeen1DXKBLBSE/qs4/.xywhqetC',0,1,'2023-03-09 10:01:57',NULL,'0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `taxonomy_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_viewlevels`
--

DROP TABLE IF EXISTS `taxonomy_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_viewlevels`
--

LOCK TABLES `taxonomy_viewlevels` WRITE;
/*!40000 ALTER TABLE `taxonomy_viewlevels` DISABLE KEYS */;
INSERT INTO `taxonomy_viewlevels` VALUES (1,'Public',0,'[1]');
INSERT INTO `taxonomy_viewlevels` VALUES (2,'Registered',2,'[6,2,8]');
INSERT INTO `taxonomy_viewlevels` VALUES (3,'Special',3,'[6,3,8]');
INSERT INTO `taxonomy_viewlevels` VALUES (5,'Guest',1,'[9]');
INSERT INTO `taxonomy_viewlevels` VALUES (6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `taxonomy_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_webauthn_credentials`
--

DROP TABLE IF EXISTS `taxonomy_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_webauthn_credentials`
--

LOCK TABLES `taxonomy_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `taxonomy_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_workflow_associations`
--

DROP TABLE IF EXISTS `taxonomy_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_workflow_associations`
--

LOCK TABLES `taxonomy_workflow_associations` WRITE;
/*!40000 ALTER TABLE `taxonomy_workflow_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_workflow_stages`
--

DROP TABLE IF EXISTS `taxonomy_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_workflow_stages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_workflow_stages`
--

LOCK TABLES `taxonomy_workflow_stages` WRITE;
/*!40000 ALTER TABLE `taxonomy_workflow_stages` DISABLE KEYS */;
INSERT INTO `taxonomy_workflow_stages` VALUES (1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_workflow_transitions`
--

DROP TABLE IF EXISTS `taxonomy_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_workflow_transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_workflow_transitions`
--

LOCK TABLES `taxonomy_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `taxonomy_workflow_transitions` DISABLE KEYS */;
INSERT INTO `taxonomy_workflow_transitions` VALUES (1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL);
INSERT INTO `taxonomy_workflow_transitions` VALUES (7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_workflows`
--

DROP TABLE IF EXISTS `taxonomy_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_workflows`
--

LOCK TABLES `taxonomy_workflows` WRITE;
/*!40000 ALTER TABLE `taxonomy_workflows` DISABLE KEYS */;
INSERT INTO `taxonomy_workflows` VALUES (1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2023-03-09 10:01:53',265,'2023-03-09 10:01:53',265,NULL,NULL);
/*!40000 ALTER TABLE `taxonomy_workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 10:30:36
