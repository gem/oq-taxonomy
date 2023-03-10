-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: taxonomy
-- ------------------------------------------------------
-- Server version	8.0.32

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_action_logs`
--

LOCK TABLES `taxonomy_action_logs` WRITE;
/*!40000 ALTER TABLE `taxonomy_action_logs` DISABLE KEYS */;
INSERT INTO `taxonomy_action_logs` VALUES (1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2023-03-10 14:46:37','com_users',210,0,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (2,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"terms\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 14:49:00','com_categories.category',210,8,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (3,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"8\",\"title\":\"terms\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 14:49:03','com_categories.category',210,8,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (4,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__categories\"}','2023-03-10 14:49:03','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (5,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"about\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 14:49:23','com_categories.category',210,9,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (6,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"Term of use\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 14:49:50','com_categories.category',210,10,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (7,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"new terminology for gem taxonomy\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 14:57:36','com_content.article',210,1,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (8,'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED','{\"action\":\"login\",\"id\":210,\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2023-03-10 14:58:33','com_users',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (9,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"Glossary for GEM Taxonomy\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=2\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:02:27','com_menus.menu',210,2,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (10,'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED','{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"Glossary for GEM Taxonomy\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:06:17','com_menus.menu',210,2,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (11,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Glossary for GEM Taxonomy\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:13:24','com_menus.item',210,101,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (12,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__menu\"}','2023-03-10 15:13:24','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (13,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"term\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:19:17','com_menus.item',210,102,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (14,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"term\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:20:06','com_menus.item',210,102,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (15,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__menu\"}','2023-03-10 15:20:06','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (16,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"About\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:22:46','com_content.article',210,2,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (17,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"about\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:23:50','com_menus.item',210,103,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (18,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__menu\"}','2023-03-10 15:23:57','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (19,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"Term of use\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:26:14','com_content.article',210,3,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (20,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"term of use\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:27:41','com_menus.item',210,104,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (21,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"My Profile\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:32:35','com_menus.item',210,105,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (22,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__menu\"}','2023-03-10 15:33:24','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (23,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"Use Menu\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:33:46','com_menus.menu',210,3,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (24,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"User Menu\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:33:54','com_menus.menu',210,3,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (25,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"User Menu\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:33:56','com_menus.menu',210,3,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (26,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"My Profile\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:34:10','com_menus.item',210,105,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (27,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__menu\"}','2023-03-10 15:34:10','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Submit new definition\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:35:27','com_menus.item',210,106,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (29,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"Site Administrator\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:37:43','com_menus.item',210,107,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (30,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Template Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:38:39','com_menus.item',210,108,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (31,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Site Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:39:31','com_menus.item',210,109,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (32,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__categories\"}','2023-03-10 15:41:20','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (33,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__modules\"}','2023-03-10 15:43:14','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (34,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:43:14','com_modules.module',210,17,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (35,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:50:37','com_users',210,210,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (36,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"Infilled Frame\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\"}','2023-03-10 15:55:01','com_content.article',210,4,'COM_ACTIONLOGS_DISABLED');
INSERT INTO `taxonomy_action_logs` VALUES (37,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":210,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"userid\":210,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=210\",\"table\":\"#__content\"}','2023-03-10 16:07:17','com_checkin',210,210,'COM_ACTIONLOGS_DISABLED');
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
INSERT INTO `taxonomy_action_logs_users` VALUES (210,0,'[\"com_content\"]');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_assets`
--

