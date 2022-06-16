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
-- Table structure for table `meetreqtypes`
--

DROP TABLE IF EXISTS `meetreqtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `meetreqtypes` (
  `reqID` int(6) NOT NULL AUTO_INCREMENT,
  `reqType` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reqID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetreqtypes`
--

LOCK TABLES `meetreqtypes` WRITE;
/*!40000 ALTER TABLE `meetreqtypes` DISABLE KEYS */;
INSERT INTO `meetreqtypes` VALUES (6,'Pay And Benefits','2022-06-15 21:44:48','2022-06-15 21:44:48','A'),(7,'Probation Period Review','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(8,'Appraisal & Promotion','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(9,'Training','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(10,'Sports & Cultural','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(11,'Misc Certificate','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(12,'Others','2022-06-15 21:51:37','2022-06-15 21:51:37','A'),(13,'Complaints','2022-06-15 21:53:05','2022-06-15 21:53:05','A');
/*!40000 ALTER TABLE `meetreqtypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16  9:20:17
