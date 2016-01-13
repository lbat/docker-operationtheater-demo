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
-- Table structure for table `appointmentscheduling_appointment_block`
--

DROP TABLE IF EXISTS `appointmentscheduling_appointment_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointmentscheduling_appointment_block` (
  `appointment_block_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `uuid` char(38) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` tinyint(4) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appointment_block_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `appointment_block_creator` (`creator`),
  KEY `appointment_block_changed_by` (`changed_by`),
  KEY `appointment_block_voided_by` (`voided_by`),
  KEY `appointment_block_location_id` (`location_id`),
  KEY `appointment_block_provider_id` (`provider_id`),
  CONSTRAINT `appointment_block_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `appointment_block_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `appointment_block_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `appointment_block_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`),
  CONSTRAINT `appointment_block_voided_by` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentscheduling_appointment_block`
--

LOCK TABLES `appointmentscheduling_appointment_block` WRITE;
/*!40000 ALTER TABLE `appointmentscheduling_appointment_block` DISABLE KEYS */;
INSERT INTO `appointmentscheduling_appointment_block` VALUES (1,28,NULL,'2014-06-22 07:00:00','2014-06-22 19:00:00','70181ba5-b235-446f-8221-b02813aa10e3',1,'2014-06-22 15:54:08',1,'2014-06-22 21:54:21',0,NULL,NULL,NULL),(2,29,NULL,'2014-06-21 08:00:00','2014-06-21 20:00:00','4329ff0f-0e3e-4e54-b87d-024f443e285b',1,'2014-06-22 15:54:35',1,'2014-06-22 15:55:04',0,NULL,NULL,NULL),(3,27,NULL,'2014-06-22 06:00:00','2014-06-22 19:00:00','e18800d8-7a18-40ea-91cb-5b36d5b380f4',1,'2014-06-22 16:02:44',1,'2014-06-22 21:33:17',0,NULL,NULL,NULL),(4,29,NULL,'2014-06-22 00:00:00','2014-06-22 00:00:00','46518a6d-fb27-4f98-91fa-6d84763975ea',1,'2014-06-22 21:33:40',1,'2014-06-22 21:54:35',0,NULL,NULL,NULL),(5,27,NULL,'2014-07-07 00:00:00','2014-07-07 00:00:00','1639c9f0-cc45-4d27-abeb-5ca4374d99cd',1,'2014-07-07 13:44:26',NULL,NULL,0,NULL,NULL,NULL),(6,28,NULL,'2014-07-08 09:00:00','2014-07-08 18:00:00','c974bc24-2d0d-4a9b-b339-30e0bbbb27fa',1,'2014-07-08 14:23:17',1,'2014-07-08 17:45:10',0,NULL,NULL,NULL),(7,27,NULL,'2014-07-09 08:00:00','2014-07-09 21:00:00','3664163d-9447-43fa-8d1b-e3e22321561d',1,'2014-07-09 10:05:53',1,'2014-07-09 10:06:09',0,NULL,NULL,NULL),(8,27,NULL,'2014-07-10 06:00:00','2014-07-10 19:00:00','f4c7a908-27e1-44a7-996e-bab20bc81248',1,'2014-07-10 18:47:03',1,'2014-07-10 18:47:23',0,NULL,NULL,NULL),(9,27,NULL,'2014-07-22 00:00:00','2014-07-22 00:00:00','fd1404c3-ab7b-4de1-a9fc-761dde3cbd7a',1,'2014-07-22 16:19:37',1,'2014-07-25 17:39:51',0,NULL,NULL,NULL),(10,28,NULL,'2014-08-12 10:00:00','2014-08-12 17:00:00','1c86186d-ae94-446f-b475-c4662d0ea625',1,'2014-08-12 17:09:25',1,'2014-08-12 20:39:44',0,NULL,NULL,NULL),(11,27,NULL,'2014-08-13 08:00:00','2014-08-13 20:00:00','16c20d61-f5ca-49da-ac10-80da6c3511d2',1,'2014-08-12 19:34:21',1,'2014-08-12 19:42:55',0,NULL,NULL,NULL),(12,28,NULL,'2014-08-13 10:00:00','2014-08-13 21:00:00','781b226c-692b-4dfc-bf2e-6c547297c8ee',1,'2014-08-12 20:26:37',1,'2014-08-12 22:24:20',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `appointmentscheduling_appointment_block` ENABLE KEYS */;
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