LOCK TABLES `taxonomy_assets` WRITE;
/*!40000 ALTER TABLE `taxonomy_assets` DISABLE KEYS */;
INSERT INTO `taxonomy_assets` VALUES (1,0,0,181,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `taxonomy_assets` VALUES (2,1,1,2,1,'com_admin','com_admin','{}');
INSERT INTO `taxonomy_assets` VALUES (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (6,1,11,12,1,'com_config','com_config','{}');
INSERT INTO `taxonomy_assets` VALUES (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (8,1,17,52,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}');
INSERT INTO `taxonomy_assets` VALUES (9,1,53,54,1,'com_cpanel','com_cpanel','{}');
INSERT INTO `taxonomy_assets` VALUES (10,1,55,56,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `taxonomy_assets` VALUES (11,1,57,58,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (12,1,59,60,1,'com_login','com_login','{}');
INSERT INTO `taxonomy_assets` VALUES (14,1,61,62,1,'com_massmail','com_massmail','{}');
INSERT INTO `taxonomy_assets` VALUES (15,1,63,64,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `taxonomy_assets` VALUES (16,1,65,70,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (17,1,71,72,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (18,1,73,146,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (19,1,147,150,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (20,1,151,152,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (21,1,153,154,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (23,1,155,156,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (24,1,161,164,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}');
INSERT INTO `taxonomy_assets` VALUES (26,1,165,166,1,'com_wrapper','com_wrapper','{}');
INSERT INTO `taxonomy_assets` VALUES (27,8,18,19,2,'com_content.category.2','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (28,3,4,5,2,'com_banners.category.3','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (29,7,14,15,2,'com_contact.category.4','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (30,19,148,149,2,'com_newsfeeds.category.5','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (32,24,162,163,2,'com_users.category.7','Uncategorised','{}');
INSERT INTO `taxonomy_assets` VALUES (33,1,167,168,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `taxonomy_assets` VALUES (34,1,169,170,1,'com_joomlaupdate','com_joomlaupdate','{}');
INSERT INTO `taxonomy_assets` VALUES (35,1,171,172,1,'com_tags','com_tags','{}');
INSERT INTO `taxonomy_assets` VALUES (36,1,173,174,1,'com_contenthistory','com_contenthistory','{}');
INSERT INTO `taxonomy_assets` VALUES (37,1,175,176,1,'com_ajax','com_ajax','{}');
INSERT INTO `taxonomy_assets` VALUES (38,1,177,178,1,'com_postinstall','com_postinstall','{}');
INSERT INTO `taxonomy_assets` VALUES (39,18,74,75,2,'com_modules.module.1','Main Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (40,18,76,77,2,'com_modules.module.2','Login','{}');
INSERT INTO `taxonomy_assets` VALUES (41,18,78,79,2,'com_modules.module.3','Popular Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (42,18,80,81,2,'com_modules.module.4','Recently Added Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (43,18,82,83,2,'com_modules.module.8','Toolbar','{}');
INSERT INTO `taxonomy_assets` VALUES (44,18,84,85,2,'com_modules.module.9','Notifications','{}');
INSERT INTO `taxonomy_assets` VALUES (45,18,86,87,2,'com_modules.module.10','Logged-in Users','{}');
INSERT INTO `taxonomy_assets` VALUES (46,18,88,89,2,'com_modules.module.12','Admin Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (48,18,94,95,2,'com_modules.module.14','User Status','{}');
INSERT INTO `taxonomy_assets` VALUES (49,18,96,97,2,'com_modules.module.15','Title','{}');
INSERT INTO `taxonomy_assets` VALUES (50,18,98,99,2,'com_modules.module.16','Login Form','{}');
INSERT INTO `taxonomy_assets` VALUES (51,18,100,101,2,'com_modules.module.17','Breadcrumbs','{}');
INSERT INTO `taxonomy_assets` VALUES (52,18,102,103,2,'com_modules.module.79','Multilanguage status','{}');
INSERT INTO `taxonomy_assets` VALUES (53,18,106,107,2,'com_modules.module.86','Joomla Version','{}');
INSERT INTO `taxonomy_assets` VALUES (54,16,66,67,2,'com_menus.menu.1','Main Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (55,18,110,111,2,'com_modules.module.87','Sample Data','{}');
INSERT INTO `taxonomy_assets` VALUES (56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}');
INSERT INTO `taxonomy_assets` VALUES (57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}');
INSERT INTO `taxonomy_assets` VALUES (58,56,23,24,3,'com_content.transition.1','Unpublish','{}');
INSERT INTO `taxonomy_assets` VALUES (59,56,25,26,3,'com_content.transition.2','Publish','{}');
INSERT INTO `taxonomy_assets` VALUES (60,56,27,28,3,'com_content.transition.3','Trash','{}');
INSERT INTO `taxonomy_assets` VALUES (61,56,29,30,3,'com_content.transition.4','Archive','{}');
INSERT INTO `taxonomy_assets` VALUES (62,56,31,32,3,'com_content.transition.5','Feature','{}');
INSERT INTO `taxonomy_assets` VALUES (63,56,33,34,3,'com_content.transition.6','Unfeature','{}');
INSERT INTO `taxonomy_assets` VALUES (64,56,35,36,3,'com_content.transition.7','Publish & Feature','{}');
INSERT INTO `taxonomy_assets` VALUES (65,1,157,158,1,'com_privacy','com_privacy','{}');
INSERT INTO `taxonomy_assets` VALUES (66,1,159,160,1,'com_actionlogs','com_actionlogs','{}');
INSERT INTO `taxonomy_assets` VALUES (67,18,90,91,2,'com_modules.module.88','Latest Actions','{}');
INSERT INTO `taxonomy_assets` VALUES (68,18,92,93,2,'com_modules.module.89','Privacy Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (70,18,104,105,2,'com_modules.module.103','Site','{}');
INSERT INTO `taxonomy_assets` VALUES (71,18,108,109,2,'com_modules.module.104','System','{}');
INSERT INTO `taxonomy_assets` VALUES (72,18,112,113,2,'com_modules.module.91','System Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (73,18,114,115,2,'com_modules.module.92','Content Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (74,18,116,117,2,'com_modules.module.93','Menus Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (75,18,118,119,2,'com_modules.module.94','Components Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (76,18,120,121,2,'com_modules.module.95','Users Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (77,18,122,123,2,'com_modules.module.99','Frontend Link','{}');
INSERT INTO `taxonomy_assets` VALUES (78,18,124,125,2,'com_modules.module.100','Messages','{}');
INSERT INTO `taxonomy_assets` VALUES (79,18,126,127,2,'com_modules.module.101','Post Install Messages','{}');
INSERT INTO `taxonomy_assets` VALUES (80,18,128,129,2,'com_modules.module.102','User Status','{}');
INSERT INTO `taxonomy_assets` VALUES (82,18,130,131,2,'com_modules.module.105','3rd Party','{}');
INSERT INTO `taxonomy_assets` VALUES (83,18,132,133,2,'com_modules.module.106','Help Dashboard','{}');
INSERT INTO `taxonomy_assets` VALUES (84,18,134,135,2,'com_modules.module.107','Privacy Requests','{}');
INSERT INTO `taxonomy_assets` VALUES (85,18,136,137,2,'com_modules.module.108','Privacy Status','{}');
INSERT INTO `taxonomy_assets` VALUES (86,18,138,139,2,'com_modules.module.96','Popular Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (87,18,140,141,2,'com_modules.module.97','Recently Added Articles','{}');
INSERT INTO `taxonomy_assets` VALUES (88,18,142,143,2,'com_modules.module.98','Logged-in Users','{}');
INSERT INTO `taxonomy_assets` VALUES (89,18,144,145,2,'com_modules.module.90','Login Support','{}');
INSERT INTO `taxonomy_assets` VALUES (90,1,179,180,1,'com_scheduler','com_scheduler','{}');
INSERT INTO `taxonomy_assets` VALUES (91,8,38,45,2,'com_content.category.8','terms','{}');
INSERT INTO `taxonomy_assets` VALUES (92,8,46,49,2,'com_content.category.9','about','{}');
INSERT INTO `taxonomy_assets` VALUES (93,8,50,51,2,'com_content.category.10','Term of use','{}');
INSERT INTO `taxonomy_assets` VALUES (94,91,39,40,3,'com_content.article.1','new terminology for gem taxonomy','{}');
INSERT INTO `taxonomy_assets` VALUES (96,92,47,48,3,'com_content.article.2','About','{}');
INSERT INTO `taxonomy_assets` VALUES (97,91,41,42,3,'com_content.article.3','Term of use','{}');
INSERT INTO `taxonomy_assets` VALUES (98,16,68,69,2,'com_menus.menu.3','User Menu','{}');
INSERT INTO `taxonomy_assets` VALUES (99,91,43,44,3,'com_content.article.4','Infilled Frame','{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_categories`
--

LOCK TABLES `taxonomy_categories` WRITE;
/*!40000 ALTER TABLE `taxonomy_categories` DISABLE KEYS */;
INSERT INTO `taxonomy_categories` VALUES (1,0,0,0,17,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:44:55',210,'2023-03-10 14:44:55',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (8,91,1,11,12,1,'term','com_content','terms','term','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:49:00',210,'2023-03-10 14:49:03',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (9,92,1,13,14,1,'about','com_content','about','about','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:49:23',210,'2023-03-10 14:49:23',0,'*',1);
INSERT INTO `taxonomy_categories` VALUES (10,93,1,15,16,1,'term-of-use','com_content','Term of use','term-of-use','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',210,'2023-03-10 14:49:50',210,'2023-03-10 14:49:50',0,'*',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_content`
--

LOCK TABLES `taxonomy_content` WRITE;
/*!40000 ALTER TABLE `taxonomy_content` DISABLE KEYS */;
INSERT INTO `taxonomy_content` VALUES (1,94,'new terminology for gem taxonomy','new-terminology-for-gem-taxonomy','<p>new terminology for gem taxonomy</p>','',1,8,'2023-03-10 14:57:36',210,'','2023-03-10 14:57:36',210,NULL,NULL,'2023-03-10 14:57:36',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
INSERT INTO `taxonomy_content` VALUES (2,96,'About','about','<p>It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture the best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk..<br /><br />GEM Nexus is an action-oriented platform where collaborators of the Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for feedback and discussion with a wider community of experts and stakeholders.<br /><br />To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodates your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowledge.<br /><br /></p>\r\n<p>Principles of the GEM Nexus Community<br />Principle #1: Share<br />In order to have a lasting impact on seismic risk assessment and to create tools and models that are applicable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you can if you are part of a (global) group, and share your knowledge and opinions wherever applicable.<br /><br />Principle #2: Respect<br />The work that the various groups share is meant to trigger discussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don’t place it out of context.<br /><br />Principle #3: Collaborative<br />Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration over competition, and create an atmosphere for building on one another\'s ideas.<br /><br />Principle #4: Always in Beta<br />Contribute for continuous improvement and iteration. That goes for the community, Nexus and GEM in general. To this end, submit your suggestions.</p>','',1,9,'2023-03-10 15:22:46',210,'','2023-03-10 15:22:46',210,NULL,NULL,'2023-03-10 15:22:46',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
INSERT INTO `taxonomy_content` VALUES (3,97,'Term of use','term-of-use','<p>Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our <a href=\"https://www.globalquakemodel.org/terms-of-use\" target=\"_blank\" rel=\"noopener noreferrer\">privacy policy </a>govern the GEM Foundation’s relationship with you in relation to this website.</p>\r\n<p>GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing seismic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our <a href=\"https://www.globalquakemodel.org/terms-of-use\" target=\"_blank\" rel=\"noopener noreferrer\">licensing policy</a></p>\r\n<p><br /><br />Furthermore we note that:</p>\r\n<p>- All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.</p>\r\n<p>- Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</p>\r\n<p>- Your use of this website and any dispute arising out of such use of the website is subject to the laws of Italy.</p>\r\n<p> </p>\r\n<h3><b>Disclaimer</b></h3>\r\n<p>The  contents of this website are created by the users of GEM Nexus and reflect their personal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore at your own risk.</p>\r\n<p>In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.</p>\r\n<p>Through this website you are able to link to other websites which are not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.</p>\r\n<p>Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.</p>','',1,8,'2023-03-10 15:26:14',210,'','2023-03-10 15:26:14',210,NULL,NULL,'2023-03-10 15:26:14',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
INSERT INTO `taxonomy_content` VALUES (4,99,'Infilled Frame','infilled-frame','<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or completely fill the frame.</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_-_charleson_1_400x281.jpg\" alt=\"LFINF_-_Charleson_1\" /></p>\r\n<p>A simplified drawing of an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_1_369x278.jpg\" alt=\"LFINF_Allen&amp;Brzev_1\" width=\"369\" height=\"278\" /></p>\r\n<p>Partial section of an infilled frame structure</p>\r\n<p><img class=\"image-inline\" style=\"float: left;\" src=\"images/LFINF_India_Charleson_1_368x277.jpg\" alt=\"Infilled Frame 1.JPG\" width=\"368\" height=\"277\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infill walls, India (A. Charleson)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"images/lfinf_india_brzev_1_400x277.jpg\" alt=\"LFINF_India_Brzev_1\" /></p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"images/lfinf_indonesia_bothara_1_358x269.jpg\" alt=\"LFINF_Indonesia_Bothara_1\" width=\"358\" height=\"269\" /></p>\r\n<p>Reinforced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_nepal_bothara_1_368x256.jpg\" alt=\"LFINF_Nepal_Bothara_1\" width=\"368\" height=\"256\" /></p>\r\n<p>Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_algeria_farsi_1_378x265.jpg\" alt=\"LFINF_Algeria_Farsi_1\" width=\"378\" height=\"265\" /></p>\r\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_algeria_brzev_1_353x265.jpg\" alt=\"LFINF_Algeria_Brzev_1\" width=\"353\" height=\"265\" /></p>\r\n<p>This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_uganda_lemkuhl_1_329x246.jpg\" alt=\"LFINF_Uganda_Lemkuhl_1\" width=\"329\" height=\"246\" /></p>\r\n<p>Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_tangier_morocco_scawthorn_1_382x323.jpg\" alt=\"LFINF_Tangier_Morocco_Scawthorn_1\" /></p>\r\n<p>Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\" alt=\"LFINF_Rabbat_Morocco_Scawthorn_2\" width=\"286\" height=\"232\" /></p>\r\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_vietnam_scawthorn_1_265x353.jpg\" alt=\"LFINF_Vietnam_Scawthorn_1\" width=\"265\" height=\"353\" /></p>\r\n<p>Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn)</p>','',1,8,'2023-03-10 15:55:01',210,'','2023-03-10 15:55:01',210,NULL,NULL,'2023-03-10 15:55:01',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `taxonomy_content` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `taxonomy_extensions` VALUES (175,0,'plg_system_logrotation','plugin','logrotation',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}','{\"lastrun\":1678459506}','',NULL,NULL,13,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (176,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (177,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (178,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (179,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (180,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','',NULL,NULL,18,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (181,0,'plg_system_sessiongc','plugin','sessiongc',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2018-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}','','',NULL,NULL,19,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (182,0,'plg_system_shortcut','plugin','shortcut',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,0,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (183,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"skipto\"}','{}','',NULL,NULL,20,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (184,0,'plg_system_stats','plugin','stats',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1678459600,\"unique_id\":\"4e8082ddc45eb3e4aaddbf048b246008948a6053\",\"interval\":12}','',NULL,NULL,21,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (185,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL);
INSERT INTO `taxonomy_extensions` VALUES (186,0,'plg_system_updatenotification','plugin','updatenotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2015-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1678459506}','',NULL,NULL,23,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_links`
--

LOCK TABLES `taxonomy_finder_links` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_links` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_links` VALUES (1,'index.php?option=com_content&view=category&id=8','index.php?option=com_content&view=category&id=8','terms','','2023-03-10 14:49:03','e5c2bb0931a7ad8f25623486ed1c8e91',1,1,1,'*',NULL,NULL,'2023-03-10 14:49:00',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:8;s:5:\"alias\";s:4:\"term\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:11;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:210;s:8:\"modified\";s:19:\"2023-03-10 14:49:03\";s:11:\"modified_by\";i:210;s:4:\"slug\";s:6:\"8:term\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=8\";i:12;N;i:13;s:19:\"2023-03-10 14:49:00\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:5:\"terms\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=8\";}');
INSERT INTO `taxonomy_finder_links` VALUES (2,'index.php?option=com_content&view=category&id=9','index.php?option=com_content&view=category&id=9','about','','2023-03-10 14:49:23','276f4d5f0c1de1950d37ad86fe803cf4',1,1,1,'*',NULL,NULL,'2023-03-10 14:49:23',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:9;s:5:\"alias\";s:5:\"about\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:13;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:210;s:8:\"modified\";s:19:\"2023-03-10 14:49:23\";s:11:\"modified_by\";i:210;s:4:\"slug\";s:7:\"9:about\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=9\";i:12;N;i:13;s:19:\"2023-03-10 14:49:23\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:5:\"about\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=9\";}');
INSERT INTO `taxonomy_finder_links` VALUES (3,'index.php?option=com_content&view=category&id=10','index.php?option=com_content&view=category&id=10','Term of use','','2023-03-10 14:49:50','42c0e147fafa318fcf5162241b5afbda',1,1,1,'*',NULL,NULL,'2023-03-10 14:49:50',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:10;s:5:\"alias\";s:11:\"term of use\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:15;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:210;s:8:\"modified\";s:19:\"2023-03-10 14:49:50\";s:11:\"modified_by\";i:210;s:4:\"slug\";s:14:\"10:term-of-use\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:48:\"index.php?option=com_content&view=category&id=10\";i:12;N;i:13;s:19:\"2023-03-10 14:49:50\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:11:\"Term of use\";i:17;i:1;i:18;s:48:\"index.php?option=com_content&view=category&id=10\";}');
INSERT INTO `taxonomy_finder_links` VALUES (4,'index.php?option=com_content&view=article&id=1','index.php?option=com_content&view=article&id=1:new-terminology-for-gem-taxonomy&catid=8','new terminology for gem taxonomy',' new terminology for gem taxonomy ','2023-03-10 14:57:36','544eb4f2021cf4dd817fc39981a48ac6',1,1,1,'*','2023-03-10 14:57:36',NULL,'2023-03-10 14:57:36',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:34:\" new terminology for gem taxonomy \";i:3;a:25:{s:2:\"id\";i:1;s:5:\"alias\";s:32:\"new terminology for gem taxonomy\";s:7:\"summary\";s:39:\"<p>new terminology for gem taxonomy</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:210;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2023-03-10 14:57:36\";s:11:\"modified_by\";i:210;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:5:\"terms\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:34:\"1:new-terminology-for-gem-taxonomy\";s:7:\"catslug\";s:6:\"8:term\";s:6:\"author\";s:5:\"admin\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2023-03-10 14:57:36\";i:10;N;i:11;s:87:\"index.php?option=com_content&view=article&id=1:new-terminology-for-gem-taxonomy&catid=8\";i:12;N;i:13;s:19:\"2023-03-10 14:57:36\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:6;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"admin\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"terms\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:10;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:32:\"new terminology for gem taxonomy\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=1\";}');
INSERT INTO `taxonomy_finder_links` VALUES (5,'index.php?option=com_content&view=article&id=2','index.php?option=com_content&view=article&id=2:about&catid=9','About',' It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture the best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk.. GEM Nexus is an action-oriented platform where collaborators of the Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for feedback and discussion with a wider community of experts and stakeholders. To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodates your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowledge. Principles of the GEM Nexus Community Principle #1: Share In order to have a lasting impact on seismic risk assessment and to create tools and models that are applicable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you can if you are part of a (global) group, and share your knowledge and opinions wherever applicable. Principle #2: Respect The work that the various groups share is meant to trigger discussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don’t place it out of context. Principle #3: Collaborative Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration over competition, and create an atmosphere for building on one another\'s ideas. Principle #4: Always in Beta Contribute for continuous improvement and iteration. Thatgoes for the community, Nexus and GEM in general. To this end, submit your suggestions. ','2023-03-10 15:22:46','363b490a6b0ea5ffb3ca0d9d1d2d14ec',1,1,1,'*','2023-03-10 15:22:46',NULL,'2023-03-10 15:22:46',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:2124:\" It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture the best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk.. GEM Nexus is an action-oriented platform where collaborators of the Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for feedback and discussion with a wider community of experts and stakeholders. To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodates your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowledge. Principles of the GEM Nexus Community Principle #1: Share In order to have a lasting impact on seismic risk assessment and to create tools and models that are applicable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you can if you are part of a (global) group, and share your knowledge and opinions wherever applicable. Principle #2: Respect The work that the various groups share is meant to trigger discussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don’t place it out of context. Principle #3: Collaborative Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration over competition, and create an atmosphere for building on one another\'s ideas. Principle #4: Always in Beta Contribute for continuous improvement and iteration. Thatgoes for the community, Nexus and GEM in general. To this end, submit your suggestions. \";i:3;a:25:{s:2:\"id\";i:2;s:5:\"alias\";s:5:\"about\";s:7:\"summary\";s:2230:\"<p>It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture the best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk..<br /><br />GEM Nexus is an action-oriented platform where collaborators of the Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for feedback and discussion with a wider community of experts and stakeholders.<br /><br />To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodates your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowledge.<br /><br /></p>\r\n<p>Principles of the GEM Nexus Community<br />Principle #1: Share<br />In order to have a lasting impact on seismic risk assessment and to create tools and models that are applicable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you can if you are part of a (global) group, and share your knowledge and opinions wherever applicable.<br /><br />Principle #2: Respect<br />The work that the various groups share is meant to trigger discussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don’t place it out of context.<br /><br />Principle #3: Collaborative<br />Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration over competition, and create an atmosphere for building on one another\'s ideas.<br /><br />Principle #4: Always in Beta<br />Contribute for continuous improvement and iteration. That goes for the community, Nexus and GEM in general. To this end, submit your suggestions.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:9;s:10:\"created_by\";i:210;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2023-03-10 15:22:46\";s:11:\"modified_by\";i:210;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:5:\"about\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:7:\"2:about\";s:7:\"catslug\";s:7:\"9:about\";s:6:\"author\";s:5:\"admin\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2023-03-10 15:22:46\";i:10;N;i:11;s:60:\"index.php?option=com_content&view=article&id=2:about&catid=9\";i:12;N;i:13;s:19:\"2023-03-10 15:22:46\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:6;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"admin\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"about\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:11;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:5:\"About\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=2\";}');
INSERT INTO `taxonomy_finder_links` VALUES (6,'index.php?option=com_content&view=article&id=3','index.php?option=com_content&view=article&id=3:term-of-use&catid=8','Term of use',' Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern the GEM Foundation’s relationship with you in relation to this website. GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing seismic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our licensing policy Furthermore we note that: - All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website. - Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence. - Your use of this website and any dispute arising out of such use of the website is subject to the laws of Italy. Disclaimer The contents of this website are created by the users of GEM Nexus and reflect their personal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore at your own risk. In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website. Through this website you are able to link to other websites which are not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. Theinclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them. Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control. ','2023-03-10 15:26:14','75c5494d24a4bd1ea8170b0aab5928be',1,1,1,'*','2023-03-10 15:26:14',NULL,'2023-03-10 15:26:14',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:2348:\" Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern the GEM Foundation’s relationship with you in relation to this website. GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing seismic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our licensing policy Furthermore we note that: - All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website. - Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence. - Your use of this website and any dispute arising out of such use of the website is subject to the laws of Italy. Disclaimer The contents of this website are created by the users of GEM Nexus and reflect their personal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore at your own risk. In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website. Through this website you are able to link to other websites which are not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. Theinclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them. Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control. \";i:3;a:25:{s:2:\"id\";i:3;s:5:\"alias\";s:11:\"term of use\";s:7:\"summary\";s:2675:\"<p>Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our <a href=\"https://www.globalquakemodel.org/terms-of-use\" target=\"_blank\" rel=\"noopener noreferrer\">privacy policy </a>govern the GEM Foundation’s relationship with you in relation to this website.</p>\r\n<p>GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing seismic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our <a href=\"https://www.globalquakemodel.org/terms-of-use\" target=\"_blank\" rel=\"noopener noreferrer\">licensing policy</a></p>\r\n<p><br /><br />Furthermore we note that:</p>\r\n<p>- All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.</p>\r\n<p>- Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</p>\r\n<p>- Your use of this website and any dispute arising out of such use of the website is subject to the laws of Italy.</p>\r\n<p> </p>\r\n<h3><b>Disclaimer</b></h3>\r\n<p>The  contents of this website are created by the users of GEM Nexus and reflect their personal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore at your own risk.</p>\r\n<p>In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.</p>\r\n<p>Through this website you are able to link to other websites which are not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.</p>\r\n<p>Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:210;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2023-03-10 15:26:14\";s:11:\"modified_by\";i:210;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:5:\"terms\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:13:\"3:term-of-use\";s:7:\"catslug\";s:6:\"8:term\";s:6:\"author\";s:5:\"admin\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2023-03-10 15:26:14\";i:10;N;i:11;s:66:\"index.php?option=com_content&view=article&id=3:term-of-use&catid=8\";i:12;N;i:13;s:19:\"2023-03-10 15:26:14\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:6;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"admin\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"terms\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:10;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:11:\"Term of use\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=3\";}');
INSERT INTO `taxonomy_finder_links` VALUES (7,'index.php?option=com_content&view=article&id=4','index.php?option=com_content&view=article&id=4:infilled-frame&catid=8','Infilled Frame',' A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or completely fill the frame. A simplified drawing of an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, Seismic Design for Architects, Architectural Press 2008, p. 64, Fig. 5.2) Partial section of an infilled frame structure Reinforced concrete frame with brick masonry infill walls, India (A. Charleson) Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev) Reinforced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara) Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara) Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi) This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev) Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl) Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn) Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn) Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn) ','2023-03-10 15:55:01','51cc0f960e2407acaecd126f800e7c72',1,1,1,'*','2023-03-10 15:55:01',NULL,'2023-03-10 15:55:01',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:1866:\" A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or completely fill the frame. A simplified drawing of an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, Seismic Design for Architects, Architectural Press 2008, p. 64, Fig. 5.2) Partial section of an infilled frame structure Reinforced concrete frame with brick masonry infill walls, India (A. Charleson) Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev) Reinforced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara) Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara) Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi) This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev) Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl) Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn) Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn) Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn) \";i:3;a:25:{s:2:\"id\";i:4;s:5:\"alias\";s:14:\"infilled frame\";s:7:\"summary\";s:4120:\"<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or completely fill the frame.</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_-_charleson_1_400x281.jpg\" alt=\"LFINF_-_Charleson_1\" /></p>\r\n<p>A simplified drawing of an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects</i>, Architectural Press 2008, p. 64, Fig. 5.2)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_1_369x278.jpg\" alt=\"LFINF_Allen&amp;Brzev_1\" width=\"369\" height=\"278\" /></p>\r\n<p>Partial section of an infilled frame structure</p>\r\n<p><img class=\"image-inline\" style=\"float: left;\" src=\"images/LFINF_India_Charleson_1_368x277.jpg\" alt=\"Infilled Frame 1.JPG\" width=\"368\" height=\"277\" /></p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infill walls, India (A. Charleson)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"images/lfinf_india_brzev_1_400x277.jpg\" alt=\"LFINF_India_Brzev_1\" /></p>\r\n<p style=\"text-align: left;\">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)</p>\r\n<p style=\"text-align: left;\"><img class=\"image-inline\" src=\"images/lfinf_indonesia_bothara_1_358x269.jpg\" alt=\"LFINF_Indonesia_Bothara_1\" width=\"358\" height=\"269\" /></p>\r\n<p>Reinforced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_nepal_bothara_1_368x256.jpg\" alt=\"LFINF_Nepal_Bothara_1\" width=\"368\" height=\"256\" /></p>\r\n<p>Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_algeria_farsi_1_378x265.jpg\" alt=\"LFINF_Algeria_Farsi_1\" width=\"378\" height=\"265\" /></p>\r\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_algeria_brzev_1_353x265.jpg\" alt=\"LFINF_Algeria_Brzev_1\" width=\"353\" height=\"265\" /></p>\r\n<p>This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_uganda_lemkuhl_1_329x246.jpg\" alt=\"LFINF_Uganda_Lemkuhl_1\" width=\"329\" height=\"246\" /></p>\r\n<p>Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_tangier_morocco_scawthorn_1_382x323.jpg\" alt=\"LFINF_Tangier_Morocco_Scawthorn_1\" /></p>\r\n<p>Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\" alt=\"LFINF_Rabbat_Morocco_Scawthorn_2\" width=\"286\" height=\"232\" /></p>\r\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)</p>\r\n<p><img class=\"image-inline\" src=\"images/lfinf_vietnam_scawthorn_1_265x353.jpg\" alt=\"LFINF_Vietnam_Scawthorn_1\" width=\"265\" height=\"353\" /></p>\r\n<p>Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn)</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:210;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2023-03-10 15:55:01\";s:11:\"modified_by\";i:210;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:5:\"terms\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:16:\"4:infilled-frame\";s:7:\"catslug\";s:6:\"8:term\";s:6:\"author\";s:5:\"admin\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2023-03-10 15:55:01\";i:10;N;i:11;s:69:\"index.php?option=com_content&view=article&id=4:infilled-frame&catid=8\";i:12;N;i:13;s:19:\"2023-03-10 15:55:01\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:6;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"admin\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:5:\"terms\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:10;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:14:\"Infilled Frame\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=4\";}');
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
INSERT INTO `taxonomy_finder_links_terms` VALUES (1,1,0.5334);
INSERT INTO `taxonomy_finder_links_terms` VALUES (3,1,0.98679);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,1,0.98679);
INSERT INTO `taxonomy_finder_links_terms` VALUES (1,2,0.17);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,3,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (1,3,0.56661);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,4,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (2,4,1.23321);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,4,2.63307);
INSERT INTO `taxonomy_finder_links_terms` VALUES (2,5,0.17);
INSERT INTO `taxonomy_finder_links_terms` VALUES (3,7,0.49321);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,7,0.65317);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,7,0.74648);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,7,2.07948);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,8,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (3,8,0.74);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,8,1.58);
INSERT INTO `taxonomy_finder_links_terms` VALUES (3,9,0.34);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,10,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,10,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,10,0.88);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,10,0.98);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,11,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,11,0.88);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,11,0.98);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,12,0.88);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,13,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,13,2.34652);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,14,3.22652);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,15,0.39996);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,15,0.39996);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,15,0.39996);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,15,0.39996);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,16,0.07);
INSERT INTO `taxonomy_finder_links_terms` VALUES (4,16,0.17);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,17,0.24);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,18,0.07);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,18,0.17);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,19,0.07);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,19,0.17);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,20,0.23345);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,20,0.32683);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,20,0.32683);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,21,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,22,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,23,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,24,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,24,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,25,0.84);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,26,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,27,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,27,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,27,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,28,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,29,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,29,1.82);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,29,3.5);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,30,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,31,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,32,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,33,0.93338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,34,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,35,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,36,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,36,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,36,1.12);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,37,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,38,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,38,1.86676);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,39,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,40,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,40,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,40,0.37324);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,41,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,42,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,43,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,43,1.49324);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,44,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,45,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,45,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,45,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,46,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,46,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,47,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,48,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,49,1.02662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,50,1.21338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,51,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,51,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,52,1.4);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,53,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,54,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,54,1.68);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,55,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,56,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,57,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,58,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,59,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,60,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,61,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,62,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,63,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,64,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,64,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,65,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,66,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,67,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,68,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,69,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,70,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,71,0.93338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,72,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,73,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,74,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,75,0.93338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,75,1.40007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,76,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,77,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,78,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,79,0.74662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,80,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,81,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,82,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,83,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,84,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,85,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,85,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,86,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,86,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,87,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,88,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,88,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,89,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,90,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,91,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,92,0.46655);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,92,0.55986);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,92,1.02641);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,93,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,94,0.37324);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,94,0.55986);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,95,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,95,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,96,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,97,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,97,1.68);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,98,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,99,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,100,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,101,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,102,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,103,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,104,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,105,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,106,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,106,0.93324);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,107,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,107,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,107,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,108,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,108,0.46655);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,109,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,110,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,111,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,111,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,112,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,113,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,114,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,114,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,115,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,116,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,116,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,117,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,117,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,118,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,119,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,120,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,120,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,121,0.74662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,122,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,123,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,124,1.68);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,125,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,126,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,127,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,128,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,129,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,129,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,130,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,131,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,131,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,132,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,132,1.12014);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,133,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,134,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,134,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,134,0.98007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,135,1.16655);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,136,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,136,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,137,0.98007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,138,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,139,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,140,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,141,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,142,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,143,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,144,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,145,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,146,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,147,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,147,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,147,1.49352);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,148,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,149,1.54);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,149,1.54);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,149,3.36);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,150,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,150,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,150,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,151,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,151,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,151,1.8669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,152,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,152,0.9331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,152,1.49296);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,153,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,154,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,155,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,156,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,157,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,158,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,159,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,160,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,160,0.55986);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,161,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,162,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,163,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,164,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,165,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,166,0.74676);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,166,0.93345);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,166,2.05359);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,167,1.12014);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,168,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,169,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,169,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,170,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (5,170,0.74676);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,272,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,273,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,274,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,275,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,276,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,277,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,278,0.98);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,279,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,280,0.98007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,281,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,281,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,282,1.12);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,283,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,284,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,285,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,286,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,287,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,288,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,289,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,290,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,291,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,292,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,293,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,294,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,295,0.74662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,296,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,297,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,298,0.98007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,299,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,300,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,301,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,302,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,302,0.84);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,303,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,304,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,305,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,306,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,307,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,307,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,308,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,309,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,310,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,311,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,312,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,313,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,314,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,315,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,316,0.93338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,317,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,318,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,318,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,319,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,320,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,321,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,322,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,323,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,324,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,325,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,326,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,327,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,328,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,329,2.05324);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,330,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,331,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,332,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,333,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,334,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,335,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,336,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,337,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,338,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,339,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,340,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,341,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,342,0.74676);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,343,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,344,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,345,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,345,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,346,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,347,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,348,0.27993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,349,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,350,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,351,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,352,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,353,0.18662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,353,1.39965);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,354,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,355,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,356,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,357,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,358,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,359,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,360,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,361,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,362,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,363,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,364,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,365,0.65331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,366,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,367,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,368,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,369,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,370,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,371,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,372,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,373,0.7);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,374,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,375,0.65331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,376,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,377,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,378,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,379,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,380,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,381,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,382,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,383,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,384,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,385,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,386,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,387,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,388,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,389,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,390,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,391,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,392,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,393,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,394,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,395,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,396,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,397,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,398,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,398,1.16655);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,399,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,400,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,401,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,402,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,403,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,404,4.90035);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,405,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,406,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,407,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,408,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,408,0.69993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,409,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,410,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (6,411,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,527,5.19948);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,528,3.46645);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,529,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,530,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,531,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,532,0.21);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,533,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,534,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,535,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,536,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,537,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,538,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,539,0.60669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,540,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,541,0.69993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,542,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,543,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,544,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,545,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,546,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,547,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,548,0.69993);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,549,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,550,0.14007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,551,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,552,0.84);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,553,0.56007);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,554,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,555,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,556,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,557,4.10641);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,558,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,559,2.24);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,560,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,561,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,562,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,563,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,564,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,565,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,566,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,567,0.04669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,568,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,569,0.14);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,570,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,571,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,572,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,573,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,574,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,575,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,576,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,577,0.84);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,578,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,579,0.46662);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,580,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,581,1.68);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,582,1.96014);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,583,0.09338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,584,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,585,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,586,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,587,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,588,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,589,0.04669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,590,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,591,1.96014);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,592,0.56);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,593,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,594,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,595,0.65338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,596,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,597,0.04669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,598,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,599,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,600,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,601,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,602,0.51331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,603,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,604,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,605,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,606,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,607,4.6669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,608,0.09338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,609,1.26);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,610,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,611,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,612,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,613,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,614,0.09331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,615,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,616,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,617,0.23331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,618,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,619,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,620,0.46669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,621,1.26);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,622,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,623,0.37331);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,624,0.42);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,625,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,626,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,627,0.37338);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,628,0.18669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,629,0.28);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,630,0.32669);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,631,1.39986);
INSERT INTO `taxonomy_finder_links_terms` VALUES (7,632,0.14);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_taxonomy`
--

LOCK TABLES `taxonomy_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_taxonomy` VALUES (1,0,0,21,0,'','ROOT','root',1,1,'*');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (2,1,1,6,1,'type','Type','type',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (3,2,2,3,2,'type/category','Category','category',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (4,1,7,10,1,'language','Language','language',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (5,4,8,9,2,'language/779103c53079431d1af01ce15b36e61f','*','779103c53079431d1af01ce15b36e61f',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (6,2,4,5,2,'type/article','Article','article',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (7,1,11,14,1,'author','Author','author',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (8,7,12,13,2,'author/admin','admin','admin',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (9,1,15,20,1,'category','Category','category',1,1,'');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (10,9,16,17,2,'category/terms','terms','terms',1,1,'*');
INSERT INTO `taxonomy_finder_taxonomy` VALUES (11,9,18,19,2,'category/about','about','about',1,1,'*');
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
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (1,3);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (1,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (2,3);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (2,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (3,3);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (3,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (4,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (4,6);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (4,8);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (4,10);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (5,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (5,6);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (5,8);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (5,11);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (6,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (6,6);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (6,8);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (6,10);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (7,5);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (7,6);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (7,8);
INSERT INTO `taxonomy_finder_taxonomy_map` VALUES (7,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_terms`
--

