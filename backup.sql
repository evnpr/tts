-- MySQL dump 10.13  Distrib 5.5.17, for FreeBSD9.0 (i386)
--
-- Host: localhost    Database: cacti
-- ------------------------------------------------------
-- Server version	5.5.17

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
-- Table structure for table `cdef`
--

DROP TABLE IF EXISTS `cdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdef` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdef`
--

LOCK TABLES `cdef` WRITE;
/*!40000 ALTER TABLE `cdef` DISABLE KEYS */;
INSERT INTO `cdef` VALUES (3,'3d352eed9fa8f7b2791205b3273708c7','Make Stack Negative'),(4,'e961cc8ec04fda6ed4981cf5ad501aa5','Make Per 5 Minutes'),(12,'f1ac79f05f255c02f914c920f1038c54','Total All Data Sources'),(2,'73f95f8b77b5508157d64047342c421e','Turn Bytes into Bits'),(14,'634a23af5e78af0964e8d33b1a4ed26b','Multiply by 1024'),(15,'068984b5ccdfd2048869efae5166f722','Total All Data Sources, Multiply by 1024');
/*!40000 ALTER TABLE `cdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdef_items`
--

DROP TABLE IF EXISTS `cdef_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdef_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `cdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cdef_id` (`cdef_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdef_items`
--

LOCK TABLES `cdef_items` WRITE;
/*!40000 ALTER TABLE `cdef_items` DISABLE KEYS */;
INSERT INTO `cdef_items` VALUES (7,'9bbf6b792507bb9bb17d2af0970f9be9',2,1,4,'CURRENT_DATA_SOURCE'),(9,'a4b8eb2c3bf4920a3ef571a7a004be53',2,2,6,'8'),(8,'caa4e023ac2d7b1c4b4c8c4adfd55dfe',2,3,2,'3'),(10,'c888c9fe6b62c26c4bfe23e18991731d',3,1,4,'CURRENT_DATA_SOURCE'),(11,'1e1d0b29a94e08b648c8f053715442a0',3,3,2,'3'),(12,'4355c197998c7f8b285be7821ddc6da4',3,2,6,'-1'),(13,'40bb7a1143b0f2e2efca14eb356236de',4,1,4,'CURRENT_DATA_SOURCE'),(14,'42686ea0925c0220924b7d333599cd67',4,3,2,'3'),(15,'faf1b148b2c0e0527362ed5b8ca1d351',4,2,6,'300'),(16,'0ef6b8a42dc83b4e43e437960fccd2ea',12,1,4,'ALL_DATA_SOURCES_NODUPS'),(18,'86370cfa0008fe8c56b28be80ee39a40',14,1,4,'CURRENT_DATA_SOURCE'),(19,'9a35cc60d47691af37f6fddf02064e20',14,2,6,'1024'),(20,'5d7a7941ec0440b257e5598a27dd1688',14,3,2,'3'),(21,'44fd595c60539ff0f5817731d9f43a85',15,1,4,'ALL_DATA_SOURCES_NODUPS'),(22,'aa38be265e5ac31783e57ce6f9314e9a',15,2,6,'1024'),(23,'204423d4b2598f1f7252eea19458345c',15,3,2,'3');
/*!40000 ALTER TABLE `cdef_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hex` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'000000'),(2,'FFFFFF'),(4,'FAFD9E'),(5,'C0C0C0'),(6,'74C366'),(7,'6DC8FE'),(8,'EA8F00'),(9,'FF0000'),(10,'4444FF'),(11,'FF00FF'),(12,'00FF00'),(13,'8D85F3'),(14,'AD3B6E'),(15,'EACC00'),(16,'12B3B5'),(17,'157419'),(18,'C4FD3D'),(19,'817C4E'),(20,'002A97'),(21,'0000FF'),(22,'00CF00'),(24,'F9FD5F'),(25,'FFF200'),(26,'CCBB00'),(27,'837C04'),(28,'EAAF00'),(29,'FFD660'),(30,'FFC73B'),(31,'FFAB00'),(33,'FF7D00'),(34,'ED7600'),(35,'FF5700'),(36,'EE5019'),(37,'B1441E'),(38,'FFC3C0'),(39,'FF897C'),(40,'FF6044'),(41,'FF4105'),(42,'DA4725'),(43,'942D0C'),(44,'FF3932'),(45,'862F2F'),(46,'FF5576'),(47,'562B29'),(48,'F51D30'),(49,'DE0056'),(50,'ED5394'),(51,'B90054'),(52,'8F005C'),(53,'F24AC8'),(54,'E8CDEF'),(55,'D8ACE0'),(56,'A150AA'),(57,'750F7D'),(58,'8D00BA'),(59,'623465'),(60,'55009D'),(61,'3D168B'),(62,'311F4E'),(63,'D2D8F9'),(64,'9FA4EE'),(65,'6557D0'),(66,'4123A1'),(67,'4668E4'),(68,'0D006A'),(69,'00004D'),(70,'001D61'),(71,'00234B'),(72,'002A8F'),(73,'2175D9'),(74,'7CB3F1'),(75,'005199'),(76,'004359'),(77,'00A0C1'),(78,'007283'),(79,'00BED9'),(80,'AFECED'),(81,'55D6D3'),(82,'00BBB4'),(83,'009485'),(84,'005D57'),(85,'008A77'),(86,'008A6D'),(87,'00B99B'),(88,'009F67'),(89,'00694A'),(90,'00A348'),(91,'00BF47'),(92,'96E78A'),(93,'00BD27'),(94,'35962B'),(95,'7EE600'),(96,'6EA100'),(97,'CAF100'),(98,'F5F800'),(99,'CDCFC4'),(100,'BCBEB3'),(101,'AAABA1'),(102,'8F9286'),(103,'797C6E'),(104,'2E3127');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input`
--

DROP TABLE IF EXISTS `data_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `input_string` varchar(255) DEFAULT NULL,
  `type_id` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input`
--

LOCK TABLES `data_input` WRITE;
/*!40000 ALTER TABLE `data_input` DISABLE KEYS */;
INSERT INTO `data_input` VALUES (1,'3eb92bb845b9660a7445cf9740726522','Get SNMP Data','',2),(2,'bf566c869ac6443b0c75d1c32b5a350e','Get SNMP Data (Indexed)','',3),(3,'274f4685461170b9eb1b98d22567ab5e','Unix - Get Free Disk Space','<path_cacti>/scripts/diskfree.sh <partition>',1),(4,'95ed0993eb3095f9920d431ac80f4231','Unix - Get Load Average','perl <path_cacti>/scripts/loadavg_multi.pl',1),(5,'79a284e136bb6b061c6f96ec219ac448','Unix - Get Logged In Users','perl <path_cacti>/scripts/unix_users.pl <username>',1),(6,'362e6d4768937c4f899dd21b91ef0ff8','Linux - Get Memory Usage','perl <path_cacti>/scripts/linux_memory.pl <grepstr>',1),(7,'a637359e0a4287ba43048a5fdf202066','Unix - Get System Processes','perl <path_cacti>/scripts/unix_processes.pl',1),(8,'47d6bfe8be57a45171afd678920bd399','Unix - Get TCP Connections','perl <path_cacti>/scripts/unix_tcp_connections.pl <grepstr>',1),(9,'cc948e4de13f32b6aea45abaadd287a3','Unix - Get Web Hits','perl <path_cacti>/scripts/webhits.pl <log_path>',1),(10,'8bd153aeb06e3ff89efc73f35849a7a0','Unix - Ping Host','perl <path_cacti>/scripts/ping.pl <ip>',1),(11,'80e9e4c4191a5da189ae26d0e237f015','Get Script Data (Indexed)','',4),(12,'332111d8b54ac8ce939af87a7eac0c06','Get Script Server Data (Indexed)','',6);
/*!40000 ALTER TABLE `data_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input_data`
--

DROP TABLE IF EXISTS `data_input_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input_data` (
  `data_input_field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_value` char(2) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`data_input_field_id`,`data_template_data_id`),
  KEY `t_value` (`t_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input_data`
--

LOCK TABLES `data_input_data` WRITE;
/*!40000 ALTER TABLE `data_input_data` DISABLE KEYS */;
INSERT INTO `data_input_data` VALUES (14,1,'on',''),(13,1,'on',''),(12,1,'on',''),(14,2,'on',''),(13,2,'on',''),(12,2,'on',''),(14,3,'on',''),(13,3,'on',''),(12,3,'on',''),(1,4,'',''),(1,5,'',''),(1,6,'',''),(14,7,'on',''),(13,7,'on',''),(12,7,'on',''),(14,8,'on',''),(13,8,'on',''),(12,8,'on',''),(14,9,'on',''),(13,9,'on',''),(12,9,'on',''),(14,10,'on',''),(13,10,'on',''),(12,10,'on',''),(22,12,'','Buffers:'),(22,13,'','MemFree:'),(22,14,'','^Cached:'),(22,15,'','SwapFree:'),(29,18,'',''),(1,19,'',''),(2,19,'',''),(6,21,'','.1.3.6.1.2.1.25.3.3.1.2.1'),(1,27,'',''),(6,28,'','.1.3.6.1.4.1.9.9.109.1.1.1.1.3.1'),(6,29,'','.1.3.6.1.4.1.9.9.109.1.1.1.1.4.1'),(1,30,'',''),(1,31,'',''),(1,32,'',''),(1,33,'',''),(1,34,'',''),(14,35,'on',''),(13,35,'on',''),(12,35,'on',''),(14,36,'on',''),(13,36,'on',''),(12,36,'on',''),(1,22,'',''),(1,23,'',''),(1,24,'',''),(1,25,'',''),(1,26,'',''),(33,37,'on',''),(32,37,'on',''),(31,37,'on',''),(14,38,'on',''),(13,38,'on',''),(12,38,'on',''),(14,39,'on',''),(13,39,'on',''),(12,39,'on',''),(14,40,'on',''),(13,40,'on',''),(12,40,'on',''),(14,41,'on',''),(13,41,'on',''),(12,41,'on',''),(14,55,'on',''),(13,55,'on',''),(12,55,'on',''),(37,56,'on',''),(36,56,'on',''),(35,56,'on',''),(37,57,'on',''),(36,57,'on',''),(35,57,'on',''),(1,58,'',''),(1,59,'',''),(1,20,'',''),(5,6,'',''),(22,62,NULL,'MemFree:'),(22,63,NULL,'SwapFree:'),(4,6,'',''),(3,6,'',''),(2,6,'',''),(6,69,'on',''),(1,68,'',''),(2,68,'',''),(6,6,'','.1.3.6.1.4.1.2021.11.51.0'),(2,27,'',''),(3,27,'',''),(4,27,'',''),(5,27,'',''),(6,27,'','.1.3.6.1.4.1.9.2.1.58.0'),(2,59,'',''),(3,59,'',''),(4,59,'',''),(5,59,'',''),(6,59,'','.1.3.6.1.2.1.25.1.5.0'),(2,58,'',''),(3,58,'',''),(4,58,'',''),(5,58,'',''),(6,58,'','.1.3.6.1.2.1.25.1.6.0'),(2,24,'',''),(3,24,'',''),(4,24,'',''),(5,24,'',''),(6,24,'','.1.3.6.1.4.1.23.2.28.2.5.0'),(2,25,'',''),(3,25,'',''),(4,25,'',''),(5,25,'',''),(6,25,'','.1.3.6.1.4.1.23.2.28.2.6.0'),(2,22,'',''),(3,22,'',''),(4,22,'',''),(5,22,'',''),(6,22,'','.1.3.6.1.4.1.23.2.28.2.1.0'),(2,23,'',''),(3,23,'',''),(4,23,'',''),(5,23,'',''),(6,23,'','.1.3.6.1.4.1.23.2.28.2.2.0'),(2,26,'',''),(3,26,'',''),(4,26,'',''),(5,26,'',''),(6,26,'','.1.3.6.1.4.1.23.2.28.2.7.0'),(2,20,'',''),(3,20,'',''),(4,20,'',''),(5,20,'',''),(6,20,'','.1.3.6.1.4.1.23.2.28.3.2.0'),(3,19,'',''),(4,19,'',''),(5,19,'',''),(6,19,'','.1.3.6.1.4.1.23.2.28.3.1'),(2,4,'',''),(3,4,'',''),(4,4,'',''),(5,4,'',''),(6,4,'','.1.3.6.1.4.1.2021.11.52.0'),(2,5,'',''),(3,5,'',''),(4,5,'',''),(5,5,'',''),(6,5,'','.1.3.6.1.4.1.2021.11.50.0'),(2,30,'',''),(3,30,'',''),(4,30,'',''),(5,30,'',''),(6,30,'','.1.3.6.1.4.1.2021.10.1.3.1'),(2,32,'',''),(3,32,'',''),(4,32,'',''),(5,32,'',''),(6,32,'','.1.3.6.1.4.1.2021.10.1.3.3'),(2,31,'',''),(3,31,'',''),(4,31,'',''),(5,31,'',''),(6,31,'','.1.3.6.1.4.1.2021.10.1.3.2'),(2,33,'',''),(3,33,'',''),(4,33,'',''),(5,33,'',''),(6,33,'','.1.3.6.1.4.1.2021.4.14.0'),(3,68,'',''),(4,68,'',''),(5,68,'',''),(6,68,'','.1.3.6.1.4.1.2021.4.15.0'),(2,34,'',''),(3,34,'',''),(4,34,'',''),(5,34,'',''),(6,34,'','.1.3.6.1.4.1.2021.4.6.0'),(20,17,'',''),(20,65,NULL,''),(1,70,NULL,'10.11.14.4'),(2,70,NULL,'public'),(3,70,NULL,''),(4,70,NULL,''),(5,70,NULL,'1'),(6,70,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,70,NULL,'161'),(41,70,NULL,''),(42,70,NULL,''),(43,70,NULL,''),(1,71,NULL,'10.11.14.4'),(2,71,NULL,'public'),(3,71,NULL,''),(4,71,NULL,''),(5,71,NULL,'1'),(6,71,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,71,NULL,'161'),(41,71,NULL,''),(42,71,NULL,''),(43,71,NULL,''),(1,72,NULL,'10.11.14.4'),(2,72,NULL,'public'),(3,72,NULL,''),(4,72,NULL,''),(5,72,NULL,'1'),(6,72,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,72,NULL,'161'),(41,72,NULL,''),(42,72,NULL,''),(43,72,NULL,''),(1,73,NULL,'10.11.14.4'),(2,73,NULL,'public'),(3,73,NULL,''),(4,73,NULL,''),(5,73,NULL,'1'),(6,73,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,73,NULL,'161'),(41,73,NULL,''),(42,73,NULL,''),(43,73,NULL,''),(1,74,NULL,'10.11.14.4'),(2,74,NULL,'public'),(3,74,NULL,''),(4,74,NULL,''),(5,74,NULL,'1'),(6,74,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,74,NULL,'161'),(41,74,NULL,''),(42,74,NULL,''),(43,74,NULL,''),(1,75,NULL,'10.11.14.4'),(2,75,NULL,'public'),(3,75,NULL,''),(4,75,NULL,''),(5,75,NULL,'1'),(6,75,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,75,NULL,'161'),(41,75,NULL,''),(42,75,NULL,''),(43,75,NULL,''),(1,76,NULL,'127.0.0.1'),(2,76,NULL,'public'),(3,76,NULL,''),(4,76,NULL,''),(5,76,NULL,'0'),(6,76,'','.1.3.6.1.4.1.9.2.1.58.0'),(40,76,NULL,'161'),(41,76,NULL,'MD5'),(42,76,NULL,''),(43,76,NULL,'DES'),(37,77,'','18'),(36,77,'','A:'),(35,77,'','hrStorageDescr'),(37,78,'','18'),(36,78,'','C: Label:  Serial Number c9ea0d'),(35,78,'','hrStorageDescr'),(37,79,'','18'),(36,79,'','D: Label:VBOXADDITIONS_3.  Serial Number b89471fa'),(35,79,'','hrStorageDescr'),(37,80,'','18'),(36,80,'','G: Label:Logs  Serial Number e037a6f1'),(35,80,'','hrStorageDescr'),(37,81,'','18'),(36,81,'','J: Label:Web  Serial Number f831a43c'),(35,81,'','hrStorageDescr'),(37,82,'','18'),(36,82,'','S: Label:Virtual Memory  Serial Number f02966cc'),(35,82,'','hrStorageDescr'),(37,83,'','18'),(36,83,'','Virtual Memory'),(35,83,'','hrStorageDescr'),(37,84,'','18'),(36,84,'','Physical Memory'),(35,84,'','hrStorageDescr'),(14,85,'','13'),(13,85,'','Software Loopback Interface 1'),(12,85,'','ifDescr'),(7,85,NULL,'10.11.14.4'),(8,85,NULL,'public'),(9,85,NULL,''),(10,85,NULL,''),(11,85,NULL,'1'),(39,85,NULL,'161'),(44,85,NULL,''),(45,85,NULL,''),(46,85,NULL,''),(14,86,'','13'),(13,86,'','WAN Miniport (SSTP)'),(12,86,'','ifDescr'),(7,86,NULL,'10.11.14.4'),(8,86,NULL,'public'),(9,86,NULL,''),(10,86,NULL,''),(11,86,NULL,'1'),(39,86,NULL,'161'),(44,86,NULL,''),(45,86,NULL,''),(46,86,NULL,''),(14,87,'','13'),(13,87,'','WAN Miniport (L2TP)'),(12,87,'','ifDescr'),(7,87,NULL,'10.11.14.4'),(8,87,NULL,'public'),(9,87,NULL,''),(10,87,NULL,''),(11,87,NULL,'1'),(39,87,NULL,'161'),(44,87,NULL,''),(45,87,NULL,''),(46,87,NULL,''),(14,88,'','13'),(13,88,'','WAN Miniport (PPTP)'),(12,88,'','ifDescr'),(7,88,NULL,'10.11.14.4'),(8,88,NULL,'public'),(9,88,NULL,''),(10,88,NULL,''),(11,88,NULL,'1'),(39,88,NULL,'161'),(44,88,NULL,''),(45,88,NULL,''),(46,88,NULL,''),(14,89,'','13'),(13,89,'','WAN Miniport (PPPOE)'),(12,89,'','ifDescr'),(7,89,NULL,'10.11.14.4'),(8,89,NULL,'public'),(9,89,NULL,''),(10,89,NULL,''),(11,89,NULL,'1'),(39,89,NULL,'161'),(44,89,NULL,''),(45,89,NULL,''),(46,89,NULL,''),(14,90,'','13'),(13,90,'','WAN Miniport (IPv6)'),(12,90,'','ifDescr'),(7,90,NULL,'10.11.14.4'),(8,90,NULL,'public'),(9,90,NULL,''),(10,90,NULL,''),(11,90,NULL,'1'),(39,90,NULL,'161'),(44,90,NULL,''),(45,90,NULL,''),(46,90,NULL,''),(14,91,'','13'),(13,91,'','WAN Miniport (Network Monitor)'),(12,91,'','ifDescr'),(7,91,NULL,'10.11.14.4'),(8,91,NULL,'public'),(9,91,NULL,''),(10,91,NULL,''),(11,91,NULL,'1'),(39,91,NULL,'161'),(44,91,NULL,''),(45,91,NULL,''),(46,91,NULL,''),(14,92,'','13'),(13,92,'','WAN Miniport (IP)'),(12,92,'','ifDescr'),(7,92,NULL,'10.11.14.4'),(8,92,NULL,'public'),(9,92,NULL,''),(10,92,NULL,''),(11,92,NULL,'1'),(39,92,NULL,'161'),(44,92,NULL,''),(45,92,NULL,''),(46,92,NULL,''),(14,93,'','13'),(13,93,'','RAS Async Adapter'),(12,93,'','ifDescr'),(7,93,NULL,'10.11.14.4'),(8,93,NULL,'public'),(9,93,NULL,''),(10,93,NULL,''),(11,93,NULL,'1'),(39,93,NULL,'161'),(44,93,NULL,''),(45,93,NULL,''),(46,93,NULL,''),(14,94,'','13'),(13,94,'','WAN Miniport (IKEv2)'),(12,94,'','ifDescr'),(7,94,NULL,'10.11.14.4'),(8,94,NULL,'public'),(9,94,NULL,''),(10,94,NULL,''),(11,94,NULL,'1'),(39,94,NULL,'161'),(44,94,NULL,''),(45,94,NULL,''),(46,94,NULL,''),(14,95,'','13'),(13,95,'','Intel(R) PRO/1000 MT Desktop Adapter'),(12,95,'','ifDescr'),(7,95,NULL,'10.11.14.4'),(8,95,NULL,'public'),(9,95,NULL,''),(10,95,NULL,''),(11,95,NULL,'1'),(39,95,NULL,'161'),(44,95,NULL,''),(45,95,NULL,''),(46,95,NULL,''),(14,96,'','13'),(13,96,'','Microsoft ISATAP Adapter'),(12,96,'','ifDescr'),(7,96,NULL,'10.11.14.4'),(8,96,NULL,'public'),(9,96,NULL,''),(10,96,NULL,''),(11,96,NULL,'1'),(39,96,NULL,'161'),(44,96,NULL,''),(45,96,NULL,''),(46,96,NULL,''),(14,97,'','13'),(13,97,'','Microsoft ISATAP Adapter #2'),(12,97,'','ifDescr'),(7,97,NULL,'10.11.14.4'),(8,97,NULL,'public'),(9,97,NULL,''),(10,97,NULL,''),(11,97,NULL,'1'),(39,97,NULL,'161'),(44,97,NULL,''),(45,97,NULL,''),(46,97,NULL,''),(14,98,'','13'),(13,98,'','Intel(R) PRO/1000 MT Desktop Adapter #2'),(12,98,'','ifDescr'),(7,98,NULL,'10.11.14.4'),(8,98,NULL,'public'),(9,98,NULL,''),(10,98,NULL,''),(11,98,NULL,'1'),(39,98,NULL,'161'),(44,98,NULL,''),(45,98,NULL,''),(46,98,NULL,''),(14,99,'','13'),(13,99,'','Microsoft ISATAP Adapter #3'),(12,99,'','ifDescr'),(7,99,NULL,'10.11.14.4'),(8,99,NULL,'public'),(9,99,NULL,''),(10,99,NULL,''),(11,99,NULL,'1'),(39,99,NULL,'161'),(44,99,NULL,''),(45,99,NULL,''),(46,99,NULL,''),(14,100,'','13'),(13,100,'','Intel(R) PRO/1000 MT Desktop Adapter-QoS Packet Scheduler-0000'),(12,100,'','ifDescr'),(7,100,NULL,'10.11.14.4'),(8,100,NULL,'public'),(9,100,NULL,''),(10,100,NULL,''),(11,100,NULL,'1'),(39,100,NULL,'161'),(44,100,NULL,''),(45,100,NULL,''),(46,100,NULL,''),(14,101,'','13'),(13,101,'','WAN Miniport (IPv6)-QoS Packet Scheduler-0000'),(12,101,'','ifDescr'),(7,101,NULL,'10.11.14.4'),(8,101,NULL,'public'),(9,101,NULL,''),(10,101,NULL,''),(11,101,NULL,'1'),(39,101,NULL,'161'),(44,101,NULL,''),(45,101,NULL,''),(46,101,NULL,''),(14,102,'','13'),(13,102,'','WAN Miniport (IP)-QoS Packet Scheduler-0000'),(12,102,'','ifDescr'),(7,102,NULL,'10.11.14.4'),(8,102,NULL,'public'),(9,102,NULL,''),(10,102,NULL,''),(11,102,NULL,'1'),(39,102,NULL,'161'),(44,102,NULL,''),(45,102,NULL,''),(46,102,NULL,''),(14,103,'','13'),(13,103,'','WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000'),(12,103,'','ifDescr'),(7,103,NULL,'10.11.14.4'),(8,103,NULL,'public'),(9,103,NULL,''),(10,103,NULL,''),(11,103,NULL,'1'),(39,103,NULL,'161'),(44,103,NULL,''),(45,103,NULL,''),(46,103,NULL,''),(14,104,'','13'),(13,104,'','Intel(R) PRO/1000 MT Desktop Adapter-WFP LightWeight Filter-0000'),(12,104,'','ifDescr'),(7,104,NULL,'10.11.14.4'),(8,104,NULL,'public'),(9,104,NULL,''),(10,104,NULL,''),(11,104,NULL,'1'),(39,104,NULL,'161'),(44,104,NULL,''),(45,104,NULL,''),(46,104,NULL,''),(37,105,'','18'),(36,105,'','A:'),(35,105,'','hrStorageDescr'),(37,106,'','18'),(36,106,'','C: Label:  Serial Number c9ea0d'),(35,106,'','hrStorageDescr'),(37,107,'','18'),(36,107,'','D: Label:VBOXADDITIONS_3.  Serial Number b89471fa'),(35,107,'','hrStorageDescr'),(37,108,'','18'),(36,108,'','G: Label:Logs  Serial Number e037a6f1'),(35,108,'','hrStorageDescr'),(37,109,'','18'),(36,109,'','J: Label:Web  Serial Number f831a43c'),(35,109,'','hrStorageDescr'),(37,110,'','18'),(36,110,'','S: Label:Virtual Memory  Serial Number f02966cc'),(35,110,'','hrStorageDescr'),(37,111,'','18'),(36,111,'','Virtual Memory'),(35,111,'','hrStorageDescr'),(37,112,'','18'),(36,112,'','Physical Memory'),(35,112,'','hrStorageDescr'),(14,113,'','13'),(13,113,'','Software Loopback Interface 1'),(12,113,'','ifDescr'),(7,113,NULL,'10.11.14.4'),(8,113,NULL,'public'),(9,113,NULL,''),(10,113,NULL,''),(11,113,NULL,'1'),(39,113,NULL,'161'),(44,113,NULL,''),(45,113,NULL,''),(46,113,NULL,''),(14,114,'','13'),(13,114,'','WAN Miniport (SSTP)'),(12,114,'','ifDescr'),(7,114,NULL,'10.11.14.4'),(8,114,NULL,'public'),(9,114,NULL,''),(10,114,NULL,''),(11,114,NULL,'1'),(39,114,NULL,'161'),(44,114,NULL,''),(45,114,NULL,''),(46,114,NULL,''),(14,115,'','13'),(13,115,'','WAN Miniport (L2TP)'),(12,115,'','ifDescr'),(7,115,NULL,'10.11.14.4'),(8,115,NULL,'public'),(9,115,NULL,''),(10,115,NULL,''),(11,115,NULL,'1'),(39,115,NULL,'161'),(44,115,NULL,''),(45,115,NULL,''),(46,115,NULL,''),(14,116,'','13'),(13,116,'','WAN Miniport (PPTP)'),(12,116,'','ifDescr'),(7,116,NULL,'10.11.14.4'),(8,116,NULL,'public'),(9,116,NULL,''),(10,116,NULL,''),(11,116,NULL,'1'),(39,116,NULL,'161'),(44,116,NULL,''),(45,116,NULL,''),(46,116,NULL,''),(14,117,'','13'),(13,117,'','WAN Miniport (PPPOE)'),(12,117,'','ifDescr'),(7,117,NULL,'10.11.14.4'),(8,117,NULL,'public'),(9,117,NULL,''),(10,117,NULL,''),(11,117,NULL,'1'),(39,117,NULL,'161'),(44,117,NULL,''),(45,117,NULL,''),(46,117,NULL,''),(14,118,'','13'),(13,118,'','WAN Miniport (IPv6)'),(12,118,'','ifDescr'),(7,118,NULL,'10.11.14.4'),(8,118,NULL,'public'),(9,118,NULL,''),(10,118,NULL,''),(11,118,NULL,'1'),(39,118,NULL,'161'),(44,118,NULL,''),(45,118,NULL,''),(46,118,NULL,''),(14,119,'','13'),(13,119,'','WAN Miniport (Network Monitor)'),(12,119,'','ifDescr'),(7,119,NULL,'10.11.14.4'),(8,119,NULL,'public'),(9,119,NULL,''),(10,119,NULL,''),(11,119,NULL,'1'),(39,119,NULL,'161'),(44,119,NULL,''),(45,119,NULL,''),(46,119,NULL,''),(14,120,'','13'),(13,120,'','WAN Miniport (IP)'),(12,120,'','ifDescr'),(7,120,NULL,'10.11.14.4'),(8,120,NULL,'public'),(9,120,NULL,''),(10,120,NULL,''),(11,120,NULL,'1'),(39,120,NULL,'161'),(44,120,NULL,''),(45,120,NULL,''),(46,120,NULL,''),(14,121,'','13'),(13,121,'','RAS Async Adapter'),(12,121,'','ifDescr'),(7,121,NULL,'10.11.14.4'),(8,121,NULL,'public'),(9,121,NULL,''),(10,121,NULL,''),(11,121,NULL,'1'),(39,121,NULL,'161'),(44,121,NULL,''),(45,121,NULL,''),(46,121,NULL,''),(14,122,'','13'),(13,122,'','WAN Miniport (IKEv2)'),(12,122,'','ifDescr'),(7,122,NULL,'10.11.14.4'),(8,122,NULL,'public'),(9,122,NULL,''),(10,122,NULL,''),(11,122,NULL,'1'),(39,122,NULL,'161'),(44,122,NULL,''),(45,122,NULL,''),(46,122,NULL,''),(14,123,'','13'),(13,123,'','Intel(R) PRO/1000 MT Desktop Adapter'),(12,123,'','ifDescr'),(7,123,NULL,'10.11.14.4'),(8,123,NULL,'public'),(9,123,NULL,''),(10,123,NULL,''),(11,123,NULL,'1'),(39,123,NULL,'161'),(44,123,NULL,''),(45,123,NULL,''),(46,123,NULL,''),(14,124,'','13'),(13,124,'','Microsoft ISATAP Adapter'),(12,124,'','ifDescr'),(7,124,NULL,'10.11.14.4'),(8,124,NULL,'public'),(9,124,NULL,''),(10,124,NULL,''),(11,124,NULL,'1'),(39,124,NULL,'161'),(44,124,NULL,''),(45,124,NULL,''),(46,124,NULL,''),(14,125,'','13'),(13,125,'','Microsoft ISATAP Adapter #2'),(12,125,'','ifDescr'),(7,125,NULL,'10.11.14.4'),(8,125,NULL,'public'),(9,125,NULL,''),(10,125,NULL,''),(11,125,NULL,'1'),(39,125,NULL,'161'),(44,125,NULL,''),(45,125,NULL,''),(46,125,NULL,''),(14,126,'','13'),(13,126,'','Intel(R) PRO/1000 MT Desktop Adapter #2'),(12,126,'','ifDescr'),(7,126,NULL,'10.11.14.4'),(8,126,NULL,'public'),(9,126,NULL,''),(10,126,NULL,''),(11,126,NULL,'1'),(39,126,NULL,'161'),(44,126,NULL,''),(45,126,NULL,''),(46,126,NULL,''),(14,127,'','13'),(13,127,'','Microsoft ISATAP Adapter #3'),(12,127,'','ifDescr'),(7,127,NULL,'10.11.14.4'),(8,127,NULL,'public'),(9,127,NULL,''),(10,127,NULL,''),(11,127,NULL,'1'),(39,127,NULL,'161'),(44,127,NULL,''),(45,127,NULL,''),(46,127,NULL,''),(14,128,'','13'),(13,128,'','Intel(R) PRO/1000 MT Desktop Adapter-QoS Packet Scheduler-0000'),(12,128,'','ifDescr'),(7,128,NULL,'10.11.14.4'),(8,128,NULL,'public'),(9,128,NULL,''),(10,128,NULL,''),(11,128,NULL,'1'),(39,128,NULL,'161'),(44,128,NULL,''),(45,128,NULL,''),(46,128,NULL,''),(14,129,'','13'),(13,129,'','WAN Miniport (IPv6)-QoS Packet Scheduler-0000'),(12,129,'','ifDescr'),(7,129,NULL,'10.11.14.4'),(8,129,NULL,'public'),(9,129,NULL,''),(10,129,NULL,''),(11,129,NULL,'1'),(39,129,NULL,'161'),(44,129,NULL,''),(45,129,NULL,''),(46,129,NULL,''),(14,130,'','13'),(13,130,'','WAN Miniport (IP)-QoS Packet Scheduler-0000'),(12,130,'','ifDescr'),(7,130,NULL,'10.11.14.4'),(8,130,NULL,'public'),(9,130,NULL,''),(10,130,NULL,''),(11,130,NULL,'1'),(39,130,NULL,'161'),(44,130,NULL,''),(45,130,NULL,''),(46,130,NULL,''),(14,131,'','13'),(13,131,'','WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000'),(12,131,'','ifDescr'),(7,131,NULL,'10.11.14.4'),(8,131,NULL,'public'),(9,131,NULL,''),(10,131,NULL,''),(11,131,NULL,'1'),(39,131,NULL,'161'),(44,131,NULL,''),(45,131,NULL,''),(46,131,NULL,''),(14,132,'','13'),(13,132,'','Intel(R) PRO/1000 MT Desktop Adapter-WFP LightWeight Filter-0000'),(12,132,'','ifDescr'),(7,132,NULL,'10.11.14.4'),(8,132,NULL,'public'),(9,132,NULL,''),(10,132,NULL,''),(11,132,NULL,'1'),(39,132,NULL,'161'),(44,132,NULL,''),(45,132,NULL,''),(46,132,NULL,''),(37,133,'','18'),(36,133,'','A:'),(35,133,'','hrStorageDescr'),(37,134,'','18'),(36,134,'','C: Label:  Serial Number c9ea0d'),(35,134,'','hrStorageDescr'),(37,135,'','18'),(36,135,'','D: Label:VBOXADDITIONS_3.  Serial Number b89471fa'),(35,135,'','hrStorageDescr');
/*!40000 ALTER TABLE `data_input_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input_fields`
--

DROP TABLE IF EXISTS `data_input_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input_fields` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `data_name` varchar(50) NOT NULL DEFAULT '',
  `input_output` char(3) NOT NULL DEFAULT '',
  `update_rra` char(2) DEFAULT '0',
  `sequence` smallint(5) NOT NULL DEFAULT '0',
  `type_code` varchar(40) DEFAULT NULL,
  `regexp_match` varchar(200) DEFAULT NULL,
  `allow_nulls` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_input_id` (`data_input_id`),
  KEY `type_code` (`type_code`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input_fields`
--

LOCK TABLES `data_input_fields` WRITE;
/*!40000 ALTER TABLE `data_input_fields` DISABLE KEYS */;
INSERT INTO `data_input_fields` VALUES (1,'92f5906c8dc0f964b41f4253df582c38',1,'SNMP IP Address','management_ip','in','',0,'hostname','',''),(2,'32285d5bf16e56c478f5e83f32cda9ef',1,'SNMP Community','snmp_community','in','',0,'snmp_community','',''),(3,'ad14ac90641aed388139f6ba86a2e48b',1,'SNMP Username','snmp_username','in','',0,'snmp_username','','on'),(4,'9c55a74bd571b4f00a96fd4b793278c6',1,'SNMP Password','snmp_password','in','',0,'snmp_password','','on'),(5,'012ccb1d3687d3edb29c002ea66e72da',1,'SNMP Version (1, 2, or 3)','snmp_version','in','',0,'snmp_version','','on'),(6,'4276a5ec6e3fe33995129041b1909762',1,'OID','oid','in','',0,'snmp_oid','',''),(7,'617cdc8a230615e59f06f361ef6e7728',2,'SNMP IP Address','management_ip','in','',0,'hostname','',''),(8,'acb449d1451e8a2a655c2c99d31142c7',2,'SNMP Community','snmp_community','in','',0,'snmp_community','',''),(9,'f4facc5e2ca7ebee621f09bc6d9fc792',2,'SNMP Username (v3)','snmp_username','in','',0,'snmp_username','','on'),(10,'1cc1493a6781af2c478fa4de971531cf',2,'SNMP Password (v3)','snmp_password','in','',0,'snmp_password','','on'),(11,'b5c23f246559df38662c255f4aa21d6b',2,'SNMP Version (1, 2, or 3)','snmp_version','in','',0,'snmp_version','',''),(12,'6027a919c7c7731fbe095b6f53ab127b',2,'Index Type','index_type','in','',0,'index_type','',''),(13,'cbbe5c1ddfb264a6e5d509ce1c78c95f',2,'Index Value','index_value','in','',0,'index_value','',''),(14,'e6deda7be0f391399c5130e7c4a48b28',2,'Output Type ID','output_type','in','',0,'output_type','',''),(15,'edfd72783ad02df128ff82fc9324b4b9',3,'Disk Partition','partition','in','',1,'','',''),(16,'8b75fb61d288f0b5fc0bd3056af3689b',3,'Kilobytes Free','kilobytes','out','on',0,'','',''),(17,'363588d49b263d30aecb683c52774f39',4,'1 Minute Average','1min','out','on',0,'','',''),(18,'ad139a9e1d69881da36fca07889abf58',4,'5 Minute Average','5min','out','on',0,'','',''),(19,'5db9fee64824c08258c7ff6f8bc53337',4,'10 Minute Average','10min','out','on',0,'','',''),(20,'c0cfd0beae5e79927c5a360076706820',5,'Username (Optional)','username','in','',1,'','','on'),(21,'52c58ad414d9a2a83b00a7a51be75a53',5,'Logged In Users','users','out','on',0,'','',''),(22,'05eb5d710f0814871b8515845521f8d7',6,'Grep String','grepstr','in','',1,'','',''),(23,'86cb1cbfde66279dbc7f1144f43a3219',6,'Result (in Kilobytes)','kilobytes','out','on',0,'','',''),(24,'d5a8dd5fbe6a5af11667c0039af41386',7,'Number of Processes','proc','out','on',0,'','',''),(25,'8848cdcae831595951a3f6af04eec93b',8,'Grep String','grepstr','in','',1,'','','on'),(26,'3d1288d33008430ce354e8b9c162f7ff',8,'Connections','connections','out','on',0,'','',''),(27,'c6af570bb2ed9c84abf32033702e2860',9,'(Optional) Log Path','log_path','in','',1,'','','on'),(28,'f9389860f5c5340c9b27fca0b4ee5e71',9,'Web Hits','webhits','out','on',0,'','',''),(29,'5fbadb91ad66f203463c1187fe7bd9d5',10,'IP Address','ip','in','',1,'hostname','',''),(30,'6ac4330d123c69067d36a933d105e89a',10,'Milliseconds','out_ms','out','on',0,'','',''),(31,'d39556ecad6166701bfb0e28c5a11108',11,'Index Type','index_type','in','',0,'index_type','',''),(32,'3b7caa46eb809fc238de6ef18b6e10d5',11,'Index Value','index_value','in','',0,'index_value','',''),(33,'74af2e42dc12956c4817c2ef5d9983f9',11,'Output Type ID','output_type','in','',0,'output_type','',''),(34,'8ae57f09f787656bf4ac541e8bd12537',11,'Output Value','output','out','on',0,'','',''),(35,'172b4b0eacee4948c6479f587b62e512',12,'Index Type','index_type','in','',0,'index_type','',''),(36,'30fb5d5bcf3d66bb5abe88596f357c26',12,'Index Value','index_value','in','',0,'index_value','',''),(37,'31112c85ae4ff821d3b288336288818c',12,'Output Type ID','output_type','in','',0,'output_type','',''),(38,'5be8fa85472d89c621790b43510b5043',12,'Output Value','output','out','on',0,'','',''),(39,'c1f36ee60c3dc98945556d57f26e475b',2,'SNMP Port','snmp_port','in','',0,'snmp_port','',''),(40,'fc64b99742ec417cc424dbf8c7692d36',1,'SNMP Port','snmp_port','in','',0,'snmp_port','',''),(41,'20832ce12f099c8e54140793a091af90',1,'SNMP Authenticaion Protocol (v3)','snmp_auth_protocol','in','',0,'snmp_auth_protocol','',''),(42,'c60c9aac1e1b3555ea0620b8bbfd82cb',1,'SNMP Privacy Passphrase (v3)','snmp_priv_passphrase','in','',0,'snmp_priv_passphrase','',''),(43,'feda162701240101bc74148415ef415a',1,'SNMP Privacy Protocol (v3)','snmp_priv_protocol','in','',0,'snmp_priv_protocol','',''),(44,'2cf7129ad3ff819a7a7ac189bee48ce8',2,'SNMP Authenticaion Protocol (v3)','snmp_auth_protocol','in','',0,'snmp_auth_protocol','',''),(45,'6b13ac0a0194e171d241d4b06f913158',2,'SNMP Privacy Passphrase (v3)','snmp_priv_passphrase','in','',0,'snmp_priv_passphrase','',''),(46,'3a33d4fc65b8329ab2ac46a36da26b72',2,'SNMP Privacy Protocol (v3)','snmp_priv_protocol','in','',0,'snmp_priv_protocol','','');
/*!40000 ALTER TABLE `data_input_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_local`
--

DROP TABLE IF EXISTS `data_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_local` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) NOT NULL DEFAULT '0',
  `snmp_index` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_local`
--

LOCK TABLES `data_local` WRITE;
/*!40000 ALTER TABLE `data_local` DISABLE KEYS */;
INSERT INTO `data_local` VALUES (3,13,1,0,''),(4,15,1,0,''),(5,11,1,0,''),(6,17,1,0,''),(7,16,1,0,''),(73,43,4,8,'3'),(72,43,4,8,'2'),(71,43,4,8,'1'),(14,27,1,0,''),(70,41,3,1,'20'),(69,41,3,1,'19'),(68,41,3,1,'18'),(67,41,3,1,'17'),(66,41,3,1,'16'),(65,41,3,1,'15'),(64,41,3,1,'14'),(63,41,3,1,'13'),(62,41,3,1,'12'),(61,41,3,1,'11'),(60,41,3,1,'10'),(59,41,3,1,'9'),(58,41,3,1,'8'),(57,41,3,1,'7'),(56,41,3,1,'6'),(55,41,3,1,'5'),(54,41,3,1,'4'),(53,41,3,1,'3'),(52,41,3,1,'2'),(51,41,3,1,'1'),(50,43,3,8,'8'),(49,43,3,8,'7'),(48,43,3,8,'6'),(47,43,3,8,'5'),(46,43,3,8,'4'),(45,43,3,8,'3'),(44,43,3,8,'2'),(43,43,3,8,'1');
/*!40000 ALTER TABLE `data_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template`
--

DROP TABLE IF EXISTS `data_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template`
--

LOCK TABLES `data_template` WRITE;
/*!40000 ALTER TABLE `data_template` DISABLE KEYS */;
INSERT INTO `data_template` VALUES (3,'c8a8f50f5f4a465368222594c5709ede','ucd/net - Hard Drive Space'),(4,'cdfed2d401723d2f41fc239d4ce249c7','ucd/net - CPU Usage - System'),(5,'a27e816377d2ac6434a87c494559c726','ucd/net - CPU Usage - User'),(6,'c06c3d20eccb9598939dc597701ff574','ucd/net - CPU Usage - Nice'),(7,'a14f2d6f233b05e64263ff03a5b0b386','Karlnet - Noise Level'),(8,'def1a9019d888ed2ad2e106aa9595ede','Karlnet - Signal Level'),(9,'513a99ae3c9c4413609c1534ffc36eab','Karlnet - Wireless Transmits'),(10,'77404ae93c9cc410f1c2c717e7117378','Karlnet - Wireless Re-Transmits'),(11,'9e72511e127de200733eb502eb818e1d','Unix - Load Average'),(13,'dc33aa9a8e71fb7c61ec0e7a6da074aa','Linux - Memory - Free'),(15,'41f55087d067142d702dd3c73c98f020','Linux - Memory - Free Swap'),(16,'9b8c92d3c32703900ff7dd653bfc9cd8','Unix - Processes'),(17,'c221c2164c585b6da378013a7a6a2c13','Unix - Logged in Users'),(18,'a30a81cb1de65b52b7da542c8df3f188','Unix - Ping Host'),(19,'0de466a1b81dfe581d44ac014b86553a','Netware - Total Users'),(20,'bbe2da0708103029fbf949817d3a4537','Netware - Total Logins'),(22,'e4ac5d5fe73e3c773671c6d0498a8d9d','Netware - File System Reads'),(23,'f29f8c998425eedd249be1e7caf90ceb','Netware - File System Writes'),(24,'7a6216a113e19881e35565312db8a371','Netware - Cache Checks'),(25,'1dbd1251c8e94b334c0e6aeae5ca4b8d','Netware - Cache Hits'),(26,'1a4c5264eb27b5e57acd3160af770a61','Netware - Open Files'),(27,'e9def3a0e409f517cb804dfeba4ccd90','Cisco Router - 5 Minute CPU'),(30,'9b82d44eb563027659683765f92c9757','ucd/net - Load Average - 1 Minute'),(31,'87847714d19f405ff3c74f3341b3f940','ucd/net - Load Average - 5 Minute'),(32,'308ac157f24e2763f8cd828a80b3e5ff','ucd/net - Load Average - 15 Minute'),(33,'797a3e92b0039841b52e441a2823a6fb','ucd/net - Memory - Buffers'),(34,'fa15932d3cab0da2ab94c69b1a9f5ca7','ucd/net - Memory - Free'),(35,'6ce4ab04378f9f3b03ee0623abb6479f','Netware - Volumes'),(36,'03060555fab086b8412bbf9951179cd9','Netware - Directory Entries'),(37,'e4ac6919d4f6f21ec5b281a1d6ac4d4e','Unix - Hard Drive Space'),(38,'36335cd98633963a575b70639cd2fdad','Interface - Errors/Discards'),(39,'2f654f7d69ac71a5d56b1db8543ccad3','Interface - Unicast Packets'),(40,'c84e511401a747409053c90ba910d0fe','Interface - Non-Unicast Packets'),(41,'6632e1e0b58a565c135d7ff90440c335','Interface - Traffic'),(42,'1d17325f416b262921a0b55fe5f7e31d','Netware - CPU Utilization'),(43,'d814fa3b79bd0f8933b6e0834d3f16d0','Host MIB - Hard Drive Space'),(44,'f6e7d21c19434666bbdac00ccef9932f','Host MIB - CPU Utilization'),(45,'f383db441d1c246cff8482f15e184e5f','Host MIB - Processes'),(46,'2ef027cc76d75720ee5f7a528f0f1fda','Host MIB - Logged in Users'),(47,'a274deec1f78654dca6c446ba75ebca4','ucd/net - Memory - Cache'),(48,'d429e4a6019c91e6e84562593c1968ca','SNMP - Generic OID Template');
/*!40000 ALTER TABLE `data_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template_data`
--

DROP TABLE IF EXISTS `data_template_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `local_data_template_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_name` char(2) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `name_cache` varchar(255) NOT NULL DEFAULT '',
  `data_source_path` varchar(255) DEFAULT NULL,
  `t_active` char(2) DEFAULT NULL,
  `active` char(2) DEFAULT NULL,
  `t_rrd_step` char(2) DEFAULT NULL,
  `rrd_step` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_rra_id` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `local_data_id` (`local_data_id`),
  KEY `data_template_id` (`data_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template_data`
--

LOCK TABLES `data_template_data` WRITE;
/*!40000 ALTER TABLE `data_template_data` DISABLE KEYS */;
INSERT INTO `data_template_data` VALUES (3,0,0,3,2,'on','|host_description| - Hard Drive Space','',NULL,'','on','',300,''),(4,0,0,4,1,'','|host_description| - CPU Usage - System','',NULL,'','on','',300,''),(5,0,0,5,1,'','|host_description| - CPU Usage - User','',NULL,'','on','',300,''),(6,0,0,6,1,'','|host_description| - CPU Usage - Nice','',NULL,'','on','',300,''),(7,0,0,7,2,'on','|host_description| - Noise Level','',NULL,'','on','',300,''),(8,0,0,8,2,'on','|host_description| - Signal Level','',NULL,'','on','',300,''),(9,0,0,9,2,'on','|host_description| - Wireless Transmits','',NULL,'','on','',300,''),(10,0,0,10,2,'on','|host_description| - Wireless Re-Transmits','',NULL,'','on','',300,''),(11,0,0,11,4,'','|host_description| - Load Average','',NULL,'','on','',300,''),(13,0,0,13,6,'','|host_description| - Memory - Free','',NULL,'','on','',300,''),(15,0,0,15,6,'','|host_description| - Memory - Free Swap','',NULL,'','on','',300,''),(16,0,0,16,7,'','|host_description| - Processes','',NULL,'','on','',300,''),(17,0,0,17,5,'','|host_description| - Logged in Users','',NULL,'','on','',300,''),(18,0,0,18,10,'','|host_description| - Ping Host','',NULL,'','on','',300,''),(19,0,0,19,1,'','|host_description| - Total Users','',NULL,'','on','',300,''),(20,0,0,20,1,'','|host_description| - Total Logins','',NULL,'','on','',300,''),(22,0,0,22,1,'','|host_description| - File System Reads','',NULL,'','on','',300,''),(23,0,0,23,1,'','|host_description| - File System Writes','',NULL,'','on','',300,''),(24,0,0,24,1,'','|host_description| - Cache Checks','',NULL,'','on','',300,''),(25,0,0,25,1,'','|host_description| - Cache Hits','',NULL,'','on','',300,''),(26,0,0,26,1,'','|host_description| - Open Files','',NULL,'','on','',300,''),(27,0,0,27,1,'','|host_description| - 5 Minute CPU','',NULL,'','on','',300,''),(30,0,0,30,1,'','|host_description| - Load Average - 1 Minute','',NULL,'','on','',300,''),(31,0,0,31,1,'','|host_description| - Load Average - 5 Minute','',NULL,'','on','',300,''),(32,0,0,32,1,'','|host_description| - Load Average - 15 Minute','',NULL,'','on','',300,''),(33,0,0,33,1,'','|host_description| - Memory - Buffers','',NULL,'','on','',300,''),(34,0,0,34,1,'','|host_description| - Memory - Free','',NULL,'','on','',300,''),(35,0,0,35,2,'on','|host_description| - Volumes','',NULL,'','on','',300,''),(36,0,0,36,2,'on','|host_description| - Directory Entries','',NULL,'','on','',300,''),(37,0,0,37,11,'on','|host_description| - Hard Drive Space','',NULL,'','on','',300,''),(38,0,0,38,2,'on','|host_description| - Errors/Discards','',NULL,'','on','',300,''),(39,0,0,39,2,'on','|host_description| - Unicast Packets','',NULL,'','on','',300,''),(40,0,0,40,2,'on','|host_description| - Non-Unicast Packets','',NULL,'','on','',300,''),(41,0,0,41,2,'on','|host_description| - Traffic','',NULL,'','on','',300,''),(55,0,0,42,2,'','|host_description| - CPU Utilization','',NULL,'','on','',300,''),(56,0,0,43,12,'','|host_description| - Hard Drive Space','',NULL,'','on','',300,''),(57,0,0,44,12,'','|host_description| - CPU Utilization','',NULL,'','on','',300,''),(58,0,0,45,1,'','|host_description| - Processes','',NULL,'','on','',300,''),(59,0,0,46,1,'','|host_description| - Logged in Users','',NULL,'','on','',300,''),(62,13,3,13,6,NULL,'|host_description| - Memory - Free','Localhost - Memory - Free','<path_rra>/localhost_mem_buffers_3.rrd',NULL,'on',NULL,300,NULL),(63,15,4,15,6,NULL,'|host_description| - Memory - Free Swap','Localhost - Memory - Free Swap','<path_rra>/localhost_mem_swap_4.rrd',NULL,'on',NULL,300,NULL),(64,11,5,11,4,NULL,'|host_description| - Load Average','Localhost - Load Average','<path_rra>/localhost_load_1min_5.rrd',NULL,'on',NULL,300,NULL),(65,17,6,17,5,NULL,'|host_description| - Logged in Users','Localhost - Logged in Users','<path_rra>/localhost_users_6.rrd',NULL,'on',NULL,300,NULL),(66,16,7,16,7,NULL,'|host_description| - Processes','Localhost - Processes','<path_rra>/localhost_proc_7.rrd',NULL,'on',NULL,300,NULL),(68,0,0,47,1,'','|host_description| - Memory - Cache','',NULL,'','on','',300,''),(69,0,0,48,1,'on','|host_description| -','',NULL,'','on','',300,''),(131,41,69,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_7','<path_rra>/test2_traffic_in_69.rrd',NULL,'on',NULL,300,NULL),(130,41,68,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_4','<path_rra>/test2_traffic_in_68.rrd',NULL,'on',NULL,300,NULL),(129,41,67,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_3','<path_rra>/test2_traffic_in_67.rrd',NULL,'on',NULL,300,NULL),(128,41,66,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_2','<path_rra>/test2_traffic_in_66.rrd',NULL,'on',NULL,300,NULL),(76,27,14,27,1,NULL,'|host_description| - 5 Minute CPU','Localhost - 5 Minute CPU','<path_rra>/test1_5min_cpu_14.rrd',NULL,'on',NULL,300,NULL),(127,41,65,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_6','<path_rra>/test2_traffic_in_65.rrd',NULL,'on',NULL,300,NULL),(126,41,64,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_9','<path_rra>/test2_traffic_in_64.rrd',NULL,'on',NULL,300,NULL),(125,41,63,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_5','<path_rra>/test2_traffic_in_63.rrd',NULL,'on',NULL,300,NULL),(124,41,62,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_4','<path_rra>/test2_traffic_in_62.rrd',NULL,'on',NULL,300,NULL),(123,41,61,41,2,NULL,'|host_description| - Traffic - |query_ifIP| - |query_ifName|','test2 - Traffic - 10.11.14.4 - ethernet_5','<path_rra>/test2_traffic_in_61.rrd',NULL,'on',NULL,300,NULL),(122,41,60,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_1','<path_rra>/test2_traffic_in_60.rrd',NULL,'on',NULL,300,NULL),(121,41,59,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ppp_1','<path_rra>/test2_traffic_in_59.rrd',NULL,'on',NULL,300,NULL),(120,41,58,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_6','<path_rra>/test2_traffic_in_58.rrd',NULL,'on',NULL,300,NULL),(119,41,57,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_1','<path_rra>/test2_traffic_in_57.rrd',NULL,'on',NULL,300,NULL),(118,41,56,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_0','<path_rra>/test2_traffic_in_56.rrd',NULL,'on',NULL,300,NULL),(117,41,55,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ppp_0','<path_rra>/test2_traffic_in_55.rrd',NULL,'on',NULL,300,NULL),(116,41,54,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_3','<path_rra>/test2_traffic_in_54.rrd',NULL,'on',NULL,300,NULL),(115,41,53,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_2','<path_rra>/test2_traffic_in_53.rrd',NULL,'on',NULL,300,NULL),(114,41,52,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_0','<path_rra>/test2_traffic_in_52.rrd',NULL,'on',NULL,300,NULL),(113,41,51,41,2,NULL,'|host_description| - Traffic - |query_ifIP| - |query_ifName|','test2 - Traffic - 127.0.0.1 - loopback_0','<path_rra>/test2_traffic_in_51.rrd',NULL,'on',NULL,300,NULL),(112,56,50,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - Physical Memory','<path_rra>/test2_hdd_used_50.rrd',NULL,'on',NULL,300,NULL),(111,56,49,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - Virtual Memory','<path_rra>/test2_hdd_used_49.rrd',NULL,'on',NULL,300,NULL),(110,56,48,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - S: Label:Virtua','<path_rra>/test2_hdd_used_48.rrd',NULL,'on',NULL,300,NULL),(109,56,47,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - J: Label:Web  S','<path_rra>/test2_hdd_used_47.rrd',NULL,'on',NULL,300,NULL),(108,56,46,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - G: Label:Logs  ','<path_rra>/test2_hdd_used_46.rrd',NULL,'on',NULL,300,NULL),(107,56,45,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - D: Label:VBOXAD','<path_rra>/test2_hdd_used_45.rrd',NULL,'on',NULL,300,NULL),(106,56,44,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - C: Label:  Seri','<path_rra>/test2_hdd_used_44.rrd',NULL,'on',NULL,300,NULL),(105,56,43,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - A:','<path_rra>/test2_hdd_used_43.rrd',NULL,'on',NULL,300,NULL),(132,41,70,41,2,NULL,'|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_8','<path_rra>/test2_traffic_in_70.rrd',NULL,'on',NULL,300,NULL),(133,56,71,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - A:','<path_rra>/test3_hdd_used_71.rrd',NULL,'on',NULL,300,NULL),(134,56,72,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - C: Label:  Seri','<path_rra>/test3_hdd_used_72.rrd',NULL,'on',NULL,300,NULL),(135,56,73,43,12,NULL,'|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - D: Label:VBOXAD','<path_rra>/test3_hdd_used_73.rrd',NULL,'on',NULL,300,NULL);
/*!40000 ALTER TABLE `data_template_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template_data_rra`
--

DROP TABLE IF EXISTS `data_template_data_rra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template_data_rra` (
  `data_template_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`data_template_data_id`,`rra_id`),
  KEY `data_template_data_id` (`data_template_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template_data_rra`
--

LOCK TABLES `data_template_data_rra` WRITE;
/*!40000 ALTER TABLE `data_template_data_rra` DISABLE KEYS */;
INSERT INTO `data_template_data_rra` VALUES (3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4),(5,1),(5,2),(5,3),(5,4),(6,1),(6,2),(6,3),(6,4),(7,1),(7,2),(7,3),(7,4),(8,1),(8,2),(8,3),(8,4),(9,1),(9,2),(9,3),(9,4),(10,1),(10,2),(10,3),(10,4),(11,1),(11,2),(11,3),(11,4),(13,1),(13,2),(13,3),(13,4),(15,1),(15,2),(15,3),(15,4),(16,1),(16,2),(16,3),(16,4),(17,1),(17,2),(17,3),(17,4),(18,1),(18,2),(18,3),(18,4),(19,1),(19,2),(19,3),(19,4),(20,1),(20,2),(20,3),(20,4),(22,1),(22,2),(22,3),(22,4),(23,1),(23,2),(23,3),(23,4),(24,1),(24,2),(24,3),(24,4),(25,1),(25,2),(25,3),(25,4),(26,1),(26,2),(26,3),(26,4),(27,1),(27,2),(27,3),(27,4),(30,1),(30,2),(30,3),(30,4),(31,1),(31,2),(31,3),(31,4),(32,1),(32,2),(32,3),(32,4),(33,1),(33,2),(33,3),(33,4),(34,1),(34,2),(34,3),(34,4),(35,1),(35,2),(35,3),(35,4),(36,1),(36,2),(36,3),(36,4),(37,1),(37,2),(37,3),(37,4),(38,1),(38,2),(38,3),(38,4),(39,1),(39,2),(39,3),(39,4),(40,1),(40,2),(40,3),(40,4),(41,1),(41,2),(41,3),(41,4),(55,1),(55,2),(55,3),(55,4),(56,1),(56,2),(56,3),(56,4),(57,1),(57,2),(57,3),(57,4),(58,1),(58,2),(58,3),(58,4),(59,1),(59,2),(59,3),(59,4),(62,1),(62,2),(62,3),(62,4),(63,1),(63,2),(63,3),(63,4),(64,1),(64,2),(64,3),(64,4),(65,1),(65,2),(65,3),(65,4),(66,1),(66,2),(66,3),(66,4),(68,1),(68,2),(68,3),(68,4),(69,1),(69,2),(69,3),(69,4),(70,1),(70,2),(70,3),(70,4),(71,1),(71,2),(71,3),(71,4),(72,1),(72,2),(72,3),(72,4),(73,1),(73,2),(73,3),(73,4),(74,1),(74,2),(74,3),(74,4),(75,1),(75,2),(75,3),(75,4),(76,1),(76,2),(76,3),(76,4),(77,1),(77,2),(77,3),(77,4),(78,1),(78,2),(78,3),(78,4),(79,1),(79,2),(79,3),(79,4),(80,1),(80,2),(80,3),(80,4),(81,1),(81,2),(81,3),(81,4),(82,1),(82,2),(82,3),(82,4),(83,1),(83,2),(83,3),(83,4),(84,1),(84,2),(84,3),(84,4),(85,1),(85,2),(85,3),(85,4),(86,1),(86,2),(86,3),(86,4),(87,1),(87,2),(87,3),(87,4),(88,1),(88,2),(88,3),(88,4),(89,1),(89,2),(89,3),(89,4),(90,1),(90,2),(90,3),(90,4),(91,1),(91,2),(91,3),(91,4),(92,1),(92,2),(92,3),(92,4),(93,1),(93,2),(93,3),(93,4),(94,1),(94,2),(94,3),(94,4),(95,1),(95,2),(95,3),(95,4),(96,1),(96,2),(96,3),(96,4),(97,1),(97,2),(97,3),(97,4),(98,1),(98,2),(98,3),(98,4),(99,1),(99,2),(99,3),(99,4),(100,1),(100,2),(100,3),(100,4),(101,1),(101,2),(101,3),(101,4),(102,1),(102,2),(102,3),(102,4),(103,1),(103,2),(103,3),(103,4),(104,1),(104,2),(104,3),(104,4),(105,1),(105,2),(105,3),(105,4),(106,1),(106,2),(106,3),(106,4),(107,1),(107,2),(107,3),(107,4),(108,1),(108,2),(108,3),(108,4),(109,1),(109,2),(109,3),(109,4),(110,1),(110,2),(110,3),(110,4),(111,1),(111,2),(111,3),(111,4),(112,1),(112,2),(112,3),(112,4),(113,1),(113,2),(113,3),(113,4),(114,1),(114,2),(114,3),(114,4),(115,1),(115,2),(115,3),(115,4),(116,1),(116,2),(116,3),(116,4),(117,1),(117,2),(117,3),(117,4),(118,1),(118,2),(118,3),(118,4),(119,1),(119,2),(119,3),(119,4),(120,1),(120,2),(120,3),(120,4),(121,1),(121,2),(121,3),(121,4),(122,1),(122,2),(122,3),(122,4),(123,1),(123,2),(123,3),(123,4),(124,1),(124,2),(124,3),(124,4),(125,1),(125,2),(125,3),(125,4),(126,1),(126,2),(126,3),(126,4),(127,1),(127,2),(127,3),(127,4),(128,1),(128,2),(128,3),(128,4),(129,1),(129,2),(129,3),(129,4),(130,1),(130,2),(130,3),(130,4),(131,1),(131,2),(131,3),(131,4),(132,1),(132,2),(132,3),(132,4),(133,1),(133,2),(133,3),(133,4),(134,1),(134,2),(134,3),(134,4),(135,1),(135,2),(135,3),(135,4);
/*!40000 ALTER TABLE `data_template_data_rra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template_rrd`
--

DROP TABLE IF EXISTS `data_template_rrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template_rrd` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `local_data_template_rrd_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_rrd_maximum` char(2) DEFAULT NULL,
  `rrd_maximum` varchar(20) NOT NULL DEFAULT '0',
  `t_rrd_minimum` char(2) DEFAULT NULL,
  `rrd_minimum` varchar(20) NOT NULL DEFAULT '0',
  `t_rrd_heartbeat` char(2) DEFAULT NULL,
  `rrd_heartbeat` mediumint(6) NOT NULL DEFAULT '0',
  `t_data_source_type_id` char(2) DEFAULT NULL,
  `data_source_type_id` smallint(5) NOT NULL DEFAULT '0',
  `t_data_source_name` char(2) DEFAULT NULL,
  `data_source_name` varchar(19) NOT NULL DEFAULT '',
  `t_data_input_field_id` char(2) DEFAULT NULL,
  `data_input_field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duplicate_dsname_contraint` (`local_data_id`,`data_source_name`,`data_template_id`),
  KEY `local_data_id` (`local_data_id`),
  KEY `data_template_id` (`data_template_id`),
  KEY `local_data_template_rrd_id` (`local_data_template_rrd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template_rrd`
--

LOCK TABLES `data_template_rrd` WRITE;
/*!40000 ALTER TABLE `data_template_rrd` DISABLE KEYS */;
INSERT INTO `data_template_rrd` VALUES (3,'2d53f9c76767a2ae8909f4152fd473a4',0,0,3,'','0','','0','',600,'',1,'','hdd_free','',0),(4,'93d91aa7a3cc5473e7b195d5d6e6e675',0,0,3,'','0','','0','',600,'',1,'','hdd_used','',0),(5,'7bee7987bbf30a3bc429d2a67c6b2595',0,0,4,'','100','','0','',600,'',2,'','cpu_system','',0),(6,'ddccd7fbdece499da0235b4098b87f9e',0,0,5,'','100','','0','',600,'',2,'','cpu_user','',0),(7,'122ab2097f8c6403b7b90cde7b9e2bc2',0,0,6,'','100','','0','',600,'',2,'','cpu_nice','',0),(8,'34f50c820092ea0fecba25b4b94a7946',0,0,7,'','100','','0','',600,'',1,'','wrls_noise','',0),(9,'830b811d1834e5ba0e2af93bd92db057',0,0,8,'','100','','0','',600,'',1,'','wrls_signal','',0),(10,'2f1b016a2465eef3f7369f6313cd4a94',0,0,9,'','1000000','','0','',600,'',2,'','wrls_transmits','',0),(11,'28ffcecaf8b50e49f676f2d4a822685d',0,0,10,'','1000000','','0','',600,'',2,'','wrls_retransmits','',0),(12,'8175ca431c8fe50efff5a1d3ae51b55d',0,0,11,'','500','','0','',600,'',1,'','load_1min','',17),(13,'a2eeb8acd6ea01cd0e3ac852965c0eb6',0,0,11,'','500','','0','',600,'',1,'','load_5min','',18),(14,'9f951b7fb3b19285a411aebb5254a831',0,0,11,'','500','','0','',600,'',1,'','load_15min','',19),(16,'a4df3de5238d3beabee1a2fe140d3d80',0,0,13,'','0','','0','',600,'',1,'','mem_buffers','',23),(18,'7fea6acc9b1a19484b4cb4cef2b6c5da',0,0,15,'','0','','0','',600,'',1,'','mem_swap','',23),(19,'f1ba3a5b17b95825021241398bb0f277',0,0,16,'','1000','','0','',600,'',1,'','proc','',24),(20,'46a5afe8e6c0419172c76421dc9e304a',0,0,17,'','500','','0','',600,'',1,'','users','',21),(21,'962fd1994fe9cae87fb36436bdb8a742',0,0,18,'','5000','','0','',600,'',1,'','ping','',30),(22,'7a8dd1111a8624369906bf2cd6ea9ca9',0,0,19,'','100000','','0','',600,'',1,'','total_users','',0),(23,'ddb6e74d34d2f1969ce85f809dbac23d',0,0,20,'','100000','','0','',600,'',1,'','total_logins','',0),(25,'289311d10336941d33d9a1c48a7b11ee',0,0,22,'','10000000','','0','',600,'',2,'','fs_reads','',0),(26,'02216f036cca04655ee2f67fedb6f4f0',0,0,23,'','10000000','','0','',600,'',2,'','fs_writes','',0),(27,'9e402c0f29131ef7139c20bd500b4e8a',0,0,24,'','10000000','','0','',600,'',2,'','cache_checks','',0),(28,'46717dfe3c8c030d8b5ec0874f9dbdca',0,0,25,'','1000000','','0','',600,'',2,'','cache_hits','',0),(29,'7a88a60729af62561812c43bde61dfc1',0,0,26,'','100000','','0','',600,'',1,'','open_files','',0),(30,'3c0fd1a188b64a662dfbfa985648397b',0,0,27,'','100','','0','',600,'',1,'','5min_cpu','',0),(33,'ed44c2438ef7e46e2aeed2b6c580815c',0,0,30,'','500','','0','',600,'',1,'','load_1min','',0),(34,'9b3a00c9e3530d9e58895ac38271361e',0,0,31,'','500','','0','',600,'',1,'','load_5min','',0),(35,'6746c2ed836ecc68a71bbddf06b0e5d9',0,0,32,'','500','','0','',600,'',1,'','load_15min','',0),(36,'9835d9e1a8c78aa2475d752e8fa74812',0,0,33,'','10000000','','0','',600,'',1,'','mem_buffers','',0),(37,'9c78dc1981bcea841b8c827c6dc0d26c',0,0,34,'','10000000','','0','',600,'',1,'','mem_free','',0),(38,'62a56dc76fe4cd8566a31b5df0274cc3',0,0,35,'','0','','0','',600,'',1,'','vol_total','',0),(39,'2e366ab49d0e0238fb4e3141ea5a88c3',0,0,35,'','0','','0','',600,'',1,'','vol_free','',0),(40,'dceedc84718dd93a5affe4b190bca810',0,0,35,'','0','','0','',600,'',1,'','vol_freeable','',0),(42,'93330503f1cf67db00d8fe636035e545',0,0,36,'','100000000000','','0','',600,'',1,'','dir_total','',0),(43,'6b0fe4aa6aaf22ef9cfbbe96d87fa0d7',0,0,36,'','100000000000','','0','',600,'',1,'','dir_used','',0),(44,'4c82df790325d789d304e6ee5cd4ab7d',0,0,37,'','0','','0','',600,'',1,'','hdd_free','',0),(46,'c802e2fd77f5b0a4c4298951bf65957c',0,0,38,'','10000000','','0','',600,'',2,'','errors_in','',0),(47,'4e2a72240955380dc8ffacfcc8c09874',0,0,38,'','10000000','','0','',600,'',2,'','discards_in','',0),(48,'636672962b5bb2f31d86985e2ab4bdfe',0,0,39,'','1000000000','','0','',600,'',2,'','unicast_in','',0),(49,'18ce92c125a236a190ee9dd948f56268',0,0,39,'','1000000000','','0','',600,'',2,'','unicast_out','',0),(50,'13ebb33f9cbccfcba828db1075a8167c',0,0,38,'','10000000','','0','',600,'',2,'','discards_out','',0),(51,'31399c3725bee7e09ec04049e3d5cd17',0,0,38,'','10000000','','0','',600,'',2,'','errors_out','',0),(52,'7be68cbc4ee0b2973eb9785f8c7a35c7',0,0,40,'','1000000000','','0','',600,'',2,'','nonunicast_out','',0),(53,'93e2b6f59b10b13f2ddf2da3ae98b89a',0,0,40,'','1000000000','','0','',600,'',2,'','nonunicast_in','',0),(54,'2df25c57022b0c7e7d0be4c035ada1a0',0,0,41,'on','100000000','','0','',600,'',2,'','traffic_in','',0),(55,'721c0794526d1ac1c359f27dc56faa49',0,0,41,'on','100000000','','0','',600,'',2,'','traffic_out','',0),(56,'07175541991def89bd02d28a215f6fcc',0,0,37,'','0','','0','',600,'',1,'','hdd_used','',0),(76,'07492e5cace6d74e7db3cb1fc005a3f3',0,0,42,'','100','','0','',600,'',1,'','cpu','',0),(78,'0ee6bb54957f6795a5369a29f818d860',0,0,43,'','0','','0','',600,'',1,'','hdd_used','',0),(79,'9825aaf7c0bdf1554c5b4b86680ac2c0',0,0,44,'','100','','0','',600,'',1,'','cpu','',0),(80,'50ccbe193c6c7fc29fb9f726cd6c48ee',0,0,45,'','1000','','0','',600,'',1,'','proc','',0),(81,'9464c91bcff47f23085ae5adae6ab987',0,0,46,'','5000','','0','',600,'',1,'','users','',0),(84,'',16,3,13,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'mem_buffers',NULL,23),(85,'',18,4,15,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'mem_swap',NULL,23),(86,'',12,5,11,NULL,'500',NULL,'0',NULL,600,NULL,1,NULL,'load_1min',NULL,17),(87,'',13,5,11,NULL,'500',NULL,'0',NULL,600,NULL,1,NULL,'load_5min',NULL,18),(88,'',14,5,11,NULL,'500',NULL,'0',NULL,600,NULL,1,NULL,'load_15min',NULL,19),(89,'',20,6,17,NULL,'500',NULL,'0',NULL,600,NULL,1,NULL,'users',NULL,21),(90,'',19,7,16,NULL,'1000',NULL,'0',NULL,600,NULL,1,NULL,'proc',NULL,24),(92,'165a0da5f461561c85d092dfe96b9551',0,0,43,'','0','','0','',600,'',1,'','hdd_total','',0),(95,'7a6ca455bbeff99ca891371bc77d5cf9',0,0,47,'','10000000','','0','',600,'',1,'','mem_cache','',0),(96,'224b83ea73f55f8a861bcf4c9bea0472',0,0,48,'on','100','','0','',600,'on',1,'','snmp_oid','',0),(210,'',54,68,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(209,'',55,67,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(208,'',54,67,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(103,'',30,14,27,NULL,'100',NULL,'0',NULL,600,NULL,1,NULL,'5min_cpu',NULL,0),(207,'',55,66,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(206,'',54,66,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(205,'',55,65,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(204,'',54,65,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(203,'',55,64,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(202,'',54,64,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(201,'',55,63,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(200,'',54,63,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(199,'',55,62,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(198,'',54,62,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(197,'',55,61,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(196,'',54,61,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(195,'',55,60,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(194,'',54,60,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(193,'',55,59,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(192,'',54,59,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(191,'',55,58,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(190,'',54,58,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(189,'',55,57,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(188,'',54,57,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(187,'',55,56,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(186,'',54,56,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(185,'',55,55,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(184,'',54,55,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(183,'',55,54,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(182,'',54,54,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(181,'',55,53,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(180,'',54,53,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(179,'',55,52,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(178,'',54,52,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(177,'',55,51,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(176,'',54,51,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(175,'',92,50,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(174,'',78,50,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(173,'',92,49,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(172,'',78,49,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(171,'',92,48,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(170,'',78,48,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(169,'',92,47,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(168,'',78,47,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(167,'',92,46,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(166,'',78,46,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(165,'',92,45,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(164,'',78,45,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(163,'',92,44,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(162,'',78,44,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(161,'',92,43,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(160,'',78,43,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(211,'',55,68,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(212,'',54,69,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(213,'',55,69,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(214,'',54,70,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_in',NULL,0),(215,'',55,70,41,NULL,'|query_ifSpeed|',NULL,'0',NULL,600,NULL,2,NULL,'traffic_out',NULL,0),(216,'',78,71,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(217,'',92,71,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(218,'',78,72,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(219,'',92,72,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0),(220,'',78,73,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_used',NULL,0),(221,'',92,73,43,NULL,'0',NULL,'0',NULL,600,NULL,1,NULL,'hdd_total',NULL,0);
/*!40000 ALTER TABLE `data_template_rrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_local`
--

DROP TABLE IF EXISTS `graph_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_local` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) NOT NULL DEFAULT '0',
  `snmp_index` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `host_id` (`host_id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `snmp_query_id` (`snmp_query_id`),
  KEY `snmp_index` (`snmp_index`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COMMENT='Creates a relationship for each item in a custom graph.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_local`
--

LOCK TABLES `graph_local` WRITE;
/*!40000 ALTER TABLE `graph_local` DISABLE KEYS */;
INSERT INTO `graph_local` VALUES (1,12,1,0,''),(2,9,1,0,''),(3,10,1,0,''),(4,8,1,0,''),(54,2,3,1,'7'),(63,2,3,1,'16'),(62,2,3,1,'15'),(11,18,1,0,''),(61,2,3,1,'14'),(60,2,3,1,'13'),(59,2,3,1,'12'),(58,2,3,1,'11'),(57,2,3,1,'10'),(53,2,3,1,'6'),(52,2,3,1,'5'),(56,2,3,1,'9'),(51,2,3,1,'4'),(50,2,3,1,'3'),(49,2,3,1,'2'),(48,2,3,1,'1'),(47,26,3,8,'8'),(46,26,3,8,'7'),(55,2,3,1,'8'),(45,26,3,8,'6'),(44,26,3,8,'5'),(43,26,3,8,'4'),(42,26,3,8,'3'),(41,26,3,8,'2'),(40,26,3,8,'1'),(64,2,3,1,'17'),(65,2,3,1,'18'),(66,2,3,1,'19'),(67,2,3,1,'20'),(68,26,4,8,'1'),(69,26,4,8,'2'),(70,26,4,8,'3');
/*!40000 ALTER TABLE `graph_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_template_input`
--

DROP TABLE IF EXISTS `graph_template_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_template_input` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `column_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 COMMENT='Stores the names for graph item input groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_template_input`
--

LOCK TABLES `graph_template_input` WRITE;
/*!40000 ALTER TABLE `graph_template_input` DISABLE KEYS */;
INSERT INTO `graph_template_input` VALUES (3,'e9d4191277fdfd7d54171f153da57fb0',2,'Inbound Data Source','','task_item_id'),(4,'7b361722a11a03238ee8ab7ce44a1037',2,'Outbound Data Source','','task_item_id'),(5,'b33eb27833614056e06ee5952c3e0724',3,'Available Disk Space Data Source','','task_item_id'),(6,'ef8799e63ee00e8904bcc4228015784a',3,'Used Disk Space Data Source','','task_item_id'),(7,'2662ef4fbb0bf92317ffd42c7515af37',5,'Signal Level Data Source','','task_item_id'),(8,'a6edef6624c796d3a6055305e2e3d4bf',5,'Noise Level Data Source','','task_item_id'),(9,'b0e902db1875e392a9d7d69bfbb13515',5,'Signal Level Color','','color_id'),(10,'24632b1d4a561e937225d0a5fbe65e41',5,'Noise Level Color','','color_id'),(11,'6d078f1d58b70ad154a89eb80fe6ab75',6,'Transmissions Data Source','','task_item_id'),(12,'878241872dd81c68d78e6ff94871d97d',6,'Re-Transmissions Data Source','','task_item_id'),(13,'f8fcdc3a3f0e8ead33bd9751895a3462',6,'Transmissions Color','','color_id'),(14,'394ab4713a34198dddb5175aa40a2b4a',6,'Re-Transmissions Color','','color_id'),(15,'433f328369f9569446ddc59555a63eb8',7,'Ping Host Data Source','','task_item_id'),(16,'a1a91c1514c65152d8cb73522ea9d4e6',7,'Legend Color','','color_id'),(17,'2fb4deb1448379b27ddc64e30e70dc42',7,'Legend Text','','text_format'),(18,'592cedd465877bc61ab549df688b0b2a',8,'Processes Data Source','','task_item_id'),(19,'1d51dbabb200fcea5c4b157129a75410',8,'Legend Color','','color_id'),(20,'8cb8ed3378abec21a1819ea52dfee6a3',9,'1 Minute Data Source','','task_item_id'),(21,'5dfcaf9fd771deb8c5430bce1562e371',9,'5 Minute Data Source','','task_item_id'),(22,'6f3cc610315ee58bc8e0b1f272466324',9,'15 Minute Data Source','','task_item_id'),(23,'b457a982bf46c6760e6ef5f5d06d41fb',10,'Logged in Users Data Source','','task_item_id'),(24,'bd4a57adf93c884815b25a8036b67f98',10,'Legend Color','','color_id'),(25,'d7cdb63500c576e0f9f354de42c6cf3a',11,'1 Minute Data Source','','task_item_id'),(26,'a23152f5ec02e7762ca27608c0d89f6c',11,'5 Minute Data Source','','task_item_id'),(27,'2cc5d1818da577fba15115aa18f64d85',11,'15 Minute Data Source','','task_item_id'),(30,'6273c71cdb7ed4ac525cdbcf6180918c',12,'Free Data Source','','task_item_id'),(31,'5e62dbea1db699f1bda04c5863e7864d',12,'Swap Data Source','','task_item_id'),(32,'4d52e112a836d4c9d451f56602682606',4,'System CPU Data Source','','task_item_id'),(33,'f0310b066cc919d2f898b8d1ebf3b518',4,'User CPU Data Source','','task_item_id'),(34,'d9eb6b9eb3d7dd44fd14fdefb4096b54',4,'Nice CPU Data Source','','task_item_id'),(35,'f45def7cad112b450667aa67262258cb',13,'Memory Free Data Source','','task_item_id'),(36,'f8c361a8c8b7ad80e8be03ba7ea5d0d6',13,'Memory Buffers Data Source','','task_item_id'),(37,'03d11dce695963be30bd744bd6cbac69',14,'Cache Hits Data Source','','task_item_id'),(38,'9cbc515234779af4bf6cdf71a81c556a',14,'Cache Checks Data Source','','task_item_id'),(39,'2c4d561ee8132a8dda6de1104336a6ec',15,'CPU Utilization Data Source','','task_item_id'),(40,'6e1cf7addc0cc419aa903552e3eedbea',16,'File System Reads Data Source','','task_item_id'),(41,'7ea2aa0656f7064d25a36135dd0e9082',16,'File System Writes Data Source','','task_item_id'),(42,'63480bca78a38435f24a5b5d5ed050d7',17,'Current Logins Data Source','','task_item_id'),(44,'31fed1f9e139d4897d0460b10fb7be94',15,'Legend Color','','color_id'),(45,'bb9d83a02261583bc1f92d9e66ea705d',18,'CPU Usage Data Source','','task_item_id'),(46,'51196222ed37b44236d9958116028980',18,'Legend Color','','color_id'),(47,'fd26b0f437b75715d6dff983e7efa710',19,'Free Space Data Source','','task_item_id'),(48,'a463dd46862605c90ea60ccad74188db',19,'Total Space Data Source','','task_item_id'),(49,'9977dd7a41bcf0f0c02872b442c7492e',19,'Freeable Space Data Source','','task_item_id'),(51,'a7a69bbdf6890d6e6eaa7de16e815ec6',20,'Used Directory Entries Data Source','','task_item_id'),(52,'0072b613a33f1fae5ce3e5903dec8fdb',20,'Available Directory Entries Data Source','','task_item_id'),(53,'940beb0f0344e37f4c6cdfc17d2060bc',21,'Available Disk Space Data Source','','task_item_id'),(54,'7b0674dd447a9badf0d11bec688028a8',21,'Used Disk Space Data Source','','task_item_id'),(55,'fa83cd3a3b4271b644cb6459ea8c35dc',22,'Discards In Data Source','','task_item_id'),(56,'7946e8ee1e38a65462b85e31a15e35e5',22,'Errors In Data Source','','task_item_id'),(57,'00ae916640272f5aca54d73ae34c326b',23,'Unicast Packets Out Data Source','','task_item_id'),(58,'1bc1652f82488ebfb7242c65d2ffa9c7',23,'Unicast Packets In Data Source','','task_item_id'),(59,'e3177d0e56278de320db203f32fb803d',24,'Non-Unicast Packets In Data Source','','task_item_id'),(60,'4f20fba2839764707f1c3373648c5fef',24,'Non-Unicast Packets Out Data Source','','task_item_id'),(61,'e5acdd5368137c408d56ecf55b0e077c',22,'Discards Out Data Source','','task_item_id'),(62,'a028e586e5fae667127c655fe0ac67f0',22,'Errors Out Data Source','','task_item_id'),(63,'2764a4f142ba9fd95872106a1b43541e',25,'Inbound Data Source','','task_item_id'),(64,'f73f7ddc1f4349356908122093dbfca2',25,'Outbound Data Source','','task_item_id'),(65,'86bd8819d830a81d64267761e1fd8ec4',26,'Total Disk Space Data Source','','task_item_id'),(66,'6c8967850102202de166951e4411d426',26,'Used Disk Space Data Source','','task_item_id'),(67,'bdad718851a52b82eca0a310b0238450',27,'CPU Utilization Data Source','','task_item_id'),(68,'e7b578e12eb8a82627557b955fd6ebd4',27,'Legend Color','','color_id'),(69,'37d09fb7ce88ecec914728bdb20027f3',28,'Logged in Users Data Source','','task_item_id'),(70,'699bd7eff7ba0c3520db3692103a053d',28,'Legend Color','','color_id'),(71,'df905e159d13a5abed8a8a7710468831',29,'Processes Data Source','','task_item_id'),(72,'8ca9e3c65c080dbf74a59338d64b0c14',29,'Legend Color','','color_id'),(73,'69ad68fc53af03565aef501ed5f04744',30,'Open Files Data Source','','task_item_id'),(74,'562726cccdb67d5c6941e9e826ef4ef5',31,'Inbound Data Source','','task_item_id'),(75,'82426afec226f8189c8928e7f083f80f',31,'Outbound Data Source','','task_item_id'),(76,'69a23877302e7d142f254b208c58b596',32,'Inbound Data Source','','task_item_id'),(77,'f28013abf8e5813870df0f4111a5e695',32,'Outbound Data Source','','task_item_id'),(78,'8644b933b6a09dde6c32ff24655eeb9a',33,'Outbound Data Source','','task_item_id'),(79,'49c4b4800f3e638a6f6bb681919aea80',33,'Inbound Data Source','','task_item_id'),(80,'e0b395be8db4f7b938d16df7ae70065f',13,'Cache Memory Data Source','','task_item_id'),(81,'2dca37011521501b9c2b705d080db750',34,'Data Source [snmp_oid]',NULL,'task_item_id'),(82,'b8d8ade5f5f3dd7b12f8cc56bbb4083e',34,'Legend Color','','color_id'),(83,'ac2355b4895c37e14df827f969f31c12',34,'Legend Text','','text_format');
/*!40000 ALTER TABLE `graph_template_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_template_input_defs`
--

DROP TABLE IF EXISTS `graph_template_input_defs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_template_input_defs` (
  `graph_template_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_item_id` int(12) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`graph_template_input_id`,`graph_template_item_id`),
  KEY `graph_template_input_id` (`graph_template_input_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores the relationship for what graph iitems are associated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_template_input_defs`
--

LOCK TABLES `graph_template_input_defs` WRITE;
/*!40000 ALTER TABLE `graph_template_input_defs` DISABLE KEYS */;
INSERT INTO `graph_template_input_defs` VALUES (3,9),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(4,16),(5,21),(5,22),(5,23),(5,24),(6,17),(6,18),(6,19),(6,20),(7,45),(7,46),(7,47),(7,48),(8,49),(8,50),(8,51),(8,52),(9,45),(10,49),(11,53),(11,54),(11,55),(11,56),(12,57),(12,58),(12,59),(12,60),(13,53),(14,57),(15,61),(15,62),(15,63),(15,64),(16,61),(17,61),(18,65),(18,66),(18,67),(18,68),(19,65),(20,69),(20,70),(21,71),(21,72),(22,73),(22,74),(23,76),(23,77),(23,78),(23,79),(24,76),(25,80),(25,81),(26,82),(26,83),(27,84),(27,85),(30,95),(30,96),(30,97),(30,98),(31,99),(31,100),(31,101),(31,102),(32,29),(32,30),(32,31),(32,32),(33,33),(33,34),(33,35),(33,36),(34,37),(34,38),(34,39),(34,40),(35,103),(35,104),(35,105),(35,106),(36,107),(36,108),(36,109),(36,110),(37,111),(37,112),(37,113),(37,114),(38,115),(38,116),(38,117),(38,118),(39,119),(39,120),(39,121),(39,122),(40,123),(40,124),(40,125),(40,126),(41,127),(41,128),(41,129),(41,130),(42,131),(42,132),(42,133),(42,134),(44,119),(45,139),(45,140),(45,141),(45,142),(46,139),(47,143),(47,144),(47,145),(47,146),(48,147),(48,148),(48,149),(48,150),(49,151),(49,152),(49,153),(49,154),(51,159),(51,160),(51,161),(51,162),(52,163),(52,164),(52,165),(52,166),(53,172),(53,173),(53,174),(53,175),(54,167),(54,169),(54,170),(54,171),(55,180),(55,181),(55,182),(55,183),(56,184),(56,185),(56,186),(56,187),(57,188),(57,189),(57,190),(57,191),(58,192),(58,193),(58,194),(58,195),(59,196),(59,197),(59,198),(59,199),(60,200),(60,201),(60,202),(60,203),(61,204),(61,205),(61,206),(61,207),(62,208),(62,209),(62,210),(62,211),(63,212),(63,213),(63,214),(63,215),(64,216),(64,217),(64,218),(64,219),(65,307),(65,308),(65,309),(65,310),(66,303),(66,304),(66,305),(66,306),(67,315),(67,316),(67,317),(67,318),(68,315),(69,319),(69,320),(69,321),(69,322),(70,319),(71,323),(71,324),(71,325),(71,326),(72,323),(73,358),(73,359),(73,360),(73,361),(74,362),(74,363),(74,364),(74,365),(75,366),(75,367),(75,368),(75,369),(75,371),(75,372),(76,373),(76,374),(76,375),(76,376),(76,383),(77,377),(77,378),(77,379),(77,380),(77,384),(78,385),(78,386),(78,387),(78,388),(78,393),(79,389),(79,390),(79,391),(79,392),(79,394),(80,403),(80,404),(80,405),(80,406),(81,407),(81,408),(81,409),(81,410),(82,407),(83,407);
/*!40000 ALTER TABLE `graph_template_input_defs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates`
--

DROP TABLE IF EXISTS `graph_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` char(32) NOT NULL DEFAULT '',
  `name` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='Contains each graph template name.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates`
--

LOCK TABLES `graph_templates` WRITE;
/*!40000 ALTER TABLE `graph_templates` DISABLE KEYS */;
INSERT INTO `graph_templates` VALUES (34,'010b90500e1fc6a05abfd542940584d0','SNMP - Generic OID Template'),(2,'5deb0d66c81262843dce5f3861be9966','Interface - Traffic (bits/sec)'),(3,'abb5e813c9f1e8cd6fc1e393092ef8cb','ucd/net - Available Disk Space'),(4,'e334bdcf821cd27270a4cc945e80915e','ucd/net - CPU Usage'),(5,'280e38336d77acde4672879a7db823f3','Karlnet - Wireless Levels'),(6,'3109d88e6806d2ce50c025541b542499','Karlnet - Wireless Transmissions'),(7,'cf96dfb22b58e08bf101ca825377fa4b','Unix - Ping Latency'),(8,'9fe8b4da353689d376b99b2ea526cc6b','Unix - Processes'),(9,'fe5edd777a76d48fc48c11aded5211ef','Unix - Load Average'),(10,'63610139d44d52b195cc375636653ebd','Unix - Logged in Users'),(11,'5107ec0206562e77d965ce6b852ef9d4','ucd/net - Load Average'),(12,'6992ed4df4b44f3d5595386b8298f0ec','Linux - Memory Usage'),(13,'be275639d5680e94c72c0ebb4e19056d','ucd/net - Memory Usage'),(14,'f17e4a77b8496725dc924b8c35b60036','Netware - File System Cache'),(15,'46bb77f4c0c69671980e3c60d3f22fa9','Netware - CPU Utilization'),(16,'8e77a3036312fd0fda32eaea2b5f141b','Netware - File System Activity'),(17,'5892c822b1bb2d38589b6c27934b9936','Netware - Logged In Users'),(18,'9a5e6d7781cc1bd6cf24f64dd6ffb423','Cisco - CPU Usage'),(19,'0dd0438d5e6cad6776f79ecaa96fb708','Netware - Volume Information'),(20,'b18a3742ebea48c6198412b392d757fc','Netware - Directory Information'),(21,'8e7c8a511652fe4a8e65c69f3d34779d','Unix - Available Disk Space'),(22,'06621cd4a9289417cadcb8f9b5cfba80','Interface - Errors/Discards'),(23,'e0d1625a1f4776a5294583659d5cee15','Interface - Unicast Packets'),(24,'10ca5530554da7b73dc69d291bf55d38','Interface - Non-Unicast Packets'),(25,'df244b337547b434b486662c3c5c7472','Interface - Traffic (bytes/sec)'),(26,'7489e44466abee8a7d8636cb2cb14a1a','Host MIB - Available Disk Space'),(27,'c6bb62bedec4ab97f9db9fd780bd85a6','Host MIB - CPU Utilization'),(28,'e8462bbe094e4e9e814d4e681671ea82','Host MIB - Logged in Users'),(29,'62205afbd4066e5c4700338841e3901e','Host MIB - Processes'),(30,'e3780a13b0f7a3f85a44b70cd4d2fd36','Netware - Open Files'),(31,'1742b2066384637022d178cc5072905a','Interface - Traffic (bits/sec, 95th Percentile)'),(32,'13b47e10b2d5db45707d61851f69c52b','Interface - Traffic (bits/sec, Total Bandwidth)'),(33,'8ad6790c22b693680e041f21d62537ac','Interface - Traffic (bytes/sec, Total Bandwidth)');
/*!40000 ALTER TABLE `graph_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_gprint`
--

DROP TABLE IF EXISTS `graph_templates_gprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_gprint` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `gprint_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_gprint`
--

LOCK TABLES `graph_templates_gprint` WRITE;
/*!40000 ALTER TABLE `graph_templates_gprint` DISABLE KEYS */;
INSERT INTO `graph_templates_gprint` VALUES (2,'e9c43831e54eca8069317a2ce8c6f751','Normal','%8.2lf %s'),(3,'19414480d6897c8731c7dc6c5310653e','Exact Numbers','%8.0lf'),(4,'304a778405392f878a6db435afffc1e9','Load Average','%8.2lf');
/*!40000 ALTER TABLE `graph_templates_gprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_graph`
--

DROP TABLE IF EXISTS `graph_templates_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_graph` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `local_graph_template_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_image_format_id` char(2) DEFAULT '0',
  `image_format_id` tinyint(1) NOT NULL DEFAULT '0',
  `t_title` char(2) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_cache` varchar(255) NOT NULL DEFAULT '',
  `t_height` char(2) DEFAULT '0',
  `height` mediumint(8) NOT NULL DEFAULT '0',
  `t_width` char(2) DEFAULT '0',
  `width` mediumint(8) NOT NULL DEFAULT '0',
  `t_upper_limit` char(2) DEFAULT '0',
  `upper_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_lower_limit` char(2) DEFAULT '0',
  `lower_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_vertical_label` char(2) DEFAULT '0',
  `vertical_label` varchar(200) DEFAULT NULL,
  `t_slope_mode` char(2) DEFAULT '0',
  `slope_mode` char(2) DEFAULT 'on',
  `t_auto_scale` char(2) DEFAULT '0',
  `auto_scale` char(2) DEFAULT NULL,
  `t_auto_scale_opts` char(2) DEFAULT '0',
  `auto_scale_opts` tinyint(1) NOT NULL DEFAULT '0',
  `t_auto_scale_log` char(2) DEFAULT '0',
  `auto_scale_log` char(2) DEFAULT NULL,
  `t_scale_log_units` char(2) DEFAULT '0',
  `scale_log_units` char(2) DEFAULT NULL,
  `t_auto_scale_rigid` char(2) DEFAULT '0',
  `auto_scale_rigid` char(2) DEFAULT NULL,
  `t_auto_padding` char(2) DEFAULT '0',
  `auto_padding` char(2) DEFAULT NULL,
  `t_base_value` char(2) DEFAULT '0',
  `base_value` mediumint(8) NOT NULL DEFAULT '0',
  `t_grouping` char(2) DEFAULT '0',
  `grouping` char(2) NOT NULL DEFAULT '',
  `t_export` char(2) DEFAULT '0',
  `export` char(2) DEFAULT NULL,
  `t_unit_value` char(2) DEFAULT '0',
  `unit_value` varchar(20) DEFAULT NULL,
  `t_unit_exponent_value` char(2) DEFAULT '0',
  `unit_exponent_value` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `title_cache` (`title_cache`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1 COMMENT='Stores the actual graph data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_graph`
--

LOCK TABLES `graph_templates_graph` WRITE;
/*!40000 ALTER TABLE `graph_templates_graph` DISABLE KEYS */;
INSERT INTO `graph_templates_graph` VALUES (2,0,0,2,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(3,0,0,3,'',1,'on','|host_description| - Hard Drive Space','','',120,'',500,'','100','','0','','bytes','0','on','','on','',2,'','','0','','','on','','on','',1024,'0','','','on','','','',''),(4,0,0,4,'',1,'','|host_description| - CPU Usage','','',120,'',500,'','100','','0','','percent','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(5,0,0,5,'',1,'on','|host_description| - Wireless Levels','','',120,'',500,'','100','','0','','percent','0','on','','','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(6,0,0,6,'',1,'on','|host_description| - Wireless Transmissions','','',120,'',500,'','100','','0','','transmissions','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(7,0,0,7,'',1,'','|host_description| - Ping Latency','','',120,'',500,'','100','','0','','milliseconds','0','on','','on','',2,'','','0','','','','','on','',1000,'0','','','on','','','',''),(8,0,0,8,'',1,'','|host_description| - Processes','','',120,'',500,'','100','','0','','processes','0','on','','on','',2,'','','0','','','','','on','',1000,'0','','','on','','','',''),(9,0,0,9,'',1,'','|host_description| - Load Average','','',120,'',500,'','100','','0','','processes in the run queue','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','','0'),(10,0,0,10,'',1,'','|host_description| - Logged in Users','','',120,'',500,'','100','','0','','users','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(11,0,0,11,'',1,'','|host_description| - Load Average','','',120,'',500,'','100','','0','','processes in the run queue','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','','0'),(12,0,0,12,'',1,'','|host_description| - Memory Usage','','',120,'',500,'','100','','0','','kilobytes','','on','','on','',2,'','','','','','on','','on','',1000,'0','','','on','','','',''),(13,0,0,13,'',1,'','|host_description| - Memory Usage','','',120,'',500,'','100','','0','','bytes','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(14,0,0,14,'',1,'','|host_description| - File System Cache','','',120,'',500,'','100','','0','','cache checks/hits','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(15,0,0,15,'',1,'','|host_description| - CPU Utilization','','',120,'',500,'','100','','0','','percent','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(16,0,0,16,'',1,'','|host_description| - File System Activity','','',120,'',500,'','100','','0','','reads/writes per sec','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(17,0,0,17,'',1,'','|host_description| - Logged In Users','','',120,'',500,'','100','','0','','users','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(18,0,0,18,'',1,'','|host_description| - CPU Usage','','',120,'',500,'','100','','0','','percent','','on','','on','',2,'','','','','','on','','on','',1000,'0','','','on','','','',''),(19,0,0,19,'',1,'on','|host_description| - Volume Information','','',120,'',500,'','100','','0','','bytes','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(20,0,0,20,'',1,'','|host_description| - Directory Information','','',120,'',500,'','100','','0','','directory entries','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(21,0,0,21,'',1,'on','|host_description| - Available Disk Space','','',120,'',500,'','100','','0','','bytes','0','on','','on','',2,'','','0','','','on','','on','',1024,'0','','','on','','','',''),(22,0,0,22,'',1,'on','|host_description| - Errors/Discards','','',120,'',500,'','100','','0','','errors/sec','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(23,0,0,23,'',1,'on','|host_description| - Unicast Packets','','',120,'',500,'','100','','0','','packets/sec','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(24,0,0,24,'',1,'on','|host_description| - Non-Unicast Packets','','',120,'',500,'','100','','0','','packets/sec','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(25,0,0,25,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bytes per second','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(34,0,0,26,'',1,'on','|host_description| - Available Disk Space','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1024,'0','','','on','','','',''),(35,0,0,27,'',1,'on','|host_description| - CPU Utilization','','',120,'',500,'','100','','0','','percent','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(36,0,0,28,'',1,'','|host_description| - Logged in Users','','',120,'',500,'','100','','0','','users','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(37,0,0,29,'',1,'','|host_description| - Processes','','',120,'',500,'','100','','0','','processes','0','on','','on','',2,'','','0','','','','','on','',1000,'0','','','on','','','',''),(38,12,1,12,'0',1,'0','|host_description| - Memory Usage','Localhost - Memory Usage','0',120,'0',500,'0','100','0','0','0','kilobytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(39,9,2,9,'0',1,'0','|host_description| - Load Average','Localhost - Load Average','0',120,'0',500,'0','100','0','0','0','processes in the run queue','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0','0'),(40,10,3,10,'0',1,'0','|host_description| - Logged in Users','Localhost - Logged in Users','0',120,'0',500,'0','100','0','0','0','users','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(41,8,4,8,'0',1,'0','|host_description| - Processes','Localhost - Processes','0',120,'0',500,'0','100','0','0','0','processes','0','on','0','on','0',2,'0','','0','','0','','0','on','0',1000,'0','','0','on','0','','0',''),(42,0,0,30,'',1,'','|host_description| - Open Files','','',120,'',500,'','100','','0','','files','0','on','','on','',2,'','','0','','','','','on','',1000,'0','','','on','','','',''),(43,0,0,31,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(44,0,0,32,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(45,0,0,33,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bytes per second','0','on','','on','',2,'','','0','','','on','','on','',1000,'0','','','on','','','',''),(47,0,0,34,'',1,'on','|host_description| -','','',120,'',500,'','100','','0','on','','0','on','','on','',2,'','','0','','','','','on','',1000,'0','','','on','','','',''),(101,2,58,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_5','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(102,2,59,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_4','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(108,2,65,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_4','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(54,18,11,18,'0',1,'0','|host_description| - CPU Usage','Localhost - CPU Usage','0',120,'0',500,'0','100','0','0','0','percent','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(107,2,64,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_3','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(106,2,63,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_2','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(105,2,62,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_6','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(104,2,61,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_9','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(103,2,60,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_5','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(100,2,57,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_1','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(97,2,54,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_1','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(98,2,55,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_6','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(99,2,56,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ppp_1','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(96,2,53,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_0','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(95,2,52,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ppp_0','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(94,2,51,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_3','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(93,2,50,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_2','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(92,2,49,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - tunnel_0','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(89,34,46,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - Virtual Memory','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(90,34,47,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - Physical Memory','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(91,2,48,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - loopback_0','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(88,34,45,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - S: Label:Virtua','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(87,34,44,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - J: Label:Web  S','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(86,34,43,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - G: Label:Logs  ','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(85,34,42,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - D: Label:VBOXAD','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(84,34,41,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - C: Label:  Seri','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(83,34,40,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test2 - Used Space - A:','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(109,2,66,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_7','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(110,2,67,2,'0',1,'0','|host_description| - Traffic - |query_ifName|','test2 - Traffic - ethernet_8','0',120,'0',500,'0','100','0','0','0','bits per second','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1000,'0','','0','on','0','','0',''),(111,34,68,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - A:','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(112,34,69,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - C: Label:  Seri','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0',''),(113,34,70,26,'0',1,'0','|host_description| - Used Space - |query_hrStorageDescr|','test3 - Used Space - D: Label:VBOXAD','0',120,'0',500,'0','100','0','0','0','bytes','0','on','0','on','0',2,'0','','0','','0','on','0','on','0',1024,'0','','0','on','0','','0','');
/*!40000 ALTER TABLE `graph_templates_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_item`
--

DROP TABLE IF EXISTS `graph_templates_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_item` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `local_graph_template_item_id` int(12) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `task_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `alpha` char(2) DEFAULT 'FF',
  `graph_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `cdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consolidation_function_id` tinyint(2) NOT NULL DEFAULT '0',
  `text_format` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `hard_return` char(2) DEFAULT NULL,
  `gprint_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `task_item_id` (`task_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=911 DEFAULT CHARSET=latin1 COMMENT='Stores the actual graph item data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_item`
--

LOCK TABLES `graph_templates_item` WRITE;
/*!40000 ALTER TABLE `graph_templates_item` DISABLE KEYS */;
INSERT INTO `graph_templates_item` VALUES (9,'0470b2427dbfadb6b8346e10a71268fa',0,0,2,54,22,'FF',7,2,1,'Inbound','','',2,1),(10,'84a5fe0db518550266309823f994ce9c',0,0,2,54,0,'FF',9,2,4,'Current:','','',2,2),(11,'2f222f28084085cd06a1f46e4449c793',0,0,2,54,0,'FF',9,2,1,'Average:','','',2,3),(12,'55acbcc33f46ee6d754e8e81d1b54808',0,0,2,54,0,'FF',9,2,3,'Maximum:','','on',2,4),(13,'fdaf2321fc890e355711c2bffc07d036',0,0,2,55,20,'FF',4,2,1,'Outbound','','',2,5),(14,'768318f42819217ed81196d2179d3e1b',0,0,2,55,0,'FF',9,2,4,'Current:','','',2,6),(15,'cb3aa6256dcb3acd50d4517b77a1a5c3',0,0,2,55,0,'FF',9,2,1,'Average:','','',2,7),(16,'671e989be7cbf12c623b4e79d91c7bed',0,0,2,55,0,'FF',9,2,3,'Maximum:','','on',2,8),(17,'b561ed15b3ba66d277e6d7c1640b86f7',0,0,3,4,48,'FF',7,14,1,'Used','','',2,1),(18,'99ef051057fa6adfa6834a7632e9d8a2',0,0,3,4,0,'FF',9,14,4,'Current:','','',2,2),(19,'3986695132d3f4716872df4c6fbccb65',0,0,3,4,0,'FF',9,14,1,'Average:','','',2,3),(20,'0444300017b368e6257f010dca8bbd0d',0,0,3,4,0,'FF',9,14,3,'Maximum:','','on',2,4),(21,'4d6a0b9063124ca60e2d1702b3e15e41',0,0,3,3,20,'FF',8,14,1,'Available','','',2,5),(22,'181b08325e4d00cd50b8cdc8f8ae8e77',0,0,3,3,0,'FF',9,14,4,'Current:','','',2,6),(23,'bba0a9ff1357c990df50429d64314340',0,0,3,3,0,'FF',9,14,1,'Average:','','',2,7),(24,'d4a67883d53bc1df8aead21c97c0bc52',0,0,3,3,0,'FF',9,14,3,'Maximum:','','on',2,8),(25,'253c9ec2d66905245149c1c2dc8e536e',0,0,3,0,1,'FF',5,15,1,'Total','','',2,9),(26,'ea9ea883383f4eb462fec6aa309ba7b5',0,0,3,0,0,'FF',9,15,4,'Current:','','',2,10),(27,'83b746bcaba029eeca170a9f77ec4864',0,0,3,0,0,'FF',9,15,1,'Average:','','',2,11),(28,'82e01dd92fd37887c0696192efe7af65',0,0,3,0,0,'FF',9,15,3,'Maximum:','','on',2,12),(29,'ff0a6125acbb029b814ed1f271ad2d38',0,0,4,5,9,'FF',7,0,1,'System','','',2,1),(30,'f0776f7d6638bba76c2c27f75a424f0f',0,0,4,5,0,'FF',9,0,4,'Current:','','',2,2),(31,'39f4e021aa3fed9207b5f45a82122b21',0,0,4,5,0,'FF',9,0,1,'Average:','','',2,3),(32,'800f0b067c06f4ec9c2316711ea83c1e',0,0,4,5,0,'FF',9,0,3,'Maximum:','','on',2,4),(33,'9419dd5dbf549ba4c5dc1462da6ee321',0,0,4,6,21,'FF',8,0,1,'User','','',2,5),(34,'e461dd263ae47657ea2bf3fd82bec096',0,0,4,6,0,'FF',9,0,4,'Current:','','',2,6),(35,'f2d1fbb8078a424ffc8a6c9d44d8caa0',0,0,4,6,0,'FF',9,0,1,'Average:','','',2,7),(36,'e70a5de639df5ba1705b5883da7fccfc',0,0,4,6,0,'FF',9,0,3,'Maximum:','','on',2,8),(37,'85fefb25ce9fd0317da2706a5463fc42',0,0,4,7,12,'FF',8,0,1,'Nice','','',2,9),(38,'a1cb26878776999db16f1de7577b3c2a',0,0,4,7,0,'FF',9,0,4,'Current:','','',2,10),(39,'7d0f9bf64a0898a0095f099674754273',0,0,4,7,0,'FF',9,0,1,'Average:','','',2,11),(40,'b2879248a522d9679333e1f29e9a87c3',0,0,4,7,0,'FF',9,0,3,'Maximum:','','on',2,12),(41,'d800aa59eee45383b3d6d35a11cdc864',0,0,4,0,1,'FF',4,12,1,'Total','','',2,13),(42,'cab4ae79a546826288e273ca1411c867',0,0,4,0,0,'FF',9,12,4,'Current:','','',2,14),(43,'d44306ae85622fec971507460be63f5c',0,0,4,0,0,'FF',9,12,1,'Average:','','',2,15),(44,'aa5c2118035bb83be497d4e099afcc0d',0,0,4,0,0,'FF',9,12,3,'Maximum:','','on',2,16),(45,'4aa34ea1b7542b770ace48e8bc395a22',0,0,5,9,48,'FF',7,0,1,'Signal Level','','',2,1),(46,'22f118a9d81d0a9c8d922efbbc8a9cc1',0,0,5,9,0,'FF',9,0,4,'Current:','','',2,2),(47,'229de0c4b490de9d20d8f8d41059f933',0,0,5,9,0,'FF',9,0,1,'Average:','','',2,3),(48,'cd17feb30c02fd8f21e4d4dcde04e024',0,0,5,9,0,'FF',9,0,3,'Maximum:','','on',2,4),(49,'8723600cfd0f8a7b3f7dc1361981aabd',0,0,5,8,25,'FF',5,0,1,'Noise Level','','',2,5),(50,'cb06be2601b5abfb7a42fc07586de1c2',0,0,5,8,0,'FF',9,0,4,'Current:','','',2,6),(51,'55a2ee0fd511e5210ed85759171de58f',0,0,5,8,0,'FF',9,0,1,'Average:','','',2,7),(52,'704459564c84e42462e106eef20db169',0,0,5,8,0,'FF',9,0,3,'Maximum:','','on',2,8),(53,'aaebb19ec522497eaaf8c87a631b7919',0,0,6,10,48,'FF',7,0,1,'Transmissions','','',2,1),(54,'8b54843ac9d41bce2fcedd023560ed64',0,0,6,10,0,'FF',9,0,4,'Current:','','',2,2),(55,'05927dc83e07c7d9cffef387d68f35c9',0,0,6,10,0,'FF',9,0,1,'Average:','','',2,3),(56,'d11e62225a7e7a0cdce89242002ca547',0,0,6,10,0,'FF',9,0,3,'Maximum:','','on',2,4),(57,'6397b92032486c476b0e13a35b727041',0,0,6,11,25,'FF',5,0,1,'Re-Transmissions','','',2,5),(58,'cdfa5f8f82f4c479ff7f6f54160703f6',0,0,6,11,0,'FF',9,0,4,'Current:','','',2,6),(59,'ce2a309fb9ef64f83f471895069a6f07',0,0,6,11,0,'FF',9,0,1,'Average:','','',2,7),(60,'9cbfbf57ebde435b27887f27c7d3caea',0,0,6,11,0,'FF',9,0,3,'Maximum:','','on',2,8),(61,'80e0aa956f50c261e5143273da58b8a3',0,0,7,21,25,'FF',7,0,1,'','','',2,1),(62,'48fdcae893a7b7496e1a61efc3453599',0,0,7,21,0,'FF',9,0,4,'Current:','','',2,2),(63,'22f43e5fa20f2716666ba9ed9a7d1727',0,0,7,21,0,'FF',9,0,1,'Average:','','',2,3),(64,'3e86d497bcded7af7ab8408e4908e0d8',0,0,7,21,0,'FF',9,0,3,'Maximum:','','on',2,4),(65,'ba00ecd28b9774348322ff70a96f2826',0,0,8,19,48,'FF',7,0,1,'Running Processes','','',2,1),(66,'8d76de808efd73c51e9a9cbd70579512',0,0,8,19,0,'FF',9,0,4,'Current:','','',3,2),(67,'304244ca63d5b09e62a94c8ec6fbda8d',0,0,8,19,0,'FF',9,0,1,'Average:','','',3,3),(68,'da1ba71a93d2ed4a2a00d54592b14157',0,0,8,19,0,'FF',9,0,3,'Maximum:','','on',3,4),(69,'93ad2f2803b5edace85d86896620b9da',0,0,9,12,15,'FF',7,0,1,'1 Minute Average','','',2,1),(70,'e28736bf63d3a3bda03ea9f1e6ecb0f1',0,0,9,12,0,'FF',9,0,4,'Current:','','on',4,2),(71,'bbdfa13adc00398eed132b1ccb4337d2',0,0,9,13,8,'FF',8,0,1,'5 Minute Average','','',2,3),(72,'2c14062c7d67712f16adde06132675d6',0,0,9,13,0,'FF',9,0,4,'Current:','','on',4,4),(73,'9cf6ed48a6a54b9644a1de8c9929bd4e',0,0,9,14,9,'FF',8,0,1,'15 Minute Average','','',2,5),(74,'c9824064305b797f38feaeed2352e0e5',0,0,9,14,0,'FF',9,0,4,'Current:','','on',4,6),(75,'fa1bc4eff128c4da70f5247d55b8a444',0,0,9,0,1,'FF',4,12,1,'','','on',2,7),(76,'5c94ac24bc0d6d2712cc028fa7d4c7d2',0,0,10,20,67,'FF',7,0,1,'Users','','',2,1),(77,'8bc7f905526f62df7d5c2d8c27c143c1',0,0,10,20,0,'FF',9,0,4,'Current:','','',3,2),(78,'cd074cd2b920aab70d480c020276d45b',0,0,10,20,0,'FF',9,0,1,'Average:','','',3,3),(79,'415630f25f5384ba0c82adbdb05fe98b',0,0,10,20,0,'FF',9,0,3,'Maximum:','','on',3,4),(80,'d77d2050be357ab067666a9485426e6b',0,0,11,33,15,'FF',7,0,1,'1 Minute Average','','',2,1),(81,'13d22f5a0eac6d97bf6c97d7966f0a00',0,0,11,33,0,'FF',9,0,4,'Current:','','on',4,2),(82,'8580230d31d2851ec667c296a665cbf9',0,0,11,34,8,'FF',8,0,1,'5 Minute Average','','',2,3),(83,'b5b7d9b64e7640aa51dbf58c69b86d15',0,0,11,34,0,'FF',9,0,4,'Current:','','on',4,4),(84,'2ec10edf4bfaa866b7efd544d4c3f446',0,0,11,35,9,'FF',8,0,1,'15 Minute Average','','',2,5),(85,'b65666f0506c0c70966f493c19607b93',0,0,11,35,0,'FF',9,0,4,'Current:','','on',4,6),(86,'6c73575c74506cfc75b89c4276ef3455',0,0,11,0,1,'FF',4,12,1,'Total','','on',2,7),(95,'5fa7c2317f19440b757ab2ea1cae6abc',0,0,12,16,41,'FF',7,14,1,'Free','','',2,9),(96,'b1d18060bfd3f68e812c508ff4ac94ed',0,0,12,16,0,'FF',9,14,4,'Current:','','',2,10),(97,'780b6f0850aaf9431d1c246c55143061',0,0,12,16,0,'FF',9,14,1,'Average:','','',2,11),(98,'2d54a7e7bb45e6c52d97a09e24b7fba7',0,0,12,16,0,'FF',9,14,3,'Maximum:','','on',2,12),(99,'40206367a3c192b836539f49801a0b15',0,0,12,18,30,'FF',8,14,1,'Swap','','',2,13),(100,'7ee72e2bb3722d4f8a7f9c564e0dd0d0',0,0,12,18,0,'FF',9,14,4,'Current:','','',2,14),(101,'c8af33b949e8f47133ee25e63c91d4d0',0,0,12,18,0,'FF',9,14,1,'Average:','','',2,15),(102,'568128a16723d1195ce6a234d353ce00',0,0,12,18,0,'FF',9,14,3,'Maximum:','','on',2,16),(103,'7517a40d478e28ed88ba2b2a65e16b57',0,0,13,37,52,'FF',7,14,1,'Memory Free','','',2,1),(104,'df0c8b353d26c334cb909dc6243957c5',0,0,13,37,0,'FF',9,14,4,'Current:','','',2,2),(105,'c41a4cf6fefaf756a24f0a9510580724',0,0,13,37,0,'FF',9,14,1,'Average:','','',2,3),(106,'9efa8f01c6ed11364a21710ff170f422',0,0,13,37,0,'FF',9,14,3,'Maximum:','','on',2,4),(107,'95d6e4e5110b456f34324f7941d08318',0,0,13,36,35,'FF',8,14,1,'Memory Buffers','','',2,5),(108,'0c631bfc0785a9cca68489ea87a6c3da',0,0,13,36,0,'FF',9,14,4,'Current:','','',2,6),(109,'3468579d3b671dfb788696df7dcc1ec9',0,0,13,36,0,'FF',9,14,1,'Average:','','',2,7),(110,'c3ddfdaa65449f99b7f1a735307f9abe',0,0,13,36,0,'FF',9,14,3,'Maximum:','','on',2,8),(111,'4c64d5c1ce8b5d8b94129c23b46a5fd6',0,0,14,28,41,'FF',7,0,1,'Cache Hits','','',2,1),(112,'5c1845c9bd1af684a3c0ad843df69e3e',0,0,14,28,0,'FF',9,0,4,'Current:','','',3,2),(113,'e5169563f3f361701902a8da3ac0c77f',0,0,14,28,0,'FF',9,0,1,'Average:','','',3,3),(114,'35e87262efa521edbb1fd27f09c036f5',0,0,14,28,0,'FF',9,0,3,'Maximum:','','on',3,4),(115,'53069d7dba4c31b338f609bea4cd16f3',0,0,14,27,66,'FF',8,0,1,'Cache Checks','','',2,5),(116,'d9c102579839c5575806334d342b50de',0,0,14,27,0,'FF',9,0,4,'Current:','','',3,6),(117,'dc1897c3249dbabe269af49cee92f8c0',0,0,14,27,0,'FF',9,0,1,'Average:','','',3,7),(118,'ccd21fe0b5a8c24057f1eff4a6b66391',0,0,14,27,0,'FF',9,0,3,'Maximum:','','on',3,8),(119,'ab09d41c358f6b8a9d0cad4eccc25529',0,0,15,76,9,'FF',7,0,1,'CPU Utilization','','',2,1),(120,'5d5b8d8fbe751dc9c86ee86f85d7433b',0,0,15,76,0,'FF',9,0,4,'Current:','','',3,2),(121,'4822a98464c6da2afff10c6d12df1831',0,0,15,76,0,'FF',9,0,1,'Average:','','',3,3),(122,'fc6fbf2a964bea0b3c88ed0f18616aa7',0,0,15,76,0,'FF',9,0,3,'Maximum:','','on',3,4),(123,'e4094625d5443b4c87f9a87ba616a469',0,0,16,25,67,'FF',7,0,1,'File System Reads','','',2,1),(124,'ae68425cd10e8a6623076b2e6859a6aa',0,0,16,25,0,'FF',9,0,4,'Current:','','',3,2),(125,'40b8e14c6568b3f6be6a5d89d6a9f061',0,0,16,25,0,'FF',9,0,1,'Average:','','',3,3),(126,'4afbdc3851c03e206672930746b1a5e2',0,0,16,25,0,'FF',9,0,3,'Maximum:','','on',3,4),(127,'ea47d2b5516e334bc5f6ce1698a3ae76',0,0,16,26,93,'FF',8,0,1,'File System Writes','','',2,5),(128,'899c48a2f79ea3ad4629aff130d0f371',0,0,16,26,0,'FF',9,0,4,'Current:','','',3,6),(129,'ab474d7da77e9ec1f6a1d45c602580cd',0,0,16,26,0,'FF',9,0,1,'Average:','','',3,7),(130,'e143f8b4c6d4eeb6a28b052e6b8ce5a9',0,0,16,26,0,'FF',9,0,3,'Maximum:','','on',3,8),(131,'facfeeb6fc2255ba2985b2d2f695d78a',0,0,17,23,30,'FF',7,0,1,'Current Logins','','',2,1),(132,'2470e43034a5560260d79084432ed14f',0,0,17,23,0,'FF',9,0,4,'Current:','','',3,2),(133,'e9e645f07bde92b52d93a7a1f65efb30',0,0,17,23,0,'FF',9,0,1,'Average:','','',3,3),(134,'bdfe0d66103211cfdaa267a44a98b092',0,0,17,23,0,'FF',9,0,3,'Maximum:','','on',3,4),(139,'098b10c13a5701ddb7d4d1d2e2b0fdb7',0,0,18,30,9,'FF',7,0,1,'CPU Usage','','',2,1),(140,'1dbda412a9926b0ee5c025aa08f3b230',0,0,18,30,0,'FF',9,0,4,'Current:','','',3,2),(141,'725c45917146807b6a4257fc351f2bae',0,0,18,30,0,'FF',9,0,1,'Average:','','',3,3),(142,'4e336fdfeb84ce65f81ded0e0159a5e0',0,0,18,30,0,'FF',9,0,3,'Maximum:','','on',3,4),(143,'7dab7a3ceae2addd1cebddee6c483e7c',0,0,19,39,25,'FF',7,14,1,'Free Space','','',2,5),(144,'aea239f3ceea8c63d02e453e536190b8',0,0,19,39,0,'FF',9,14,4,'Current:','','',2,6),(145,'a0efae92968a6d4ae099b676e0f1430e',0,0,19,39,0,'FF',9,14,1,'Average:','','',2,7),(146,'4fd5ba88be16e3d513c9231b78ccf0e1',0,0,19,39,0,'FF',9,14,3,'Maximum:','','on',2,8),(147,'d2e98e51189e1d9be8888c3d5c5a4029',0,0,19,38,69,'FF',7,14,1,'Total Space','','',2,1),(148,'12829294ee3958f4a31a58a61228e027',0,0,19,38,0,'FF',9,14,4,'Current:','','',2,2),(149,'4b7e8755b0f2253723c1e9fb21fd37b1',0,0,19,38,0,'FF',9,14,1,'Average:','','',2,3),(150,'cbb19ffd7a0ead2bf61512e86d51ee8e',0,0,19,38,0,'FF',9,14,3,'Maximum:','','on',2,4),(151,'37b4cbed68f9b77e49149343069843b4',0,0,19,40,95,'FF',5,14,1,'Freeable Space','','',2,9),(152,'5eb7532200f2b5cc93e13743a7db027c',0,0,19,40,0,'FF',9,14,4,'Current:','','',2,10),(153,'b0f9f602fbeaaff090ea3f930b46c1c7',0,0,19,40,0,'FF',9,14,1,'Average:','','',2,11),(154,'06477f7ea46c63272cee7253e7cd8760',0,0,19,40,0,'FF',9,14,3,'Maximum:','','on',2,12),(171,'a751838f87068e073b95be9555c57bde',0,0,21,56,0,'FF',9,14,3,'Maximum:','','on',2,4),(170,'3b13eb2e542fe006c9bf86947a6854fa',0,0,21,56,0,'FF',9,14,1,'Average:','','',2,3),(169,'8ef3e7fb7ce962183f489725939ea40f',0,0,21,56,0,'FF',9,14,4,'Current:','','',2,2),(167,'6ca2161c37b0118786dbdb46ad767e5d',0,0,21,56,48,'FF',7,14,1,'Used','','',2,1),(159,'6877a2a5362a9390565758b08b9b37f7',0,0,20,43,77,'FF',7,0,1,'Used Directory Entries','','',2,1),(160,'a978834f3d02d833d3d2def243503bf2',0,0,20,43,0,'FF',9,0,4,'Current:','','',3,2),(161,'7422d87bc82de20a4333bd2f6460b2d4',0,0,20,43,0,'FF',9,0,1,'Average:','','',3,3),(162,'4d52762859a3fec297ebda0e7fd760d9',0,0,20,43,0,'FF',9,0,3,'Maximum:','','on',3,4),(163,'999d4ed1128ff03edf8ea47e56d361dd',0,0,20,42,1,'FF',5,0,1,'Available Directory Entries','','',2,5),(164,'3dfcd7f8c7a760ac89d34398af79b979',0,0,20,42,0,'FF',9,0,4,'Current:','','',3,6),(165,'217be75e28505c8f8148dec6b71b9b63',0,0,20,42,0,'FF',9,0,1,'Average:','','',3,7),(166,'69b89e1c5d6fc6182c93285b967f970a',0,0,20,42,0,'FF',9,0,3,'Maximum:','','on',3,8),(172,'5d6dff9c14c71dc1ebf83e87f1c25695',0,0,21,44,20,'FF',8,14,1,'Available','','',2,5),(173,'b27cb9a158187d29d17abddc6fdf0f15',0,0,21,44,0,'FF',9,14,4,'Current:','','',2,6),(174,'6c0555013bb9b964e51d22f108dae9b0',0,0,21,44,0,'FF',9,14,1,'Average:','','',2,7),(175,'42ce58ec17ef5199145fbf9c6ee39869',0,0,21,44,0,'FF',9,14,3,'Maximum:','','on',2,8),(176,'9bdff98f2394f666deea028cbca685f3',0,0,21,0,1,'FF',5,15,1,'Total','','',2,9),(177,'fb831fefcf602bc31d9d24e8e456c2e6',0,0,21,0,0,'FF',9,15,4,'Current:','','',2,10),(178,'5a958d56785a606c08200ef8dbf8deef',0,0,21,0,0,'FF',9,15,1,'Average:','','',2,11),(179,'5ce67a658cec37f526dc84ac9e08d6e7',0,0,21,0,0,'FF',9,15,3,'Maximum:','','on',2,12),(180,'7e04a041721df1f8828381a9ea2f2154',0,0,22,47,31,'FF',4,0,1,'Discards In','','',2,1),(181,'afc8bca6b1b3030a6d71818272336c6c',0,0,22,47,0,'FF',9,0,4,'Current:','','',2,2),(182,'6ac169785f5aeaf1cc5cdfd38dfcfb6c',0,0,22,47,0,'FF',9,0,1,'Average:','','',2,3),(183,'178c0a0ce001d36a663ff6f213c07505',0,0,22,47,0,'FF',9,0,3,'Maximum:','','on',2,4),(184,'8e3268c0abde7550616bff719f10ee2f',0,0,22,46,48,'FF',4,0,1,'Errors In','','',2,5),(185,'18891392b149de63b62c4258a68d75f8',0,0,22,46,0,'FF',9,0,4,'Current:','','',2,6),(186,'dfc9d23de0182c9967ae3dabdfa55a16',0,0,22,46,0,'FF',9,0,1,'Average:','','',2,7),(187,'c47ba64e2e5ea8bf84aceec644513176',0,0,22,46,0,'FF',9,0,3,'Maximum:','','on',2,8),(188,'9d052e7d632c479737fbfaced0821f79',0,0,23,49,71,'FF',4,0,1,'Unicast Packets Out','','',2,5),(189,'9b9fa6268571b6a04fa4411d8e08c730',0,0,23,49,0,'FF',9,0,4,'Current:','','',2,6),(190,'8e8f2fbeb624029cbda1d2a6ddd991ba',0,0,23,49,0,'FF',9,0,1,'Average:','','',2,7),(191,'c76495beb1ed01f0799838eb8a893124',0,0,23,49,0,'FF',9,0,3,'Maximum:','','on',2,8),(192,'d4e5f253f01c3ea77182c5a46418fc44',0,0,23,48,25,'FF',7,0,1,'Unicast Packets In','','',2,1),(193,'526a96add143da021c5f00d8764a6c12',0,0,23,48,0,'FF',9,0,4,'Current:','','',2,2),(194,'81eeb46f451212f00fd7caee42a81c0b',0,0,23,48,0,'FF',9,0,1,'Average:','','',2,3),(195,'089e4d1c3faeb00fd5dcc9622b06d656',0,0,23,48,0,'FF',9,0,3,'Maximum:','','on',2,4),(196,'fe66cb973966d22250de073405664200',0,0,24,53,25,'FF',7,0,1,'Non-Unicast Packets In','','',2,1),(197,'1ba3fc3466ad32fdd2669cac6cad6faa',0,0,24,53,0,'FF',9,0,4,'Current:','','',2,2),(198,'f810154d3a934c723c21659e66199cdf',0,0,24,53,0,'FF',9,0,1,'Average:','','',2,3),(199,'98a161df359b01304346657ff1a9d787',0,0,24,53,0,'FF',9,0,3,'Maximum:','','on',2,4),(200,'d5e55eaf617ad1f0516f6343b3f07c5e',0,0,24,52,71,'FF',4,0,1,'Non-Unicast Packets Out','','',2,5),(201,'9fde6b8c84089b9f9044e681162e7567',0,0,24,52,0,'FF',9,0,4,'Current:','','',2,6),(202,'9a3510727c3d9fa7e2e7a015783a99b3',0,0,24,52,0,'FF',9,0,1,'Average:','','',2,7),(203,'451afd23f2cb59ab9b975fd6e2735815',0,0,24,52,0,'FF',9,0,3,'Maximum:','','on',2,8),(204,'617d10dff9bbc3edd9d733d9c254da76',0,0,22,50,18,'FF',4,0,1,'Discards Out','','',2,9),(205,'9269a66502c34d00ac3c8b1fcc329ac6',0,0,22,50,0,'FF',9,0,4,'Current:','','',2,10),(206,'d45deed7e1ad8350f3b46b537ae0a933',0,0,22,50,0,'FF',9,0,1,'Average:','','',2,11),(207,'2f64cf47dc156e8c800ae03c3b893e3c',0,0,22,50,0,'FF',9,0,3,'Maximum:','','on',2,12),(208,'57434bef8cb21283c1a73f055b0ada19',0,0,22,51,89,'FF',4,0,1,'Errors Out','','',2,13),(209,'660a1b9365ccbba356fd142faaec9f04',0,0,22,51,0,'FF',9,0,4,'Current:','','',2,14),(210,'28c5297bdaedcca29acf245ef4bbed9e',0,0,22,51,0,'FF',9,0,1,'Average:','','',2,15),(211,'99098604fd0c78fd7dabac8f40f1fb29',0,0,22,51,0,'FF',9,0,3,'Maximum:','','on',2,16),(212,'de3eefd6d6c58afabdabcaf6c0168378',0,0,25,54,22,'FF',7,0,1,'Inbound','','',2,1),(213,'1a80fa108f5c46eecb03090c65bc9a12',0,0,25,54,0,'FF',9,0,4,'Current:','','',2,2),(214,'fe458892e7faa9d232e343d911e845f3',0,0,25,54,0,'FF',9,0,1,'Average:','','',2,3),(215,'175c0a68689bebc38aad2fbc271047b3',0,0,25,54,0,'FF',9,0,3,'Maximum:','','on',2,4),(216,'1bf2283106510491ddf3b9c1376c0b31',0,0,25,55,20,'FF',4,0,1,'Outbound','','',2,5),(217,'c5202f1690ffe45600c0d31a4a804f67',0,0,25,55,0,'FF',9,0,4,'Current:','','',2,6),(218,'eb9794e3fdafc2b74f0819269569ed40',0,0,25,55,0,'FF',9,0,1,'Average:','','',2,7),(219,'6bcedd61e3ccf7518ca431940c93c439',0,0,25,55,0,'FF',9,0,3,'Maximum:','','on',2,8),(303,'b7b381d47972f836785d338a3bef6661',0,0,26,78,0,'FF',9,0,3,'Maximum:','','on',2,8),(304,'36fa8063df3b07cece878d54443db727',0,0,26,78,0,'FF',9,0,1,'Average:','','',2,7),(305,'2c35b5cae64c5f146a55fcb416dd14b5',0,0,26,78,0,'FF',9,0,4,'Current:','','',2,6),(306,'16d6a9a7f608762ad65b0841e5ef4e9c',0,0,26,78,48,'FF',7,0,1,'Used','','',2,5),(307,'d80e4a4901ab86ee39c9cc613e13532f',0,0,26,92,20,'FF',7,0,1,'Total','','',2,1),(308,'567c2214ee4753aa712c3d101ea49a5d',0,0,26,92,0,'FF',9,0,4,'Current:','','',2,2),(309,'ba0b6a9e316ef9be66abba68b80f7587',0,0,26,92,0,'FF',9,0,1,'Average:','','',2,3),(310,'4b8e4a6bf2757f04c3e3a088338a2f7a',0,0,26,92,0,'FF',9,0,3,'Maximum:','','on',2,4),(317,'8536e034ab5268a61473f1ff2f6bd88f',0,0,27,79,0,'FF',9,0,1,'Average:','','',3,3),(316,'d478a76de1df9edf896c9ce51506c483',0,0,27,79,0,'FF',9,0,4,'Current:','','',3,2),(315,'42537599b5fb8ea852240b58a58633de',0,0,27,79,9,'FF',7,0,1,'CPU Utilization','','',2,1),(318,'87e10f9942b625aa323a0f39b60058e7',0,0,27,79,0,'FF',9,0,3,'Maximum:','','on',3,4),(319,'38f6891b0db92aa8950b4ce7ae902741',0,0,28,81,67,'FF',7,0,1,'Users','','',2,1),(320,'af13152956a20aa894ef4a4067b88f63',0,0,28,81,0,'FF',9,0,4,'Current:','','',3,2),(321,'1b2388bbede4459930c57dc93645284e',0,0,28,81,0,'FF',9,0,1,'Average:','','',3,3),(322,'6407dc226db1d03be9730f4d6f3eeccf',0,0,28,81,0,'FF',9,0,3,'Maximum:','','on',3,4),(323,'fca6a530c8f37476b9004a90b42ee988',0,0,29,80,48,'FF',7,0,1,'Running Processes','','',2,1),(324,'5acebbde3dc65e02f8fda03955852fbe',0,0,29,80,0,'FF',9,0,4,'Current:','','',3,2),(325,'311079ffffac75efaab2837df8123122',0,0,29,80,0,'FF',9,0,1,'Average:','','',3,3),(326,'724d27007ebf31016cfa5530fee1b867',0,0,29,80,0,'FF',9,0,3,'Maximum:','','on',3,4),(373,'1995d8c23e7d8e1efa2b2c55daf3c5a7',0,0,32,54,22,'FF',7,2,1,'Inbound','','',2,1),(335,'',95,1,12,0,41,'FF',7,0,1,'Free','','',2,9),(336,'',96,1,12,0,0,'FF',9,0,4,'Current:','','',2,10),(337,'',97,1,12,0,0,'FF',9,0,1,'Average:','','',2,11),(338,'',98,1,12,0,0,'FF',9,0,3,'Maximum:','','on',2,12),(339,'',99,1,12,0,30,'FF',8,0,1,'Swap','','',2,13),(340,'',100,1,12,0,0,'FF',9,0,4,'Current:','','',2,14),(341,'',101,1,12,0,0,'FF',9,0,1,'Average:','','',2,15),(342,'',102,1,12,0,0,'FF',9,0,3,'Maximum:','','on',2,16),(343,'',69,2,9,86,15,'FF',7,0,1,'1 Minute Average','','',2,1),(344,'',70,2,9,86,0,'FF',9,0,4,'Current:','','on',4,2),(345,'',71,2,9,87,8,'FF',8,0,1,'5 Minute Average','','',2,3),(346,'',72,2,9,87,0,'FF',9,0,4,'Current:','','on',4,4),(347,'',73,2,9,88,9,'FF',8,0,1,'15 Minute Average','','',2,5),(348,'',74,2,9,88,0,'FF',9,0,4,'Current:','','on',4,6),(349,'',75,2,9,0,1,'FF',4,12,1,'','','',2,7),(350,'',76,3,10,89,67,'FF',7,0,1,'Users','','',2,1),(351,'',77,3,10,89,0,'FF',9,0,4,'Current:','','',3,2),(352,'',78,3,10,89,0,'FF',9,0,1,'Average:','','',3,3),(353,'',79,3,10,89,0,'FF',9,0,3,'Maximum:','','on',3,4),(354,'',65,4,8,90,48,'FF',7,0,1,'Running Processes','','',2,1),(355,'',66,4,8,90,0,'FF',9,0,4,'Current:','','',3,2),(356,'',67,4,8,90,0,'FF',9,0,1,'Average:','','',3,3),(357,'',68,4,8,90,0,'FF',9,0,3,'Maximum:','','on',3,4),(358,'803b96bcaec33148901b4b562d9d2344',0,0,30,29,89,'FF',7,0,1,'Open Files','','',2,1),(359,'da26dd92666cb840f8a70e2ec5e90c07',0,0,30,29,0,'FF',9,0,4,'Current:','','',3,2),(360,'5258970186e4407ed31cca2782650c45',0,0,30,29,0,'FF',9,0,1,'Average:','','',3,3),(361,'7d08b996bde9cdc7efa650c7031137b4',0,0,30,29,0,'FF',9,0,3,'Maximum:','','on',3,4),(362,'918e6e7d41bb4bae0ea2937b461742a4',0,0,31,54,22,'FF',7,2,1,'Inbound','','',2,1),(363,'f19fbd06c989ea85acd6b4f926e4a456',0,0,31,54,0,'FF',9,2,4,'Current:','','',2,2),(364,'fc150a15e20c57e11e8d05feca557ef9',0,0,31,54,0,'FF',9,2,1,'Average:','','',2,3),(365,'ccbd86e03ccf07483b4d29e63612fb18',0,0,31,54,0,'FF',9,2,3,'Maximum:','','on',2,4),(366,'964c5c30cd05eaf5a49c0377d173de86',0,0,31,55,20,'FF',4,2,1,'Outbound','','',2,5),(367,'b1a6fb775cf62e79e1c4bc4933c7e4ce',0,0,31,55,0,'FF',9,2,4,'Current:','','',2,6),(368,'721038182a872ab266b5cf1bf7f7755c',0,0,31,55,0,'FF',9,2,1,'Average:','','',2,7),(369,'2302f80c2c70b897d12182a1fc11ecd6',0,0,31,55,0,'FF',9,2,3,'Maximum:','','on',2,8),(370,'4ffc7af8533d103748316752b70f8e3c',0,0,31,0,0,'FF',1,0,1,'','','',2,9),(371,'64527c4b6eeeaf627acc5117ff2180fd',0,0,31,55,9,'FF',2,0,1,'95th Percentile','|95:bits:0:max:2|','',2,10),(372,'d5bbcbdbf83ae858862611ac6de8fc62',0,0,31,55,0,'FF',1,0,1,'(|95:bits:6:max:2| mbit in+out)','','on',2,11),(374,'55083351cd728b82cc4dde68eb935700',0,0,32,54,0,'FF',9,2,4,'Current:','','',2,2),(375,'54782f71929e7d1734ed5ad4b8dda50d',0,0,32,54,0,'FF',9,2,1,'Average:','','',2,3),(376,'88d3094d5dc2164cbf2f974aeb92f051',0,0,32,54,0,'FF',9,2,3,'Maximum:','','on',2,4),(377,'4a381a8e87d4db1ac99cf8d9078266d3',0,0,32,55,20,'FF',4,2,1,'Outbound','','',2,6),(378,'5bff63207c7bf076d76ff3036b5dad54',0,0,32,55,0,'FF',9,2,4,'Current:','','',2,7),(379,'979fff9d691ca35e3f4b3383d9cae43f',0,0,32,55,0,'FF',9,2,1,'Average:','','',2,8),(380,'0e715933830112c23c15f7e3463f77b6',0,0,32,55,0,'FF',9,2,3,'Maximum:','','on',2,11),(383,'5b43e4102600ad75379c5afd235099c4',0,0,32,54,0,'FF',1,0,1,'Total In:  |sum:auto:current:2:auto|','','on',2,5),(384,'db7c15d253ca666601b3296f2574edc9',0,0,32,55,0,'FF',1,0,1,'Total Out: |sum:auto:current:2:auto|','','on',2,12),(385,'fdaec5b9227522c758ad55882c483a83',0,0,33,55,0,'FF',9,0,3,'Maximum:','','on',2,11),(386,'6824d29c3f13fe1e849f1dbb8377d3f1',0,0,33,55,0,'FF',9,0,1,'Average:','','',2,8),(387,'54e3971b3dd751dd2509f62721c12b41',0,0,33,55,0,'FF',9,0,4,'Current:','','',2,7),(388,'cf8c9f69878f0f595d583eac109a9be1',0,0,33,55,20,'FF',4,0,1,'Outbound','','',2,6),(389,'de265acbbfa99eb4b3e9f7e90c7feeda',0,0,33,54,0,'FF',9,0,3,'Maximum:','','on',2,4),(390,'777aa88fb0a79b60d081e0e3759f1cf7',0,0,33,54,0,'FF',9,0,1,'Average:','','',2,3),(391,'66bfdb701c8eeadffe55e926d6e77e71',0,0,33,54,0,'FF',9,0,4,'Current:','','',2,2),(392,'3ff8dba1ca6279692b3fcabed0bc2631',0,0,33,54,22,'FF',7,0,1,'Inbound','','',2,1),(393,'d6041d14f9c8fb9b7ddcf3556f763c03',0,0,33,55,0,'FF',1,0,1,'Total Out: |sum:auto:current:2:auto|','','on',2,12),(394,'76ae747365553a02313a2d8a0dd55c8a',0,0,33,54,0,'FF',1,0,1,'Total In:  |sum:auto:current:2:auto|','','on',2,5),(403,'8a1b44ab97d3b56207d0e9e77a035d25',0,0,13,95,30,'FF',8,14,1,'Cache Memory','','',2,9),(404,'6db3f439e9764941ff43fbaae348f5dc',0,0,13,95,0,'FF',9,14,4,'Current:','','',2,10),(405,'cc9b2fe7acf0820caa61c1519193f65e',0,0,13,95,0,'FF',9,14,1,'Average:','','',2,11),(406,'9eea140bdfeaa40d50c5cdcd1f23f72d',0,0,13,95,0,'FF',9,14,3,'Maximum:','','on',2,12),(407,'41316670b1a36171de2bda91a0cc2364',0,0,34,96,98,'FF',7,0,1,'','','',2,1),(408,'c9e8cbdca0215b434c902e68755903ea',0,0,34,96,0,'FF',9,0,4,'Current:','','',2,2),(409,'dab91d7093e720841393feea5bdcba85',0,0,34,96,0,'FF',9,0,1,'Average:','','',2,3),(410,'03e5bd2151fea3c90843eb1130b84458',0,0,34,96,0,'FF',9,0,3,'Maximum:','','on',2,4),(789,'',15,55,2,191,0,'FF',9,2,1,'Average:','','',2,7),(784,'',10,55,2,190,0,'FF',9,2,4,'Current:','','',2,2),(785,'',11,55,2,190,0,'FF',9,2,1,'Average:','','',2,3),(786,'',12,55,2,190,0,'FF',9,2,3,'Maximum:','','on',2,4),(787,'',13,55,2,191,20,'FF',4,2,1,'Outbound','','',2,5),(788,'',14,55,2,191,0,'FF',9,2,4,'Current:','','',2,6),(855,'',9,64,2,208,22,'FF',7,2,1,'Inbound','','',2,1),(854,'',16,63,2,207,0,'FF',9,2,3,'Maximum:','','on',2,8),(853,'',15,63,2,207,0,'FF',9,2,1,'Average:','','',2,7),(438,'',142,11,18,103,0,'FF',9,0,3,'Maximum:','','on',3,4),(437,'',141,11,18,103,0,'FF',9,0,1,'Average:','','',3,3),(436,'',140,11,18,103,0,'FF',9,0,4,'Current:','','',3,2),(435,'',139,11,18,103,9,'FF',7,0,1,'CPU Usage','','',2,1),(782,'',16,54,2,189,0,'FF',9,2,3,'Maximum:','','on',2,8),(783,'',9,55,2,190,22,'FF',7,2,1,'Inbound','','',2,1),(852,'',14,63,2,207,0,'FF',9,2,4,'Current:','','',2,6),(851,'',13,63,2,207,20,'FF',4,2,1,'Outbound','','',2,5),(850,'',12,63,2,206,0,'FF',9,2,3,'Maximum:','','on',2,4),(849,'',11,63,2,206,0,'FF',9,2,1,'Average:','','',2,3),(848,'',10,63,2,206,0,'FF',9,2,4,'Current:','','',2,2),(847,'',9,63,2,206,22,'FF',7,2,1,'Inbound','','',2,1),(846,'',16,62,2,205,0,'FF',9,2,3,'Maximum:','','on',2,8),(845,'',15,62,2,205,0,'FF',9,2,1,'Average:','','',2,7),(844,'',14,62,2,205,0,'FF',9,2,4,'Current:','','',2,6),(843,'',13,62,2,205,20,'FF',4,2,1,'Outbound','','',2,5),(842,'',12,62,2,204,0,'FF',9,2,3,'Maximum:','','on',2,4),(841,'',11,62,2,204,0,'FF',9,2,1,'Average:','','',2,3),(840,'',10,62,2,204,0,'FF',9,2,4,'Current:','','',2,2),(839,'',9,62,2,204,22,'FF',7,2,1,'Inbound','','',2,1),(838,'',16,61,2,203,0,'FF',9,2,3,'Maximum:','','on',2,8),(837,'',15,61,2,203,0,'FF',9,2,1,'Average:','','',2,7),(836,'',14,61,2,203,0,'FF',9,2,4,'Current:','','',2,6),(835,'',13,61,2,203,20,'FF',4,2,1,'Outbound','','',2,5),(834,'',12,61,2,202,0,'FF',9,2,3,'Maximum:','','on',2,4),(833,'',11,61,2,202,0,'FF',9,2,1,'Average:','','',2,3),(832,'',10,61,2,202,0,'FF',9,2,4,'Current:','','',2,2),(831,'',9,61,2,202,22,'FF',7,2,1,'Inbound','','',2,1),(830,'',16,60,2,201,0,'FF',9,2,3,'Maximum:','','on',2,8),(829,'',15,60,2,201,0,'FF',9,2,1,'Average:','','',2,7),(828,'',14,60,2,201,0,'FF',9,2,4,'Current:','','',2,6),(827,'',13,60,2,201,20,'FF',4,2,1,'Outbound','','',2,5),(781,'',15,54,2,189,0,'FF',9,2,1,'Average:','','',2,7),(780,'',14,54,2,189,0,'FF',9,2,4,'Current:','','',2,6),(779,'',13,54,2,189,20,'FF',4,2,1,'Outbound','','',2,5),(778,'',12,54,2,188,0,'FF',9,2,3,'Maximum:','','on',2,4),(777,'',11,54,2,188,0,'FF',9,2,1,'Average:','','',2,3),(776,'',10,54,2,188,0,'FF',9,2,4,'Current:','','',2,2),(775,'',9,54,2,188,22,'FF',7,2,1,'Inbound','','',2,1),(774,'',16,53,2,187,0,'FF',9,2,3,'Maximum:','','on',2,8),(773,'',15,53,2,187,0,'FF',9,2,1,'Average:','','',2,7),(772,'',14,53,2,187,0,'FF',9,2,4,'Current:','','',2,6),(771,'',13,53,2,187,20,'FF',4,2,1,'Outbound','','',2,5),(770,'',12,53,2,186,0,'FF',9,2,3,'Maximum:','','on',2,4),(769,'',11,53,2,186,0,'FF',9,2,1,'Average:','','',2,3),(768,'',10,53,2,186,0,'FF',9,2,4,'Current:','','',2,2),(767,'',9,53,2,186,22,'FF',7,2,1,'Inbound','','',2,1),(765,'',15,52,2,185,0,'FF',9,2,1,'Average:','','',2,7),(766,'',16,52,2,185,0,'FF',9,2,3,'Maximum:','','on',2,8),(826,'',12,60,2,200,0,'FF',9,2,3,'Maximum:','','on',2,4),(825,'',11,60,2,200,0,'FF',9,2,1,'Average:','','',2,3),(824,'',10,60,2,200,0,'FF',9,2,4,'Current:','','',2,2),(823,'',9,60,2,200,22,'FF',7,2,1,'Inbound','','',2,1),(822,'',16,59,2,199,0,'FF',9,2,3,'Maximum:','','on',2,8),(821,'',15,59,2,199,0,'FF',9,2,1,'Average:','','',2,7),(820,'',14,59,2,199,0,'FF',9,2,4,'Current:','','',2,6),(819,'',13,59,2,199,20,'FF',4,2,1,'Outbound','','',2,5),(818,'',12,59,2,198,0,'FF',9,2,3,'Maximum:','','on',2,4),(817,'',11,59,2,198,0,'FF',9,2,1,'Average:','','',2,3),(816,'',10,59,2,198,0,'FF',9,2,4,'Current:','','',2,2),(815,'',9,59,2,198,22,'FF',7,2,1,'Inbound','','',2,1),(814,'',16,58,2,197,0,'FF',9,2,3,'Maximum:','','on',2,8),(813,'',15,58,2,197,0,'FF',9,2,1,'Average:','','',2,7),(764,'',14,52,2,185,0,'FF',9,2,4,'Current:','','',2,6),(763,'',13,52,2,185,20,'FF',4,2,1,'Outbound','','',2,5),(762,'',12,52,2,184,0,'FF',9,2,3,'Maximum:','','on',2,4),(761,'',11,52,2,184,0,'FF',9,2,1,'Average:','','',2,3),(760,'',10,52,2,184,0,'FF',9,2,4,'Current:','','',2,2),(759,'',9,52,2,184,22,'FF',7,2,1,'Inbound','','',2,1),(758,'',16,51,2,183,0,'FF',9,2,3,'Maximum:','','on',2,8),(757,'',15,51,2,183,0,'FF',9,2,1,'Average:','','',2,7),(756,'',14,51,2,183,0,'FF',9,2,4,'Current:','','',2,6),(755,'',13,51,2,183,20,'FF',4,2,1,'Outbound','','',2,5),(754,'',12,51,2,182,0,'FF',9,2,3,'Maximum:','','on',2,4),(753,'',11,51,2,182,0,'FF',9,2,1,'Average:','','',2,3),(752,'',10,51,2,182,0,'FF',9,2,4,'Current:','','',2,2),(751,'',9,51,2,182,22,'FF',7,2,1,'Inbound','','',2,1),(750,'',16,50,2,181,0,'FF',9,2,3,'Maximum:','','on',2,8),(749,'',15,50,2,181,0,'FF',9,2,1,'Average:','','',2,7),(748,'',14,50,2,181,0,'FF',9,2,4,'Current:','','',2,6),(747,'',13,50,2,181,20,'FF',4,2,1,'Outbound','','',2,5),(746,'',12,50,2,180,0,'FF',9,2,3,'Maximum:','','on',2,4),(745,'',11,50,2,180,0,'FF',9,2,1,'Average:','','',2,3),(744,'',10,50,2,180,0,'FF',9,2,4,'Current:','','',2,2),(743,'',9,50,2,180,22,'FF',7,2,1,'Inbound','','',2,1),(742,'',16,49,2,179,0,'FF',9,2,3,'Maximum:','','on',2,8),(741,'',15,49,2,179,0,'FF',9,2,1,'Average:','','',2,7),(740,'',14,49,2,179,0,'FF',9,2,4,'Current:','','',2,6),(739,'',13,49,2,179,20,'FF',4,2,1,'Outbound','','',2,5),(738,'',12,49,2,178,0,'FF',9,2,3,'Maximum:','','on',2,4),(737,'',11,49,2,178,0,'FF',9,2,1,'Average:','','',2,3),(736,'',10,49,2,178,0,'FF',9,2,4,'Current:','','',2,2),(735,'',9,49,2,178,22,'FF',7,2,1,'Inbound','','',2,1),(734,'',16,48,2,177,0,'FF',9,2,3,'Maximum:','','on',2,8),(733,'',15,48,2,177,0,'FF',9,2,1,'Average:','','',2,7),(732,'',14,48,2,177,0,'FF',9,2,4,'Current:','','',2,6),(731,'',13,48,2,177,20,'FF',4,2,1,'Outbound','','',2,5),(730,'',12,48,2,176,0,'FF',9,2,3,'Maximum:','','on',2,4),(729,'',11,48,2,176,0,'FF',9,2,1,'Average:','','',2,3),(728,'',10,48,2,176,0,'FF',9,2,4,'Current:','','',2,2),(727,'',9,48,2,176,22,'FF',7,2,1,'Inbound','','',2,1),(726,'',303,47,26,174,0,'FF',9,0,3,'Maximum:','','on',2,8),(723,'',306,47,26,174,48,'FF',7,0,1,'Used','','',2,5),(724,'',305,47,26,174,0,'FF',9,0,4,'Current:','','',2,6),(725,'',304,47,26,174,0,'FF',9,0,1,'Average:','','',2,7),(812,'',14,58,2,197,0,'FF',9,2,4,'Current:','','',2,6),(811,'',13,58,2,197,20,'FF',4,2,1,'Outbound','','',2,5),(810,'',12,58,2,196,0,'FF',9,2,3,'Maximum:','','on',2,4),(809,'',11,58,2,196,0,'FF',9,2,1,'Average:','','',2,3),(808,'',10,58,2,196,0,'FF',9,2,4,'Current:','','',2,2),(722,'',310,47,26,175,0,'FF',9,0,3,'Maximum:','','on',2,4),(721,'',309,47,26,175,0,'FF',9,0,1,'Average:','','',2,3),(720,'',308,47,26,175,0,'FF',9,0,4,'Current:','','',2,2),(719,'',307,47,26,175,20,'FF',7,0,1,'Total','','',2,1),(718,'',303,46,26,172,0,'FF',9,0,3,'Maximum:','','on',2,8),(717,'',304,46,26,172,0,'FF',9,0,1,'Average:','','',2,7),(716,'',305,46,26,172,0,'FF',9,0,4,'Current:','','',2,6),(713,'',309,46,26,173,0,'FF',9,0,1,'Average:','','',2,3),(714,'',310,46,26,173,0,'FF',9,0,3,'Maximum:','','on',2,4),(715,'',306,46,26,172,48,'FF',7,0,1,'Used','','',2,5),(807,'',9,58,2,196,22,'FF',7,2,1,'Inbound','','',2,1),(806,'',16,57,2,195,0,'FF',9,2,3,'Maximum:','','on',2,8),(805,'',15,57,2,195,0,'FF',9,2,1,'Average:','','',2,7),(804,'',14,57,2,195,0,'FF',9,2,4,'Current:','','',2,6),(803,'',13,57,2,195,20,'FF',4,2,1,'Outbound','','',2,5),(802,'',12,57,2,194,0,'FF',9,2,3,'Maximum:','','on',2,4),(801,'',11,57,2,194,0,'FF',9,2,1,'Average:','','',2,3),(800,'',10,57,2,194,0,'FF',9,2,4,'Current:','','',2,2),(799,'',9,57,2,194,22,'FF',7,2,1,'Inbound','','',2,1),(798,'',16,56,2,193,0,'FF',9,2,3,'Maximum:','','on',2,8),(797,'',15,56,2,193,0,'FF',9,2,1,'Average:','','',2,7),(796,'',14,56,2,193,0,'FF',9,2,4,'Current:','','',2,6),(795,'',13,56,2,193,20,'FF',4,2,1,'Outbound','','',2,5),(712,'',308,46,26,173,0,'FF',9,0,4,'Current:','','',2,2),(711,'',307,46,26,173,20,'FF',7,0,1,'Total','','',2,1),(710,'',303,45,26,170,0,'FF',9,0,3,'Maximum:','','on',2,8),(709,'',304,45,26,170,0,'FF',9,0,1,'Average:','','',2,7),(708,'',305,45,26,170,0,'FF',9,0,4,'Current:','','',2,6),(707,'',306,45,26,170,48,'FF',7,0,1,'Used','','',2,5),(706,'',310,45,26,171,0,'FF',9,0,3,'Maximum:','','on',2,4),(703,'',307,45,26,171,20,'FF',7,0,1,'Total','','',2,1),(704,'',308,45,26,171,0,'FF',9,0,4,'Current:','','',2,2),(705,'',309,45,26,171,0,'FF',9,0,1,'Average:','','',2,3),(794,'',12,56,2,192,0,'FF',9,2,3,'Maximum:','','on',2,4),(793,'',11,56,2,192,0,'FF',9,2,1,'Average:','','',2,3),(792,'',10,56,2,192,0,'FF',9,2,4,'Current:','','',2,2),(791,'',9,56,2,192,22,'FF',7,2,1,'Inbound','','',2,1),(790,'',16,55,2,191,0,'FF',9,2,3,'Maximum:','','on',2,8),(702,'',303,44,26,168,0,'FF',9,0,3,'Maximum:','','on',2,8),(701,'',304,44,26,168,0,'FF',9,0,1,'Average:','','',2,7),(700,'',305,44,26,168,0,'FF',9,0,4,'Current:','','',2,6),(699,'',306,44,26,168,48,'FF',7,0,1,'Used','','',2,5),(698,'',310,44,26,169,0,'FF',9,0,3,'Maximum:','','on',2,4),(697,'',309,44,26,169,0,'FF',9,0,1,'Average:','','',2,3),(696,'',308,44,26,169,0,'FF',9,0,4,'Current:','','',2,2),(695,'',307,44,26,169,20,'FF',7,0,1,'Total','','',2,1),(694,'',303,43,26,166,0,'FF',9,0,3,'Maximum:','','on',2,8),(693,'',304,43,26,166,0,'FF',9,0,1,'Average:','','',2,7),(692,'',305,43,26,166,0,'FF',9,0,4,'Current:','','',2,6),(691,'',306,43,26,166,48,'FF',7,0,1,'Used','','',2,5),(690,'',310,43,26,167,0,'FF',9,0,3,'Maximum:','','on',2,4),(689,'',309,43,26,167,0,'FF',9,0,1,'Average:','','',2,3),(688,'',308,43,26,167,0,'FF',9,0,4,'Current:','','',2,2),(687,'',307,43,26,167,20,'FF',7,0,1,'Total','','',2,1),(686,'',303,42,26,164,0,'FF',9,0,3,'Maximum:','','on',2,8),(685,'',304,42,26,164,0,'FF',9,0,1,'Average:','','',2,7),(684,'',305,42,26,164,0,'FF',9,0,4,'Current:','','',2,6),(683,'',306,42,26,164,48,'FF',7,0,1,'Used','','',2,5),(682,'',310,42,26,165,0,'FF',9,0,3,'Maximum:','','on',2,4),(681,'',309,42,26,165,0,'FF',9,0,1,'Average:','','',2,3),(680,'',308,42,26,165,0,'FF',9,0,4,'Current:','','',2,2),(679,'',307,42,26,165,20,'FF',7,0,1,'Total','','',2,1),(678,'',303,41,26,162,0,'FF',9,0,3,'Maximum:','','on',2,8),(677,'',304,41,26,162,0,'FF',9,0,1,'Average:','','',2,7),(676,'',305,41,26,162,0,'FF',9,0,4,'Current:','','',2,6),(675,'',306,41,26,162,48,'FF',7,0,1,'Used','','',2,5),(674,'',310,41,26,163,0,'FF',9,0,3,'Maximum:','','on',2,4),(673,'',309,41,26,163,0,'FF',9,0,1,'Average:','','',2,3),(672,'',308,41,26,163,0,'FF',9,0,4,'Current:','','',2,2),(671,'',307,41,26,163,20,'FF',7,0,1,'Total','','',2,1),(670,'',303,40,26,160,0,'FF',9,0,3,'Maximum:','','on',2,8),(669,'',304,40,26,160,0,'FF',9,0,1,'Average:','','',2,7),(668,'',305,40,26,160,0,'FF',9,0,4,'Current:','','',2,6),(667,'',306,40,26,160,48,'FF',7,0,1,'Used','','',2,5),(666,'',310,40,26,161,0,'FF',9,0,3,'Maximum:','','on',2,4),(665,'',309,40,26,161,0,'FF',9,0,1,'Average:','','',2,3),(664,'',308,40,26,161,0,'FF',9,0,4,'Current:','','',2,2),(663,'',307,40,26,161,20,'FF',7,0,1,'Total','','',2,1),(856,'',10,64,2,208,0,'FF',9,2,4,'Current:','','',2,2),(857,'',11,64,2,208,0,'FF',9,2,1,'Average:','','',2,3),(858,'',12,64,2,208,0,'FF',9,2,3,'Maximum:','','on',2,4),(859,'',13,64,2,209,20,'FF',4,2,1,'Outbound','','',2,5),(860,'',14,64,2,209,0,'FF',9,2,4,'Current:','','',2,6),(861,'',15,64,2,209,0,'FF',9,2,1,'Average:','','',2,7),(862,'',16,64,2,209,0,'FF',9,2,3,'Maximum:','','on',2,8),(863,'',9,65,2,210,22,'FF',7,2,1,'Inbound','','',2,1),(864,'',10,65,2,210,0,'FF',9,2,4,'Current:','','',2,2),(865,'',11,65,2,210,0,'FF',9,2,1,'Average:','','',2,3),(866,'',12,65,2,210,0,'FF',9,2,3,'Maximum:','','on',2,4),(867,'',13,65,2,211,20,'FF',4,2,1,'Outbound','','',2,5),(868,'',14,65,2,211,0,'FF',9,2,4,'Current:','','',2,6),(869,'',15,65,2,211,0,'FF',9,2,1,'Average:','','',2,7),(870,'',16,65,2,211,0,'FF',9,2,3,'Maximum:','','on',2,8),(871,'',9,66,2,212,22,'FF',7,2,1,'Inbound','','',2,1),(872,'',10,66,2,212,0,'FF',9,2,4,'Current:','','',2,2),(873,'',11,66,2,212,0,'FF',9,2,1,'Average:','','',2,3),(874,'',12,66,2,212,0,'FF',9,2,3,'Maximum:','','on',2,4),(875,'',13,66,2,213,20,'FF',4,2,1,'Outbound','','',2,5),(876,'',14,66,2,213,0,'FF',9,2,4,'Current:','','',2,6),(877,'',15,66,2,213,0,'FF',9,2,1,'Average:','','',2,7),(878,'',16,66,2,213,0,'FF',9,2,3,'Maximum:','','on',2,8),(879,'',9,67,2,214,22,'FF',7,2,1,'Inbound','','',2,1),(880,'',10,67,2,214,0,'FF',9,2,4,'Current:','','',2,2),(881,'',11,67,2,214,0,'FF',9,2,1,'Average:','','',2,3),(882,'',12,67,2,214,0,'FF',9,2,3,'Maximum:','','on',2,4),(883,'',13,67,2,215,20,'FF',4,2,1,'Outbound','','',2,5),(884,'',14,67,2,215,0,'FF',9,2,4,'Current:','','',2,6),(885,'',15,67,2,215,0,'FF',9,2,1,'Average:','','',2,7),(886,'',16,67,2,215,0,'FF',9,2,3,'Maximum:','','on',2,8),(887,'',307,68,26,217,20,'FF',7,0,1,'Total','','',2,1),(888,'',308,68,26,217,0,'FF',9,0,4,'Current:','','',2,2),(889,'',309,68,26,217,0,'FF',9,0,1,'Average:','','',2,3),(890,'',310,68,26,217,0,'FF',9,0,3,'Maximum:','','on',2,4),(891,'',306,68,26,216,48,'FF',7,0,1,'Used','','',2,5),(892,'',305,68,26,216,0,'FF',9,0,4,'Current:','','',2,6),(893,'',304,68,26,216,0,'FF',9,0,1,'Average:','','',2,7),(894,'',303,68,26,216,0,'FF',9,0,3,'Maximum:','','on',2,8),(895,'',307,69,26,219,20,'FF',7,0,1,'Total','','',2,1),(896,'',308,69,26,219,0,'FF',9,0,4,'Current:','','',2,2),(897,'',309,69,26,219,0,'FF',9,0,1,'Average:','','',2,3),(898,'',310,69,26,219,0,'FF',9,0,3,'Maximum:','','on',2,4),(899,'',306,69,26,218,48,'FF',7,0,1,'Used','','',2,5),(900,'',305,69,26,218,0,'FF',9,0,4,'Current:','','',2,6),(901,'',304,69,26,218,0,'FF',9,0,1,'Average:','','',2,7),(902,'',303,69,26,218,0,'FF',9,0,3,'Maximum:','','on',2,8),(903,'',307,70,26,221,20,'FF',7,0,1,'Total','','',2,1),(904,'',308,70,26,221,0,'FF',9,0,4,'Current:','','',2,2),(905,'',309,70,26,221,0,'FF',9,0,1,'Average:','','',2,3),(906,'',310,70,26,221,0,'FF',9,0,3,'Maximum:','','on',2,4),(907,'',306,70,26,220,48,'FF',7,0,1,'Used','','',2,5),(908,'',305,70,26,220,0,'FF',9,0,4,'Current:','','',2,6),(909,'',304,70,26,220,0,'FF',9,0,1,'Average:','','',2,7),(910,'',303,70,26,220,0,'FF',9,0,3,'Maximum:','','on',2,8);
/*!40000 ALTER TABLE `graph_templates_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_tree`
--

DROP TABLE IF EXISTS `graph_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_tree` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sort_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_tree`
--

LOCK TABLES `graph_tree` WRITE;
/*!40000 ALTER TABLE `graph_tree` DISABLE KEYS */;
INSERT INTO `graph_tree` VALUES (1,1,'Default Tree'),(2,1,'--- Players Servers ---'),(3,1,'--- Account Servers ---');
/*!40000 ALTER TABLE `graph_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_tree_items`
--

DROP TABLE IF EXISTS `graph_tree_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_tree_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `graph_tree_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rra_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(100) NOT NULL DEFAULT '0',
  `host_grouping_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_children_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `graph_tree_id` (`graph_tree_id`),
  KEY `host_id` (`host_id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `order_key` (`order_key`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_tree_items`
--

LOCK TABLES `graph_tree_items` WRITE;
/*!40000 ALTER TABLE `graph_tree_items` DISABLE KEYS */;
INSERT INTO `graph_tree_items` VALUES (7,1,0,0,'',1,'001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(8,1,0,1,'',3,'002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(9,1,53,1,'',0,'003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',0,0),(10,1,42,1,'',0,'004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',0,0),(11,2,0,0,'test3',0,'001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(12,2,0,0,'Driver C',0,'001001000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(17,2,0,0,'Driver F',0,'001005000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(16,2,0,0,'Driver E',0,'001004000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(15,2,0,0,'Driver D',0,'001003000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(18,2,0,0,'test4',0,'002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(19,2,0,0,'Driver C',0,'002001000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(20,2,0,0,'Driver D',0,'002002000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(21,2,0,0,'Driver E',0,'002003000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(22,2,0,0,'Driver F',0,'002004000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(23,2,0,0,'test5',0,'010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(24,2,0,0,'Drive C',0,'010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(25,3,0,0,'test3',0,'001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(26,3,0,0,'Driver C',0,'001001000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(27,3,0,0,'Driver D',0,'001002000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(28,3,0,0,'Driver E',0,'001003000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1),(29,3,0,0,'Driver F',0,'001004000000000000000000000000000000000000000000000000000000000000000000000000000000000000',1,1);
/*!40000 ALTER TABLE `graph_tree_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(150) NOT NULL DEFAULT '',
  `hostname` varchar(250) DEFAULT NULL,
  `notes` text,
  `snmp_community` varchar(100) DEFAULT NULL,
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `snmp_username` varchar(50) DEFAULT NULL,
  `snmp_password` varchar(50) DEFAULT NULL,
  `snmp_auth_protocol` char(5) DEFAULT '',
  `snmp_priv_passphrase` varchar(200) DEFAULT '',
  `snmp_priv_protocol` char(6) DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_timeout` mediumint(8) unsigned NOT NULL DEFAULT '500',
  `availability_method` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ping_method` smallint(5) unsigned DEFAULT '0',
  `ping_port` int(12) unsigned DEFAULT '0',
  `ping_timeout` int(12) unsigned DEFAULT '500',
  `ping_retries` int(12) unsigned DEFAULT '2',
  `max_oids` int(12) unsigned DEFAULT '10',
  `device_threads` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `disabled` char(2) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `status_event_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status_fail_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_rec_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_last_error` varchar(255) DEFAULT '',
  `min_time` decimal(10,5) DEFAULT '9.99999',
  `max_time` decimal(10,5) DEFAULT '0.00000',
  `cur_time` decimal(10,5) DEFAULT '0.00000',
  `avg_time` decimal(10,5) DEFAULT '0.00000',
  `total_polls` int(12) unsigned DEFAULT '0',
  `failed_polls` int(12) unsigned DEFAULT '0',
  `availability` decimal(8,5) NOT NULL DEFAULT '100.00000',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,8,'Localhost','127.0.0.1','','public',0,'','','MD5','','DES','',161,500,3,2,23,400,1,10,1,'',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','',0.00000,18.52000,0.66000,1.35011,83,0,100.00000),(3,7,'test2','10.11.14.4','','public',1,'','','','','','',161,500,2,2,23,400,1,10,1,'',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','',1.15000,24.63000,1.88000,6.72266,45,0,100.00000),(4,7,'test3','10.11.14.4','','public',1,'','','','','','',161,500,2,2,23,400,1,10,1,'',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','',1.15000,24.63000,1.88000,6.72266,45,0,100.00000);
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_graph`
--

DROP TABLE IF EXISTS `host_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_graph` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_id`,`graph_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_graph`
--

LOCK TABLES `host_graph` WRITE;
/*!40000 ALTER TABLE `host_graph` DISABLE KEYS */;
INSERT INTO `host_graph` VALUES (1,8),(1,9),(1,10),(1,12),(3,28),(3,29),(4,28),(4,29);
/*!40000 ALTER TABLE `host_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_snmp_cache`
--

DROP TABLE IF EXISTS `host_snmp_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_snmp_cache` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(50) NOT NULL DEFAULT '',
  `field_value` varchar(255) DEFAULT NULL,
  `snmp_index` varchar(255) NOT NULL DEFAULT '',
  `oid` text NOT NULL,
  `present` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`host_id`,`snmp_query_id`,`field_name`,`snmp_index`),
  KEY `host_id` (`host_id`,`field_name`),
  KEY `snmp_index` (`snmp_index`),
  KEY `field_name` (`field_name`),
  KEY `field_value` (`field_value`),
  KEY `snmp_query_id` (`snmp_query_id`),
  KEY `present` (`present`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_snmp_cache`
--

LOCK TABLES `host_snmp_cache` WRITE;
/*!40000 ALTER TABLE `host_snmp_cache` DISABLE KEYS */;
INSERT INTO `host_snmp_cache` VALUES (1,6,'dskDevice','/dev/ada0p2','/dev/ada0p2','',1),(1,6,'dskMount','/','/dev/ada0p2','',1),(3,1,'ifSpeed','1073741824','8','.1.3.6.1.2.1.2.2.1.5.8',1),(3,1,'ifSpeed','1073741824','7','.1.3.6.1.2.1.2.2.1.5.7',1),(3,1,'ifSpeed','1073741824','6','.1.3.6.1.2.1.2.2.1.5.6',1),(3,1,'ifSpeed','1073741824','5','.1.3.6.1.2.1.2.2.1.5.5',1),(3,1,'ifSpeed','1073741824','4','.1.3.6.1.2.1.2.2.1.5.4',1),(3,1,'ifSpeed','1073741824','3','.1.3.6.1.2.1.2.2.1.5.3',1),(3,1,'ifSpeed','1073741824','2','.1.3.6.1.2.1.2.2.1.5.2',1),(3,1,'ifSpeed','1073741824','1','.1.3.6.1.2.1.2.2.1.5.1',1),(3,1,'ifType','ethernetCsmacd(6)','20','.1.3.6.1.2.1.2.2.1.3.20',1),(3,1,'ifType','ethernetCsmacd(6)','19','.1.3.6.1.2.1.2.2.1.3.19',1),(3,1,'ifType','ethernetCsmacd(6)','18','.1.3.6.1.2.1.2.2.1.3.18',1),(3,1,'ifType','ethernetCsmacd(6)','17','.1.3.6.1.2.1.2.2.1.3.17',1),(3,1,'ifType','ethernetCsmacd(6)','16','.1.3.6.1.2.1.2.2.1.3.16',1),(3,1,'ifType','tunnel(131)','15','.1.3.6.1.2.1.2.2.1.3.15',1),(3,1,'ifType','ethernetCsmacd(6)','14','.1.3.6.1.2.1.2.2.1.3.14',1),(3,1,'ifType','tunnel(131)','13','.1.3.6.1.2.1.2.2.1.3.13',1),(3,1,'ifType','tunnel(131)','12','.1.3.6.1.2.1.2.2.1.3.12',1),(3,1,'ifType','ethernetCsmacd(6)','11','.1.3.6.1.2.1.2.2.1.3.11',1),(3,1,'ifType','tunnel(131)','10','.1.3.6.1.2.1.2.2.1.3.10',1),(3,1,'ifType','ppp(23)','9','.1.3.6.1.2.1.2.2.1.3.9',1),(3,1,'ifType','ethernetCsmacd(6)','8','.1.3.6.1.2.1.2.2.1.3.8',1),(3,1,'ifType','ethernetCsmacd(6)','7','.1.3.6.1.2.1.2.2.1.3.7',1),(3,1,'ifType','ethernetCsmacd(6)','6','.1.3.6.1.2.1.2.2.1.3.6',1),(3,1,'ifType','ppp(23)','5','.1.3.6.1.2.1.2.2.1.3.5',1),(3,1,'ifType','tunnel(131)','4','.1.3.6.1.2.1.2.2.1.3.4',1),(3,1,'ifType','tunnel(131)','3','.1.3.6.1.2.1.2.2.1.3.3',1),(3,1,'ifType','tunnel(131)','2','.1.3.6.1.2.1.2.2.1.3.2',1),(3,1,'ifType','softwareLoopback(24)','1','.1.3.6.1.2.1.2.2.1.3.1',1),(3,1,'ifAlias','Local Area Connection-WFP LightWeight Filter-0000','20','.1.3.6.1.2.1.31.1.1.1.18.20',1),(3,1,'ifAlias','Local Area Connection* 7-QoS Packet Scheduler-0000','19','.1.3.6.1.2.1.31.1.1.1.18.19',1),(3,1,'ifAlias','Local Area Connection* 8-QoS Packet Scheduler-0000','18','.1.3.6.1.2.1.31.1.1.1.18.18',1),(3,1,'ifAlias','Local Area Connection* 6-QoS Packet Scheduler-0000','17','.1.3.6.1.2.1.31.1.1.1.18.17',1),(3,1,'ifAlias','Local Area Connection-QoS Packet Scheduler-0000','16','.1.3.6.1.2.1.31.1.1.1.18.16',1),(3,1,'ifAlias','isatap.titansoft.com.sg','15','.1.3.6.1.2.1.31.1.1.1.18.15',1),(3,1,'ifAlias','Local Area Connection 2','14','.1.3.6.1.2.1.31.1.1.1.18.14',1),(3,1,'ifAlias','Reusable ISATAP Interface {13623304-6EB5-4121-971A-8D274A5D10B4}','13','.1.3.6.1.2.1.31.1.1.1.18.13',1),(3,1,'ifAlias','Reusable ISATAP Interface {EF0C3D3D-9398-4D1D-A52D-F839A37B6267}','12','.1.3.6.1.2.1.31.1.1.1.18.12',1),(3,1,'ifAlias','Local Area Connection','11','.1.3.6.1.2.1.31.1.1.1.18.11',1),(3,1,'ifAlias','Local Area Connection* 2','10','.1.3.6.1.2.1.31.1.1.1.18.10',1),(3,1,'ifAlias','Local Area Connection* 10','9','.1.3.6.1.2.1.31.1.1.1.18.9',1),(3,1,'ifAlias','Local Area Connection* 8','8','.1.3.6.1.2.1.31.1.1.1.18.8',1),(3,1,'ifAlias','Local Area Connection* 7','7','.1.3.6.1.2.1.31.1.1.1.18.7',1),(3,1,'ifAlias','Local Area Connection* 6','6','.1.3.6.1.2.1.31.1.1.1.18.6',1),(3,1,'ifAlias','Local Area Connection* 5','5','.1.3.6.1.2.1.31.1.1.1.18.5',1),(3,1,'ifAlias','Local Area Connection* 4','4','.1.3.6.1.2.1.31.1.1.1.18.4',1),(3,1,'ifAlias','Local Area Connection* 3','3','.1.3.6.1.2.1.31.1.1.1.18.3',1),(3,1,'ifAlias','Local Area Connection*','2','.1.3.6.1.2.1.31.1.1.1.18.2',1),(3,1,'ifAlias','Loopback Pseudo-Interface 1','1','.1.3.6.1.2.1.31.1.1.1.18.1',1),(3,1,'ifName','ethernet_8','20','.1.3.6.1.2.1.31.1.1.1.1.20',1),(3,1,'ifName','ethernet_7','19','.1.3.6.1.2.1.31.1.1.1.1.19',1),(3,1,'ifName','ethernet_4','18','.1.3.6.1.2.1.31.1.1.1.1.18',1),(3,1,'ifName','ethernet_3','17','.1.3.6.1.2.1.31.1.1.1.1.17',1),(3,1,'ifName','ethernet_2','16','.1.3.6.1.2.1.31.1.1.1.1.16',1),(3,1,'ifName','tunnel_6','15','.1.3.6.1.2.1.31.1.1.1.1.15',1),(3,1,'ifName','ethernet_9','14','.1.3.6.1.2.1.31.1.1.1.1.14',1),(3,1,'ifName','tunnel_5','13','.1.3.6.1.2.1.31.1.1.1.1.13',1),(3,1,'ifName','tunnel_4','12','.1.3.6.1.2.1.31.1.1.1.1.12',1),(3,1,'ifName','ethernet_5','11','.1.3.6.1.2.1.31.1.1.1.1.11',1),(3,1,'ifName','tunnel_1','10','.1.3.6.1.2.1.31.1.1.1.1.10',1),(3,1,'ifName','ethernet_6','8','.1.3.6.1.2.1.31.1.1.1.1.8',1),(3,1,'ifName','ppp_1','9','.1.3.6.1.2.1.31.1.1.1.1.9',1),(3,1,'ifName','ethernet_1','7','.1.3.6.1.2.1.31.1.1.1.1.7',1),(3,1,'ifName','ethernet_0','6','.1.3.6.1.2.1.31.1.1.1.1.6',1),(3,1,'ifName','ppp_0','5','.1.3.6.1.2.1.31.1.1.1.1.5',1),(3,1,'ifName','tunnel_3','4','.1.3.6.1.2.1.31.1.1.1.1.4',1),(3,1,'ifName','tunnel_0','2','.1.3.6.1.2.1.31.1.1.1.1.2',1),(3,1,'ifName','tunnel_2','3','.1.3.6.1.2.1.31.1.1.1.1.3',1),(3,1,'ifName','loopback_0','1','.1.3.6.1.2.1.31.1.1.1.1.1',1),(3,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter-WFP LightWeight Filter-0000','20','.1.3.6.1.2.1.2.2.1.2.20',1),(3,1,'ifDescr','WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000','19','.1.3.6.1.2.1.2.2.1.2.19',1),(3,1,'ifDescr','WAN Miniport (IP)-QoS Packet Scheduler-0000','18','.1.3.6.1.2.1.2.2.1.2.18',1),(3,1,'ifDescr','WAN Miniport (IPv6)-QoS Packet Scheduler-0000','17','.1.3.6.1.2.1.2.2.1.2.17',1),(3,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter-QoS Packet Scheduler-0000','16','.1.3.6.1.2.1.2.2.1.2.16',1),(3,1,'ifDescr','Microsoft ISATAP Adapter #3','15','.1.3.6.1.2.1.2.2.1.2.15',1),(3,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter #2','14','.1.3.6.1.2.1.2.2.1.2.14',1),(3,1,'ifDescr','Microsoft ISATAP Adapter #2','13','.1.3.6.1.2.1.2.2.1.2.13',1),(3,1,'ifDescr','Microsoft ISATAP Adapter','12','.1.3.6.1.2.1.2.2.1.2.12',1),(3,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter','11','.1.3.6.1.2.1.2.2.1.2.11',1),(3,1,'ifDescr','WAN Miniport (IKEv2)','10','.1.3.6.1.2.1.2.2.1.2.10',1),(3,1,'ifDescr','RAS Async Adapter','9','.1.3.6.1.2.1.2.2.1.2.9',1),(3,1,'ifDescr','WAN Miniport (IP)','8','.1.3.6.1.2.1.2.2.1.2.8',1),(3,1,'ifDescr','WAN Miniport (Network Monitor)','7','.1.3.6.1.2.1.2.2.1.2.7',1),(3,1,'ifDescr','WAN Miniport (IPv6)','6','.1.3.6.1.2.1.2.2.1.2.6',1),(3,1,'ifDescr','WAN Miniport (PPPOE)','5','.1.3.6.1.2.1.2.2.1.2.5',1),(3,1,'ifDescr','WAN Miniport (PPTP)','4','.1.3.6.1.2.1.2.2.1.2.4',1),(3,1,'ifDescr','WAN Miniport (L2TP)','3','.1.3.6.1.2.1.2.2.1.2.3',1),(3,1,'ifDescr','WAN Miniport (SSTP)','2','.1.3.6.1.2.1.2.2.1.2.2',1),(3,1,'ifDescr','Software Loopback Interface 1','1','.1.3.6.1.2.1.2.2.1.2.1',1),(3,1,'ifOperStatus','Up','20','.1.3.6.1.2.1.2.2.1.8.20',1),(3,1,'ifOperStatus','Up','19','.1.3.6.1.2.1.2.2.1.8.19',1),(3,1,'ifOperStatus','Up','18','.1.3.6.1.2.1.2.2.1.8.18',1),(3,1,'ifOperStatus','Up','17','.1.3.6.1.2.1.2.2.1.8.17',1),(3,1,'ifOperStatus','Up','16','.1.3.6.1.2.1.2.2.1.8.16',1),(3,1,'ifOperStatus','Down','15','.1.3.6.1.2.1.2.2.1.8.15',1),(3,1,'ifOperStatus','notPresent','14','.1.3.6.1.2.1.2.2.1.8.14',1),(3,1,'ifOperStatus','Down','13','.1.3.6.1.2.1.2.2.1.8.13',1),(3,1,'ifOperStatus','Down','12','.1.3.6.1.2.1.2.2.1.8.12',1),(3,1,'ifOperStatus','Up','11','.1.3.6.1.2.1.2.2.1.8.11',1),(3,1,'ifOperStatus','Down','10','.1.3.6.1.2.1.2.2.1.8.10',1),(3,1,'ifOperStatus','Up','9','.1.3.6.1.2.1.2.2.1.8.9',1),(3,1,'ifOperStatus','Up','8','.1.3.6.1.2.1.2.2.1.8.8',1),(3,1,'ifOperStatus','Up','7','.1.3.6.1.2.1.2.2.1.8.7',1),(3,1,'ifOperStatus','Up','6','.1.3.6.1.2.1.2.2.1.8.6',1),(3,1,'ifOperStatus','Up','5','.1.3.6.1.2.1.2.2.1.8.5',1),(3,1,'ifOperStatus','Up','4','.1.3.6.1.2.1.2.2.1.8.4',1),(3,1,'ifOperStatus','Up','3','.1.3.6.1.2.1.2.2.1.8.3',1),(3,1,'ifOperStatus','Up','2','.1.3.6.1.2.1.2.2.1.8.2',1),(3,1,'ifOperStatus','Up','1','.1.3.6.1.2.1.2.2.1.8.1',1),(3,1,'ifIndex','20','20','.1.3.6.1.2.1.2.2.1.1.20',1),(3,1,'ifIndex','19','19','.1.3.6.1.2.1.2.2.1.1.19',1),(3,1,'ifIndex','18','18','.1.3.6.1.2.1.2.2.1.1.18',1),(3,1,'ifIndex','17','17','.1.3.6.1.2.1.2.2.1.1.17',1),(3,1,'ifIndex','16','16','.1.3.6.1.2.1.2.2.1.1.16',1),(3,1,'ifIndex','15','15','.1.3.6.1.2.1.2.2.1.1.15',1),(3,1,'ifIndex','14','14','.1.3.6.1.2.1.2.2.1.1.14',1),(3,1,'ifIndex','13','13','.1.3.6.1.2.1.2.2.1.1.13',1),(3,1,'ifIndex','12','12','.1.3.6.1.2.1.2.2.1.1.12',1),(3,1,'ifIndex','11','11','.1.3.6.1.2.1.2.2.1.1.11',1),(3,1,'ifIndex','10','10','.1.3.6.1.2.1.2.2.1.1.10',1),(3,1,'ifIndex','9','9','.1.3.6.1.2.1.2.2.1.1.9',1),(3,1,'ifIndex','8','8','.1.3.6.1.2.1.2.2.1.1.8',1),(3,1,'ifIndex','7','7','.1.3.6.1.2.1.2.2.1.1.7',1),(3,1,'ifIndex','6','6','.1.3.6.1.2.1.2.2.1.1.6',1),(3,1,'ifIndex','5','5','.1.3.6.1.2.1.2.2.1.1.5',1),(3,1,'ifIndex','4','4','.1.3.6.1.2.1.2.2.1.1.4',1),(3,1,'ifIndex','3','3','.1.3.6.1.2.1.2.2.1.1.3',1),(3,1,'ifIndex','2','2','.1.3.6.1.2.1.2.2.1.1.2',1),(3,1,'ifIndex','1','1','.1.3.6.1.2.1.2.2.1.1.1',1),(3,1,'ifSpeed','1073741824','9','.1.3.6.1.2.1.2.2.1.5.9',1),(3,1,'ifSpeed','0','10','.1.3.6.1.2.1.2.2.1.5.10',1),(3,1,'ifSpeed','1000000000','11','.1.3.6.1.2.1.2.2.1.5.11',1),(3,1,'ifSpeed','100000','12','.1.3.6.1.2.1.2.2.1.5.12',1),(3,1,'ifSpeed','100000','13','.1.3.6.1.2.1.2.2.1.5.13',1),(3,1,'ifSpeed','0','14','.1.3.6.1.2.1.2.2.1.5.14',1),(3,1,'ifSpeed','100000','15','.1.3.6.1.2.1.2.2.1.5.15',1),(3,1,'ifSpeed','1000000000','16','.1.3.6.1.2.1.2.2.1.5.16',1),(3,1,'ifSpeed','1073741824','17','.1.3.6.1.2.1.2.2.1.5.17',1),(3,1,'ifSpeed','1073741824','18','.1.3.6.1.2.1.2.2.1.5.18',1),(3,1,'ifSpeed','1073741824','19','.1.3.6.1.2.1.2.2.1.5.19',1),(3,1,'ifSpeed','1000000000','20','.1.3.6.1.2.1.2.2.1.5.20',1),(3,1,'ifHwAddr','','1','.1.3.6.1.2.1.2.2.1.6.1',1),(3,1,'ifHwAddr','','2','.1.3.6.1.2.1.2.2.1.6.2',1),(3,1,'ifHwAddr','','3','.1.3.6.1.2.1.2.2.1.6.3',1),(3,1,'ifHwAddr','','4','.1.3.6.1.2.1.2.2.1.6.4',1),(3,1,'ifHwAddr','','5','.1.3.6.1.2.1.2.2.1.6.5',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','6','.1.3.6.1.2.1.2.2.1.6.6',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','7','.1.3.6.1.2.1.2.2.1.6.7',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','8','.1.3.6.1.2.1.2.2.1.6.8',1),(3,1,'ifHwAddr','20:41:53:59:4E:FF','9','.1.3.6.1.2.1.2.2.1.6.9',1),(3,1,'ifHwAddr','00:00:00:00:00:00:00:00','10','.1.3.6.1.2.1.2.2.1.6.10',1),(3,1,'ifHwAddr','08:00:27:FF:49:30','11','.1.3.6.1.2.1.2.2.1.6.11',1),(3,1,'ifHwAddr','00:00:00:00:00:00:00:E0','12','.1.3.6.1.2.1.2.2.1.6.12',1),(3,1,'ifHwAddr','00:00:00:00:00:00:00:E0','13','.1.3.6.1.2.1.2.2.1.6.13',1),(3,1,'ifHwAddr','08:00:27:2A:EB:5C','14','.1.3.6.1.2.1.2.2.1.6.14',1),(3,1,'ifHwAddr','00:00:00:00:00:00:00:E0','15','.1.3.6.1.2.1.2.2.1.6.15',1),(3,1,'ifHwAddr','08:00:27:FF:49:30','16','.1.3.6.1.2.1.2.2.1.6.16',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','17','.1.3.6.1.2.1.2.2.1.6.17',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','18','.1.3.6.1.2.1.2.2.1.6.18',1),(3,1,'ifHwAddr','B4:6E:20:52:41:53','19','.1.3.6.1.2.1.2.2.1.6.19',1),(3,1,'ifHwAddr','08:00:27:FF:49:30','20','.1.3.6.1.2.1.2.2.1.6.20',1),(3,1,'ifIP','10.11.14.4','11','.1.3.6.1.2.1.4.20.1.2.10.11.14.4',1),(3,1,'ifIP','127.0.0.1','1','.1.3.6.1.2.1.4.20.1.2.127.0.0.1',1),(3,8,'hrStorageIndex','1','1','',1),(3,8,'hrStorageIndex','2','2','',1),(3,8,'hrStorageIndex','3','3','',1),(3,8,'hrStorageIndex','4','4','',1),(3,8,'hrStorageIndex','5','5','',1),(3,8,'hrStorageIndex','6','6','',1),(3,8,'hrStorageIndex','7','7','',1),(3,8,'hrStorageIndex','8','8','',1),(3,8,'hrStorageDescr','A:','1','',1),(3,8,'hrStorageDescr','C: Label:  Serial Number c9ea0d','2','',1),(3,8,'hrStorageDescr','D: Label:VBOXADDITIONS_3.  Serial Number b89471fa','3','',1),(3,8,'hrStorageDescr','G: Label:Logs  Serial Number e037a6f1','4','',1),(3,8,'hrStorageDescr','J: Label:Web  Serial Number f831a43c','5','',1),(3,8,'hrStorageDescr','S: Label:Virtual Memory  Serial Number f02966cc','6','',1),(3,8,'hrStorageDescr','Virtual Memory','7','',1),(3,8,'hrStorageDescr','Physical Memory','8','',1),(3,8,'hrStorageAllocationUnits','0 Bytes','1','',1),(3,8,'hrStorageAllocationUnits','4096 Bytes','2','',1),(3,8,'hrStorageAllocationUnits','2048 Bytes','3','',1),(3,8,'hrStorageAllocationUnits','4096 Bytes','4','',1),(3,8,'hrStorageAllocationUnits','4096 Bytes','5','',1),(3,8,'hrStorageAllocationUnits','512 Bytes','6','',1),(3,8,'hrStorageAllocationUnits','65536 Bytes','7','',1),(3,8,'hrStorageAllocationUnits','65536 Bytes','8','',1),(3,9,'hrProcessorFrwID','0','0','',1),(4,1,'ifIndex','1','1','.1.3.6.1.2.1.2.2.1.1.1',1),(4,1,'ifIndex','2','2','.1.3.6.1.2.1.2.2.1.1.2',1),(4,1,'ifIndex','3','3','.1.3.6.1.2.1.2.2.1.1.3',1),(4,1,'ifIndex','4','4','.1.3.6.1.2.1.2.2.1.1.4',1),(4,1,'ifIndex','5','5','.1.3.6.1.2.1.2.2.1.1.5',1),(4,1,'ifIndex','6','6','.1.3.6.1.2.1.2.2.1.1.6',1),(4,1,'ifIndex','7','7','.1.3.6.1.2.1.2.2.1.1.7',1),(4,1,'ifIndex','8','8','.1.3.6.1.2.1.2.2.1.1.8',1),(4,1,'ifIndex','9','9','.1.3.6.1.2.1.2.2.1.1.9',1),(4,1,'ifIndex','10','10','.1.3.6.1.2.1.2.2.1.1.10',1),(4,1,'ifIndex','11','11','.1.3.6.1.2.1.2.2.1.1.11',1),(4,1,'ifIndex','12','12','.1.3.6.1.2.1.2.2.1.1.12',1),(4,1,'ifIndex','13','13','.1.3.6.1.2.1.2.2.1.1.13',1),(4,1,'ifIndex','14','14','.1.3.6.1.2.1.2.2.1.1.14',1),(4,1,'ifIndex','15','15','.1.3.6.1.2.1.2.2.1.1.15',1),(4,1,'ifIndex','16','16','.1.3.6.1.2.1.2.2.1.1.16',1),(4,1,'ifIndex','17','17','.1.3.6.1.2.1.2.2.1.1.17',1),(4,1,'ifIndex','18','18','.1.3.6.1.2.1.2.2.1.1.18',1),(4,1,'ifIndex','19','19','.1.3.6.1.2.1.2.2.1.1.19',1),(4,1,'ifIndex','20','20','.1.3.6.1.2.1.2.2.1.1.20',1),(4,1,'ifOperStatus','Up','1','.1.3.6.1.2.1.2.2.1.8.1',1),(4,1,'ifOperStatus','Up','2','.1.3.6.1.2.1.2.2.1.8.2',1),(4,1,'ifOperStatus','Up','3','.1.3.6.1.2.1.2.2.1.8.3',1),(4,1,'ifOperStatus','Up','4','.1.3.6.1.2.1.2.2.1.8.4',1),(4,1,'ifOperStatus','Up','5','.1.3.6.1.2.1.2.2.1.8.5',1),(4,1,'ifOperStatus','Up','6','.1.3.6.1.2.1.2.2.1.8.6',1),(4,1,'ifOperStatus','Up','7','.1.3.6.1.2.1.2.2.1.8.7',1),(4,1,'ifOperStatus','Up','8','.1.3.6.1.2.1.2.2.1.8.8',1),(4,1,'ifOperStatus','Up','9','.1.3.6.1.2.1.2.2.1.8.9',1),(4,1,'ifOperStatus','Down','10','.1.3.6.1.2.1.2.2.1.8.10',1),(4,1,'ifOperStatus','Up','11','.1.3.6.1.2.1.2.2.1.8.11',1),(4,1,'ifOperStatus','Down','12','.1.3.6.1.2.1.2.2.1.8.12',1),(4,1,'ifOperStatus','Down','13','.1.3.6.1.2.1.2.2.1.8.13',1),(4,1,'ifOperStatus','notPresent','14','.1.3.6.1.2.1.2.2.1.8.14',1),(4,1,'ifOperStatus','Down','15','.1.3.6.1.2.1.2.2.1.8.15',1),(4,1,'ifOperStatus','Up','16','.1.3.6.1.2.1.2.2.1.8.16',1),(4,1,'ifOperStatus','Up','17','.1.3.6.1.2.1.2.2.1.8.17',1),(4,1,'ifOperStatus','Up','18','.1.3.6.1.2.1.2.2.1.8.18',1),(4,1,'ifOperStatus','Up','19','.1.3.6.1.2.1.2.2.1.8.19',1),(4,1,'ifOperStatus','Up','20','.1.3.6.1.2.1.2.2.1.8.20',1),(4,1,'ifDescr','Software Loopback Interface 1','1','.1.3.6.1.2.1.2.2.1.2.1',1),(4,1,'ifDescr','WAN Miniport (SSTP)','2','.1.3.6.1.2.1.2.2.1.2.2',1),(4,1,'ifDescr','WAN Miniport (L2TP)','3','.1.3.6.1.2.1.2.2.1.2.3',1),(4,1,'ifDescr','WAN Miniport (PPTP)','4','.1.3.6.1.2.1.2.2.1.2.4',1),(4,1,'ifDescr','WAN Miniport (PPPOE)','5','.1.3.6.1.2.1.2.2.1.2.5',1),(4,1,'ifDescr','WAN Miniport (IPv6)','6','.1.3.6.1.2.1.2.2.1.2.6',1),(4,1,'ifDescr','WAN Miniport (Network Monitor)','7','.1.3.6.1.2.1.2.2.1.2.7',1),(4,1,'ifDescr','WAN Miniport (IP)','8','.1.3.6.1.2.1.2.2.1.2.8',1),(4,1,'ifDescr','RAS Async Adapter','9','.1.3.6.1.2.1.2.2.1.2.9',1),(4,1,'ifDescr','WAN Miniport (IKEv2)','10','.1.3.6.1.2.1.2.2.1.2.10',1),(4,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter','11','.1.3.6.1.2.1.2.2.1.2.11',1),(4,1,'ifDescr','Microsoft ISATAP Adapter','12','.1.3.6.1.2.1.2.2.1.2.12',1),(4,1,'ifDescr','Microsoft ISATAP Adapter #2','13','.1.3.6.1.2.1.2.2.1.2.13',1),(4,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter #2','14','.1.3.6.1.2.1.2.2.1.2.14',1),(4,1,'ifDescr','Microsoft ISATAP Adapter #3','15','.1.3.6.1.2.1.2.2.1.2.15',1),(4,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter-QoS Packet Scheduler-0000','16','.1.3.6.1.2.1.2.2.1.2.16',1),(4,1,'ifDescr','WAN Miniport (IPv6)-QoS Packet Scheduler-0000','17','.1.3.6.1.2.1.2.2.1.2.17',1),(4,1,'ifDescr','WAN Miniport (IP)-QoS Packet Scheduler-0000','18','.1.3.6.1.2.1.2.2.1.2.18',1),(4,1,'ifDescr','WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000','19','.1.3.6.1.2.1.2.2.1.2.19',1),(4,1,'ifDescr','Intel(R) PRO/1000 MT Desktop Adapter-WFP LightWeight Filter-0000','20','.1.3.6.1.2.1.2.2.1.2.20',1),(4,1,'ifName','loopback_0','1','.1.3.6.1.2.1.31.1.1.1.1.1',1),(4,1,'ifName','tunnel_0','2','.1.3.6.1.2.1.31.1.1.1.1.2',1),(4,1,'ifName','tunnel_2','3','.1.3.6.1.2.1.31.1.1.1.1.3',1),(4,1,'ifName','tunnel_3','4','.1.3.6.1.2.1.31.1.1.1.1.4',1),(4,1,'ifName','ppp_0','5','.1.3.6.1.2.1.31.1.1.1.1.5',1),(4,1,'ifName','ethernet_0','6','.1.3.6.1.2.1.31.1.1.1.1.6',1),(4,1,'ifName','ethernet_1','7','.1.3.6.1.2.1.31.1.1.1.1.7',1),(4,1,'ifName','ethernet_6','8','.1.3.6.1.2.1.31.1.1.1.1.8',1),(4,1,'ifName','ppp_1','9','.1.3.6.1.2.1.31.1.1.1.1.9',1),(4,1,'ifName','tunnel_1','10','.1.3.6.1.2.1.31.1.1.1.1.10',1),(4,1,'ifName','ethernet_5','11','.1.3.6.1.2.1.31.1.1.1.1.11',1),(4,1,'ifName','tunnel_4','12','.1.3.6.1.2.1.31.1.1.1.1.12',1),(4,1,'ifName','tunnel_5','13','.1.3.6.1.2.1.31.1.1.1.1.13',1),(4,1,'ifName','ethernet_9','14','.1.3.6.1.2.1.31.1.1.1.1.14',1),(4,1,'ifName','tunnel_6','15','.1.3.6.1.2.1.31.1.1.1.1.15',1),(4,1,'ifName','ethernet_2','16','.1.3.6.1.2.1.31.1.1.1.1.16',1),(4,1,'ifName','ethernet_3','17','.1.3.6.1.2.1.31.1.1.1.1.17',1),(4,1,'ifName','ethernet_4','18','.1.3.6.1.2.1.31.1.1.1.1.18',1),(4,1,'ifName','ethernet_7','19','.1.3.6.1.2.1.31.1.1.1.1.19',1),(4,1,'ifName','ethernet_8','20','.1.3.6.1.2.1.31.1.1.1.1.20',1),(4,1,'ifAlias','Loopback Pseudo-Interface 1','1','.1.3.6.1.2.1.31.1.1.1.18.1',1),(4,1,'ifAlias','Local Area Connection*','2','.1.3.6.1.2.1.31.1.1.1.18.2',1),(4,1,'ifAlias','Local Area Connection* 3','3','.1.3.6.1.2.1.31.1.1.1.18.3',1),(4,1,'ifAlias','Local Area Connection* 4','4','.1.3.6.1.2.1.31.1.1.1.18.4',1),(4,1,'ifAlias','Local Area Connection* 5','5','.1.3.6.1.2.1.31.1.1.1.18.5',1),(4,1,'ifAlias','Local Area Connection* 6','6','.1.3.6.1.2.1.31.1.1.1.18.6',1),(4,1,'ifAlias','Local Area Connection* 7','7','.1.3.6.1.2.1.31.1.1.1.18.7',1),(4,1,'ifAlias','Local Area Connection* 8','8','.1.3.6.1.2.1.31.1.1.1.18.8',1),(4,1,'ifAlias','Local Area Connection* 10','9','.1.3.6.1.2.1.31.1.1.1.18.9',1),(4,1,'ifAlias','Local Area Connection* 2','10','.1.3.6.1.2.1.31.1.1.1.18.10',1),(4,1,'ifAlias','Local Area Connection','11','.1.3.6.1.2.1.31.1.1.1.18.11',1),(4,1,'ifAlias','Reusable ISATAP Interface {EF0C3D3D-9398-4D1D-A52D-F839A37B6267}','12','.1.3.6.1.2.1.31.1.1.1.18.12',1),(4,1,'ifAlias','Reusable ISATAP Interface {13623304-6EB5-4121-971A-8D274A5D10B4}','13','.1.3.6.1.2.1.31.1.1.1.18.13',1),(4,1,'ifAlias','Local Area Connection 2','14','.1.3.6.1.2.1.31.1.1.1.18.14',1),(4,1,'ifAlias','isatap.titansoft.com.sg','15','.1.3.6.1.2.1.31.1.1.1.18.15',1),(4,1,'ifAlias','Local Area Connection-QoS Packet Scheduler-0000','16','.1.3.6.1.2.1.31.1.1.1.18.16',1),(4,1,'ifAlias','Local Area Connection* 6-QoS Packet Scheduler-0000','17','.1.3.6.1.2.1.31.1.1.1.18.17',1),(4,1,'ifAlias','Local Area Connection* 8-QoS Packet Scheduler-0000','18','.1.3.6.1.2.1.31.1.1.1.18.18',1),(4,1,'ifAlias','Local Area Connection* 7-QoS Packet Scheduler-0000','19','.1.3.6.1.2.1.31.1.1.1.18.19',1),(4,1,'ifAlias','Local Area Connection-WFP LightWeight Filter-0000','20','.1.3.6.1.2.1.31.1.1.1.18.20',1),(4,1,'ifType','softwareLoopback(24)','1','.1.3.6.1.2.1.2.2.1.3.1',1),(4,1,'ifType','tunnel(131)','2','.1.3.6.1.2.1.2.2.1.3.2',1),(4,1,'ifType','tunnel(131)','3','.1.3.6.1.2.1.2.2.1.3.3',1),(4,1,'ifType','tunnel(131)','4','.1.3.6.1.2.1.2.2.1.3.4',1),(4,1,'ifType','ppp(23)','5','.1.3.6.1.2.1.2.2.1.3.5',1),(4,1,'ifType','ethernetCsmacd(6)','6','.1.3.6.1.2.1.2.2.1.3.6',1),(4,1,'ifType','ethernetCsmacd(6)','7','.1.3.6.1.2.1.2.2.1.3.7',1),(4,1,'ifType','ethernetCsmacd(6)','8','.1.3.6.1.2.1.2.2.1.3.8',1),(4,1,'ifType','ppp(23)','9','.1.3.6.1.2.1.2.2.1.3.9',1),(4,1,'ifType','tunnel(131)','10','.1.3.6.1.2.1.2.2.1.3.10',1),(4,1,'ifType','ethernetCsmacd(6)','11','.1.3.6.1.2.1.2.2.1.3.11',1),(4,1,'ifType','tunnel(131)','12','.1.3.6.1.2.1.2.2.1.3.12',1),(4,1,'ifType','tunnel(131)','13','.1.3.6.1.2.1.2.2.1.3.13',1),(4,1,'ifType','ethernetCsmacd(6)','14','.1.3.6.1.2.1.2.2.1.3.14',1),(4,1,'ifType','tunnel(131)','15','.1.3.6.1.2.1.2.2.1.3.15',1),(4,1,'ifType','ethernetCsmacd(6)','16','.1.3.6.1.2.1.2.2.1.3.16',1),(4,1,'ifType','ethernetCsmacd(6)','17','.1.3.6.1.2.1.2.2.1.3.17',1),(4,1,'ifType','ethernetCsmacd(6)','18','.1.3.6.1.2.1.2.2.1.3.18',1),(4,1,'ifType','ethernetCsmacd(6)','19','.1.3.6.1.2.1.2.2.1.3.19',1),(4,1,'ifType','ethernetCsmacd(6)','20','.1.3.6.1.2.1.2.2.1.3.20',1),(4,1,'ifSpeed','1073741824','1','.1.3.6.1.2.1.2.2.1.5.1',1),(4,1,'ifSpeed','1073741824','2','.1.3.6.1.2.1.2.2.1.5.2',1),(4,1,'ifSpeed','1073741824','3','.1.3.6.1.2.1.2.2.1.5.3',1),(4,1,'ifSpeed','1073741824','4','.1.3.6.1.2.1.2.2.1.5.4',1),(4,1,'ifSpeed','1073741824','5','.1.3.6.1.2.1.2.2.1.5.5',1),(4,1,'ifSpeed','1073741824','6','.1.3.6.1.2.1.2.2.1.5.6',1),(4,1,'ifSpeed','1073741824','7','.1.3.6.1.2.1.2.2.1.5.7',1),(4,1,'ifSpeed','1073741824','8','.1.3.6.1.2.1.2.2.1.5.8',1),(4,1,'ifSpeed','1073741824','9','.1.3.6.1.2.1.2.2.1.5.9',1),(4,1,'ifSpeed','0','10','.1.3.6.1.2.1.2.2.1.5.10',1),(4,1,'ifSpeed','1000000000','11','.1.3.6.1.2.1.2.2.1.5.11',1),(4,1,'ifSpeed','100000','12','.1.3.6.1.2.1.2.2.1.5.12',1),(4,1,'ifSpeed','100000','13','.1.3.6.1.2.1.2.2.1.5.13',1),(4,1,'ifSpeed','0','14','.1.3.6.1.2.1.2.2.1.5.14',1),(4,1,'ifSpeed','100000','15','.1.3.6.1.2.1.2.2.1.5.15',1),(4,1,'ifSpeed','1000000000','16','.1.3.6.1.2.1.2.2.1.5.16',1),(4,1,'ifSpeed','1073741824','17','.1.3.6.1.2.1.2.2.1.5.17',1),(4,1,'ifSpeed','1073741824','18','.1.3.6.1.2.1.2.2.1.5.18',1),(4,1,'ifSpeed','1073741824','19','.1.3.6.1.2.1.2.2.1.5.19',1),(4,1,'ifSpeed','1000000000','20','.1.3.6.1.2.1.2.2.1.5.20',1),(4,1,'ifHwAddr','','1','.1.3.6.1.2.1.2.2.1.6.1',1),(4,1,'ifHwAddr','','2','.1.3.6.1.2.1.2.2.1.6.2',1),(4,1,'ifHwAddr','','3','.1.3.6.1.2.1.2.2.1.6.3',1),(4,1,'ifHwAddr','','4','.1.3.6.1.2.1.2.2.1.6.4',1),(4,1,'ifHwAddr','','5','.1.3.6.1.2.1.2.2.1.6.5',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','6','.1.3.6.1.2.1.2.2.1.6.6',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','7','.1.3.6.1.2.1.2.2.1.6.7',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','8','.1.3.6.1.2.1.2.2.1.6.8',1),(4,1,'ifHwAddr','20:41:53:59:4E:FF','9','.1.3.6.1.2.1.2.2.1.6.9',1),(4,1,'ifHwAddr','00:00:00:00:00:00:00:00','10','.1.3.6.1.2.1.2.2.1.6.10',1),(4,1,'ifHwAddr','08:00:27:FF:49:30','11','.1.3.6.1.2.1.2.2.1.6.11',1),(4,1,'ifHwAddr','00:00:00:00:00:00:00:E0','12','.1.3.6.1.2.1.2.2.1.6.12',1),(4,1,'ifHwAddr','00:00:00:00:00:00:00:E0','13','.1.3.6.1.2.1.2.2.1.6.13',1),(4,1,'ifHwAddr','08:00:27:2A:EB:5C','14','.1.3.6.1.2.1.2.2.1.6.14',1),(4,1,'ifHwAddr','00:00:00:00:00:00:00:E0','15','.1.3.6.1.2.1.2.2.1.6.15',1),(4,1,'ifHwAddr','08:00:27:FF:49:30','16','.1.3.6.1.2.1.2.2.1.6.16',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','17','.1.3.6.1.2.1.2.2.1.6.17',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','18','.1.3.6.1.2.1.2.2.1.6.18',1),(4,1,'ifHwAddr','B4:6E:20:52:41:53','19','.1.3.6.1.2.1.2.2.1.6.19',1),(4,1,'ifHwAddr','08:00:27:FF:49:30','20','.1.3.6.1.2.1.2.2.1.6.20',1),(4,1,'ifIP','10.11.14.4','11','.1.3.6.1.2.1.4.20.1.2.10.11.14.4',1),(4,1,'ifIP','127.0.0.1','1','.1.3.6.1.2.1.4.20.1.2.127.0.0.1',1),(4,8,'hrStorageIndex','1','1','',1),(4,8,'hrStorageIndex','2','2','',1),(4,8,'hrStorageIndex','3','3','',1),(4,8,'hrStorageIndex','4','4','',1),(4,8,'hrStorageIndex','5','5','',1),(4,8,'hrStorageIndex','6','6','',1),(4,8,'hrStorageIndex','7','7','',1),(4,8,'hrStorageIndex','8','8','',1),(4,8,'hrStorageDescr','A:','1','',1),(4,8,'hrStorageDescr','C: Label:  Serial Number c9ea0d','2','',1),(4,8,'hrStorageDescr','D: Label:VBOXADDITIONS_3.  Serial Number b89471fa','3','',1),(4,8,'hrStorageDescr','G: Label:Logs  Serial Number e037a6f1','4','',1),(4,8,'hrStorageDescr','J: Label:Web  Serial Number f831a43c','5','',1),(4,8,'hrStorageDescr','S: Label:Virtual Memory  Serial Number f02966cc','6','',1),(4,8,'hrStorageDescr','Virtual Memory','7','',1),(4,8,'hrStorageDescr','Physical Memory','8','',1),(4,8,'hrStorageAllocationUnits','0 Bytes','1','',1),(4,8,'hrStorageAllocationUnits','4096 Bytes','2','',1),(4,8,'hrStorageAllocationUnits','2048 Bytes','3','',1),(4,8,'hrStorageAllocationUnits','4096 Bytes','4','',1),(4,8,'hrStorageAllocationUnits','4096 Bytes','5','',1),(4,8,'hrStorageAllocationUnits','512 Bytes','6','',1),(4,8,'hrStorageAllocationUnits','65536 Bytes','7','',1),(4,8,'hrStorageAllocationUnits','65536 Bytes','8','',1),(4,9,'hrProcessorFrwID','0','0','',1);
/*!40000 ALTER TABLE `host_snmp_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_snmp_query`
--

DROP TABLE IF EXISTS `host_snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_snmp_query` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sort_field` varchar(50) NOT NULL DEFAULT '',
  `title_format` varchar(50) NOT NULL DEFAULT '',
  `reindex_method` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_id`,`snmp_query_id`),
  KEY `host_id` (`host_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_snmp_query`
--

LOCK TABLES `host_snmp_query` WRITE;
/*!40000 ALTER TABLE `host_snmp_query` DISABLE KEYS */;
INSERT INTO `host_snmp_query` VALUES (1,6,'dskDevice','|query_dskDevice|',1),(4,1,'ifDescr','|query_ifDescr|',1),(3,9,'hrProcessorFrwID','CPU#|query_hrProcessorFrwID|',1),(3,8,'hrStorageDescr','|query_hrStorageDescr|',1),(1,1,'','|query_|',1),(3,1,'ifDescr','|query_ifDescr|',1),(4,8,'hrStorageDescr','|query_hrStorageDescr|',1),(4,9,'hrProcessorFrwID','CPU#|query_hrProcessorFrwID|',1);
/*!40000 ALTER TABLE `host_snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template`
--

DROP TABLE IF EXISTS `host_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template`
--

LOCK TABLES `host_template` WRITE;
/*!40000 ALTER TABLE `host_template` DISABLE KEYS */;
INSERT INTO `host_template` VALUES (1,'4855b0e3e553085ed57219690285f91f','Generic SNMP-enabled Host'),(3,'07d3fe6a52915f99e642d22e27d967a4','ucd/net SNMP Host'),(4,'4e5dc8dd115264c2e9f3adb725c29413','Karlnet Wireless Bridge'),(5,'cae6a879f86edacb2471055783bec6d0','Cisco Router'),(6,'9ef418b4251751e09c3c416704b01b01','Netware 4/5 Server'),(7,'5b8300be607dce4f030b026a381b91cd','Windows 2000/XP Host'),(8,'2d3e47f416738c2d22c87c40218cc55e','Local Linux Machine');
/*!40000 ALTER TABLE `host_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template_graph`
--

DROP TABLE IF EXISTS `host_template_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template_graph` (
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_template_id`,`graph_template_id`),
  KEY `host_template_id` (`host_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template_graph`
--

LOCK TABLES `host_template_graph` WRITE;
/*!40000 ALTER TABLE `host_template_graph` DISABLE KEYS */;
INSERT INTO `host_template_graph` VALUES (3,4),(3,11),(3,13),(5,18),(6,14),(6,16),(6,17),(6,30),(7,28),(7,29),(8,8),(8,9),(8,10),(8,12);
/*!40000 ALTER TABLE `host_template_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template_snmp_query`
--

DROP TABLE IF EXISTS `host_template_snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template_snmp_query` (
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_template_id`,`snmp_query_id`),
  KEY `host_template_id` (`host_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template_snmp_query`
--

LOCK TABLES `host_template_snmp_query` WRITE;
/*!40000 ALTER TABLE `host_template_snmp_query` DISABLE KEYS */;
INSERT INTO `host_template_snmp_query` VALUES (1,1),(3,1),(3,2),(4,1),(4,3),(5,1),(6,1),(6,4),(6,7),(7,1),(7,8),(7,9),(8,6);
/*!40000 ALTER TABLE `host_template_snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller`
--

DROP TABLE IF EXISTS `poller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` varchar(250) NOT NULL DEFAULT '',
  `ip_address` int(11) unsigned NOT NULL DEFAULT '0',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller`
--

LOCK TABLES `poller` WRITE;
/*!40000 ALTER TABLE `poller` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_command`
--

DROP TABLE IF EXISTS `poller_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_command` (
  `poller_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `command` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`poller_id`,`action`,`command`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_command`
--

LOCK TABLES `poller_command` WRITE;
/*!40000 ALTER TABLE `poller_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_item`
--

DROP TABLE IF EXISTS `poller_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_item` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poller_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `host_id` mediumint(8) NOT NULL DEFAULT '0',
  `action` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `present` tinyint(4) NOT NULL DEFAULT '1',
  `hostname` varchar(250) NOT NULL DEFAULT '',
  `snmp_community` varchar(100) NOT NULL DEFAULT '',
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `snmp_username` varchar(50) NOT NULL DEFAULT '',
  `snmp_password` varchar(50) NOT NULL DEFAULT '',
  `snmp_auth_protocol` varchar(5) NOT NULL DEFAULT '',
  `snmp_priv_passphrase` varchar(200) NOT NULL DEFAULT '',
  `snmp_priv_protocol` varchar(6) NOT NULL DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_timeout` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `rrd_path` varchar(255) NOT NULL DEFAULT '',
  `rrd_num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rrd_step` mediumint(8) NOT NULL DEFAULT '300',
  `rrd_next_step` mediumint(8) NOT NULL DEFAULT '0',
  `arg1` text,
  `arg2` varchar(255) DEFAULT NULL,
  `arg3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`),
  KEY `local_data_id` (`local_data_id`),
  KEY `host_id` (`host_id`),
  KEY `rrd_next_step` (`rrd_next_step`),
  KEY `action` (`action`),
  KEY `present` (`present`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_item`
--

LOCK TABLES `poller_item` WRITE;
/*!40000 ALTER TABLE `poller_item` DISABLE KEYS */;
INSERT INTO `poller_item` VALUES (3,0,1,1,1,'127.0.0.1','public',0,'','','MD5','','DES','',161,500,'mem_buffers','/usr/local/share/cacti/rra/localhost_mem_buffers_3.rrd',1,300,0,'perl /usr/local/share/cacti/scripts/linux_memory.pl MemFree:','',''),(4,0,1,1,1,'127.0.0.1','public',0,'','','MD5','','DES','',161,500,'mem_swap','/usr/local/share/cacti/rra/localhost_mem_swap_4.rrd',1,300,0,'perl /usr/local/share/cacti/scripts/linux_memory.pl SwapFree:','',''),(5,0,1,1,1,'127.0.0.1','public',0,'','','MD5','','DES','',161,500,'','/usr/local/share/cacti/rra/localhost_load_1min_5.rrd',1,300,0,'perl /usr/local/share/cacti/scripts/loadavg_multi.pl','',''),(6,0,1,1,1,'127.0.0.1','public',0,'','','MD5','','DES','',161,500,'users','/usr/local/share/cacti/rra/localhost_users_6.rrd',1,300,0,'perl /usr/local/share/cacti/scripts/unix_users.pl ','',''),(7,0,1,1,1,'127.0.0.1','public',0,'','','MD5','','DES','',161,500,'proc','/usr/local/share/cacti/rra/localhost_proc_7.rrd',1,300,0,'perl /usr/local/share/cacti/scripts/unix_processes.pl','',''),(73,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test3_hdd_used_73.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get total 3','',''),(72,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test3_hdd_used_72.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get used 2','',''),(71,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test3_hdd_used_71.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get used 1','',''),(73,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test3_hdd_used_73.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get used 3','',''),(70,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_70.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.20','',''),(70,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_70.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.20','',''),(69,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_69.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.19','',''),(68,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_68.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.18','',''),(69,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_69.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.19','',''),(68,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_68.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.18','',''),(67,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_67.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.17','',''),(67,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_67.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.17','',''),(66,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_66.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.16','',''),(66,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_66.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.16','',''),(65,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_65.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.15','',''),(65,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_65.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.15','',''),(64,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_64.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.14','',''),(63,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_63.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.13','',''),(64,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_64.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.14','',''),(63,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_63.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.13','',''),(62,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_62.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.12','',''),(61,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_61.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.11','',''),(62,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_62.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.12','',''),(61,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_61.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.11','',''),(60,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_60.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.10','',''),(60,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_60.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.10','',''),(59,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_59.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.9','',''),(59,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_59.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.9','',''),(58,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_58.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.8','',''),(58,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_58.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.8','',''),(57,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_57.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.7','',''),(57,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_57.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.7','',''),(56,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_56.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.6','',''),(56,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_56.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.6','',''),(55,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_55.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.5','',''),(55,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_55.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.5','',''),(54,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_54.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.4','',''),(54,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_54.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.4','',''),(53,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_53.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.3','',''),(53,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_53.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.3','',''),(52,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_52.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.2','',''),(52,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_52.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.2','',''),(51,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_out','/usr/local/share/cacti/rra/test2_traffic_in_51.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.16.1','',''),(51,0,3,0,1,'10.11.14.4','public',1,'','','','','','',161,500,'traffic_in','/usr/local/share/cacti/rra/test2_traffic_in_51.rrd',2,300,0,'.1.3.6.1.2.1.2.2.1.10.1','',''),(50,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_50.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 8','',''),(50,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_50.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 8','',''),(49,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_49.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 7','',''),(49,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_49.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 7','',''),(48,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_48.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 6','',''),(48,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_48.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 6','',''),(47,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_47.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 5','',''),(71,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test3_hdd_used_71.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get total 1','',''),(47,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_47.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 5','',''),(46,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_46.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 4','',''),(46,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_46.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 4','',''),(45,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_45.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 3','',''),(72,0,4,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test3_hdd_used_72.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 4 1:161:500:1:10:public:::::: get total 2','',''),(45,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_45.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 3','',''),(44,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_44.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 2','',''),(43,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_43.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 1','',''),(43,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_total','/usr/local/share/cacti/rra/test2_hdd_used_43.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get total 1','',''),(44,0,3,2,1,'10.11.14.4','public',1,'','','','','','',161,500,'hdd_used','/usr/local/share/cacti/rra/test2_hdd_used_44.rrd',2,300,0,'/usr/local/share/cacti/scripts/ss_host_disk.php ss_host_disk 10.11.14.4 3 1:161:500:1:10:public:::::: get used 2','','');
/*!40000 ALTER TABLE `poller_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_output`
--

DROP TABLE IF EXISTS `poller_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_output` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text NOT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_output`
--

LOCK TABLES `poller_output` WRITE;
/*!40000 ALTER TABLE `poller_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_reindex`
--

DROP TABLE IF EXISTS `poller_reindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_reindex` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `present` tinyint(4) NOT NULL DEFAULT '1',
  `op` char(1) NOT NULL DEFAULT '',
  `assert_value` varchar(100) NOT NULL DEFAULT '',
  `arg1` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`host_id`,`data_query_id`,`arg1`),
  KEY `present` (`present`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_reindex`
--

LOCK TABLES `poller_reindex` WRITE;
/*!40000 ALTER TABLE `poller_reindex` DISABLE KEYS */;
INSERT INTO `poller_reindex` VALUES (4,8,0,1,'<','2354003','.1.3.6.1.2.1.1.3.0'),(4,1,0,1,'<','2354003','.1.3.6.1.2.1.1.3.0'),(3,9,0,1,'<','2353862','.1.3.6.1.2.1.1.3.0'),(3,8,0,1,'<','2353862','.1.3.6.1.2.1.1.3.0'),(3,1,0,1,'<','2353862','.1.3.6.1.2.1.1.3.0'),(4,9,0,1,'<','2354003','.1.3.6.1.2.1.1.3.0');
/*!40000 ALTER TABLE `poller_reindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_time`
--

DROP TABLE IF EXISTS `poller_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_time` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `poller_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_time`
--

LOCK TABLES `poller_time` WRITE;
/*!40000 ALTER TABLE `poller_time` DISABLE KEYS */;
INSERT INTO `poller_time` VALUES (1,28006,0,'2012-09-25 15:55:00','2012-09-25 15:55:03');
/*!40000 ALTER TABLE `poller_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rra`
--

DROP TABLE IF EXISTS `rra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rra` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `x_files_factor` double NOT NULL DEFAULT '0.1',
  `steps` mediumint(8) DEFAULT '1',
  `rows` int(12) NOT NULL DEFAULT '600',
  `timespan` int(12) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rra`
--

LOCK TABLES `rra` WRITE;
/*!40000 ALTER TABLE `rra` DISABLE KEYS */;
INSERT INTO `rra` VALUES (1,'c21df5178e5c955013591239eb0afd46','Daily (5 Minute Average)',0.5,1,600,86400),(2,'0d9c0af8b8acdc7807943937b3208e29','Weekly (30 Minute Average)',0.5,6,700,604800),(3,'6fc2d038fb42950138b0ce3e9874cc60','Monthly (2 Hour Average)',0.5,24,775,2678400),(4,'e36f3adb9f152adfa5dc50fd2b23337e','Yearly (1 Day Average)',0.5,288,797,33053184),(5,'283ea2bf1634d92ce081ec82a634f513','Hourly (1 Minute Average)',0.5,1,500,14400);
/*!40000 ALTER TABLE `rra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rra_cf`
--

DROP TABLE IF EXISTS `rra_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rra_cf` (
  `rra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consolidation_function_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rra_id`,`consolidation_function_id`),
  KEY `rra_id` (`rra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rra_cf`
--

LOCK TABLES `rra_cf` WRITE;
/*!40000 ALTER TABLE `rra_cf` DISABLE KEYS */;
INSERT INTO `rra_cf` VALUES (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,3),(5,1),(5,3);
/*!40000 ALTER TABLE `rra_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('path_rrdtool','/usr/local/bin/rrdtool'),('path_php_binary','/usr/local/bin/php'),('path_snmpwalk','/usr/local/bin/snmpwalk'),('path_snmpget','/usr/local/bin/snmpget'),('path_snmpbulkwalk','/usr/local/bin/snmpbulkwalk'),('path_snmpgetnext','/usr/local/bin/snmpgetnext'),('path_cactilog','/usr/local/share/cacti/log/cacti.log'),('snmp_version','net-snmp'),('rrdtool_version','rrd-1.4.x'),('path_rrdtool_default_font',''),('path_spine',''),('extended_paths',''),('poller_lastrun','1348559700'),('path_webroot','/usr/local/share/cacti'),('date','2012-09-25 15:55:00'),('stats_poller','Time:2.3821 Method:cmd.php Processes:1 Threads:N/A Hosts:4 HostsPerProcess:4 DataSources:67 RRDsProcessed:36'),('stats_recache','RecacheTime:0.0 HostsRecached:0');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_graphs`
--

DROP TABLE IF EXISTS `settings_graphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_graphs` (
  `user_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_graphs`
--

LOCK TABLES `settings_graphs` WRITE;
/*!40000 ALTER TABLE `settings_graphs` DISABLE KEYS */;
INSERT INTO `settings_graphs` VALUES (1,'default_rra_id','1'),(1,'default_view_mode','1'),(1,'default_timespan','7'),(1,'timespan_sel','on'),(1,'default_timeshift','7'),(1,'allow_graph_dates_in_future','on'),(1,'first_weekdayid','1'),(1,'day_shift_start','07:00'),(1,'day_shift_end','18:00'),(1,'default_date_format','4'),(1,'default_datechar','1'),(1,'page_refresh','300'),(1,'default_height','100'),(1,'default_width','300'),(1,'num_columns','2'),(1,'thumbnail_section_preview','on'),(1,'thumbnail_section_tree_1','on'),(1,'thumbnail_section_tree_2','on'),(1,'default_tree_id','1'),(1,'default_tree_view_mode','2'),(1,'treeview_graphs_per_page','10'),(1,'default_dual_pane_width','200'),(1,'expand_hosts','on'),(1,'show_graph_title','on'),(1,'preview_graphs_per_page','10'),(1,'list_graphs_per_page','30'),(1,'custom_fonts',''),(1,'title_size','12'),(1,'title_font',''),(1,'legend_size','10'),(1,'legend_font',''),(1,'axis_size','8'),(1,'axis_font',''),(1,'unit_size','8'),(1,'unit_font','');
/*!40000 ALTER TABLE `settings_graphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_tree`
--

DROP TABLE IF EXISTS `settings_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_tree` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_tree_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`graph_tree_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_tree`
--

LOCK TABLES `settings_tree` WRITE;
/*!40000 ALTER TABLE `settings_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query`
--

DROP TABLE IF EXISTS `snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `xml_path` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query`
--

LOCK TABLES `snmp_query` WRITE;
/*!40000 ALTER TABLE `snmp_query` DISABLE KEYS */;
INSERT INTO `snmp_query` VALUES (1,'d75e406fdeca4fcef45b8be3a9a63cbc','<path_cacti>/resource/snmp_queries/interface.xml','SNMP - Interface Statistics','Queries a host for a list of monitorable interfaces',0,2),(2,'3c1b27d94ad208a0090f293deadde753','<path_cacti>/resource/snmp_queries/net-snmp_disk.xml','ucd/net -  Get Monitored Partitions','Retrieves a list of monitored partitions/disks from a net-snmp enabled host.',0,2),(3,'59aab7b0feddc7860002ed9303085ba5','<path_cacti>/resource/snmp_queries/kbridge.xml','Karlnet - Wireless Bridge Statistics','Gets information about the wireless connectivity of each station from a Karlnet bridge.',0,2),(4,'ad06f46e22e991cb47c95c7233cfaee8','<path_cacti>/resource/snmp_queries/netware_disk.xml','Netware - Get Available Volumes','Retrieves a list of volumes from a Netware server.',0,2),(6,'8ffa36c1864124b38bcda2ae9bd61f46','<path_cacti>/resource/script_queries/unix_disk.xml','Unix - Get Mounted Partitions','Queries a list of mounted partitions on a unix-based host with the',0,11),(7,'30ec734bc0ae81a3d995be82c73f46c1','<path_cacti>/resource/snmp_queries/netware_cpu.xml','Netware - Get Processor Information','Gets information about running processors in a Netware server',0,2),(8,'9343eab1f4d88b0e61ffc9d020f35414','<path_cacti>/resource/script_server/host_disk.xml','SNMP - Get Mounted Partitions','Gets a list of partitions using SNMP',0,12),(9,'0d1ab53fe37487a5d0b9e1d3ee8c1d0d','<path_cacti>/resource/script_server/host_cpu.xml','SNMP - Get Processor Information','Gets usage for each processor in the system using the host MIB.',0,12);
/*!40000 ALTER TABLE `snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph`
--

DROP TABLE IF EXISTS `snmp_query_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph`
--

LOCK TABLES `snmp_query_graph` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph` DISABLE KEYS */;
INSERT INTO `snmp_query_graph` VALUES (2,'a4b829746fb45e35e10474c36c69c0cf',1,'In/Out Errors/Discarded Packets',22),(3,'01e33224f8b15997d3d09d6b1bf83e18',1,'In/Out Non-Unicast Packets',24),(4,'1e6edee3115c42d644dbd014f0577066',1,'In/Out Unicast Packets',23),(6,'da43655bf1f641b07579256227806977',2,'Available/Used Disk Space',3),(7,'1cc468ef92a5779d37a26349e27ef3ba',3,'Wireless Levels',5),(8,'bef2dc94bc84bf91827f45424aac8d2a',3,'Wireless Transmissions',6),(9,'ab93b588c29731ab15db601ca0bc9dec',1,'In/Out Bytes (64-bit Counters)',25),(10,'5a5ce35edb4b195cbde99fd0161dfb4e',4,'Volume Information (free, freeable space)',19),(11,'c1c2cfd33eaf5064300e92e26e20bc56',4,'Directory Information (total/available entries)',20),(13,'ae34f5f385bed8c81a158bf3030f1089',1,'In/Out Bits',2),(14,'1e16a505ddefb40356221d7a50619d91',1,'In/Out Bits (64-bit Counters)',2),(15,'a0b3e7b63c2e66f9e1ea24a16ff245fc',6,'Available Disk Space',21),(16,'d1e0d9b8efd4af98d28ce2aad81a87e7',1,'In/Out Bytes',25),(17,'f6db4151aa07efa401a0af6c9b871844',7,'Get Processor Utilization',15),(18,'46c4ee688932cf6370459527eceb8ef3',8,'Available Disk Space',26),(19,'4a515b61441ea5f27ab7dee6c3cb7818',9,'Get Processor Utilization',27),(20,'ed7f68175d7bb83db8ead332fc945720',1,'In/Out Bits with 95th Percentile',31),(21,'f85386cd2fc94634ef167c7f1e5fbcd0',1,'In/Out Bits with Total Bandwidth',32),(22,'7d309bf200b6e3cdb59a33493c2e58e0',1,'In/Out Bytes with Total Bandwidth',33);
/*!40000 ALTER TABLE `snmp_query_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_rrd`
--

DROP TABLE IF EXISTS `snmp_query_graph_rrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_rrd` (
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_rrd_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_field_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`snmp_query_graph_id`,`data_template_id`,`data_template_rrd_id`),
  KEY `data_template_rrd_id` (`data_template_rrd_id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_rrd`
--

LOCK TABLES `snmp_query_graph_rrd` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_rrd` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_rrd` VALUES (2,38,47,'ifInDiscards'),(3,40,52,'ifOutNUcastPkts'),(3,40,53,'ifInNUcastPkts'),(4,39,48,'ifInUcastPkts'),(2,38,51,'ifOutErrors'),(6,3,3,'dskAvail'),(6,3,4,'dskUsed'),(7,7,8,'kbWirelessStationExclHellos'),(7,8,9,'kbWirelessStationExclHellos'),(8,10,11,'kbWirelessStationExclHellos'),(8,9,10,'kbWirelessStationExclHellos'),(9,41,55,'ifHCOutOctets'),(9,41,54,'ifHCInOctets'),(10,35,38,'nwVolSize'),(10,35,40,'nwVolFreeable'),(10,35,39,'nwVolFree'),(11,36,42,'nwVolTotalDirEntries'),(11,36,43,'nwVolUsedDirEntries'),(2,38,50,'ifOutDiscards'),(2,38,46,'ifInErrors'),(13,41,54,'ifInOctets'),(14,41,54,'ifHCInOctets'),(14,41,55,'ifHCOutOctets'),(13,41,55,'ifOutOctets'),(4,39,49,'ifOutUcastPkts'),(15,37,44,'dskAvailable'),(16,41,54,'ifInOctets'),(16,41,55,'ifOutOctets'),(15,37,56,'dskUsed'),(17,42,76,'nwhrProcessorUtilization'),(18,43,78,'hrStorageUsed'),(18,43,92,'hrStorageSize'),(19,44,79,'hrProcessorLoad'),(20,41,55,'ifOutOctets'),(20,41,54,'ifInOctets'),(21,41,55,'ifOutOctets'),(21,41,54,'ifInOctets'),(22,41,55,'ifOutOctets'),(22,41,54,'ifInOctets');
/*!40000 ALTER TABLE `snmp_query_graph_rrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_rrd_sv`
--

DROP TABLE IF EXISTS `snmp_query_graph_rrd_sv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_rrd_sv` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(100) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`),
  KEY `data_template_id` (`data_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_rrd_sv`
--

LOCK TABLES `snmp_query_graph_rrd_sv` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_rrd_sv` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_rrd_sv` VALUES (10,'5d3a8b2f4a454e5b0a1494e00fe7d424',6,3,1,'name','|host_description| - Partition - |query_dskDevice|'),(11,'d0b49af67a83c258ef1eab3780f7b3dc',7,7,1,'name','|host_description| - Wireless Noise Level - |query_kbWirelessStationName|'),(12,'bf6b966dc369f3df2ea640a90845e94c',7,8,1,'name','|host_description| - Wireless Signal Level - |query_kbWirelessStationName|'),(13,'5c3616603a7ac9d0c1cb9556b377a74f',8,10,1,'name','|host_description| - Wireless Re-Transmissions - |query_kbWirelessStationName|'),(14,'080f0022f77044a512b083e3a8304e8b',8,9,1,'name','|host_description| - Wireless Transmissions - |query_kbWirelessStationName|'),(30,'8132fa9c446e199732f0102733cb1714',11,36,1,'name','|host_description| - Directories - |query_nwVolPhysicalName|'),(29,'8fc9a94a5f6ef902a3de0fa7549e7476',10,35,1,'name','|host_description| - Volumes - |query_nwVolPhysicalName|'),(80,'27eb220995925e1a5e0e41b2582a2af6',16,41,1,'rrd_maximum','|query_ifSpeed|'),(85,'e85ddc56efa677b70448f9e931360b77',14,41,1,'rrd_maximum','|query_ifSpeed|'),(84,'37bb8c5b38bb7e89ec88ea7ccacf44d4',14,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(83,'62a47c18be10f273a5f5a13a76b76f54',14,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(32,'',12,37,1,'name','|host_description| - Partition - |query_dskDevice|'),(49,'6537b3209e0697fbec278e94e7317b52',2,38,1,'name','|host_description| - Errors - |query_ifIP| - |query_ifName|'),(50,'6d3f612051016f48c951af8901720a1c',2,38,2,'name','|host_description| - Errors - |query_ifName|'),(51,'62bc981690576d0b2bd0041ec2e4aa6f',2,38,3,'name','|host_description| - Errors - |query_ifIP|/|query_ifDescr|'),(52,'adb270d55ba521d205eac6a21478804a',2,38,4,'name','|host_description| - Errors - |query_ifDescr|'),(54,'77065435f3bbb2ff99bc3b43b81de8fe',3,40,1,'name','|host_description| - Non-Unicast Packets - |query_ifIP| - |query_ifName|'),(55,'240d8893092619c97a54265e8d0b86a1',3,40,2,'name','|host_description| - Non-Unicast Packets - |query_ifName|'),(56,'4b200ecf445bdeb4c84975b74991df34',3,40,3,'name','|host_description| - Non-Unicast Packets - |query_ifIP|/|query_ifDescr|'),(57,'d6da3887646078e4d01fe60a123c2179',3,40,4,'name','|host_description| - Non-Unicast Packets - |query_ifDescr|'),(59,'ce7769b97d80ca31d21f83dc18ba93c2',4,39,1,'name','|host_description| - Unicast Packets - |query_ifIP| - |query_ifName|'),(60,'1ee1f9717f3f4771f7f823ca5a8b83dd',4,39,2,'name','|host_description| - Unicast Packets - |query_ifName|'),(61,'a7dbd54604533b592d4fae6e67587e32',4,39,3,'name','|host_description| - Unicast Packets - |query_ifIP|/|query_ifDescr|'),(62,'b148fa7199edcf06cd71c89e5c5d7b63',4,39,4,'name','|host_description| - Unicast Packets - |query_ifDescr|'),(69,'cb09784ba05e401a3f1450126ed1e395',15,37,1,'name','|host_description| - Free Space - |query_dskDevice|'),(70,'87a659326af8c75158e5142874fd74b0',13,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(72,'14aa2dead86bbad0f992f1514722c95e',13,41,2,'name','|host_description| - Traffic - |query_ifName|'),(73,'70390712158c3c5052a7d830fb456489',13,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(74,'084efd82bbddb69fb2ac9bd0b0f16ac6',13,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(75,'7e093c535fa3d810fa76fc3d8c80c94b',13,41,1,'rrd_maximum','|query_ifSpeed|'),(76,'c7ee2110bf81639086d2da03d9d88286',16,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(77,'8ef8ae2ef548892ab95bb6c9f0b3170e',16,41,2,'name','|host_description| - Traffic - |query_ifName|'),(78,'3a0f707d1c8fd0e061b70241541c7e2e',16,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(79,'2347e9f53564a54d43f3c00d4b60040d',16,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(81,'2e8b27c63d98249096ad5bc320787f43',14,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(82,'8d820d091ec1a9683cfa74a462f239ee',14,41,2,'name','|host_description| - Traffic - |query_ifName|'),(86,'c582d3b37f19e4a703d9bf4908dc6548',9,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(88,'e1be83d708ed3c0b8715ccb6517a0365',9,41,2,'name','|host_description| - Traffic - |query_ifName|'),(89,'57a9ae1f197498ca8dcde90194f61cbc',9,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(90,'0110e120981c7ff15304e4a85cb42cbe',9,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(91,'ce0b9c92a15759d3ddbd7161d26a98b7',9,41,1,'rrd_maximum','|query_ifSpeed|'),(92,'42277993a025f1bfd85374d6b4deeb60',17,42,1,'name','|host_description| - CPU Utilization - CPU|query_nwhrProcessorNum|'),(93,'a3f280327b1592a1a948e256380b544f',18,43,1,'name','|host_description| - Used Space - |query_hrStorageDescr|'),(94,'b5a724edc36c10891fa2a5c370d55b6f',19,44,1,'name','|host_description| - CPU Utilization - CPU|query_hrProcessorFrwID|'),(95,'7e87efd0075caba9908e2e6e569b25b0',20,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(96,'dd28d96a253ab86846aedb25d1cca712',20,41,2,'name','|host_description| - Traffic - |query_ifName|'),(97,'ce425fed4eb3174e4f1cde9713eeafa0',20,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(98,'d0d05156ddb2c65181588db4b64d3907',20,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(99,'3b018f789ff72cc5693ef79e3a794370',20,41,1,'rrd_maximum','|query_ifSpeed|'),(100,'b225229dbbb48c1766cf90298674ceed',21,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(101,'c79248ddbbd195907260887b021a055d',21,41,2,'name','|host_description| - Traffic - |query_ifName|'),(102,'12a6750d973b7f14783f205d86220082',21,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(103,'25b151fcfe093812cb5c208e36dd697e',21,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(104,'e9ab404a294e406c20fdd30df766161f',21,41,1,'rrd_maximum','|query_ifSpeed|'),(105,'119578a4f01ab47e820b0e894e5e5bb3',22,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(106,'940e57d24b2623849c77b59ed05931b9',22,41,2,'name','|host_description| - Traffic - |query_ifName|'),(107,'0f045eab01bbc4437b30da568ed5cb03',22,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(108,'bd70bf71108d32f0bf91b24c85b87ff0',22,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(109,'fdc4cb976c4b9053bfa2af791a21c5b5',22,41,1,'rrd_maximum','|query_ifSpeed|');
/*!40000 ALTER TABLE `snmp_query_graph_rrd_sv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_sv`
--

DROP TABLE IF EXISTS `snmp_query_graph_sv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_sv` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(100) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_sv`
--

LOCK TABLES `snmp_query_graph_sv` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_sv` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_sv` VALUES (7,'437918b8dcd66a64625c6cee481fff61',6,1,'title','|host_description| - Disk Space - |query_dskPath|'),(5,'2ddc61ff4bd9634f33aedce9524b7690',7,1,'title','|host_description| - Wireless Levels (|query_kbWirelessStationName|)'),(6,'c72e2da7af2cdbd6b44a5eb42c5b4758',8,1,'title','|host_description| - Wireless Transmissions (|query_kbWirelessStationName|)'),(11,'a412c5dfa484b599ec0f570979fdbc9e',10,1,'title','|host_description| - Volume Information - |query_nwVolPhysicalName|'),(12,'48f4792dd49fefd7d640ec46b1d7bdb3',11,1,'title','|host_description| - Directory Information - |query_nwVolPhysicalName|'),(14,'',12,1,'title','|host_description| - Disk Space - |query_dskDevice|'),(15,'49dca5592ac26ff149a4fbd18d690644',13,1,'title','|host_description| - Traffic - |query_ifName|'),(16,'bda15298139ad22bdc8a3b0952d4e3ab',13,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(17,'29e48483d0471fcd996bfb702a5960aa',13,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(18,'3f42d358965cb94ce4f708b59e04f82b',14,1,'title','|host_description| - Traffic - |query_ifName|'),(19,'45f44b2f811ea8a8ace1cbed8ef906f1',14,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(20,'69c14fbcc23aecb9920b3cdad7f89901',14,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(21,'299d3434851fc0d5c0e105429069709d',2,1,'title','|host_description| - Errors - |query_ifName|'),(22,'8c8860b17fd67a9a500b4cb8b5e19d4b',2,2,'title','|host_description| - Errors - |query_ifIP| (|query_ifDescr|)'),(23,'d96360ae5094e5732e7e7496ceceb636',2,3,'title','|host_description| - Errors - |query_ifDescr|/|query_ifIndex|'),(24,'750a290cadc3dc60bb682a5c5f47df16',3,1,'title','|host_description| - Non-Unicast Packets - |query_ifName|'),(25,'bde195eecc256c42ca9725f1f22c1dc0',3,2,'title','|host_description| - Non-Unicast Packets - |query_ifIP| (|query_ifDescr|)'),(26,'d9e97d22689e4ffddaca23b46f2aa306',3,3,'title','|host_description| - Non-Unicast Packets - |query_ifDescr|/|query_ifIndex|'),(27,'48ceaba62e0c2671a810a7f1adc5f751',4,1,'title','|host_description| - Unicast Packets - |query_ifName|'),(28,'d6258884bed44abe46d264198adc7c5d',4,2,'title','|host_description| - Unicast Packets - |query_ifIP| (|query_ifDescr|)'),(29,'6eb58d9835b2b86222306d6ced9961d9',4,3,'title','|host_description| - Unicast Packets - |query_ifDescr|/|query_ifIndex|'),(30,'f21b23df740bc4a2d691d2d7b1b18dba',15,1,'title','|host_description| - Disk Space - |query_dskDevice|'),(31,'7fb4a267065f960df81c15f9022cd3a4',16,1,'title','|host_description| - Traffic - |query_ifName|'),(32,'e403f5a733bf5c8401a110609683deb3',16,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(33,'809c2e80552d56b65ca496c1c2fff398',16,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(34,'0a5eb36e98c04ad6be8e1ef66caeed3c',9,1,'title','|host_description| - Traffic - |query_ifName|'),(35,'4c4386a96e6057b7bd0b78095209ddfa',9,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(36,'fd3a384768b0388fa64119fe2f0cc113',9,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(38,'9852782792ede7c0805990e506ac9618',18,1,'title','|host_description| - Used Space - |query_hrStorageDescr|'),(39,'fa2f07ab54fce72eea684ba893dd9c95',19,1,'title','|host_description| - CPU Utilization - CPU|query_hrProcessorFrwID|'),(40,'d99f8db04fd07bcd2260d246916e03da',17,1,'title','|host_description| - CPU Utilization - CPU|query_nwhrProcessorNum|'),(41,'f434ec853c479d424276f367e9806a75',20,1,'title','|host_description| - Traffic - |query_ifName|'),(42,'9b085245847444c5fb90ebbf4448e265',20,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(43,'5977863f28629bd8eb93a2a9cbc3e306',20,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(44,'37b6711af3930c56309cf8956d8bbf14',21,1,'title','|host_description| - Traffic - |query_ifName|'),(45,'cc435c5884a75421329a9b08207c1c90',21,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(46,'82edeea1ec249c9818773e3145836492',21,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(47,'87522150ee8a601b4d6a1f6b9e919c47',22,1,'title','|host_description| - Traffic - |query_ifName|'),(48,'993a87c04f550f1209d689d584aa8b45',22,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(49,'183bb486c92a566fddcb0585ede37865',22,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|');
/*!40000 ALTER TABLE `snmp_query_graph_sv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `realm` mediumint(8) NOT NULL DEFAULT '0',
  `full_name` varchar(100) DEFAULT '0',
  `must_change_password` char(2) DEFAULT NULL,
  `show_tree` char(2) DEFAULT 'on',
  `show_list` char(2) DEFAULT 'on',
  `show_preview` char(2) NOT NULL DEFAULT 'on',
  `graph_settings` char(2) DEFAULT NULL,
  `login_opts` tinyint(1) NOT NULL DEFAULT '1',
  `policy_graphs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_trees` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_hosts` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_graph_templates` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enabled` char(2) NOT NULL DEFAULT 'on',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `realm` (`realm`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,'admin','4f8c55177ad1bb30e4fdd271441126e4',0,'Administrator','','on','on','on','on',1,1,1,1,1,'on'),(3,'guest','43e9a4ab75570f5b',0,'Guest Account','on','on','on','on','on',3,1,1,1,1,'');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_perms`
--

DROP TABLE IF EXISTS `user_auth_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_perms` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`item_id`,`type`),
  KEY `user_id` (`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_perms`
--

LOCK TABLES `user_auth_perms` WRITE;
/*!40000 ALTER TABLE `user_auth_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_realm`
--

DROP TABLE IF EXISTS `user_auth_realm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_realm` (
  `realm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realm_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_realm`
--

LOCK TABLES `user_auth_realm` WRITE;
/*!40000 ALTER TABLE `user_auth_realm` DISABLE KEYS */;
INSERT INTO `user_auth_realm` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(7,1),(7,3),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1);
/*!40000 ALTER TABLE `user_auth_realm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `username` varchar(50) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `result` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`,`user_id`,`time`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES ('cacti',0,'2012-09-18 15:12:49',0,'10.11.14.1'),('cacti',0,'2012-09-18 15:12:57',0,'10.11.14.1'),('cacti',0,'2012-09-18 15:14:13',0,'10.11.14.1'),('admin',1,'2012-09-18 15:14:41',1,'10.11.14.1'),('admin',0,'0000-00-00 00:00:00',3,'10.11.14.1'),('evan',0,'2012-09-24 09:43:54',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:44:05',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:44:16',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:44:21',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:44:27',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:44:31',0,'10.11.14.1'),('evan',0,'2012-09-24 09:44:38',0,'10.11.14.1'),('evan',0,'2012-09-24 09:45:38',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:46:15',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:46:35',0,'10.11.14.1'),('admin',0,'2012-09-24 09:46:43',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:47:06',0,'10.11.14.1'),('cacti',0,'2012-09-24 09:47:11',0,'10.11.14.1'),('root',0,'2012-09-24 09:47:16',0,'10.11.14.1'),('evan',0,'2012-09-24 09:47:20',0,'10.11.14.1'),('admin',1,'2012-09-24 09:48:01',1,'10.11.14.1'),('admin',1,'2012-09-24 12:00:14',1,'10.11.14.1'),('admin',1,'2012-09-25 09:46:31',1,'10.11.14.1'),('admin',0,'2012-09-25 09:53:55',0,'10.11.14.1'),('admin',1,'2012-09-25 09:53:57',1,'10.11.14.1'),('admin',0,'2012-09-25 10:09:09',0,'10.11.14.58'),('passwdadmin',0,'2012-09-25 10:09:12',0,'10.11.14.58'),('admin',0,'2012-09-25 10:09:15',0,'10.11.14.58'),('admin',0,'2012-09-25 10:09:18',0,'10.11.14.58'),('admin',0,'2012-09-25 10:09:20',0,'10.11.14.58'),('admin',1,'2012-09-25 10:09:29',1,'10.11.14.58'),('admin',1,'2012-09-25 10:20:11',1,'10.11.14.1'),('admin',1,'2012-09-25 14:13:38',1,'10.11.14.1');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `cacti` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES ('0.8.7h');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-25 15:59:08
