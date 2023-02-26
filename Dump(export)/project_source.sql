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
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source` (
  `CallNumber` int unsigned NOT NULL AUTO_INCREMENT,
  `publicationdate` year NOT NULL,
  `name` varchar(20) NOT NULL,
  `holdable` tinyint NOT NULL,
  `isonhold` tinyint(1) NOT NULL,
  `stackNUM` int unsigned DEFAULT NULL,
  `line` int unsigned DEFAULT NULL,
  `publName` varchar(20) DEFAULT NULL,
  `donatebymember` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CallNumber`),
  KEY `stackNUM` (`stackNUM`),
  KEY `publName` (`publName`),
  KEY `donatebymember` (`donatebymember`),
  CONSTRAINT `source_ibfk_1` FOREIGN KEY (`stackNUM`) REFERENCES `stack` (`stackID`) ON DELETE CASCADE,
  CONSTRAINT `source_ibfk_2` FOREIGN KEY (`publName`) REFERENCES `publisher` (`pblshrName`) ON DELETE CASCADE,
  CONSTRAINT `source_ibfk_3` FOREIGN KEY (`donatebymember`) REFERENCES `patron` (`memberID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,1990,'sourceName1',1,1,1,11,'pblshr4',NULL),(2,2011,'sourceName2',1,1,1,20,'pblshr4',NULL),(3,2021,'sourceName3',0,0,2,3,'pblshr5',NULL),(4,2001,'sourceName4',1,1,2,4,'pblshr4',NULL),(5,2003,'sourceName5',1,1,2,3,'pblshr5',NULL),(6,2012,'sourceName6',0,0,1,6,'pblshr10',NULL),(7,2019,'sourceName7',1,0,1,13,'pblshr4',NULL),(8,2000,'sourceName8',1,1,2,28,'pblshr5',NULL),(9,2002,'sourceName9',1,0,1,19,'pblshr5',NULL),(10,2000,'sourceName10',0,0,2,10,'pblshr10',NULL),(11,2000,'sourceName11',1,0,3,1,'pblshr1',NULL),(12,2000,'sourceName12',1,0,3,1,'pblshr2',NULL),(13,2000,'sourceName13',1,0,3,3,'pblshr3',NULL),(14,2000,'sourceName14',1,1,3,1,'pblshr1',NULL),(15,2000,'sourceName15',1,0,5,5,'pblshr1',NULL),(16,2000,'sourceName16',1,1,5,6,'pblshr2',NULL),(17,2000,'sourceName17',1,0,4,17,'pblshr2',NULL),(18,2000,'sourceName18',1,0,4,18,'pblshr3',NULL),(19,2000,'sourceName19',1,1,3,9,'pblshr1',NULL),(20,2000,'sourceName20',1,0,3,20,'pblshr2',NULL),(21,2000,'sourceName21',0,0,6,1,'pblshr6',NULL),(22,2000,'sourceName22',0,0,6,1,'pblshr6',NULL),(23,2000,'sourceName23',1,1,6,2,'pblshr6',NULL),(24,2000,'sourceName24',1,0,6,4,'pblshr7',NULL),(25,2000,'sourceName25',0,0,6,5,'pblshr6',NULL),(26,2000,'sourceName26',0,0,6,6,'pblshr7',NULL),(27,2000,'sourceName27',0,0,6,4,'pblshr7',NULL),(28,2000,'sourceName28',0,0,6,5,'pblshr7',NULL),(29,2000,'sourceName29',1,0,6,9,'pblshr6',NULL),(30,2000,'sourceName30',0,0,6,3,'pblshr7',NULL),(31,2000,'sourceName31',0,0,1,1,'pblshr8',NULL),(32,2000,'sourceName32',0,0,1,2,'pblshr9',NULL),(33,2000,'sourceName33',0,0,1,2,'pblshr1',NULL),(34,2000,'sourceName34',1,1,1,4,'pblshr1',NULL),(35,2000,'sourceName35',1,0,1,3,'pblshr1',NULL),(36,2000,'sourceName36',0,0,1,3,'pblshr8',NULL),(37,2000,'sourceName37',1,1,1,11,'pblshr8',NULL),(38,2000,'sourceName38',0,0,1,3,'pblshr8',NULL),(39,2000,'sourceName39',1,1,1,9,'pblshr9',NULL),(40,2000,'sourceName40',1,0,1,10,'pblshr1',NULL);
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
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
