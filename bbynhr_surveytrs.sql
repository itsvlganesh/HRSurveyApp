-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bbynhr
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `surveytrs`
--

DROP TABLE IF EXISTS `surveytrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `surveytrs` (
  `surveyCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QueCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Answer` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DeviceID` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `misc1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `uc_id_survyTRS` (`surveyCode`,`QueCode`,`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveytrs`
--

LOCK TABLES `surveytrs` WRITE;
/*!40000 ALTER TABLE `surveytrs` DISABLE KEYS */;
INSERT INTO `surveytrs` VALUES ('SUR1','QUE1','NO','12312312asda','02221','2022-06-15 14:28:10',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE1','YES','22312312asda','03454','2022-06-15 14:28:45',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE2','YES, MY CLOSE FRIEND GOT INFECTED BUT I AM TESTED NEGATIVE','12312312asda','02221','2022-06-15 14:28:10',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE2','YES, MY CLOSE FRIEND GOT INFECTED BUT I AM TESTED NEGATIVE','22312312asda','03454','2022-06-15 14:28:46',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE3','YES','12312312asda','02221','2022-06-15 14:28:10',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE3','YES','22312312asda','03454','2022-06-15 14:28:46',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE4','3','12312312asda','02221','2022-06-15 14:28:10',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE4','2','22312312asda','03454','2022-06-15 14:28:46',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE5','ASTRAZENCA','12312312asda','02221','2022-06-15 14:28:10',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE5','ASTRAZENCA','22312312asda','03454','2022-06-15 14:28:46',NULL,'A',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `surveytrs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16  9:20:09
