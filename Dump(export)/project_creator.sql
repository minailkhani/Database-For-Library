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
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creator` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `creatorname` varchar(20) DEFAULT NULL,
  `birthdate` year DEFAULT NULL,
  `deathdate` year DEFAULT NULL,
  `age` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES (1,'creator1',1925,2000,NULL),(2,'creator2',1930,NULL,NULL),(3,'creator3',1935,NULL,NULL),(4,'creator4',1940,NULL,NULL),(5,'creator5',1945,NULL,NULL),(6,'creator6',1950,NULL,NULL),(7,'creator7',1955,NULL,NULL),(8,'creator8',1960,2020,NULL),(9,'creator9',1965,NULL,NULL),(10,'creator10',1970,NULL,NULL),(11,'creator11',1975,NULL,NULL),(12,'creator12',1980,NULL,NULL),(13,'creator13',1985,NULL,NULL),(14,'creator14',1990,NULL,NULL),(15,'creator15',1995,NULL,NULL),(16,'creator16',2000,NULL,NULL),(17,'creator17',2005,NULL,NULL),(18,'creator18',2010,NULL,NULL),(19,'creator19',2015,NULL,NULL),(20,'creator20',1920,2000,NULL),(21,'creator21',1925,2000,NULL),(22,'creator22',1930,NULL,NULL),(23,'creator23',1935,NULL,NULL),(24,'creator24',1940,NULL,NULL),(25,'creator25',1945,NULL,NULL),(26,'creator26',1950,2000,NULL),(27,'creator27',1955,1990,NULL),(28,'creator28',1960,NULL,NULL),(29,'creator29',1965,NULL,NULL),(30,'creator30',1970,NULL,NULL),(31,'creator31',1975,NULL,NULL),(32,'creator32',1980,NULL,NULL),(33,'creator33',1985,NULL,NULL),(34,'creator34',1990,NULL,NULL),(35,'creator35',1995,NULL,NULL),(36,'creator36',2000,NULL,NULL),(37,'creator37',2005,NULL,NULL),(38,'creator38',2010,NULL,NULL),(39,'creator39',2015,NULL,NULL),(40,'creator40',1920,2000,NULL);
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
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
