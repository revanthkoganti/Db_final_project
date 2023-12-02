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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `registration_no` varchar(20) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `mileage` varchar(45) NOT NULL,
  `category_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `car_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`registration_no`),
  UNIQUE KEY `car_id_UNIQUE` (`registration_no`),
  KEY `fk_key_1_idx` (`category_id`),
  KEY `fk_key_2_idx` (`location_id`),
  CONSTRAINT `fk_key_1` FOREIGN KEY (`category_id`) REFERENCES `car_category` (`category_id`),
  CONSTRAINT `fk_key_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `FKrw8qlkei9bqpcmb83m552vp6` FOREIGN KEY (`location_id`) REFERENCES `car_category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('1','Toyota','Rav4','23',1,1,'https://www.cars.com/i/large/in/v2/stock_photos/eb392377-4453-4bf8-a314-b421d495a70d/00800ef6-b061-43de-ba63-87d847ab27c1.png'),('2','Honda','Accord','25',2,2,'https://vehicle-images.dealerinspire.com/8859-18002987/thumbnails/large/1HGCY1F22RA017783/9595a432c4f270627a269fdf73faa983.png');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
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
