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
-- Table structure for table `encounter`
--

DROP TABLE IF EXISTS `encounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encounter` (
  `encounter_id` int(11) NOT NULL AUTO_INCREMENT,
  `encounter_type` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `encounter_datetime` datetime NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`encounter_id`),
  UNIQUE KEY `encounter_uuid_index` (`uuid`),
  KEY `encounter_datetime_idx` (`encounter_datetime`),
  KEY `encounter_ibfk_1` (`creator`),
  KEY `encounter_type_id` (`encounter_type`),
  KEY `encounter_form` (`form_id`),
  KEY `encounter_location` (`location_id`),
  KEY `encounter_patient` (`patient_id`),
  KEY `user_who_voided_encounter` (`voided_by`),
  KEY `encounter_changed_by` (`changed_by`),
  KEY `encounter_visit_id_fk` (`visit_id`),
  CONSTRAINT `encounter_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `encounter_form` FOREIGN KEY (`form_id`) REFERENCES `form` (`form_id`),
  CONSTRAINT `encounter_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `encounter_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `encounter_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON UPDATE CASCADE,
  CONSTRAINT `encounter_type_id` FOREIGN KEY (`encounter_type`) REFERENCES `encounter_type` (`encounter_type_id`),
  CONSTRAINT `encounter_visit_id_fk` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`visit_id`),
  CONSTRAINT `user_who_voided_encounter` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounter`
--

LOCK TABLES `encounter` WRITE;
/*!40000 ALTER TABLE `encounter` DISABLE KEYS */;
INSERT INTO `encounter` VALUES (1,2,6,7,1,'2014-01-20 07:43:31',2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,2,'2014-06-16 10:20:32',1,'e2d83248-4d22-4ef5-82e3-6773af601335'),(2,5,6,1,2,'2014-01-20 09:02:31',2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,2,'2014-06-16 10:20:32',1,'9de9bd98-ca52-4e47-8650-ad6dfd313507'),(3,2,6,7,1,'2014-02-28 08:19:32',2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,2,'2014-06-16 10:20:33',2,'783e9c4d-db37-43ce-97b7-31c4d81a74f4'),(4,5,6,1,2,'2014-02-28 08:50:32',2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,2,'2014-06-16 10:20:33',2,'fb821072-f45f-48dc-aa25-587aa74d3003'),(5,2,6,7,1,'2013-10-14 07:32:34',2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,2,'2014-06-16 10:20:34',3,'f2ab33d5-cbc7-43fc-92c5-47e6b2c7e9c7'),(6,5,6,1,2,'2013-10-14 09:15:34',2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,2,'2014-06-16 10:20:35',3,'ccca4e00-6174-4b0e-812b-8da25ed18294'),(7,2,6,7,1,'2013-07-12 07:29:35',2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,2,'2014-06-16 10:20:36',4,'089b483b-76fd-4573-b1ab-8f8e4fb732cd'),(8,5,6,1,2,'2013-07-12 09:14:35',2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,2,'2014-06-16 10:20:36',4,'579d717e-9c08-4861-9933-b3ed76a83740'),(9,2,6,7,1,'2013-05-28 07:24:37',2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,2,'2014-06-16 10:20:38',5,'50300398-6a29-4122-a64c-4a983c967883'),(10,5,6,1,2,'2013-05-28 08:23:37',2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,2,'2014-06-16 10:20:38',5,'62eaceec-2a24-47a0-87fc-be728f91a09d'),(11,4,6,6,NULL,'2013-05-28 08:23:37',2,'2014-06-16 10:20:39',0,NULL,NULL,NULL,2,'2014-06-16 10:20:39',5,'cdfe9750-222a-418f-b910-c2d21acdaba7'),(12,3,6,6,NULL,'2013-05-31 08:23:37',2,'2014-06-16 10:20:39',0,NULL,NULL,NULL,2,'2014-06-16 10:20:39',5,'a744d28b-9d4c-45ab-822b-7ce69df64497');
/*!40000 ALTER TABLE `encounter` ENABLE KEYS */;
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
