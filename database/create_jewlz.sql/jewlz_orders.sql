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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL COMMENT 'Order ID is used to group all items (records) for an order. Order ID does not constitute a PK by itself. ',
  `Order_Date` datetime NOT NULL COMMENT 'The date the order was SUBMITTED. ',
  `Order_Status` text NOT NULL COMMENT 'Current status of the order. ‘Open’ means that ‘Submit order’ has not yet been clicked. ',
  `Product_ID` int(11) NOT NULL COMMENT 'The FK for the product being purchased. ',
  `Order_Total` double DEFAULT NULL COMMENT 'The order total. Note: this is duplicated for each product record on an order. ',
  `Product_Quantity` int(11) NOT NULL COMMENT 'The number of exact items on the order. For example, some customers may order two wedding rings…..',
  `Customer_Choice_Name_Engraving` text COMMENT 'Engraving based on user input.',
  `Customer_Choice_Birthstone_ID` text COMMENT 'Birthstone selection based on user input. ',
  `Customer_Choice_Charm_ID_1` text COMMENT 'Charm selection based on user input. ',
  `Customer_Choice_Charm_ID_2` text COMMENT 'Charm selection based on user input. ',
  `Customer_Choice_Charm_ID_3` text COMMENT 'Charm selection based on user input. ',
  `Customer_Choice_Charm_ID_4` text COMMENT 'Charm selection based on user input. ',
  `Customer_ID` int(11) NOT NULL COMMENT 'Customer making the purchase. ',
  PRIMARY KEY (`Order_ID`,`Product_ID`,`Customer_ID`),
  KEY `Product_ID_idx` (`Product_ID`),
  KEY `Customer_ID_idx` (`Customer_ID`),
  CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `Product_ID` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30025 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (30001,'2018-11-20 00:00:00','Complete',20001,325.45,2,'Jenny','','1','4','2','6',10001),(30001,'2018-11-18 00:00:00','Complete',20005,325.45,1,'Alice','','3','','','',10001),(30001,'2018-11-18 00:00:00','Complete',20009,325.45,1,'Baby Jessica','3','','','','',10001),(30002,'2018-11-18 00:00:00','Open',20015,282.95,1,'Natasha','','','','','',10005),(30003,'2018-11-18 00:00:00','Open',20039,55,1,'','','','','','',10006),(30004,'2018-11-18 00:00:00','Open',20051,175,1,'','','','','','',10002),(30005,'2017-10-01 00:00:00','Complete',20052,340,1,'','','','','','',10002),(30005,'2017-10-01 00:00:00','Complete',20070,340,3,'','','','','','',10002),(30006,'2017-10-02 00:00:00','Complete',20001,92.95,1,'Paul','','3','3','','',10001),(30007,'2017-10-02 00:00:00','Complete',20006,85.45,1,'Erik','','8','7','','',10005),(30008,'2018-03-31 00:00:00','Complete',20015,560,1,'Lyndsay','','','','','',10007),(30008,'2018-03-31 00:00:00','Complete',20016,560,1,'Savitri','','','','','',10007),(30009,'2018-07-13 00:00:00','Complete',20055,370.45,1,'','','','','','',10008),(30009,'2018-07-13 00:00:00','Complete',20061,370.45,1,'','','','','','',10008),(30010,'2018-10-16 00:00:00','Complete',20059,220.45,1,'','','','','','',10009),(30011,'2018-01-31 00:00:00','Complete',20029,622.5,1,'Alesander','','','','','',10010),(30011,'2018-01-31 00:00:00','Complete',20049,622.5,1,'','','','','','',10010),(30012,'2018-10-03 00:00:00','Complete',20024,340,1,'Saburo','','','','','',10011),(30012,'2018-10-03 00:00:00','Complete',20059,222.5,1,'','','','','','',10011),(30012,'2018-10-03 00:00:00','Complete',20067,340,1,'','','','','','',10011),(30013,'2018-08-19 00:00:00','Complete',20009,72.95,1,'Yuval','5','2','','','',10012),(30014,'2018-06-01 00:00:00','Complete',20030,432.95,1,'','','','','','',10013),(30015,'2018-03-25 00:00:00','Complete',20064,275.95,1,'','','','','','',10013),(30016,'2018-02-14 00:00:00','Complete',20024,985,1,'Sture','','','','','',10014),(30016,'2018-02-14 00:00:00','Complete',20025,985,1,'Fintan','','','','','',10014),(30016,'2018-02-14 00:00:00','Complete',20037,985,1,'Magda','','','','','',10014),(30017,'2018-08-02 00:00:00','Complete',20034,432.95,1,'','','','','','',10015),(30018,'2018-01-16 00:00:00','Complete',20032,432.95,1,'Elisabeth','','','','','',10016),(30019,'2018-03-22 00:00:00','Complete',20009,72.95,1,'','10','4','','','',10017),(30020,'2018-04-02 00:00:00','Complete',20057,310,2,'','','','','','',10018),(30021,'2018-05-13 00:00:00','Complete',20052,172.95,1,'','','','','','',10015),(30022,'2018-06-27 00:00:00','Complete',20050,3007.95,16,'','','','','','',10019),(30023,'2018-08-09 00:00:00','Complete',20058,160,1,'','','','','','',10010),(30024,'2018-02-20 00:00:00','Complete',20010,711,1,'Lutfi','6','4','8','8','1',10020),(30024,'2018-04-22 00:00:00','Complete',20012,711,1,'Jaycob','1','8','1','7','1',10020),(30024,'2018-10-09 00:00:00','Complete',20013,711,1,'Jonas','8','5','1','6','7',10020),(30024,'2018-07-12 00:00:00','Complete',20014,711,1,'Esi','1','3','6','4','3',10020),(30024,'2018-01-31 00:00:00','Complete',20043,711,3,'','','','','','',10020),(30024,'2018-05-22 00:00:00','Complete',20061,711,1,'','','','','','',10020),(30024,'2018-07-11 00:00:00','Complete',20074,711,2,'','','','','','',10020);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 10:43:35
