-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: ordering
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dishes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `picture` longblob,
  `taste` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `orderings`
--

DROP TABLE IF EXISTS `orderings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tableNO` int(11) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `dishesID` varchar(100) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `ischeck` tinyint(1) DEFAULT '0',
  `checktime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderings`
--

LOCK TABLES `orderings` WRITE;
/*!40000 ALTER TABLE `orderings` DISABLE KEYS */;
INSERT INTO `orderings` VALUES (1,2,'2019-06-28 21:50:36','1,2,3,4',243,NULL,1,'2019-06-28 23:02:51'),(3,2,'2019-06-28 21:50:51','1,2,3,4',243,NULL,1,'2019-06-28 23:02:57'),(4,2,'2019-06-28 21:50:52','1,2,3,4',243,NULL,1,'2019-06-28 23:02:52'),(7,2,'2019-06-28 21:50:54','1,2,3,4',243,NULL,1,'2019-06-28 23:02:54'),(8,1,'2019-06-28 22:36:47','1,2,3',20,NULL,1,'2019-06-28 23:02:58'),(9,1,'2019-06-28 22:41:04','1,2,3',20,1,1,'2019-06-28 23:02:55'),(10,14,'2019-06-28 23:03:13','19,20,21',232,1,1,'2019-06-28 23:03:19'),(11,1,'2019-07-01 22:05:04','20,21,26,27',250,1,1,'2019-07-01 22:05:48'),(12,2,'2019-07-01 22:05:16','21',200,0.75,1,'2019-07-01 22:05:53'),(13,9,'2019-07-01 22:05:32','21,27,28,21',540,0.75,1,'2019-07-01 22:05:54');
/*!40000 ALTER TABLE `orderings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vipcustomers`
--

DROP TABLE IF EXISTS `vipcustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vipcustomers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vipcustomers`
--

LOCK TABLES `vipcustomers` WRITE;
/*!40000 ALTER TABLE `vipcustomers` DISABLE KEYS */;
/*INSERT INTO `vipcustomers` VALUES (19,'admin',0.75),(20,'灏忔槑',0.75);*/
/*!40000 ALTER TABLE `vipcustomers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-07 19:23:21
