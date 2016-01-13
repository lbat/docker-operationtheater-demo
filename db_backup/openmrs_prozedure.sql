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
-- Table structure for table `prozedure`
--

DROP TABLE IF EXISTS `prozedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozedure` (
  `procedure_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `intervention_duration` int(11) NOT NULL,
  `ot_preparation_duration` int(11) NOT NULL,
  `inpatient_stay` int(11) NOT NULL,
  `uuid` char(38) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`procedure_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `procedure_creator` (`creator`),
  KEY `procedure_changed_by` (`changed_by`),
  KEY `procedure_retired_by` (`retired_by`),
  CONSTRAINT `procedure_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `procedure_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `procedure_retired_by` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prozedure`
--

LOCK TABLES `prozedure` WRITE;
/*!40000 ALTER TABLE `prozedure` DISABLE KEYS */;
INSERT INTO `prozedure` VALUES (1,'Appendectomy',NULL,30,30,4,'56f27763-5fa6-4aa8-8757-fa3aa1e2f798',1,'2014-07-11 14:24:49',NULL,NULL,0,NULL,NULL,NULL),(2,'Test procedure A','Very long procedure',420,60,14,'88fe7ad1-b9e7-4526-ba3b-826b83ddf2d9',1,'2014-07-21 12:17:26',NULL,NULL,0,NULL,NULL,NULL),(3,'Test Procedure B',NULL,240,60,7,'561fd327-b2cd-4f40-8189-a13e02e49d1a',1,'2014-07-21 12:17:56',NULL,NULL,0,NULL,NULL,NULL),(4,'Test Procedure C',NULL,120,30,4,'f87e4ed8-bb98-4c42-95cb-c230d8c988a8',1,'2014-07-21 12:19:55',1,'2014-07-21 12:19:55',0,NULL,NULL,NULL),(5,'EMERGENCY Placeholder','This procedure is used as placeholder for emergencies',60,0,1,'e1f3d8c3-f533-499d-afa0-357f06509cca',1,'2014-07-25 00:00:00',NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prozedure` ENABLE KEYS */;
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
