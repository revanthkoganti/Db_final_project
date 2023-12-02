CREATE DATABASE  IF NOT EXISTS `car_rental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `car_rental`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: car_rental
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `car_rental_insurance`
--

DROP TABLE IF EXISTS `car_rental_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_insurance` (
  `insurance_code` varchar(20) NOT NULL,
  `coverage_type` varchar(45) DEFAULT NULL,
  `insurance_name` varchar(100) DEFAULT NULL,
  `insurance_cost_per_day` int NOT NULL,
  PRIMARY KEY (`insurance_code`),
  UNIQUE KEY `insurance_id_UNIQUE` (`insurance_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_insurance`
--

LOCK TABLES `car_rental_insurance` WRITE;
/*!40000 ALTER TABLE `car_rental_insurance` DISABLE KEYS */;
INSERT INTO `car_rental_insurance` VALUES ('1201','COLLISION DAMAGE WAIVER','Covers theft and total damage to the rental car',15),('1202','SUPPLEMENTAL LIABILITY PROTECTION','Covers damage done to others',12),('1203','PERSONAL ACCIDENT INSURANCE','Covers medical costs for driver and passengers',10),('1204','PERSONAL EFFECTS COVERAGE','Covers theft of personal belongings',5);
/*!40000 ALTER TABLE `car_rental_insurance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02 18:36:30
