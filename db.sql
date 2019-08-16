-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: nanny365.catvg4uvcupb.us-east-2.rds.amazonaws.com    Database: nanny365
-- ------------------------------------------------------
-- Server version	5.7.22-log
use nanny365;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disponibilidad`
--

DROP TABLE IF EXISTS `disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disponibilidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int(11) DEFAULT NULL,
  `dia` varchar(45) DEFAULT NULL,
  `horaInicio` varchar(20) DEFAULT NULL,
  `horaFinal` varchar(20) DEFAULT NULL,
  `disponibilidadcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidad`
--

LOCK TABLES `disponibilidad` WRITE;
/*!40000 ALTER TABLE `disponibilidad` DISABLE KEYS */;
INSERT INTO `disponibilidad` VALUES (1,5,'Lunes','9:00am','5:00pm',NULL),(2,5,'Martes','','',NULL),(3,5,'Miércoles','','',NULL),(4,5,'Jueves','','',NULL),(5,5,'Viernes','6:00pm','10:00pm',NULL),(6,5,'Sábado','','',NULL),(7,5,'Domingo','','',NULL),(8,4,'Lunes','6:30am','11:00am',NULL),(9,4,'Martes','5:00am','2:00pm',NULL),(10,4,'Miércoles','5:00am','2:30pm',NULL),(11,4,'Jueves','5:00am','2:00pm',NULL),(12,4,'Viernes','6:00am','6:00pm',NULL),(13,4,'Sábado','2:00am','7:00am',NULL),(14,4,'Domingo','6:00am','6:00pm',NULL),(15,6,'Lunes','9:00am','5:30pm',NULL),(16,6,'Martes','9:00am','5:30pm',NULL),(17,6,'Miércoles','9:00am','5:30pm',NULL),(18,6,'Jueves','9:00am','5:30pm',NULL),(19,6,'Viernes','9:00am','5:30pm',NULL),(20,6,'Sábado','9:00am','4:00pm',NULL),(21,6,'Domingo','9:00amj','4:00pm',NULL),(22,8,'Lunes','7:00am','5:00pm',NULL),(23,8,'Martes','7:00am','5:00pm',NULL),(24,8,'Miércoles','7:00am','5:00pm',NULL),(25,8,'Jueves','7:00am','5:00pm',NULL),(26,8,'Viernes','7:00am','5:00pm',NULL),(27,8,'Sábado','7:00am','5:00pm',NULL),(28,8,'Domingo','','',NULL),(29,9,'Lunes','6:00am','3:00pm',NULL),(30,9,'Martes','6:00am','3:00pm',NULL),(31,9,'Miércoles','6:30am','3:00pm',NULL),(32,9,'Jueves','5:30am','7:30pm',NULL),(33,9,'Viernes','6:00am','3:00pm',NULL),(34,9,'Sábado','6:00am','3:00pm',NULL),(35,9,'Domingo','2:00pm','9:00pm',NULL),(36,11,'Lunes','8:00am','4:00pm',NULL),(37,11,'Martes','7:30am','4:00pm',NULL),(38,11,'Miércoles','8:00am','4:00pm',NULL),(39,11,'Jueves','7:00am','3:00pm',NULL),(40,11,'Viernes','8:00am','4:30pm',NULL),(41,11,'Sábado','8:00am','4:30pm',NULL),(42,11,'Domingo','','',NULL),(43,12,'Lunes','7:30pm','4:30am',NULL),(44,12,'Martes','7:30pm','4:30am',NULL),(45,12,'Miércoles','7:30pm','4:30am',NULL),(46,12,'Jueves','7:30pm','4:30am',NULL),(47,12,'Viernes','7:30pm','4:30am',NULL),(48,12,'Sábado','8:00am','2:00pm',NULL),(49,12,'Domingo','8:00am','2:00pm',NULL),(50,13,'Lunes','2:00pm','11:30pm',NULL),(51,13,'Martes','2:00pm','11:30pm',NULL),(52,13,'Miércoles','2:00pm','11:30pm',NULL),(53,13,'Jueves','2:00pm','11:30pm',NULL),(54,13,'Viernes','2:00pm','7:00am',NULL),(55,13,'Sábado','12:00am','12:00am',NULL),(56,13,'Domingo','12:00am','4:30pm',NULL),(57,16,'Lunes','7:30am','1:30pm',NULL),(58,16,'Martes','','',NULL),(59,16,'Miércoles','9:00am','3:30pm',NULL),(60,16,'Jueves','8:00am','3:30pm',NULL),(61,16,'Viernes','3:00pm','6:30pm',NULL),(62,16,'Sábado','8:00am','12:00pm',NULL),(63,16,'Domingo','8:00am','6:00pm',NULL),(64,7,'Lunes','','',NULL),(65,7,'Martes','','',NULL),(66,7,'Miércoles','','',NULL),(67,7,'Jueves','','',NULL),(68,7,'Viernes','6:00am','7:00am',NULL),(69,7,'Sábado','7:00am','7:30am',NULL),(70,7,'Domingo','8:00am','7:00pm',NULL),(71,20,'Lunes','6:00am','5:30pm',NULL),(72,20,'Martes','6:00am','5:30pm',NULL),(73,20,'Miércoles','6:00am','5:30pm',NULL),(74,20,'Jueves','6:00am','5:30pm',NULL),(75,20,'Viernes','6:00am','5:30pm',NULL),(76,20,'Sábado','6:00am','5:30pm',NULL),(77,20,'Domingo','8:00am','4:00pm',NULL),(78,22,'Lunes','','6:30am',NULL),(79,22,'Martes','','',NULL),(80,22,'Miércoles','','',NULL),(81,22,'Jueves','','',NULL),(82,22,'Viernes','','',NULL),(83,22,'Sábado','','3:30pm',NULL),(84,22,'Domingo','','',NULL),(85,27,'Lunes','6:00am','5:30pm',NULL),(86,27,'Martes','6:00am','5:30pm',NULL),(87,27,'Miércoles','6:00am','5:30pm',NULL),(88,27,'Jueves','6:00am','5:30pm',NULL),(89,27,'Viernes','6:00am','5:30pm',NULL),(90,27,'Sábado','6:00am','5:30pm',NULL),(91,27,'Domingo','','',NULL),(92,30,'Lunes','7:00am','1:00am',NULL),(93,30,'Martes','7:00am','1:00am',NULL),(94,30,'Miércoles','7:00am','1:00am',NULL),(95,30,'Jueves','7:00am','1:00am',NULL),(96,30,'Viernes','7:00am','1:00am',NULL),(97,30,'Sábado','7:00am','1:00am',NULL),(98,30,'Domingo','7:00am','1:00am',NULL),(99,31,'Lunes','7:00am','5:00pm',NULL),(100,31,'Martes','7:30am','5:00am',NULL),(101,31,'Miércoles','7:00am','5:00pm',NULL),(102,31,'Jueves','7:00am','5:00pm',NULL),(103,31,'Viernes','7:00am','5:00pm',NULL),(104,31,'Sábado','7:00am','5:00pm',NULL),(105,31,'Domingo','','',NULL),(106,33,'Lunes','9:00am','7:00pm',NULL),(107,33,'Martes','9:00am','7:00pm',NULL),(108,33,'Miércoles','9:00am','7:00pm',NULL),(109,33,'Jueves','9:00am','7:00pm',NULL),(110,33,'Viernes','9:00am','7:00pm',NULL),(111,33,'Sábado','9:00am','7:00pm',NULL),(112,33,'Domingo','10:00am','7:00pm',NULL),(113,36,'Lunes','5:00am','12:00am',NULL),(114,36,'Martes','5:00am','12:00am',NULL),(115,36,'Miércoles','12:00am','12:00am',NULL),(116,36,'Jueves','12:00am','12:00am',NULL),(117,36,'Viernes','12:00am','12:00am',NULL),(118,36,'Sábado','12:00am','12:00am',NULL),(119,36,'Domingo','12:00am','12:00am',NULL),(120,34,'Lunes','5:00am','11:30pm',NULL),(121,34,'Martes','5:00am','11:30pm',NULL),(122,34,'Miércoles','5:00am','11:30pm',NULL),(123,34,'Jueves','5:00am','11:30pm',NULL),(124,34,'Viernes','5:00am','11:30pm',NULL),(125,34,'Sábado','5:00am','11:30pm',NULL),(126,34,'Domingo','5:00am','11:30pm',NULL),(127,42,'Lunes','11:00am','10:30pm',NULL),(128,42,'Martes','11:00am','10:30pm',NULL),(129,42,'Miércoles','11:00am','10:30pm',NULL),(130,42,'Jueves','11:00am','10:30pm',NULL),(131,42,'Viernes','11:00am','12:00am',NULL),(132,42,'Sábado','12:00am','12:00am',NULL),(133,42,'Domingo','12:00am','12:00am',NULL),(134,43,'Lunes','7:30am','4:30pm',NULL),(135,43,'Martes','7:30am','4:30pm',NULL),(136,43,'Miércoles','7:30am','4:30pm',NULL),(137,43,'Jueves','7:30am','4:30pm',NULL),(138,43,'Viernes','7:30am','4:30pm',NULL),(139,43,'Sábado','9:00am','5:00am',NULL),(140,43,'Domingo','9:00am','5:00am',NULL),(141,44,'Lunes','12:00am','12:00am',NULL),(142,44,'Martes','12:00am','12:00am',NULL),(143,44,'Miércoles','12:00am','12:00am',NULL),(144,44,'Jueves','12:30am','12:00am',NULL),(145,44,'Viernes','12:00am','12:00am',NULL),(146,44,'Sábado','12:00am','12:00am',NULL),(147,44,'Domingo','12:00am','12:00am',NULL),(148,54,'Lunes','10:00am','5:00pm',NULL),(149,54,'Martes','10:00am','5:00pm',NULL),(150,54,'Miércoles','10:00am','5:00pm',NULL),(151,54,'Jueves','10:00am','5:00pm',NULL),(152,54,'Viernes','10:00am','5:00pm',NULL),(153,54,'Sábado','10:00am','5:00pm',NULL),(154,54,'Domingo','10:00am','5:00pm',NULL),(155,35,'Lunes','7:00am','5:30pm',NULL),(156,35,'Martes','7:00am','5:30pm',NULL),(157,35,'Miércoles','7:00am','6:00pm',NULL),(158,35,'Jueves','7:00am','6:00pm',NULL),(159,35,'Viernes','7:00am','4:00pm',NULL),(160,35,'Sábado','Todo el dia','Dia o noche',NULL),(161,35,'Domingo','','',NULL),(162,63,'Lunes','4:00pm','9:30pm',NULL),(163,63,'Martes','4:00pm','9:30pm',NULL),(164,63,'Miércoles','4:00pm','9:30pm',NULL),(165,63,'Jueves','4:00pm','9:30pm',NULL),(166,63,'Viernes','4:00pm','8:30pm',NULL),(167,63,'Sábado','','',NULL),(168,63,'Domingo','','',NULL),(169,64,'Lunes','8:00am','2:00pm',NULL),(170,64,'Martes','8:00am','3:00pm',NULL),(171,64,'Miércoles','8:00am','5:00pm',NULL),(172,64,'Jueves','8:00am','5:00pm',NULL),(173,64,'Viernes','8:00am','5:00pm',NULL),(174,64,'Sábado','8:00am','2:00pm',NULL),(175,64,'Domingo','8:00am','4:00am',NULL),(176,68,'Lunes','6:00am','10:00pm',NULL),(177,68,'Martes','6:00am','10:00pm',NULL),(178,68,'Miércoles','6:00am','10:00pm',NULL),(179,68,'Jueves','6:00am','10:00pm',NULL),(180,68,'Viernes','2:00pm','11:30pm',NULL),(181,68,'Sábado','2:00pm','11:30pm',NULL),(182,68,'Domingo','','',NULL),(183,71,'Lunes','','',NULL),(184,71,'Martes','12:00am','8:00am',NULL),(185,71,'Miércoles','12:00am','8:00am',NULL),(186,71,'Jueves','12:00am','8:00am',NULL),(187,71,'Viernes','12:00am','8:00am',NULL),(188,71,'Sábado','12:00am','5:00am',NULL),(189,71,'Domingo','','',NULL),(190,73,'Lunes','2:30pm','10:30pm',NULL),(191,73,'Martes','2:30pm','10:30pm',NULL),(192,73,'Miércoles','2:30pm','10:30pm',NULL),(193,73,'Jueves','2:30pm','10:30pm',NULL),(194,73,'Viernes','2:30pm','10:30pm',NULL),(195,73,'Sábado','3:00pm','11:00pm',NULL),(196,73,'Domingo','','',NULL),(197,78,'Lunes','7:00am','1:30pm',NULL),(198,78,'Martes','7:00am','1:30pm',NULL),(199,78,'Miércoles','6:30am','1:30pm',NULL),(200,78,'Jueves','1:30am','5:00am',NULL),(201,78,'Viernes','1:30pm','5:00pm',NULL),(202,78,'Sábado','7:00am','5:30pm',NULL),(203,78,'Domingo','','',NULL),(204,80,'Lunes','','',NULL),(205,80,'Martes','','',NULL),(206,80,'Miércoles','','',NULL),(207,80,'Jueves','','',NULL),(208,80,'Viernes','1:30pm','6:00pm',NULL),(209,80,'Sábado','1:00pm','3:00am',NULL),(210,80,'Domingo','1:00am','10:00pm',NULL),(211,76,'Lunes','9:30am','5:00am',NULL),(212,76,'Martes','6:00am','6:00am',NULL),(213,76,'Miércoles','6:00am','6:00pm',NULL),(214,76,'Jueves','6:00am','6:30pm',NULL),(215,76,'Viernes','6:00am','6:00pm',NULL),(216,76,'Sábado','8:30am','4:00pm',NULL),(217,76,'Domingo','9:30am','3:30pm',NULL),(218,81,'Lunes','6:00am','2:00pm',NULL),(219,81,'Martes','6:00am','2:00pm',NULL),(220,81,'Miércoles','6:00am','2:00pm',NULL),(221,81,'Jueves','6:00am','2:00pm',NULL),(222,81,'Viernes','6:00am','2:00pm',NULL),(223,81,'Sábado','6:00am','2:00pm',NULL),(224,81,'Domingo','','',NULL),(225,51,'Lunes','8:00am','8:00pm',NULL),(226,51,'Martes','8:00am','8:00pm',NULL),(227,51,'Miércoles','8:00am','8:00pm',NULL),(228,51,'Jueves','8:00am','8:00pm',NULL),(229,51,'Viernes','8:00am','8:00pm',NULL),(230,51,'Sábado','8:00am','8:00pm',NULL),(231,51,'Domingo','','',NULL),(232,83,'Lunes','6:00am','10:00pm',NULL),(233,83,'Martes','6:00am','10:00pm',NULL),(234,83,'Miércoles','6:00am','10:00pm',NULL),(235,83,'Jueves','6:00am','10:00pm',NULL),(236,83,'Viernes','6:00am','6:00am',NULL),(237,83,'Sábado','6:00am','6:00am',NULL),(238,83,'Domingo','6:00am','1:00am',NULL),(239,82,'Lunes','7:00am','5:00pm',NULL),(240,82,'Martes','7:00am','5:00pm',NULL),(241,82,'Miércoles','7:00am','5:00pm',NULL),(242,82,'Jueves','7:00am','5:00pm',NULL),(243,82,'Viernes','7:00am','7:00pm',NULL),(244,82,'Sábado','7:00am','12:00pm',NULL),(245,82,'Domingo','','',NULL),(246,86,'Lunes','','',NULL),(247,86,'Martes','','',NULL),(248,86,'Miércoles','','',NULL),(249,86,'Jueves','','',NULL),(250,86,'Viernes','','',NULL),(251,86,'Sábado','','',NULL),(252,86,'Domingo','','',NULL),(253,90,'Lunes','2:00pm','5:30pm',NULL),(254,90,'Martes','2:00pm','5:30pm',NULL),(255,90,'Miércoles','2:00pm','5:30pm',NULL),(256,90,'Jueves','2:00pm','5:30pm',NULL),(257,90,'Viernes','','',NULL),(258,90,'Sábado','','',NULL),(259,90,'Domingo','','',NULL),(260,93,'Lunes','7:00am','5:00pm',NULL),(261,93,'Martes','7:00am','5:00pm',NULL),(262,93,'Miércoles','8:30am','5:00am',NULL),(263,93,'Jueves','7:00am','5:30pm',NULL),(264,93,'Viernes','7:00am','5:30pm',NULL),(265,93,'Sábado','8:00am','4:00pm',NULL),(266,93,'Domingo','8:00am','3:00pm',NULL),(267,94,'Lunes','4:00pm','11:30pm',NULL),(268,94,'Martes','5:00am','11:30pm',NULL),(269,94,'Miércoles','5:00am','11:30pm',NULL),(270,94,'Jueves','5:00am','11:30pm',NULL),(271,94,'Viernes','5:00am','11:30pm',NULL),(272,94,'Sábado','5:00am','11:30pm',NULL),(273,94,'Domingo','5:00am','11:30pm',NULL),(274,96,'Lunes','','',NULL),(275,96,'Martes','','',NULL),(276,96,'Miércoles','','',NULL),(277,96,'Jueves','','',NULL),(278,96,'Viernes','','',NULL),(279,96,'Sábado','','',NULL),(280,96,'Domingo','','',NULL),(281,99,'Lunes','12:00am','11:30pm',NULL),(282,99,'Martes','12:00am','11:30pm',NULL),(283,99,'Miércoles','12:00am','11:30pm',NULL),(284,99,'Jueves','12:00am','11:30pm',NULL),(285,99,'Viernes','12:00am','11:30pm',NULL),(286,99,'Sábado','12:00am','11:30pm',NULL),(287,99,'Domingo','12:00am','11:30pm',NULL),(288,100,'Lunes','','',NULL),(289,100,'Martes','','',NULL),(290,100,'Miércoles','','',NULL),(291,100,'Jueves','','',NULL),(292,100,'Viernes','','',NULL),(293,100,'Sábado','3:00pm','',NULL),(294,100,'Domingo','','6:00pm',NULL),(295,101,'Lunes','12:00pm','4:00pm',NULL),(296,101,'Martes','1:00pm','5:30pm',NULL),(297,101,'Miércoles','','',NULL),(298,101,'Jueves','','',NULL),(299,101,'Viernes','1:30pm','5:30am',NULL),(300,101,'Sábado','','',NULL),(301,101,'Domingo','','',NULL),(302,103,'Lunes','Inmediata','',NULL),(303,103,'Martes','Inmediata','',NULL),(304,103,'Miércoles','Inmediata','',NULL),(305,103,'Jueves','Inmediata','',NULL),(306,103,'Viernes','Inmediata','',NULL),(307,103,'Sábado','Inmediata','',NULL),(308,103,'Domingo','','',NULL),(309,74,'Lunes','12:00am','12:00pm',NULL),(310,74,'Martes','12:00am','11:30pm',NULL),(311,74,'Miércoles','12:00am','12:00pm',NULL),(312,74,'Jueves','12:00am','11:30pm',NULL),(313,74,'Viernes','12:00am','11:30pm',NULL),(314,74,'Sábado','12:00am','11:30pm',NULL),(315,74,'Domingo','12:00am','11:30pm',NULL),(316,111,'Lunes','1:00pm','7:30am',NULL),(317,111,'Martes','1:00pm','7:30am',NULL),(318,111,'Miércoles','1:30pm','7:30am',NULL),(319,111,'Jueves','1:00pm','7:30am',NULL),(320,111,'Viernes','12:00am','12:00am',NULL),(321,111,'Sábado','12:00am','12:00am',NULL),(322,111,'Domingo','12:00am','12:00am',NULL),(323,112,'Lunes','6:30am','4:00pm',NULL),(324,112,'Martes','6:30am','4:00pm',NULL),(325,112,'Miércoles','6:30am','4:00pm',NULL),(326,112,'Jueves','6:30am','4:00pm',NULL),(327,112,'Viernes','6:30am','4:00pm',NULL),(328,112,'Sábado','7:00am','12:00pm',NULL),(329,112,'Domingo','7:00pm','12:00pm',NULL),(330,114,'Lunes','5:30pm','11:30pm',NULL),(331,114,'Martes','5:30pm','11:30pm',NULL),(332,114,'Miércoles','5:30pm','11:30pm',NULL),(333,114,'Jueves','5:30pm','11:30pm',NULL),(334,114,'Viernes','5:30pm','11:30pm',NULL),(335,114,'Sábado','10:00am','7:30pm',NULL),(336,114,'Domingo','11:00am','5:00pmrr',NULL),(337,117,'Lunes','7:00am','7:00am',NULL),(338,117,'Martes','7:00am','7:00am',NULL),(339,117,'Miércoles','7:00am','7:30am',NULL),(340,117,'Jueves','7:00am','7:00am',NULL),(341,117,'Viernes','7:00am','7:00am',NULL),(342,117,'Sábado','7:00am','7:00am',NULL),(343,117,'Domingo','','',NULL),(344,119,'Lunes','7:00am','6:00pm',NULL),(345,119,'Martes','7:00am','5:00pm',NULL),(346,119,'Miércoles','6:00am','6:00pm',NULL),(347,119,'Jueves','8:00am','5:30pm',NULL),(348,119,'Viernes','8:00am','3:00pm',NULL),(349,119,'Sábado','','',NULL),(350,119,'Domingo','','',NULL),(351,118,'Lunes','','',NULL),(352,118,'Martes','3:00pm','11:00pm',NULL),(353,118,'Miércoles','7:00pm','10:00pm',NULL),(354,118,'Jueves','7:00pm','9:30pm',NULL),(355,118,'Viernes','10:00am','11:30pm',NULL),(356,118,'Sábado','6:00pm','11:30pm',NULL),(357,118,'Domingo','','',NULL),(358,123,'Lunes','7:00am','1:30pm',NULL),(359,123,'Martes','3:00pm','10:30pm',NULL),(360,123,'Miércoles','1:00pm','10:00pm',NULL),(361,123,'Jueves','','',NULL),(362,123,'Viernes','1:30pm','10:30pm',NULL),(363,123,'Sábado','7:00am','4:00pm',NULL),(364,123,'Domingo','8:00am','2:00pm',NULL),(365,131,'Lunes','5:00pm','8:00pm',NULL),(366,131,'Martes','6:00pm','8:00pm',NULL),(367,131,'Miércoles','2:00pm','6:00pm',NULL),(368,131,'Jueves','2:00pm','6:30pm',NULL),(369,131,'Viernes','2:00pm','7:00pm',NULL),(370,131,'Sábado','7:00am','5:00pm',NULL),(371,131,'Domingo','7:00am','5:30pm',NULL),(372,132,'Lunes','','',NULL),(373,132,'Martes','','',NULL),(374,132,'Miércoles','9:00am','11:00pm',NULL),(375,132,'Jueves','','',NULL),(376,132,'Viernes','','',NULL),(377,132,'Sábado','12:00am','11:30pm',NULL),(378,132,'Domingo','12:00am','11:30pm',NULL),(379,135,'Lunes','','',NULL),(380,135,'Martes','6:00pm','5:00am',NULL),(381,135,'Miércoles','','',NULL),(382,135,'Jueves','','',NULL),(383,135,'Viernes','','',NULL),(384,135,'Sábado','12:00pm','6:00am',NULL),(385,135,'Domingo','6:00am','10:00pm',NULL),(386,136,'Lunes','8:30am','4:00pm',NULL),(387,136,'Martes','8:30am','3:30pm',NULL),(388,136,'Miércoles','8:30am','',NULL),(389,136,'Jueves','8:30am','3:00pm',NULL),(390,136,'Viernes','8:30am','4:00pm',NULL),(391,136,'Sábado','8:00am','3:30pm',NULL),(392,136,'Domingo','8:30am','4:00pm',NULL),(393,137,'Lunes','','',NULL),(394,137,'Martes','','',NULL),(395,137,'Miércoles','','',NULL),(396,137,'Jueves','','',NULL),(397,137,'Viernes','','',NULL),(398,137,'Sábado','8:00am','5:00pm',NULL),(399,137,'Domingo','8:00am','5:00pm',NULL),(400,138,'Lunes','','',NULL),(401,138,'Martes','','',NULL),(402,138,'Miércoles','','',NULL),(403,138,'Jueves','','',NULL),(404,138,'Viernes','7:00pm','6:00am',NULL),(405,138,'Sábado','7:00am','5:00pm',NULL),(406,138,'Domingo','10:00am','7:30pm',NULL),(407,139,'Lunes','5:30am','5:00pm',NULL),(408,139,'Martes','5:30am','5:30pm',NULL),(409,139,'Miércoles','5:30am','5:30pm',NULL),(410,139,'Jueves','5:30am','5:30pm',NULL),(411,139,'Viernes','5:30am','5:30pm',NULL),(412,139,'Sábado','7:00am','6:30pm',NULL),(413,139,'Domingo','8:00am','2:00pm',NULL),(414,143,'Lunes','10:00am','4:00pm',NULL),(415,143,'Martes','10:00am','4:00am',NULL),(416,143,'Miércoles','','',NULL),(417,143,'Jueves','10:00am','4:00pm',NULL),(418,143,'Viernes','10:00am','4:00pm',NULL),(419,143,'Sábado','11:00am','3:00pm',NULL),(420,143,'Domingo','','',NULL),(421,145,'Lunes','','',NULL),(422,145,'Martes','','',NULL),(423,145,'Miércoles','','',NULL),(424,145,'Jueves','','',NULL),(425,145,'Viernes','','',NULL),(426,145,'Sábado','','',NULL),(427,145,'Domingo','','',NULL),(428,14,'Lunes','7:00am','7:00pm',NULL),(429,14,'Martes','7:00am','7:00pm',NULL),(430,14,'Miércoles','7:00am','7:00pm',NULL),(431,14,'Jueves','7:00am','A conveniencia ',NULL),(432,14,'Viernes','7:00am','7:00pm',NULL),(433,14,'Sábado','10:00am','4:00pm',NULL),(434,14,'Domingo','','',NULL),(435,151,'Lunes','12:00am','1:00am',NULL),(436,151,'Martes','12:00am','1:00am',NULL),(437,151,'Miércoles','12:00am','1:00am',NULL),(438,151,'Jueves','12:00am','1:00am',NULL),(439,151,'Viernes','12:00am','1:00am',NULL),(440,151,'Sábado','12:00am','1:00am',NULL),(441,151,'Domingo','12:00am','1:00am',NULL),(442,152,'Lunes','','',NULL),(443,152,'Martes','12:00pm','7:00pm',NULL),(444,152,'Miércoles','12:00pm','7:00pm',NULL),(445,152,'Jueves','12:00pm','7:00pm',NULL),(446,152,'Viernes','12:00pm','7:00pm',NULL),(447,152,'Sábado','12:00am','7:00pm',NULL),(448,152,'Domingo','','',NULL),(449,159,'Lunes','8:30am','5:00am',NULL),(450,159,'Martes','8:30am','5:00am',NULL),(451,159,'Miércoles','8:30am','5:00am',NULL),(452,159,'Jueves','8:30am','5:00am',NULL),(453,159,'Viernes','8:30am','5:00am',NULL),(454,159,'Sábado','','',NULL),(455,159,'Domingo','','',NULL),(456,95,'Lunes','5:00am','1:00am',NULL),(457,95,'Martes','5:00am','1:00am',NULL),(458,95,'Miércoles','5:00am','1:00am',NULL),(459,95,'Jueves','5:00am','1:00am',NULL),(460,95,'Viernes','5:00am','1:00am',NULL),(461,95,'Sábado','6:00am','12:00am',NULL),(462,95,'Domingo','6:00am','12:00am',NULL),(463,161,'Lunes','','',NULL),(464,161,'Martes','','',NULL),(465,161,'Miércoles','','',NULL),(466,161,'Jueves','','',NULL),(467,161,'Viernes','7:00pm','10:00pm',NULL),(468,161,'Sábado','7:00am','1:00pm',NULL),(469,161,'Domingo','8:00am','3:00am',NULL),(470,164,'Lunes','7:00am','12:00am',NULL),(471,164,'Martes','7:00am','12:00am',NULL),(472,164,'Miércoles','7:00am','12:00am',NULL),(473,164,'Jueves','7:00am','12:00am',NULL),(474,164,'Viernes','7:00am','12:00am',NULL),(475,164,'Sábado','8:00pm','12:00pm',NULL),(476,164,'Domingo','12:00am','12:00pm',NULL),(477,165,'Lunes','7:00am','5:00pm',NULL),(478,165,'Martes','7:00am','5:00pm',NULL),(479,165,'Miércoles','7:00am','5:00pm',NULL),(480,165,'Jueves','7:00am','5:00pm',NULL),(481,165,'Viernes','7:00am','5:00pm',NULL),(482,165,'Sábado','7:00am','5:00pm',NULL),(483,165,'Domingo','','',NULL),(484,167,'Lunes','7:00am','5:00pm',NULL),(485,167,'Martes','7:00am','5:00pm',NULL),(486,167,'Miércoles','7:00am','5:00pm',NULL),(487,167,'Jueves','7:00am','5:00am',NULL),(488,167,'Viernes','7:00am','3:00am',NULL),(489,167,'Sábado','7:00am','3:00am',NULL),(490,167,'Domingo','','',NULL),(491,60,'Lunes','8:00am','4:00pm',NULL),(492,60,'Martes','8:00am','4:00am',NULL),(493,60,'Miércoles','8:00am','4:00am',NULL),(494,60,'Jueves','8:00am','4:00am',NULL),(495,60,'Viernes','8:00am','2:00am',NULL),(496,60,'Sábado','','',NULL),(497,60,'Domingo','','',NULL),(498,173,'Lunes','1:00pm','10:00pm',NULL),(499,173,'Martes','1:00pm','10:00pm',NULL),(500,173,'Miércoles','1:00pm','10:00pm',NULL),(501,173,'Jueves','1:00pm','10:00pm',NULL),(502,173,'Viernes','1:00pm','10:00pm',NULL),(503,173,'Sábado','8:00am','3:00pm',NULL),(504,173,'Domingo','8:00am','1:00pm',NULL),(505,153,'Lunes','9:00am','6:00am',NULL),(506,153,'Martes','9:00am','6:00pm',NULL),(507,153,'Miércoles','9:00am','6:00pm',NULL),(508,153,'Jueves','9:00am','6:00pm',NULL),(509,153,'Viernes','8:30am','6:30pm',NULL),(510,153,'Sábado','8:30am','6:30pm',NULL),(511,153,'Domingo','','',NULL),(512,175,'Lunes','','',NULL),(513,175,'Martes','6:00am','9:00pm',NULL),(514,175,'Miércoles','6:00am','9:00pm',NULL),(515,175,'Jueves','6:00am','9:00pm',NULL),(516,175,'Viernes','6:00am','9:00pm',NULL),(517,175,'Sábado','6:00am','9:00pm',NULL),(518,175,'Domingo','6:00am','9:00pm',NULL),(519,179,'Lunes','','',NULL),(520,179,'Martes','','',NULL),(521,179,'Miércoles','5:00pm','10:00pm',NULL),(522,179,'Jueves','6:00am','11:00pm',NULL),(523,179,'Viernes','5:00pm','7:30pm',NULL),(524,179,'Sábado','12:00pm','11:00pm',NULL),(525,179,'Domingo','9:00am','7:00pm',NULL),(526,181,'Lunes','7:30am','8:00pm',NULL),(527,181,'Martes','7:30am','8:00pm',NULL),(528,181,'Miércoles','7:30am','8:00pm',NULL),(529,181,'Jueves','7:30am','8:00pm',NULL),(530,181,'Viernes','7:30am','8:00pm',NULL),(531,181,'Sábado','2:00pm','8:00pm',NULL),(532,181,'Domingo','2:00pm','8:00pm',NULL),(533,182,'Lunes','8:00am','5:00pm',NULL),(534,182,'Martes','8:00am','5:00pm',NULL),(535,182,'Miércoles','8:00am','5:00pm',NULL),(536,182,'Jueves','8:00am','5:00pm',NULL),(537,182,'Viernes','8:00am','5:00pm',NULL),(538,182,'Sábado','9:00am','1:00pm',NULL),(539,182,'Domingo','9:00am','1:00pm',NULL),(540,183,'Lunes','4:00am','8:00am',NULL),(541,183,'Martes','4:00am','8:00am',NULL),(542,183,'Miércoles','6:00am','8:00am',NULL),(543,183,'Jueves','4:30am','8:00am',NULL),(544,183,'Viernes','6:00am','8:00am',NULL),(545,183,'Sábado','6:00am','8:00am',NULL),(546,183,'Domingo','6:00am','8:00am',NULL),(547,184,'Lunes','3:00pm','9:00pm',NULL),(548,184,'Martes','8:30am','3:30pm',NULL),(549,184,'Miércoles','2:00pm','7:00pm',NULL),(550,184,'Jueves','8:30am','3:30pm',NULL),(551,184,'Viernes','9:00am','5:00pm',NULL),(552,184,'Sábado','8:30am','5:00pm',NULL),(553,184,'Domingo','','',NULL),(554,185,'Lunes','8:00am','1:00pm',NULL),(555,185,'Martes','1:00pm','11:30pm',NULL),(556,185,'Miércoles','8:00am','1:00pm',NULL),(557,185,'Jueves','8:00am','11:00am',NULL),(558,185,'Viernes','1:00pm','11:30pm',NULL),(559,185,'Sábado','1:00pm','6:00pm',NULL),(560,185,'Domingo','4:00pm','10:00pm',NULL),(561,186,'Lunes','7:30am','5:00pm',NULL),(562,186,'Martes','','',NULL),(563,186,'Miércoles','','',NULL),(564,186,'Jueves','','',NULL),(565,186,'Viernes','','',NULL),(566,186,'Sábado','','',NULL),(567,186,'Domingo','','',NULL),(568,188,'Lunes','6:00am','8:00pm',NULL),(569,188,'Martes','6:00am','2:00pm',NULL),(570,188,'Miércoles','6:00am','6:00pm',NULL),(571,188,'Jueves','6:00am','2:00pm',NULL),(572,188,'Viernes','6:00am','6:00pm',NULL),(573,188,'Sábado','6:00pm','11:30pm',NULL),(574,188,'Domingo','2:00pm','7:00pm',NULL),(575,189,'Lunes','4:00pm','12:30pm',NULL),(576,189,'Martes','4:00pm','12:30am',NULL),(577,189,'Miércoles','2:00pm','12:30am',NULL),(578,189,'Jueves','4:00am','12:30am',NULL),(579,189,'Viernes','4:00pm','12:30am',NULL),(580,189,'Sábado','4:00pm','10:00pm',NULL),(581,189,'Domingo','6:00am','8:00pm',NULL),(582,193,'Lunes','3:00pm','9:00pm',NULL),(583,193,'Martes','3:00pm','9:00pm',NULL),(584,193,'Miércoles','3:00pm','7:00pm',NULL),(585,193,'Jueves','','',NULL),(586,193,'Viernes','','',NULL),(587,193,'Sábado','','',NULL),(588,193,'Domingo','','',NULL),(589,194,'Lunes','6:00am','11:30pm',NULL),(590,194,'Martes','6:00am','11:30pm',NULL),(591,194,'Miércoles','6:00am','11:30pm',NULL),(592,194,'Jueves','6:00am','11:30pm',NULL),(593,194,'Viernes','6:00am','12:00am',NULL),(594,194,'Sábado','6:00am','5:00am',NULL),(595,194,'Domingo','8:00am','7:00am',NULL),(596,195,'Lunes','8:00am','4:00pm',NULL),(597,195,'Martes','8:00am','4:00pm',NULL),(598,195,'Miércoles','8:00am','4:00pm',NULL),(599,195,'Jueves','8:00am','4:00pm',NULL),(600,195,'Viernes','8:00am','4:00pm',NULL),(601,195,'Sábado','','',NULL),(602,195,'Domingo','','',NULL),(603,196,'Lunes','7:00am','4:30pm',NULL),(604,196,'Martes','7:00am','4:30pm',NULL),(605,196,'Miércoles','7:00am','4:30pm',NULL),(606,196,'Jueves','7:00am','4:30pm',NULL),(607,196,'Viernes','7:00am','4:30pm',NULL),(608,196,'Sábado','7:00am','4:30pm',NULL),(609,196,'Domingo','','',NULL),(610,38,'Lunes','7:00am','7:00pm',NULL),(611,38,'Martes','7:00am','7:00pm',NULL),(612,38,'Miércoles','7:00am','7:00pm',NULL),(613,38,'Jueves','7:00pm','7:00pm',NULL),(614,38,'Viernes','7:00am','7:00pm',NULL),(615,38,'Sábado','7:00am','3:00pm',NULL),(616,38,'Domingo','No trabajo ','No trabajo',NULL),(617,201,'Lunes','8:00am','3:30pm',NULL),(618,201,'Martes','8:00am','3:30pm',NULL),(619,201,'Miércoles','8:00am','3:30pm',NULL),(620,201,'Jueves','8:00am','3:30pm',NULL),(621,201,'Viernes','8:00am','3:30pm',NULL),(622,201,'Sábado','9:00am','2:00pm',NULL),(623,201,'Domingo','','',NULL),(624,200,'Lunes','7:00am','3:00pm',NULL),(625,200,'Martes','7:00am','3:00pm',NULL),(626,200,'Miércoles','7:00am','3:00pm',NULL),(627,200,'Jueves','7:00am','3:00pm',NULL),(628,200,'Viernes','7:00am','3:00pm',NULL),(629,200,'Sábado','7:00am','12:00pm',NULL),(630,200,'Domingo','1:00pm','8:00pm',NULL),(631,203,'Lunes','10:00am','9:00pm',NULL),(632,203,'Martes','8:00am','8:00pm',NULL),(633,203,'Miércoles','10:00am','7:00pm',NULL),(634,203,'Jueves','10:00am','7:00pm',NULL),(635,203,'Viernes','10:00am','7:00pm',NULL),(636,203,'Sábado','7:00am','8:00pm',NULL),(637,203,'Domingo','7:00am','2:00pm',NULL),(638,207,'Lunes','7:00am','3:00pm',NULL),(639,207,'Martes','7:00am','3:00pm',NULL),(640,207,'Miércoles','7:00am','3:00pm',NULL),(641,207,'Jueves','7:00am','3:00pm',NULL),(642,207,'Viernes','7:00am','3:00pm',NULL),(643,207,'Sábado','7:00am','3:00pm',NULL),(644,207,'Domingo','7:00am','5:00pm',NULL),(645,209,'Lunes','2:30pm','7:30am',NULL),(646,209,'Martes','2:30pm','7:30pm',NULL),(647,209,'Miércoles','2:30pm','7:30pm',NULL),(648,209,'Jueves','2:30pm','7:30pm',NULL),(649,209,'Viernes','2:30pm','7:30pm',NULL),(650,209,'Sábado','','',NULL),(651,209,'Domingo','','',NULL),(652,210,'Lunes','5:00am','8:00pm',NULL),(653,210,'Martes','5:00am','8:00pm',NULL),(654,210,'Miércoles','5:00am','8:00pm',NULL),(655,210,'Jueves','5:00am','8:00pm',NULL),(656,210,'Viernes','5:00am','8:00pm',NULL),(657,210,'Sábado','5:30am','5:00pm',NULL),(658,210,'Domingo','','',NULL),(659,211,'Lunes','','',NULL),(660,211,'Martes','10:00am','5:00pm',NULL),(661,211,'Miércoles','','',NULL),(662,211,'Jueves','','',NULL),(663,211,'Viernes','','',NULL),(664,211,'Sábado','','',NULL),(665,211,'Domingo','','',NULL),(666,215,'Lunes','3:30pm','10:00pm',NULL),(667,215,'Martes','3:30am','10:00pm',NULL),(668,215,'Miércoles','3:30am','10:00pm',NULL),(669,215,'Jueves','3:30pm','10:00pm',NULL),(670,215,'Viernes','3:30pm','10:00pm',NULL),(671,215,'Sábado','2:00pm','6:00am',NULL),(672,215,'Domingo','6:30am','12:00am',NULL),(673,216,'Lunes','8:00am','3:30pm',NULL),(674,216,'Martes','8:00am','3:30pm',NULL),(675,216,'Miércoles','8:00am','3:30pm',NULL),(676,216,'Jueves','8:00am','3:30pm',NULL),(677,216,'Viernes','8:00am','3:30pm',NULL),(678,216,'Sábado','8:00am','2:00pm',NULL),(679,216,'Domingo','','',NULL),(680,212,'Lunes','9:00am','3:30pm',NULL),(681,212,'Martes','9:00am','3:30pm',NULL),(682,212,'Miércoles','9:00am','3:30pm',NULL),(683,212,'Jueves','9:00am','3:30pm',NULL),(684,212,'Viernes','9:00am','3:30pm',NULL),(685,212,'Sábado','','',NULL),(686,212,'Domingo','','',NULL);
/*!40000 ALTER TABLE `disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameUser` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwordUser` varchar(100) DEFAULT NULL,
  `lastLogin` tinyint(4) NOT NULL DEFAULT '0',
  `registerOption` varchar(45) NOT NULL,
  `idSocialNetwork` varchar(45) NOT NULL DEFAULT '0',
  `miembro` varchar(45) DEFAULT NULL,
  `hashRpasword` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Francisco Jimenez Spang','francisco.radiofarmacia@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','117770197222748980348','8/7/2019','0'),(2,'','fjspang@yahoo.com','86a6f2f6ab06d082c6319b9a913a2ab10078ba41',0,'Nanny','0','8/7/2019','d589a0c3c1a25f59d7f6ef7aa09f4c6a'),(3,'Nanny365 App','info@nanny365.app','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','103171068733580803647','8/7/2019','0'),(4,'','shinnaoller31@gmail.com','1227f93a7ba9ee61c32659e13277b40e97aaf683',0,'Nanny','0','8/7/2019','0'),(5,'','albani_e75@hotmail.com','2c32464c12945e60e9367e9a9c91980f14fcf0ee',0,'Nanny','0','8/7/2019','0'),(6,'','carmenta12345@hotmail.com','5c3361ed7e42bbb6eff36994a09aef9df633a35e',0,'Nanny','0','8/7/2019','0'),(7,'','cristinaromeroac27@gmail.com','551b7745af2f20d0f6ea7c350f7ef5ea10a6624b',0,'Nanny','0','8/7/2019','0'),(8,'','eglepadron1@gmail.com','043d4fab5f986ace85a3d662fcf0e92ed15d9024',0,'Nanny','0','8/7/2019','0'),(9,'','lury132326@hotmail.com','4aa3a4ef6fc2f53fd1c70bb487558b9b1e870674',0,'Nanny','0','9/7/2019','0'),(10,'Silvia Marlene Padron Carriillo','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2407245752646902','9/7/2019','0'),(11,'','adrij1506@hotmail.com','15985c82e97b94d6dd122af2e21c080e0b2895f7',0,'Nanny','0','9/7/2019','0'),(12,'','alejandramunoz0408@gmail.com','a4f4f91a30db1363ca0e369d03d76cb915f8c654',0,'Nanny','0','9/7/2019','0'),(13,'','jamescristabel@gmail.com','a60bcddd88cd2483d3863715de886c948bf12667',0,'Nanny','0','12/7/2019','0'),(14,'','silvia_padron@hotmail.com','86a6f2f6ab06d082c6319b9a913a2ab10078ba41',0,'Nanny','0','15/7/2019','d589a0c3c1a25f59d7f6ef7aa09f4c6a'),(15,'','anita.231@hotmail.com','bd3f0572c464289c75834ab8b6ad07c99f90c87b',0,'Nanny','0','15/7/2019','0'),(16,'','miriampark06@gmail.com','3b53821726e99781fa183cb7c39d1867c0f31357',0,'Nanny','0','17/7/2019','0'),(17,'Namivia Gusman','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','470974510354603','29/7/2019','0'),(18,'','yamyg2816@gmail.com','ff187cf3ba2ed36c908727ad74f427ff53179bf5',0,'Nanny','0','29/7/2019','0'),(19,'','thais_179@hotmail.com','cab8046be49aa8d33f50cd1cc7578330d487a97e',0,'Nanny','0','29/7/2019','0'),(20,'','mgabriela2503@gmail.com','96bd4022b728e49cd98e40e863bbbaeaa44f66d9',0,'Nanny','0','29/7/2019','0'),(21,'Elsi Ruiz','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10218074513187525','29/7/2019','0'),(22,'Dalis La Pekeña Lulu Gonzalez','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10161929960770386','29/7/2019','0'),(23,'','soniandino99@gmail.com','87f66343531b59658f9d93d862d08558e1feace2',0,'Nanny','0','29/7/2019','0'),(24,'Ingrid Fabiola Leiva Manzanares','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2422505694473348','29/7/2019','0'),(25,'','akemysg769@gmail.com','c8826b1fbf74346d3515e87347ab9c1dabb5300d',0,'Nanny','0','30/7/2019','0'),(26,'','ibycastle11@gmail.com','0c73308662c7874ccacbc6a65bdddc5356e163b4',0,'Nanny','0','30/7/2019','0'),(27,'','yasmeorellanes@gmail.com','86a6f2f6ab06d082c6319b9a913a2ab10078ba41',0,'Nanny','0','30/7/2019','d589a0c3c1a25f59d7f6ef7aa09f4c6a'),(28,'','claudiaibarguen97@gmail.com','581bff10afb58b3bf70b0e6cf21605f0c0256462',0,'Nanny','0','30/7/2019','0'),(29,'','andrea_perez23@yahoo.com','69775fe78f6f1c220f61e208fd247f262e45a05a',0,'Nanny','0','30/7/2019','0'),(30,'','usobeyda9@gmail.com','c16273a14244d362f13af675cd6c12169ab46709',0,'Nanny','0','30/7/2019','0'),(31,'','astrid13paulino@gmail.com','4d3decb30e551dc8f1cc35925ac2f5b04f5c55f5',0,'Nanny','0','30/7/2019','0'),(32,'','nana.b21@hotmail.com','a67cfe884afdbe2636a0f315f4b7bd2e28849431',0,'Nanny','0','30/7/2019','0'),(33,'','mariamercado379@gmail.com','7a4e2e9ff4d270f40ea6f0300742ef870d6401ff',0,'Nanny','0','30/7/2019','0'),(34,'','negritanely35@hotmail.com','82b03e2a3fb191e2115b5e4ec1deedadedf6e238',0,'Nanny','0','30/7/2019','0'),(35,'','deliar487@gmail.com','2e0dd412f7303a4af0fc5d9bd8a7551cc9db6097',0,'Nanny','0','30/7/2019','0'),(36,'','joneliasanchez@gmail.com','c949f7440295021b31ed7f5b27a0f0fe18eb769e',0,'Nanny','0','30/7/2019','0'),(37,'','joshuanespinosa13@gmail.com','a4a3a07729e882422c11a6508aad42a1dfa2a890',0,'Nanny','0','30/7/2019','0'),(38,'Lina Saenz Barroso','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2284665308320006','30/7/2019','0'),(39,'','jackyperez002@gmail.com','12845b259925cdb39447c04d71d70535206c68b1',0,'Nanny','0','30/7/2019','0'),(40,'','garibaldiraquel759@gmail.com','3327ea30b23d209acc6d3ebf1dae4845700aa71a',0,'Nanny','0','30/7/2019','0'),(41,'Raquel Garibaldi','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','418102165715351','30/7/2019','0'),(42,'','juremadc@hotmail.com','fe08d0e9b1694523018c6c167b45bd95ca5e7403',0,'Nanny','0','30/7/2019','0'),(43,'','glexi.15naza@gmail.com','7b66a8b88c0c5386131c4affbeabc43f09d1e634',0,'Nanny','0','30/7/2019','0'),(44,'','nataliaaaa572@gmail.com','b85600e299a0d161fbba893a809df20f26bfa4ec',0,'Nanny','0','30/7/2019','0'),(45,'','caroljhg@gmail.com','8b3ae127a2a67b3ea955151d0fac1002c5fc2d80',0,'Nanny','0','30/7/2019','0'),(46,'','iliadaharless@gmail.com','7834befc60b0d07b94285977928700f75ae0924c',0,'Nanny','0','30/7/2019','0'),(47,'','arlethy03@hotmail.com','d15c5b95273e0ad379a72cf94da4212fa4550aa5',0,'Nanny','0','30/7/2019','0'),(48,'','ollarveskaren@gmail.com','5768f69f2e8752a173ae4d2d3da49678813dc34e',0,'Nanny','0','30/7/2019','0'),(49,'','roslynaviles2027@hotmail.es','6faa80721f582495f1e224d85097c24500ad0fb8',0,'Nanny','0','30/7/2019','0'),(50,'','princesitahardcore907@gmail.com','b7893466fdca3ecebee1a5eb5da39e0141e034e0',0,'Nanny','0','31/7/2019','0'),(51,'','avila.morrell@gmail.com','a53ccb3ab91d66fc6dd02bb5d453d217f7bb91fa',0,'Nanny','0','31/7/2019','0'),(52,'','ivonsilvera13@gmail.com','9fd95d4b01299800e530da054f1063dc79c34065',0,'Nanny','0','31/7/2019','0'),(53,'','martharosabermudez@hotmail.com','75c035af59849e6e2a2ab7b587a25004fb709e07',0,'Nanny','0','31/7/2019','0'),(54,'Lesly Joema Coleman Saballos','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','1125653794306527','31/7/2019','0'),(55,'Anais Avila','avilaanais280@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','109112340014230479829','31/7/2019','0'),(56,'','natieskasalgado@gmail.com','c66d01162fe4b6850123f4b98369b545caf8e8a0',0,'Nanny','0','31/7/2019','0'),(57,'','esithmilian980523@gamil.com','18ac2bbe92e99a5e141099a1ff5472ef59dcb938',0,'Nanny','0','31/7/2019','0'),(58,'Jarihanysjahirys Hernandez','jarihanysjahiryshernandez@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','112378768380942110155','31/7/2019','0'),(59,'','Gigicastt@gmail.com','19061fe7e566c3068e4c7dcfece97f58752156c5',0,'Nanny','0','31/7/2019','0'),(60,'','nunezmarlene3@gmail.com','92e78370f6b9ef40d99093bb39213314c8f42147',0,'Nanny','0','31/7/2019','0'),(61,'','ka_ri0520@hotmail.com','6b9de7bd5a8cf4cc9bda1e9c2c4155fe5117aef2',0,'Nanny','0','31/7/2019','0'),(62,'','mbthlpz80@gmail.com','459ab30f8ac887cd97ee3f45eb29adc131c69035',0,'Nanny','0','31/7/2019','0'),(63,'','adrianamaldonado0719@gmail.com','3104de7a59f2726bed8ba7c4f132a3b74c8a82da',0,'Nanny','0','31/7/2019','0'),(64,'','luciadelgado103@gmail.com','7bd7ca80c9cdf77698f7f74adc272b0f3a4d74d9',0,'Nanny','0','31/7/2019','0'),(65,'','Evaforero20@gmail.com','03b02a002082c7ae170f5d9b9c3d00484980e3a8',0,'Nanny','0','31/7/2019','0'),(66,'','yosselinestrada1994@gmail.com','1c3a699cbc9536de41bed916419843e288982034',0,'Nanny','0','31/7/2019','0'),(67,'','olaidisalvarez2103@gmail.com','032e4f0e1a453b33835193e8171d5df0ed550149',0,'Nanny','0','31/7/2019','0'),(68,'','alejandramoncada1220@gmail.com','9666a356e70484cffd621af7e0704575eb0e2439',0,'Nanny','0','31/7/2019','0'),(69,'','cortezkatherine714@gmail.com','770bf7d22b4fc16d4e353be97b0a662c97f82f24',0,'Nanny','0','31/7/2019','0'),(70,'','dianamarceladuran@hotmail.com','75ac3849f72588870f105a043ab125b45006170e',0,'Nanny','0','31/7/2019','0'),(71,'Mendoza Nathy','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','123719228910331','31/7/2019','0'),(72,'','karen_orozco06@icloud.com','7d5f5dd1dce9732f55481a4bdfc5fd39a9993972',0,'Nanny','0','31/7/2019','0'),(73,'','mariaelena0511@gmail.com','dacc43b18d3216c87a3cde52a2c5adc7c1fb3c85',0,'Nanny','0','31/7/2019','0'),(74,'Vianney Gonzalez','laparadabar14@gmail.com','86a6f2f6ab06d082c6319b9a913a2ab10078ba41',0,'Google','115662555915466857935','31/7/2019','d589a0c3c1a25f59d7f6ef7aa09f4c6a'),(75,'','ingrithmojica1@gmail.com','a1211b19980d86a1eeeeedaab29f5eedfd1c7ab1',0,'Nanny','0','31/7/2019','0'),(76,'','lesyany1988@gmail.com','7013e7918e50341e63abf4c00e038b9cecc4682f',0,'Nanny','0','31/7/2019','0'),(77,'','Nathalyyguerra24@gmail.com','d72b40781f40398ff9d5b1e5adef44b8b12be948',0,'Nanny','0','31/7/2019','0'),(78,'Ingrid Mojica','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','3101183693286414','31/7/2019','0'),(79,'','sadday.robles@gmail.com','92ff3d761c29912b94f82636d42e328a2ddd7eeb',0,'Nanny','0','31/7/2019','0'),(80,'','maryangeles190400@gmail.com','dd460a645efe1ddfffc294b874f95d47006727d6',0,'Nanny','0','31/7/2019','0'),(81,'','alarconsugey92@gmail.com','f833173869a659be958d8fde730c6b9701a0be06',0,'Nanny','0','31/7/2019','0'),(82,'','annettecristina_parrillamembreo@yahoo.com','19e2e7502ea134ea8ef105d9b7a95da9bdc1f453',0,'Nanny','0','31/7/2019','0'),(83,'','karyedith.kr@gmail.com','3997930f3d2ba7110db3c5f25d96429f3e70858b',0,'Nanny','0','31/7/2019','0'),(84,'Nadyaris Henry','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','162534688239416','31/7/2019','0'),(85,'Carolina Lunna','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','639654869885632','31/7/2019','0'),(86,'nancy4191@hotmail.com','nancy4191@hotmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','116559103454819021358','1/8/2019','0'),(87,'','mileyka291416@gmail.com','218e766aa4dd3bdeb0958de113ddbfb5228835c0',0,'Nanny','0','1/8/2019','0'),(88,'','lauravalen07@hotmail.com','f37343b1235a22efd0313ce6c98fc1e1b40cc091',0,'Nanny','0','1/8/2019','0'),(89,'Ahizamar Isaza','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','952125668465525','1/8/2019','0'),(90,'','greneiza@gmail.com','db53755360c00cab7a8e5d3cc04b80987b060261',0,'Nanny','0','1/8/2019','0'),(91,'Yosmeira Francis','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2586738028069505','1/8/2019','0'),(92,'Cecia Rivera Acosta','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','1282110085300990','1/8/2019','0'),(93,'','ceciaacosta00@gmail.com','b0aacb59923ea48c5f3b9ab957fcc396640c40a2',0,'Nanny','0','1/8/2019','0'),(94,'','caicedomarifer41@gmail.com','2974cf351eff840ab045291769ba7e7f501d8dd7',0,'Nanny','0','1/8/2019','0'),(95,'','adrialexandra23@gmail.com','3424f53ba3d560439b82547786f38bc87e07c231',0,'Nanny','0','1/8/2019','0'),(96,'','nellyvillalba@gmail.com','f7b15d4513c03cd6687f795582248e98da9c5e67',0,'Nanny','0','1/8/2019','0'),(97,'Fabiola Duarte','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','147983093063329','1/8/2019','0'),(98,'','tanishaledezma@hotmail.com','1fb4e4f34c74864a1caa79ae6831260c48ce3951',0,'Nanny','0','1/8/2019','0'),(99,'Arys Collazos','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10162443850495311','1/8/2019','0'),(100,'','joselingjackson@gmail.com','8495cdd0d873439b6c8b98d718dd3026fd2dc7e8',0,'Nanny','0','1/8/2019','0'),(101,'','yurivane03@gmail.com','3ce93dc4845b0e362d4f80c2e7a1f53169d9e95a',0,'Nanny','0','1/8/2019','0'),(102,'','A.santos.serrano.08@gmail.com','10c1165cd603299976249eb617d058f80dd2165a',0,'Nanny','0','1/8/2019','0'),(103,'','mariavelezsaldarriaga3@gmail.com','8f907614f664d763c2f14cc44f658c46842f777c',0,'Nanny','0','1/8/2019','0'),(104,'','shely0570@outlook.es','c9f69a784d05348b2da7936f425e718f368ebe1a',0,'Nanny','0','1/8/2019','0'),(105,'Any Avila','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10217560547158907','1/8/2019','0'),(106,'','latin_@Outlook.es','2942fc9ba991b14ab009eb7d904d176048e913bb',0,'Nanny','0','1/8/2019','0'),(107,'Yeny Martinez','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','423729025018716','1/8/2019','0'),(108,'Doralis M Ureña','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','906939889660472','1/8/2019','0'),(109,'','littleparty14@hotmail.com','38d4a74745acd967199ecaa3c1559b02fe8e4915',0,'Nanny','0','1/8/2019','0'),(110,'Yarisbeth Escobar Brias','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','1427014590780456','1/8/2019','0'),(111,'Dugle Rodriguez','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2384079861671209','1/8/2019','0'),(112,'Rosemary Castillo','rosemarycastillo1019@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','110964816880142459019','1/8/2019','0'),(113,'Dugleidys Rodriguez','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2839848889362631','1/8/2019','0'),(114,'','orisnoemy.ov@gmail.com','41eccf00600ed0cfc6143cbad7dab0486aa6ff55',0,'Nanny','0','1/8/2019','0'),(115,'Shinna Oller','shinnaoller31@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','106386661483511029296','1/8/2019','0'),(116,'','josi199923@gmail.com','020a8302bfb6cfc46079360b94756ee27ede6a7c',0,'Nanny','0','2/8/2019','0'),(117,'','yborrerocortes@gmail.com','157053b67c3b972fbd6360a80efd9aa905e33b8e',0,'Nanny','0','2/8/2019','0'),(118,'','valentina.encinas@gmail.com','a062bfc569bb85249d220351f03cfe5ea2eef206',0,'Nanny','0','2/8/2019','0'),(119,'Xochil Loireth Cárdenas Rodríguez','xcardenasrodriguez@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','103964219174221265354','2/8/2019','0'),(120,'','ubumtu1979@gmail.com','a27e4af031cbffd380d35f1b284f65fbd4f015e1',0,'Nanny','0','2/8/2019','0'),(121,'Valentina Encinas','valentina.encinas@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','112475775016006019085','2/8/2019','0'),(122,'','alexaruizmodelo@hotmail.com','7eda9c961c69dff947104a5763094c34874aded0',0,'Nanny','0','2/8/2019','0'),(123,'','danelys09barrios@gmail.com','bcf2980888f450e71c1f01834bdc7289a2941b2c',0,'Nanny','0','2/8/2019','0'),(124,'','tahysguardia05@email.com','f85863f7949d3e63280d39c474d7868b0a9c3582',0,'Nanny','0','2/8/2019','0'),(125,'','kastilloc94@gmail.com','566905f63648c954b10ea245db948c6ae1563ac9',0,'Nanny','0','2/8/2019','0'),(126,'','quirozvielma5@gmail.com','3660fcb65385be2e187bae5ad30a7d9599676a52',0,'Nanny','0','2/8/2019','0'),(127,'Charo Garcia Mora','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2593110367387743','2/8/2019','0'),(128,'','yarelinsevillach@gmail.com','68fbb7ed5cd7edb4021c5f68e540b429203da511',0,'Nanny','0','2/8/2019','0'),(129,'','leidyacanog@gmail.com','71c041e80c728c067dac2053861bb1d9ff4a1f6f',0,'Nanny','0','2/8/2019','0'),(130,'','itzeltvj@gmail.com','1fa4e9ed96c2dac04a6337a59a234da38384bdfc',0,'Nanny','0','2/8/2019','0'),(131,'Indira Napoli','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2942134125859971','2/8/2019','0'),(132,'','praxda@gmail.com','67cf2809d49b00fe400a0d46f0b92367446d6467',0,'Nanny','0','2/8/2019','0'),(133,'','Melissamedianero8@gmail.com','e24c4e23655c5388ad91619c3d7c3f180acf2941',0,'Nanny','0','2/8/2019','0'),(134,'','anais_1721@hotmail.com','993ec20f2a1e0cd8c380a1879e675a85194bfc01',0,'Nanny','0','2/8/2019','0'),(135,'','fnoheliag2@gmail.com','5772fc0f361fd1f4ef22ddc3d6558cbd8203a71c',0,'Nanny','0','2/8/2019','0'),(136,'','desirevalderrama@gmail.com','86e672477fe1ea6f3e0e5ef602022e982da2edd2',0,'Nanny','0','3/8/2019','0'),(137,'','ddiaz1319@gmail.com','518322e8a80fb9c5600e0005d0c8921d6c46feb0',0,'Nanny','0','3/8/2019','0'),(138,'shannen racine','aristelapinto0696@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','102024307241846014654','3/8/2019','0'),(139,'','ltvalencia0@gmail.com','9af6f8b632fe0e162e4ea3b9def5c63497f195a4',0,'Nanny','0','3/8/2019','0'),(140,'','olgeluga@hotmail.com','e48548bb6da352ddfcbaed66b0276df9f4ed831e',0,'Nanny','0','3/8/2019','0'),(141,'','yeilincastillo24@gmail.com','7b79f33254a4b62a6f5a1d509114ea7d9f68f2ca',0,'Nanny','0','3/8/2019','0'),(142,'Elizabeth Mondragón','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2448966262001355','3/8/2019','0'),(143,'','itzaalguero29@gmail.com','cac404e253db019497a2f9931a094ba0644345d1',0,'Nanny','0','3/8/2019','0'),(144,'','kaleydisk@gmail.com','ea6d03e25c4a467cad94f3ac4884bceb37c26995',0,'Nanny','0','3/8/2019','0'),(145,'','julia0250@outlook.es','c209101d78c2227a89b5a1e038648949298559f1',0,'Nanny','0','4/8/2019','0'),(146,'','jasbleidyoe20@hotmail.com','a0c87843f2c2dc8084bb7e07958f0a345d50747d',0,'Nanny','0','4/8/2019','0'),(147,'Vanessa Beby Nessa De Gracia','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','652400738567752','4/8/2019','0'),(148,'','auraduque2930@gmail.com','ac4bb211a7121f56ba4e87d5eb4e7bb2715052b1',0,'Nanny','0','4/8/2019','0'),(149,'','luisacuadra64@gmail.com','dacebf004346a665510f9c39a7178fa1fa5d7f5d',0,'Nanny','0','4/8/2019','0'),(150,'Nathalie Miranda','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2878058002264623','4/8/2019','0'),(151,'','garcialeidy816@gmail.com','e7797436db9d23cbeb41c3b26ab7b8640ff5f904',0,'Nanny','0','4/8/2019','0'),(152,'Marianella Sulbaran Geara','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10219924168914736','4/8/2019','0'),(153,'','Indiraaa33@gmail.com','86a6f2f6ab06d082c6319b9a913a2ab10078ba41',0,'Nanny','0','4/8/2019','d589a0c3c1a25f59d7f6ef7aa09f4c6a'),(154,'Mavis De Mendoza','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','495977884500403','4/8/2019','0'),(155,'Yunimayre Ramos','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','353830132229920','4/8/2019','0'),(156,'','dfalbellod80@gmail.com','dbbbe0ec00397244949daac5f22a4caba447e51a',0,'Nanny','0','4/8/2019','0'),(157,'Mayuri Cinus Flores','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2437070759696152','4/8/2019','0'),(158,'Janeth Acosta','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','688586024923777','4/8/2019','0'),(159,'','dianadiosa972@gmail.com','0d7d02d5826f7d772ff0d436ed8cc65132041c23',0,'Nanny','0','5/8/2019','0'),(160,'Calvo Osorio Mary','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10213443759239295','5/8/2019','0'),(161,'','aristelapinto0696@gmail.coma','ca76ea2866ed06f74e80ad14645dd4a3ebe8e374',0,'Nanny','0','5/8/2019','0'),(162,'','is3439452@gmail.com','4a6e39644b3f406d1dd23fecd922b3508e650de1',0,'Nanny','0','5/8/2019','0'),(163,'Praxda Zohara','praxda@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','109593648636401022694','5/8/2019','0'),(164,'','sheylaolmosxs@gmail.com','db3f9db22aa4a6857b804e579039a62aa71729b7',0,'Nanny','0','5/8/2019','0'),(165,'','carolinamolano88@hotmail.com','81a4723322fd319aaf1cb25a124cca17ce773b8c',0,'Nanny','0','5/8/2019','0'),(166,'','rousse739499@gmail.com','97851bbfe43c8087cbdd29b108ca47ab1865ff62',0,'Nanny','0','5/8/2019','0'),(167,'','docentevianethlopez@gmail.com','df5fdb19e6c708e11cbc89f49854f8ebcee27e64',0,'Nanny','0','5/8/2019','0'),(168,'','cristiana201@hotmail.es','897e8afca1c04e67dcb002d0b8294a7ec9bf360c',0,'Nanny','0','5/8/2019','0'),(169,'nancy guerrero','guerreronancy716@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','102580572868782430875','6/8/2019','0'),(170,'','yosmeiralasexi11@gmail.com','70395ded864264f345903f8c5d74ba9b914ea69f',0,'Nanny','0','6/8/2019','0'),(171,'Nuzly Morales','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2346680342080118','6/8/2019','0'),(172,'','yasbeth883@gmail.com','4e35b62bb4a089851159a57e7a663c092cdb54dd',0,'Nanny','0','6/8/2019','0'),(173,'','belisat1995@gmail.com','9fed57583c0da54f1946f66725f723aac0ab0d35',0,'Nanny','0','6/8/2019','0'),(174,'','cecigon2211@gmail.com','83e8c5377826ebc36863b4597a1220a1d9133a43',0,'Nanny','0','6/8/2019','0'),(175,'','massielobando21@yahoo.es','1f784156b4ba46fbe6a0aca5abc013bf7192752a',0,'Nanny','0','6/8/2019','0'),(177,'','karinaortiz49@hotmail.com','456102e3eac69d1642a2c883140c40a98be1d636',0,'Nanny','0','6/8/2019','0'),(178,'','valeriemadelaine13@gmail.com','bacd78b5e3c8a4236fd976eb1febf32e31403029',0,'Nanny','0','7/8/2019','0'),(179,'','nicolle015@hotmail.com','80f53094996d50188dd7025690e355ccf1e81172',0,'Nanny','0','7/8/2019','0'),(180,'','Brigitt31290@hotmail.com','41dbadef5ead7503406a46423c0aace1f72d77bc',0,'Nanny','0','7/8/2019','0'),(181,'','fabireveron@gmail.com','5e47e043dad8872700d1be4dbc92762b5cc9144b',0,'Nanny','0','7/8/2019','0'),(182,'','brigittara20@hotmail.es','41dbadef5ead7503406a46423c0aace1f72d77bc',0,'Nanny','0','7/8/2019','0'),(183,'','stephanycasana@gmail.com','bb575160a06ac3b884ce309eb3bd38a3ad3674c7',0,'Nanny','0','7/8/2019','0'),(184,'','maricelasoniasantanderperez@gmail.com','3aa4e40bc4a2f588f52ab2a16d0362923922cee7',0,'Nanny','0','7/8/2019','0'),(185,'Nadhji Agragel','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10157646489421340','8/8/2019','0'),(186,'','brayita0950@gmail.com','ff51f7cb7b2e3b1fd08116dca24513656ccf8a89',0,'Nanny','0','8/8/2019','0'),(187,'','lainimariagrazia@gmail.com','a9aa4d601d45a887851328b0b6315239261570e5',0,'Nanny','0','8/8/2019','0'),(188,'','melo1154@gmail.com','42b5dadd242c9d85c6b4c69b4a10afbd7d5a4674',0,'Nanny','0','8/8/2019','0'),(189,'','stephanieovadia9@gmail.com','b3ab8dc1b53824205ae14ebe18f46f59412e3170',0,'Nanny','0','8/8/2019','0'),(190,'Ana Gabriela Acevedo','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','2329534600489083','8/8/2019','0'),(191,'','janeacostaherrerao26@gmail.com','fad6a494f9be52883188cf390df995b3d92d5d55',0,'Nanny','0','9/8/2019','0'),(192,'','joselyncadavid@hotmail.com','68921b20cd97c77d533771abca19967de0300c8f',0,'Nanny','0','9/8/2019','0'),(193,'','yanaiza-09@hotmail.com','7f0b2b0ca4e32741e18f26099accb66c8e6a8bc7',0,'Nanny','0','9/8/2019','0'),(194,'','faeco.meybercortez@gmail.com','23d9aff1d6ac40d532041bfb7b6e96f437bb9eab',0,'Nanny','0','9/8/2019','0'),(195,'','lmelendez1217@gmail.com','4f1061a1c63e4be48c6bfb6bfb8652a3e74b8a5b',0,'Nanny','0','9/8/2019','0'),(196,'','faty1315@hotmail.com','52750a761596e4409b9366009d63a7ded741ccf6',0,'Nanny','0','9/8/2019','0'),(197,'','mariastovar12@gmail.com','84c26a6891047dc844131e475460f7c43d91116a',0,'Nanny','0','9/8/2019','0'),(198,'','cuadraluisa64@gmail.com','ec4a496daa6ca041fff07d120552e9d8105ab392',0,'Nanny','0','10/8/2019','0'),(199,'','kmontalvanblandon@gmail.com','8a4f5b2d8c8c29d4100f56d841699f76bf0408e6',0,'Nanny','0','10/8/2019','0'),(200,'','ceci-lia22@hotmail.com','0653abbee2e7f0a956185b05231301677c513916',0,'Nanny','0','11/8/2019','0'),(201,'','ebdblanco@gmail.com','cc461d7d8107e1474d8d22c5b2d63018adf01045',0,'Nanny','0','12/8/2019','0'),(202,'','Nancyta2701@gmail.com','1450f0de8484d056a7f36d5945fcab3133f277b6',0,'Nanny','0','12/8/2019','0'),(203,'','kathytorrero89@gmail.com','4886b48f1a62c10bda172672a4abb878a63234f1',0,'Nanny','0','12/8/2019','0'),(204,'','Mayderlys2010@gmail.com','4d57a54c0a46dcf142eba43740f12f146fee1f41',0,'Nanny','0','12/8/2019','0'),(205,'CrisAnn P Membreño','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','679399079138324','12/8/2019','0'),(206,'','leidymariamt10@hotmail.com','1a36bbed2b7be1586d215a82e617be31098fc4a1',0,'Nanny','0','12/8/2019','0'),(207,'','krijan0704@gmail.com','92b8c73ba97571415e389b5d721135c82d31ca8f',0,'Nanny','0','12/8/2019','0'),(208,'Krizia Sanchez','krizlineth4@gmail.com','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Google','117874809159812006370','12/8/2019','0'),(209,'','diacrisgs@gmail.com','9b5d9b8a474516e4b9058c28d29624bbcd64a1f1',0,'Nanny','0','13/8/2019','0'),(210,'','jaenjackeline@gmail.com','731545ca2f791b018e36b6b14af32c103f69e53a',0,'Nanny','0','13/8/2019','0'),(211,'','denisseesmeralda7@gmail.com','f90e9018ab747fd102296adf9f6fe787b1bb346c',0,'Nanny','0','13/8/2019','0'),(212,'','Shirlytrejo@gmail.com','87b87c54762b49b2128e42991a26a7bec46cc1df',0,'Nanny','0','13/8/2019','0'),(213,'','gabi.devis2803@gmail.com','9478321bb21875a5ec8f46dd8a2cb99b9cc87495',0,'Nanny','0','13/8/2019','0'),(214,'','Rochi262012@gmail.com','68bdc80bfe7754aadacb14892658d790dabc5516',0,'Nanny','0','13/8/2019','0'),(215,'Ronaima Urdaneta','','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'Facebook','10220357818200203','13/8/2019','0'),(216,'','lucasmaritere@gmail.com','c77a1f82fe2802ec983413e2e82f7680ffb3528a',0,'Nanny','0','13/8/2019','0'),(217,'','marcellacueto13@gmail.com','c666462e20b2777a06274ca4d3d39a9ac3d3c193',0,'Nanny','0','13/8/2019','0');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannydatageneral`
--

DROP TABLE IF EXISTS `nannydatageneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nannydatageneral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int(11) DEFAULT NULL,
  `experiencia` varchar(50) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `serviciosEspeciales` varchar(200) DEFAULT NULL,
  `serviciosAdicionales` varchar(200) DEFAULT NULL,
  `certificacion` varchar(200) DEFAULT NULL,
  `verificacion` varchar(200) DEFAULT NULL,
  `tarifa` int(11) DEFAULT NULL,
  `zona` varchar(300) DEFAULT NULL,
  `sobreMi` varchar(400) DEFAULT NULL,
  `othersServiceEspeciales` varchar(100) DEFAULT NULL,
  `othersInformacionAdicional` varchar(100) DEFAULT NULL,
  `exp` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `servicios` (`servicios`,`serviciosAdicionales`,`zona`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannydatageneral`
--

LOCK TABLES `nannydatageneral` WRITE;
/*!40000 ALTER TABLE `nannydatageneral` DISABLE KEYS */;
INSERT INTO `nannydatageneral` VALUES (4,4,'5 años o mas','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Me gustan las mascotas,Cuido hasta 3 niños','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',25,'Betania,Bella Vista,Via Argentina,Multiplaza,Ernesto Córdoba Campos,Juan Díaz,Punta Pacifica,Parque Lefevre,Pedregal','','Jugar con el infante. ','','5'),(5,5,'2 años','Lactante,Infantiles de 1-3 años','Se conducir','Ayuda con las tareas,Paseo al mall','Estudios Universitarios','',30,'Multiplaza,Parque Lefevre,Panamá,Río Abajo,Betania,Chanis,Costa del Este,El Dorado,Hato Pintado,Los Angeles,Marbella,Obarrio,Paitilla','','','','2'),(6,6,'5 años o mas','Infantiles de 1-3 años','Cuido hasta 3 niños','','','',0,'','Soy maestra de preescolar graduada, soy una persona alegre, honesta, respetuosa, me gusta trabajar con niños, ','','','5'),(7,7,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años,Lactante','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios','',25,'','Honesta , responsable , prioridad los niños ','','',''),(8,8,'','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas,Se conducir','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo','Estudios Secundarios,Estudios Universitarios,Primeros auxilios','',0,'Panamá,Ancón,Multiplaza,Punta Pacifica,Coco del Mar,Costa del Este,El Cangrejo,El Carmen,Paitilla,Obarrio,Marbella,La Alameda,La Cresta,Diablo,Condado del Rey,Clayton,Ciudad del Saber,Area Bancaria,San Francisco','Soy responsable, puntual, organizada, competente, asertiva, cariñosa, respetuosa, alegre y comunicativa.','','',''),(9,9,'5 años o mas','Lactante,Escolar 6-12 años','Cuido niños enfermos,Me gustan las mascotas,Se conducir','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Primeros auxilios,Estudios Secundarios,Estudios Universitarios,Niños con discapacidad','',20,'','Técnica de enfermeria con conocimiento de neonatos y niños','','','5'),(10,11,'','','','','','',0,'','',NULL,NULL,NULL),(11,12,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Primeros auxilios,Niños con discapacidad','',40,'Betania,Bella Vista,Chilibre,Via Argentina,Multiplaza,Punta Pacifica,Parque Lefevre,San Francisco,El Cangrejo,El Carmen,El Dorado,La Cresta,Hato Pintado,Obarrio,Paitilla','Soy Lic en educacion inicial 15 años  de experiencia laboro en kinder aquí y hago tutorias venezolana 39años especialista en niños pequeños y estimulación temprana ','','','5'),(12,13,'1 año','Adolecentes +12 años','Cuido hasta 3 niños','Tareas básicas del hogar','Estudios Secundarios','',20,'','Soy estudiante de psicología, curso el 2 año y tengo experiencia trabajando de asistente en coif con niños y bebés ','','',''),(13,14,'','','','','','',0,'','',NULL,NULL,NULL),(14,15,'4 años','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Se conducir,Me gustan las mascotas','Paseo al mall,Alimentación y aseo,Servicios de recogida','Estudios Secundarios','',0,'Bella Vista,Betania,Via Argentina,Multiplaza,Panamá,Punta Pacifica,San Francisco,Area Bancaria,Coco del Mar,El Cangrejo,El Carmen,El Dorado,La Cresta,La Alameda,Los Angeles,Marbella,Obarrio,Tumba Muerto,Paitilla','','','','4'),(15,16,'','Escolar 6-12 años,Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños','','Estudios Universitarios','',25,'','Soy Licenciada Especialista en Dificultades en el Aprendizaje.','','',''),(16,17,'','','','','','',0,'','',NULL,NULL,NULL),(17,18,'','','','','','',0,'','',NULL,NULL,NULL),(18,19,'','','','','','',0,'','',NULL,NULL,NULL),(19,20,'2 años','Lactante,Infantiles de 1-3 años','Me gustan las mascotas','Tareas básicas del hogar,Paseo al mall,Ayuda con las tareas','Estudios Universitarios','',25,'Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Panamá,Punta Pacifica,Parque Lefevre,Pueblo Nuevo,Río Abajo,San Francisco,Casco Antiguo,Balboa,Cerro Viento,Coco del Mar,Condado del Rey,El Cangrejo,El Carmen,El Dorado,Obarrio,Paitilla,Tumba Muerto,Villa Lucre','Buenas soy Venezolana. Tengo 25 Años tengo 1 bebe de 1 año y 3 meses. Tengo experiencia en cuidado de niños y limpieza del hogar. Soy honesta responsable. Puntual.\n','','','2'),(20,21,'3 años','Preescolares 3-6 años','Me gustan las mascotas','Paseo al mall','Estudios Universitarios','',50,'','Soy profesora de francés me encantan los niños y las mascotas.\nHago talleres de manualidades y un poco de repostería ','','','3'),(21,22,'','','','','','',0,'','',NULL,NULL,NULL),(22,23,'','','','','','',0,'','',NULL,NULL,NULL),(23,24,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños','','Estudios Universitarios','',450,'Tumba Muerto,Villa Lucre,El Dorado,Condado del Rey,Costa del Este,Paitilla,Obarrio,El Cangrejo,Balboa,Cerro Viento,Chanis,Punta Pacifica,Las Mañanitas,Multiplaza,Via Argentina','','','','2'),(24,25,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños','Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios','',20,'Versalles,Paitilla,Obarrio,Marbella,Costa del Este,Chanis,Area Bancaria,Tocumen,San Francisco,Multiplaza,Juan Díaz,Punta Pacifica,Panamá,Parque Lefevre,Cerro Viento','Responsable \nHonesta\nDedicada','','','5'),(25,26,'','','','','','',0,'','',NULL,NULL,NULL),(26,27,'1 año','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios','',250,'Via Argentina,Parque Lefevre,Río Abajo,Obarrio,Tumba Muerto','Soy una chica con buenas intensiones con las más mínimas ganas de trabajar y tratar de lo mejor a los niños me gusta darles un cuidado excelente y que todo sea de bien ','','',''),(27,28,'','','','','','',0,'','',NULL,NULL,NULL),(28,29,'','','','','','',0,'','',NULL,NULL,NULL),(29,30,'5 años o mas','Infantiles de 1-3 años,Escolar 6-12 años','','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo','Estudios Universitarios','',10,'Juan Díaz,24 de Diciembre,Las Mañanitas,Panamá,Pedregal,Tocumen,Casco Antiguo,Balboa,Cerro Viento,Chanis,Río Abajo,Parque Lefevre,Condado del Rey,Costa del Este,El Cangrejo,El Dorado,San Antonio,Llano Bonito,Paitilla,Versalles,Villa Lucre','Responsable,puntual,respetuosa y dinámica y cariñosa con los niños','','','5'),(30,31,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Me gustan las mascotas,Se conducir','','Primeros auxilios,Estudios Secundarios','',15,'Multiplaza,Via Argentina,Juan Díaz,Las Mañanitas,Pacora,Panamá,Punta Pacifica,San Felipe,San Martín,Tocumen,Cerro Viento,Ciudad del Saber,Veracruz','Soy cariñosa me encanta los niños tengo experiencia con niños autistas ','','','5'),(31,32,'','','','','','',0,'','',NULL,NULL,NULL),(32,33,'3 años','Preescolares 3-6 años,Escolar 6-12 años,Infantiles de 1-3 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios','',20,'Via Argentina,Multiplaza,Panamá,Río Abajo,Paitilla,San Francisco,Parque Lefevre,Panama Pacifico','Soy una chica amigable, amable, cariñosa y sincera siempre he trabajado con niños. Soy buena con las manualidades y me gusta poder ayudar. Estoy estudiando en la universidad latina de Panamá y en mi tiempo libre quisiera trabajar y mejor si es con niños. ','','','3'),(33,34,'5 años o mas','Infantiles de 1-3 años,Escolar 6-12 años,Lactante','Cuido hasta 3 niños,Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Primeros auxilios','',2,'Panama Pacifico,Paitilla,Marbella,Obarrio,Llano Bonito,San Antonio,Villa Lucre,Tumba Muerto,Veracruz,Hato Pintado,El Cangrejo,Costa del Este,Diablo,Isla Taboga,El Dorado,Coco del Mar,Chanis,Clayton,Ciudad del Saber,Balboa,Casco Antiguo,Area Bancaria,San Francisco,Punta Pacifica,Panamá,Multiplaza,Via','  Don de servir. Seria honesta con referencias . \n Organizada cumplida con mi compromiso\n  Me gustan los niños\nY tengo la paciencia y el tacto delicado para su cuidado.\n','','','5'),(34,35,'','','','','','',0,'','',NULL,NULL,NULL),(35,36,'1 año','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Paseo al mall,Ayuda con las tareas','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',15,'Bella Vista,Betania,Via Argentina,Multiplaza,Panamá,Punta Pacifica,San Felipe,San Francisco,Balboa','','','',''),(36,37,'','Infantiles de 1-3 años','','','Estudios Universitarios','',30,'','Estudios','','',''),(37,38,'5 años o masás','Infantiles de 1-3 años,Preescolares 3-6 años','','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios','',0,'Multiplaza,Via Argentina,Juan Díaz,Las Cumbres,Las Mañanitas,Panamá,Punta Pacifica,Pedregal,San Francisco,Tocumen,Balboa,Cerro Viento,Chanis,Condado del Rey,Costa del Este,El Cangrejo,San Antonio,Llano Bonito,Paitilla,Panama Pacifico,Versalles,Tumba Muerto,Villa Lucre','','','','5'),(38,39,'','','','','','',0,'','',NULL,NULL,NULL),(39,40,'1 año','Lactante','Cuido hasta 3 niños','Ayuda con las tareas','','',150,'Panamá','Me gusta los bebés muchísimo','','','1'),(40,41,'','','','','','',0,'','',NULL,NULL,NULL),(41,42,'5 años o mas','Infantiles de 1-3 años,Preescolares 3-6 años','Me gustan las mascotas,Cuido niños enfermos,Cuido hasta 3 niños','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',2,'Arraiján,Clayton,Ciudad del Saber,Condado del Rey,El Dorado,La Chorrera,La Cresta,Panama Pacifico,Punta Pacifica','Limpia, paciente, amorosa, dedicada, puntual, responsable. Mi vocación es el cuidado y atención a la primera infancia. Amo a los niños. Estudio todo lo referente al cuidado de los mismos. ','','','5'),(42,43,'1 año','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',25,'Multiplaza,Via Argentina,Bella Vista,Panamá,Punta Pacifica,San Francisco,Balboa,El Dorado,El Carmen,El Cangrejo,Paitilla,Obarrio,Tumba Muerto,Villa Lucre','Responsable, honesta','','','1'),(43,44,'3 años','Infantiles de 1-3 años,Preescolares 3-6 años,Lactante,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Estudios Secundarios,Estudios Universitarios,Niños con discapacidad','',23,'','Soy pedagoga humana experta en niños, me gustan las mascotas, soy responsable y atenta.','','','3'),(44,45,'5 años o masás','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','','Servicios de recogida,Paseo al mall,Alimentación y aseo,Ayuda con las tareas','Estudios Universitarios','',25,'Ancón,Betania,Via Argentina,Panamá,Punta Pacifica,Parque Lefevre,San Francisco,Area Bancaria,Clayton','Mi prioridad es los niños, alegre, jugar con ellos o ayudarlos en lo que se necesita. ','','','5'),(45,46,'','','','','','',0,'','',NULL,NULL,NULL),(46,47,'','','','','','',0,'','',NULL,NULL,NULL),(47,48,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido niños enfermos,Cuido hasta 3 niños','Ayuda con las tareas,Servicios de recogida,Paseo al mall','Estudios Universitarios','',0,'Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Juan Díaz,Panamá,Punta Pacifica,Parque Lefevre,Río Abajo,San Francisco,Balboa,Coco del Mar,Chanis,Clayton,Condado del Rey,Costa del Este,El Cangrejo,El Carmen,El Dorado,Marbella,Obarrio,Paitilla,Panama Pacifico,Tumba Muerto,Villa Lucre','Enfermera con 5 años de experiencia, educada, amable, honesta, cariñosa, amo los niños, capacitada para trabajar con niños desde edad 0 , conocimientos y experiencia con bebés prematuros, bajo peso, o alguna discapacidad..\n\nCon respecto al costo de mis servicios se puede llegar a un acuerdo, dependi','','','5'),(48,49,'','','','','','',0,'','',NULL,NULL,NULL),(49,50,'','','','','','',0,'','',NULL,NULL,NULL),(50,51,'5 años o mas','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Me gustan las mascotas,Se conducir','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','','',25,'','Soy mamá de un hermoso bebé de 8 años de edad me gustan los niños ayudo en el hogar me encanta cocinar puedo cuidar a tu bebe de día o de noche como lo necesites','','','5'),(51,52,'3 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',0,'Bella Vista,Betania,Multiplaza,Via Argentina,Panamá,Parque Lefevre,Río Abajo,San Francisco,Casco Antiguo,Balboa,Coco del Mar,El Carmen,El Cangrejo,Costa del Este,El Dorado,Marbella,Obarrio,Tumba Muerto','Soy una mujer de 24 años amorosa , paciente , tolerante tengo una experiencia en niños me gusta jugar pero también mucha disciplina para mis pacientes \n Soy puntual y muy proactiva colaboradora ','','','3'),(52,53,'5 años o mas','Infantiles de 1-3 años,Lactante,Preescolares 3-6 años','Cuido hasta 3 niños','Paseo al mall','Estudios Universitarios','',0,'','Soy enfermera profesional cuido pacientes particular y en hospitales o clínicas soy muy profesional en mi trabajo y muy dedicada','','','5'),(53,54,'','','','','','',0,'','',NULL,NULL,NULL),(54,55,'','','','','','',0,'','',NULL,NULL,NULL),(55,56,'','','','','','',0,'','',NULL,NULL,NULL),(56,57,'','','','','','',0,'','',NULL,NULL,NULL),(57,58,'','','','','','',0,'','',NULL,NULL,NULL),(58,59,'','','','','','',0,'','',NULL,NULL,NULL),(59,60,'2 años','Escolar 6-12 años','Cuido hasta 3 niños','Ayuda con las tareas','Estudios Universitarios,Estudios Secundarios','',25,'Villa Lucre,Las Cumbres,Panamá,Marbella,Chilibre,Bella Vista,Calidonia,Alcalde Díaz,Ancón','Soy estudiante de educacion preescolar elegi esta carrera porque siempre senti que mi vocacion era enseñar me agradan los niños y he cuidadado de ellos desde muy joven.','','',''),(60,61,'','','','','','',0,'','',NULL,NULL,NULL),(61,62,'5 años o mas','Escolar 6-12 años','Me gustan las mascotas','Tareas básicas del hogar','Estudios Universitarios','',10,'','Empática, colaboradora, reservada, cuidadosa, paciente.','','','5'),(62,63,'Sin Experiencia','','Me gustan las mascotas','Alimentación y aseo','Niños con discapacidad','',50,'','Tengo experiencia con niños especiales, ya que tengo un hermano con parálisis cerebral y lo cuidado toda su vida junto a mi mamá. También tengo una ahijada de 4 meses y la he cuidado desde que nació. Además, de que tengo 9 primos más y a todos los he cuidado desde pequeños. ','','','0'),(63,64,'1 año','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Estudios Universitarios','',12,'Panamá,Cerro Viento,Ciudad del Saber,Clayton,Costa del Este,Condado del Rey,El Dorado,Tumba Muerto','Soy una chica Honesta,Responsable,dedicada atenta al cuido de los niños y todo loq te necesiten.','','',''),(64,65,'','','','','','',0,'','',NULL,NULL,NULL),(65,66,'','','','','','',0,'','',NULL,NULL,NULL),(66,67,'','','','','','',0,'','',NULL,NULL,NULL),(67,68,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Tareas básicas del hogar','Estudios Universitarios,Estudios Secundarios','',5,'Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Juan Díaz,Las Mañanitas,Panamá,Punta Pacifica,Parque Lefevre,Pedregal,Pueblo Nuevo,Río Abajo,San Francisco,Tocumen,Casco Antiguo,Balboa,Cerro Viento,Chanis,Coco del Mar,Costa del Este,El Dorado,Llano Bonito,Marbella,Obarrio,Paitilla,Panama Pacif','Soy muy honesta responsable cariñosa me gustan mucho los niños ','','Aseo','2'),(68,69,'3 años','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas','Ayuda con las tareas,Tareas básicas del hogar,Alimentación y aseo','Estudios Secundarios,Estudios Universitarios','',200,'Juan Díaz,Alcalde Díaz,Panamá,Parque Lefevre,Río Abajo,Balboa','Responsable, cuidadosa, paciente, me gustan mucho los niños','','','3'),(69,70,'','','','','','',0,'','',NULL,NULL,NULL),(70,71,'','','','','','',0,'','',NULL,NULL,NULL),(71,72,'','','','','','',0,'','',NULL,NULL,NULL),(72,73,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios','',5,'','Honesta responsable comprometida','','','2'),(73,74,'','','','','','',0,'','',NULL,NULL,NULL),(74,75,'','','','','','',0,'','',NULL,NULL,NULL),(75,76,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido niños enfermos','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Niños con discapacidad,Estudios Universitarios,Primeros auxilios','',50,'Betania,Via Argentina,Multiplaza,Ernesto Córdoba Campos,Juan Díaz,Parque Lefevre,Río Abajo,San Francisco,Balboa,Chanis,Condado del Rey,Costa del Este,El Dorado,Tumba Muerto,Villa Lucre,Paitilla,Panama Pacifico,Los Angeles,Coco del Mar,Calidonia,Alcalde Díaz','Enfermera cuidadosa cariñosa atenta con caracter respetuosa con buenos valores amable honesta trabajadora responsable ','','','5'),(76,77,'','','','','','',0,'','',NULL,NULL,NULL),(77,78,'','','','','','',0,'','',NULL,NULL,NULL),(78,79,'','','','','','',0,'','',NULL,NULL,NULL),(79,80,'Sin Experiencia','Infantiles de 1-3 años','Me gustan las mascotas','Paseo al mall','Estudios Secundarios','',25,'Villa Lucre','Estoy cursando estudios universitarios en psicología. Me considero con las competencias necesarias para cuidar de niños desde la infancia temprana hasta la adolescencia. Usar todos los recursos necesarios para satisfacer las necesidades de los niños y que se sientan en un ambiente cómodo y agradable','','','0'),(80,81,'1 año','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Estudios Universitarios','',50,'Calidonia,Via Argentina,Multiplaza,Panamá,Panama Pacifico,Villa Lucre,Tumba Muerto,Paitilla,Obarrio,El Cangrejo,El Carmen,El Dorado,Costa del Este,Condado del Rey,Casco Antiguo,Balboa,San Francisco,Punta Pacifica,Parque Lefevre,Area Bancaria','Soy Nicaragüense, tengo 26 años, soltera, tengo licenciatura en Turismo. Soy una persona honesta, con valores, responsable y puntual. Sobre todo me gustan los niños y los animales.','','','1'),(81,82,'5 años o mas','Infantiles de 1-3 años,Preescolares 3-6 años','Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo','Estudios Secundarios,Estudios Universitarios','',650,'Tumba Muerto,Obarrio,Villa Lucre,El Carmen,El Cangrejo,Condado del Rey,Ciudad del Saber,Cerro Viento,Santa Ana','Soy de origen nicaragüense de buenas costumbres cristiana madre de dos hijos de 19 y 8 años , profesional en mis estudios y otras experiencia laborales y a la vez con mucha experiencia cuidando niños educando y llevando por buen camino así como hasta hoy lo hago con mis hijos y muy dispuesta a dar l','','','5'),(82,83,'3 años','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas','Servicios de recogida,Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Niños con discapacidad,Estudios Universitarios','',15,'Paitilla,Veracruz,Tumba Muerto,Villa Lucre,Betania,Bella Vista','Me considero una persona responsable, amable, creativa, me gustan los niños. \nPsicóloga general, idónea.  ','','','3'),(83,84,'','','','','','',0,'','',NULL,NULL,NULL),(84,85,'','','','','','',0,'','',NULL,NULL,NULL),(85,86,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',500,'Betania,Panamá,Balboa,El Carmen,El Dorado,Tumba Muerto,Bella Vista','Soy madre de tres niños tecnico en farmacia ','','','5'),(86,87,'','','','','','',0,'','',NULL,NULL,NULL),(87,88,'','','','','','',0,'','',NULL,NULL,NULL),(88,89,'','','','','','',0,'','',NULL,NULL,NULL),(89,90,'','Escolar 6-12 años,Adolecentes +12 años','Se conducir','Ayuda con las tareas','Estudios Universitarios','',20,'Via Argentina,Multiplaza,Punta Pacifica,Coco del Mar,Costa del Este,El Cangrejo,El Carmen,Hato Pintado,Obarrio','Honesta, responsable y respetuosa','','',''),(90,91,'','','','','','',0,'','',NULL,NULL,NULL),(91,92,'','','','','','',0,'','',NULL,NULL,NULL),(92,93,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Alimentación y aseo,Paseo al mall,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',480,'Multiplaza,Villa Lucre,La Chorrera,El Dorado,El Carmen,Cerro Viento,Ciudad del Saber,Clayton,Arraiján,Balboa,Casco Antiguo,Panamá,Las Cumbres,Las Mañanitas,Via Argentina,Bella Vista,Juan Díaz,Pueblo Nuevo,Pedregal,24 de Diciembre','Tengo 20 años \nMe gustan cuidar niños \nCrie a 2 sobrinos mios \nTrabaje como niñera de 3 nenes uno de 2 años una nena de 5 y una adolescente de 13','','','2'),(93,94,'','','','','','',0,'','',NULL,NULL,NULL),(94,95,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Estudios Secundarios,Estudios Universitarios','',25,'Ancón,Betania,Bella Vista,Via Argentina,Multiplaza,Juan Díaz,24 de Diciembre,Las Cumbres,Las Mañanitas,Panamá,Punta Pacifica,Parque Lefevre,Pueblo Nuevo,San Francisco,Tocumen,Area Bancaria,Casco Antiguo,Balboa,Coco del Mar,Condado del Rey,Costa del Este,El Cangrejo,El Carmen,El Dorado,San Antonio,Ll','Alto grado de responsabilidad, respetuosa, amorosa, prioridad los niños. \n\n ','','','5'),(95,96,'','Preescolares 3-6 años,Infantiles de 1-3 años','Me gustan las mascotas','Alimentación y aseo,Tareas básicas del hogar','Estudios Universitarios','',500,'Bella Vista,Via Argentina,Multiplaza,Punta Pacifica,Parque Lefevre,Casco Antiguo,Balboa,Coco del Mar,Condado del Rey','Soy muy responsable y Respetuosa.','','',''),(96,97,'','','','','','',0,'','',NULL,NULL,NULL),(97,98,'','','','','','',0,'','',NULL,NULL,NULL),(98,99,'1 año','Adolecentes +12 años,Escolar 6-12 años','Se conducir,Me gustan las mascotas,Cuido hasta 3 niños','Tareas básicas del hogar,Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y ase','Estudios Universitarios,Primeros auxilios,Estudios Secundarios','',20,'Via Argentina,Multiplaza,Punta Pacifica,San Francisco,Casco Antiguo,Balboa,Area Bancaria,Cerro Viento,Ciudad del Saber,Clayton,Chanis,Coco del Mar,Condado del Rey,Costa del Este,Diablo,El Cangrejo,El Carmen,El Dorado,San Antonio,Llano Bonito,Marbella,Obarrio,Paitilla,Versalles,Villa Lucre','Tengo 28 años, soy panameña y me encantan los niños. Soy una persona muy responsable, confiable, que práctica los buenos valores y costumbres. ','','','1'),(99,100,'','','','','','',0,'','',NULL,NULL,NULL),(100,101,'5 años o mas','Preescolares 3-6 años,Lactante,Infantiles de 1-3 años','Me gustan las mascotas,Cuido hasta 3 niños','Alimentación y aseo,Ayuda con las tareas,Paseo al mall','Estudios Universitarios,Primeros auxilios,Estudios Secundarios','',60,'Paitilla,La Chorrera,Punta Pacifica','Me considero una joven activa, que le gusta mucho trabajar con niños.\n\nActualmente cursando estudios universitarios de Lic. en Enfermería. ','','','5'),(101,102,'','','','','','',0,'','',NULL,NULL,NULL),(102,103,'','','','','','',0,'','',NULL,NULL,NULL),(103,104,'Sin Experiencia','Escolar 6-12 años','Cuido hasta 3 niños','Tareas básicas del hogar','Estudios Secundarios','',0,'Villa Lucre','','','','0'),(104,105,'','','','','','',0,'','',NULL,NULL,NULL),(105,106,'','','','','','',0,'','',NULL,NULL,NULL),(106,107,'','','','','','',0,'','',NULL,NULL,NULL),(107,108,'1 año','Preescolares 3-6 años','Me gustan las mascotas','','','',500,'','','','','1'),(108,109,'','','','','','',0,'','',NULL,NULL,NULL),(109,110,'','','','','','',0,'','',NULL,NULL,NULL),(110,111,'5 años o mas','Infantiles de 1-3 años,Preescolares 3-6 años','Me gustan las mascotas','Ayuda con las tareas,Paseo al mall','Estudios Universitarios,Estudios Secundarios','',0,'Via Argentina,Multiplaza,Parque Lefevre,San Francisco,Arraiján,El Cangrejo,El Carmen,El Dorado,La Chorrera,Paitilla','','','','5'),(111,112,'','','','','','',0,'','','','',''),(112,113,'','','','','','',0,'','',NULL,NULL,NULL),(113,114,'2 años','Preescolares 3-6 años','Cuido hasta 3 niños','Servicios de recogida','Estudios Universitarios','',0,'','soy  una joven 19 año  estudié  en  la normal de santiago actualmente estudio en  la nacional de panamá oeste licenciatura en educación  primaria \n técnico  en preescolar  en  cetes\n','','','2'),(114,115,'5 años o mas','Infantiles de 1-3 años','Cuido hasta 3 niños','Tareas básicas del hogar','Estudios Universitarios','',25,'','','','','5'),(115,116,'','','','','','',0,'','',NULL,NULL,NULL),(116,117,'4 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños,Cuido niños enfermos','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo','Primeros auxilios,Estudios Secundarios,Niños con discapacidad,Estudios Universitarios','',45,'La Chorrera,El Dorado,Diablo,Costa del Este,El Cangrejo,Condado del Rey,Coco del Mar,Arraiján,Area Bancaria,Tocumen,Santa Ana,San Francisco,San Felipe,Río Abajo,Punta Pacifica,Panamá,Parque Lefevre,Betania,Calidonia,Chilibre,Caimitillo,Curundú,El Chorrillo,Via Argentina,Multiplaza,Ernesto Córdoba Ca','Soy habil,responsable,honestad tengo experiencia con bebes prematuros ,recien nacidos,cuidados especializados en cuanto a dietas ,estimulacion temprana y todo lo q sea en pro para el bienestar y la salud del infante','','','4'),(117,118,'1 año','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Me gustan las mascotas','Ayuda con las tareas','Estudios Secundarios,Estudios Universitarios','',25,'Multiplaza,Punta Pacifica,Paitilla,Marbella','Hola! Tengo 18 años, chilena y estudio Neurociencia en Florida State University.  Desde que tengo 15 años que hacía babysitting en Chile, pero más que nada a hijos de familia, amigos y conocidos. Soy responsable, organizada y amistosa :)','','',''),(118,119,'2 años','Preescolares 3-6 años','Me gustan las mascotas','Alimentación y aseo,Tareas básicas del hogar,Paseo al mall,Servicios de recogida,Ayuda con las tarea','Estudios Universitarios','',50,'Bella Vista,Calidonia,Via Argentina,Multiplaza,San Francisco,Casco Antiguo,Ciudad del Saber,Clayton,Coco del Mar,Costa del Este,El Cangrejo,El Carmen,La Cresta,Marbella,Obarrio,Paitilla,Panama Pacifico','Soy estudiante de la carrera de enfermería. ','','','2'),(119,120,'','','','','','',0,'','',NULL,NULL,NULL),(120,121,'','','','','','',0,'','',NULL,NULL,NULL),(121,122,'','','','','','',0,'','',NULL,NULL,NULL),(122,123,'2 años','Infantiles de 1-3 años','','Alimentación y aseo','Estudios Universitarios','',50,'Villa Lucre','Soy una persona muy responsable y cariñosa con los niños, estudio enfermeria y soy activa y de buena educación, siempre tendré al niño en buena presentación y lo ayudaré con su tareas y lo que necesite.','Cuido niños de 0 a 9 años','',''),(123,124,'','','','','','',0,'','',NULL,NULL,NULL),(124,125,'','','','','','',0,'','',NULL,NULL,NULL),(125,126,'','','','','','',0,'','',NULL,NULL,NULL),(126,127,'','','','','','',0,'','',NULL,NULL,NULL),(127,128,'Sin Experiencia','Escolar 6-12 años','Me gustan las mascotas','','','',0,'','Estudio licenciatura en psicopedagogia (1er año)','','','0'),(128,129,'','','','','','',0,'','',NULL,NULL,NULL),(129,130,'','','','','','',0,'','',NULL,NULL,NULL),(130,131,'5 años o mas','Escolar 6-12 años,Preescolares 3-6 años','Cuido hasta 3 niños','Ayuda con las tareas,Servicios de recogida,Paseo al mall','Estudios Secundarios,Estudios Universitarios','',600,'Bella Vista,Via Argentina,Multiplaza,Punta Pacifica,San Francisco,Condado del Rey,El Cangrejo,Marbella,Obarrio,Paitilla','Soy maestra de ingles ofresco servicio de tutoria de ingles ','','','5'),(131,132,'3 años','Adolecentes +12 años','Me gustan las mascotas','Tareas básicas del hogar','Estudios Universitarios','',20,'Tumba Muerto','Docente con estudios de psicología y experiencia con niños de todas las edades. ','','','3'),(132,133,'','','','','','',0,'','',NULL,NULL,NULL),(133,134,'','','','','','',0,'','',NULL,NULL,NULL),(134,135,'','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Servicios de recogida,Tareas básicas del hoga','Estudios Secundarios,Estudios Universitarios','',40,'Via Argentina,Multiplaza,Panamá,Pueblo Nuevo,Río Abajo,Balboa,Ciudad del Saber,Clayton,Chanis','Soy una persona responsable , cariñosa , honesta y pro activa , me desempeñé como maestra de kinder y primaria en mi país , se de informática y algo de inglés , pero sobre todo paciente que entiende que las necesidades de los niños no siempre son las mismas  . ','','',''),(135,136,'','','','','','',0,'','',NULL,NULL,NULL),(136,137,'3 años','Adolecentes +12 años','','Ayuda con las tareas','Estudios Secundarios','',50,'','Soy una personal profesional, culta, de  buenas costumbres. Me gustan los niños.','','',''),(137,138,'1 año','Infantiles de 1-3 años','Cuido hasta 3 niños','Ayuda con las tareas','Niños con discapacidad','',35,'Alcalde Díaz,Ciudad del Saber','Soy licenciada en educación especial me gustan los niños ','','','1'),(138,139,'','','','','','',0,'','',NULL,NULL,NULL),(139,140,'','','','','','',0,'','',NULL,NULL,NULL),(140,141,'','Adolecentes +12 años,Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Se conducir','Alimentación y aseo','Estudios Universitarios','',25,'','Laboralmente no cuento con experiencia, pero soy la hermana Mayor de 9 a que convivo a diario con bebes, niños y adolescentes ','','',''),(141,142,'','','','','','',0,'','',NULL,NULL,NULL),(142,143,'2 años','Preescolares 3-6 años,Infantiles de 1-3 años,Escolar 6-12 años','Me gustan las mascotas,Cuido hasta 3 niños','Alimentación y aseo,Paseo al mall,Ayuda con las tareas,Servicios de recogida','Estudios Secundarios','',20,'','Soy responsable ,puntual,alegre, comunitativa ,organizada.','','',''),(143,144,'','','','','','',0,'','',NULL,NULL,NULL),(144,145,'1 año','Adolecentes +12 años,Escolar 6-12 años,Preescolares 3-6 años,Infantiles de 1-3 años','Se conducir,Me gustan las mascotas,Cuido hasta 3 niños','Paseo al mall','Estudios Secundarios','',15,'Pacora,Pedregal,Tocumen,Casco Antiguo,Cerro Viento,Clayton,Condado del Rey,El Dorado,San Antonio,Las Mañanitas,Villa Lucre,Versalles','','','',''),(145,146,'2 años','Lactante,Infantiles de 1-3 años','Cuido hasta 3 niños','Ayuda con las tareas,Alimentación y aseo','Estudios Universitarios','',10,'Bella Vista,Via Argentina,Punta Pacifica,Arraiján,El Carmen,El Dorado,La Chorrera,Versalles','Me gustan muchos los niños ','','','2'),(146,147,'','','','','','',0,'','',NULL,NULL,NULL),(147,148,'','','','','','',0,'','',NULL,NULL,NULL),(148,149,'','','','','','',0,'','',NULL,NULL,NULL),(149,150,'','','','','','',0,'','',NULL,NULL,NULL),(150,151,'1 año','Preescolares 3-6 años','Se conducir,Me gustan las mascotas','Servicios de recogida,Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Estudios Universitarios','',0,'Bella Vista','me considero una persona puntual , educada , con muchos deseas de  superacion  y muy cariñosa con los niños. ','','',''),(151,152,'1 año','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Estudios Secundarios','',30,'Bella Vista,Betania,Via Argentina,Multiplaza,Punta Pacifica,Parque Lefevre,San Francisco,Area Bancaria,Clayton,Coco del Mar,Condado del Rey,Costa del Este,El Cangrejo,El Carmen,El Dorado,Marbella,Obarrio,Tumba Muerto','Soy una persona responsable y honesta, me gustan los niños y le dedicaré todo el tiempo que este junto a el','','','1'),(152,153,'5 años o mas','Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños','Ayuda con las tareas,Paseo al mall','Estudios Universitarios','',25,'Via Argentina,Multiplaza,Punta Pacifica,San Francisco,Balboa,Casco Antiguo,Coco del Mar,Condado del Rey,El Cangrejo,Marbella,Obarrio,Paitilla,Panama Pacifico,Tumba Muerto','Buenas soy maestra de ingles y tutora. Ofresco mis servicios de tutoria ','','','5'),(153,154,'','','','','','',0,'','',NULL,NULL,NULL),(154,155,'5 años o mas','Escolar 6-12 años,Preescolares 3-6 años,Adolecentes +12 años','Cuido hasta 3 niños,Me gustan las mascotas','','Estudios Universitarios','',15,'Juan Díaz','Onesta,responsable,puntual','','','5'),(155,156,'','','','','','',0,'','',NULL,NULL,NULL),(156,157,'','','','','','',0,'','',NULL,NULL,NULL),(157,158,'','','','','','',0,'','',NULL,NULL,NULL),(158,159,'4 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Estudios Secundarios,Primeros auxilios','',0,'Bella Vista,Via Argentina,Multiplaza,Panamá,Parque Lefevre,Punta Pacifica,San Francisco,Balboa,Casco Antiguo','Soy. Una mujer eficiente proactiva cariñosa delicada con iniciativa responsable puntual atenta a las indicaciones que me dan me gustan mucho los niños y las mascotas .tengo 2 hijos .','','','4'),(159,160,'','','','','','',0,'','',NULL,NULL,NULL),(160,161,'','','','','','',0,'','',NULL,NULL,NULL),(161,162,'Sin Experiencia','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Estudios Secundarios','',10,'','Soy una persona responsable amorosa paciente con ganas de superación soy amable puntual ','','','0'),(162,163,'','','','','','',0,'','',NULL,NULL,NULL),(163,164,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años','Me gustan las mascotas,Cuido hasta 3 niños','Ayuda con las tareas,Servicios de recogida,Tareas básicas del hogar,Alimentación y aseo','Estudios Universitarios,Estudios Secundarios','',20,'Alcalde Díaz,Ancón,Betania,Bella Vista,Via Argentina,Multiplaza,Juan Díaz,Las Mañanitas,Panamá,Punta Pacifica,Parque Lefevre,Pedregal,Pueblo Nuevo,Río Abajo,San Francisco,Casco Antiguo,Balboa,Cerro Viento,Ciudad del Saber,Clayton,Chanis,Coco del Mar,Condado del Rey,Costa del Este,Diablo,El Cangrejo,','Tengo 20 años,soy colombiana y estudio diseño industrial de productos. Me gusta hacer postres.','','','2'),(164,165,'5 años o mas','Preescolares 3-6 años','Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo','Primeros auxilios,Estudios Secundarios,Estudios Universitarios,Niños con discapacidad','',25,'Bella Vista,Multiplaza,Punta Pacifica,Ciudad del Saber,Clayton,Diablo,El Cangrejo,El Carmen,El Dorado,La Cresta,Paitilla,Obarrio','Me considero una persona seria responsable, cariñosa amable,puntual,  acato ordenes de mis superiores.','','','5'),(165,166,'','','','','','',0,'','',NULL,NULL,NULL),(166,167,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Me gustan las mascotas,Cuido niños enfermos','','Estudios Secundarios,Estudios Universitarios','',30,'Alcalde Díaz,Ancón,Betania,Bella Vista,Via Argentina,Multiplaza,Ernesto Córdoba Campos,Juan Díaz,Punta Pacifica,Parque Lefevre,Río Abajo,San Francisco,Area Bancaria,Balboa,Ciudad del Saber,Clayton,Chanis,Condado del Rey,Costa del Este,El Cangrejo,El Dorado,Obarrio,Paitilla','Soy graduada en educación primaria, soy cariñosa, atenta, servicial, colaboradora, responsable, honesta, respetuosa y dedicada a su trabajo, me considero una persona muy educada, eficiente, con mucha paciencia. ','','','5'),(167,168,'1 año','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Alimentación y aseo','Primeros auxilios','',0,'','soy una chica sana decente, honesta responsable y con deseo de trabajar cumplir mis metas','','','1'),(168,169,'','','','','','',0,'','',NULL,NULL,NULL),(169,170,'1 año','Adolecentes +12 años','Me gustan las mascotas','Tareas básicas del hogar','Niños con discapacidad','',0,'','','','',''),(170,171,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','','Estudios Secundarios','',30,'24 de Diciembre,Via Argentina,Multiplaza,Las Mañanitas,Panamá,Punta Pacifica,Parque Lefevre,San Francisco,Casco Antiguo,Balboa,Condado del Rey,Costa del Este,Tumba Muerto,Villa Lucre','','','','5'),(171,172,'1 año','Adolecentes +12 años','Cuido niños enfermos','Servicios de recogida','','',50,'','','','','1'),(172,10,'','','','','','',0,'','',NULL,NULL,NULL),(173,173,'5 años o mas','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hoga','Estudios Secundarios,Estudios Universitarios','',25,'Betania,Bella Vista,Via Argentina,Multiplaza,Panamá,Parque Lefevre,Punta Pacifica,Pueblo Nuevo,Río Abajo,San Francisco,Casco Antiguo,Balboa,Ciudad del Saber,Clayton,Coco del Mar,Condado del Rey,Costa del Este,Diablo,El Dorado,Hato Pintado,Marbella,Obarrio,Paitilla,Tumba Muerto,Villa Lucre','Estudiante 4to año en Psicopedagogía, tengo basta experiencia en cuidado de niños desde los 3 meses hasta los 9, soy una mujer responsable, puntual, cariñosa, entregada a mi trabajo, muy ordenada, con metas bien definidas. Cuento con un diplomado en neurociencias. Tus niños estarán seguros conmigo.','','','5'),(174,174,'','','','','','',0,'','',NULL,NULL,NULL),(175,175,'2 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido niños enfermos,Cuido hasta 3 niños,Se conducir,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Servicios de recogida,Tareas básicas del hoga','Estudios Universitarios','',35,'Villa Lucre,Tumba Muerto,Panama Pacifico,Paitilla,Obarrio,Marbella,Los Angeles,Llano Bonito,San Antonio,La Alameda,Hato Pintado,El Dorado,El Cangrejo,El Carmen,Costa del Este,Condado del Rey,Clayton,Ciudad del Saber,Cerro Viento,Balboa,Casco Antiguo,Area Bancaria,Tocumen,Santa Ana,San Martín,San Fra','Soy una persona muy responsable tolerante cariñosa me gustan los niños interactuar con ellos  ','','','2'),(176,176,'','','','','','',0,'','',NULL,NULL,NULL),(177,177,'','','','','','',0,'','',NULL,NULL,NULL),(178,178,'','','','','','',0,'','',NULL,NULL,NULL),(179,179,'1 año','Adolecentes +12 años','Se conducir','Paseo al mall','Estudios Universitarios','',15,'','Soy una chica responsable, divertida, cariñosa , pendiente en cada situación.  ','','','1'),(180,180,'','','','','','',0,'','',NULL,NULL,NULL),(181,181,'','Preescolares 3-6 años,Infantiles de 1-3 años,Lactante,Escolar 6-12 años','Se conducir','Alimentación y aseo,Servicios de recogida,Ayuda con las tareas','Estudios Universitarios','',25,'Paitilla,Multiplaza,Via Argentina,Parque Lefevre,Punta Pacifica,San Francisco,Coco del Mar,Costa del Este,El Carmen','Me gustan mucho los niños, he dado clases particulares de matemática desde que estudiaba en la Universidad, soy madre de una niña de 16 años y tía activa en la crianza de 11 sobrinos.','','',''),(182,182,'2 años','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Estudios Universitarios','',25,'Juan Díaz,Parque Lefevre,Río Abajo,Villa Lucre,Via Argentina','Mi nombre es Brigitt tengo 28 años soy de Venezuela,tngo casi 3 años en Panamá estoy casada con nacional sin hijos tengo residencia y permiso de trabajo en mi país estoy graduada de licenciada en educación actualmente trabajo por mi cuenta vendo dulces .\nSoy sincera y responsable espero poder ser pa','','','2'),(183,183,'1 año','Escolar 6-12 años,Adolecentes +12 años,Infantiles de 1-3 años','','Ayuda con las tareas,Servicios de recogida,Alimentación y aseo','Estudios Secundarios','',25,'Bella Vista,Via Argentina,Multiplaza,San Francisco,Obarrio,Panama Pacifico,Tumba Muerto,El Carmen','Soy una muchacha muy amable y muy dedicada. Estudio comercio y administración de empresas ','','','1'),(184,184,'5 años o masás','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Se conducir,Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',35,'Curundú,Via Argentina,Multiplaza,Panamá,Punta Pacifica,Pueblo Nuevo,San Francisco,Balboa,Arraiján,Costa del Este,La Chorrera,La Cresta,Paitilla,Panama Pacifico','Me gustannlos niños .,ayudo con la casa en lo que pueda ,carismatica dedicada a los niños a dispociosion muy honrrada','','','5'),(185,185,'3 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','Se conducir,Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Servicios de recogida,Paseo al mall','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',15,'Via Argentina,Multiplaza,Punta Pacifica,Casco Antiguo,Balboa,Ciudad del Saber,Clayton,Coco del Mar,Condado del Rey,Costa del Este,Diablo,El Cangrejo,El Carmen,El Dorado,La Alameda,San Antonio,Llano Bonito,Los Angeles,Marbella,Obarrio,Paitilla,Tumba Muerto,Villa Lucre','Soy Estudiante de Medicina me gusta los niños,soy muy alegre, dinámica, respectuosa, puntual, humilde y honesta.','','',''),(186,186,'5 años o masás','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años','','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',25,'','Soy enfermera honesta y responsable me gusta mucho los niños tengo experiencia como nana .','','','5'),(187,187,'','','','','','',0,'','',NULL,NULL,NULL),(188,188,'3 años','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido hasta 3 niños,Me gustan las mascotas','Ayuda con las tareas,Alimentación y aseo','Primeros auxilios,Estudios Secundarios,Estudios Universitarios','',20,'24 de Diciembre,Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Juan Díaz,Panamá,Punta Pacifica,Parque Lefevre,Pueblo Nuevo,Río Abajo,San Francisco,Area Bancaria,Casco Antiguo,Balboa,Cerro Viento,Ciudad del Saber,Clayton,Chanis,Coco del Mar,Condado del Rey,Costa del Este,El Cangrejo,El Carmen','','','','3'),(189,189,'1 año','','Me gustan las mascotas,Cuido niños enfermos','Ayuda con las tareas,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios','',40,'Bella Vista,Via Argentina,Multiplaza,Punta Pacifica,San Francisco,El Cangrejo,El Carmen,El Dorado,La Alameda,Marbella,Obarrio,Paitilla','Soy Stephanie estoy disponible para el cuidado de sus niños cuando lo necesite ????','','','1'),(190,190,'','','','','','',0,'','',NULL,NULL,NULL),(191,191,'','','','','','',0,'','',NULL,NULL,NULL),(192,192,'','','','','','',0,'','',NULL,NULL,NULL),(193,193,'','','','','Estudios Secundarios','',15,'','Estudio fisioterapia en la universidad especializada de las américas, tengo un sobrino de 1 año y 10 meses y cuido de él cuando mi hermana trabaja.','','',''),(194,194,'3 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas,Se conducir','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',15,'Betania,Bella Vista,Alcalde Díaz,Via Argentina,Multiplaza,Punta Pacifica,Parque Lefevre,Pueblo Nuevo,Río Abajo','Me encantan los niños, desde que tuve a la mía me di cuenta que no hay nada mas lindo que cuidarlos y atenderlos desde bebés hasta los mas grandes, atenderlos y darles todo lo necesario para que esten bien. ','','',''),(195,195,'1 año','','Cuido hasta 3 niños,Se conducir','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Primeros auxilios','',600,'Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Punta Pacifica,San Francisco,Casco Antiguo,Ciudad del Saber,Clayton,Chanis,Coco del Mar,Condado del Rey,Costa del Este,El Cangrejo,Diablo,El Carmen,El Dorado,Isla Taboga,Marbella,Paitilla,Obarrio,Panama Pacifico,Villa Lucre','Estudiante de psicopedagogía con técnico de psicología educativa. Soy dinámica, extrovertida, responsable, cariñosa y apasionada en mi trabajo con niños. Tengo experiencia como maestra de maternal ','Estimulación temprana ,Lectura de libros,Cantos y bailes','',''),(196,196,'','','','','','',0,'','',NULL,NULL,NULL),(197,197,'','','','','','',0,'','',NULL,NULL,NULL),(198,198,'2 años','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Primeros auxilios,Estudios Secundarios,Estudios Universitarios,Niños con discapacidad','',500,'','Me llamo Luisa nicaragüense de 24 años tengo 15 días de estar en panama.  \nTengo estudios en enfermería segundo año aprobado.  Conocimientos básicos.  Me gustan los niños.  \nSoy amable , cariñosa, respetuosa, responsable... ','','','2'),(199,199,'','','','','','',0,'','',NULL,NULL,NULL),(200,200,'3 años','Infantiles de 1-3 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños','Alimentación y aseo,Ayuda con las tareas,Paseo al mall','','',30,'Bella Vista,Betania,Via Argentina,Multiplaza,Panamá,Punta Pacifica,Parque Lefevre,Río Abajo,Pueblo Nuevo','Hola! Soy Cecilia y tengo 22 años. Soy la mayor de 4 hermanos, por lo que he adquirido experiencia con niños gracias a ellos. He trabajado con pequeños y jóvenes ayudándoles en sus tareas y alimentación.\n','','Paseo al parque,Jugar con el pequeño',''),(201,201,'1 año','Infantiles de 1-3 años,Lactante,Preescolares 3-6 años','Me gustan las mascotas','Alimentación y aseo,Tareas básicas del hogar,Paseo al mall,Ayuda con las tareas','Estudios Secundarios','',30,'Balboa,Multiplaza,Via Argentina,Panamá,Río Abajo,Parque Lefevre,Costa del Este,Paitilla','Me gusta atender a niños cariñosa educada y respetuosa con valores tengo experiencia tengo una niña de cuatro años también puedo cuidar a tu niños de noche mutuo acuerdo','Jugar con los niños ','',''),(202,202,'5 años o masás','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','Primeros auxilios,Estudios Universitarios,Estudios Secundarios','',15,'','Soy licenciada en enfermeria con mas de 5 años de experiencia','Idiomas ingles y frances','','5'),(203,203,'1 año','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas,Se conducir','Servicios de recogida,Paseo al mall,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',10,'Villa Lucre,Tumba Muerto,Versalles,Paitilla,Obarrio,Marbella,Los Angeles,Llano Bonito,San Antonio,Hato Pintado,El Dorado,El Carmen,El Cangrejo,Costa del Este,Condado del Rey,Chanis,Clayton,Cerro Viento,Casco Antiguo,Tocumen,San Francisco,San Felipe,Pedregal,Parque Lefevre,Panamá,Pacora,Las Mañanitas','soy una profesional de recursos humanos, en busca de ingresos extras contáctenme','','','1'),(204,204,'3 años','Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo','','',15,'','Tengo 18 años y cuido niños desde los 16 he sido guía de campamento así que soy muy dinámica con los niños, he cuidado niños recién nacidos hasta de 12 años, soy muy extrovertida respetuosa y muy cuidadosa con las cosas, responsable, cariñosa y atenta. Tengo experiencia con necesidades especiales co','','','3'),(205,205,'5 años o masás','Infantiles de 1-3 años,Preescolares 3-6 años,Lactante','Me gustan las mascotas','Ayuda con las tareas,Servicios de recogida,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',600,'Betania,Calidonia,Via Argentina,Multiplaza,Pueblo Nuevo,Santa Ana,Cerro Viento,Ciudad del Saber,Clayton,Condado del Rey,El Cangrejo,El Dorado,El Carmen,Obarrio,Tumba Muerto,Villa Lucre','Soy una muy buena Persona de buenas costumbres cristianas profesional con experiencia administración y con muchos deseos de salir adelante y prosperar con mucho esfuerzo y dedicación al trabajo que me asignen ','','','5'),(206,206,'','','','','','',0,'','',NULL,NULL,NULL),(207,207,'1 año','Infantiles de 1-3 años','Me gustan las mascotas','Tareas básicas del hogar','Primeros auxilios','',600,'','estudie Lic en enfermería hasta 3 años, ahorita estudio lic en informatica ','','','1'),(208,208,'','','','','','',0,'','',NULL,NULL,NULL),(209,209,'1 año','Escolar 6-12 años','Me gustan las mascotas','','Estudios Secundarios','',10,'Parque Lefevre,Via Argentina,Multiplaza,Juan Díaz,Pedregal,Pueblo Nuevo,San Francisco,Tocumen,Casco Antiguo','Panameña a la que gustaría prestar sus servicios de niñera para que los padres tengan paz mental al saber que sus hijos estarán en buenas manos. Paciente y respetuosa. Me gusta transmitir mis valores a los niños y darles mucho amor.\n*Ojo:\nTarifas:\n $10 la hora a partir de 3.\n$15 la hora si son 2.','','',''),(210,210,'Sin Experienciaencia','Preescolares 3-6 años','Me gustan las mascotas','Servicios de recogida','Estudios Secundarios','',0,'La Alameda','','','','0'),(211,211,'5 años o masás','Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Me gustan las mascotas,Cuido hasta 3 niños','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Secundarios,Estudios Universitarios','',40,'Calidonia,Betania,Via Argentina,Multiplaza,Panamá,Punta Pacifica,Casco Antiguo,Clayton,Condado del Rey,Costa del Este,El Cangrejo,Paitilla,Villa Lucre','Soy una persona tranquila, amable y cariñosa, me gusta ser cuidadosa con los niños y tratas siempre de dar lo mejor de mi en los trabajos.','','','5'),(212,212,'3 años','','Me gustan las mascotas','Servicios de recogida,Paseo al mall,Alimentación y aseo','Estudios Secundarios,Estudios Universitarios','',0,'Bella Vista,Via Argentina,Multiplaza,Punta Pacifica,San Francisco,Area Bancaria,El Cangrejo,El Carmen,La Cresta,Marbella,Obarrio,Paitilla','Persona honesta tranquila y educada. ','','','3'),(213,213,'','','','','','',0,'','',NULL,NULL,NULL),(214,214,'','','','','','',0,'','',NULL,NULL,NULL),(215,215,'5 años o masás','Lactante,Infantiles de 1-3 años,Preescolares 3-6 años,Escolar 6-12 años,Adolecentes +12 años','Cuido hasta 3 niños,Cuido niños enfermos,Me gustan las mascotas','Ayuda con las tareas,Paseo al mall,Alimentación y aseo,Tareas básicas del hogar','Estudios Universitarios','',4,'Betania,Bella Vista,Calidonia,Via Argentina,Multiplaza,Ernesto Córdoba Campos,Panamá,Punta Pacifica,Parque Lefevre,Tumba Muerto,Pueblo Nuevo,San Francisco','Docente  de Preescolar con 10 años de experiencia','','','5'),(216,216,'3 años','Infantiles de 1-3 años,Preescolares 3-6 años','Cuido niños enfermos','Alimentación y aseo,Paseo al mall','Primeros auxilios','',35,'Bella Vista,Betania,Alcalde Díaz,Panamá,Ciudad del Saber,Costa del Este,Paitilla,Villa Lucre,Pueblo Nuevo','Persona entusiasta, puntual, y con excelente actitud. Excelentes relaciones personales','','',''),(217,217,'','','','','','',0,'','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `nannydatageneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannys`
--

DROP TABLE IF EXISTS `nannys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nannys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `numeroID` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `fechaNacimiento` varchar(45) DEFAULT NULL,
  `edad` year(4) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(60) DEFAULT NULL,
  `privateNumber` varchar(10) DEFAULT NULL,
  `imagesID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannys`
--

LOCK TABLES `nannys` WRITE;
/*!40000 ALTER TABLE `nannys` DISABLE KEYS */;
INSERT INTO `nannys` VALUES (4,4,' Shinna oller ',' 8-942-1877',' 68840384','1998-11-05',1998,'Panamá','','of',''),(6,6,'Csrmen Teresa Arroyo de Orochena','119333688','68631361','1959-10-15',1959,'Panamá','','of','Permanencia residencial carmen.jpg'),(7,7,'Adriana aguilar','At909032','60411655','1990-08-27',1990,'Panamá','','of','1562638973209812920345.jpg'),(8,8,'Egle Padron','120785755','61261816','1965-07-02',1965,'Panamá','','of','20190524_161956.jpg'),(9,9,'Lury Escobar','8-738-1031','61542571','1980-07-13',1980,'Panamá','','of','20190208_153847.jpg'),(10,11,'Adriana Josefina Gómez de Silva','O78632798','0050760422038','1974-08-28',1974,'Panamá','','on','IMG_20190709_130452.jpg'),(12,13,'Cristabel Elina James ','8-954-1857 ','6990-1709 ','2000-03-18',2000,'Panamá','','of','15631550720235967229771002359034.jpg'),(13,14,'Silvia Marlene  Padron Carrillo','143443526','60680657','1964-07-24',1964,'Panamá','','of','pasaporte silvia p.gif'),(15,16,' Miriam Barría',' 8-895-760',' 6924-2513','1995-06-29',1995,'Panamá','','of',''),(17,18,'Yamy Gonzalez','8-790-560','60802633','1980-02-23',1980,'Panamá','','of','20190729_093259.jpg'),(18,19,'Thais Rivera ','3-724-1857','6362-9788 ','1990-04-17',1990,'Panamá','','of','IMG_20190729_092248.jpg'),(19,20,'Gabriela Andreina Molina Briceño','143556037','62860347','1994-03-25',1994,'Panamá','','of','IMG-20190528-WA0011.jpeg'),(23,24,'Ingrid Leiva','CO2484807','64953940','1990-11-28',1990,'Panamá','','on','IMG-20190530-WA0066.jpg'),(24,25,'Katherine Vega','4-772-683','6029-2192','1993-12-04',1993,'Panamá','','of','image.jpg'),(25,26,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(26,27,' Yasmery rodriguez ',' 134762973',' 67260206','1999-04-23',1999,'Panamá','','of','IMG_20190731_111449.jpg'),(27,28,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(28,29,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(29,30,' Sobeyda María Urbina Pérez ','C02211744','68662848','1988-12-07',1988,'Panamá','','on',''),(30,31,'Astrid Carolina rivera','8-864-2186','6800-1820','1992-10-13',1992,'Panamá','','of','IMG-20190702-WA0000.jpeg'),(31,32,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(32,33,'María Mercado ','143745723','60585762','2000-06-22',2000,'Panamá','','of','15645030943443907670027356984390.jpg'),(33,34,'Maria Nelly García','377069','62781623','1977-03-13',1977,'Panamá','','of','IMG_20181222_205226.jpg'),(34,35,'Delia Rodriguez','AV526853','67533086','2019-01-01',2019,'Panamá','','of','20190730_111010.jpg'),(35,36,'Jonelia Sánchez ','135664173','68618854','1999-03-24',1999,'Panamá','','of','image.jpg'),(36,37,'Abigail ','','66465275','1997-01-16',1997,'Panamá','','of','Screenshot_20190725-152423_WhatsApp.jpg'),(37,38,'Lina Sáenz Barroso ','AV356736','67427535','2019-01-01',2019,'Panamá','','of','IMG_20181123_110223115.jpg'),(38,39,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(39,40,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(40,41,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(41,42,'Jurema Delgado','4-736-538','61135015','1985-04-13',1985,'Panamá','','of','Cedula'),(42,43,'Gleximar Ayala','079829739','60253663','2000-09-15',2000,'Panamá','','of','PASAPORTE.jpeg'),(43,44,'Nataly MB','1047514536','65323642','2019-01-01',2019,'Panamá','','of','20190119_164056.jpg'),(44,45,'Carol Herrera ','AQ523217 ','65222510','1978-04-16',1978,'Panamá','','of','Pasaporte Carol_Generales.pdf'),(45,46,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(46,47,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(47,48,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(48,49,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(49,50,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(50,51,'Virginia Avila','114123686','69228392','1986-01-07',1986,'Panamá','','of','IMG-20190124-WA0038.jpeg'),(51,52,'Ivón Patricia Silvera castillo','Av021361','66634593','1996-03-21',1996,'Panamá','','on','pasaporte .pdf'),(52,53,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(53,54,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(54,55,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(55,56,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(56,57,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(57,58,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(58,59,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(59,60,'Marlene nuñez','3-728-1325','66951752','1991-08-04',1991,'Panamá','','of','20190806_011942.jpg'),(60,61,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(61,62,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(62,63,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(63,64,'Adriana Lucia Andino Delgado','C02111240','66384175','1992-08-23',1992,'Panamá','','of','image.jpg'),(64,65,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(65,66,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(66,67,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(67,68,'Alejanda Moncada ','Aq668763','60700967','1992-12-20',1992,'Panamá','','on','15645983806834166230083698311202.jpg'),(68,69,'Katerin Cortez ','C02425713','63929525','1998-07-29',1998,'Panamá','','of','HOJA DE VIDA.docx'),(69,70,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(70,71,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(71,72,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(72,73,'María Elena Agudelo ','605032','60693970','1966-05-11',1966,'Panamá','','on','1564602238707-536994278.jpg'),(73,74,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(74,75,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(75,76,'Lesyany mirith mendoza ','AT035185','61545961','1988-08-04',1988,'Panamá','','of','15646039784103447421356325668311.jpg'),(76,77,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(77,78,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(78,79,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(79,80,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(80,81,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(81,82,'Annette Cristina Parrilla Membreño','C02484604','64864260','1981-06-17',1981,'Panamá','','of','IMG_20190731_203353.jpg'),(82,83,'Karinel Rodriguez','2-731-1577 ','67578548','1993-07-26',1993,'Panamá','','on','IMG_20190731_204255.jpg'),(83,84,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(84,85,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(85,86,'Nancy Guerrero','Av247209','62332995','1978-05-25',1978,'Panamá','','of','hoja de vida Nancy.docx'),(86,87,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(87,88,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(88,89,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(89,90,'Greneiza Branchi','132866529','66005183','1983-03-01',1983,'Panamá','','of','Pasaporte 2.pdf'),(90,91,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(91,92,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(92,93,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(93,94,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(94,95,'Adriana López ','Au710447','65477232 ','1983-04-23',1983,'Panamá','','of','IMG_20190801_150144.jpg'),(95,96,' Nelly  villalba ',' ',' 63069752','1990-09-14',1990,'Panamá','','of',''),(96,97,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(97,98,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(98,99,'Arys Collazos','8-842-1315','66566997','1990-11-16',1990,'Panamá','','of','IMG-20190721-WA0008.jpeg'),(99,100,'Joseling Jackson ','1933932','62274252','1986-08-05',1986,'Panamá','','of','image.jpg'),(100,101,'Yurey Brown ','10-713-2480','69626482','1997-11-25',1997,'Panamá','','of','15646984911777152021717674710949.jpg'),(101,102,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(102,103,'Maria Alejandra Velez Saldarriaga','AT630349','62665590','1977-01-01',1977,'Panamá','','of','15647208015021233450731.jpg'),(103,104,'Rachell','8-965-652','60648978','2019-01-01',2019,'Panamá','','of','IMG_20190801_175239.jpg'),(104,105,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(105,106,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(106,107,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(107,108,' Doralis Milixa Ureña Sosa',' 8-907-835 ',' 66944066 ','1996-06-27',1996,'Panamá','','of',''),(108,109,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(109,110,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(110,111,'Dugleidys','073917162 ','65228989 ','1998-11-17',1998,'Panamá','','on','IMG-20190730-WA0016.jpeg'),(111,112,'Rosemary Castillo ','8-899-401','6536-6594','1995-10-03',1995,'Panamá','','of','IMG_20190801_230943.jpg'),(112,113,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(113,114,'oris vega',' 8-951-2486',' 65066123','1999-12-30',1999,'Panamá','','of',''),(114,115,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(115,116,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(116,117,'Yina fernanda borrero cortes','41960139','65838246','1984-03-23',1984,'Panamá','','of','img003.pdf'),(117,118,'Valentina Encinas','P13640830','507 62328171','2000-11-28',2000,'Panamá','','of','IMG_20190802_131207.jpg'),(118,119,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(119,120,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(120,121,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(121,122,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(122,123,'Danelys Barrios ','7-712-1504','6947-7903','2000-02-09',2000,'Panamá','','of','image.jpg'),(123,124,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(124,125,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(125,126,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(126,127,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(127,128,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(128,129,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(129,130,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(130,131,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(131,132,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(132,133,'Melissa Medianero ','4-803-955','+507 65136879','1997-05-29',1997,'Panamá','','on','B612_20190601_155706_475.jpg'),(133,134,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(134,135,'Francis González ','C01752255','68110810','1984-12-13',1984,'Panamá','','of','Screenshot_20171206-175206.png'),(135,136,'Desiree Valderrama ','112870054','63271661','1989-04-05',1989,'Panamá','','of','7404A70C-5EC4-427E-B7C8-CB257630FFF0.jpeg'),(136,137,'Deyka Diaz','8-810-933','67742093','1987-10-19',1987,'Panamá','','of','image-e6a39f11-296f-4b33-a476-decdf73718be.jpg'),(137,138,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(138,139,'Tatiana valencia ','1005253832','62321480','2019-03-09',2019,'Panamá','','of','F31C30D4-DEFB-419D-809B-7F0E78E825FB.jpeg'),(139,140,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(140,141,' Yailin Castillo',' 8-922-51',' 64079970','1997-08-24',1997,'Panamá','','of',''),(141,142,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(142,143,'Itza','8-971-1175','64889449','2001-04-29',2001,'Panamá','','on','1564879580541-1077338446.jpg'),(143,144,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(144,145,' Julia Vergara ',' ',' 63050887','2000-01-25',2000,'Panamá','','of',''),(145,146,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(146,147,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(147,148,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(148,149,'Luisa Karina cuadra Avendaño ','Co2249282','61660728','1995-07-12',1995,'Panamá','','on','Screenshot_20190804-132625.jpg'),(149,150,'Nataly Miranda ','Am833749','64271542','1985-04-18',1985,'Panamá','','of','IMG-20190627-WA0046.jpeg'),(150,151,'leidy garcia gonzalez ','9-755-505 ','69629563','1999-07-17',1999,'Panamá','','of','WhatsApp Image 2019-08-04 at 14.05.59.jpeg'),(151,152,'Marianella Sulbaran','133546471','68626188','1992-04-08',1992,'Panamá','','on','1564947929559-1200126641.jpg'),(152,153,'Indira Zuniga ','3-112-105','64060372','1972-05-06',1972,'Panamá','','of','15651207678935660675557794885917.jpg'),(153,154,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(154,155,'Mayrelis','K366521','66545370','1991-11-01',1991,'Panamá','','of','20190804_172812.jpg'),(155,156,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(156,157,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(157,158,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(158,159,'Diana Bedoya ','AU092274','62251376','1985-03-19',1985,'Panamá','','of','1565013523398-2070379803.jpg'),(159,160,'Mary luz calvo sosorio','au379727','64051562','1992-08-12',1992,'Panamá','','on','20190710_105802.jpg'),(160,161,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(161,162,'Gianella Escobar Sánchez ','Aw047802','69158920','2001-01-09',2001,'Panamá','','of','20190805_131704.jpg'),(162,163,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(163,164,'Sheyla Ruiz ','At190972','62574270','1999-01-04',1999,'Panamá','','of','image.jpg'),(164,165,'Sunnys Molina','AS943010','69105972','1979-11-13',1979,'Panamá','','of','IMG_20190805_190402.jpg'),(165,166,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(166,167,'Vianeth López moya ','Fb598020 ','62978430 ','1988-08-01',1988,'Panamá','','of','15650580697828146261220841282483.jpg'),(167,168,'cristiana flores Pineda','C02556181','+50760727669','1991-03-03',1991,'Panamá','','of','IMG_20190513_085623.jpg'),(168,169,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(169,170,'Yosmeira Francis','3-744-1931','6683-8721','1999-11-11',1999,'Panamá','','of','PSX_20190702_161324.jpg'),(170,171,'Nuzly Karina morales','Co2389803','65785175','1995-09-30',1995,'Panamá','','of','Screenshot_20190806-131718.png'),(171,172,'Islenis Rodriguez','8-918-1475','67420527','1997-04-28',1997,'Panamá','','of','15651098427923202170268318563036.jpg'),(172,10,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(173,173,'Isabel Santana','89362120','62900107','1995-05-24',1995,'Panamá','','of','1565117744180-1830152677.jpg'),(174,174,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(175,175,'Itzayana obando','C-01135978 ','6851-6383 ','1989-05-21',1989,'Panamá','','on','15651238175217518645477627614712.jpg'),(177,177,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(178,178,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(179,179,'Nicolle pineda','4-783-730','+50764638596','1996-07-15',1996,'Panamá','','of','20190807_003604.jpg'),(180,180,'Brigitt urdaneta ','116643579','61350551','1990-12-03',1990,'Panamá','','of','IMG-20181017-WA0069.jpeg'),(181,181,'Fabiola Reveron','E-8-137797','61407099','1972-02-26',1972,'Panamá','','of','Cedula Panameña.pdf'),(182,182,'Brigitt urdaneta ','116643579','61350551','1990-12-03',1990,'Panamá','','of','IMG_20190129_113055.jpg'),(183,183,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(184,184,'Sonia santander','C01976400','65608345','1981-04-13',1981,'Panamá','','of','15652245511538727181933612411336.jpg'),(185,185,' Nadhji Agragel',' 8-801-1801',' 68166814','1986-12-08',1986,'Panamá','','on',''),(186,186,' Claudia mendez castro',' As316742 ',' 62939694','1976-08-07',1976,'Panamá','','on','20160531_132601.jpg'),(187,187,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(188,188,'Melissa Quiñones  Gamboa ','AS717060','68512121','1987-12-11',1987,'Panamá','','of','20190507_115023.jpg'),(189,189,'Stephanie','8-999-1163','63553592','2000-11-09',2000,'Panamá','','on','1565294937830-929587880.jpg'),(190,190,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(191,191,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(192,192,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(193,193,'Yanaiza Alvear','3-747-1268','63001962','2001-04-09',2001,'Panamá','','of','image.jpg'),(194,194,'Meyber Cortez ','090608696','64527146','1995-08-30',1995,'Panamá','','on','15653812210808935412865969096030.jpg'),(195,195,' Luz Meléndez ','8-901-1465 ','69777055','1994-12-17',1994,'Panamá','','of',''),(196,196,'Fátima Córdoba','6-722-2158','65117383','1999-05-13',1999,'Panamá','','of','15654133145605357423744252115591.jpg'),(197,197,' María Tovar ',' 8-954-2265',' 63288443','2000-03-12',2000,'Panamá','','of','15654458792422589598169125068459.jpg'),(198,198,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(199,199,'Katherine Elizabeth Montalvan','C02518449','61259646','2019-01-13',2019,'Panamá','','of','1565490707367-1333754994.jpg'),(200,200,' Cecilia Londoño',' 8-921-576',' 62346280','1997-07-22',1997,'Panamá','','of','ced..jpg'),(201,201,'Dorelys Melendez','Av992892','63064211','1985-09-09',1985,'Panamá','','of','15656192608121505048683.jpg'),(202,202,'Nancy Mendez','106013588','65108808','1988-01-27',1988,'Panamá','','on','IMG_20190518_172145.jpg'),(203,203,'KATHERINE DEL CARMEN TORRERO RODRIGUEZ','000000000','6377 - 2811','1989-05-22',1989,'Panamá','','of','Katherine Torrero-hoja de vida.docx'),(204,204,'Mayderlys silva','060379685','63261682 ','2000-10-20',2000,'Panamá','','of','15656535796112662998758719260176.jpg'),(205,205,'Annette Parrilla','C02484604','64864260','1981-06-17',1981,'Panamá','','of','IMG_20190812_210657.jpg'),(206,206,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(207,207,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(208,208,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(209,209,'Diana García','8-938-842','62152731','1998-12-05',1998,'Panamá','','of','15656783070644267794444176379586.jpg'),(210,210,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(211,211,'Denisse López','C02364592','62669690','1995-08-27',1995,'Panamá','','of','BC9BE228-0057-4FB3-BA5E-ED0EED275011.jpeg'),(212,212,'Shirly trejo','080661283 ','62481856','1990-09-25',1990,'Panamá','','of','IMG-20190123-WA0009.jpeg'),(213,213,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(214,214,'Rocío Oliveros','AS550279','64579294','1965-05-26',1965,'Panamá','','of','IMG-20190709-WA0009.jpg'),(215,215,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL),(216,216,'Maria Teresa Lucas','13888357','62131767','1977-10-13',1977,'Panamá','','of','20180604_052054.jpg'),(217,217,' ',' ',' ','00/00/000',NULL,' ',' ',' ',NULL);
/*!40000 ALTER TABLE `nannys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannysimages`
--

DROP TABLE IF EXISTS `nannysimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nannysimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int(11) DEFAULT NULL,
  `imagesP` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannysimages`
--

LOCK TABLES `nannysimages` WRITE;
/*!40000 ALTER TABLE `nannysimages` DISABLE KEYS */;
INSERT INTO `nannysimages` VALUES (1,4,'20190805_235345.jpg'),(2,5,'4DB9B21F-D44F-4C2B-843B-8F7889B817EF.jpeg'),(3,7,'20190314_102140.png'),(4,9,'20190208_153847.jpg'),(5,6,'foto perfil carmen.jpg'),(6,11,'IMG_20180816_130602.jpg'),(7,13,'IMG_20190628_212949_648.jpg'),(8,14,'E6EE4635-A9C8-41C9-B6E1-ACDEAAA28575.jpeg'),(9,16,'image_2019716111914524.jpg'),(10,19,'IMG_20190729_091754.jpg'),(11,20,'IMG-20190622-WA0031.jpeg'),(12,18,'20190727_211414.jpg'),(13,24,'Screenshot_20190729-164519_OLX.jpg'),(14,25,'E1B642FB-29C1-491B-8F9E-0BDB4E8C9CED.jpeg'),(15,27,'IMG_20190717_212954.jpg'),(16,31,'IMG-20190711-WA0020.jpg'),(17,30,'IMG-20180317-WA0004.jpg'),(18,33,'IMG_20190801_111304.jpg'),(19,34,'IMG_20181222_205226.jpg'),(20,36,'IMG_0095.jpg'),(21,37,'B612_20190726_184637_886.jpg'),(22,42,'IMG_20190801_114517.jpg'),(23,44,'20190618_130315.jpg'),(24,45,'IMG_20190610_142727.jpg'),(25,52,'IMG_20190605_181901.png'),(26,53,'IMG_20190725_171148_296.jpg'),(27,35,'20190730_111024.jpg'),(28,57,'IMG_20190731_081248908.jpg'),(29,63,'B8398982-6CFD-40ED-886D-D22CC75376DD.jpeg'),(30,51,'20190622_070932.jpg'),(31,64,'CCA96FF5-3BAF-4A80-AA3C-1DD9DC9334C4.jpeg'),(32,68,'IMG_20190614_071711.jpg'),(33,70,'IMG_20190726_135311603.jpg'),(34,69,'IMG-20190729-WA0092.jpg'),(35,73,'1564602097560-470044686.jpg'),(36,76,'B612_20190330_160822_738.jpg'),(37,81,'IMG-20190731-WA0046.jpg'),(38,82,'IMG-20190730-WA0006.jpg'),(39,83,'IMG_20190723_194206.jpg'),(40,60,'20170918_083428.jpg'),(41,86,'IMG_2017-06-28_23-26-52.JPG'),(42,90,'IMG-20180303-WA0006.jpg'),(43,96,'IMG_20190731_090923_533.jpg'),(44,95,'PhotoGrid_1547086736997.jpg'),(45,99,'IMG-20190520-WA0008.jpg'),(46,100,'BB36EF34-0336-4C29-A638-5871B69BC6F1.jpeg'),(47,101,'IMG-20190531-WA0009.jpeg'),(48,104,'20171023_113259.jpg'),(49,108,'PhotoGrid_1564446557996.jpg'),(50,111,'IMG_20190730_221252_390.jpg'),(51,112,'inCollage_20190331_033404906.jpg'),(52,103,'IMG_20190608_221243_550.jpg'),(53,114,'ECD923BC-10A5-413C-AA55-43EAE726D354.jpeg'),(54,117,'IMG_20190210_100931.jpg'),(55,118,'15647715126711138367445804520792.jpg'),(56,134,'IMG_20190731_101924.jpg'),(57,135,'Screenshot_20171206-175206.png'),(58,136,'D15E163D-2392-4082-9B9F-266F6DE11E84.jpeg'),(59,8,'IMG-20190708-WA0078.jpg'),(60,139,'20651571-7294-4B05-9032-13EA9252427D.jpeg'),(61,141,'42410D94-4B84-43B6-A1E2-204FECAE601E.jpeg'),(62,143,'IMG_20180808_184253_661.JPG'),(63,137,'IMG_20190719_084324_936.jpg'),(64,145,'IMG_20190718_002615.jpg'),(65,148,'IMG_20190713_091621_448.jpg'),(66,150,'20190525_123257.jpg'),(67,151,'Screenshot 2019-08-04 at 14.08.39.png'),(68,152,'IMG_20190802_072019.jpg'),(69,155,'IMG-20190718-WA0026.jpg'),(70,159,'1565013040671725808181.jpg'),(71,160,'20190705_104437.jpg'),(72,162,'20190727_170939.jpg'),(73,164,'CCBA2761-2A23-4C1C-9BDA-E608C58EE48D.jpeg'),(74,167,'IMG_20181231_213846.jpg'),(75,168,'PhotoEditor_20190519_173925409.jpg'),(76,170,'PSX_20190702_161324.jpg'),(77,172,'IMG_20190711_160239_642.jpg'),(78,171,'IMG_20190402_133315_353.jpg'),(79,173,'IMG_20190714_153537.jpg'),(80,153,'IMG_20190726_122344.jpg'),(81,175,'IMG_20190629_170722.jpg'),(82,176,'icon-girl.png'),(83,179,'20190530_124456.jpg'),(84,180,'20190626_112550.jpg'),(85,181,'Foto perfil.docx'),(86,182,'IMG_20190503_140007.jpg'),(87,183,'IMG_20190514_171828.jpg'),(88,184,'15652246894574455986775318058574.jpg'),(89,185,'FB_IMG_1565132675864.jpg'),(90,186,'IMG_20190627_063729429.jpg'),(91,123,'CC98FE5F-84B5-4CDE-B279-853CA7E37461.jpeg'),(92,188,'20190217_153223.jpg'),(93,189,'20181217-1710233488.jpg'),(94,190,'IMG_20190731_140152_910.jpg'),(95,193,'8FC2E100-900B-458F-8C18-FCE14F41F3B3.jpeg'),(96,194,'IMG_20190529_132951_293.jpg'),(97,195,'29385E5C-49D2-4D2A-BE48-F09137BEAD46.jpeg'),(98,196,'20190809_235008.jpg'),(99,197,'3391523_0.jpg'),(100,198,'PhotoGrid_1497914153509.jpg'),(101,38,'IMG_20190805_204541980.jpg'),(102,200,'IMG_7121.JPG'),(103,201,'IMG_20190318_110553.jpg'),(104,202,'IMG-20190416-WA0012.jpeg'),(105,204,'IMG_20190811_164931805.jpg'),(106,205,'IMG_20190812_200448_827.JPG'),(107,209,'Screenshot_20190813_011545.jpg'),(108,211,'22BDB581-32A1-45B8-A654-80F3F03AE1C2.jpeg'),(109,212,'Screenshot_20190813_120000_com.android.gallery3d.jpg'),(110,213,'20190810_192826.jpg'),(111,214,'IMG-20190426-WA0098.jpeg'),(112,216,'Screenshot_2019-08-13-20-05-03-1.png');
/*!40000 ALTER TABLE `nannysimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `padreslogin`
--

DROP TABLE IF EXISTS `padreslogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `padreslogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namePadres` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL DEFAULT '0000-0000',
  `email` varchar(50) NOT NULL,
  `passwordPadres` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `padreslogin`
--

LOCK TABLES `padreslogin` WRITE;
/*!40000 ALTER TABLE `padreslogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `padreslogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nanny365'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_DisponibilidadNanny` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_DisponibilidadNanny`(in id int
(11) )
BEGIN
	SELECT
		d.dia,
		d.horaInicio,
		d.horaFinal
	FROM
		disponibilidad AS d
	WHERE nannyID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_filterNanny` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_filterNanny`(in  _data  varchar
(100),in  _experiencia  varchar
(100), in _option varchar
(100))
BEGIN

	IF (_option = 'Experiencia' ) THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.exp,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
				 ndt.exp = _experiencia;

	ELSE

	IF(_option = 'GruposE' )THEN

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
    	 ndt.exp  = _experiencia
		AND ndt.servicios LIKE _data;


	ELSE

	IF(_option = 'ServiciosEs')THEN

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
		  ndt.serviciosAdicionales  LIKE _data
		AND ndt.exp = _experiencia;

	ELSE

	IF (_option = 'Zonas' ) THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
              ndt.exp =   _experiencia
		AND ndt.zona  LIKE _data;

	ELSE

	IF (_option = 'searchInp' ) THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP
       

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
		ndt.zona  LIKE _data
		OR ndt.serviciosEspeciales  LIKE _data
		OR ndt.serviciosAdicionales  LIKE _data
		OR ndt.certificacion  LIKE _data
		OR ndt.tarifa  LIKE _data
		OR ndt.sobreMi  LIKE _data
		OR n.provincia LIKE _data
        OR n.nombre LIKE _data;
END
IF;
          END
IF ;
          
        END
IF ;
        
        
         END
IF;
         
        END
IF ; 
        
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_filterNannyList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_filterNannyList`(in  _data  varchar
(200),in  _experiencia  varchar
(200), in _option varchar
(200))
BEGIN
	IF (_option = 'Experiencia' ) THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.exp,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
    ndt.exp = _experiencia;

	ELSE

	IF(_option = 'GruposE' )THEN

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
    	 ndt.exp  = _experiencia
         AND Match (ndt.servicios,ndt.serviciosAdicionales,ndt.zona) AGAINST (_data);
	ELSE
    
	IF(_option = 'ServiciosEs')THEN

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
        ndt.exp = _experiencia
	 AND Match (ndt.servicios,ndt.serviciosAdicionales,ndt.zona) AGAINST (_data);
      
	ELSE

	IF (_option = 'Zonas' ) THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
		ndt.exp =   _experiencia
        AND Match (ndt.servicios,ndt.serviciosAdicionales,ndt.zona) AGAINST (_data);
        
END IF ;
END IF ;
END IF;
END IF ;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_filterRange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_filterRange`(in _dataOne int(11),
 in _dataTwo int (11),
 in _exp int (11), 
 in _option varchar (50)
 )
BEGIN
	IF (_option = 'Edad') THEN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		n.edad,
		ndt.experiencia,
        ndt.exp,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
			ndt.exp = _exp
		AND  n.edad  <= _dataOne
		AND n.edad  >= _dataTwo;

	ELSE

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		n.edad,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP

	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
	WHERE
    ndt.exp = _exp
		AND     ndt.tarifa  <= _dataOne
		OR ndt.tarifa  <= _dataTwo;
END
IF ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_getDataNanny` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_getDataNanny`(in _id int
(11))
BEGIN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.edad,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.servicios,
		ndt.serviciosEspeciales,
		ndt.serviciosAdicionales,
		ndt.othersServiceEspeciales,
		ndt.othersInformacionAdicional,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		img.imagesP,
		log.miembro,
		log.lastLogin
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN nannysimages AS img
		ON n.nannyID = img.nannyID
		INNER JOIN login AS log
		ON n.nannyID = log.id
	WHERE
    n.nannyID = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_getImages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_getImages`(in _id int
(11))
BEGIN
	SELECT imagesP
	FROM nannysimages
	WHERE nannyID = _id
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_inserImages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_inserImages`(in _id int
(11),in _imagesP varchar
(100))
BEGIN

	IF NOT EXISTS (SELECT *
	FROM nannysimages
	WHERE nannyID = _id) THEN
	INSERT INTO nannysimages
		(nannyID,imagesP)
	VALUES
		(_id, _imagesP);
	SELECT LAST_INSERT_ID() AS id;
	ELSE
	UPDATE
 nannysimages
SET imagesP = _imagesP WHERE nannyID = _id;
	SELECT LAST_INSERT_ID() AS id;

END
IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_insertDataGeneral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertDataGeneral`(in _numExperienca varchar(20),in _experienca varchar (50),
in _servicios varchar(200),
in _serviciosEs varchar(200),
in _serviciosA varchar (200),
in _certificacion varchar (200),
in _verificacion varchar(200),
 in _tarifa int(11),
 in _zonas varchar(300),
 in _sobreMI varchar(300),
 in _id int(11),
 in _othersEspe VARCHAR(100),
 in _othersAdi VARCHAR(100))
BEGIN

	IF NOT EXISTS (SELECT *
	FROM nannydatageneral
	WHERE nannyID = _id ) THEN

	INSERT INTO nannydatageneral
		(nannyID,experiencia,servicios,serviciosEspeciales,serviciosAdicionales,certificacion,verificacion,tarifa,zona,sobreMi,othersServiceEspeciales,othersInformacionAdicional,exp)

	VALUES

		(_id, _experienca, _servicios, _serviciosEs, _serviciosA, _certificacion, _verificacion, _tarifa, _zonas, _sobreMI, _othersEspe, _othersAdi, _experienca, _numExperienca);
	SELECT LAST_INSERT_ID() AS id;
	ELSE

	UPDATE nannydatageneral
SET  experiencia = _experienca,servicios = _servicios, serviciosEspeciales =_serviciosEs ,serviciosAdicionales = _serviciosA, certificacion = _certificacion,verificacion = _verificacion, tarifa = _tarifa, zona = _zonas , sobreMi = _sobreMI ,othersServiceEspeciales = _othersEspe,othersInformacionAdicional = _othersAdi,exp= _numExperienca
WHERE nannyID = _id
	;
	SELECT LAST_INSERT_ID() AS id;
END
IF ; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_insertDataPersonal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertDataPersonal`(in _nombre varchar
(50), in _fechaN varchar
(45) , in _provincia varchar
(50),in _distrito varchar
(50), in _identificacion varchar
(50) ,  in _id int
(11), in _telefono varchar
(45), in _privateNumber varchar
(10),in _imagesID varchar
(100))
BEGIN
	SET @message =  'Usted no esta registrado por favor inicie sesion ';
	IF NOT EXISTS (SELECT *
	FROM login
	WHERE id = _id) THEN
	SELECT @message;
	ELSE
    	UPDATE nannys
		SET nannyID = _id, nombre = _nombre,numeroID = _identificacion, telefono = _telefono,fechaNacimiento = _fechaN,edad =_fechaN ,provincia = _provincia , distrito= _distrito,privateNumber = _privateNumber,imagesID = _imagesID
			WHERE nannyID = _id;
		SELECT LAST_INSERT_ID() AS nannyID;
END
IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_insertHour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertHour`(
in _Lapertura VARCHAR
(20),
in  _Lcierre VARCHAR
(20),

in _Mapertura VARCHAR
(20),
in  _Mcierre VARCHAR
(20),

in _Miapertura VARCHAR
(20),
in  _Micierre VARCHAR
(20),

in _Japertura VARCHAR
(20),
in  _Jcierre VARCHAR
(20),

in _Vapertura VARCHAR
(20),
in  _Vcierre VARCHAR
(20),

in _Sapertura VARCHAR
(20),
in  _Scierre VARCHAR
(20),

in _Dapertura VARCHAR
(20),
in  _Dcierre VARCHAR
(20),

in _id int
(11)

)
BEGIN

	IF NOT EXISTS (SELECT *
	FROM disponibilidad
	WHERE nannyID = _id ) THEN

	INSERT 
	INTO 
		disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Lunes", _Lapertura, _Lcierre);



	INSERT 
	INTO 
		disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Martes", _Mapertura, _Mcierre);



	INSERT 
	INTO 
		disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Miércoles", _Miapertura, _Micierre);




	INSERT 
	INTO 
	disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Jueves", _Japertura, _Jcierre);



	INSERT 
	INTO 
		disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Viernes", _Vapertura, _Vcierre);



	INSERT 
	INTO 
		disponibilidad
		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Sábado", _Sapertura, _Scierre);


	INSERT 
	INTO 
		disponibilidad

		(nannyID,dia,horaInicio,horaFinal)
	VALUES
		(_id, "Domingo", _Dapertura, _Dcierre);


	SELECT LAST_INSERT_ID() AS id
	;

	ELSE


	UPDATE  
	 
		disponibilidad

	SET horaInicio = _Lapertura ,horaFinal = _Lcierre WHERE nannyID = _id AND dia ="Lunes"
	;


	UPDATE  
	 
		disponibilidad

	SET 	horaInicio = _Mapertura ,horaFinal = _Mcierre WHERE nannyID = _id AND dia ="Martes";


	UPDATE  
	 
		disponibilidad

	SET 	horaInicio = _Miapertura ,horaFinal = _Micierre WHERE nannyID = _id AND dia ="Miércoles";



	UPDATE  
	 
		disponibilidad

	SET horaInicio = _Japertura ,horaFinal = _Jcierre WHERE nannyID = _id AND dia ="Jueves"
	;




	UPDATE  
	 
		disponibilidad

	SET 	horaInicio = _Vapertura ,horaFinal = _Vcierre WHERE nannyID = _id AND dia ="Viernes"
	;



	UPDATE  
	 
		disponibilidad

	SET 	horaInicio = _Sapertura ,horaFinal = _Scierre WHERE nannyID = _id AND dia ="Sábado"
	;


	UPDATE  
	 
		disponibilidad

	SET horaInicio = _Dapertura ,horaFinal = _Dcierre   WHERE nannyID = _id AND dia ="Domingo"
	;




	SELECT LAST_INSERT_ID() AS id
;

END
IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_insertReservation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertReservation`(in _idReservation int
(11))
BEGIN
	IF NOT EXISTS (SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID
	FROM nannys AS n
	WHERE n.nannyID = _idReservation ) THEN

	INSERT 
	INTO 
		nannys

		(nannyID,nombre,numeroID,telefono,fechaNacimiento,provincia,distrito,privateNumber)
	VALUES
		(_idReservation, " ", " ", " ", "00/00/000", " ", " ", " ");


	INSERT INTO nannydatageneral
		(nannyID,experiencia,servicios,serviciosEspeciales,serviciosAdicionales,certificacion,verificacion,tarifa,zona,sobreMi)

	VALUES

		(_idReservation, '', '', '', '', '', '', '', '', '');

	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID
	FROM
		nannys AS n
	WHERE
    n.nannyID = _idReservation;
	ELSE
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID
	FROM nannys AS n
	WHERE nannyID = _idReservation
;

END
IF ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_lastLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_lastLogin`(in _id int
(11))
BEGIN
	SELECT log.lastLogin
	FROM login AS log
	WHERE id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_recuperarPasword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_recuperarPasword`(in _email VARCHAR
(50),_Password VARCHAR
(100), _id int
(11),_option VARCHAR
(45),in _has VARCHAR
(100))
BEGIN
	IF (_option = 'Select')THEN
	SELECT
		log.email,
		log.id,
		log.nameUser
	FROM
		login AS log
	WHERE
    email = _email;
	ELSE
	IF(_option = 'AutenticateUser') THEN
	UPDATE login
    SET passwordUser = SHA(_password) WHERE hashRpasword = _has;
	SELECT
		log.email, log.id, log.nameUser
	FROM
		login AS log;
	ELSE
	IF(_option= 'Active' )THEN

	UPDATE login
    SET hashRpasword = _has WHERE id = _id;
	SELECT
		log.email, log.id, log.nameUser, log.hashRpasword
	FROM
		login AS log
	WHERE id = _id
	;
	ELSE
	IF(_option = 'SelectUserExistHash')THEN
	SELECT *
	FROM login
	WHERE  hashRpasword = _has;
END
IF;
    END
IF;
 END
IF ;
END
IF ;  

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_selectNannys` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_selectNannys`()
BEGIN
	SELECT
		n.nannyID,
		n.nombre,
		n.numeroID,
		n.telefono,
		n.fechaNacimiento,
		n.edad,
		n.provincia,
		n.distrito,
		n.privateNumber,
		n.imagesID,
		ndt.experiencia,
		ndt.serviciosAdicionales,
		ndt.certificacion,
		ndt.verificacion,
		ndt.tarifa,
		ndt.zona,
		ndt.sobreMi,
		nimg.imagesP,
		log.miembro
	FROM
		nannys AS n
		INNER JOIN nannydatageneral AS ndt
		ON n.nannyID = ndt.nannyID
		INNER JOIN login AS log
		ON n.nannyID = log.id
		INNER JOIN nannysimages as nimg ON n.nannyID =  nimg.nannyID
         WHERE n.nombre  != "" OR   n.edad != "" OR ndt.experiencia !=""
        ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_socialNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_socialNetwork`(in _name varchar
(50),in _email varchar
(50), in _id varchar
(45),in _option varchar
(45),in _miembro varchar
(45))
BEGIN

	IF ( _option = "Facebook") THEN

	IF NOT EXISTS ( SELECT *
	FROM login
	WHERE registerOption = _option AND idSocialNetwork = _id) THEN

	INSERT INTO login
		( nameUser, email,passwordUser,lastLogin,registerOption,idSocialNetwork,miembro)
	VALUES
		(_name, _email, SHA(""), 0, _option, _id, _miembro);
	SELECT LAST_INSERT_ID() AS id;
	ELSE

	SELECT *
	FROM login
	WHERE registerOption = _option AND idSocialNetwork = _id;

END
IF;

ELSE 

IF NOT EXISTS ( SELECT *
FROM login
WHERE registerOption = _option AND idSocialNetwork = _id) THEN

INSERT INTO login
	( nameUser, email,passwordUser,lastLogin,registerOption,idSocialNetwork,miembro)
VALUES
	(_name, _email, SHA(""), 0, _option, _id, _miembro);
SELECT LAST_INSERT_ID() AS id;
ELSE

SELECT *
FROM login
WHERE registerOption = _option AND idSocialNetwork = _id;
END
IF;
END
IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_validateFathers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_validateFathers`(in _name varchar
(50) ,in _telefono varchar
(50), in _email varchar
(50),in _password varchar
(45),in _option varchar
(45) )
BEGIN

	IF NOT EXISTS ( SELECT *
	FROM padreslogin
	WHERE email = _email ) THEN

	INSERT INTO padreslogin
		( namePadres, telefono,email,passwordPadres)
	VALUES
		(_name, _telefono, _email, SHA(_password));

	SELECT LAST_INSERT_ID() AS id;
	ELSE
	SELECT *
	FROM padreslogin
	WHERE email = _email;
END
IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_validateUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_validateUsers`(in _email varchar
(50), in _password varchar
(100),in _option varchar
(45),_miembro varchar
(45))
BEGIN


	IF ( _option = 'Create' ) THEN

	IF NOT EXISTS ( SELECT *
	FROM login
	WHERE email = _email ) THEN

	INSERT INTO login
		( nameUser, email,passwordUser,lastLogin,registerOption,idSocialNetwork,miembro)
	VALUES
		("", _email, SHA(_password), 0, "Nanny", 0, _miembro);

	SELECT
		*
	FROM
		login
	WHERE
    email = _email;

	ELSE

	SELECT *
	FROM login
	WHERE email = _email && passwordUser
	= SHA
	(_password);

END
IF;

ELSE 
    SELECT *
FROM login
WHERE email = _email && passwordUser
= SHA
(_password);
END
IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-14 14:45:25
