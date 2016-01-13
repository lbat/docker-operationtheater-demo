CREATE DATABASE  IF NOT EXISTS `openmrs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `openmrs`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: openmrs
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `concept_set`
--

DROP TABLE IF EXISTS `concept_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept_set` (
  `concept_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `concept_id` int(11) NOT NULL DEFAULT '0',
  `concept_set` int(11) NOT NULL DEFAULT '0',
  `sort_weight` double DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`concept_set_id`),
  UNIQUE KEY `concept_set_uuid_index` (`uuid`),
  KEY `idx_concept_set_concept` (`concept_id`),
  KEY `has_a` (`concept_set`),
  KEY `user_who_created` (`creator`),
  CONSTRAINT `has_a` FOREIGN KEY (`concept_set`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `user_who_created` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept_set`
--

LOCK TABLES `concept_set` WRITE;
/*!40000 ALTER TABLE `concept_set` DISABLE KEYS */;
INSERT INTO `concept_set` VALUES (8,48,160212,1,1,'2011-06-12 22:59:22','8AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(18,111,160171,0,1,'2011-06-09 23:34:08','18AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(26,124,160171,1,1,'2011-06-09 23:34:08','26AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(32,140,160179,1,1,'2011-06-12 21:57:29','32AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(35,155,160176,0,1,'2011-06-11 01:40:46','35AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(36,199,160171,5,1,'2011-06-09 23:34:08','36AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(38,206,160168,1,1,'2011-06-09 00:39:52','38AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(42,230,160212,0,1,'2011-06-12 22:59:22','42AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(49,460,160168,2,1,'2011-06-09 00:39:52','49AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(58,512,160179,4,1,'2011-06-12 21:57:29','58AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(96,832,160180,9,1,'2011-06-12 22:14:35','96AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(98,840,160181,10,1,'2011-06-12 22:43:24','98AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(101,879,160179,8,1,'2011-06-12 21:57:29','101AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(106,892,160168,28,1,'2011-06-09 22:22:03','106AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(153,1226,160169,0,1,'2011-06-09 22:30:35','153AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(164,1284,159947,0,1,'2010-12-14 02:44:15','164AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(165,1293,160171,11,1,'2011-06-09 23:34:08','165AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(188,1490,160175,1,1,'2011-06-09 01:57:33','188AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(258,5018,160170,0,1,'2011-06-09 23:11:20','258AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(322,5258,160176,1,1,'2011-06-11 01:40:46','322AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(342,5340,160170,1,1,'2011-06-09 23:11:20','342AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(423,110598,160168,8,1,'2011-06-09 00:39:52','423AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(424,110834,160171,2,1,'2011-06-09 23:34:08','424AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(425,111633,160181,0,1,'2011-06-12 22:43:24','425AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(426,111636,160181,5,1,'2011-06-12 22:43:24','426AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(427,112198,160172,2,1,'2011-06-09 01:21:51','427AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(428,112287,160172,0,1,'2011-06-09 01:21:51','428AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(429,112561,160175,5,1,'2011-06-09 01:57:33','429AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(430,112989,160168,10,1,'2011-06-09 00:39:52','430AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(431,112992,160213,0,1,'2011-06-12 23:38:10','431AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(432,113087,160174,4,1,'2011-06-09 01:42:38','432AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(433,113155,160177,1,1,'2011-06-11 15:42:43','433AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(434,113228,160174,2,1,'2011-06-09 01:42:38','434AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(435,113230,160174,3,1,'2011-06-09 01:42:38','435AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(436,113279,160212,8,1,'2011-06-12 23:17:38','436AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(437,113881,160177,3,1,'2011-06-11 15:42:43','437AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(438,113926,160212,16,1,'2011-06-12 23:17:38','438AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(439,114100,160178,1,1,'2011-06-12 02:29:21','439AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(440,114174,160174,5,1,'2011-06-09 01:42:38','440AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(441,114262,160171,6,1,'2011-06-09 23:34:08','441AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(442,114431,160173,1,1,'2011-06-09 01:32:32','442AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(443,115191,160169,5,1,'2011-06-09 22:30:35','443AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(445,115491,160212,4,1,'2011-06-12 22:59:22','445AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(446,115797,160180,6,1,'2011-06-12 22:14:35','446AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(447,115835,160168,5,1,'2011-06-09 00:39:52','447AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(448,116128,160168,0,1,'2011-06-09 00:39:52','448AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(449,116214,160174,7,1,'2011-06-09 01:42:38','449AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(450,116344,160168,3,1,'2011-06-09 00:39:52','450AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(451,116376,160174,8,1,'2011-06-09 01:46:57','451AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(452,116474,160180,1,1,'2011-06-12 22:14:35','452AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(453,116543,160175,0,1,'2011-06-09 01:57:33','453AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(454,116700,160171,28,1,'2011-06-09 23:34:08','454AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(455,117146,160213,2,1,'2011-06-12 23:38:10','455AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(456,117152,160171,10,1,'2011-06-09 23:34:08','456AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(457,117315,160180,10,1,'2011-06-12 22:40:11','457AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(458,117386,160174,0,1,'2011-06-09 01:42:38','458AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(459,117543,160170,5,1,'2011-06-09 23:19:40','459AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(460,117543,160179,7,1,'2011-06-12 21:57:29','460AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(461,117617,160212,5,1,'2011-06-12 22:59:22','461AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(462,117767,160213,6,1,'2011-06-12 23:38:10','462AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(463,117829,160213,5,1,'2011-06-12 23:38:10','463AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(464,117889,160171,3,1,'2011-06-09 23:34:08','464AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(465,118652,160176,3,1,'2011-06-11 01:40:46','465AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(467,118771,160181,2,1,'2011-06-12 22:43:24','467AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(468,118789,160171,32,1,'2011-06-09 23:34:08','468AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(469,119027,160175,6,1,'2011-06-09 01:57:33','469AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(470,119112,160176,4,1,'2011-06-11 01:40:46','470AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(471,119204,160180,8,1,'2011-06-12 22:14:35','471AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(472,119222,160172,3,1,'2011-06-09 01:21:51','472AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(473,119240,160173,2,1,'2011-06-09 01:37:41','473AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(474,119356,160171,15,1,'2011-06-09 23:34:08','474AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(475,119481,160180,3,1,'2011-06-12 22:14:35','475AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(476,119506,160179,9,1,'2011-06-12 21:57:29','476AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(477,119523,160179,10,1,'2011-06-12 21:57:29','477AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(478,119537,160177,0,1,'2011-06-11 15:42:43','478AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(479,119558,160182,0,1,'2011-06-12 23:53:07','479AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(480,119656,160179,5,1,'2011-06-12 21:57:29','480AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(481,119685,160181,9,1,'2011-06-12 22:43:24','481AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(482,120194,160212,19,1,'2011-06-12 23:17:38','482AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(483,120939,160179,2,1,'2011-06-12 21:57:29','483AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(484,121262,160168,14,1,'2011-06-09 22:22:03','484AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(485,121372,160178,4,1,'2011-06-12 02:29:21','485AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(486,121375,160178,2,1,'2011-06-12 02:29:21','486AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(487,121452,160175,9,1,'2011-06-09 02:21:44','487AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(488,121629,160169,2,1,'2011-06-09 22:30:35','488AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(489,122604,160171,4,1,'2011-06-09 23:34:08','489AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(490,123052,160180,7,1,'2011-06-12 22:14:35','490AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(491,123123,160172,1,1,'2011-06-09 01:21:51','491AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(492,123529,160181,1,1,'2011-06-12 22:43:24','492AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(493,123620,160212,7,1,'2011-06-12 23:17:38','493AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(494,123841,160212,11,1,'2011-06-12 23:17:38','494AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(495,124129,160171,18,1,'2011-06-09 23:34:08','495AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(496,124456,160168,27,1,'2011-06-09 22:22:03','496AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(497,124954,160212,15,1,'2011-06-12 23:17:38','497AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(498,124957,160176,5,1,'2011-06-11 01:40:46','498AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(499,125165,160168,9,1,'2011-06-09 00:39:52','499AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(500,125343,160175,2,1,'2011-06-09 01:57:33','500AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(501,125379,160175,3,1,'2011-06-09 01:57:33','501AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(502,126127,160212,10,1,'2011-06-12 23:17:38','502AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(503,126208,160176,6,1,'2011-06-11 01:40:46','503AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(504,126558,160171,14,1,'2011-06-09 23:34:08','504AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(505,127579,160181,6,1,'2011-06-12 22:43:24','505AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(506,127990,160168,29,1,'2011-06-09 22:22:03','506AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(507,128099,160182,2,1,'2011-06-12 23:53:07','507AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(508,128126,160178,8,1,'2011-06-12 02:29:21','508AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(509,129211,160212,6,1,'2011-06-12 22:59:22','509AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(510,129473,160169,4,1,'2011-06-09 22:30:35','510AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(511,129566,160175,4,1,'2011-06-09 01:57:33','511AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(512,131113,160173,0,1,'2011-06-09 01:32:32','512AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(513,132636,160180,0,1,'2011-06-12 22:14:35','513AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(514,133414,160172,4,1,'2011-06-09 01:28:41','514AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(515,134213,160176,2,1,'2011-06-11 01:40:46','515AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(516,134337,160177,8,1,'2011-06-11 16:17:38','516AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(517,134561,160168,7,1,'2011-06-09 00:39:52','517AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(518,135462,160213,4,1,'2011-06-12 23:38:10','518AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(520,135488,160169,1,1,'2011-06-09 22:30:35','520AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(521,136443,160171,8,1,'2011-06-09 23:34:08','521AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(522,136677,160171,13,1,'2011-06-09 23:34:08','522AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(523,136758,160212,17,1,'2011-06-12 23:17:38','523AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(524,137293,160179,6,1,'2011-06-12 21:57:29','524AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(525,137352,160171,16,1,'2011-06-09 23:34:08','525AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(526,137355,160171,17,1,'2011-06-09 23:34:08','526AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(527,137998,160212,3,1,'2011-06-12 22:59:22','527AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(528,138291,160169,3,1,'2011-06-09 22:30:35','528AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(529,138405,160170,6,1,'2011-06-09 23:19:40','529AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(530,138706,160179,3,1,'2011-06-12 21:57:29','530AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(531,138849,160174,6,1,'2011-06-09 01:42:38','531AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(532,138868,160171,7,1,'2011-06-09 23:34:08','532AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(534,139084,160168,6,1,'2011-06-09 00:39:52','534AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(535,139277,160213,3,1,'2011-06-12 23:38:10','535AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(536,139355,160181,8,1,'2011-06-12 22:43:24','536AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(537,139502,160212,9,1,'2011-06-12 23:17:38','537AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(538,140061,160171,30,1,'2011-06-09 23:34:08','538AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(539,140474,160212,14,1,'2011-06-12 23:17:38','539AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(540,140501,160168,4,1,'2011-06-09 00:39:52','540AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(541,140987,160174,1,1,'2011-06-09 01:42:38','541AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(542,141216,160171,27,1,'2011-06-09 23:34:08','542AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(543,141600,160178,3,1,'2011-06-12 02:29:21','543AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(544,142473,160180,4,1,'2011-06-12 22:14:35','544AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(545,143264,160178,0,1,'2011-06-12 02:29:21','545AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(546,143388,160212,18,1,'2011-06-12 23:17:38','546AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(547,145131,160171,19,1,'2011-06-09 23:34:08','547AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(548,145762,160213,1,1,'2011-06-12 23:38:10','548AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(550,147241,160168,11,1,'2011-06-09 00:39:52','550AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(551,148023,160171,9,1,'2011-06-09 23:34:08','551AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(552,148353,160171,12,1,'2011-06-09 23:34:08','552AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(553,149496,160178,6,1,'2011-06-12 02:29:21','553AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(554,149579,160178,5,1,'2011-06-12 02:29:21','554AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(555,150555,160179,0,1,'2011-06-12 21:57:29','555AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(556,150803,160181,7,1,'2011-06-12 22:43:24','556AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(557,152065,160168,12,1,'2011-06-09 00:39:52','557AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(558,152202,160180,2,1,'2011-06-12 22:14:35','558AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(559,152306,160168,25,1,'2011-06-09 22:22:03','559AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(560,155232,160171,24,1,'2011-06-09 23:34:08','560AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(561,158995,160175,10,1,'2011-06-09 02:37:21','561AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(564,159394,159947,2,1,'2010-12-14 02:44:15','564AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(584,159946,159947,3,1,'2010-12-14 02:44:15','584AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(585,159948,159947,4,1,'2010-12-14 02:46:37','585AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(630,160139,160182,1,1,'2011-06-12 23:53:07','630AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(631,160141,160182,3,1,'2011-06-12 23:53:07','631AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(632,160142,160182,4,1,'2011-06-12 23:53:07','632AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(633,160143,160171,20,1,'2011-06-09 23:34:08','633AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(634,160144,160168,13,1,'2011-06-09 22:22:03','634AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(635,160146,160168,15,1,'2011-06-09 22:22:03','635AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(636,160147,160168,16,1,'2011-06-09 22:22:03','636AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(637,160148,160168,17,1,'2011-06-09 22:22:03','637AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(638,160149,160168,23,1,'2011-06-09 22:22:03','638AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(639,160150,160168,19,1,'2011-06-09 22:22:03','639AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(640,160151,160168,21,1,'2011-06-09 22:22:03','640AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(641,160152,160168,18,1,'2011-06-09 22:22:03','641AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(642,160153,160168,22,1,'2011-06-09 22:22:03','642AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(643,160154,160168,20,1,'2011-06-09 22:22:03','643AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(644,160155,160168,24,1,'2011-06-09 22:22:03','644AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(645,160156,160168,26,1,'2011-06-09 22:22:03','645AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(646,160157,160171,26,1,'2011-06-09 23:34:08','646AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(647,160158,160170,2,1,'2011-06-09 23:11:20','647AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(648,160159,160170,3,1,'2011-06-09 23:11:20','648AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(649,160161,160170,4,1,'2011-06-09 23:19:40','649AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(650,160163,160171,21,1,'2011-06-09 23:34:08','650AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(651,160164,160171,22,1,'2011-06-09 23:34:08','651AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(652,160165,160171,23,1,'2011-06-09 23:34:08','652AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(653,160166,160171,25,1,'2011-06-09 23:34:08','653AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(654,160168,160167,0,1,'2011-06-09 02:42:30','654AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(655,160169,160167,1,1,'2011-06-09 02:42:30','655AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(656,160170,160167,2,1,'2011-06-09 02:48:12','656AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(657,160171,160167,3,1,'2011-06-09 02:42:30','657AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(658,160172,160167,4,1,'2011-06-09 02:42:30','658AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(659,160173,160167,5,1,'2011-06-09 02:42:30','659AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(660,160174,160167,6,1,'2011-06-09 02:42:30','660AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(661,160175,160167,7,1,'2011-06-09 02:48:12','661AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(662,160176,160167,8,1,'2011-06-09 02:41:03','662AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(663,160177,160167,9,1,'2011-06-09 02:41:03','663AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(664,160178,160167,10,1,'2011-06-09 02:42:30','664AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(665,160179,160167,11,1,'2011-06-09 02:41:03','665AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(666,160180,160167,12,1,'2011-06-09 02:42:30','666AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(667,160181,160167,13,1,'2011-06-09 02:41:03','667AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(668,160182,160167,16,1,'2011-06-09 02:41:03','668AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(669,160186,160175,8,1,'2011-06-09 02:20:47','669AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(670,160187,160175,7,1,'2011-06-09 02:20:47','670AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(671,160188,160175,11,1,'2011-06-09 02:37:21','671AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(672,160189,160171,29,1,'2011-06-09 23:34:08','672AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(673,160190,160171,31,1,'2011-06-09 23:34:08','673AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(674,160195,160176,7,1,'2011-06-11 01:40:46','674AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(675,160196,160177,2,1,'2011-06-11 15:42:43','675AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(676,160197,160177,4,1,'2011-06-11 15:42:43','676AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(677,160198,160177,5,1,'2011-06-11 16:17:38','677AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(678,160199,160177,6,1,'2011-06-11 16:17:38','678AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(679,160200,160177,7,1,'2011-06-11 16:17:38','679AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(680,160201,160178,7,1,'2011-06-12 02:29:21','680AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(681,160202,160213,7,1,'2011-06-12 23:46:05','681AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(682,160203,160178,9,1,'2011-06-12 02:29:21','682AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(683,160204,160178,10,1,'2011-06-12 02:29:21','683AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(684,160205,160180,5,1,'2011-06-12 22:14:35','684AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(685,160206,160181,3,1,'2011-06-12 22:43:24','685AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(686,160207,160212,2,1,'2011-06-12 22:59:22','686AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(687,160208,160181,4,1,'2011-06-12 22:43:24','687AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(688,160210,160212,12,1,'2011-06-12 23:17:38','688AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(689,160211,160212,13,1,'2011-06-12 23:17:38','689AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(690,160212,160167,14,1,'2011-06-12 23:01:47','690AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(691,160213,160167,15,1,'2011-06-13 17:51:16','691AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE'),(1137,161602,159947,1,1,'2013-03-02 07:24:10','1137AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE');
/*!40000 ALTER TABLE `concept_set` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-14 17:59:27