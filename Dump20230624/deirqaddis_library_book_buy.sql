-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: deirqaddis_library
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `book_buy`
--

DROP TABLE IF EXISTS `book_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_buy` (
  `buy_no` int NOT NULL AUTO_INCREMENT,
  `buy_date` date DEFAULT NULL,
  `book_copy` int NOT NULL,
  `mem_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `book_price` int DEFAULT NULL,
  PRIMARY KEY (`buy_no`),
  KEY `book_copy` (`book_copy`),
  KEY `mem_id` (`mem_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `book_buy_ibfk_1` FOREIGN KEY (`book_copy`) REFERENCES `book_copy` (`copy_no`),
  CONSTRAINT `book_buy_ibfk_2` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`),
  CONSTRAINT `book_buy_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `librarian` (`lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_buy`
--

LOCK TABLES `book_buy` WRITE;
/*!40000 ALTER TABLE `book_buy` DISABLE KEYS */;
INSERT INTO `book_buy` VALUES (1,'2023-06-24',44,1200005,9990003,17),(2,'2023-06-24',45,1200005,9990003,17),(3,'2023-06-24',6,1200005,9990003,18),(4,'2023-06-24',7,1200005,9990003,18),(5,'2023-06-24',34,1200002,9990003,9),(6,'2023-06-24',35,1200005,9990008,11);
/*!40000 ALTER TABLE `book_buy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-24 23:47:54