LOCK TABLES `taxonomy_finder_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_terms` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_terms` VALUES (1,'term','term',0,0,0.2667,'T650',4,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (2,'8','8',0,0,0.1,'',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (3,'terms','terms',0,0,0.3333,'T652',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (4,'about','about',0,0,0.3333,'A130',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (5,'9','9',0,0,0.1,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (7,'of','of',0,0,0.1333,'O100',4,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (8,'use','use',0,0,0.2,'U200',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (9,'10','10',0,0,0.2,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (10,'for','for',0,0,0.2,'F600',4,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (11,'gem','gem',0,0,0.2,'G500',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (12,'new','new',0,0,0.2,'N000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (13,'taxonomy','taxonomy',0,0,0.5333,'T250',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (14,'terminology','terminology',0,0,0.7333,'T6542',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (15,'admin','admin',0,0,0.3333,'A350',4,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (16,'1','1',0,0,0.1,'',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (17,'2','2',0,0,0.1,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (18,'3','3',0,0,0.1,'',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (19,'4','4',0,0,0.1,'',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (20,'a','a',0,0,0.0667,'A000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (21,'accomodates','accomodates',0,0,0.7333,'A2532',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (22,'action-oriented','action-oriented',0,0,1,'A235653',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (23,'advance','advance',0,0,0.4667,'A3152',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (24,'all','all',0,0,0.2,'A400',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (25,'always','always',0,0,0.4,'A420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (26,'among','among',0,0,0.3333,'A520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (27,'an','an',0,0,0.1333,'A500',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (28,'analyse','analyse',0,0,0.4667,'A542',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (29,'and','and',0,0,0.2,'A530',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (30,'another\'s','another\'s',0,0,0.6,'A5362',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (31,'answer','answer',0,0,0.4,'A526',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (32,'anywhere','anywhere',0,0,0.5333,'A560',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (33,'applicable','applicable',0,0,0.6667,'A14214',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (34,'applications','applications',0,0,0.8,'A142352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (35,'approaches','approaches',0,0,0.6667,'A162',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (36,'are','are',0,0,0.2,'A600',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (37,'as','as',0,0,0.1333,'A200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (38,'assessment','assessment',0,0,0.6667,'A253',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (39,'atmosphere','atmosphere',0,0,0.6667,'A35216',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (40,'be','be',0,0,0.1333,'B000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (41,'best','best',0,0,0.2667,'B230',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (42,'beta','beta',0,0,0.2667,'B300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (43,'building','building',0,0,0.5333,'B4352',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (44,'but','but',0,0,0.2,'B300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (45,'by','by',0,0,0.1333,'B000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (46,'can','can',0,0,0.2,'C500',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (47,'capture','capture',0,0,0.4667,'C136',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (48,'choose','choose',0,0,0.4,'C000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (49,'collaborate','collaborate',0,0,0.7333,'C4163',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (50,'collaboration','collaboration',0,0,0.8667,'C41635',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (51,'collaborative','collaborative',0,0,0.8667,'C41631',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (52,'collaboratively','collaboratively',0,0,1,'C416314',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (53,'collaborators','collaborators',0,0,0.8667,'C416362',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (54,'community','community',0,0,0.6,'C530',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (55,'competition','competition',0,0,0.7333,'C5135',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (56,'considered','considered',0,0,0.6667,'C52363',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (57,'context','context',0,0,0.4667,'C5323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (58,'contexts','contexts',0,0,0.5333,'C53232',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (59,'continents','continents',0,0,0.6667,'C53532',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (60,'continuous','continuous',0,0,0.6667,'C5352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (61,'contribute','contribute',0,0,0.6667,'C53613',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (62,'create','create',0,0,0.4,'C630',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (63,'critical','critical',0,0,0.5333,'C6324',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (64,'data','data',0,0,0.2667,'D000',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (65,'databases','databases',0,0,0.6,'D120',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (66,'deal','deal',0,0,0.2667,'D400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (67,'depends','depends',0,0,0.4667,'D1532',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (68,'develop','develop',0,0,0.4667,'D141',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (69,'developing','developing',0,0,0.6667,'D14152',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (70,'different','different',0,0,0.6,'D1653',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (71,'discussion','discussion',0,0,0.6667,'D250',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (72,'don\'t','don\'t',0,0,0.3333,'D530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (73,'draft-reports','draft-reports',0,0,0.8667,'D61361632',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (74,'draft-state','draft-state',0,0,0.7333,'D61323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (75,'earthquake','earthquake',0,0,0.6667,'E632',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (76,'end','end',0,0,0.2,'E530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (77,'everyone','everyone',0,0,0.5333,'E165',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (78,'experts','experts',0,0,0.4667,'E21632',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (79,'feedback','feedback',0,0,0.5333,'F312',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (80,'finding','finding',0,0,0.4667,'F5352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (81,'gem\'s','gem\'s',0,0,0.3333,'G520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (82,'general','general',0,0,0.4667,'G564',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (83,'global','global',0,0,0.4,'G414',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (84,'group','group',0,0,0.3333,'G610',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (85,'groups','groups',0,0,0.4,'G612',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (86,'have','have',0,0,0.2667,'H100',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (87,'ideas','ideas',0,0,0.3333,'I320',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (88,'if','if',0,0,0.1333,'I100',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (89,'impact','impact',0,0,0.4,'I5123',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (90,'improve','improve',0,0,0.4667,'I5161',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (91,'improvement','improvement',0,0,0.7333,'I516153',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (92,'in','in',0,0,0.1333,'I500',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (93,'initiative','initiative',0,0,0.6667,'I531',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (94,'is','is',0,0,0.1333,'I200',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (95,'it','it',0,0,0.1333,'I300',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (96,'iteration','iteration',0,0,0.6,'I3635',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (97,'knowledge','knowledge',0,0,0.6,'K5432',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (98,'lasting','lasting',0,0,0.4667,'L2352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (99,'latest','latest',0,0,0.4,'L323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (100,'meant','meant',0,0,0.3333,'M300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (101,'members','members',0,0,0.4667,'M162',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (102,'model','model',0,0,0.3333,'M340',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (103,'models','models',0,0,0.4,'M342',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (104,'much','much',0,0,0.2667,'M200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (105,'needs','needs',0,0,0.3333,'N320',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (106,'nexus','nexus',0,0,0.3333,'N200',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (107,'not','not',0,0,0.2,'N300',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (108,'on','on',0,0,0.1333,'O500',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (109,'one','one',0,0,0.2,'O500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (110,'ongoing','ongoing',0,0,0.4667,'O5252',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (111,'opinions','opinions',0,0,0.5333,'O152',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (112,'opportunity','opportunity',0,0,0.7333,'O16353',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (113,'order','order',0,0,0.3333,'O636',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (114,'other','other',0,0,0.3333,'O360',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (115,'others','others',0,0,0.4,'O362',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (116,'out','out',0,0,0.2,'O300',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (117,'over','over',0,0,0.2667,'O160',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (118,'part','part',0,0,0.2667,'P630',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (119,'participation','participation',0,0,0.8667,'P632135',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (120,'place','place',0,0,0.3333,'P420',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (121,'platform','platform',0,0,0.5333,'P43165',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (122,'point','point',0,0,0.3333,'P530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (123,'possible','possible',0,0,0.5333,'P214',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (124,'principle','principle',0,0,0.6,'P65214',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (125,'principles','principles',0,0,0.6667,'P652142',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (126,'private','private',0,0,0.4667,'P613',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (127,'progress','progress',0,0,0.5333,'P6262',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (128,'promote','promote',0,0,0.4667,'P653',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (129,'provide','provide',0,0,0.4667,'P613',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (130,'providing','providing',0,0,0.6,'P61352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (131,'respect','respect',0,0,0.4667,'R2123',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (132,'risk','risk',0,0,0.2667,'R200',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (133,'scientific','scientific',0,0,0.6667,'S5312',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (134,'seismic','seismic',0,0,0.4667,'S520',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (135,'share','share',0,0,0.3333,'S600',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (136,'shared','shared',0,0,0.4,'S630',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (137,'sharing','sharing',0,0,0.4667,'S652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (138,'should','should',0,0,0.4,'S430',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (139,'single','single',0,0,0.4,'S524',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (140,'spaces','spaces',0,0,0.4,'S120',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (141,'stakeholders','stakeholders',0,0,0.8,'S324362',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (142,'starting','starting',0,0,0.5333,'S36352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (143,'submit','submit',0,0,0.4,'S153',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (144,'suggestions','suggestions',0,0,0.7333,'S352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (145,'teamwork','teamwork',0,0,0.5333,'T562',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (146,'technologies','technologies',0,0,0.8,'T2542',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (147,'that','that',0,0,0.2667,'T000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (148,'thatgoes','thatgoes',0,0,0.5333,'T200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (149,'the','the',0,0,0.2,'T000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (150,'their','their',0,0,0.3333,'T600',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (151,'this','this',0,0,0.2667,'T200',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (152,'to','to',0,0,0.1333,'T000',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (153,'tools','tools',0,0,0.3333,'T420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (154,'trigger','trigger',0,0,0.4667,'T626',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (155,'understanding','understanding',0,0,0.8667,'U536235352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (156,'update','update',0,0,0.4,'U130',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (157,'used','used',0,0,0.2667,'U230',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (158,'various','various',0,0,0.4667,'V620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (159,'way','way',0,0,0.2,'W000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (160,'we','we',0,0,0.1333,'W000',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (161,'what','what',0,0,0.2667,'W300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (162,'when','when',0,0,0.2667,'W500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (163,'where','where',0,0,0.3333,'W600',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (164,'wherever','wherever',0,0,0.5333,'W616',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (165,'wider','wider',0,0,0.3333,'W360',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (166,'with','with',0,0,0.2667,'W300',3,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (167,'work','work',0,0,0.2667,'W620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (168,'world','world',0,0,0.3333,'W643',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (169,'you','you',0,0,0.2,'Y000',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (170,'your','your',0,0,0.2667,'Y600',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (272,'able','able',0,0,0.2667,'A140',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (273,'access','access',0,0,0.4,'A200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (274,'accuracy','accuracy',0,0,0.5333,'A262',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (275,'acknowledged','acknowledged',0,0,0.8,'A254323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (276,'advancing','advancing',0,0,0.6,'A315252',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (277,'agreeing','agreeing',0,0,0.5333,'A2652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (278,'any','any',0,0,0.2,'A500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (279,'approach','approach',0,0,0.5333,'A162',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (280,'arising','arising',0,0,0.4667,'A6252',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (281,'at','at',0,0,0.1333,'A300',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (282,'availability','availability',0,0,0.8,'A14143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (283,'being','being',0,0,0.3333,'B520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (284,'beyond','beyond',0,0,0.4,'B530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (285,'bound','bound',0,0,0.3333,'B530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (286,'chose','chose',0,0,0.3333,'C000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (287,'claim','claim',0,0,0.3333,'C450',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (288,'completeness','completeness',0,0,0.8,'C514352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (289,'comply','comply',0,0,0.4,'C514',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (290,'conditions','conditions',0,0,0.6667,'C5352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (291,'connection','connection',0,0,0.6667,'C5235',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (292,'consequential','consequential',0,0,0.8667,'C52534',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (293,'contained','contained',0,0,0.6,'C5353',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (294,'content','content',0,0,0.4667,'C5353',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (295,'contents','contents',0,0,0.5333,'C53532',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (296,'continue','continue',0,0,0.5333,'C535',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (297,'contributions','contributions',0,0,0.8667,'C5361352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (298,'control','control',0,0,0.4667,'C5364',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (299,'correct','correct',0,0,0.4667,'C623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (300,'created','created',0,0,0.4667,'C630',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (301,'criminal','criminal',0,0,0.5333,'C654',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (302,'damage','damage',0,0,0.4,'D520',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (303,'damages','damages',0,0,0.4667,'D520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (304,'disclaimer','disclaimer',0,0,0.6667,'D2456',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (305,'dispute','dispute',0,0,0.4667,'D213',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (306,'does','does',0,0,0.2667,'D200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (307,'due','due',0,0,0.2,'D000',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (308,'effort','effort',0,0,0.4,'E163',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (309,'endeavour','endeavour',0,0,0.6,'E5316',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (310,'endorse','endorse',0,0,0.4667,'E5362',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (311,'event','event',0,0,0.3333,'E153',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (312,'every','every',0,0,0.3333,'E160',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (313,'express','express',0,0,0.4667,'E2162',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (314,'expressed','expressed',0,0,0.6,'E21623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (315,'following','following',0,0,0.6,'F452',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (316,'foundation','foundation',0,0,0.6667,'F535',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (317,'foundation\'s','foundation\'s',0,0,0.8,'F5352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (318,'from','from',0,0,0.2667,'F650',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (319,'furthermore','furthermore',0,0,0.7333,'F63656',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (320,'give','give',0,0,0.2667,'G100',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (321,'glossary','glossary',0,0,0.5333,'G426',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (322,'govern','govern',0,0,0.4,'G165',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (323,'graphics','graphics',0,0,0.5333,'G612',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (324,'however','however',0,0,0.4667,'H160',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (325,'implied','implied',0,0,0.4667,'I5143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (326,'imply','imply',0,0,0.3333,'I514',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (327,'including','including',0,0,0.6,'I524352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (328,'indirect','indirect',0,0,0.5333,'I53623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (329,'information','information',0,0,0.7333,'I516535',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (330,'invaluable','invaluable',0,0,0.6667,'I51414',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (331,'issues','issues',0,0,0.4,'I200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (332,'italy','italy',0,0,0.3333,'I340',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (333,'keep','keep',0,0,0.2667,'K100',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (334,'kind','kind',0,0,0.2667,'K530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (335,'laws','laws',0,0,0.2667,'L200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (336,'liable','liable',0,0,0.4,'L140',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (337,'licensed','licensed',0,0,0.5333,'L2523',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (338,'licensing','licensing',0,0,0.6,'L25252',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (339,'limitation','limitation',0,0,0.6667,'L535',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (340,'link','link',0,0,0.2667,'L520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (341,'links','links',0,0,0.3333,'L520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (342,'loss','loss',0,0,0.2667,'L200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (343,'made','made',0,0,0.2667,'M300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (344,'make','make',0,0,0.2667,'M200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (345,'may','may',0,0,0.2,'M000',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (346,'nature','nature',0,0,0.4,'N360',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (347,'necessarily','necessarily',0,0,0.7333,'N264',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (348,'no','no',0,0,0.1333,'N000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (349,'note','note',0,0,0.2667,'N300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (350,'offence','offence',0,0,0.4667,'O152',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (351,'open','open',0,0,0.2667,'O150',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (352,'operator','operator',0,0,0.5333,'O1636',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (353,'or','or',0,0,0.1333,'O600',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (354,'our','our',0,0,0.2,'O600',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (355,'own','own',0,0,0.2,'O500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (356,'personal','personal',0,0,0.5333,'P6254',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (357,'policy','policy',0,0,0.4,'P420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (358,'position','position',0,0,0.5333,'P235',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (359,'privacy','privacy',0,0,0.4667,'P612',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (360,'products','products',0,0,0.5333,'P63232',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (361,'profits','profits',0,0,0.4667,'P6132',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (362,'property','property',0,0,0.5333,'P6163',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (363,'purpose','purpose',0,0,0.4667,'P612',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (364,'reason','reason',0,0,0.4,'R250',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (365,'recommendation','recommendation',0,0,0.9333,'R2535',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (366,'reflect','reflect',0,0,0.4667,'R1423',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (367,'related','related',0,0,0.4667,'R430',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (368,'relation','relation',0,0,0.5333,'R435',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (369,'relationship','relationship',0,0,0.8,'R43521',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (370,'release','release',0,0,0.4667,'R420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (371,'reliability','reliability',0,0,0.7333,'R4143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (372,'reliance','reliance',0,0,0.5333,'R452',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (373,'representations','representations',0,0,1,'R1625352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (374,'reproduced','reproduced',0,0,0.6667,'R16323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (375,'responsibility','responsibility',0,0,0.9333,'R2152143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (376,'rise','rise',0,0,0.2667,'R200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (377,'running','running',0,0,0.4667,'R520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (378,'see','see',0,0,0.2,'S000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (379,'services','services',0,0,0.5333,'S612',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (380,'sites','sites',0,0,0.3333,'S320',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (381,'smoothly','smoothly',0,0,0.5333,'S534',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (382,'subject','subject',0,0,0.4667,'S123',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (383,'such','such',0,0,0.2667,'S000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (384,'suitability','suitability',0,0,0.7333,'S3143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (385,'takes','takes',0,0,0.3333,'T200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (386,'technical','technical',0,0,0.6,'T2524',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (387,'temporarily','temporarily',0,0,0.7333,'T5164',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (388,'theinclusion','theinclusion',0,0,0.8,'T52425',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (389,'them','them',0,0,0.2667,'T500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (390,'therefore','therefore',0,0,0.6,'T616',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (391,'those','those',0,0,0.3333,'T200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (392,'through','through',0,0,0.4667,'T620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (393,'together','together',0,0,0.5333,'T236',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (394,'trademarks','trademarks',0,0,0.6667,'T63562',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (395,'trust','trust',0,0,0.3333,'T623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (396,'unauthorised','unauthorised',0,0,0.8,'U53623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (397,'unavailable','unavailable',0,0,0.7333,'U51414',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (398,'under','under',0,0,0.3333,'U536',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (399,'up','up',0,0,0.1333,'U100',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (400,'updated','updated',0,0,0.4667,'U130',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (401,'users','users',0,0,0.3333,'U262',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (402,'views','views',0,0,0.3333,'V200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (403,'warranties','warranties',0,0,0.6667,'W6532',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (404,'website','website',0,0,0.4667,'W123',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (405,'websites','websites',0,0,0.5333,'W1232',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (406,'welcome','welcome',0,0,0.4667,'W425',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (407,'whatsoever','whatsoever',0,0,0.6667,'W3216',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (408,'which','which',0,0,0.3333,'W200',2,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (409,'will','will',0,0,0.2667,'W400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (410,'within','within',0,0,0.4,'W350',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (411,'without','without',0,0,0.4667,'W300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (527,'frame','frame',0,0,0.3333,'F650',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (528,'infilled','infilled',0,0,0.5333,'I5143',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (529,'2003','2003',0,0,0.4,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (530,'2008','2008',0,0,0.4,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (531,'2010','2010',0,0,0.4,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (532,'5.2','5.2',0,0,0.3,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (533,'64','64',0,0,0.2,'',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (534,'adapted','adapted',0,0,0.4667,'A313',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (535,'algeria','algeria',0,0,0.4667,'A426',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (536,'algiers','algiers',0,0,0.4667,'A4262',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (537,'allow','allow',0,0,0.3333,'A400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (538,'architects','architects',0,0,0.6667,'A623232',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (539,'architectural','architectural',0,0,0.8667,'A6232364',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (540,'bays','bays',0,0,0.2667,'B200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (541,'beams','beams',0,0,0.3333,'B520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (542,'behaves','behaves',0,0,0.4667,'B200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (543,'bend','bend',0,0,0.2667,'B530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (544,'block','block',0,0,0.3333,'B420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (545,'bothara','bothara',0,0,0.4667,'B360',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (546,'boumerdes','boumerdes',0,0,0.6,'B5632',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (547,'braced','braced',0,0,0.4,'B623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (548,'brick','brick',0,0,0.3333,'B620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (549,'brzev','brzev',0,0,0.3333,'B621',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (550,'c','c',0,0,0.0667,'C000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (551,'changing','changing',0,0,0.5333,'C5252',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (552,'charleson','charleson',0,0,0.6,'C6425',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (553,'clay','clay',0,0,0.2667,'C400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (554,'columns','columns',0,0,0.4667,'C452',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (555,'completely','completely',0,0,0.6667,'C51434',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (556,'compression','compression',0,0,0.7333,'C51625',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (557,'concrete','concrete',0,0,0.5333,'C5263',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (558,'connected','connected',0,0,0.6,'C523',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (559,'construction','construction',0,0,0.8,'C5236235',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (560,'damaged','damaged',0,0,0.4667,'D523',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (561,'design','design',0,0,0.4,'D250',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (562,'detail','detail',0,0,0.4,'D400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (563,'diagonal','diagonal',0,0,0.5333,'D254',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (564,'do','do',0,0,0.1333,'D000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (565,'drawing','drawing',0,0,0.4667,'D652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (566,'during','during',0,0,0.4,'D652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (567,'e','e',0,0,0.0667,'E000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (568,'farsi','farsi',0,0,0.3333,'F620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (569,'fig','fig',0,0,0.2,'F200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (570,'fill','fill',0,0,0.2667,'F400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (571,'first','first',0,0,0.3333,'F623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (572,'floor','floor',0,0,0.3333,'F460',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (573,'form','form',0,0,0.2667,'F650',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (574,'frames','frames',0,0,0.4,'F652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (575,'framework','framework',0,0,0.6,'F6562',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (576,'great','great',0,0,0.3333,'G630',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (577,'hollow','hollow',0,0,0.4,'H400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (578,'horizontal','horizontal',0,0,0.6667,'H62534',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (579,'india','india',0,0,0.3333,'I530',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (580,'indonesia','indonesia',0,0,0.6,'I5352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (581,'infill','infill',0,0,0.4,'I514',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (582,'infills','infills',0,0,0.4667,'I5142',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (583,'j','j',0,0,0.0667,'J000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (584,'kathmandu','kathmandu',0,0,0.6,'K353',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (585,'lemkuhl','lemkuhl',0,0,0.4667,'L524',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (586,'level','level',0,0,0.3333,'L140',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (587,'like','like',0,0,0.2667,'L200',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (588,'loading','loading',0,0,0.4667,'L352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (589,'m','m',0,0,0.0667,'M000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (590,'m\'sila','m\'sila',0,0,0.4,'M240',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (591,'masonry','masonry',0,0,0.4667,'M256',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (592,'mechanically','mechanically',0,0,0.8,'M2524',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (593,'moment','moment',0,0,0.4,'M300',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (594,'more','more',0,0,0.2667,'M600',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (595,'morocco','morocco',0,0,0.4667,'M620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (596,'nepal','nepal',0,0,0.3333,'N140',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (597,'p','p',0,0,0.0667,'P000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (598,'padang','padang',0,0,0.4,'P352',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (599,'panels','panels',0,0,0.4,'P542',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (600,'part-height','part-height',0,0,0.7333,'P6323',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (601,'partial','partial',0,0,0.4667,'P634',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (602,'performance','performance',0,0,0.7333,'P61652',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (603,'planes','planes',0,0,0.4,'P452',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (604,'press','press',0,0,0.3333,'P620',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (605,'rabbat','rabbat',0,0,0.4,'R130',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (606,'rather','rather',0,0,0.4,'R360',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (607,'reinforced','reinforced',0,0,0.6667,'R51623',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (608,'s','s',0,0,0.0667,'S000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (609,'scawthorn','scawthorn',0,0,0.6,'S365',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (610,'section','section',0,0,0.4667,'S350',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (611,'showing','showing',0,0,0.4667,'S520',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (612,'simplified','simplified',0,0,0.6667,'S51413',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (613,'slabs','slabs',0,0,0.3333,'S412',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (614,'so','so',0,0,0.1333,'S000',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (615,'some','some',0,0,0.2667,'S500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (616,'stiffness','stiffness',0,0,0.6,'S3152',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (617,'stone','stone',0,0,0.3333,'S350',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (618,'storey','storey',0,0,0.4,'S360',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (619,'strength','strength',0,0,0.5333,'S36523',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (620,'structural','structural',0,0,0.6667,'S362364',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (621,'structure','structure',0,0,0.6,'S36236',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (622,'struts','struts',0,0,0.4,'S3632',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (623,'suffered','suffered',0,0,0.5333,'S163',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (624,'supported','supported',0,0,0.6,'S163',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (625,'tangier','tangier',0,0,0.4667,'T526',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (626,'than','than',0,0,0.2667,'T500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (627,'tile','tile',0,0,0.2667,'T400',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (628,'time','time',0,0,0.2667,'T500',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (629,'uganda','uganda',0,0,0.4,'U253',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (630,'vietnam','vietnam',0,0,0.4667,'V350',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (631,'walls','walls',0,0,0.3333,'W420',1,'*');
INSERT INTO `taxonomy_finder_terms` VALUES (632,'was','was',0,0,0.2,'W200',1,'*');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_finder_types`
--

