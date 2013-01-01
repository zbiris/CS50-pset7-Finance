-- MySQL dump 10.13  Distrib 5.5.27, for Linux (i686)
--
-- Host: localhost    Database: pset7
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(10) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `symbol` varchar(255) NOT NULL,
  `shares` int(10) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (21,'SELL','2012-11-08 05:11:41','GOOG',3,667.12),(21,'SELL','2012-11-08 05:23:59','CSCO',4,17.21),(21,'SELL','2012-11-08 06:06:52','CSCO',18,17.21),(21,'SELL','2012-11-08 06:07:02','SBUX',10,51.8097),(21,'SELL','2012-11-08 06:07:11','GOOG',3,667.12),(21,'BUY','2012-11-08 06:55:16','AAPL',3,558.002),(21,'BUY','2012-11-08 06:57:28','CSCO',13,17.21),(21,'BUY','2012-11-08 06:57:30','CSCO',13,17.21),(21,'BUY','2012-11-08 06:58:03','GOOG',3,667.12),(21,'BUY','2012-11-08 06:59:54','SBUX',13,51.8097),(21,'SELL','2012-11-08 07:00:11','CSCO',58,17.21);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(10) unsigned NOT NULL,
  `symbol` char(6) NOT NULL,
  `shares` int(255) unsigned NOT NULL,
  PRIMARY KEY (`id`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (21,'AAPL',16),(21,'FB',15),(21,'GOOG',3),(21,'SBUX',26),(21,'SNDK',13);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `cash` decimal(65,4) unsigned zerofill NOT NULL DEFAULT '0000000000000000000000000000000000000000000000000000000000000.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'caesar','$1$50$GHABNWBNE/o4VL7QjmQ6x0',0000000000000000000000000000000000000000000000000000000010000.0000),(2,'cs50','$1$50$ceNa7BV5AoVQqilACNLuC1',0000000000000000000000000000000000000000000000000000000010000.0000),(3,'jharvard','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0000000000000000000000000000000000000000000000000000000010000.0000),(4,'malan','$1$HA$azTGIMVlmPi9W9Y12cYSj/',0000000000000000000000000000000000000000000000000000000010000.0000),(5,'nate','$1$50$sUyTaTbiSKVPZCpjJckan0',0000000000000000000000000000000000000000000000000000000010000.0000),(6,'rbowden','$1$50$lJS9HiGK6sphej8c4bnbX.',0000000000000000000000000000000000000000000000000000000010000.0000),(7,'skroob','$1$50$euBi4ugiJmbpIbvTTfmfI.',0000000000000000000000000000000000000000000000000000000010000.0000),(8,'tmacwilliam','$1$50$91ya4AroFPepdLpiX.bdP1',0000000000000000000000000000000000000000000000000000000010000.0000),(9,'zamyla','$1$50$Suq.MOtQj51maavfKvFsW1',0000000000000000000000000000000000000000000000000000000010000.0000),(21,'basil','$1$EWNjucgd$v/ER6TfQ6t0/QDflTdrud0',0000000000000000000000000000000000000000000000000000000066852.3074);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-08  2:01:57
