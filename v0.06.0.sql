-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: nanny365
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `disponibilidad`
--
use nanny365;
DROP TABLE IF EXISTS `disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disponibilidad`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int
(11) DEFAULT NULL,
  `dia` varchar
(45) DEFAULT NULL,
  `horaInicio` varchar
(20) DEFAULT NULL,
  `horaFinal` varchar
(20) DEFAULT NULL,
  `disponibilidadcol` varchar
(45) DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidad`
--

LOCK TABLES `disponibilidad` WRITE;
/*!40000 ALTER TABLE `disponibilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `nameUser` varchar
(45) DEFAULT NULL,
  `email` varchar
(50) DEFAULT NULL,
  `passwordUser` varchar
(100) DEFAULT NULL,
  `lastLogin` tinyint
(4) NOT NULL DEFAULT '0',
  `registerOption` varchar
(45) NOT NULL,
  `idSocialNetwork` varchar
(45) NOT NULL DEFAULT '0',
  `miembro` varchar
(45) DEFAULT NULL,
  `hashRpasword` varchar
(100) NOT NULL,
  PRIMARY KEY
(`id`),
  UNIQUE KEY `email_UNIQUE`
(`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannydatageneral`
--

DROP TABLE IF EXISTS `nannydatageneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nannydatageneral`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int
(11) DEFAULT NULL,
  `experiencia` varchar
(10) DEFAULT NULL,
  `servicios` varchar
(100) DEFAULT NULL,
  `serviciosEspeciales` varchar
(100) DEFAULT NULL,
  `serviciosAdicionales` varchar
(100) DEFAULT NULL,
  `certificacion` varchar
(200) DEFAULT NULL,
  `verificacion` varchar
(200) DEFAULT NULL,
  `tarifa` int
(11) DEFAULT NULL,
  `zona` varchar
(300) DEFAULT NULL,
  `sobreMi` varchar
(400) DEFAULT NULL,
  `othersServiceEspeciales` varchar
(100) DEFAULT NULL,
  `othersInformacionAdicional` varchar
(100) DEFAULT NULL,
  `exp` varchar
(5) DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannydatageneral`
--

LOCK TABLES `nannydatageneral` WRITE;
/*!40000 ALTER TABLE `nannydatageneral` DISABLE KEYS */;
/*!40000 ALTER TABLE `nannydatageneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannys`
--

DROP TABLE IF EXISTS `nannys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nannys`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int
(11) DEFAULT NULL,
  `nombre` varchar
(50) DEFAULT NULL,
  `numeroID` varchar
(45) DEFAULT NULL,
  `telefono` varchar
(45) DEFAULT NULL,
  `fechaNacimiento` varchar
(45) DEFAULT NULL,
  `edad` year
(4) DEFAULT NULL,
  `provincia` varchar
(50) DEFAULT NULL,
  `distrito` varchar
(60) DEFAULT NULL,
  `privateNumber` varchar
(10) DEFAULT NULL,
  `imagesID` varchar
(100) DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannys`
--

LOCK TABLES `nannys` WRITE;
/*!40000 ALTER TABLE `nannys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nannys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nannysimages`
--

DROP TABLE IF EXISTS `nannysimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nannysimages`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `nannyID` int
(11) DEFAULT NULL,
  `imagesP` varchar
(100) DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nannysimages`
--

LOCK TABLES `nannysimages` WRITE;
/*!40000 ALTER TABLE `nannysimages` DISABLE KEYS */;
/*!40000 ALTER TABLE `nannysimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `padreslogin`
--

DROP TABLE IF EXISTS `padreslogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `padreslogin`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `namePadres` varchar
(50) NOT NULL,
  `telefono` varchar
(50) NOT NULL DEFAULT '0000-0000',
  `email` varchar
(50) NOT NULL,
  `passwordPadres` varchar
(45) NOT NULL,
  PRIMARY KEY
(`id`)
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
-- Dumping events for database 'nanny365'
--

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
CREATE  PROCEDURE `SP_DisponibilidadNanny`
(in id int
(11) )
BEGIN
	SELECT
		d.dia,
		d.horaInicio,
		d.horaFinal
	FROM
		disponibilidad AS d
	WHERE nannyID = id;
END
;;
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
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_filterNanny`
(in  _data  varchar
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
              ndt.exp <=  _experiencia
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
		OR n.provincia LIKE _data;


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
/*!50003 DROP PROCEDURE IF EXISTS `SP_filterRange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_filterRange`
(in _dataOne int
(11), in _dataTwo int
(11), in _option varchar
(50))
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
		  n.edad  <= _dataOne
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
		    ndt.tarifa  <= _dataOne
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
CREATE  PROCEDURE `SP_getDataNanny`
(in _id int
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
END
;;
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
CREATE  PROCEDURE `SP_getImages`
(in _id int
(11))
BEGIN
	SELECT imagesP
	FROM nannysimages
	WHERE nannyID = _id
;
END
;;
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
CREATE  PROCEDURE `SP_inserImages`
(in _id int
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
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertDataGeneral`
(in _numExperienca varchar
(5),in _experienca varchar
(10),in _servicios varchar
(100),in _serviciosEs varchar
(100) ,in _serviciosA varchar
(100),in _certificacion varchar
(200),in _verificacion varchar
(200), in _tarifa int
(11),in _zonas varchar
(300), in _sobreMI varchar
(300), in _id int
(11),in _othersEspe VARCHAR
(100),in _othersAdi VARCHAR
(100))
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertDataPersonal`
(in _nombre varchar
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
	IF NOT EXISTS ( SELECT *
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
CREATE  PROCEDURE `SP_insertHour`
(
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_insertReservation`
(in _idReservation int
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
	WHERE nannyID = _idReservation ) THEN

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
CREATE  PROCEDURE `SP_lastLogin`
(in _id int
(11))
BEGIN
	SELECT log.lastLogin
	FROM login AS log
	WHERE id = _id;
END
;;
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
CREATE  PROCEDURE `SP_recuperarPasword`
(in _email VARCHAR
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_selectNannys`
()
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
		INNER JOIN nannysimages as nimg ON n.nannyID =  nimg.nannyID;
END
;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_socialNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SP_socialNetwork`
(in _name varchar
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
CREATE  PROCEDURE `SP_validateFathers`
(in _name varchar
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
CREATE  PROCEDURE `SP_validateUsers`
(in _email varchar
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

-- Dump completed on 2019-06-18 15:27:56
