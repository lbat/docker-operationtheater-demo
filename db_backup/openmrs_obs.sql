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
-- Table structure for table `obs`
--

DROP TABLE IF EXISTS `obs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obs` (
  `obs_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `concept_id` int(11) NOT NULL DEFAULT '0',
  `encounter_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `obs_datetime` datetime NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `obs_group_id` int(11) DEFAULT NULL,
  `accession_number` varchar(255) DEFAULT NULL,
  `value_group_id` int(11) DEFAULT NULL,
  `value_boolean` tinyint(1) DEFAULT NULL,
  `value_coded` int(11) DEFAULT NULL,
  `value_coded_name_id` int(11) DEFAULT NULL,
  `value_drug` int(11) DEFAULT NULL,
  `value_datetime` datetime DEFAULT NULL,
  `value_numeric` double DEFAULT NULL,
  `value_modifier` varchar(2) DEFAULT NULL,
  `value_text` text,
  `value_complex` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  `previous_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`obs_id`),
  UNIQUE KEY `obs_uuid_index` (`uuid`),
  KEY `obs_datetime_idx` (`obs_datetime`),
  KEY `obs_concept` (`concept_id`),
  KEY `obs_enterer` (`creator`),
  KEY `encounter_observations` (`encounter_id`),
  KEY `obs_location` (`location_id`),
  KEY `obs_grouping_id` (`obs_group_id`),
  KEY `obs_order` (`order_id`),
  KEY `person_obs` (`person_id`),
  KEY `answer_concept` (`value_coded`),
  KEY `obs_name_of_coded_value` (`value_coded_name_id`),
  KEY `answer_concept_drug` (`value_drug`),
  KEY `user_who_voided_obs` (`voided_by`),
  KEY `previous_version` (`previous_version`),
  CONSTRAINT `answer_concept` FOREIGN KEY (`value_coded`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `answer_concept_drug` FOREIGN KEY (`value_drug`) REFERENCES `drug` (`drug_id`),
  CONSTRAINT `encounter_observations` FOREIGN KEY (`encounter_id`) REFERENCES `encounter` (`encounter_id`),
  CONSTRAINT `obs_concept` FOREIGN KEY (`concept_id`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `obs_enterer` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `obs_grouping_id` FOREIGN KEY (`obs_group_id`) REFERENCES `obs` (`obs_id`),
  CONSTRAINT `obs_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `obs_name_of_coded_value` FOREIGN KEY (`value_coded_name_id`) REFERENCES `concept_name` (`concept_name_id`),
  CONSTRAINT `obs_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `person_obs` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON UPDATE CASCADE,
  CONSTRAINT `previous_version` FOREIGN KEY (`previous_version`) REFERENCES `obs` (`obs_id`),
  CONSTRAINT `user_who_voided_obs` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obs`
--

LOCK TABLES `obs` WRITE;
/*!40000 ALTER TABLE `obs` DISABLE KEYS */;
INSERT INTO `obs` VALUES (1,6,5090,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,210,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'a3fac761-7468-4a31-bc48-5e8e9722beb7',NULL),(2,6,5089,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'d8f0a326-1d69-4312-9b2c-8f475fc01270',NULL),(3,6,5088,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'5d24c68e-4997-404c-a8a1-b1f896c3dde6',NULL),(4,6,5087,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,210,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'e9ab1880-d004-4a45-808b-3a6cc0d460d4',NULL),(5,6,5242,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'8379d3f7-1590-4833-9aeb-4a252e8a0a11',NULL),(6,6,5085,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,166,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:31',0,NULL,NULL,NULL,'d7dbacd3-8637-4c8f-b035-d95716c8bf98',NULL),(7,6,5086,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'064e9ec9-0f6a-4fca-a298-9e03cf28d51e',NULL),(8,6,5092,1,NULL,'2014-01-20 07:43:31',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'357d0077-44ea-4c27-99f8-da7fe67618f9',NULL),(9,6,162169,2,NULL,'2014-01-20 09:02:31',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ut labore et dolore magna aliqua',NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'5e40ab25-1dbb-4bae-804b-cb0d4bbf7e68',NULL),(10,6,159394,2,NULL,'2014-01-20 09:02:31',1,11,NULL,NULL,NULL,159393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'a7b06bbe-a6d8-4035-a4ae-4fff2afc798e',NULL),(11,6,159947,2,NULL,'2014-01-20 09:02:31',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'244daf3c-a3e0-4ac3-a874-842a38addd56',NULL),(12,6,1284,2,NULL,'2014-01-20 09:02:31',1,11,NULL,NULL,NULL,160206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'c99f93e2-f88e-4446-a3b0-e97875506bed',NULL),(13,6,159946,2,NULL,'2014-01-20 09:02:31',1,11,NULL,NULL,NULL,159943,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'10d22df4-e597-4e39-a7d8-de3e87728be0',NULL),(14,6,5090,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,193,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:32',0,NULL,NULL,NULL,'087fd4a6-83b7-4d10-8609-4497e0e879b1',NULL),(15,6,5089,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,227,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'3a50e617-f0e9-4bc3-9553-27a6dfc9c7b5',NULL),(16,6,5088,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'f4b443fd-66d1-4907-8bb7-bc990b48a80a',NULL),(17,6,5087,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'918e3563-bc19-4fe5-85a6-2803a01000b9',NULL),(18,6,5242,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'06c49b47-5e5d-46d1-81f1-e0494a9aea6a',NULL),(19,6,5085,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'29d70a46-71bf-4fa2-a468-706ecacb7380',NULL),(20,6,5086,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'5f5fa382-1916-42a2-a189-25b7db400993',NULL),(21,6,5092,3,NULL,'2014-02-28 08:19:32',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'c7b14490-b597-44a8-acd8-9d418aaec280',NULL),(22,6,162169,4,NULL,'2014-02-28 08:50:32',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sunt in culpa qui officia deserunt',NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'43d4b025-2d1c-4879-94b3-7f3c8273d1d1',NULL),(23,6,159394,4,NULL,'2014-02-28 08:50:32',1,24,NULL,NULL,NULL,159392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'5d500d6e-fd28-4510-94e4-cd09497b228e',NULL),(24,6,159947,4,NULL,'2014-02-28 08:50:32',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:33',0,NULL,NULL,NULL,'73b9334d-7475-4318-857e-0a9654fcaad4',NULL),(25,6,1284,4,NULL,'2014-02-28 08:50:32',1,24,NULL,NULL,NULL,115191,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'18df5c86-aa0e-4d57-a814-f2352376100e',NULL),(26,6,159946,4,NULL,'2014-02-28 08:50:32',1,24,NULL,NULL,NULL,159943,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'7da002f4-dc88-4499-95d7-0d2405a3959a',NULL),(27,6,5090,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'d185330d-2b03-46e9-934b-c5f79f797307',NULL),(28,6,5089,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'f2c2c73b-2704-4688-80e4-09e01cf899a4',NULL),(29,6,5088,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'f8bfc41b-2140-4f26-99dd-c6d982c76f5d',NULL),(30,6,5087,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'4d5ef001-9e39-4ef8-8f67-3ec4a1bc61a4',NULL),(31,6,5242,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'b5dff955-f93a-484c-88b6-7216708a9457',NULL),(32,6,5085,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'5b503235-fedc-4cb5-a3b0-f3749150466a',NULL),(33,6,5086,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,106,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'b6c54c4c-508c-461d-a8ac-d0525137a58d',NULL),(34,6,5092,5,NULL,'2013-10-14 07:32:34',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:34',0,NULL,NULL,NULL,'3af2a2ac-f3aa-4cf1-91c3-46a1207b4419',NULL),(35,6,162169,6,NULL,'2013-10-14 09:15:34',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'velit esse cillum dolore eu fugiat nulla pariatur.',NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'892a14cc-9028-428d-aa81-300f77410d5b',NULL),(36,6,159394,6,NULL,'2013-10-14 09:15:34',1,37,NULL,NULL,NULL,159393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'662aa32f-cc03-4132-9010-d4d5c4cb8069',NULL),(37,6,159947,6,NULL,'2013-10-14 09:15:34',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'a6783aa9-23ac-4aa0-8638-c3c17618c383',NULL),(38,6,1284,6,NULL,'2013-10-14 09:15:34',1,37,NULL,NULL,NULL,128099,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'ed20e8d3-0dcc-43df-81c2-9f39b04674e2',NULL),(39,6,159946,6,NULL,'2013-10-14 09:15:34',1,37,NULL,NULL,NULL,159943,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'aed6d30f-4093-42e2-86ba-927376b9f506',NULL),(40,6,159394,6,NULL,'2013-10-14 09:15:34',1,41,NULL,NULL,NULL,159392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'7f6c4fd2-757a-46b3-8214-364555ade8eb',NULL),(41,6,159947,6,NULL,'2013-10-14 09:15:34',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'5558f73f-2476-4847-a090-c50cf90e3b5b',NULL),(42,6,1284,6,NULL,'2013-10-14 09:15:34',1,41,NULL,NULL,NULL,140501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'7cf4739c-0c9d-43b5-8a7f-dfdff7b9d1c2',NULL),(43,6,159946,6,NULL,'2013-10-14 09:15:34',1,41,NULL,NULL,NULL,159944,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:35',0,NULL,NULL,NULL,'1e8b624e-b32a-47fe-a6ea-a4689dabe411',NULL),(44,6,5090,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'bd859bc4-a56e-4d0b-823b-973d05770bb8',NULL),(45,6,5089,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'376b02ac-2668-4073-ad28-6747170c4f49',NULL),(46,6,5088,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'4de686bf-9ba2-477d-80fa-cd9855a0b974',NULL),(47,6,5087,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'4d9effc7-509b-4cd1-9001-b4eb2821dab0',NULL),(48,6,5242,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'ad9fbb24-0948-4569-a12f-cf27e26b235a',NULL),(49,6,5085,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,108,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'bea50ac0-8a5a-434a-9f32-70761a1600ff',NULL),(50,6,5086,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,96,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'53a95037-19af-44d2-8ff3-4d90b6fbeb85',NULL),(51,6,5092,7,NULL,'2013-07-12 07:29:35',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'ef75690a-1b67-4a97-8bc1-579994d98a17',NULL),(52,6,162169,8,NULL,'2013-07-12 09:14:35',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ut enim ad minim veniam',NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'62b2caf6-5a90-4de4-8875-addfe161ab2a',NULL),(53,6,159394,8,NULL,'2013-07-12 09:14:35',1,54,NULL,NULL,NULL,159393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'8ffdb9d1-75d9-46b5-8605-d8cedd47ee31',NULL),(54,6,159947,8,NULL,'2013-07-12 09:14:35',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:36',0,NULL,NULL,NULL,'fe4d45f0-0933-4e46-ac5e-bf6357b2c333',NULL),(55,6,1284,8,NULL,'2013-07-12 09:14:35',1,54,NULL,NULL,NULL,160199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'2b06ca5e-8387-480c-aaf5-e929cdf256dc',NULL),(56,6,159946,8,NULL,'2013-07-12 09:14:35',1,54,NULL,NULL,NULL,159943,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'8040625c-5ac8-418e-a48e-c51f0059e382',NULL),(57,6,159394,8,NULL,'2013-07-12 09:14:35',1,58,NULL,NULL,NULL,159392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'5772eed0-18b3-465e-beef-c4f03b6c7ea9',NULL),(58,6,159947,8,NULL,'2013-07-12 09:14:35',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'aaa93fd4-b2f6-4a29-9d05-74a173548237',NULL),(59,6,1284,8,NULL,'2013-07-12 09:14:35',1,58,NULL,NULL,NULL,121375,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'da9a130e-0706-4145-be27-0f0ef13ad363',NULL),(60,6,159946,8,NULL,'2013-07-12 09:14:35',1,58,NULL,NULL,NULL,159944,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'cd4b9c47-e200-4c9c-a714-20af3c380d32',NULL),(61,6,5090,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'fc7a5259-ad2d-4284-b121-9ba24cac1062',NULL),(62,6,5089,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'dc992f8b-3dd0-435c-b739-f00cf5c70f30',NULL),(63,6,5088,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'8ebbfe4b-63e9-4cd7-9564-0f6c42e55c1b',NULL),(64,6,5087,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'2d693e88-5734-468a-b94d-3d15b8ae43da',NULL),(65,6,5242,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,73,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:37',0,NULL,NULL,NULL,'5be1d5be-66d3-4e6b-9436-84bfb522aa51',NULL),(66,6,5085,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,178,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'5b9d7b09-72aa-436d-b37c-ded1c0c5a7e4',NULL),(67,6,5086,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'10ae25e4-4b57-44ea-a3ca-f668aedfda7c',NULL),(68,6,5092,9,NULL,'2013-05-28 07:24:37',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'a8312fff-8a04-460e-a50a-4a82a93f96c0',NULL),(69,6,162169,10,NULL,'2013-05-28 08:23:37',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lorem ipsum dolor sit amet',NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'be56ebc1-21d8-4588-8ad5-b459342a047d',NULL),(70,6,159394,10,NULL,'2013-05-28 08:23:37',1,71,NULL,NULL,NULL,159393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'65a59e8b-a759-4f64-9cac-fc45c54aa22a',NULL),(71,6,159947,10,NULL,'2013-05-28 08:23:37',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'e3e7ef47-1279-4024-9dce-104675f9ed31',NULL),(72,6,1284,10,NULL,'2013-05-28 08:23:37',1,71,NULL,NULL,NULL,138291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'bff44a19-7bad-4da7-b6e5-0c7e5d3e6995',NULL),(73,6,159946,10,NULL,'2013-05-28 08:23:37',1,71,NULL,NULL,NULL,159943,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'17268777-0c48-44f6-8f2e-3516b510813b',NULL),(74,6,159394,10,NULL,'2013-05-28 08:23:37',1,75,NULL,NULL,NULL,159392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'44291e4f-1f14-408a-8045-8ae9d878f828',NULL),(75,6,159947,10,NULL,'2013-05-28 08:23:37',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'38965672-8b87-43e7-b3e3-d25405c193ac',NULL),(76,6,1284,10,NULL,'2013-05-28 08:23:37',1,75,NULL,NULL,NULL,150555,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'d3884ff9-903d-4d07-a03c-4d670dde0e23',NULL),(77,6,159946,10,NULL,'2013-05-28 08:23:37',1,75,NULL,NULL,NULL,159944,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2014-06-16 10:20:38',0,NULL,NULL,NULL,'4556fcae-4b7a-445a-990e-6b7792420904',NULL);
/*!40000 ALTER TABLE `obs` ENABLE KEYS */;
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