LOCK TABLES `taxonomy_finder_types` WRITE;
/*!40000 ALTER TABLE `taxonomy_finder_types` DISABLE KEYS */;
INSERT INTO `taxonomy_finder_types` VALUES (1,'Category','');
INSERT INTO `taxonomy_finder_types` VALUES (2,'Contact','');
INSERT INTO `taxonomy_finder_types` VALUES (3,'Article','');
INSERT INTO `taxonomy_finder_types` VALUES (4,'News Feed','');
INSERT INTO `taxonomy_finder_types` VALUES (5,'Tag','');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_history`
--

LOCK TABLES `taxonomy_history` WRITE;
/*!40000 ALTER TABLE `taxonomy_history` DISABLE KEYS */;
INSERT INTO `taxonomy_history` VALUES (1,'com_content.category.8','','2023-03-10 14:49:00',210,538,'738cbbd44b46ef45be1d452b2510c2fc778f039f','{\"id\":8,\"asset_id\":91,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"terms\",\"alias\":\"term\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":210,\"created_time\":\"2023-03-10 14:49:00\",\"modified_user_id\":210,\"modified_time\":\"2023-03-10 14:49:00\",\"hits\":null,\"language\":\"*\",\"version\":null}',0);
INSERT INTO `taxonomy_history` VALUES (2,'com_content.category.9','','2023-03-10 14:49:23',210,539,'1b305f1592c35a88d1140a71f10b3f846420052c','{\"id\":9,\"asset_id\":92,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"about\",\"alias\":\"about\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":210,\"created_time\":\"2023-03-10 14:49:23\",\"modified_user_id\":210,\"modified_time\":\"2023-03-10 14:49:23\",\"hits\":null,\"language\":\"*\",\"version\":null}',0);
INSERT INTO `taxonomy_history` VALUES (3,'com_content.category.10','','2023-03-10 14:49:50',210,552,'b0c227869fce69edaf37a7658ce34dde049d25ad','{\"id\":10,\"asset_id\":93,\"parent_id\":1,\"lft\":15,\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Term of use\",\"alias\":\"term-of-use\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":210,\"created_time\":\"2023-03-10 14:49:50\",\"modified_user_id\":210,\"modified_time\":\"2023-03-10 14:49:50\",\"hits\":null,\"language\":\"*\",\"version\":null}',0);
INSERT INTO `taxonomy_history` VALUES (4,'com_content.article.1','','2023-03-10 14:57:36',210,1662,'62738ff63a51e0f0e3eae4918ecc389261a62bad','{\"id\":1,\"asset_id\":94,\"title\":\"new terminology for gem taxonomy\",\"alias\":\"new-terminology-for-gem-taxonomy\",\"introtext\":\"<p>new terminology for gem taxonomy<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2023-03-10 14:57:36\",\"created_by\":210,\"created_by_alias\":\"\",\"modified\":\"2023-03-10 14:57:36\",\"modified_by\":210,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-03-10 14:57:36\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
INSERT INTO `taxonomy_history` VALUES (5,'com_content.article.2','','2023-03-10 15:22:46',210,3822,'afdd8fdb9aff8cf848c7bfffa2002afdcc30531f','{\"id\":2,\"asset_id\":96,\"title\":\"About\",\"alias\":\"about\",\"introtext\":\"<p>It is not about finding one single answer to improve seismic risk assessment, but about collaboratively developing models that capture the best understanding of earthquake risk anywhere in the world, and tools that we can use to analyse and deal with that risk..<br \\/><br \\/>GEM Nexus is an action-oriented platform where collaborators of the Global Earthquake Model (GEM) initiative can collaborate in their private spaces, can update the community about their ongoing work and can share draft-reports and other work as a starting point for feedback and discussion with a wider community of experts and stakeholders.<br \\/><br \\/>To advance seismic risk assessment in general and to develop GEM\'s risk assessment platform in a way that accomodates your needs, the latest (scientific) knowledge and technologies, GEM Nexus depends on participation - on sharing of work by the various groups and on everyone providing feedback and sharing your knowledge.<br \\/><br \\/><\\/p>\\r\\n<p>Principles of the GEM Nexus Community<br \\/>Principle #1: Share<br \\/>In order to have a lasting impact on seismic risk assessment and to create tools and models that are applicable in all continents, collaboration and knowledge sharing about approaches that are used in different contexts, about data and databases, and about applications is critical. Share as much work as you can if you are part of a (global) group, and share your knowledge and opinions wherever applicable.<br \\/><br \\/>Principle #2: Respect<br \\/>The work that the various groups share is meant to trigger discussion and collaboratively improve it. This work is in progress and should always be considered to be in a draft-state. Respect that what is shared with you and don\\u2019t place it out of context.<br \\/><br \\/>Principle #3: Collaborative<br \\/>Promote teamwork among members if you are part of a group and provide others with the opportunity to collaborate where and when possible. Always choose collaboration over competition, and create an atmosphere for building on one another\'s ideas.<br \\/><br \\/>Principle #4: Always in Beta<br \\/>Contribute for continuous improvement and iteration. That goes for the community, Nexus and GEM in general. To this end, submit your suggestions.<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":9,\"created\":\"2023-03-10 15:22:46\",\"created_by\":210,\"created_by_alias\":\"\",\"modified\":\"2023-03-10 15:22:46\",\"modified_by\":210,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-03-10 15:22:46\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
INSERT INTO `taxonomy_history` VALUES (6,'com_content.article.3','','2023-03-10 15:26:14',210,4336,'3f05f8777a27c68d99fb21849f149f1b705cded8','{\"id\":3,\"asset_id\":97,\"title\":\"Term of use\",\"alias\":\"term-of-use\",\"introtext\":\"<p>Welcome to Glossary for Gem Taxonomy. If you continue to use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our\\u00a0<a href=\\\"https:\\/\\/www.globalquakemodel.org\\/terms-of-use\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">privacy policy\\u00a0<\\/a>govern the GEM Foundation\\u2019s relationship with you in relation to this website.<\\/p>\\r\\n<p>GEM is a collaborative effort and the knowledge and information shared by groups and all contributions from the GEM community are invaluable to advancing seismic risk assessment. For this reason we chose to release the contents of this website under an open access and open data approach. See our\\u00a0<a href=\\\"https:\\/\\/www.globalquakemodel.org\\/terms-of-use\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">licensing policy<\\/a><\\/p>\\r\\n<p><br \\/><br \\/>Furthermore we note that:<\\/p>\\r\\n<p>- All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.<\\/p>\\r\\n<p>- Unauthorised use of this website may give rise to a claim for damages and\\/or be a criminal offence.<\\/p>\\r\\n<p>- Your use of this website and any dispute arising out of such use of the website is subject to the laws of Italy.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3><b>Disclaimer<\\/b><\\/h3>\\r\\n<p>The\\u00a0 contents of this website are created by the users of GEM Nexus and reflect their personal opinions. We trust that users endeavour to provide correct and updated information, we are not in a position to make representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore at your own risk.<\\/p>\\r\\n<p>In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.<\\/p>\\r\\n<p>Through this website you are able to link to other websites which are not under the control of the GEM Foundation. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.<\\/p>\\r\\n<p>Every effort is made to keep the website up and running smoothly. However, the GEM Foundation takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2023-03-10 15:26:14\",\"created_by\":210,\"created_by_alias\":\"\",\"modified\":\"2023-03-10 15:26:14\",\"modified_by\":210,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-03-10 15:26:14\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
INSERT INTO `taxonomy_history` VALUES (7,'com_content.article.4','','2023-03-10 15:55:01',210,6021,'dcb3a2ba395a8b10139a01b99d298e6d5e039d69','{\"id\":4,\"asset_id\":99,\"title\":\"Infilled Frame\",\"alias\":\"infilled-frame\",\"introtext\":\"<p>A framework of beams and columns in which some bays of frames are infilled with masonry walls that may or may not be mechanically connected to the frame. Due to great stiffness and strength in their planes, infill walls do not allow the beams and columns to bend under horizontal loading, changing the structural performance of the frame. During an earthquake, diagonal compression struts form in the infills so the structure behaves more like a Braced Frame rather than a Moment Frame. Infill walls can be part-height or completely fill the frame.<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_-_charleson_1_400x281.jpg\\\" alt=\\\"LFINF_-_Charleson_1\\\" \\/><\\/p>\\r\\n<p>A simplified drawing of an infilled frame structure showing floor slabs supported by beams (adapted from: A. Charleson, <i>Seismic Design for Architects<\\/i>, Architectural Press 2008, p. 64, Fig. 5.2)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_1_369x278.jpg\\\" alt=\\\"LFINF_Allen&amp;Brzev_1\\\" width=\\\"369\\\" height=\\\"278\\\" \\/><\\/p>\\r\\n<p>Partial section of an infilled frame structure<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" style=\\\"float: left;\\\" src=\\\"images\\/LFINF_India_Charleson_1_368x277.jpg\\\" alt=\\\"Infilled Frame 1.JPG\\\" width=\\\"368\\\" height=\\\"277\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">Reinforced concrete frame with brick masonry infill walls, India (A. Charleson)<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_india_brzev_1_400x277.jpg\\\" alt=\\\"LFINF_India_Brzev_1\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: left;\\\">Reinforced concrete frame with brick masonry infills under construction, India (S. Brzev)<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_indonesia_bothara_1_358x269.jpg\\\" alt=\\\"LFINF_Indonesia_Bothara_1\\\" width=\\\"358\\\" height=\\\"269\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame building with concrete block infill walls, Padang, Indonesia (J. Bothara)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_nepal_bothara_1_368x256.jpg\\\" alt=\\\"LFINF_Nepal_Bothara_1\\\" width=\\\"368\\\" height=\\\"256\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame building with brick infill walls under construction, Kathmandu, Nepal (J. Bothara)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_algeria_farsi_1_378x265.jpg\\\" alt=\\\"LFINF_Algeria_Farsi_1\\\" width=\\\"378\\\" height=\\\"265\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame infilled with stone masonry panels in M\'Sila damaged in the 2010 Algeria earthquake (M. Farsi)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_algeria_brzev_1_353x265.jpg\\\" alt=\\\"LFINF_Algeria_Brzev_1\\\" width=\\\"353\\\" height=\\\"265\\\" \\/><\\/p>\\r\\n<p>This reinforced concrete frame building with hollow clay tile infills in Algiers was under construction at the time of the 2003 Boumerdes, Algeria earthquake, and it suffered damage at the first storey level (S. Brzev)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_uganda_lemkuhl_1_329x246.jpg\\\" alt=\\\"LFINF_Uganda_Lemkuhl_1\\\" width=\\\"329\\\" height=\\\"246\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame building with hollow clay block infills, Uganda (E. Lemkuhl)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_tangier_morocco_scawthorn_1_382x323.jpg\\\" alt=\\\"LFINF_Tangier_Morocco_Scawthorn_1\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame with masonry infills, Tangier, Morocco (C. Scawthorn)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_rabbat_morocco_scawthorn_2_286x232.jpg\\\" alt=\\\"LFINF_Rabbat_Morocco_Scawthorn_2\\\" width=\\\"286\\\" height=\\\"232\\\" \\/><\\/p>\\r\\n<p>Detail of a reinforced concrete frame with hollow clay tile infill, Rabbat, Morocco (C. Scawthorn)<\\/p>\\r\\n<p><img class=\\\"image-inline\\\" src=\\\"images\\/lfinf_vietnam_scawthorn_1_265x353.jpg\\\" alt=\\\"LFINF_Vietnam_Scawthorn_1\\\" width=\\\"265\\\" height=\\\"353\\\" \\/><\\/p>\\r\\n<p>Reinforced concrete frame with masonry infills under construction, Vietnam (C. Scawthorn)<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2023-03-10 15:55:01\",\"created_by\":210,\"created_by_alias\":\"\",\"modified\":\"2023-03-10 15:55:01\",\"modified_by\":210,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-03-10 15:55:01\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_menu`
--

