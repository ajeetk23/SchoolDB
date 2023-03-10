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
-- Table structure for table `STAFF_ADDRESS`
--

DROP TABLE IF EXISTS `STAFF_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_ADDRESS` (
  `STAFF_ID` bigint NOT NULL,
  `NUMBER` int NOT NULL,
  `STREET_ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE_OR_PROVINCE` varchar(100) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `ZIP_CODE` int NOT NULL,
  PRIMARY KEY (`STAFF_ID`,`NUMBER`,`STREET_ADDRESS`,`CITY`,`STATE_OR_PROVINCE`,`COUNTRY`,`ZIP_CODE`),
  UNIQUE KEY `STAFF_ID` (`STAFF_ID`),
  CONSTRAINT `STAFF_ADDRESS_ibfk_1` FOREIGN KEY (`STAFF_ID`) REFERENCES `STAFF_INFORMATION` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_ADDRESS`
--

LOCK TABLES `STAFF_ADDRESS` WRITE;
/*!40000 ALTER TABLE `STAFF_ADDRESS` DISABLE KEYS */;
INSERT INTO `STAFF_ADDRESS` VALUES (10001,3504,'7 Camarotis','Muntinlupa','Metro Manila','Philippines',1771),(10002,3505,'25 Molave Street','Makati','Metro Manila','Philippines',1220),(10003,3506,'17 N. Domingo Street','Quezon City','Metro Manila','Philippines',1100),(10004,3507,'11 Furman','Biñan','Laguna','Philippines',4024),(10005,3508,'14 Saratoga','Cainta','Rizal','Philippines',1900),(10006,3509,'29 Timberland Avenue','Antipolo','Rizal','Philippines',1850),(10007,4693,'123 San Gregorio','Makati','Metro Manila','Philippines',1232),(10008,4694,'124 Dela Rosa St','Makati','Metro Manila','Philippines',1238),(10009,4695,'1 San Jose del Monte City','San Jose del Monte','Central Luzon','Philippines',3023),(10010,4696,'2627 Roxas Blvd','Pasay','Metro Manila','Philippines',1300),(10011,4697,'314 Perez Blvd','Dagupan','Ilocos','Philippines',2400),(10012,4698,'123 Tomas Morato Ave','Quezon City','Metro Manila','Philippines',1103);
/*!40000 ALTER TABLE `STAFF_ADDRESS` ENABLE KEYS */;
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

-- Dump completed on 2022-12-13 21:05:37
