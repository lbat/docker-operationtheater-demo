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
-- Table structure for table `metadatasharing_imported_package`
--

DROP TABLE IF EXISTS `metadatasharing_imported_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatasharing_imported_package` (
  `imported_package_id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` char(38) NOT NULL,
  `group_uuid` char(38) NOT NULL,
  `subscription_url` varchar(512) DEFAULT NULL,
  `subscription_status` tinyint(4) DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_imported` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `import_config` varchar(1024) DEFAULT NULL,
  `remote_version` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`imported_package_id`),
  KEY `uuid` (`uuid`),
  KEY `group_uuid` (`group_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatasharing_imported_package`
--

LOCK TABLES `metadatasharing_imported_package` WRITE;
/*!40000 ALTER TABLE `metadatasharing_imported_package` DISABLE KEYS */;
INSERT INTO `metadatasharing_imported_package` VALUES (1,'39b85378-0899-4cf0-abf6-779b5968a80a','804f0093-72f5-4a19-b377-30f909d5e615',NULL,0,'2013-08-09 17:04:53','2014-06-12 15:12:05','Reference Application Demo Locations','Contains locations representing a hypothetical hospital, to demonstrate the functionality and typical configuration of the Reference Application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1),(2,'b79c703a-3a42-41e0-8f48-3c7c49853946','5987fa0f-9526-461c-8d43-28cb2e14933e',NULL,0,'2013-08-09 16:52:40','2014-06-16 10:13:58','Reference Application Location Tags','Contains location tags required for proper functioning of some features in the reference application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1),(3,'eb0feeb7-ed7d-4892-8d09-29638ab62a7e','d5fb6341-caca-4742-b230-c9d979911793',NULL,0,'2013-08-02 20:37:21','2014-06-16 10:13:58','Reference Application Person Attribute Types','Contains person attributes types required for proper functioning of some features in the reference application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1),(4,'824d49e2-c8a4-477f-a403-50324f9854fd','a745ec2b-032c-4815-b091-d0339667b919',NULL,0,'2013-08-03 07:21:31','2014-06-16 10:13:58','Reference Application Visit Types','Contains visit types required for proper functioning of some features in the reference application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1),(5,'7830c468-24f6-4689-91cd-6f27fd94dbfc','56b191a8-0f71-44e9-b0ea-651f9da955ce',NULL,0,'2013-08-20 22:37:14','2014-06-16 10:13:58','Reference Application Encounter Types','Contains encounter types required for proper functioning of some features in the reference application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,2),(6,'050b54d3-4f32-48ee-9ef0-838b97750924','c8fa4735-a1c1-441c-b4cc-972677379f44',NULL,0,'2013-09-24 12:39:29','2014-06-16 10:13:59','Reference Application Roles and Privileges','Standard set of Roles and Privileges distributed with the Reference Application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,5),(7,'e12cd04a-0ee9-42bb-afc6-33f82d54ab96','390a392b-10d0-40e4-ae3e-ccd0729d4067',NULL,0,'2013-08-14 17:55:40','2014-06-16 10:13:59','Reference Application Provider Roles','Standard set of Provider Roles distributed with the Reference Application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,2),(8,'a70f53a7-6126-499a-9d6f-f068d3b221dc','d7c66f64-c3ee-4012-af48-2644909e25f4',NULL,0,'2013-08-02 07:27:13','2014-06-16 10:14:00','Reference Application Visit and Encounter Types','Standard set of Visit Types and Encounter Types distributed with the Reference Application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,3),(9,'9d0b7d2f-5833-47d3-b986-a53398d3b619','3f63eef6-faab-436f-a284-6c0870670542',NULL,0,'2013-08-20 12:14:51','2014-06-16 10:14:00','Reference Application Encounter Roles','Contains encounter roles required for proper functioning of some features in the reference application','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1),(10,'e26710bf-bba0-4fd9-9fdb-66338801f642','d225a5af-19f1-4043-8aa5-8b83972a325d',NULL,0,'2014-05-22 11:46:54','2014-06-16 10:14:08','Reference Application Order Entry Concepts','Pick list concepts for doing order entry','<org.openmrs.module.metadatasharing.ImportConfig>\n  <previous>false</previous>\n  <exactMatch>OVERWRITE_MINE</exactMatch>\n  <possibleMatch>OVERWRITE_MINE</possibleMatch>\n  <noMatch>CREATE</noMatch>\n  <confirmExactMatch>false</confirmExactMatch>\n  <confirmPossibleMatch>false</confirmPossibleMatch>\n  <confirmNoMatch>false</confirmNoMatch>\n</org.openmrs.module.metadatasharing.ImportConfig>',NULL,1);
/*!40000 ALTER TABLE `metadatasharing_imported_package` ENABLE KEYS */;
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
