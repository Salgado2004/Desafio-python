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
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idComida` int NOT NULL,
  `ingredientes` longtext NOT NULL,
  `modoPreparo` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
INSERT INTO `receitas` VALUES (1,'Cookies',1,'Farinha de trigo, 1 e 3/4 de xícara; Açúcar cristal, 3/4 de xícara; Açúcar mascavo, 1/2 xícara; Margarina, 125 g; Ovos, 1; Essência de baunilha, 2 colheres (chá); Chocolate, 200 g; Fermento, 1 colher (chá)','Em uma vasilha grande misture a margarina, os açúcares e a essência de baunilha até ficar uma mistura homogênea. Adicione o ovo e misture novamente. Vá adicionando a farinha de trigo aos poucos. Por fim, adicione o fermento e o chocolate e misture bem. Faça bolinhas com a massa e as coloque em uma forma forrada com papel manteiga ou papel alumínio (deixando espaço para não grudarem um no outro) e leve ao forno pré-aquecido a 180ºC por mais ou menos 30 minutos'),(2,'Waffles',2,'Farinha de trigo, 2 xícaras; Açúcar, 2 colheres (sopa); Sal, 1/2 colher (chá); Fermento, 2 colheres; Ovos, 3; Amido de milho, 2 colheres (sopa); Manteiga derretida, 4 colheres (sopa); Leite, 1 e 3/4 de xicara; Essência de baunilha, 1 colher (sopa)','Peneire em um recipiente a farinha de trigo, o açúcar, o amido, o fermento, e o sal e reserve. Em outro recipiente misture os ovos batidos com o leite, a manteiga e a essência de baunilha. Despeje sobre a mistura de farinha e incorpore os ingredientes. Aqueça o aparelho para Waffles. Coloque uma concha rasa de massa e espalhe.'),(3,'Bolinho de chuva',3,'Açúcar refinado, 1 xícara; Ovos, 3; Óleo, 3 colheres (sopa); Vinagre,  3 colheres (sopa); Fermento, 1 colher (chá); Farinha de trigo, 4 xícaras; Recheio à escolha (chocolate/goiabada/doce de leite), a gosto; Açúcar e canela para cobrir, a gosto ','Em um recipiente grande, misture o açúcar, os ovos, o óleo e o vinagre. Depois, adicione o trigo e misture até a massa ficar em ponto de enrolar. Coloque o fermento. Corte o recheio em cubinhos pequenos. Com a massa, faça bolinhas do tamanho de brigadeiros e coloque os cubinhos do recheio dentro de cada uma. Certifique-se que não há rachaduras nas bolinhas, para não abram na hora de fritar. Aqueça o óleo em uma frigideira média. Frite os bolinhos em fogo médio até que fiquem dourados. Para finalizar, passe os bolinhos na mistura de açúcar e canela e sirva-os.'),(4,'Torta de danoninho',4,'Bolacha maizena, 1 pacote; Manteiga, 100 g; Creme de leite, 3 latas; Iogurte natural, 1 pote; Leite condensado, 1 lata; Suco em pó sabor morango, 1/2 pacote; Chocolate branco, 100g','Bata uma parte da bolacha no liquidificador até obter uma farofa fina. Coloque esta farofa em uma tigela, junte a manteiga e misture até obter uma massa homogênea, reserve. Coloque o resto das bolachas em toda lateral de uma forma de aro removível (26 cm de diâmetro). Forre o fundo com a massa e leve ao forno pré-aquecido a 180ºC por 20 minutos. Num liquidificador, misture 2 latas do creme de leite, o leite condensado, o iogurte e o suco em pó e reserve. Espere a massa esfriar e despeje a mistura na forma. Coloque a última lata de creme de leite em um recipiente refratário e leve ao banho-maria, mexendo sempre até que a água ferva. Desligue o fogo e misture o chocolate picado, mexendo até formar um creme homogêneo. Espere esfriar, cubra a superfície da torta e sirva.'),(5,'Torta Alemã',5,'Bolacha maizena, 1 pacote; Manteiga, 100 g; Creme de leite, 1 lata; Açúcar, 3 colheres (sopa); Sorvete de creme, 500ml; Chocolate meio amargo, 100g','Bata uma parte da bolacha no liquidificador até obter uma farofa fina. Coloque esta farofa em uma tigela, junte a manteiga e misture até obter uma massa homogênea, reserve. Coloque o resto das bolachas em toda lateral de uma forma de aro removível (26 cm de diâmetro). Forre o fundo com a massa e reserve. Bata metade do creme de leite com o açúcar e o sorvete na batedeira e coloque o recheio sobre o fundo de massa reservado. Cubra com papel alumínio e leve ao freezer por cerca de 12 horas. Coloque a outra metade do creme de leite em um recipiente refratário e leve ao banho-maria, mexendo sempre até que a água ferva. Desligue o fogo e misture o chocolate picado, mexendo até formar um creme homogêneo. Espere esfriar, cubra a superfície da torta e sirva.'),(6,'Fricassê de frango',6,'Peito de frango cozido e desfiado, 500 g; Caldo do cozimento do frango, 1 xícara; Cebola picada, 1/2; Tomate picado, 1; Milho, 1 lata; Requeijão, 4 colheres (sopa); Creme de leite, 1 lata; Temperos, a gosto; Mussarela ralada, 200 g; Batata palha, a gosto;','Em uma panela grande, refogue a cebola e o tomate com um fio de óleo. Depois acrescente o frango cozido e desfiado e misture. Tempere à gosto. Em um liquidificador bata metade da lata de milho, o creme de leite, o requeijão e a água em que o frango foi cozido. Depois de bater, misture com o frango e o resto do milho. Despeje tudo em um refratário de vidro e espalhe a mussarela ralada por cima. Leve ao forno por alguns minutos para gratinar. Retire o refratário do forno com cuidado e coloque a batata palha para finalizar.'),(7,'Nega Maluca',7,'Farinha de trigo, 2 xícaras; Açúcar, 1 xícara; Chocolate em pó, 1 xícara; Fermento em pó, 4 colheres (chá); Ovos, 3; Óleo, 1 xícara; Água, 1 xícara; Leite condensado, 1 lata; Margarina, 1 colher (sopa); Nescau, 3 colheres (sopa);','Em uma tigela misture todos os ingredientes secos (trigo, açúcar, chocolate em pó e fermento). Depois, adicione os ovos, o óleo e aos poucos a água, misturando bem até formar uma massa homogênea; Coloque a massa em uma forma untada com margarina e trigo. Asse em forno pré-aquecido a 180ºC, por mais ou menos 35 minutos. '),(8,'\'Batata salteada com bacon\'',8,'\'Batata inglesa,4;Manteiga,1 colher (sopa);Óleo,2 colheres (sopa);Mussarela ralada,100 g;Bacon,100 g.;\'','\'Corte as batatas em cubo. Coloque em uma panela e cubra com água, adicione uma pitada de sal e deixe ferver. Quando levantar fervura conte 4 minutos e desligue o fogo. Escorra toda a água. Em uma frigideira adicione a manteiga e o óleo, frite o bacon e quando estiver quase pronto jogue todas as batatas. Deixe dourar bem de cada lado e vá mexendo. Quando estiver bem dourada adicione o queijo por cima. Tampe, espere o queijo derreter. \''),(9,'\'Donuts\'',9,'\'trigo,4 xícaras;açúcar cristal,3 colheres (sopa);água,250 ml;ovos,2;sal,1 colher (chá);\'','\'Coloque o açúcar e o fermento em um recipiente. Misture bem. Acrescente a margarina, o sal e os ovos. Misture bem. Acrescente, aos poucos, a farinha e a água, alternando entre um e outro. Sove a massa até que ela esteja homogênea e lisa, em grudar. Em seguida, abra a massa em uma superfície lisa e enfarinhada e deixe-a bem espalhada, com a ajuda de um rolo. Ela deve ter a espessura de cerca de 1 centímetro e meio. Use um cortador redondo para pressionar a massa, criando formatos de círculo. Use uma forma circular ou cortador menor para fazer o “furinho” que fica no meio da rosca (podem ser copos de tamanhos diferentes). Reserve as rosquinhas em uma forma enfarinhada. Cubra e deixe descansar por 20 minutos. Em seguida, frite as rosquinhas em óleo morno até que fiquem douradas por fora. O tempo para cada lado é de 40 segundos a 1 minuto. Retire o excesso com uma escumadeira e deixe escorrer em papel toalha. Reserve as roscas fritas e, depois de esfriar completamente, é hora de adicionar a cobertura. Quebre o chocolate em pequenos pedaços e derreta em banho maria. Banhe a superfície do donut e aplique por cima os confeitos. Deixe na geladeira por alguns minutos até endurecer. Lembrando que você pode optar por derreter chocolate branco, ao leite, ou o que for de sua preferência para fazer o recheio. \''),(10,'\'Alfajor \'',10,'\'Biscoitos maria,1 pacote;Doce de leite,1 lata;Chocolate meio amargo,100 g ;,;,;\'','\'Pegue os biscoitos do pacote em pares e recheie com doce de leite, reserve. Em banho maria, derreta o chocolate e mergulhe os biscoitos nele. Leve ao refrigerador por 2 horas. \'');
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 19:55:31
