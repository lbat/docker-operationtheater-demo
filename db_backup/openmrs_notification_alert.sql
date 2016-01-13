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
-- Table structure for table `notification_alert`
--

DROP TABLE IF EXISTS `notification_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_alert` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(512) NOT NULL,
  `satisfied_by_any` tinyint(1) NOT NULL DEFAULT '0',
  `alert_read` tinyint(1) NOT NULL DEFAULT '0',
  `date_to_expire` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`alert_id`),
  UNIQUE KEY `notification_alert_uuid_index` (`uuid`),
  KEY `alert_date_to_expire_idx` (`date_to_expire`),
  KEY `user_who_changed_alert` (`changed_by`),
  KEY `alert_creator` (`creator`),
  CONSTRAINT `alert_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_changed_alert` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_alert`
--

LOCK TABLES `notification_alert` WRITE;
/*!40000 ALTER TABLE `notification_alert` DISABLE KEYS */;
INSERT INTO `notification_alert` VALUES (1,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-12 15:10:49',1,'2014-06-13 08:51:33','8e38f5fb-fc14-4c92-ae4d-1b2164b4fbb6'),(2,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-12 15:23:12',1,'2014-06-13 08:51:33','6abc5591-3729-498b-8d9e-c12c3cf6fdb9'),(3,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-13 08:40:02',1,'2014-06-13 08:51:32','27a5225a-757e-407c-8854-0f01b8936fc4'),(4,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-13 08:55:24',1,'2014-06-16 14:16:33','3d50d9e7-ccd2-4b7a-8c56-6311419d6507'),(5,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-13 13:52:45',1,'2014-06-16 14:16:33','ec4174f1-0b8d-462d-97cc-d21d5ed7f73f'),(6,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-13 14:02:30',1,'2014-06-16 14:16:34','c6f95b3d-979a-4025-b0be-ec8669a987fa'),(7,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-13 14:13:14',1,'2014-06-16 14:16:34','38d7ff6a-30c9-4a73-aee6-9a0a03b3b5a4'),(8,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 07:59:23',1,'2014-06-16 14:16:34','9cd4050b-c664-486f-a74b-0f28b2eb5c45'),(9,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 08:33:00',1,'2014-06-16 14:16:35','78cd4431-4acc-42ce-b7c1-6745e3700928'),(10,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 09:26:10',1,'2014-06-16 14:16:35','7b38cc45-41c8-4215-8e3f-0e4ccf7613b4'),(11,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 10:09:36',1,'2014-06-16 14:16:35','a0fab962-d479-4ffe-a7d1-eacd37e22e4f'),(12,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 10:16:32',1,'2014-06-16 14:16:35','c4fa6b51-ecde-4919-8a7b-eebcc52bbec5'),(13,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 13:48:35',1,'2014-06-16 14:16:35','36735a43-18fa-4a69-96b3-c64ca4f1e269'),(14,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-16 14:03:14',1,'2014-06-16 14:16:36','0b9251db-3f61-49be-aa0a-1c16af779f7d'),(15,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 08:40:39',1,'2014-06-19 19:45:32','903a8b18-cbb0-4cd9-acb7-fc86ce597082'),(16,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 08:40:47',1,'2014-06-19 19:45:33','81f89914-8454-4084-afcb-98976b9bb4b2'),(17,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 09:15:43',1,'2014-06-19 19:45:33','7dc74053-cbb6-43f1-8a41-a03085b7e83c'),(18,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 09:45:39',1,'2014-06-19 19:45:33','08190972-cd52-444c-8620-2c2a348d82d5'),(19,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 09:52:34',1,'2014-06-19 19:45:33','45fef5f4-be45-407f-976a-0f4dba230667'),(20,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 10:00:03',1,'2014-06-19 19:45:33','d2a162de-2ac8-437c-87c2-54374b3eb2c5'),(21,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 10:11:15',1,'2014-06-19 19:45:34','7bfdb873-efc2-43a6-93bd-eec60db35153'),(22,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 10:21:30',1,'2014-06-19 19:45:34','29f9a13a-73ef-46a7-b42c-4a9056f1e8ff'),(23,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 10:46:04',1,'2014-06-19 19:45:34','6f4acf4b-e649-429d-ab27-9d8127d37d00'),(24,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 13:32:06',1,'2014-06-19 19:45:34','bc434525-5cbc-4a5d-b4da-d4f5bca5e54d'),(25,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 13:44:18',1,'2014-06-19 19:45:34','ddaf6c7b-19f2-4598-9afb-cd23416813b5'),(26,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 14:21:48',1,'2014-06-19 19:45:35','d900748f-7d9c-4910-8bb5-7c0d8eac5519'),(27,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 14:30:39',1,'2014-06-19 19:45:35','91e0b08b-8ee9-4d9a-a074-5817918e8a83'),(28,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-17 14:55:26',1,'2014-06-19 19:45:35','cf8339de-e974-4105-90b7-2690dd9e8f56'),(29,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-19 10:09:45',1,'2014-06-19 19:45:35','6e1a02e6-79c6-4d21-be34-a77db0416f91'),(30,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-19 11:14:31',1,'2014-06-19 19:45:35','6415fe5a-55ba-40e5-901f-50cbb9661b68'),(31,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-19 13:04:33',1,'2014-06-19 19:45:36','f468dd48-02d0-4671-87e2-cbc925c6e946'),(32,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-19 17:44:32',1,'2014-06-19 19:45:36','a2ef08b5-0157-415b-87df-e1adf57a9bb5'),(33,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-19 17:50:36',1,'2014-06-19 19:45:36','bca8d579-0228-4840-8604-9655d6215ca5'),(34,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-19 18:43:32',1,'2014-06-19 19:45:36','f202eacf-dc34-48b0-bdda-3b23fc91c587'),(35,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-19 19:45:21',1,'2014-06-19 19:45:37','3bfc4211-c324-440a-abac-e6150a3e54d3'),(36,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-19 19:46:01',1,'2014-06-19 19:51:48','c73845f6-6e0f-4f77-baec-c0eba5bae15f'),(37,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-19 19:48:54',1,'2014-06-19 19:51:48','7a9ef39d-8614-45d0-8e42-1ddf03f6cfb5'),(38,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-19 19:55:05',1,'2014-06-19 19:57:37','a73891b3-b6fc-4a9c-85e8-972e8a7501d7'),(39,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-23 12:09:33',1,'2014-06-24 08:59:06','51dd92e4-6f4e-47a4-9f1a-428b105bb8df'),(40,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-06-24 09:03:40',1,'2014-06-27 12:41:09','11497143-3420-4ea0-a579-1edaddb4e43c'),(41,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-27 12:38:45',1,'2014-06-30 16:44:01','6b2362da-b564-4b84-bbd5-bf2a593191bf'),(42,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-27 12:43:31',1,'2014-06-30 16:44:01','4ae9ef7f-00d1-47a0-90f0-3b16cb987f6d'),(43,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-30 10:18:57',1,'2014-06-30 16:44:01','ba6bbd09-ce78-4eb1-b745-7527d2205ac3'),(44,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-30 15:17:46',1,'2014-06-30 16:44:01','e7003deb-ef0e-4d1f-9633-8b45f229003f'),(45,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-30 15:48:49',1,'2014-06-30 16:44:02','28cc42fe-4a85-4216-8337-92274ea85d08'),(46,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-06-30 16:30:11',1,'2014-06-30 16:44:02','2ca88dbb-3801-4511-acf7-7090ebc61914'),(47,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 07:59:20',1,'2014-07-02 08:59:54','6b2a515d-d474-481a-83d7-d1dde14b756d'),(48,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 11:22:47',1,'2014-07-02 08:59:54','35d67108-6c41-495b-aee6-43a1a791f158'),(49,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 11:36:04',1,'2014-07-02 08:59:55','d215b0f1-4dc0-4b3b-9c70-055863fcac49'),(50,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 12:08:14',1,'2014-07-02 08:59:55','ce702dfb-8c69-4f0a-ac87-a7c8e74b80fd'),(51,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 14:50:07',1,'2014-07-02 08:59:55','7b8eb532-4cc3-4486-949f-a1de47af467f'),(52,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 15:17:08',1,'2014-07-02 08:59:55','7323af41-87fc-4a49-a4dd-0f20a24885a0'),(53,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-01 15:38:28',1,'2014-07-02 08:59:56','b9e59914-fab0-48d3-a5d0-cca98c8ea1ca'),(54,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 15:41:12',1,'2014-07-02 08:59:56','ceb0f16a-783b-4821-8f40-4db44339ab9f'),(55,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 15:58:56',1,'2014-07-02 08:59:56','db79dea5-851f-446a-89f8-71013f284029'),(56,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 16:47:08',1,'2014-07-02 08:59:57','144cc522-c044-4f36-88e4-6980e88a6f01'),(57,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 18:37:03',1,'2014-07-02 08:59:57','6488106d-ecbb-4b45-a694-0caf624a2e9a'),(58,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 18:47:30',1,'2014-07-02 08:59:57','54ff630f-15c7-497f-a6eb-12f787273554'),(59,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 18:50:57',1,'2014-07-02 08:59:57','dec5b064-11a9-4195-95d9-c499df90bdee'),(60,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 22:03:54',1,'2014-07-02 08:59:57','eed9e197-9c81-48cb-af1a-a59296948329'),(61,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 22:08:53',1,'2014-07-02 08:59:58','e1d52349-94cd-4ff3-97a2-f9795b6acc6c'),(62,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 22:21:55',1,'2014-07-02 08:59:58','8a63536a-7c0b-4400-be78-80dcb1bdce9d'),(63,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 22:38:54',1,'2014-07-02 08:59:58','3e9eaad0-1289-43c8-b1bb-c1c1c3ba5479'),(64,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:08:05',1,'2014-07-02 08:59:58','12a51a13-d3d4-4b2d-bf9e-d362a60605ea'),(65,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:20:41',1,'2014-07-02 08:59:58','99031381-953b-4de3-a3f2-268bb9f94bb1'),(66,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:30:57',1,'2014-07-02 08:59:59','6bdbd12f-9469-4118-b9c9-3ac58674845b'),(67,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:38:27',1,'2014-07-02 08:59:59','32fbdf5d-9610-4374-8b60-04c66602dfc5'),(68,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:48:49',1,'2014-07-02 08:59:59','917f0bd0-4a7d-4f32-b018-68c0c18d5e45'),(69,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-01 23:59:34',1,'2014-07-02 08:59:59','9df26787-96fb-449f-8624-9a15dfc1a872'),(70,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 00:23:27',1,'2014-07-02 08:59:59','8982b62c-2b5d-400b-80e1-a28588b16989'),(71,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 08:13:31',1,'2014-07-02 09:00:00','f1a001eb-3a3d-4f47-bb83-9b7f3fa910c0'),(72,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 09:06:14',1,'2014-07-02 14:11:00','b823ddb4-56c6-424f-a8b4-89f41aa2d679'),(73,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 09:15:15',1,'2014-07-02 14:11:00','415fcd4b-460b-4d7b-9485-7a5c2db011e1'),(74,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 09:27:23',1,'2014-07-02 14:11:00','e760aecc-1b7e-4297-afad-800d12327a7a'),(75,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 09:50:14',1,'2014-07-02 14:11:01','733b5c4f-f2b5-49bc-9722-1378c0793ede'),(76,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 10:38:55',1,'2014-07-02 14:11:01','7794568e-8e14-43db-8700-226e80238451'),(77,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 10:40:51',1,'2014-07-02 14:11:01','b75a4739-390e-4c6f-a6e3-2da7d3da3b95'),(78,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 10:52:15',1,'2014-07-02 14:11:01','1fe9ed16-026d-4ed6-b38d-7ae9d88ee7c3'),(79,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 10:55:08',1,'2014-07-02 14:11:02','98687db6-fa89-4841-917a-8ddd502b86d9'),(80,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 10:59:32',1,'2014-07-02 14:11:02','4d3b4873-7751-404f-b286-714056953cb1'),(81,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-02 11:36:03',1,'2014-07-02 14:11:02','d849027a-528a-405d-98fb-274d2ae79964'),(82,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 12:31:55',1,'2014-07-02 14:11:02','c17ad148-98b2-46fa-b2fb-aeb57766e331'),(83,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 13:55:29',1,'2014-07-02 14:11:02','723c1013-8cf7-455a-8ec2-d7b12269adb2'),(84,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 14:15:01',1,'2014-07-04 09:26:53','1c38ed22-8c75-42df-a419-efba45b5c8a1'),(85,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 15:22:58',1,'2014-07-04 09:26:53','5cb1bcaf-09aa-4d10-9964-b9a341ef637b'),(86,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 16:18:03',1,'2014-07-04 09:26:53','7cf347ac-d7a1-4a51-8355-e89fc233039e'),(87,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 16:28:02',1,'2014-07-04 09:26:53','81622042-c5f2-4525-bedd-a1d024e3237d'),(88,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 16:43:56',1,'2014-07-04 09:26:53','85ec6c30-ceed-4bb3-b93a-f4361eb8650f'),(89,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 16:47:16',1,'2014-07-04 09:26:54','b9c3dab7-9a6b-4081-91eb-23bad564fa83'),(90,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-02 16:52:02',1,'2014-07-04 09:26:54','7a142943-0c31-4fc6-908e-b4507946bcc4'),(91,'There was an error starting the module: find dependency issue Module',1,1,NULL,1,'2014-07-02 16:55:45',1,'2014-07-04 09:26:54','d7cf3d46-dfa2-409e-af01-3842615dcff6'),(92,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 08:59:16',1,'2014-07-04 09:26:54','ae7aeea9-cc2f-4cda-b32c-2b9408316743'),(93,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 09:23:29',1,'2014-07-04 09:26:54','e792a6b2-eb55-4d7d-b671-26b8335b52ce'),(94,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 09:28:34',1,'2014-07-09 09:35:44','7f0471b0-b507-43f4-b5cf-a3986cd2633e'),(95,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 12:12:25',1,'2014-07-09 09:35:44','8e8775a6-a4ce-40ae-b12f-94a6207350e3'),(96,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 12:24:42',1,'2014-07-09 09:35:44','273a52e9-04d8-4a23-b687-65032f0e9d91'),(97,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-04 13:19:17',1,'2014-07-09 09:35:44','840197b9-211c-4d53-a129-59017910c553'),(98,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 13:59:17',1,'2014-07-09 09:35:45','22f5df9d-36c5-4273-b75a-122bd8f236a1'),(99,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-04 16:48:56',1,'2014-07-09 09:35:45','5ff8a99f-8482-437b-90e2-1185f1c7eef0'),(100,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-07 08:51:21',1,'2014-07-09 09:35:45','55e6d536-1079-4c26-8851-b896be23c2f0'),(101,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-07 09:13:53',1,'2014-07-09 09:35:46','e775f038-9194-4fab-9ffb-174bbf07b08e'),(102,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-07 09:15:02',1,'2014-07-09 09:35:47','546a278b-a55b-439c-9eb4-01c58ba6578c'),(103,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-07 09:19:27',1,'2014-07-09 09:35:47','e0769423-8dee-4fc6-b3fa-0dff2fc5053a'),(104,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-07 09:20:48',1,'2014-07-09 09:35:47','4e908004-5f0d-4498-9f58-d3d9131a1bfb'),(105,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-07 09:24:52',1,'2014-07-09 09:35:47','a78d75b0-f63f-486b-8625-779f5beb5abd'),(106,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-07 09:31:57',1,'2014-07-09 09:35:48','66667292-88c5-4f3e-bb74-0b8747b1239e'),(107,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 14:47:48',1,'2014-07-09 09:35:48','da898f16-7364-4af2-9311-53bf20b882d8'),(108,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 14:55:31',1,'2014-07-09 09:35:48','4a480020-13dc-47c2-ba09-462dcb24610c'),(109,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 16:50:01',1,'2014-07-09 09:35:48','8cede95c-dbb4-4256-a3cc-db70922da2c2'),(110,'There was an error starting the module: Core Apps Module',1,1,NULL,1,'2014-07-08 16:51:02',1,'2014-07-09 09:35:48','2854ceef-3682-4564-bada-484df30b6761'),(111,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 16:54:50',1,'2014-07-09 09:35:48','a7777d31-b6c6-4fbb-847b-4e72ae0e5a98'),(112,'There was an error starting the module: Core Apps Module',1,1,NULL,1,'2014-07-08 16:55:51',1,'2014-07-09 09:35:49','c79aafde-6246-4fcd-89bc-1d8886b0c748'),(113,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 16:58:02',1,'2014-07-09 09:35:49','a4f53bb9-9ad0-41af-b13d-5cb91347b7a5'),(114,'There was an error starting the module: EMR Module',1,1,NULL,1,'2014-07-08 17:01:45',1,'2014-07-09 09:35:49','f5c2d786-8ac0-4a2e-aa50-092144e714d1'),(115,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-08 17:39:21',1,'2014-07-09 09:35:49','edefaaaa-27ba-4fc8-b44d-cfc2d2d18ba5'),(116,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 08:09:40',1,'2014-07-09 09:35:49','1dcf1ff2-89bd-415b-a9c1-dbedc5769291'),(117,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 09:26:01',1,'2014-07-09 09:35:49','9e01c4ed-f91b-4d1f-8d1e-c652d3d6856b'),(118,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-09 09:38:46',1,'2014-07-10 18:47:53','20bebed5-f11e-449f-a2ae-ac0b96edb69e'),(119,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 09:40:09',1,'2014-07-10 18:47:53','9a83cae7-56fc-4d40-b12e-4bbd6f5e056c'),(120,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 09:49:45',1,'2014-07-10 18:47:53','4069103b-46c8-4d5a-abf1-8a07f9ffa645'),(121,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 09:54:08',1,'2014-07-10 18:47:53','d4a1fb97-3640-4306-b2de-b74f4cc03232'),(122,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 11:48:56',1,'2014-07-10 18:47:54','2d01e12a-e26f-4c09-8bd0-ee22172ae343'),(123,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 11:55:40',1,'2014-07-10 18:47:54','5fdd584f-441c-47de-b5b2-adfcde073ab5'),(124,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 16:59:58',1,'2014-07-10 18:47:54','c9f5bb96-be26-4fcf-9714-b94dab1b2d38'),(125,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-09 17:03:28',1,'2014-07-10 18:47:54','63fb41c7-d1dc-44c7-9302-6078c850ef4a'),(126,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 08:15:03',1,'2014-07-10 18:47:55','95fc509e-fdf1-486b-b18d-c37ce89608ba'),(127,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 08:26:20',1,'2014-07-10 18:47:55','5d84b6d6-b7f8-4970-91e9-50d3e368839e'),(128,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 09:39:22',1,'2014-07-10 18:47:55','f27913c1-6dc3-4232-b057-69d4c0709379'),(129,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 09:42:45',1,'2014-07-10 18:47:55','aa672c00-e007-4b6c-b209-5b9c30d177d8'),(130,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 10:55:02',1,'2014-07-10 18:47:55','18f9bf6d-3da3-4c0f-9c68-2c9bbcf1217f'),(131,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 11:13:52',1,'2014-07-10 18:47:56','b7faaed3-f59d-4b14-a266-6dfae4b63c0a'),(132,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 11:26:22',1,'2014-07-10 18:47:56','be8849dc-5a02-41a3-b36b-0b2cc49c8747'),(133,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:33:08',1,'2014-07-10 18:47:56','a6090256-b9f0-45bf-b17e-e590969bfbd4'),(134,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:37:39',1,'2014-07-10 18:47:56','22200e87-7767-47b2-96a0-9878482be22f'),(135,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:40:44',1,'2014-07-10 18:47:56','27b21488-ae44-4219-a8d9-790f5456105e'),(136,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:46:32',1,'2014-07-10 18:47:57','ee26a470-ddc9-47a7-8268-9af0c4e50d70'),(137,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:46:53',1,'2014-07-10 18:47:57','819660d2-7c73-4e69-8d24-a645359af78a'),(138,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:49:48',1,'2014-07-10 18:47:57','ea2cda7e-b5ff-4991-9440-bf791f87d9d1'),(139,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:54:27',1,'2014-07-10 18:47:57','17980e04-79a7-4889-a3c5-52ca7fe19ee9'),(140,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 16:55:58',1,'2014-07-10 18:47:57','238f9737-4da7-408b-84d2-b80517257a37'),(141,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 16:58:35',1,'2014-07-10 18:47:57','4f3e09f9-9f0c-4078-8ae6-b26fbb8c5b44'),(142,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 17:18:47',1,'2014-07-10 18:47:58','ce9bafe7-6a58-4612-a36b-c39ebf37274e'),(143,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 17:21:34',1,'2014-07-10 18:47:58','27dd8753-b628-4ac6-9916-b27c3a51b07f'),(144,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 17:23:05',1,'2014-07-10 18:47:58','cdea9a96-f89b-454d-8e7a-f3601c6f1c44'),(145,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 17:29:50',1,'2014-07-10 18:47:58','af8953fb-0fe1-40a7-82f3-f19d18df03fa'),(146,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 18:00:06',1,'2014-07-10 18:47:58','565de1f3-879a-4d5a-8d61-fcddeca03fad'),(147,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 18:07:12',1,'2014-07-10 18:47:58','0213e903-2256-47bd-914c-b603478c2871'),(148,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-10 18:09:08',1,'2014-07-10 18:47:59','3a49fca0-aa8c-4273-8bc4-1a9861fb0fda'),(149,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 21:45:01',1,'2014-07-11 07:13:48','50eb6915-8183-4d32-a9b4-22afc9d6488d'),(150,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-10 22:19:27',1,'2014-07-11 07:13:48','8d316923-c05a-4235-ac36-d2859203e46e'),(151,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-11 09:06:07',1,'2014-07-14 17:17:37','68d4f2ac-44d8-49d4-9034-23026dce2087'),(152,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-11 13:46:24',1,'2014-07-14 17:17:37','b4435e91-836b-4595-9035-be9d6b13f5dc'),(153,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-07-11 13:51:04',1,'2014-07-14 17:17:37','055e0723-b7bf-4dba-8883-57767874b0fb'),(154,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-11 14:14:00',1,'2014-07-14 17:17:37','d36493e7-0333-44b5-bc66-dfbf6cee3156'),(155,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-14 08:34:20',1,'2014-07-14 17:17:38','d5186fc6-fd13-45ce-b5d4-d3471de8d5b5'),(156,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-15 14:23:47',1,'2014-07-17 16:14:04','122e9403-8777-4c54-980e-b1a5dae40ce5'),(157,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-16 08:47:37',1,'2014-07-17 16:14:05','f9374ce8-3c80-4c42-a544-fa7105e55830'),(158,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-17 08:55:08',1,'2014-07-17 16:14:05','17a2aaaf-d944-4de5-af08-d2ef0e4cc4eb'),(159,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-17 08:58:53',1,'2014-07-17 16:14:05','6fe54a92-a7ce-45c4-ab8c-ff39c62166f7'),(160,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-17 15:55:52',1,'2014-07-17 16:14:05','96d037c6-9095-42a5-bc9a-92974f6aa2ab'),(161,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-18 20:20:40',1,'2014-08-09 18:30:56','a1716d88-a60a-4736-9e4b-51da2eb3abd9'),(162,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-21 08:28:33',1,'2014-08-09 18:30:56','ff5c7edd-5f5d-47c4-9820-977c2c0b50cc'),(163,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-21 18:19:33',1,'2014-08-09 18:30:56','a826011f-4015-4f4b-a7cf-d56d8c2b9196'),(164,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-22 09:02:53',1,'2014-08-09 18:30:57','268d8040-6627-4413-8a6f-4a30f37be7fb'),(165,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-22 12:32:46',1,'2014-08-09 18:30:57','77bd5ea5-ace2-43db-a846-a4b8b806db00'),(166,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-22 16:47:12',1,'2014-08-09 18:30:57','0056c1dc-0d0c-407b-80a2-f164f9466d40'),(167,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-07-23 09:32:51',1,'2014-08-09 18:30:57','5b399e19-0363-4c8c-b7b9-0dda63ae1ead'),(168,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-01 09:18:07',1,'2014-08-09 18:30:57','70d9599f-f0f9-422f-aedb-1beb0de528b4'),(169,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-03 15:25:58',1,'2014-08-09 18:30:58','1e59dade-f04e-44fa-861f-ea363e3effe3'),(170,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-03 16:18:23',1,'2014-08-09 18:30:58','dcdac843-fece-4c67-8ac9-b1ae788622d6'),(171,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-03 16:22:04',1,'2014-08-09 18:30:58','fb408159-adbf-4e4f-8d60-0fafb5165503'),(172,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-04 09:43:19',1,'2014-08-09 18:30:58','8c5248e6-57a3-4a74-9946-faa80af7f0ca'),(173,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-05 08:53:58',1,'2014-08-09 18:30:58','67c8292a-6197-41df-b57e-6f21fc7ac7f4'),(174,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-05 09:41:22',1,'2014-08-09 18:30:59','e1ae6614-aa58-4824-907f-485f51bcd082'),(175,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-08-05 11:14:43',1,'2014-08-09 18:30:59','de062fb8-5bcf-46c2-95c8-68cd3c9c743a'),(176,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-08-05 11:17:48',1,'2014-08-09 18:30:59','3328ee93-4e99-4a59-9903-e1b8ec178cbf'),(177,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-05 14:01:21',1,'2014-08-09 18:30:59','7e754b1d-2244-48ca-83f2-1904ef4bdaa3'),(178,'There was an error starting the module: Operation Theater Module',1,1,NULL,1,'2014-08-05 14:04:58',1,'2014-08-09 18:30:59','5b55354b-9363-43a4-8d4b-158cb9dab2b0'),(179,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-06 10:16:53',1,'2014-08-09 18:30:59','efb079a7-3715-41c5-a694-b2b08808635e'),(180,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-06 10:44:50',1,'2014-08-09 18:31:00','60b81f3f-769d-4bf8-85b0-ce61c7695bf6'),(181,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-06 10:50:26',1,'2014-08-09 18:31:00','cbe9acb8-efd6-4ca0-bb8b-1039c0ee505a'),(182,'There was an error starting the module: Order Entry UI',1,1,NULL,1,'2014-08-07 09:34:47',1,'2014-08-09 18:31:00','2ddd30e4-88f4-49d5-859f-88e358848709'),(183,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-10 17:33:45',NULL,NULL,'887d2bc2-81ce-47a4-86a4-82c12ab2fef5'),(184,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-10 17:34:31',NULL,NULL,'d5299008-99e2-4ef3-b661-24f86fa68056'),(185,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-11 21:39:59',NULL,NULL,'3561529e-e8bd-419a-aa1a-b60ee6d162e3'),(186,'There was an error starting the module: Operation Theater Module',1,0,NULL,1,'2014-08-12 07:14:24',NULL,NULL,'13fe1ce7-72fe-4888-9daa-8ff5865ff18d'),(187,'There was an error starting the module: Operation Theater Module',1,0,NULL,1,'2014-08-12 07:18:16',NULL,NULL,'a5a216c4-871e-4ea4-8c83-cfc2aa5eaf6e'),(188,'There was an error starting the module: Operation Theater Module',1,0,NULL,1,'2014-08-12 07:22:35',NULL,NULL,'e56f4934-d017-4158-a2af-915bc8a3a144'),(189,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-12 07:28:17',NULL,NULL,'fb18e0a6-ce29-4b43-aea0-c179a6fa2aac'),(190,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-12 16:32:05',NULL,NULL,'e2223b59-bd52-415d-b454-ef2a03722471'),(191,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-12 17:39:22',NULL,NULL,'d9a7d277-6f9f-4c68-a4ef-4c04365640f1'),(192,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-12 20:10:02',NULL,NULL,'ea3cfa95-d54a-4cc0-b09c-bf2898bd9d1e'),(193,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 10:31:41',NULL,NULL,'a50095a3-a17a-4e43-91ce-9890334e6b3c'),(194,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 15:49:58',NULL,NULL,'da7cf9af-08c7-4e9c-bfa0-b0226bcd7faf'),(195,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 15:54:22',NULL,NULL,'4cfd79bc-cca2-4bd8-8da7-446c5e50f07a'),(196,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 15:58:02',NULL,NULL,'139dca65-ccf7-4643-9ed3-72f181c0da06'),(197,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 16:02:42',NULL,NULL,'75312beb-a8c7-46da-87e8-f1380d82d8fc'),(198,'There was an error starting the module: Order Entry UI',1,0,NULL,1,'2014-08-14 16:09:25',NULL,NULL,'18b2b620-ed32-4588-ad72-34aa1242f1cd');
/*!40000 ALTER TABLE `notification_alert` ENABLE KEYS */;
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