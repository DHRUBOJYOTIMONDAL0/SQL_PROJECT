-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: dhrubo
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cricket1`
--

DROP TABLE IF EXISTS `cricket1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket1` (
  `Player_Id` text,
  `Player_Name` text,
  `Runs` int DEFAULT NULL,
  `Popularity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket1`
--

LOCK TABLES `cricket1` WRITE;
/*!40000 ALTER TABLE `cricket1` DISABLE KEYS */;
INSERT INTO `cricket1` VALUES ('Pl1','viart',50,10),('Pl2','Rohit',41,7),('Pl3','Jadeja',33,6),('Pl4','Dhoni',35,15),('Pl5','Dhawan',45,12),('Pl6','Yadav',66,10),('Pl7','Raina',32,9),('Pl8','Bunny',44,11),('Pl9','Rayudu',63,12),('Pl10','Rahene',21,10),('Pl11','Bumra',20,9);
/*!40000 ALTER TABLE `cricket1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket2`
--

DROP TABLE IF EXISTS `cricket2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket2` (
  `Player_Id` text,
  `Player_Name` varchar(20) DEFAULT NULL,
  `Runs` int DEFAULT NULL,
  `Charisma` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket2`
--

LOCK TABLES `cricket2` WRITE;
/*!40000 ALTER TABLE `cricket2` DISABLE KEYS */;
INSERT INTO `cricket2` VALUES ('Pl1','Virat',50,55),('Pl2','Rohit',41,30),('Pl3','Jadeja',33,24),('Pl4','Dhoni',35,59),('Pl13','Yuraaj',33,50),('Pl6','Yadav',66,35),('Pl14','Tendulkar',74,80),('Pl8','Binny',44,32),('Pl9','Rayudu',63,39),('Pl15','Dravid',65,55),('Pl11','Bumra',15,35);
/*!40000 ALTER TABLE `cricket2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `dept_loc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'cst','lalbagh'),(2,'civil','kolkata'),(3,'ee','berhampore'),(4,'cst','berhampore'),(5,'etce','palsanda'),(6,'cyber','kolkata');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `salary` bigint DEFAULT NULL,
  `dept` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Dhrubojyoti','Mondal',100000,'cst'),(2,'Ankur','Dhol',80000,'cyber'),(3,'Sayan','Banerjee',85000,'cst'),(4,'Rahul','Mondal',60000,'civil'),(5,'Suman','Dey',50000,'management'),(6,'Rahul','Ghosh',51000,'networking'),(7,'Suman','Dey',50000,'marketing'),(8,'sanchita','Ghosh',5000,'marketing'),(9,'Swapnil','Banerjee',15000,'support'),(10,'Riya','Patra',25000,'etce');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_cricket`
--

DROP TABLE IF EXISTS `new_cricket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_cricket` (
  `Player_Id` text,
  `Player_Nmae` text,
  `Runs` int DEFAULT NULL,
  `Popularity` int DEFAULT NULL,
  `Player_Id_[0]` text,
  `Player_Name_[0]` text,
  `Runs_[0]` int DEFAULT NULL,
  `Charisma` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_cricket`
--

LOCK TABLES `new_cricket` WRITE;
/*!40000 ALTER TABLE `new_cricket` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_cricket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product1`
--

DROP TABLE IF EXISTS `product1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product1` (
  `category_id` int DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product1`
--

LOCK TABLES `product1` WRITE;
/*!40000 ALTER TABLE `product1` DISABLE KEYS */;
INSERT INTO `product1` VALUES (1,'mi'),(2,'hp'),(3,'oppo'),(4,'samsung'),(5,'nokia'),(6,'hp'),(7,'apple');
/*!40000 ALTER TABLE `product1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product2`
--

DROP TABLE IF EXISTS `product2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product2` (
  `category_id` int DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product2`
--

LOCK TABLES `product2` WRITE;
/*!40000 ALTER TABLE `product2` DISABLE KEYS */;
INSERT INTO `product2` VALUES (1,'realme'),(2,'samsung'),(3,'dell'),(4,'hp'),(5,'vivo'),(6,'oneplus'),(7,'asus');
/*!40000 ALTER TABLE `product2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 19:51:50
