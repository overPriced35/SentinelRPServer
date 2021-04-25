-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gtav_rp2
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `_character_crypto_wallet`
--

DROP TABLE IF EXISTS `_character_crypto_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_character_crypto_wallet` (
  `id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_character_crypto_wallet`
--

LOCK TABLES `_character_crypto_wallet` WRITE;
/*!40000 ALTER TABLE `_character_crypto_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `_character_crypto_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_vehicle`
--

DROP TABLE IF EXISTS `_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_vehicle` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL,
  `vin` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL,
  `plate` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `garage` varchar(59) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `appearance` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `data` longtext,
  `damage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `degredation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_vehicle`
--

LOCK TABLES `_vehicle` WRITE;
/*!40000 ALTER TABLE `_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_current`
--

DROP TABLE IF EXISTS `character_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_current` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `drawables` mediumtext,
  `props` mediumtext,
  `drawtextures` mediumtext,
  `proptextures` mediumtext,
  `assExists` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_face`
--

DROP TABLE IF EXISTS `character_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_face` (
  `cid` int(11) DEFAULT NULL,
  `hairColor` mediumtext,
  `headBlend` mediumtext,
  `headOverlay` mediumtext,
  `headStructure` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `character_outfits`
--

DROP TABLE IF EXISTS `character_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_outfits` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `name` text,
  `slot` int(11) DEFAULT NULL,
  `drawables` text,
  `props` text,
  `drawtextures` text,
  `proptextures` text,
  `hairColor` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_passes`
--

DROP TABLE IF EXISTS `character_passes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_passes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '1',
  `name` text NOT NULL,
  `giver` text NOT NULL,
  `pass_type` text NOT NULL,
  `business_name` text NOT NULL,
  `bank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT 'John',
  `last_name` varchar(50) NOT NULL DEFAULT 'Doe',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dob` varchar(50) DEFAULT 'NULL',
  `cash` int(9) DEFAULT '500',
  `bank` int(9) NOT NULL DEFAULT '5000',
  `phone_number` bigint(20) NOT NULL DEFAULT '0',
  `story` text NOT NULL,
  `new` int(1) NOT NULL DEFAULT '1',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `jail_time` int(11) NOT NULL DEFAULT '0',
  `dirty_money` int(11) NOT NULL DEFAULT '0',
  `gang_type` int(11) NOT NULL DEFAULT '0',
  `jail_time_mobster` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `judge_type` int(11) NOT NULL DEFAULT '0',
  `iswjob` int(11) NOT NULL DEFAULT '0',
  `metaData` varchar(1520) DEFAULT '{}',
  `stress_level` int(11) DEFAULT '0',
  `bones` mediumtext,
  `emotes` varchar(4160) DEFAULT '{}',
  `paycheck` int(11) DEFAULT '0',
  `stocks` mediumtext,
  `rehab` int(12) DEFAULT '0',
  `meta` text,
  `dna` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `characters_cars`
--

DROP TABLE IF EXISTS `characters_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `vehicle_state` text,
  `fuel` int(11) DEFAULT '100',
  `name` varchar(50) DEFAULT NULL,
  `engine_damage` bigint(19) DEFAULT '1000',
  `body_damage` bigint(20) DEFAULT '1000',
  `degredation` longtext,
  `current_garage` varchar(50) DEFAULT NULL,
  `server_number` varchar(50) DEFAULT NULL,
  `financed` int(11) DEFAULT '0',
  `last_payment` int(11) DEFAULT '0',
  `phone_number` text,
  `coords` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) NOT NULL DEFAULT '',
  `harness` varchar(50) DEFAULT '',
  `payments_left` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `characters_clothes`
--

DROP TABLE IF EXISTS `characters_clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_clothes` (
  `cid` int(11) DEFAULT NULL,
  `assExist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_clothes`
--

LOCK TABLES `characters_clothes` WRITE;
/*!40000 ALTER TABLE `characters_clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_weapons`
--

DROP TABLE IF EXISTS `characters_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_weapons` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `ammo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT '0',
  `reciever` int(11) DEFAULT '0',
  `amount` int(11) DEFAULT '0',
  `info` text,
  `paid` varchar(255) DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_job`
--

DROP TABLE IF EXISTS `delivery_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` float DEFAULT NULL,
  `jobType` varchar(50) DEFAULT NULL,
  `dropAmount` int(2) DEFAULT NULL,
  `pickup` varchar(255) DEFAULT NULL,
  `drop` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_job`
--

LOCK TABLES `delivery_job` WRITE;
/*!40000 ALTER TABLE `delivery_job` DISABLE KEYS */;
INSERT INTO `delivery_job` VALUES (1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}'),(1,1,'trucker',5,'{2747.82, 3454.10,56.01}','{-441.81, -75.55, 41.18}'),(2,1,'trucker',6,'{2747.82, 3454.10,56.01}','{1170.60, -291.72, 69.02}'),(3,1,'trucker',4,'{2747.82, 3454.10,56.01}','{-45.31, -1662.97, 29.28}'),(4,0,'trucker',5,'{2747.82, 3454.10,56.01}','{378.23, -1028.82, 29.33}'),(5,0,'trucker',3,'{2747.82, 3454.10,56.01}','{-580.60, -1008.78, 22.32}');
/*!40000 ALTER TABLE `delivery_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_code`
--

DROP TABLE IF EXISTS `dispatch_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch_code` (
  `id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `display_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_important` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `playsound` varchar(255) DEFAULT NULL,
  `soundname` varchar(255) DEFAULT NULL,
  `blip_color` varchar(255) DEFAULT NULL,
  `is_police` varchar(255) DEFAULT NULL,
  `is_ems` varchar(255) DEFAULT NULL,
  `is_news` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_code`
--

LOCK TABLES `dispatch_code` WRITE;
/*!40000 ALTER TABLE `dispatch_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatch_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_log`
--

DROP TABLE IF EXISTS `dispatch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch_log` (
  `dispatch_id` varchar(255) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `first_street` varchar(255) DEFAULT NULL,
  `second_street` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `origin_x` varchar(255) DEFAULT NULL,
  `origin_y` varchar(255) DEFAULT NULL,
  `origin_z` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_log`
--

LOCK TABLES `dispatch_log` WRITE;
/*!40000 ALTER TABLE `dispatch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_vehicle`
--

DROP TABLE IF EXISTS `dispatch_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch_vehicle` (
  `id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `first_color` varchar(255) DEFAULT NULL,
  `second_color` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_vehicle`
--

LOCK TABLES `dispatch_vehicle` WRITE;
/*!40000 ALTER TABLE `dispatch_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatch_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driving_tests`
--

DROP TABLE IF EXISTS `driving_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driving_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `icid` int(11) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `timestamp` text,
  `points` varchar(255) DEFAULT '0',
  `passed` varchar(255) DEFAULT 'false',
  `results` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driving_tests`
--

LOCK TABLES `driving_tests` WRITE;
/*!40000 ALTER TABLE `driving_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `driving_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exploiters`
--

DROP TABLE IF EXISTS `exploiters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exploiters` (
  `type` text,
  `log` text,
  `data` text,
  `cid` int(11) DEFAULT NULL,
  `steam_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploiters`
--

LOCK TABLES `exploiters` WRITE;
/*!40000 ALTER TABLE `exploiters` DISABLE KEYS */;
/*!40000 ALTER TABLE `exploiters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types`
--

LOCK TABLES `fine_types` WRITE;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` VALUES (1,'Misuse of a horn',30,0),(2,'Illegally Crossing a continuous Line',40,0),(3,'Driving on the wrong side of the road',250,0),(4,'Illegal U-Turn',250,0),(5,'Illegally Driving Off-road',170,0),(6,'Refusing a Lawful Command',30,0),(7,'Illegally Stopping a Vehicle',150,0),(8,'Illegal Parking',70,0),(9,'Failing to Yield to the right',70,0),(10,'Failure to comply with Vehicle Information',90,0),(11,'Failing to stop at a Stop Sign ',105,0),(12,'Failing to stop at a Red Light',130,0),(13,'Illegal Passing',100,0),(14,'Driving an illegal Vehicle',100,0),(15,'Driving without a License',1500,0),(16,'Hit and Run',800,0),(17,'Exceeding Speeds Over < 5 mph',90,0),(18,'Exceeding Speeds Over 5-15 mph',120,0),(19,'Exceeding Speeds Over 15-30 mph',180,0),(20,'Exceeding Speeds Over > 30 mph',300,0),(21,'Impeding traffic flow',110,1),(22,'Public Intoxication',90,1),(23,'Disorderly conduct',90,1),(24,'Obstruction of Justice',130,1),(25,'Insults towards Civilans',75,1),(26,'Disrespecting of an LEO',110,1),(27,'Verbal Threat towards a Civilan',90,1),(28,'Verbal Threat towards an LEO',150,1),(29,'Providing False Information',250,1),(30,'Attempt of Corruption',1500,1),(31,'Brandishing a weapon in city Limits',120,2),(32,'Brandishing a Lethal Weapon in city Limits',300,2),(33,'No Firearms License',600,2),(34,'Possession of an Illegal Weapon',700,2),(35,'Possession of Burglary Tools',300,2),(36,'Grand Theft Auto',1800,2),(37,'Intent to Sell/Distrube of an illegal Substance',1500,2),(38,'',1500,2),(39,'Possession of an Illegal Substance ',650,2),(40,'Kidnapping of a Civilan',1500,2),(41,'Kidnapping of an LEO',2000,2),(42,'Robbery',650,2),(43,'Armed Robbery of a Store',650,2),(44,'Armed Robbery of a Bank',1500,2),(45,'Assault on a Civilian',2000,3),(46,'Assault of an LEO',2500,3),(47,'Attempt of Murder of a Civilian',3000,3),(48,'Attempt of Murder of an LEO',5000,3),(49,'Murder of a Civilian',10000,3),(50,'Murder of an LEO',30000,3),(51,'Involuntary manslaughter',1800,3),(52,'Fraud',2000,2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_variables`
--

DROP TABLE IF EXISTS `general_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_banking`
--

DROP TABLE IF EXISTS `group_banking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_banking` (
  `group_type` mediumtext,
  `bank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_banking`
--

LOCK TABLES `group_banking` WRITE;
/*!40000 ALTER TABLE `group_banking` DISABLE KEYS */;
INSERT INTO `group_banking` VALUES ('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113),('PDM',31311),('parts_shop',313113);
/*!40000 ALTER TABLE `group_banking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_patients`
--

DROP TABLE IF EXISTS `hospital_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `illness` text NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `model` text,
  `data` text,
  `furniture` text,
  `mykeys` text NOT NULL,
  `house_name` varchar(255) DEFAULT NULL,
  `house_id` int(11) NOT NULL DEFAULT '0',
  `roomType` varchar(50) DEFAULT NULL,
  `days` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `jobs_whitelist`
--

DROP TABLE IF EXISTS `jobs_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs_whitelist` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `rank` int(11) DEFAULT '0',
  `callsign` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `type` text,
  `log` text,
  `data` text,
  `cid` int(11) DEFAULT NULL,
  `steam_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mdt_reports`
--

DROP TABLE IF EXISTS `mdt_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext,
  `charges` longtext,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mdt_warrants`
--

DROP TABLE IF EXISTS `mdt_warrants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `mech_materials`
--

DROP TABLE IF EXISTS `mech_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mech_materials` (
  `garage` text,
  `Scrap` int(11) DEFAULT '0',
  `Plastic` int(11) DEFAULT '0',
  `Glass` int(11) DEFAULT '0',
  `Steel` int(11) DEFAULT '0',
  `Aluminium` int(11) DEFAULT '0',
  `Rubber` int(11) DEFAULT '0',
  `Copper` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mech_materials`
--

LOCK TABLES `mech_materials` WRITE;
/*!40000 ALTER TABLE `mech_materials` DISABLE KEYS */;
INSERT INTO `mech_materials` VALUES ('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11),('Tow Garage 1',250,52,0,0,0,0,0),('Tow Garage 2',250,12,0,0,0,0,11),('Tow Garage 3',250,12,0,11,11,0,0),('Tow Garage 4',215,245,235,243,20,20,15),('Tow Garage 5',12,0,0,0,0,0,11);
/*!40000 ALTER TABLE `mech_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modded_cars`
--

DROP TABLE IF EXISTS `modded_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modded_cars` (
  `id` int(11) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `Extractors` varchar(255) DEFAULT '{}',
  `Filter` varchar(255) DEFAULT '{}',
  `Suspension` varchar(255) DEFAULT '{}',
  `Rollbars` varchar(255) DEFAULT '{}',
  `Bored` varchar(255) DEFAULT '{}',
  `Carbon` varchar(255) DEFAULT '{}',
  `LFront` varchar(255) DEFAULT '{}',
  `RFront` varchar(255) DEFAULT '{}',
  `LBack` varchar(255) DEFAULT '{}',
  `RBack` varchar(255) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phone_yp`
--

DROP TABLE IF EXISTS `phone_yp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `playerstattoos`
--

DROP TABLE IF EXISTS `playerstattoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerstattoos` (
  `identifier` int(11) DEFAULT NULL,
  `tattoos` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `racing_tracks`
--

DROP TABLE IF EXISTS `racing_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `racing_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkPoints` text,
  `track_names` text,
  `creator` text,
  `distance` text,
  `races` text,
  `fastest_car` text,
  `fastest_name` text,
  `fastest_lap` int(11) DEFAULT NULL,
  `fastest_sprint` int(11) DEFAULT NULL,
  `fastest_sprint_name` text,
  `description` text,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racing_tracks`
--

LOCK TABLES `racing_tracks` WRITE;
/*!40000 ALTER TABLE `racing_tracks` DISABLE KEYS */;
INSERT INTO `racing_tracks` VALUES (2,'[{\"flare2x\":144.63,\"flare1z\":23.71,\"flare2y\":-1899.59,\"flare1y\":-1871.61,\"x\":150.04,\"y\":-1885.25,\"z\":21.66,\"flare2z\":21.7,\"start\":true,\"dist\":15.0,\"flare1x\":155.24},{\"flare2x\":98.88,\"flare1z\":23.95,\"flare2y\":-1840.1,\"flare1y\":-1855.73,\"x\":112.04,\"y\":-1848.03,\"z\":23.47,\"flare2z\":25.15,\"start\":false,\"dist\":15.0,\"flare1x\":124.46},{\"flare2x\":147.62,\"flare1z\":28.01,\"flare2y\":-1779.23,\"flare1y\":-1800.67,\"x\":158.47,\"y\":-1790.11,\"z\":27.36,\"flare2z\":28.87,\"start\":false,\"dist\":15.0,\"flare1x\":168.57},{\"flare2x\":263.55,\"flare1z\":26.05,\"flare2y\":-1842.94,\"flare1y\":-1865.7,\"x\":253.57,\"y\":-1854.62,\"z\":24.96,\"flare2z\":26.01,\"start\":false,\"dist\":15.0,\"flare1x\":244.01},{\"flare2x\":211.06,\"flare1z\":23.76,\"flare2y\":-1928.87,\"flare1y\":-1898.92,\"x\":210.87,\"y\":-1913.52,\"z\":21.83,\"flare2z\":22.01,\"start\":false,\"dist\":15.0,\"flare1x\":210.91}]','test race','Daniel Walker','383','',NULL,NULL,NULL,NULL,NULL,'black',NULL),(3,'[{\"start\":true,\"y\":-1504.13,\"x\":-129.51,\"flare1z\":34.23,\"z\":32.23,\"flare2y\":-1492.28,\"flare1x\":-138.83,\"flare1y\":-1515.37,\"flare2z\":32.32,\"flare2x\":-119.77,\"dist\":15.0},{\"start\":false,\"y\":-1510.29,\"x\":-123.0,\"flare1z\":33.77,\"z\":32.15,\"flare2y\":-1498.49,\"flare1x\":-132.46,\"flare1y\":-1521.45,\"flare2z\":32.66,\"flare2x\":-113.18,\"dist\":15.0},{\"start\":false,\"y\":-1509.88,\"x\":-107.06,\"flare1z\":33.15,\"z\":31.87,\"flare2y\":-1497.01,\"flare1x\":-99.25,\"flare1y\":-1522.25,\"flare2z\":32.73,\"flare2x\":-115.47,\"dist\":15.0},{\"start\":false,\"y\":-1494.42,\"x\":-89.41,\"flare1z\":32.05,\"z\":31.3,\"flare2y\":-1483.68,\"flare1x\":-79.1,\"flare1y\":-1504.8,\"flare2z\":32.73,\"flare2x\":-100.4,\"dist\":15.0},{\"start\":false,\"y\":-1477.98,\"x\":-73.5,\"flare1z\":30.81,\"z\":30.22,\"flare2y\":-1466.19,\"flare1x\":-64.32,\"flare1y\":-1489.36,\"flare2z\":31.81,\"flare2x\":-83.34,\"dist\":15.0},{\"start\":false,\"y\":-1467.08,\"x\":-52.19,\"flare1z\":31.14,\"z\":30.23,\"flare2y\":-1451.88,\"flare1x\":-50.38,\"flare1y\":-1481.6,\"flare2z\":31.46,\"flare2x\":-54.42,\"dist\":15.0},{\"start\":false,\"y\":-1465.07,\"x\":-31.38,\"flare1z\":29.85,\"z\":29.31,\"flare2y\":-1449.74,\"flare1x\":-30.66,\"flare1y\":-1479.67,\"flare2z\":30.95,\"flare2x\":-32.39,\"dist\":15.0},{\"start\":false,\"y\":-1464.32,\"x\":-9.52,\"flare1z\":29.21,\"z\":28.65,\"flare2y\":-1448.96,\"flare1x\":-10.06,\"flare1y\":-1478.93,\"flare2z\":30.27,\"flare2x\":-9.21,\"dist\":15.0},{\"start\":false,\"y\":-1469.2,\"x\":13.37,\"flare1z\":29.1,\"z\":28.61,\"flare2y\":-1455.89,\"flare1x\":5.85,\"flare1y\":-1481.74,\"flare2z\":30.29,\"flare2x\":21.03,\"dist\":15.0},{\"start\":false,\"y\":-1481.58,\"x\":28.6,\"flare1z\":27.95,\"z\":27.87,\"flare2y\":-1470.83,\"flare1x\":18.03,\"flare1y\":-1491.66,\"flare2z\":30.0,\"flare2x\":39.53,\"dist\":15.0},{\"start\":false,\"y\":-1495.96,\"x\":41.8,\"flare1z\":28.72,\"z\":27.33,\"flare2y\":-1486.64,\"flare1x\":30.05,\"flare1y\":-1504.66,\"flare2z\":28.07,\"flare2x\":54.02,\"dist\":15.0},{\"start\":false,\"y\":-1512.52,\"x\":40.68,\"flare1z\":28.29,\"z\":27.41,\"flare2y\":-1521.53,\"flare1x\":28.96,\"flare1y\":-1503.78,\"flare2z\":28.68,\"flare2x\":53.14,\"dist\":15.0},{\"start\":false,\"y\":-1525.62,\"x\":28.88,\"flare1z\":27.63,\"z\":27.37,\"flare2y\":-1534.9,\"flare1x\":17.38,\"flare1y\":-1516.61,\"flare2z\":29.3,\"flare2x\":41.1,\"dist\":15.0},{\"start\":false,\"y\":-1540.03,\"x\":17.11,\"flare1z\":27.85,\"z\":27.38,\"flare2y\":-1549.86,\"flare1x\":6.07,\"flare1y\":-1530.45,\"flare2z\":29.09,\"flare2x\":28.91,\"dist\":15.0},{\"start\":false,\"y\":-1563.96,\"x\":-0.15,\"flare1z\":28.21,\"z\":27.44,\"flare2y\":-1572.37,\"flare1x\":-12.17,\"flare1y\":-1555.63,\"flare2z\":28.84,\"flare2x\":12.72,\"dist\":15.0},{\"start\":false,\"y\":-1584.76,\"x\":-20.55,\"flare1z\":28.54,\"z\":27.39,\"flare2y\":-1599.1,\"flare1x\":-25.51,\"flare1y\":-1570.98,\"flare2z\":28.38,\"flare2x\":-15.05,\"dist\":15.0},{\"start\":false,\"y\":-1582.84,\"x\":-41.04,\"flare1z\":29.34,\"z\":27.42,\"flare2y\":-1595.62,\"flare1x\":-32.72,\"flare1y\":-1570.82,\"flare2z\":27.61,\"flare2x\":-49.51,\"dist\":15.0},{\"start\":false,\"y\":-1558.56,\"x\":-69.92,\"flare1z\":31.06,\"z\":29.55,\"flare2y\":-1570.49,\"flare1x\":-60.4,\"flare1y\":-1547.46,\"flare2z\":30.13,\"flare2x\":-79.6,\"dist\":15.0},{\"start\":false,\"y\":-1537.93,\"x\":-95.24,\"flare1z\":33.48,\"z\":31.78,\"flare2y\":-1550.07,\"flare1x\":-85.94,\"flare1y\":-1526.65,\"flare2z\":32.18,\"flare2x\":-104.64,\"dist\":15.0},{\"start\":false,\"y\":-1508.91,\"x\":-131.51,\"flare1z\":33.91,\"z\":32.24,\"flare2y\":-1520.1,\"flare1x\":-121.3,\"flare1y\":-1498.44,\"flare2z\":32.68,\"flare2x\":-142.02,\"dist\":15.0},{\"start\":false,\"y\":-1482.97,\"x\":-160.36,\"flare1z\":32.53,\"z\":30.93,\"flare2y\":-1494.75,\"flare1x\":-150.8,\"flare1y\":-1471.91,\"flare2z\":31.46,\"flare2x\":-170.22,\"dist\":15.0}]','Testt','Trevor Jackson','526',NULL,NULL,NULL,NULL,NULL,NULL,'Testt',NULL),(4,'[{\"flare1y\":-809.36,\"flare2y\":-818.81,\"z\":29.61,\"flare2x\":186.08,\"x\":171.39,\"y\":-814.01,\"flare1z\":30.43,\"dist\":15.0,\"flare1x\":157.6,\"flare2z\":30.45,\"start\":true},{\"flare1y\":-878.77,\"flare2y\":-888.34,\"z\":28.92,\"flare2x\":158.03,\"x\":143.28,\"y\":-883.73,\"flare1z\":29.81,\"dist\":15.0,\"flare1x\":129.6,\"flare2z\":29.71,\"start\":false},{\"flare1y\":-955.91,\"flare2y\":-964.7,\"z\":27.94,\"flare2x\":130.17,\"x\":115.27,\"y\":-960.55,\"flare1z\":28.64,\"dist\":15.0,\"flare1x\":101.48,\"flare2z\":28.93,\"start\":false},{\"flare1y\":-1031.15,\"flare2y\":-1003.18,\"z\":27.8,\"flare2x\":146.85,\"x\":141.62,\"y\":-1017.74,\"flare1z\":28.39,\"dist\":15.0,\"flare1x\":136.02,\"flare2z\":28.9,\"start\":false},{\"flare1y\":-1037.25,\"flare2y\":-1017.5,\"z\":27.78,\"flare2x\":208.93,\"x\":220.8,\"y\":-1027.42,\"flare1z\":28.45,\"dist\":15.0,\"flare1x\":231.52,\"flare2z\":28.79,\"start\":false}]','HelloMyNameIs','Noah Jamerson','519','1','none','none',0,0,'none','HelloMyNameIsJamerson','{}');
/*!40000 ALTER TABLE `racing_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondary_jobs`
--

DROP TABLE IF EXISTS `secondary_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondary_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stash`
--

DROP TABLE IF EXISTS `stash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stash` (
  `owner_cid` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `x` int(122) DEFAULT NULL,
  `y` int(122) DEFAULT NULL,
  `z` int(122) DEFAULT NULL,
  `g_x` int(122) DEFAULT NULL,
  `g_y` int(122) DEFAULT NULL,
  `g_z` int(122) DEFAULT NULL,
  `owner_pin` int(11) DEFAULT NULL,
  `guest_pin` int(11) DEFAULT NULL,
  `useGarage` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_apartment`
--

DROP TABLE IF EXISTS `user_apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_apartment` (
  `room` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` int(1) DEFAULT NULL,
  `cid` mediumtext NOT NULL,
  `mykeys` varchar(50) NOT NULL DEFAULT '[]',
  `ilness` mediumtext NOT NULL,
  `isImprisoned` mediumtext NOT NULL,
  `isClothesSpawn` mediumtext NOT NULL,
  `cash` int(11) DEFAULT '0',
  PRIMARY KEY (`room`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_bans`
--

DROP TABLE IF EXISTS `user_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `ip` varchar(255) NOT NULL,
  `steam_id` varchar(100) NOT NULL,
  `license` varchar(255) NOT NULL,
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT 'No Reason',
  `removed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_boat`
--

DROP TABLE IF EXISTS `user_boat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_boat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT '{}',
  `boat_name` varchar(255) DEFAULT '{}',
  `boat_model` varchar(255) DEFAULT '{}',
  `boat_price` varchar(255) DEFAULT '{}',
  `boat_plate` varchar(255) DEFAULT '{}',
  `boat_state` varchar(255) DEFAULT '{}',
  `boat_colorprimary` varchar(255) DEFAULT '{}',
  `boat_colorsecondary` varchar(255) DEFAULT '{}',
  `boat_pearlescentcolor` varchar(255) DEFAULT '{}',
  `boat_wheelcolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_contacts`
--

DROP TABLE IF EXISTS `user_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_controls`
--

DROP TABLE IF EXISTS `user_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_controls` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `controls` varchar(255) DEFAULT '{}',
  PRIMARY KEY (`hex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_convictions`
--

DROP TABLE IF EXISTS `user_convictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT '0',
  `creationDate` bigint(20) NOT NULL DEFAULT '0',
  `quality` int(11) DEFAULT '100',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_inventory2`
--

DROP TABLE IF EXISTS `user_inventory2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_inventory2` (
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT '0',
  `creationDate` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5685 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_mdt`
--

DROP TABLE IF EXISTS `user_mdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7517 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `settings` varchar(255) DEFAULT '{}',
  PRIMARY KEY (`hex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex_id` varchar(100) DEFAULT NULL,
  `steam_id` varchar(50) DEFAULT NULL,
  `community_id` varchar(100) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Uknown',
  `ip` varchar(50) NOT NULL DEFAULT 'Uknown',
  `rank` varchar(50) NOT NULL DEFAULT 'user',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `controls` text,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_whitelist`
--

DROP TABLE IF EXISTS `users_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam_id` varchar(50) DEFAULT NULL,
  `power` int(11) NOT NULL DEFAULT '0',
  `admin_name` text NOT NULL,
  `user_name` text NOT NULL,
  `user_ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_whitelist`
--

LOCK TABLES `users_whitelist` WRITE;
/*!40000 ALTER TABLE `users_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_display`
--

DROP TABLE IF EXISTS `vehicle_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `commission` int(11) NOT NULL DEFAULT '10',
  `baseprice` int(11) NOT NULL DEFAULT '25',
  `price` int(11) DEFAULT '25000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_display`
--

LOCK TABLES `vehicle_display` WRITE;
/*!40000 ALTER TABLE `vehicle_display` DISABLE KEYS */;
INSERT INTO `vehicle_display` VALUES (1,'gauntlet','Gauntlet',15,100000,35000),(2,'dubsta3','Dubsta3',15,100000,100000),(3,'landstalker','landstalker',15,100000,100000),(4,'bobcatxl','bobcatxl',15,100000,100000),(5,'surfer','surfer',15,100000,100000),(6,'glendale','glendale',15,100000,100000),(7,'washington','washington',15,100000,100000),(8,'fixter','Fixter (velo)',10,25,25),(9,'trophytruck','Trophy Truck',10,25,25);
/*!40000 ALTER TABLE `vehicle_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_list`
--

DROP TABLE IF EXISTS `vip_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_list` (
  `id` int(11) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_list`
--

LOCK TABLES `vip_list` WRITE;
/*!40000 ALTER TABLE `vip_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websites`
--

DROP TABLE IF EXISTS `websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `keywords` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websites`
--

LOCK TABLES `websites` WRITE;
/*!40000 ALTER TABLE `websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `websites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weed_plants`
--

DROP TABLE IF EXISTS `weed_plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weed_plants` (
  `id` int(11) DEFAULT '0',
  `coords` varchar(500) DEFAULT '',
  `seed` varchar(255) DEFAULT NULL,
  `growth` varchar(50) DEFAULT '0',
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weed_plants`
--

LOCK TABLES `weed_plants` WRITE;
/*!40000 ALTER TABLE `weed_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `weed_plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gtav_rp2'
--

--
-- Dumping routines for database 'gtav_rp2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-24 23:29:29
