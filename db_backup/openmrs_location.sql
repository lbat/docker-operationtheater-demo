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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city_village` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `county_district` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `address4` varchar(255) DEFAULT NULL,
  `address5` varchar(255) DEFAULT NULL,
  `address6` varchar(255) DEFAULT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `parent_location` int(11) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_uuid_index` (`uuid`),
  KEY `name_of_location` (`name`),
  KEY `location_retired_status` (`retired`),
  KEY `user_who_created_location` (`creator`),
  KEY `user_who_retired_location` (`retired_by`),
  KEY `parent_location` (`parent_location`),
  CONSTRAINT `parent_location` FOREIGN KEY (`parent_location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `user_who_created_location` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_retired_location` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Unknown Location',NULL,'','','','','','',NULL,NULL,1,'2005-09-22 00:00:00',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'8d6c993e-c2cc-11de-8d13-0010c6dffd0f'),(2,'Pharmacy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:48:37',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'7f65d926-57d6-4402-ae10-a5b3bcbf7986'),(3,'Laboratory',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:48:51',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'7fdfa2cb-bc95-405a-88c6-32b7673c0453'),(4,'Isolation Ward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:48:19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'2131aff8-2e2a-480a-b7ab-4ac53250262b'),(5,'Registration Desk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:49:07',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'6351fcf4-e311-4a19-90f9-35667d99a8af'),(6,'Inpatient Ward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:47:29',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'b1a8b05e-3542-4037-bbd3-998ee9c40574'),(7,'Outpatient Clinic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:47:12',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'58c57d25-8d39-41ab-8422-108a0c277d98'),(8,'Amani Hospital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2013-08-02 01:46:15',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'aff27d58-a15c-49a6-9beb-d30dcfc0c66e'),(27,'OT 1','Operation Theater 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-02 09:53:44',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'76d562c4-79d7-45ef-b1c4-8e15c2b01c41'),(28,'OT 2','Operation Theater 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-02 09:54:11',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'2316dd79-c850-4748-a674-0b918691e75e'),(29,'OT 3','Operation Theater 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-02 09:54:28',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,8,'56d98e1e-ff37-48db-b712-7340cf5a2749');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-14 17:59:26
