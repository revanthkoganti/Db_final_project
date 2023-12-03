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
  `car_image` text,
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
INSERT INTO `car` VALUES ('ABC123','Toyota','Camry','30 mpg',1,1,'https://www.toyota.com/imgix/content/dam/toyota/jellies/max/2024/camry/xse/2548/2pt/36/5.png?fm=png&w=930&q=90'),('BCD567','Honda','Odyssey','27 mpg',10,1,'https://www.cars.com/i/large/in/v2/stock_photos/62cefc24-5cce-4e1b-8942-60c4d0f37894/cfb7df07-9603-421c-93fc-c6db1692111c.png'),('BCD890','Subaru','Impreza','29 mpg',2,1,'https://crdms.images.consumerreports.org/c_lfill,w_470,q_auto,f_auto/prod/cars/cr/model-years/16076-2024-subaru-impreza'),('DEF456','Honda','Accord','32 mpg',2,1,'https://cars.usnews.com/static/images/Auto/izmo/i55706567/2018_honda_accord_angularfront.jpg'),('EFG123','Mazda','Mazda3','30 mpg',1,2,'https://www.mazdausa.com/siteassets/vehicles/2024/mazda3-sedan/build-and-price/trims/34-jellies/preferred/fwd/2024-mazda-3-sedan-2.5-s-preferred-package'),('GHI789','Ford','Focus','28 mpg',1,2,'https://www.motortrend.com/uploads/sites/10/2016/12/2017-ford-focus-electric-hatchback-angular-front.png?fit=around%7C875:492'),('HIJ456','Audi','A4','27 mpg',6,1,'https://edgecast-img.yahoo.net/mysterio/api/D5509E386DFE67A9277EA71F3F4FE33CE7332176ACB608D646F9E4264AF9B2F3/autoblog/resizefill_w660_h372;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/USD30AUC017B021001.jpg'),('JKL012','Chevrolet','Malibu','33 mpg',3,2,'https://cars.usnews.com/static/images/Auto/izmo/331332/2012_chevrolet_malibu_angularfront.jpg'),('KLM789','BMW','3 Series','28 mpg',6,2,'https://www.iihs.org/cdn-cgi/image/width=636/api/ratings/model-year-images/2901/'),('MNO345','Nissan','Altima','31 mpg',2,2,'https://edgecast-img.yahoo.net/mysterio/api/57C4741C515C56A38233E923E55A588508C1C78B9DDC78DE05F2A12DFBB83842/autoblog/resizefill_w660_h372;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/USC90NIC041A021001.jpg'),('NOP012','Mercedes-Benz','C-Class','26 mpg',6,1,'https://www.motortrend.com/uploads/sites/10/2020/12/2021-mercedes-benz-c-class-300-sedan-angular-front.png'),('PQR678','Tesla','Model 3','100 mpg',6,1,'https://www.tesla.com/ownersmanual/images/GUID-BEE67A59-6DD7-460C-9C49-0DD47E707A02-online-en-US.png'),('QRS345','Lexus','ES','29 mpg',6,1,'https://edgecast-img.yahoo.net/mysterio/api/B7403C5EC8BFB5934D6D301E782AEF463FC3D724446E696D0C4AED2D113B7C6B/autoblog/resizefill_w640_h400;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/USD30LEC161A021001.jpg'),('STU901','Kia','Soul','29 mpg',4,2,'https://www.motortrend.com/uploads/sites/10/2017/02/2016-kia-soul-!-wagon-angular-front.png'),('TUV678','Jeep','Cherokee','24 mpg',7,2,'https://edgecast-img.yahoo.net/mysterio/api/25E0D7718278FD3D54C77732085B6FCF3528C5F06594D411A4015BF68285D29A/autoblog/resizefill_w640_h400;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/CAD30JES042A021001.jpg'),('VWX234','Hyundai','Elantra','28 mpg',3,1,'https://s7d1.scene7.com/is/image/hyundai/2024-elantra-limited-intense-blue-vehicle-browse-hero:Browse?fmt=webp-alpha'),('WXY901','Ford','Explorer','22 mpg',8,1,'https://build.ford.com/dig/Ford/Explorer/2023/HD-TILE/Image%5B%7CFord%7CExplorer%7C2023%7C1%7C1.%7C200A.K7D..PM7..888.89N.~4H800_VS-JN.86E.BSHAX.87B.SRB.123.64X.TFC.DBCAB.RWD.99H.76P.FEDAM.17A.GAS.55B.58S.IDBAD.53L.44T.XLT.UCL.%5D/EXT/1/vehicle.png'),('XYZ789','Toyota','Rav4','25 mpg',7,1,'https://www.cars.com/i/large/in/v2/stock_photos/eb392377-4453-4bf8-a314-b421d495a70d/00800ef6-b061-43de-ba63-87d847ab27c1.png'),('YZA567','Volkswagen','Jetta','31 mpg',1,2,'https://www.cars.com/i/large/in/v2/stock_photos/0aadcf5a-3f4e-45fc-8014-305eafb3e391/c2c93449-4110-438f-b05c-b51ff95bdf54.png'),('ZAB234','Chevrolet','Tahoe','20 mpg',9,2,'https://di-uploads-pod9.dealerinspire.com/blossomchevy/uploads/2022/08/2023-Chevy-Tahoe-RST-White.jpg');
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

-- Dump completed on 2023-12-03 15:31:56
