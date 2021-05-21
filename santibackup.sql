-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: MAYO21
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AGENTS`
--

DROP TABLE IF EXISTS `AGENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AGENTS` (
  `AGENT_CODE` char(6) NOT NULL,
  `AGENT_NAME` char(40) DEFAULT NULL,
  `WORKING_AREA` char(35) DEFAULT NULL,
  `COMMISSION` float(10,2) DEFAULT NULL,
  `PHONE_NO` char(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AGENTS`
--

LOCK TABLES `AGENTS` WRITE;
/*!40000 ALTER TABLE `AGENTS` DISABLE KEYS */;
INSERT INTO `AGENTS` VALUES ('A001','Subbarao','Bangalore',0.14,'077-12346674',''),('A002','Mukesh','Mumbai',0.11,'029-12358964',''),('A003','Alex','London',0.13,'075-12458969',''),('A004','Ivan','Torento',0.15,'008-22544166',''),('A005','Anderson','Brisban',0.13,'045-21447739',''),('A006','McDen','London',0.15,'078-22255588',''),('A007','Ramasundar','Bangalore',0.15,'077-25814763',''),('A008','Alford','New York',0.12,'044-25874365',''),('A009','Benjamin','Hampshair',0.11,'008-22536178',''),('A010','Santakumar','Chennai',0.14,'007-22388644',''),('A011','Ravi Kumar','Bangalore',0.15,'077-45625874',''),('A012','Lucida','San Jose',0.12,'044-52981425','');
/*!40000 ALTER TABLE `AGENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` char(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` int DEFAULT NULL,
  `OPENING_AMT` float(12,2) NOT NULL,
  `RECEIVE_AMT` float(12,2) NOT NULL,
  `PAYMENT_AMT` float(12,2) NOT NULL,
  `OUTSTANDING_AMT` float(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL,
  PRIMARY KEY (`CUST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('C00001','Micheal','New York','New York','USA',2,3000.00,5000.00,2000.00,6000.00,'CCCCCCC','A008'),('C00002','Bolt','New York','New York','USA',3,5000.00,7000.00,9000.00,3000.00,'DDNRDRH','A008'),('C00003','Martin','Torento','Torento','Canada',2,8000.00,7000.00,7000.00,8000.00,'MJYURFD','A004'),('C00004','Winston','Brisban','Brisban','Australia',1,5000.00,8000.00,7000.00,6000.00,'AAAAAAA','A005'),('C00005','Sasikant','Mumbai','Mumbai','India',1,7000.00,11000.00,7000.00,11000.00,'147-25896312','A002'),('C00006','Shilton','Torento','Torento','Canada',1,10000.00,7000.00,6000.00,11000.00,'DDDDDDD','A004'),('C00007','Ramanathan','Chennai','Chennai','India',1,7000.00,11000.00,9000.00,9000.00,'GHRDWSD','A010'),('C00008','Karolina','Torento','Torento','Canada',1,7000.00,7000.00,9000.00,5000.00,'HJKORED','A004'),('C00009','Ramesh','Mumbai','Mumbai','India',3,8000.00,7000.00,3000.00,12000.00,'Phone No','A002'),('C00010','Charles','Hampshair','Hampshair','UK',3,6000.00,4000.00,5000.00,5000.00,'MMMMMMM','A009'),('C00011','Sundariya','Chennai','Chennai','India',3,7000.00,11000.00,7000.00,11000.00,'PPHGRTS','A010'),('C00012','Steven','San Jose','San Jose','USA',1,5000.00,7000.00,9000.00,3000.00,'KRFYGJK','A012'),('C00013','Holmes','London','London','UK',2,6000.00,5000.00,7000.00,4000.00,'BBBBBBB','A003'),('C00014','Rangarappa','Bangalore','Bangalore','India',2,8000.00,11000.00,7000.00,12000.00,'AAAATGF','A001'),('C00015','Stuart','London','London','UK',1,6000.00,8000.00,3000.00,11000.00,'GFSGERS','A003'),('C00016','Venkatpati','Bangalore','Bangalore','India',2,8000.00,11000.00,7000.00,12000.00,'JRTVFDD','A007'),('C00017','Srinivas','Bangalore','Bangalore','India',2,8000.00,4000.00,3000.00,9000.00,'AAAAAAB','A007'),('C00018','Fleming','Brisban','Brisban','Australia',2,7000.00,7000.00,9000.00,5000.00,'NHBGVFC','A005'),('C00019','Yearannaidu','Chennai','Chennai','India',1,8000.00,7000.00,7000.00,8000.00,'ZZZZBFV','A010'),('C00020','Albert','New York','New York','USA',3,5000.00,7000.00,6000.00,6000.00,'BBBBSBB','A008'),('C00021','Jacks','Brisban','Brisban','Australia',1,7000.00,7000.00,7000.00,7000.00,'WERTGDF','A005'),('C00022','Avinash','Mumbai','Mumbai','India',2,7000.00,11000.00,9000.00,9000.00,'113-12345678','A002'),('C00023','Karl','London','London','UK',0,4000.00,6000.00,7000.00,3000.00,'AAAABAA','A006'),('C00024','Cook','London','London','UK',2,4000.00,9000.00,7000.00,6000.00,'FSDDSDF','A006'),('C00025','Ravindran','Bangalore','Bangalore','India',2,5000.00,7000.00,4000.00,8000.00,'AVAVAVA','A011');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `ORD_NUM` float(6,0) NOT NULL,
  `ORD_AMOUNT` float(12,2) NOT NULL,
  `ADVANCE_AMOUNT` float(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL,
  PRIMARY KEY (`ORD_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (200100,1000.00,600.00,'2008-01-01','C00013','A003','SOD'),(200102,2000.00,300.00,'2008-01-01','C00012','A012','SOD'),(200107,4500.00,900.00,'2008-01-01','C00007','A010','SOD'),(200110,3000.00,500.00,'2008-01-01','C00019','A010','SOD'),(200112,2000.00,400.00,'2008-01-01','C00016','A007','SOD'),(200113,4000.00,600.00,'2008-01-01','C00022','A002','SOD');
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 19:45:25
