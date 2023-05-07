-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbank
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `blood_donor`
--

DROP TABLE IF EXISTS `blood_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_donor` (
  `D_id` int NOT NULL,
  `Dname` varchar(20) DEFAULT NULL,
  `D_Contact_number` bigint DEFAULT NULL,
  `D_btype` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`D_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_donor`
--

LOCK TABLES `blood_donor` WRITE;
/*!40000 ALTER TABLE `blood_donor` DISABLE KEYS */;
INSERT INTO `blood_donor` VALUES (101,'Jeff James',9173764906,'B+'),(102,'Paige Howard',9123456780,'A-'),(103,'Samantha Allen',8123456709,'AB+'),(104,'John Duarte',7123456012,'AB-'),(105,'Randall Ramos',8791221091,'AB-'),(106,'Dana Smith',8412345890,'AB+'),(107,'Brandon Cook',7891220987,'AB-'),(108,'John Price',9132325489,'AB+'),(109,'Bobby Smith',8921012345,'O-'),(110,'Tanya Gomez',8712265431,'B-');
/*!40000 ALTER TABLE `blood_donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodbank`
--

DROP TABLE IF EXISTS `bloodbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodbank` (
  `B_id` int NOT NULL,
  `Bname` varchar(20) DEFAULT NULL,
  `BCity` varchar(10) DEFAULT NULL,
  `B_contact_number` bigint DEFAULT NULL,
  `B_email` varchar(20) DEFAULT NULL,
  `B_branch` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`B_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodbank`
--

LOCK TABLES `bloodbank` WRITE;
/*!40000 ALTER TABLE `bloodbank` DISABLE KEYS */;
INSERT INTO `bloodbank` VALUES (301,'Ketan','Chase',9777777777,'jessi@example.org','West Branch'),(302,'Parekhs','Steph',9666666666,'brwards@example.com','West Branch'),(303,'KD-Hosp','Kimberl',9444444444,'leslie24@example.net','East Branch'),(304,'Sawyer-Will','Kathyton',9333333333,'kaylor@example.net','West Branch'),(305,'Case-Cox','Marshall',9222222222,'zwade@example.net','North Branch'),(306,'Vargas LLC','Barnesf',9000000000,'fpalmer@example.org','Main Branch'),(309,'Williams','Port',9090898989,'perry42@example.com','East Branch'),(310,'Aguirre ','Buchanan',7834212345,'paula49@example.net','South Branch');
/*!40000 ALTER TABLE `bloodbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `h_id` int NOT NULL,
  `hname` varchar(20) DEFAULT NULL,
  `hemail` varchar(30) DEFAULT NULL,
  `h_contact_number` bigint DEFAULT NULL,
  `hcity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1102,'Kelley PLC','hodgeautumn@example.com',9787654321,'East Kevinfort'),(1103,'Ford-Campbell','antonio14@example.org',9777777778,'Susanstad'),(1104,'Berger and Sons','nicole37@example.net',9555555556,'Thompsonchester'),(1105,'Rodriguez-Mckinney','rodriguezmackenzie@example.net',9333333334,'West Evanside'),(1106,'Jimenez-Lopez','michaelpowell@example.com',9444444445,'West John'),(1107,'Holloway PLC','frederickcourtney@example.com',9222222223,'Port'),(1108,'Murray Inc','davisgary@example.net',9111111112,'Jamnagar'),(1109,'Khan Inc','bdavis@example.net',9988776654,'Buchanan');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `In_id` int NOT NULL,
  `B_id` int NOT NULL,
  `D_id` int NOT NULL,
  `Reg_Date` date DEFAULT NULL,
  PRIMARY KEY (`In_id`),
  KEY `B_id` (`B_id`),
  KEY `D_id` (`D_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`B_id`) REFERENCES `bloodbank` (`B_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`D_id`) REFERENCES `blood_donor` (`D_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,301,101,'2022-08-07'),(2,310,104,'2023-11-11'),(3,304,105,'2024-05-29'),(4,305,108,'2022-12-04'),(5,305,102,'2023-02-14'),(6,303,109,'2024-09-02'),(7,305,107,'2023-04-01'),(8,306,105,'2022-07-23'),(9,307,103,'2024-01-15');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `P_id` int NOT NULL,
  `Pname` varchar(20) DEFAULT NULL,
  `P_btype` varchar(5) DEFAULT NULL,
  `P_contact_number` bigint DEFAULT NULL,
  `h_id` int NOT NULL,
  `b_id` int DEFAULT NULL,
  PRIMARY KEY (`P_id`),
  KEY `h_id` (`h_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hospital` (`h_id`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `bloodbank` (`B_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (202,'Justin Tran','A+',9988776655,1102,301),(203,'Alisha Andrews','A+',9555555555,1103,302),(204,'Joshua Rodriguez','B+',8888888888,1104,303),(205,'Amanda Cannon','A+',7777777777,1105,304),(206,'Sarah Nicholson','B-',9999999999,1106,305),(207,'Robert Flynn','AB+',9654321000,1107,309),(208,'Amanda Lowe','A+',9444444444,1108,306),(209,'Jill Singh','AB-',9123456789,1109,308),(210,'Samantha Powell','B-',9867543210,1104,303);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 14:52:29
