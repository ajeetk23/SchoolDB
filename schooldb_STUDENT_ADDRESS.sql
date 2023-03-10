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
-- Table structure for table `STUDENT_ADDRESS`
--

DROP TABLE IF EXISTS `STUDENT_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT_ADDRESS` (
  `STUDENT_ID` bigint NOT NULL,
  `NUMBER` int NOT NULL,
  `STREET_ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE_OR_PROVINCE` varchar(100) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `ZIP_CODE` int NOT NULL,
  PRIMARY KEY (`STUDENT_ID`,`NUMBER`,`STREET_ADDRESS`,`CITY`,`STATE_OR_PROVINCE`,`COUNTRY`,`ZIP_CODE`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`),
  CONSTRAINT `STUDENT_ADDRESS_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `STUDENT_INFORMATION` (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT_ADDRESS`
--

LOCK TABLES `STUDENT_ADDRESS` WRITE;
/*!40000 ALTER TABLE `STUDENT_ADDRESS` DISABLE KEYS */;
INSERT INTO `STUDENT_ADDRESS` VALUES (68391,4504,'17 N. Domingo Street','Quezon City','Metro Manila','Philippines',1100),(68392,4505,'21 Juan Luna Street','San Juan','Metro Manila','Philippines',1100),(68393,4506,'35 Teodora Alonzo Street','Manila','Metro Manila','Philippines',1100),(68394,4507,'51 Antonio Villegas Street','Manila','Metro Manila','Philippines',1100),(68395,4508,'29 N. Domingo Street','Quezon City','Metro Manila','Philippines',1100),(68396,4509,'47 Antonio Villegas Street','Manila','Metro Manila','Philippines',1100),(68397,6379,'229  Maharlika Hwy',' Cabanatuan','Central Luzon','Philippines',3100),(68398,6380,'7866 Quezon Ave','Quezon City','Metro Manila','Philippines',1104),(68399,6381,'7186 Macabulos Dr','Tarlac City',' Central Luzon','Philippines',2300),(68400,6382,'1389 Diosdado Macapagal Blvd','Paranaque','Metro Manila','Philippines',1702),(68401,6383,'7352 Gomez St',' Tacloban','Eastern Visayas','Philippines',6500),(68402,6384,'59 Visayas Ave','Quezon City','Metro Manila','Philippines',1128),(68403,6385,'6433 Sabayle St','TIligan','Northern Mindanao','Philippines',9200),(68404,6386,'3535 Topaz Rd','Pasig','Metro Manila','Philippines',1605),(68405,6387,'9643 Rizal St','Davao City','Davao Region','Philippines',8016),(68406,6388,'1298 C. Bautista St','Marikina','Metro Manila','Philippines',1807),(68407,6389,'504 Bustos St','Manila','Metro Manila','Philippines',1001),(68408,6340,'7495 Justiniano R. Borja St','Cagayan de Oro','Northern Mindanao','Philippines',9000),(68409,6341,'6794 Hyacinth St','Cebu City','Central Visayas','Philippines',6045),(68410,6341,'9702 Diversion Rd','Lucena','Calabarzon','Philippines',4301),(68411,6343,'7489 Jose Abad Santos Ave','Mabalacat','Central Luzon','Philippines',2023),(68412,6344,'5537 Sylvia St','Angeles','Central Luzon','Philippines',200),(68413,6345,'7458 Edsa Corner North Ave','Quezon City','Metro Manila','Philippines',1104),(68414,6346,'8299 E Rodriguez Sr. Ave','Quezon City','Metro Manila','Philippines',1112);
/*!40000 ALTER TABLE `STUDENT_ADDRESS` ENABLE KEYS */;
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

-- Dump completed on 2022-12-13 21:05:29
