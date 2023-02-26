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
-- Table structure for table `chairandtable`
--

DROP TABLE IF EXISTS `chairandtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chairandtable` (
  `type` varchar(20) NOT NULL,
  `roomnum` int unsigned NOT NULL,
  `libraryName` varchar(20) NOT NULL,
  `num` int unsigned NOT NULL,
  PRIMARY KEY (`type`,`roomnum`,`libraryName`),
  KEY `roomnum` (`roomnum`,`libraryName`),
  CONSTRAINT `chairandtable_ibfk_1` FOREIGN KEY (`roomnum`, `libraryName`) REFERENCES `readingroom` (`roomnum`, `libraryName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chairandtable`
--

LOCK TABLES `chairandtable` WRITE;
/*!40000 ALTER TABLE `chairandtable` DISABLE KEYS */;
INSERT INTO `chairandtable` VALUES ('1',1,'library2',11),('1',11,'library2',5),('1',12,'library3',15),('1',13,'library4',50),('1',14,'library5',15),('1',17,'library3',5),('1',23,'library4',24),('1',24,'library5',12),('2',15,'library1',15),('2',16,'library2',25),('2',18,'library4',5),('2',19,'library5',25),('2',20,'library1',25),('2',21,'library2',20),('2',22,'library3',13),('4',5,'library1',20),('4',6,'library2',10),('4',7,'library3',17),('5',1,'library2',10),('5',2,'library3',10),('5',3,'library4',15),('5',4,'library5',15),('5',25,'library1',13),('9',8,'library4',17),('9',9,'library5',17),('9',10,'library1',17);
/*!40000 ALTER TABLE `chairandtable` ENABLE KEYS */;
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
