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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `Callnumber` int unsigned NOT NULL,
  `isReference` tinyint(1) DEFAULT NULL,
  `color` tinyint(1) DEFAULT NULL,
  `handwrittenORprinted` tinyint(1) DEFAULT NULL,
  `tpcName` varchar(20) DEFAULT NULL,
  `translateof` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Callnumber`),
  KEY `tpcName` (`tpcName`),
  KEY `translateof` (`translateof`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Callnumber`) REFERENCES `source` (`CallNumber`) ON DELETE CASCADE,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`tpcName`) REFERENCES `topic` (`topicName`) ON DELETE CASCADE,
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`translateof`) REFERENCES `book` (`Callnumber`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (11,0,0,0,'topic6',NULL),(12,0,0,0,'topic7',NULL),(13,1,1,0,'topic8',NULL),(14,0,0,0,'topic9',11),(15,1,1,0,'topic10',NULL),(16,0,0,0,'topic10',NULL),(17,1,0,1,'topic6',14),(18,0,1,0,'topic3',NULL),(19,0,1,0,'topic4',NULL),(20,0,1,0,'topic1',13);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13 14:44:55
