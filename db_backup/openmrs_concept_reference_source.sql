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
-- Table structure for table `concept_reference_source`
--

DROP TABLE IF EXISTS `concept_reference_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept_reference_source` (
  `concept_source_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hl7_code` varchar(50) DEFAULT '',
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`concept_source_id`),
  UNIQUE KEY `concept_source_unique_hl7_codes` (`hl7_code`),
  KEY `unique_hl7_code` (`hl7_code`),
  KEY `concept_source_creator` (`creator`),
  KEY `user_who_retired_concept_source` (`retired_by`),
  CONSTRAINT `concept_source_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_retired_concept_source` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept_reference_source`
--

LOCK TABLES `concept_reference_source` WRITE;
/*!40000 ALTER TABLE `concept_reference_source` DISABLE KEYS */;
INSERT INTO `concept_reference_source` VALUES (1,'SNOMED CT','SNOMED Preferred mapping',NULL,1,'2009-11-20 02:19:16',0,NULL,NULL,NULL,'1ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(2,'SNOMED NP','Non-preferred SNOMED CT mappings',NULL,1,'2010-04-25 17:12:44',0,NULL,NULL,NULL,'2ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(3,'ICD-10-WHO','ICD-10 WHO Version',NULL,1,'2010-04-25 11:13:15',0,1,NULL,NULL,'3f65bd34-26fe-102b-80cb-0017a47871b2'),(6,'LOINC','LOINC code',NULL,1,'2010-04-25 11:14:13',0,1,NULL,NULL,'6ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(11,'PIH','Equivalent concept ID in Master Partners-in-Health Concept dictionary',NULL,1,'2010-08-03 01:50:49',0,1,NULL,NULL,'fb9aaaf1-65e2-4c18-b53c-16b575f2f385'),(12,'PIH Malawi','Partners in Health Malawi concept dictionary',NULL,1,'2010-10-24 17:02:20',0,1,NULL,NULL,'12ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(13,'AMPATH','AMPATH concept dictionary',NULL,1,'2010-10-24 23:02:38',0,NULL,NULL,NULL,'13ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(14,'SNOMED MVP','MVP Namespace Identifier extensions to SNOMED CT',NULL,1,'2010-12-03 18:18:39',0,1,NULL,NULL,'14ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(15,'org.openmrs.module.mdrtb','The required concepts for the MDR-TB module',NULL,1,'2010-12-15 14:00:37',0,1,NULL,NULL,'ddb6b595-0b85-4a80-9243-efe4ba404eef'),(19,'3BT','Belgian Bilingual Bi-encoded Thesaurus (3BT)',NULL,1,'2013-02-16 22:25:25',0,1,NULL,NULL,'19ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(20,'ICPC2','International Classification of Primary Care version 2 from WONCA.',NULL,1,'2013-02-17 15:25:41',0,1,NULL,NULL,'20ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(21,'CIEL','Columbia International eHealth Laboratory concept ID',NULL,1,'2013-07-03 21:55:03',0,NULL,NULL,NULL,'21ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(23,'org.openmrs.module.emrapi','Reference application module',NULL,1,'2013-08-21 09:14:19',0,1,NULL,NULL,'23ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(24,'IMO ProblemIT','Intelligent Medical Objects, Inc. problem/disease/finding datasource',NULL,1,'2013-10-01 13:34:15',0,1,NULL,NULL,'24ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'),(25,'IMO ProcedureIT','Intelligent Medical Objects, Inc. procedure/test datasource',NULL,1,'2013-10-01 13:34:40',0,1,NULL,NULL,'25ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD');
/*!40000 ALTER TABLE `concept_reference_source` ENABLE KEYS */;
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
