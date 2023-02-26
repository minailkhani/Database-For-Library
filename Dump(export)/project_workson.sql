-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `workson`
--

DROP TABLE IF EXISTS `workson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workson` (
  `pblshname` varchar(20) NOT NULL,
  `tpcName` varchar(20) NOT NULL,
  PRIMARY KEY (`pblshname`,`tpcName`),
  KEY `tpcName` (`tpcName`),
  CONSTRAINT `workson_ibfk_1` FOREIGN KEY (`pblshname`) REFERENCES `publisher` (`pblshrName`) ON DELETE CASCADE,
  CONSTRAINT `workson_ibfk_2` FOREIGN KEY (`tpcName`) REFERENCES `topic` (`topicName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workson`
--

LOCK TABLES `workson` WRITE;
/*!40000 ALTER TABLE `workson` DISABLE KEYS */;
INSERT INTO `workson` VALUES ('pblshr1','topic1'),('pblshr10','topic10'),('pblshr1','topic2'),('pblshr2','topic2'),('pblshr2','topic3'),('pblshr3','topic3'),('pblshr4','topic4'),('pblshr3','topic5'),('pblshr5','topic5'),('pblshr4','topic6'),('pblshr6','topic6'),('pblshr7','topic7'),('pblshr8','topic8'),('pblshr9','topic9');
/*!40000 ALTER TABLE `workson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13 14:44:56
