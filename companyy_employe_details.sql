-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: companyy
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `employe_details`
--

DROP TABLE IF EXISTS `employe_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employe_details` (
  `d_id` int NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `e_id` int DEFAULT NULL,
  `j_id` int DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  PRIMARY KEY (`d_id`),
  KEY `e_id` (`e_id`),
  KEY `j_id` (`j_id`),
  KEY `s_id` (`s_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `employe_details_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`),
  CONSTRAINT `employe_details_ibfk_2` FOREIGN KEY (`j_id`) REFERENCES `job` (`j_id`),
  CONSTRAINT `employe_details_ibfk_3` FOREIGN KEY (`s_id`) REFERENCES `salary` (`s_id`),
  CONSTRAINT `employe_details_ibfk_4` FOREIGN KEY (`p_id`) REFERENCES `project` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe_details`
--

LOCK TABLES `employe_details` WRITE;
/*!40000 ALTER TABLE `employe_details` DISABLE KEYS */;
INSERT INTO `employe_details` VALUES (1,'mumbai','1111111111',1,1,1,1),(2,'kalyan','2222222222',2,2,2,2),(3,'delhi','3333333333',3,3,3,3),(4,'dombivali','4444444444',4,4,4,4),(5,'thane','5555555555',5,5,5,5),(6,'karjat','6666666666',6,6,6,6),(7,'kurla','7777777777',7,7,7,7),(8,'karjat','8888888888',8,8,8,8),(9,'diva','9999999999',9,9,9,9),(10,'mumbai','1010101010',10,10,10,10);
/*!40000 ALTER TABLE `employe_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 10:20:46
