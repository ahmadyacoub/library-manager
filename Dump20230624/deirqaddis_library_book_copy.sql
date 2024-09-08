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
-- Table structure for table `book_copy`
--

DROP TABLE IF EXISTS `book_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_copy` (
  `copy_no` int NOT NULL AUTO_INCREMENT,
  `book_code` int NOT NULL,
  `loan_status` varchar(25) NOT NULL DEFAULT 'not_rented',
  `copy_status` varchar(20) NOT NULL DEFAULT 'new',
  `buy_status` varchar(20) DEFAULT 'yes',
  PRIMARY KEY (`copy_no`),
  KEY `on_del_cas` (`book_code`),
  CONSTRAINT `on_del_cas` FOREIGN KEY (`book_code`) REFERENCES `book` (`book_code`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_copy`
--

LOCK TABLES `book_copy` WRITE;
/*!40000 ALTER TABLE `book_copy` DISABLE KEYS */;
INSERT INTO `book_copy` VALUES (1,56560000,'rented','used','yes'),(2,56560000,'rented','used','yes'),(3,56560000,'rented','used','yes'),(4,56560000,'not_rented','new','yes'),(5,56560001,'rented','used','yes'),(6,56560001,'sold','new','yes'),(7,56560001,'sold','new','yes'),(8,56560001,'not_rented','used','yes'),(9,56560001,'not_rented','used','yes'),(10,56560001,'not_rented','used','no'),(11,56560001,'not_rented','new','no'),(12,56560002,'rented','used','no'),(13,56560002,'not_rented','new','no'),(14,56560002,'not_rented','new','no'),(15,56560003,'not_rented','new','no'),(16,56560003,'not_rented','new','no'),(17,56560003,'not_rented','new','no'),(18,56560003,'not_rented','new','yes'),(19,56560003,'not_rented','new','yes'),(20,56560004,'not_rented','new','yes'),(21,56560004,'not_rented','new','yes'),(22,56560004,'not_rented','new','yes'),(23,56560004,'not_rented','new','yes'),(24,56560004,'not_rented','new','yes'),(25,56560004,'not_rented','new','yes'),(26,56560005,'not_rented','new','yes'),(27,56560005,'not_rented','new','yes'),(28,56560005,'not_rented','new','yes'),(29,56560005,'not_rented','new','yes'),(30,56560005,'not_rented','new','yes'),(31,56560005,'not_rented','new','yes'),(32,56560005,'not_rented','new','yes'),(33,56560005,'not_rented','new','yes'),(34,56560006,'sold','used','yes'),(35,56560006,'sold','used','yes'),(36,56560006,'not_rented','new','no'),(37,56560007,'rented','used','no'),(38,56560007,'not_rented','new','no'),(39,56560007,'not_rented','new','no'),(40,56560007,'not_rented','new','no'),(41,56560008,'not_rented','new','yes'),(42,56560008,'not_rented','new','yes'),(43,56560008,'not_rented','new','yes'),(44,56560009,'sold','new','yes'),(45,56560009,'sold','new','yes'),(46,56560009,'not_rented','new','yes'),(47,56560009,'not_rented','new','yes'),(48,56560009,'not_rented','new','yes');
/*!40000 ALTER TABLE `book_copy` ENABLE KEYS */;
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
