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
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `ReservationNum` int unsigned NOT NULL AUTO_INCREMENT,
  `libraryName` varchar(20) NOT NULL,
  `amphName` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `organizer` varchar(20) DEFAULT NULL,
  `needreserve` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ReservationNum`,`libraryName`,`amphName`),
  KEY `libraryName` (`libraryName`,`amphName`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`libraryName`, `amphName`) REFERENCES `amphitheater` (`libraryName`, `amphName`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'library2','amphName2','name1','2020-01-01','organizer1',1),(2,'library2','amphName2','name2','2020-01-02','organizer2',1),(3,'library1','amphName1','name3','2021-01-03','organizer3',1),(4,'library2','amphName2','name4','2021-01-04','organizer4',1),(5,'library4','amphName3','name5','2021-05-01','organizer5',1),(6,'library1','amphName1','name6','2021-04-01','organizer6',1),(7,'library2','amphName2','name7','2021-03-01','organizer7',0),(8,'library10','amphName1','name8','2021-10-01','organizer8',1),(9,'library1','amphName1','name9','2021-11-01','organizer9',0),(10,'library2','amphName2','name10','2021-01-19','organizer10',0),(11,'library1','amphName2','jashn etmam term4','1400-05-24','mina ilkhani',1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
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
