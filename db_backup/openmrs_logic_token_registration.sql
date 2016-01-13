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
-- Table structure for table `logic_token_registration`
--

DROP TABLE IF EXISTS `logic_token_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logic_token_registration` (
  `token_registration_id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0002-11-30 00:00:00',
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `token` varchar(512) NOT NULL,
  `provider_class_name` varchar(512) NOT NULL,
  `provider_token` varchar(512) NOT NULL,
  `configuration` varchar(2000) DEFAULT NULL,
  `uuid` char(38) NOT NULL,
  PRIMARY KEY (`token_registration_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `token_registration_creator` (`creator`),
  KEY `token_registration_changed_by` (`changed_by`),
  CONSTRAINT `token_registration_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `token_registration_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logic_token_registration`
--

LOCK TABLES `logic_token_registration` WRITE;
/*!40000 ALTER TABLE `logic_token_registration` DISABLE KEYS */;
INSERT INTO `logic_token_registration` VALUES (1,2,'2014-06-12 15:08:17',NULL,NULL,'encounterLocation','org.openmrs.logic.datasource.EncounterDataSource','encounterLocation','encounterLocation','b32dbbd8-ab26-489a-8a51-a0a0e208e0df'),(2,2,'2014-06-12 15:08:17',NULL,NULL,'encounterProvider','org.openmrs.logic.datasource.EncounterDataSource','encounterProvider','encounterProvider','284bbc58-08c7-4f25-90aa-071d50d13a38'),(3,2,'2014-06-12 15:08:17',NULL,NULL,'encounter','org.openmrs.logic.datasource.EncounterDataSource','encounter','encounter','c75c99dd-b99b-4c2e-a555-197d2d4b73f4'),(4,2,'2014-06-12 15:08:17',NULL,NULL,'identifier','org.openmrs.logic.datasource.PatientDataSource','identifier','identifier','748a3b92-737e-4d2f-98fd-f2f3d3d51e8a'),(5,2,'2014-06-12 15:08:17',NULL,NULL,'family name','org.openmrs.logic.datasource.PersonDataSource','family name','family name','a0aa19e4-a8da-46a2-967f-f90cff72e71a'),(6,2,'2014-06-12 15:08:17',NULL,NULL,'middle name','org.openmrs.logic.datasource.PersonDataSource','middle name','middle name','2b1f312f-8e70-43a4-b173-705dd5db829d'),(7,2,'2014-06-12 15:08:17',NULL,NULL,'death date','org.openmrs.logic.datasource.PersonDataSource','death date','death date','15635310-936e-4406-901c-5ebb6e15a762'),(8,2,'2014-06-12 15:08:17',NULL,NULL,'birthdate','org.openmrs.logic.datasource.PersonDataSource','birthdate','birthdate','b7b52401-17f3-46bd-856b-6c1210ac2975'),(9,2,'2014-06-12 15:08:17',NULL,NULL,'cause of death','org.openmrs.logic.datasource.PersonDataSource','cause of death','cause of death','416e3df0-18d7-4f21-ac0e-5efaa6648806'),(10,2,'2014-06-12 15:08:17',NULL,NULL,'birthdate estimated','org.openmrs.logic.datasource.PersonDataSource','birthdate estimated','birthdate estimated','9f4d53d3-5857-4b60-8ed7-bc3d5a49e1f3'),(11,2,'2014-06-12 15:08:17',NULL,NULL,'gender','org.openmrs.logic.datasource.PersonDataSource','gender','gender','0667aa6a-c868-4a4a-80da-a6ae675085df'),(12,2,'2014-06-12 15:08:17',NULL,NULL,'family name2','org.openmrs.logic.datasource.PersonDataSource','family name2','family name2','09c44a96-43ec-4e19-a65b-daddd8ed07a1'),(13,2,'2014-06-12 15:08:17',NULL,NULL,'dead','org.openmrs.logic.datasource.PersonDataSource','dead','dead','f3a4ce7e-a717-4ec0-93be-98f24f7c0fd2'),(14,2,'2014-06-12 15:08:17',NULL,NULL,'given name','org.openmrs.logic.datasource.PersonDataSource','given name','given name','37202372-cdea-4a69-a4c9-c6198c9102a5'),(15,2,'2014-06-12 15:08:17',NULL,NULL,'CURRENT STATE','org.openmrs.logic.datasource.ProgramDataSource','CURRENT STATE','CURRENT STATE','73d68a95-d57b-48e0-920c-e51693252ef1'),(16,2,'2014-06-12 15:08:17',NULL,NULL,'PROGRAM ENROLLMENT','org.openmrs.logic.datasource.ProgramDataSource','PROGRAM ENROLLMENT','PROGRAM ENROLLMENT','0b5b3029-c316-4072-83c9-3e2e52c66b42'),(17,2,'2014-06-12 15:08:17',NULL,NULL,'PROGRAM COMPLETION','org.openmrs.logic.datasource.ProgramDataSource','PROGRAM COMPLETION','PROGRAM COMPLETION','9a909e53-468e-4c39-aa16-f42c4db79fef');
/*!40000 ALTER TABLE `logic_token_registration` ENABLE KEYS */;
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