LOCK TABLES `taxonomy_menu` WRITE;
/*!40000 ALTER TABLE `taxonomy_menu` DISABLE KEYS */;
INSERT INTO `taxonomy_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,59,0,'*',0,NULL,NULL);
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
INSERT INTO `taxonomy_menu` VALUES (101,'mainmenu','Glossary for GEM Taxonomy','homepage','','homepage','index.php?option=com_finder&view=search','component',1,1,1,23,NULL,NULL,0,1,' ',0,'{\"show_date_filters\":\"\",\"show_advanced\":\"\",\"expand_advanced\":\"\",\"show_taxonomy\":\"\",\"show_description\":\"\",\"description_length\":\"\",\"show_image\":\"\",\"image_class\":\"\",\"link_image\":\"\",\"show_date\":\"\",\"show_url\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"list_limit\":\"20\",\"allow_empty_query\":\"\",\"show_suggested_query\":\"\",\"show_explained_query\":\"\",\"sort_order\":\"\",\"sort_direction\":\"\",\"show_feed_link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (102,'mainmenu','term','terms','','terms','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',43,44,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (103,'mainmenu','about','about','','about','index.php?option=com_content&view=article&id=2','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',45,46,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (104,'mainmenu','term of use','term-of-use','','term-of-use','index.php?option=com_content&view=article&id=3','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',47,48,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (105,'usermenu','My Profile','your-profile','','your-profile','index.php?option=com_users&view=profile','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',49,50,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (106,'usermenu','Submit new definition','submit-an-article','','submit-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"enable_category\":\"0\",\"catid\":\"\",\"redirect_menuitem\":\"\",\"custom_cancel_redirect\":\"0\",\"cancel_redirect_menuitem\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',51,52,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (107,'usermenu','Site Administrator','2013-11-16-23-26-41','','2013-11-16-23-26-41','administrator','url',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',53,54,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (108,'usermenu','Template Settings','template-settings','','template-settings','index.php?option=com_config&view=templates','component',1,1,1,20,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',55,56,0,'*',0,NULL,NULL);
INSERT INTO `taxonomy_menu` VALUES (109,'usermenu','Site Settings','site-settings','','site-settings','index.php?option=com_config&view=config','component',1,1,1,20,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',57,58,0,'*',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_menu_types`
--

