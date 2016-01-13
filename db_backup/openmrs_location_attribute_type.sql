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
-- Table structure for table `location_attribute_type`
--

DROP TABLE IF EXISTS `location_attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_attribute_type` (
  `location_attribute_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `datatype` varchar(255) DEFAULT NULL,
  `datatype_config` text,
  `preferred_handler` varchar(255) DEFAULT NULL,
  `handler_config` text,
  `min_occurs` int(11) NOT NULL,
  `max_occurs` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` char(38) NOT NULL,
  PRIMARY KEY (`location_attribute_type_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `location_attribute_type_creator_fk` (`creator`),
  KEY `location_attribute_type_changed_by_fk` (`changed_by`),
  KEY `location_attribute_type_retired_by_fk` (`retired_by`),
  CONSTRAINT `location_attribute_type_changed_by_fk` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `location_attribute_type_creator_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `location_attribute_type_retired_by_fk` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_attribute_type`
--

LOCK TABLES `location_attribute_type` WRITE;
/*!40000 ALTER TABLE `location_attribute_type` DISABLE KEYS */;
INSERT INTO `location_attribute_type` VALUES (1,'Default Label Printer','The default label printer for this location','org.openmrs.module.emrapi.printer.PrinterDatatype','LABEL',NULL,NULL,0,1,2,'2014-06-12 15:12:02',NULL,NULL,0,NULL,NULL,NULL,'bd6c1c10-38d3-11e2-81c1-0800200c9a66'),(2,'Default ID card Printer','The default id card printer for this location','org.openmrs.module.emrapi.printer.PrinterDatatype','ID_CARD',NULL,NULL,0,1,2,'2014-06-12 15:12:02',NULL,NULL,0,NULL,NULL,NULL,'b48ef9a0-38d3-11e2-81c1-0800200c9a66'),(3,'Name to print on ID card','The name to use when printing a location on an id card','org.openmrs.customdatatype.datatype.FreeTextDatatype',NULL,NULL,NULL,0,1,2,'2014-06-12 15:12:02',NULL,NULL,0,NULL,NULL,NULL,'a5fb5770-409a-11e2-a25f-0800200c9a66'),(4,'default available time begin','default timestamp where the operation theater will be available to perform surgeries','org.openmrs.customdatatype.datatype.RegexValidatedTextDatatype','[0-9]{2}:[0-9]{2}',NULL,NULL,0,1,1,'2014-06-03 10:35:23',1,'2014-06-03 10:39:10',0,NULL,NULL,NULL,'4e051aeb-a19d-49e0-820f-51ae591ec41f'),(5,'default available time end','default timestamp until the operation theater will be available to perform surgeries','org.openmrs.customdatatype.datatype.RegexValidatedTextDatatype','[0-9]{2}:[0-9]{2}',NULL,NULL,0,1,1,'2014-06-03 10:37:07',1,'2014-06-03 10:39:22',0,NULL,NULL,NULL,'a9d9ec55-e992-4d04-aebe-808be50aa87a'),(7,'Calendar color','Display color used for surgeries that are scheduled for this operation theater','org.openmrs.customdatatype.datatype.RegexValidatedTextDatatype','#[a-fA-F0-9]{6}',NULL,NULL,0,1,1,'2014-07-25 00:00:00',NULL,NULL,0,NULL,NULL,NULL,'aefe79d0-aa24-4216-ad00-41ba073f7a39');
/*!40000 ALTER TABLE `location_attribute_type` ENABLE KEYS */;
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
