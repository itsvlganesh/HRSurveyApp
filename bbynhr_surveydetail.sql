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
-- Table structure for table `surveydetail`
--

DROP TABLE IF EXISTS `surveydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `surveydetail` (
  `surveyCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QueCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Question` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QueType` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `misc1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc2` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc3` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc4` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `uc_id_survyDetail` (`surveyCode`,`QueCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveydetail`
--

LOCK TABLES `surveydetail` WRITE;
/*!40000 ALTER TABLE `surveydetail` DISABLE KEYS */;
INSERT INTO `surveydetail` VALUES ('SUR1','QUE1','In the last 10 days, have you received a confirmed diagnosis for coronavirus (COVID-19) by a coronavirus (COVID-19) test or from a diagnosis by a health care professional or are you waiting for a pending COVID-19 test result?','dropdown','2022-06-15 14:12:04',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE2','In the last 10 days, have you had close contact with or cared for someone currently diagnosed with COVID-19 or are you participating in a COVID-19 clinical study that includes being exposed to the virus?','dropdown','2022-06-15 14:12:04',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE3','Are you fully vaccinated ?','dropdown','2022-06-15 14:12:04',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE4','Number of vaccination taken/received ?','slide','2022-06-15 14:16:32',NULL,'A',NULL,NULL,NULL,NULL),('SUR1','QUE5','Please mention the vaccine name/code ?','editbox','2022-06-15 14:12:04',NULL,'A',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `surveydetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16  9:20:15
