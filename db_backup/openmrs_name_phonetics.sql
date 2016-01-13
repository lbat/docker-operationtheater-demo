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
-- Table structure for table `name_phonetics`
--

DROP TABLE IF EXISTS `name_phonetics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name_phonetics` (
  `name_phonetics_id` int(11) NOT NULL AUTO_INCREMENT,
  `rendered_string` varchar(255) NOT NULL,
  `person_name_id` int(11) NOT NULL,
  `field` int(11) NOT NULL,
  `renderer_class_name` varchar(255) NOT NULL,
  PRIMARY KEY (`name_phonetics_id`),
  KEY `person_name_for_name_phonetics` (`person_name_id`),
  KEY `phonetic_name_composite` (`rendered_string`,`field`),
  KEY `phonetic_type` (`field`),
  KEY `phoneitc_code` (`rendered_string`),
  CONSTRAINT `person_name_for_name_phonetics` FOREIGN KEY (`person_name_id`) REFERENCES `person_name` (`person_name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name_phonetics`
--

LOCK TABLES `name_phonetics` WRITE;
/*!40000 ALTER TABLE `name_phonetics` DISABLE KEYS */;
INSERT INTO `name_phonetics` VALUES (1,'J500',3,1,'org.apache.commons.codec.language.Soundex'),(2,'S530',3,3,'org.apache.commons.codec.language.Soundex'),(3,'J500',4,1,'org.apache.commons.codec.language.Soundex'),(4,'S530',4,3,'org.apache.commons.codec.language.Soundex'),(5,'J200',5,1,'org.apache.commons.codec.language.Soundex'),(6,'S530',5,3,'org.apache.commons.codec.language.Soundex'),(7,'S160',6,1,'org.apache.commons.codec.language.Soundex'),(8,'U260',6,3,'org.apache.commons.codec.language.Soundex'),(23,'S160',1,1,'org.apache.commons.codec.language.Soundex'),(24,'U260',1,3,'org.apache.commons.codec.language.Soundex'),(25,'P362',7,1,'org.apache.commons.codec.language.Soundex'),(26,'C636',7,3,'org.apache.commons.codec.language.Soundex'),(29,'J500',9,1,'org.apache.commons.codec.language.Soundex'),(30,'T230',9,3,'org.apache.commons.codec.language.Soundex'),(33,'H520',8,1,'org.apache.commons.codec.language.Soundex'),(34,'T230',8,3,'org.apache.commons.codec.language.Soundex'),(35,'J500',11,1,'org.apache.commons.codec.language.Soundex'),(36,'D000',11,3,'org.apache.commons.codec.language.Soundex'),(37,'S315',12,1,'org.apache.commons.codec.language.Soundex'),(38,'A450',12,3,'org.apache.commons.codec.language.Soundex'),(39,'E562',13,1,'org.apache.commons.codec.language.Soundex'),(40,'P424',13,3,'org.apache.commons.codec.language.Soundex');
/*!40000 ALTER TABLE `name_phonetics` ENABLE KEYS */;
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
