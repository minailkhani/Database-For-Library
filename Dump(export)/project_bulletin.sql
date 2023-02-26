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
-- Table structure for table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulletin` (
  `BltnID` int unsigned NOT NULL AUTO_INCREMENT,
  `libraryName` varchar(20) NOT NULL,
  `topic` varchar(20) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `workerID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`BltnID`,`libraryName`),
  KEY `libraryName` (`libraryName`),
  KEY `workerID` (`workerID`),
  CONSTRAINT `bulletin_ibfk_1` FOREIGN KEY (`libraryName`) REFERENCES `library` (`libraryName`) ON DELETE CASCADE,
  CONSTRAINT `bulletin_ibfk_2` FOREIGN KEY (`workerID`) REFERENCES `worker` (`workerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletin`
--

LOCK TABLES `bulletin` WRITE;
/*!40000 ALTER TABLE `bulletin` DISABLE KEYS */;
INSERT INTO `bulletin` VALUES (1,'library2','topic1','2021-02-01','2021-02-28','ownerName1',2),(2,'library1','topic2','2021-08-03',NULL,'ownerName2',3),(3,'library5','topic4','2021-08-04','2021-08-28','ownerName3',4),(4,'library2','topic4','2021-02-01','2021-08-13','ownerName4',5),(5,'library1','topic5','2021-07-20','2021-08-13','ownerName5',1),(6,'library4','topic2','2021-03-01','2021-03-28','ownerName6',2),(7,'library2','topic7','2021-07-01','2021-08-13','ownerName7',3),(8,'library1','topic8','2021-02-01','2021-02-02','ownerName8',4),(9,'library7','topic2','2021-08-01',NULL,'ownerName9',5),(10,'library2','topic4','2021-08-11',NULL,'ownerName10',1);
/*!40000 ALTER TABLE `bulletin` ENABLE KEYS */;
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
