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
-- Table structure for table `registerinf`
--

DROP TABLE IF EXISTS `registerinf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registerinf` (
  `NationalID` int unsigned NOT NULL,
  `job` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `Maritalstatus` tinyint(1) NOT NULL,
  `physicalcondition` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` int unsigned NOT NULL,
  `cellphoneNUM` int unsigned NOT NULL,
  `phoneNum` int unsigned NOT NULL,
  `fathername` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`NationalID`),
  CONSTRAINT `registerinf_ibfk_1` FOREIGN KEY (`NationalID`) REFERENCES `patron` (`memberID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registerinf`
--

LOCK TABLES `registerinf` WRITE;
/*!40000 ALTER TABLE `registerinf` DISABLE KEYS */;
INSERT INTO `registerinf` VALUES (100001,'job1','address1',0,'condition1','member1@gmail.com',1216,2630009,91200002,'fathername1','1938-10-04'),(100002,'job1','address2',1,'condition2','member2@ut.ac.ir',1228,2630002,91200003,'fathername2','1999-02-03'),(100003,'job3','address3',1,'condition2','member3@ut.ac.ir',1239,2630003,91200004,'fathername2','1954-03-03'),(100004,'job4','address4',0,'condition3','member4@ut.ac.ir',1241,2630004,91200005,'fathername4','1962-04-04'),(100005,'job1','address5',0,'condition5','member5@gmail.com',1233,2630005,91200006,'fathername5','1980-05-05'),(100006,'job6','address6',0,'condition4','member6@ut.ac.ir',1234,2630006,91200007,'fathername4','1978-06-06'),(100007,'job2','address7',1,'condition2','member7@ut.ac.ir',1233,2630007,91200008,'fathername1','1986-08-08'),(100008,'job8','address8',0,'condition5','member8@ut.ac.ir',1234,2630008,91200009,'fathername2','1994-10-10'),(100009,'job13','address9',1,'condition1','member9@ut.ac.ir',123,2630009,91200010,'fathername5','2002-04-30'),(100010,'job2','address10',0,'condition1','member10@gmail.com',123,2630010,91200011,'fathername3','2010-05-24');
/*!40000 ALTER TABLE `registerinf` ENABLE KEYS */;
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
