-- MySQL dump 10.16  Distrib 10.1.45-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: attendance
-- ------------------------------------------------------
-- Server version	10.1.45-MariaDB-0+deb9u1

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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `RFID` text,
  `Name` text,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('728732840556','hey                                             ','2021-03-16 11:56:46'),('728732840556','hey                                             ','2021-03-16 12:02:40'),('728732840556','hey                                             ','2021-03-16 12:02:47'),('728732840556','hey                                             ','2021-03-16 12:10:13'),('728732840556','hey                                             ','2021-03-16 12:10:30'),('728732840556','hey                                             ','2021-03-16 12:10:49'),('728732840556','hey                                             ','2021-03-16 12:10:54'),('728732840556','hey                                             ','2021-03-16 12:11:05'),('728732840556','hey                                             ','2021-03-16 12:11:34'),('728732840556','hey                                             ','2021-03-16 12:11:40'),('728732840556','hey                                             ','2021-03-16 12:11:45'),('728732840556','hey                                             ','2021-03-17 12:40:10'),('728732840556','hey                                             ','2021-03-17 12:40:18'),('728732840556','hey                                             ','2021-03-17 12:41:21'),('589310570665','hey                                             ','2021-03-17 12:57:57'),('728732840556','hey                                             ','2021-03-17 12:58:17'),('728732840556','hey                                             ','2021-03-17 12:58:37'),('728732840556','hey                                             ','2021-03-17 12:58:52'),('589310570665','hey                                             ','2021-03-18 08:40:55'),('589310570665','hey                                             ','2021-03-18 08:51:02'),('37020968495','','2021-03-18 08:53:07'),('37020968495','','2021-03-18 08:53:10'),('589310570665','hey                                             ','2021-03-18 08:53:15');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:59:25
