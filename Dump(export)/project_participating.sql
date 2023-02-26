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
-- Table structure for table `participating`
--

DROP TABLE IF EXISTS `participating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participating` (
  `email` varchar(30) NOT NULL,
  `Reservationnum` int unsigned NOT NULL,
  `libraryName` varchar(20) NOT NULL,
  `amphName` varchar(20) NOT NULL,
  PRIMARY KEY (`email`,`Reservationnum`,`libraryName`,`amphName`),
  KEY `Reservationnum` (`Reservationnum`,`libraryName`,`amphName`),
  CONSTRAINT `participating_ibfk_1` FOREIGN KEY (`email`) REFERENCES `participatingnamemail` (`email`) ON DELETE CASCADE,
  CONSTRAINT `participating_ibfk_2` FOREIGN KEY (`Reservationnum`, `libraryName`, `amphName`) REFERENCES `reservation` (`ReservationNum`, `libraryName`, `amphName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participating`
--

LOCK TABLES `participating` WRITE;
/*!40000 ALTER TABLE `participating` DISABLE KEYS */;
INSERT INTO `participating` VALUES ('Participating1@gmail.com',1,'library2','amphName2'),('Participating2@gmail.com',2,'library2','amphName2'),('Participating3@gmail.com',3,'library1','amphName1'),('Participating4@gmail.com',4,'library2','amphName2'),('Participating5@gmail.com',5,'library4','amphName3'),('Participating1@gmail.com',6,'library1','amphName1'),('Participating1@gmail.com',7,'library2','amphName2'),('Participating8@gmail.com',8,'library10','amphName1'),('Participating2@gmail.com',9,'library1','amphName1'),('Participating1@gmail.com',10,'library2','amphName2');
/*!40000 ALTER TABLE `participating` ENABLE KEYS */;
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
