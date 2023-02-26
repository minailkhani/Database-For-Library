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
-- Table structure for table `periodical`
--

DROP TABLE IF EXISTS `periodical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodical` (
  `Callnumber` int unsigned NOT NULL,
  `cycle` tinyint unsigned DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `prevCallNumber` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Callnumber`),
  KEY `prevCallNumber` (`prevCallNumber`),
  CONSTRAINT `periodical_ibfk_1` FOREIGN KEY (`Callnumber`) REFERENCES `source` (`CallNumber`) ON DELETE CASCADE,
  CONSTRAINT `periodical_ibfk_2` FOREIGN KEY (`prevCallNumber`) REFERENCES `periodical` (`Callnumber`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodical`
--

LOCK TABLES `periodical` WRITE;
/*!40000 ALTER TABLE `periodical` DISABLE KEYS */;
INSERT INTO `periodical` VALUES (21,1,'type1',NULL),(22,2,'type2',21),(23,1,'type3',22),(24,1,'type4',23),(25,2,'type5',24),(26,3,'type6',25),(27,4,'type7',26),(28,2,'type8',27),(29,5,'type9',28),(30,5,'type10',29);
/*!40000 ALTER TABLE `periodical` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13 14:44:54
