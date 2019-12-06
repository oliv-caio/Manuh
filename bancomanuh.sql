CREATE DATABASE  IF NOT EXISTS `bancomanuh` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bancomanuh`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: bancomanuh
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bebida`
--

DROP TABLE IF EXISTS `bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bebida` (
  `idbebida` int(11) NOT NULL AUTO_INCREMENT,
  `nomebebida` varchar(45) NOT NULL,
  `bebidavalor` double NOT NULL,
  PRIMARY KEY (`idbebida`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebida`
--

LOCK TABLES `bebida` WRITE;
/*!40000 ALTER TABLE `bebida` DISABLE KEYS */;
INSERT INTO `bebida` VALUES (9,'Coca-Cola lata',5),(10,'Guarana lata',5),(11,'agua sem gas',3),(12,'agua com gas',3);
/*!40000 ALTER TABLE `bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomecliente` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefonepessoal` int(11) NOT NULL,
  `nomerua` varchar(45) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (4,'teste','fsafdsafdsaf',45645456,'fdsfasdfdas'),(5,'caio','fsdnjfksdbafjknsa',0,'fdsafadsf'),(6,'leu','popopop',119711235,'cotiacity'),(7,'CAIO','fjsdjfiosda',9898989,'rua cptia'),(8,'Arturito','arturito@gmail.com',119999999,'Rua Alphaboys'),(9,'André','andre@espm.br',1195959856,'joaquim tavora'),(10,'saaaa','fdsafdas',778978897,'fadsfda'),(11,'Xanda','xan@xan.com',119755548,'rua gomes de carvalho'),(12,'tste','alalalal',11111,'alalala'),(13,'aaaaaatest','dasdsafads',545654,'fasfdsa'),(14,'dadada','fdsfsdaf',56655656,'fsadfsadf'),(15,'zzzzz','zzzzz',55555,'aaaaa'),(16,'rafateste','fsdadsafdsaf',4545456,'fdsafdsafads'),(21,'cao','dasdsafsda',4465465,'fdsafdsafdsa'),(22,'Pigas','pigas.pigas@pigas',111978785,'pigas'),(23,'Joao gayzolas','joao@joao.joao',7777777,'rua joaquim távora'),(24,'opa','oliv.caio@caio.com',11134,'mim de '),(26,'André','andre@espm.br',0,'rua joaquim távora'),(27,'caio','oliv.caio@caio.com',11190190,'rua joaquim távora'),(28,'Gilberto','gilberto@gmail.com',0,'paulista');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `idpagamento` int(11) NOT NULL AUTO_INCREMENT,
  `idtipopag` int(11) NOT NULL,
  PRIMARY KEY (`idpagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idprato` int(11) NOT NULL,
  PRIMARY KEY (`idpedido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,0,4),(2,0,4),(3,0,4),(4,17,4),(5,18,6),(6,19,5),(7,20,5),(8,21,4),(9,22,4),(10,23,6),(11,24,6),(12,25,4),(13,26,5),(14,27,4),(15,28,6);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pratos`
--

DROP TABLE IF EXISTS `pratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pratos` (
  `idprato` int(11) NOT NULL AUTO_INCREMENT,
  `pratodesc` varchar(100) NOT NULL,
  `pratovalor` double NOT NULL,
  PRIMARY KEY (`idprato`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pratos`
--

LOCK TABLES `pratos` WRITE;
/*!40000 ALTER TABLE `pratos` DISABLE KEYS */;
INSERT INTO `pratos` VALUES (4,'Filé de sait Peter,spaghetti ao molho de limão siciliano e legumes',35),(5,'Filé de frango grelhado com arroz integral e legumes no vapor',35),(6,'Filet mignon com arroz branco, feijão e batatas coradas',35);
/*!40000 ALTER TABLE `pratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopag`
--

DROP TABLE IF EXISTS `tipopag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopag` (
  `idtipopag` int(11) NOT NULL AUTO_INCREMENT,
  `tipopagamento` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipopag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopag`
--

LOCK TABLES `tipopag` WRITE;
/*!40000 ALTER TABLE `tipopag` DISABLE KEYS */;
INSERT INTO `tipopag` VALUES (4,'Débito'),(5,'Credito'),(6,'Dinheiro');
/*!40000 ALTER TABLE `tipopag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 23:54:39
