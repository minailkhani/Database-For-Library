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
-- Table structure for table `readingroom`
--

DROP TABLE IF EXISTS `readingroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `readingroom` (
  `roomnum` int unsigned NOT NULL AUTO_INCREMENT,
  `libraryName` varchar(20) NOT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `gender` tinyint unsigned DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`roomnum`,`libraryName`),
  KEY `libraryName` (`libraryName`),
  CONSTRAINT `readingroom_ibfk_1` FOREIGN KEY (`libraryName`) REFERENCES `library` (`libraryName`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readingroom`
--

LOCK TABLES `readingroom` WRITE;
/*!40000 ALTER TABLE `readingroom` DISABLE KEYS */;
INSERT INTO `readingroom` VALUES (1,'library2','07:00:00','19:00:00',2,1),(2,'library3','07:00:00','19:00:00',1,1),(3,'library4','07:00:00','19:00:00',2,1),(4,'library5','07:00:00','19:00:00',2,1),(5,'library1','07:00:00','19:00:00',1,1),(6,'library2','07:00:00','19:00:00',2,1),(7,'library3','07:00:00','19:00:00',2,1),(8,'library4','07:00:00','19:00:00',0,1),(9,'library5','07:00:00','19:00:00',2,1),(10,'library1','07:00:00','19:00:00',2,1),(11,'library2','07:00:00','13:00:00',0,5),(12,'library3','07:00:00','13:00:00',1,5),(13,'library4','07:00:00','13:00:00',0,5),(14,'library5','07:00:00','13:00:00',1,5),(15,'library1','07:00:00','13:00:00',1,5),(16,'library2','07:00:00','13:00:00',2,5),(17,'library3','07:00:00','13:00:00',0,5),(18,'library4','07:00:00','13:00:00',0,5),(19,'library5','07:00:00','13:00:00',2,5),(20,'library1','07:00:00','13:00:00',2,5),(21,'library2','07:00:00','19:00:00',0,2),(22,'library3','07:00:00','19:00:00',1,3),(23,'library4','07:00:00','19:00:00',0,4),(24,'library5','07:00:00','19:00:00',1,2),(25,'library1','07:00:00','19:00:00',1,3);
/*!40000 ALTER TABLE `readingroom` ENABLE KEYS */;
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
