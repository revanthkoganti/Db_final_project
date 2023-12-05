CREATE DATABASE  IF NOT EXISTS `car_rental`;
USE `car_rental`;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `pickup_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT NULL,
  `insurance_code` varchar(20) DEFAULT NULL,
  `registration_no` varchar(20) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`),
  KEY `fk_2_idx` (`registration_no`),
  KEY `fk_3_idx` (`insurance_code`),
  KEY `FKqyvvt4r7590wdh0tej4gohnyp` (`license_number`),
  CONSTRAINT `fk_2` FOREIGN KEY (`registration_no`) REFERENCES `car` (`registration_no`),
  CONSTRAINT `fk_3` FOREIGN KEY (`insurance_code`) REFERENCES `car_rental_insurance` (`insurance_code`),
  CONSTRAINT `FKqyvvt4r7590wdh0tej4gohnyp` FOREIGN KEY (`license_number`) REFERENCES `customer` (`license_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--


-- Dump completed on 2023-12-03 15:31:57

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
  CONSTRAINT `fk_key_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `car_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `no_of_persons` int DEFAULT NULL,
  `cost_per_day` double NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `car_rental_insurance` (
  `insurance_code` varchar(20) NOT NULL,
  `coverage_type` varchar(45) DEFAULT NULL,
  `insurance_name` varchar(100) DEFAULT NULL,
  `insurance_cost_per_day` int NOT NULL,
  PRIMARY KEY (`insurance_code`),
  UNIQUE KEY `insurance_id_UNIQUE` (`insurance_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `address` text,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `license_number` varchar(20) NOT NULL,
  PRIMARY KEY (`license_number`),
  UNIQUE KEY `licenseNumber_UNIQUE` (`license_number`),
  UNIQUE KEY `phoneNumber_UNIQUE` (`phone_number`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `street` text NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;











