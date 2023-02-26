-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: andercode_dropzonejs
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `td_imagen`
--

DROP TABLE IF EXISTS `td_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_imagen` (
  `imgd_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `imgd_nom` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`imgd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_imagen`
--

LOCK TABLES `td_imagen` WRITE;
/*!40000 ALTER TABLE `td_imagen` DISABLE KEYS */;
INSERT INTO `td_imagen` VALUES (27,14,'11.png'),(28,14,'12.png'),(29,14,'banner.png'),(30,15,'8.png'),(31,15,'9.png'),(32,15,'12.png'),(33,15,'banner.png'),(34,16,'1.png'),(35,16,'2.png'),(36,16,'3.png'),(37,16,'4.png'),(38,16,'5.png'),(39,16,'6.png'),(40,16,'7.png'),(41,16,'8.png'),(42,16,'9.png'),(43,16,'10.png'),(44,16,'11.png'),(45,16,'12.png'),(46,16,'banner.png'),(47,17,'10.png'),(48,17,'11.png'),(49,17,'12.png'),(50,17,'banner.png');
/*!40000 ALTER TABLE `td_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tm_producto`
--

DROP TABLE IF EXISTS `tm_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_nom` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tm_producto`
--

LOCK TABLES `tm_producto` WRITE;
/*!40000 ALTER TABLE `tm_producto` DISABLE KEYS */;
INSERT INTO `tm_producto` VALUES (14,'test1'),(15,'test2'),(16,'test3'),(17,'test');
/*!40000 ALTER TABLE `tm_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-05 19:53:55
