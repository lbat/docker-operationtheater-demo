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
-- Table structure for table `emr_paper_record_merge_request`
--

DROP TABLE IF EXISTS `emr_paper_record_merge_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emr_paper_record_merge_request` (
  `merge_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `preferred_identifier` varchar(50) NOT NULL,
  `not_preferred_identifier` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'OPEN',
  `preferred_patient` int(11) NOT NULL,
  `not_preferred_patient` int(11) NOT NULL,
  `record_location` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `uuid` char(38) NOT NULL,
  PRIMARY KEY (`merge_request_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `merge_record_location_id_location_id_fk` (`record_location`),
  KEY `merge_creator_user_id_fk` (`creator`),
  KEY `preferred_patient_patient_id_fk` (`preferred_patient`),
  KEY `not_preferred_patient_patient_id_fk` (`not_preferred_patient`),
  CONSTRAINT `merge_creator_user_id_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `merge_record_location_id_location_id_fk` FOREIGN KEY (`record_location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `not_preferred_patient_patient_id_fk` FOREIGN KEY (`not_preferred_patient`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `preferred_patient_patient_id_fk` FOREIGN KEY (`preferred_patient`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_paper_record_merge_request`
--

LOCK TABLES `emr_paper_record_merge_request` WRITE;
/*!40000 ALTER TABLE `emr_paper_record_merge_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `emr_paper_record_merge_request` ENABLE KEYS */;
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
