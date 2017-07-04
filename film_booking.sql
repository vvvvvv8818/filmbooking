-- MySQL dump 10.13  Distrib 5.1.68, for Win64 (unknown)
--
-- Host: localhost    Database: film_booking
-- ------------------------------------------------------
-- Server version	5.1.68-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id_film` int(10) NOT NULL,
  `name_film` varchar(45) NOT NULL,
  `age_phase` int(10) NOT NULL,
  `seat_num` int(10) NOT NULL,
  `release_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id_film`),
  UNIQUE KEY `id_film_UNIQUE` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Fantastic Beasts and Where to Find Them',12,9,'2016-11-16','2016-12-31'),(2,'Doctor Strange',12,9,'2016-10-26','2016-12-26'),(3,'Don\'t Breath',20,5,'2016-10-05','2016-12-12'),(4,'Will You Be There?',12,1,'2016-12-01','2017-01-01');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id_mem` int(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name_mem` varchar(45) NOT NULL,
  `age_mem` int(11) NOT NULL,
  `register_date` date NOT NULL,
  PRIMARY KEY (`id_mem`),
  UNIQUE KEY `id_member_UNIQUE` (`id_mem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (0,'admin','admin',0,'0000-00-00'),(1,'psw','id',20,'2016-12-02'),(2,'1234','name',11,'2016-12-03');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resv`
--

DROP TABLE IF EXISTS `resv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resv` (
  `id_resv` int(11) NOT NULL,
  `id_mem` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `film_name` varchar(45) NOT NULL,
  `release_date` date NOT NULL,
  `end_date` date NOT NULL,
  `resv_date` date NOT NULL,
  `seat_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_resv`),
  UNIQUE KEY `id_resv_UNIQUE` (`id_resv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv`
--

LOCK TABLES `resv` WRITE;
/*!40000 ALTER TABLE `resv` DISABLE KEYS */;
INSERT INTO `resv` VALUES (3,1,2,'Doctor Strange','2016-10-26','2016-12-26','2016-12-03',3,0),(5,1,3,'Don\'t Breath','2016-10-05','2016-12-12','2016-12-03',5,1),(6,2,3,'Don\'t Breath','2016-10-05','2016-12-12','2016-12-03',1,0),(8,1,4,'Will You Be There?','2016-12-01','2017-01-01','2016-12-03',1,1);
/*!40000 ALTER TABLE `resv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `id_seat` int(11) NOT NULL,
  `film` int(11) NOT NULL,
  `S1` tinyint(1) NOT NULL,
  `S2` tinyint(1) NOT NULL,
  `S3` tinyint(1) NOT NULL,
  `S4` tinyint(1) NOT NULL,
  `S5` tinyint(1) NOT NULL,
  `S6` tinyint(1) NOT NULL,
  `S7` tinyint(1) NOT NULL,
  `S8` tinyint(1) NOT NULL,
  `S9` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_seat`),
  UNIQUE KEY `id_seat_UNIQUE` (`id_seat`),
  KEY `id_film_idx` (`film`),
  KEY `film_idx` (`film`),
  CONSTRAINT `film` FOREIGN KEY (`film`) REFERENCES `film` (`id_film`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,0,0,0,0,0,0,0,0,0),(2,2,0,0,0,1,0,0,0,0,0),(3,3,0,0,0,0,1,0,0,0,0),(4,4,1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-03 20:53:30
