-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: desafio_python
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `comidas`
--

DROP TABLE IF EXISTS `comidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `preco` float NOT NULL,
  `pathImg` varchar(80) NOT NULL,
  `descricao` longtext NOT NULL,
  `idReceita` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comidas`
--

LOCK TABLES `comidas` WRITE;
/*!40000 ALTER TABLE `comidas` DISABLE KEYS */;
INSERT INTO `comidas` VALUES (1,'Cookies',3.5,'../static/img/cookies.png','Deliciosos biscoitos de baunilha com gotas de chocolate',1),(2,'Waffles',5.5,'../static/img/waffles.png','Waffles ao americano que combinam com diversos acompanhamentos',2),(3,'Bolinho de chuva',3.5,'../static/img/bolinhoChuva.png','Bolinhos fritos enrolados em açúcar e canela, perfeitos para dias chuvosos',3),(4,'Torta de Danoninho',15,'../static/img/tortaDanoninho.png','Torta forrada com bolachas maizena, recheio de danoninho e cobertura de chocolate branco',4),(5,'Torta Alemã',15,'../static/img/tortaAlema.png','Torta forrada com bolachas maizena, recheio de nata e cobertura de chocolate',5),(6,'Fricassê de frango',20,'../static/img/fricasse.png','Um preparado de frango desfiado acompanhado de molho especial e batata palha',6),(7,'Nega Maluca',20,'../static/img/negaMaluca.png','Bolo de chocolate macio acompanhado com cobertura de brigadeiro',7),(8,'\'Batata salteada com bacon\'',15,'../static/img/batataSalteada.png','Batata crocante frita com bacon e acompanhada de queijo ralado',8),(9,'\'Donuts\'',15,'../static/img/donuts.png','Donut perfeito e fofinho, com cobertura de chocolate preto e granulado colorido.',9),(10,'\'Alfajor \'',5.5,'\'../static/img/alfajor.png\'','Biscoitos recheados com doce de leite e cobertos com chocolate meio amargo',10);
/*!40000 ALTER TABLE `comidas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 19:55:27
