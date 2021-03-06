CREATE DATABASE  IF NOT EXISTS `jewlz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `jewlz`;
-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: jewlz
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `shipping_costs`
--

DROP TABLE IF EXISTS `shipping_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipping_costs` (
  `Shipping_Code_ID` int(11) NOT NULL COMMENT 'Shipping ID. Used a generated PK because cannot ensure state codes will be unique if we expand beyond the US. ',
  `State_Code` varchar(3) NOT NULL COMMENT 'State code to match with customer state. 2 characters, uppercase. ',
  `Shipping_Cost` double NOT NULL COMMENT 'Cost of shipping am order to this state. ',
  PRIMARY KEY (`Shipping_Code_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_costs`
--

LOCK TABLES `shipping_costs` WRITE;
/*!40000 ALTER TABLE `shipping_costs` DISABLE KEYS */;
INSERT INTO `shipping_costs` VALUES (1,' AL',7.95),(2,' AK',25),(3,' AZ',7.95),(4,' AR',7.95),(5,' CA',7.95),(6,' CO',7.95),(7,' CT',7.95),(8,' DE',10),(9,' FL',7.95),(10,' GA',7.95),(11,' HI',75),(12,' ID',7.95),(13,' IL',7.95),(14,' IN',7.95),(15,' IA',7.95),(16,' KS',7.95),(17,' KY',7.95),(18,' LA',7.95),(19,' ME',7.95),(20,' MD',7.95),(21,' MA',7.95),(22,' MI',7.95),(23,' MN',10),(24,' MS',10),(25,' MO',10),(26,' MT',10),(27,' NE',10),(28,' NV',10),(29,' NH',10),(30,' NJ',10),(31,' NM',10),(32,' NY',10),(33,' NC',10),(34,' ND',10),(35,' OH',10),(36,' OK',10),(37,' OR',10),(38,' PA',10),(39,' RI',10),(40,' SC',10),(41,' SD',10),(42,' TN',10),(43,' TX',10),(44,' UT',7.95),(45,' VT',7.95),(46,' VA',7.95),(47,' WA',7.95),(48,' WV',7.95),(49,' WI',7.95),(50,' WY',7.95);
/*!40000 ALTER TABLE `shipping_costs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 10:43:34
