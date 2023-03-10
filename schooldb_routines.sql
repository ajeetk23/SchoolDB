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
-- Temporary view structure for view `VW_STUDENT_OVERVIEW_BY_HEADMASTER`
--

DROP TABLE IF EXISTS `VW_STUDENT_OVERVIEW_BY_HEADMASTER`;
/*!50001 DROP VIEW IF EXISTS `VW_STUDENT_OVERVIEW_BY_HEADMASTER`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_STUDENT_OVERVIEW_BY_HEADMASTER` AS SELECT 
 1 AS `STUDENT_ID`,
 1 AS `FIRST_NAME`,
 1 AS `LAST_NAME`,
 1 AS `GRADE_YEAR`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_STUDENT`
--

DROP TABLE IF EXISTS `VW_STUDENT`;
/*!50001 DROP VIEW IF EXISTS `VW_STUDENT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_STUDENT` AS SELECT 
 1 AS `STUDENT_ID`,
 1 AS `COURSE_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_CLASS_ROSTER`
--

DROP TABLE IF EXISTS `VW_CLASS_ROSTER`;
/*!50001 DROP VIEW IF EXISTS `VW_CLASS_ROSTER`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_CLASS_ROSTER` AS SELECT 
 1 AS `TITLE`,
 1 AS `TERM`,
 1 AS `FIRST_NAME`,
 1 AS `LAST_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_STAFF_OVERVIEW_BY_HEADMASTER`
--

DROP TABLE IF EXISTS `VW_STAFF_OVERVIEW_BY_HEADMASTER`;
/*!50001 DROP VIEW IF EXISTS `VW_STAFF_OVERVIEW_BY_HEADMASTER`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_STAFF_OVERVIEW_BY_HEADMASTER` AS SELECT 
 1 AS `STAFF_ID`,
 1 AS `FIRST_NAME`,
 1 AS `LAST_NAME`,
 1 AS `ROLE_TITLE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `VW_STUDENT_OVERVIEW_BY_HEADMASTER`
--

/*!50001 DROP VIEW IF EXISTS `VW_STUDENT_OVERVIEW_BY_HEADMASTER`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`doadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_STUDENT_OVERVIEW_BY_HEADMASTER` AS select `S`.`STUDENT_ID` AS `STUDENT_ID`,`S`.`FIRST_NAME` AS `FIRST_NAME`,`S`.`LAST_NAME` AS `LAST_NAME`,`G`.`GRADE_YEAR` AS `GRADE_YEAR` from (`STUDENT_INFORMATION` `S` left join `STUDENT_GRADE_YEAR` `G` on((`S`.`STUDENT_ID` = `G`.`STUDENT_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_STUDENT`
--

/*!50001 DROP VIEW IF EXISTS `VW_STUDENT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`doadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_STUDENT` AS select `SC`.`STUDENT_ID` AS `STUDENT_ID`,`SC`.`COURSE_ID` AS `COURSE_ID` from `STUDENT_COURSE` `SC` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_CLASS_ROSTER`
--

/*!50001 DROP VIEW IF EXISTS `VW_CLASS_ROSTER`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`doadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_CLASS_ROSTER` AS select `C`.`TITLE` AS `TITLE`,`SC`.`TERM` AS `TERM`,`S`.`FIRST_NAME` AS `FIRST_NAME`,`S`.`LAST_NAME` AS `LAST_NAME` from ((`COURSE_CATALOG` `C` join `STUDENT_COURSE` `SC` on((`SC`.`COURSE_ID` = `C`.`COURSE_ID`))) join `STUDENT_INFORMATION` `S` on((`SC`.`STUDENT_ID` = `S`.`STUDENT_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_STAFF_OVERVIEW_BY_HEADMASTER`
--

/*!50001 DROP VIEW IF EXISTS `VW_STAFF_OVERVIEW_BY_HEADMASTER`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`doadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_STAFF_OVERVIEW_BY_HEADMASTER` AS select `S`.`STAFF_ID` AS `STAFF_ID`,`S`.`FIRST_NAME` AS `FIRST_NAME`,`S`.`LAST_NAME` AS `LAST_NAME`,`R`.`ROLE_TITLE` AS `ROLE_TITLE` from (`STAFF_INFORMATION` `S` left join `STAFF_ROLE` `R` on((`S`.`ROLE_ID` = `R`.`ROLE_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 21:05:45
