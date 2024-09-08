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
-- Table structure for table `library_history`
--

DROP TABLE IF EXISTS `library_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_history` (
  `hist_no` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `hist_action` varchar(30) DEFAULT NULL,
  `hist_table` varchar(30) DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  PRIMARY KEY (`hist_no`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `library_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `librarian` (`lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_history`
--

LOCK TABLES `library_history` WRITE;
/*!40000 ALTER TABLE `library_history` DISABLE KEYS */;
INSERT INTO `library_history` VALUES (1,9990003,'login','None','2023-06-24'),(2,9990003,'add','categories','2023-06-24'),(3,9990003,'add','publishers','2023-06-24'),(4,9990003,'add','authors','2023-06-24'),(5,9990003,'add','publishers','2023-06-24'),(6,9990003,'add','categories','2023-06-24'),(7,9990003,'add','authors','2023-06-24'),(8,9990003,'add','authors','2023-06-24'),(9,9990003,'add','publishers','2023-06-24'),(10,9990003,'add','categories','2023-06-24'),(11,9990003,'add','authors','2023-06-24'),(12,9990003,'add','categories','2023-06-24'),(13,9990003,'add','authors','2023-06-24'),(14,9990003,'add','publishers','2023-06-24'),(15,9990003,'add','categories','2023-06-24'),(16,9990003,'add','authors','2023-06-24'),(17,9990003,'add','authors','2023-06-24'),(18,9990003,'add','authors','2023-06-24'),(19,9990003,'add','authors','2023-06-24'),(20,9990003,'add','authors','2023-06-24'),(21,9990003,'add','publishers','2023-06-24'),(22,9990003,'add','authors','2023-06-24'),(23,9990003,'add','publishers','2023-06-24'),(24,9990003,'add','categories','2023-06-24'),(25,9990003,'login','None','2023-06-24'),(26,9990003,'add','books','2023-06-24'),(27,9990003,'add','books','2023-06-24'),(28,9990003,'add','books','2023-06-24'),(29,9990003,'add','books','2023-06-24'),(30,9990003,'add','books','2023-06-24'),(31,9990003,'add','books','2023-06-24'),(32,9990003,'add','books','2023-06-24'),(33,9990003,'add','publishers','2023-06-24'),(34,9990003,'add','books','2023-06-24'),(35,9990003,'add','books','2023-06-24'),(36,9990003,'add','books','2023-06-24'),(37,9990003,'add','book_copy','2023-06-24'),(38,9990003,'add','book_copy','2023-06-24'),(39,9990003,'add','book_copy','2023-06-24'),(40,9990003,'add','book_copy','2023-06-24'),(41,9990003,'add','book_copy','2023-06-24'),(42,9990003,'add','book_copy','2023-06-24'),(43,9990003,'add','book_copy','2023-06-24'),(44,9990003,'add','book_copy','2023-06-24'),(45,9990003,'add','book_copy','2023-06-24'),(46,9990003,'add','book_copy','2023-06-24'),(47,9990003,'add','book_copy','2023-06-24'),(48,9990003,'add','book_copy','2023-06-24'),(49,9990003,'add','book_copy','2023-06-24'),(50,9990003,'add','book_copy','2023-06-24'),(51,9990003,'add','book_copy','2023-06-24'),(52,9990003,'add','book_copy','2023-06-24'),(53,9990003,'add','book_copy','2023-06-24'),(54,9990003,'add','book_copy','2023-06-24'),(55,9990003,'add','book_copy','2023-06-24'),(56,9990003,'add','book_copy','2023-06-24'),(57,9990003,'add','book_copy','2023-06-24'),(58,9990003,'add','book_copy','2023-06-24'),(59,9990003,'add','book_copy','2023-06-24'),(60,9990003,'add','book_copy','2023-06-24'),(61,9990003,'add','book_copy','2023-06-24'),(62,9990003,'add','book_copy','2023-06-24'),(63,9990003,'add','book_copy','2023-06-24'),(64,9990003,'add','book_copy','2023-06-24'),(65,9990003,'add','book_copy','2023-06-24'),(66,9990003,'add','book_copy','2023-06-24'),(67,9990003,'add','book_copy','2023-06-24'),(68,9990003,'add','book_copy','2023-06-24'),(69,9990003,'add','book_copy','2023-06-24'),(70,9990003,'add','book_copy','2023-06-24'),(71,9990003,'add','book_copy','2023-06-24'),(72,9990003,'add','book_copy','2023-06-24'),(73,9990003,'add','book_copy','2023-06-24'),(74,9990003,'add','book_copy','2023-06-24'),(75,9990003,'add','book_copy','2023-06-24'),(76,9990003,'add','book_copy','2023-06-24'),(77,9990003,'add','book_copy','2023-06-24'),(78,9990003,'add','book_copy','2023-06-24'),(79,9990003,'add','book_copy','2023-06-24'),(80,9990003,'add','book_copy','2023-06-24'),(81,9990003,'add','book_copy','2023-06-24'),(82,9990003,'add','book_copy','2023-06-24'),(83,9990003,'add','book_copy','2023-06-24'),(84,9990003,'add','book_copy','2023-06-24'),(85,9990003,'add','members','2023-06-24'),(86,9990003,'add','members','2023-06-24'),(87,9990003,'add','members','2023-06-24'),(88,9990003,'add','members','2023-06-24'),(89,9990003,'add','members','2023-06-24'),(90,9990003,'add','members','2023-06-24'),(91,9990003,'rent','services','2023-06-24'),(92,9990003,'rent','services','2023-06-24'),(93,9990003,'rent','services','2023-06-24'),(94,9990003,'rent','services','2023-06-24'),(95,9990003,'buy','book_buy','2023-06-24'),(96,9990003,'buy','book_buy','2023-06-24'),(97,9990003,'buy','book_buy','2023-06-24'),(98,9990003,'buy','book_buy','2023-06-24'),(99,9990003,'buy','book_buy','2023-06-24'),(100,9990003,'rent','services','2023-06-24'),(101,9990003,'add','librarians','2023-06-24'),(102,9990003,'set','permissions','2023-06-24'),(103,9990003,'logout','None','2023-06-24'),(104,9990008,'login','None','2023-06-24'),(105,9990008,'logout','None','2023-06-24'),(106,9990008,'login','None','2023-06-24'),(107,9990008,'edit','books','2023-06-24'),(108,9990008,'buy','book_buy','2023-06-24'),(109,9990008,'logout','None','2023-06-24'),(110,9990003,'login','None','2023-06-24'),(111,9990003,'edit','books','2023-06-24'),(112,9990003,'rent','services','2023-06-24'),(113,9990003,'change password','librarians','2023-06-24'),(114,9990003,'logout','None','2023-06-24'),(115,9990007,'login','None','2023-06-24'),(116,9990007,'logout','None','2023-06-24'),(117,9990003,'login','None','2023-06-24');
/*!40000 ALTER TABLE `library_history` ENABLE KEYS */;
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
