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
-- Table structure for table `belong`
--

DROP TABLE IF EXISTS `belong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belong` (
  `libraryName` varchar(20) NOT NULL,
  `Callnumber` int unsigned NOT NULL,
  PRIMARY KEY (`libraryName`,`Callnumber`),
  KEY `Callnumber` (`Callnumber`),
  CONSTRAINT `belong_ibfk_1` FOREIGN KEY (`libraryName`) REFERENCES `library` (`libraryName`) ON DELETE CASCADE,
  CONSTRAINT `belong_ibfk_2` FOREIGN KEY (`Callnumber`) REFERENCES `source` (`CallNumber`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belong`
--

LOCK TABLES `belong` WRITE;
/*!40000 ALTER TABLE `belong` DISABLE KEYS */;
INSERT INTO `belong` VALUES ('library2',1),('library3',2),('library4',3),('library5',4),('library6',5),('library7',6),('library1',7),('library2',8),('library3',9),('library4',10),('library4',11),('library1',12),('library2',13),('library3',14),('library4',15),('library1',16),('library2',17),('library3',18),('library4',19),('library1',20),('library2',21),('library3',22),('library4',23),('library1',24),('library2',25),('library3',26),('library4',27),('library1',28),('library2',29),('library3',30),('library4',31),('library1',32),('library2',33),('library3',34),('library4',35),('library1',36),('library2',37),('library3',38),('library4',39),('library1',40);
/*!40000 ALTER TABLE `belong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13 14:44:57
