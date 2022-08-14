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
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensagem` longtext NOT NULL,
  `dataMsg` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'\'Leonardo Felipe Salgado\'','\'leosalgado2004@gmail.com\'','\'Mensagem teste para saber se ele grava no banco de dados\'','\'2022-8-12\''),(2,'\'Leonardo Felipe Salgado\'','\'leosalgado2004@gmail.com\'','\'Segundo teste, para ver se ele exibe a mensagem\'','\'2022-8-12\''),(3,'\'Leonardo Felipe Salgado\'','\'leosalgado2004@gmail.com\'','\'Teste 3\'','\'2022-8-12\''),(4,'\'Leonardo Felipe Salgado\'','\'leosalgado2004@gmail.com\'','\'Teste 3\'','\'2022-8-12\''),(5,'\'Leonardo Felipe Salgado\'','\'leosalgado2004@gmail.com\'','\'Teste 3\'','\'2022-8-12\''),(6,'\'Leonardo Felipe Salgado\'','\'Leosalgado2004@gmail.com\'','\'Eu não sei oq enviar, que tal... bom dia? \'','\'2022-8-14\''),(7,'\'Leonardo Felipe Salgado\'','\'email@gmail.com\'','\'Minha mensagem é para dizer que essa página é muito boa\'','\'2022-8-14\''),(8,'\'Leonardo salgado\'','\'lalala@gmail.com\'','\'Eu gostei muito!\'','\'2022-8-14\'');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 19:55:30
