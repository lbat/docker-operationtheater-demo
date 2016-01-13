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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(50) DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `birthdate_estimated` tinyint(1) NOT NULL DEFAULT '0',
  `dead` tinyint(1) NOT NULL DEFAULT '0',
  `death_date` datetime DEFAULT NULL,
  `cause_of_death` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_uuid_index` (`uuid`),
  KEY `person_birthdate` (`birthdate`),
  KEY `person_death_date` (`death_date`),
  KEY `person_died_because` (`cause_of_death`),
  KEY `user_who_changed_person` (`changed_by`),
  KEY `user_who_created_person` (`creator`),
  KEY `user_who_voided_person` (`voided_by`),
  CONSTRAINT `person_died_because` FOREIGN KEY (`cause_of_death`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `user_who_changed_person` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_created_person` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_voided_person` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'M',NULL,0,0,NULL,NULL,2,'2005-01-01 00:00:00',2,'2014-06-16 10:20:29',0,NULL,NULL,NULL,'863a0ded-f232-11e3-bbd8-e03f49163b83'),(2,'F',NULL,0,0,NULL,NULL,2,'2014-06-12 15:12:02',NULL,NULL,0,NULL,NULL,NULL,'7089470e-d7c3-48af-9992-36c86b5bff02'),(3,'M',NULL,0,0,NULL,NULL,2,'2014-06-16 10:19:02',2,'2014-08-14 16:13:37',0,NULL,NULL,NULL,'007037a0-0500-11e3-8ffd-0800200c9a66'),(4,'F',NULL,0,0,NULL,NULL,2,'2014-06-16 10:20:07',2,'2014-08-14 16:13:40',0,NULL,NULL,NULL,'9bed23d0-0502-11e3-8ffd-0800200c9a66'),(5,'M',NULL,0,0,NULL,NULL,2,'2014-06-16 10:20:28',2,'2014-08-14 16:13:43',0,NULL,NULL,NULL,'af7c3340-0503-11e3-8ffd-0800200c9a66'),(6,'F','1939-12-12',0,0,NULL,NULL,2,'2014-06-16 10:20:31',1,'2014-06-22 18:10:48',0,NULL,NULL,NULL,'0fa4bc9e-adc2-497a-bb6e-beb0ba7127a4'),(7,'M','1980-04-01',0,0,NULL,NULL,1,'2014-06-16 10:56:38',1,'2014-06-22 16:05:20',0,NULL,NULL,NULL,'16f68fa5-8df4-4c51-a5cf-70039dbf5de4'),(8,'M','1954-08-12',0,0,NULL,NULL,1,'2014-08-12 16:25:13',NULL,NULL,0,NULL,NULL,NULL,'76f68fa5-8df4-4c51-a5cf-70039dbf5de5'),(9,'M','1956-08-15',0,0,NULL,NULL,1,'2014-08-12 16:43:42',NULL,NULL,0,NULL,NULL,NULL,'f24eecd0-009b-4d03-9caa-dff9ffd97aa2'),(10,'M','1980-08-12',0,0,NULL,NULL,1,'2014-08-12 22:05:01',NULL,NULL,0,NULL,NULL,NULL,'b4138a47-da95-486e-a5cb-db40be75929a'),(11,'M','1970-01-01',0,0,NULL,NULL,1,'2014-08-14 11:54:14',NULL,NULL,0,NULL,NULL,NULL,'76f68fa5-8df4-4c51-a5cf-70039dbf5de4');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-14 17:59:28