LOCK TABLES `taxonomy_menu_types` WRITE;
/*!40000 ALTER TABLE `taxonomy_menu_types` DISABLE KEYS */;
INSERT INTO `taxonomy_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0);
INSERT INTO `taxonomy_menu_types` VALUES (3,98,'usermenu','User Menu','',0);
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
INSERT INTO `taxonomy_modules` VALUES (17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*');
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
INSERT INTO `taxonomy_session` VALUES (_binary '67c2590ab2f5c3f8fa708b88468f4069',1,0,1678464508,'joomla|s:3452:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjI3MTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2Nzg0NTk1Mzg7czo0OiJsYXN0IjtpOjE2Nzg0NjQ1MDg7czozOiJub3ciO2k6MTY3ODQ2NDUwODt9czo1OiJ0b2tlbiI7czozMjoiYTZjMDQ2ZDYwYjJjNjA4N2VjYmQ2MmY5YWQ2MzNhOTIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Njp7czoxNDoiY29tX2NhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6MTA6ImNhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiZXh0ZW5zaW9uIjtzOjExOiJjb21fY29udGVudCI7fXM6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO31zOjU6Im1vZGFsIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJjYXRlZ29yeSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fXM6NzoiY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6Im1lbnUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjE6e2k6MDtpOjE7fX1zOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Nzp7czo5OiJwdWJsaXNoZWQiO3M6MToiKiI7czo4OiJtZW51dHlwZSI7czo4OiJ1c2VybWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjY6ImZpbHRlciI7YTo1OntzOjY6InNlYXJjaCI7czowOiIiO3M6OToicHVibGlzaGVkIjtzOjE6IioiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czo1OiJsZXZlbCI7czowOiIiO3M6OToicGFyZW50X2lkIjtzOjA6IiI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjk6ImEubGZ0IEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6Njoic2VhcmNoIjtzOjA6IiI7fX1zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjk6ImNsaWVudF9pZCI7czoxOiIwIjtzOjE6IjEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiY2xpZW50X2lkIjtpOjE7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5wb3NpdGlvbiI7czo1OiJzdGFydCI7ZDowO319fX1zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6InVzZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aToyMTA7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',210,'admin');
INSERT INTO `taxonomy_session` VALUES (_binary '880742524fbd0c4ba7872df5fb4a9c5c',0,1,1678463701,'joomla|s:1156:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjQxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODQ1OTUwNjtzOjQ6Imxhc3QiO2k6MTY3ODQ2MzcwMTtzOjM6Im5vdyI7aToxNjc4NDYzNzAxO31zOjU6InRva2VuIjtzOjMyOiI3MmMyOWY5ODUyZjIzYWZjYTE0ZWY2MGZhNmZkZDRmMCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjI5OiJodHRwOi8vMTcyLjMwLjEwLjY1L2luZGV4LnBocCI7czo0OiJkYXRhIjthOjU6e3M6NjoicmV0dXJuIjtzOjI5OiJodHRwOi8vMTcyLjMwLjEwLjY1L2luZGV4LnBocCI7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6ODoicGFzc3dvcmQiO3M6MDoiIjtzOjk6InNlY3JldGtleSI7czowOiIiO3M6ODoicmVtZW1iZXIiO2k6MDt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,'');
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
INSERT INTO `taxonomy_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',210,'2023-03-10 14:44:54','',210,'2023-03-10 14:44:54','','',0,'*',1,NULL,NULL);
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
INSERT INTO `taxonomy_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1678463505,'',NULL,NULL);
INSERT INTO `taxonomy_update_sites` VALUES (2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_4.xml',1,1678463505,'',NULL,NULL);
INSERT INTO `taxonomy_update_sites` VALUES (3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1678463505,'',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_updates`
--

