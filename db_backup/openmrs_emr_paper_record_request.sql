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
-- Table structure for table `emr_paper_record_request`
--

DROP TABLE IF EXISTS `emr_paper_record_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emr_paper_record_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'OPEN',
  `patient_id` int(11) NOT NULL,
  `record_location` int(11) NOT NULL,
  `request_location` int(11) NOT NULL,
  `assignee` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `uuid` char(38) NOT NULL,
  `date_status_changed` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `record_location_id_location_id_fk` (`record_location`),
  KEY `request_location_id_location_id_fk` (`request_location`),
  KEY `assign_id_person_id_fk` (`assignee`),
  KEY `request_patient_id_patient_id_fk` (`patient_id`),
  KEY `idx_emr_paper_record_request_identifier` (`identifier`),
  KEY `printer_creator_user_id_fk` (`creator`),
  CONSTRAINT `assign_id_person_id_fk` FOREIGN KEY (`assignee`) REFERENCES `person` (`person_id`),
  CONSTRAINT `creator_user_id_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `printer_creator_user_id_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `record_location_id_location_id_fk` FOREIGN KEY (`record_location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `request_location_id_location_id_fk` FOREIGN KEY (`request_location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `request_patient_id_patient_id_fk` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_paper_record_request`
--

LOCK TABLES `emr_paper_record_request` WRITE;
/*!40000 ALTER TABLE `emr_paper_record_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `emr_paper_record_request` ENABLE KEYS */;
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
