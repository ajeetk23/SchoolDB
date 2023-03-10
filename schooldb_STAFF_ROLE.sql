-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: db-mysql-nyc1-46582-do-user-12984535-0.b.db.ondigitalocean.com    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '17892efe-7431-11ed-ae04-fa4552431939:1-315';

--
-- Table structure for table `STAFF_ROLE`
--

DROP TABLE IF EXISTS `STAFF_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_ROLE` (
  `ROLE_ID` bigint NOT NULL,
  `ROLE_TITLE` varchar(100) DEFAULT NULL,
  `ROLE_DESCRIPTION` text,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_ROLE`
--

LOCK TABLES `STAFF_ROLE` WRITE;
/*!40000 ALTER TABLE `STAFF_ROLE` DISABLE KEYS */;
INSERT INTO `STAFF_ROLE` VALUES (83745,'7th grade Math Teacher','Teacher for 7th grade math'),(83746,'7th grade Science Teacher','Teacher for 7th grade math'),(83747,'7th grade History Teacher','Teacher for 7th grade math'),(83748,'8th grade Math Teacher','Teacher for 8th grade math'),(83749,'8th grade Science Teacher','Teacher for 8th grade math'),(83750,'8th grade History Teacher','Teacher for 8th grade math'),(83751,'Headmaster','Headmaster'),(83752,'Janitor','Daytime janitor'),(83753,'Advisor','advisor for 8th grade students with last names from A-M'),(83754,'9th grade Math Teacher','Teacher for 9th grade math'),(83755,'9th grade Science Teacher','Teacher for 9th grade math'),(83756,'9th grade History Teacher','Teacher for 9th grade math'),(83757,'10th grade Math Teacher','Teacher for 10th grade math'),(83758,'10th grade Science Teacher','Teacher for 10th grade math'),(83759,'10th grade History Teacher','Teacher for 10th grade math');
/*!40000 ALTER TABLE `STAFF_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 21:05:17
