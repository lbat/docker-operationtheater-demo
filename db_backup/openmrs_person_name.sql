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
-- Table structure for table `person_name`
--

DROP TABLE IF EXISTS `person_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_name` (
  `person_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `preferred` tinyint(1) NOT NULL DEFAULT '0',
  `person_id` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `given_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `family_name_prefix` varchar(50) DEFAULT NULL,
  `family_name` varchar(50) DEFAULT NULL,
  `family_name2` varchar(50) DEFAULT NULL,
  `family_name_suffix` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`person_name_id`),
  UNIQUE KEY `person_name_uuid_index` (`uuid`),
  KEY `first_name` (`given_name`),
  KEY `last_name` (`family_name`),
  KEY `middle_name` (`middle_name`),
  KEY `family_name2` (`family_name2`),
  KEY `user_who_made_name` (`creator`),
  KEY `name_for_person` (`person_id`),
  KEY `user_who_voided_name` (`voided_by`),
  CONSTRAINT `name_for_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON UPDATE CASCADE,
  CONSTRAINT `user_who_made_name` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_voided_name` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_name`
--

LOCK TABLES `person_name` WRITE;
/*!40000 ALTER TABLE `person_name` DISABLE KEYS */;
INSERT INTO `person_name` VALUES (1,1,1,NULL,'Super',NULL,NULL,'User',NULL,NULL,NULL,1,'2005-01-01 00:00:00',0,NULL,NULL,NULL,2,'2014-06-16 10:20:30','863f9a7f-f232-11e3-bbd8-e03f49163b83'),(2,0,2,NULL,'Unknown',NULL,NULL,'Provider',NULL,NULL,NULL,2,'2014-06-12 15:12:02',0,NULL,NULL,NULL,NULL,NULL,'daada7f3-4ee6-4914-b53e-fb1013fb22d7'),(3,0,3,NULL,'John',NULL,NULL,'Smith',NULL,NULL,NULL,2,'2014-06-16 10:20:07',0,NULL,NULL,NULL,NULL,NULL,'6a1630ad-0576-4d04-8c4d-c1da3d36a383'),(4,0,4,NULL,'Jane',NULL,NULL,'Smith',NULL,NULL,NULL,2,'2014-06-16 10:20:28',0,NULL,NULL,NULL,NULL,NULL,'1c566e62-a1ea-4f02-8f6e-8dbae2f97856'),(5,0,5,NULL,'Jake',NULL,NULL,'Smith',NULL,NULL,NULL,2,'2014-06-16 10:20:29',0,NULL,NULL,NULL,NULL,NULL,'81634698-674a-4ddf-ac4e-dc55f76e8a27'),(6,0,1,NULL,'super',NULL,NULL,'user',NULL,NULL,NULL,2,'2014-06-16 10:20:29',0,NULL,NULL,NULL,NULL,NULL,'d6ae8775-bc9f-433d-8f6d-2d84d6166a04'),(7,0,6,NULL,'Patricia',NULL,NULL,'Carter',NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,NULL,NULL,'5b1bc7c0-d213-4caa-a2ba-e4a307fdee84'),(8,1,7,NULL,'Hans',NULL,NULL,'Test',NULL,NULL,NULL,1,'2014-06-16 10:56:38',1,1,'2014-06-22 16:05:20',NULL,1,'2014-06-22 16:05:21','c0bded0b-8e27-446b-92b6-08d9fe3f21d7'),(9,1,7,NULL,'Emergency',NULL,NULL,'Patient',NULL,NULL,NULL,1,'2014-06-22 16:05:21',0,NULL,NULL,NULL,NULL,NULL,'bed9e742-fd31-4dd2-a7bb-a6f44d1a104b'),(11,1,9,NULL,'John',NULL,NULL,'Doe',NULL,NULL,NULL,1,'2014-08-12 16:43:42',0,NULL,NULL,NULL,NULL,NULL,'0c482b66-8d41-4fc5-a1fe-de4179b47c22'),(12,1,10,NULL,'Steven',NULL,NULL,'Allen',NULL,NULL,NULL,1,'2014-08-12 22:05:01',0,NULL,NULL,NULL,NULL,NULL,'f570ecfc-fbce-4c5c-af61-cb488231d55a'),(13,0,11,NULL,'EMERGENCY',NULL,NULL,'PLACEHOLDER PATIENT',NULL,NULL,NULL,1,'2014-08-14 11:54:14',0,NULL,NULL,NULL,NULL,NULL,'d74fee0b-8f0b-4f6e-8137-2baced049fef');
/*!40000 ALTER TABLE `person_name` ENABLE KEYS */;
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