LOCK TABLES `taxonomy_updates` WRITE;
/*!40000 ALTER TABLE `taxonomy_updates` DISABLE KEYS */;
INSERT INTO `taxonomy_updates` VALUES (51,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/af-ZA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (52,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'4.0.2.1','','https://update.joomla.org/language/details4/ar-AA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (53,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/bg-BG_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (54,2,0,'Catalan','','pkg_ca-ES','package','',0,'4.0.4.2','','https://update.joomla.org/language/details4/ca-ES_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (55,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'4.2.0.1','','https://update.joomla.org/language/details4/zh-CN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (56,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'4.2.3.1','','https://update.joomla.org/language/details4/zh-TW_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (57,2,0,'Czech','','pkg_cs-CZ','package','',0,'4.2.0.1','','https://update.joomla.org/language/details4/cs-CZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (58,2,0,'Danish','','pkg_da-DK','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/da-DK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (59,2,0,'Dutch','','pkg_nl-NL','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/nl-NL_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (60,2,0,'English, Australia','','pkg_en-AU','package','',0,'4.2.8.2','','https://update.joomla.org/language/details4/en-AU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (61,2,0,'English, Canada','','pkg_en-CA','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-CA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (62,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-NZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (63,2,0,'English, USA','','pkg_en-US','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/en-US_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (64,2,0,'Estonian','','pkg_et-EE','package','',0,'4.2.7.3','','https://update.joomla.org/language/details4/et-EE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (65,2,0,'Finnish','','pkg_fi-FI','package','',0,'4.1.1.2','','https://update.joomla.org/language/details4/fi-FI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (66,2,0,'Flemish','','pkg_nl-BE','package','',0,'4.2.6.1','','https://update.joomla.org/language/details4/nl-BE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (67,2,0,'French','','pkg_fr-FR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/fr-FR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (68,2,0,'Georgian','','pkg_ka-GE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ka-GE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (69,2,0,'German','','pkg_de-DE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-DE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (70,2,0,'German, Austria','','pkg_de-AT','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-AT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (71,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-LI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (72,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-LU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (73,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/de-CH_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (74,2,0,'Greek','','pkg_el-GR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/el-GR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (75,2,0,'Hungarian','','pkg_hu-HU','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/hu-HU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (76,2,0,'Irish','','pkg_ga-IE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ga-IE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (77,2,0,'Italian','','pkg_it-IT','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/it-IT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (78,2,0,'Japanese','','pkg_ja-JP','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ja-JP_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (79,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/kk-KZ_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (80,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'4.2.6.1','','https://update.joomla.org/language/details4/lt-LT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (81,2,0,'Macedonian','','pkg_mk-MK','package','',0,'4.2.4.1','','https://update.joomla.org/language/details4/mk-MK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (82,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'4.0.1.1','','https://update.joomla.org/language/details4/nb-NO_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (83,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/fa-IR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (84,2,0,'Polish','','pkg_pl-PL','package','',0,'4.2.8.2','','https://update.joomla.org/language/details4/pl-PL_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (85,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'4.0.3.1','','https://update.joomla.org/language/details4/pt-BR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (86,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'4.0.0-rc4.2','','https://update.joomla.org/language/details4/pt-PT_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (87,2,0,'Romanian','','pkg_ro-RO','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ro-RO_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (88,2,0,'Russian','','pkg_ru-RU','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ru-RU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (89,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/sr-RS_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (90,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'4.2.5.1','','https://update.joomla.org/language/details4/sr-YU_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (91,2,0,'Slovak','','pkg_sk-SK','package','',0,'4.0.6.1','','https://update.joomla.org/language/details4/sk-SK_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (92,2,0,'Slovenian','','pkg_sl-SI','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/sl-SI_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (93,2,0,'Spanish','','pkg_es-ES','package','',0,'4.2.3.1','','https://update.joomla.org/language/details4/es-ES_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (94,2,0,'Swedish','','pkg_sv-SE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/sv-SE_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (95,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'4.2.7.1','','https://update.joomla.org/language/details4/ta-IN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (96,2,0,'Thai','','pkg_th-TH','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/th-TH_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (97,2,0,'Turkish','','pkg_tr-TR','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/tr-TR_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (98,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'4.2.5.1','','https://update.joomla.org/language/details4/uk-UA_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (99,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'4.2.2.1','','https://update.joomla.org/language/details4/vi-VN_details.xml','','','');
INSERT INTO `taxonomy_updates` VALUES (100,2,0,'Welsh','','pkg_cy-GB','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/cy-GB_details.xml','','','');
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
INSERT INTO `taxonomy_user_profiles` VALUES (210,'joomlatoken.enabled','1',2);
INSERT INTO `taxonomy_user_profiles` VALUES (210,'joomlatoken.token','nwJWy2h0WMFavJ0kuLKMUjE61VlfVI1WQwRn00jGzpk=',1);
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
INSERT INTO `taxonomy_user_usergroup_map` VALUES (210,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_users`
--

LOCK TABLES `taxonomy_users` WRITE;
/*!40000 ALTER TABLE `taxonomy_users` DISABLE KEYS */;
INSERT INTO `taxonomy_users` VALUES (210,'admin','admin','devops@openquake.org','$2y$10$wzeWfbvjFHZ5V60WpAoeM.oW11k7MDTDaWiMmIdBaPMZZekMI9sL2',0,1,'2023-03-10 14:44:58','2023-03-10 14:46:37','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}',NULL,0,'','',0,'');
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
INSERT INTO `taxonomy_workflow_associations` VALUES (1,1,'com_content.article');
INSERT INTO `taxonomy_workflow_associations` VALUES (2,1,'com_content.article');
INSERT INTO `taxonomy_workflow_associations` VALUES (3,1,'com_content.article');
INSERT INTO `taxonomy_workflow_associations` VALUES (4,1,'com_content.article');
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
INSERT INTO `taxonomy_workflows` VALUES (1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2023-03-10 14:44:54',210,'2023-03-10 14:44:54',210,NULL,NULL);
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

-- Dump completed on 2023-03-10 16:12:16
