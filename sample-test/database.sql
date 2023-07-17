-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: test
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
-- Table structure for table `dbuser`
--

DROP TABLE IF EXISTS `dbuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbuser` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbuser`
--

LOCK TABLES `dbuser` WRITE;
/*!40000 ALTER TABLE `dbuser` DISABLE KEYS */;
INSERT INTO `dbuser` VALUES ('test','test123');
/*!40000 ALTER TABLE `dbuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `title` varchar(20) NOT NULL DEFAULT '',
  `director` varchar(20) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES ('A New Hope','George Lucas','1977-05-25'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('Return of the Jedi','Richard Marquand','1983-05-25'),('The Phantom Menace','George Lucas','1999-05-19'),('Attack of the Clones','George Lucas','2002-05-16'),('Revenge of the Sith','George Lucas','2005-05-19'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17'),('The Empire Strikes B','Irvin Kershner','1980-05-17');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 18:10:00
