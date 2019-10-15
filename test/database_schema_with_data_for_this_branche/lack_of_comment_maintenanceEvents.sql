-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lack_of_comment
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `maintenanceEvents`
--

DROP TABLE IF EXISTS `maintenanceEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenanceEvents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xid` varchar(50) NOT NULL,
  `dataSourceId` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `alarmLevel` int(11) NOT NULL,
  `scheduleType` int(11) NOT NULL,
  `disabled` char(1) NOT NULL,
  `activeYear` int(11) DEFAULT NULL,
  `activeMonth` int(11) DEFAULT NULL,
  `activeDay` int(11) DEFAULT NULL,
  `activeHour` int(11) DEFAULT NULL,
  `activeMinute` int(11) DEFAULT NULL,
  `activeSecond` int(11) DEFAULT NULL,
  `activeCron` varchar(25) DEFAULT NULL,
  `inactiveYear` int(11) DEFAULT NULL,
  `inactiveMonth` int(11) DEFAULT NULL,
  `inactiveDay` int(11) DEFAULT NULL,
  `inactiveHour` int(11) DEFAULT NULL,
  `inactiveMinute` int(11) DEFAULT NULL,
  `inactiveSecond` int(11) DEFAULT NULL,
  `inactiveCron` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maintenanceEventsUn1` (`xid`),
  KEY `maintenanceEventsFk1` (`dataSourceId`),
  CONSTRAINT `maintenanceEventsFk1` FOREIGN KEY (`dataSourceId`) REFERENCES `dataSources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenanceEvents`
--

LOCK TABLES `maintenanceEvents` WRITE;
/*!40000 ALTER TABLE `maintenanceEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenanceEvents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 15:01:10
