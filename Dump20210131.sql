CREATE DATABASE  IF NOT EXISTS `escola_aprender` /*Criação do banco de dados escola_aprender*/;
USE `escola_aprender`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: escola_aprender
-- ------------------------------------------------------
-- Server version	5.7.31


--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*Criação da tabela alunos`*/;
CREATE TABLE `alunos` (
  `IDaluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `pai` varchar(30) DEFAULT NULL,
  `mae` varchar(30) DEFAULT NULL,
  `Tutor` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDaluno`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João Batista','2002-04-12','340-559-890-90','M','98980-2345','José Ribeiro Batista','Maria Aparecida Gomes',NULL),(2,'Barbara Moreira','2003-06-10','550-210-780-59','F','34500-3456','Eduardo Moreira da Silva','Teresa Albuquerque da Silva',NULL),(3,'Felipe Carlos Ferreira','2001-10-06','450-980-220-49','M','28390-2349','Carlos Ferreira Rottes','Karina Nogueira Ferreira',NULL),(4,'Nathalia Farias Viena','2002-03-09','690-213-876-98','F','39480-4444','André Brandão Farias','Mariana Viena Silveira',NULL),(5,'Arthur Gonçalves Mattes','2000-06-10','500-230-980-20','M','45023-4567','Kauan Gonçalves Rios','Gabriela Gomes Mattes',NULL),(6,'Letícia Barros Bueno','2001-12-05','450-982-333-90','F','34502-5577','Marcos Barros Oliveira','Beatriz Souza Barros',NULL),(7,'Juliana Sanches Moraes','2003-10-09','609-204-111-69','F','23450-5679','Ricardo Moraes Silva','Luciana Viera Sanches',NULL),(8,'Vitor Dennis Gaiotto','2001-05-01','490-839-229-10','M','45602-2354','Gustavo Dennis Satto','Daniel Moreira Satto',NULL),(9,'André Nogueira Fernando','2000-07-03','560-980-222-98','M','29380-3902','Gislaine da Silva Fernando','Ana Silveira Fernando',NULL),(10,'Maria Eduarda Picon','2003-10-03','405-980-321-99','F','48290-3210','Pedro Moreira Picon','Leila Ferreira Picon',NULL);
/*Inserção dos dados na tabela alunos`*/;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*Criação da tabela disciplinas*/;
CREATE TABLE `disciplinas` (
  `IDmateria` int(11) NOT NULL AUTO_INCREMENT,
  `matéria` varchar(30) DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDmateria`),
  UNIQUE KEY `nome` (`matéria`),
  KEY `professor` (`professor`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*Inserção dos dados na tabela disciplina*/;
INSERT INTO `disciplinas` VALUES (1,'Matemática',80,5),(2,'Geografia',70,4),(3,'Língua Portuguesa',60,1),(4,'Biologia',80,9),(5,'Inglês',50,6),(6,'Artes',30,7),(7,'História',70,2),(8,'Sociologia',60,10),(9,'Filosofia',60,10),(10,'Literatura',70,3),(11,'Espanhol',50,6);;
UNLOCK TABLES;

--
-- Table structure for table `profs`
--

DROP TABLE IF EXISTS `profs`;
/*Criação da tabela profs*/;
CREATE TABLE `profs` (
  `IDprof` int(11) NOT NULL AUTO_INCREMENT,
  `professor` varchar(30) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IDprof`),
  UNIQUE KEY `nome` (`professor`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `profs`
--


INSERT INTO `profs` VALUES (1,'Marina Scarlett ','340-290-890-98','34566-2345','F',35),(2,'Milton Sitta','450-958-299-09','35666-3213','M',33),(3,'Bernado Laranjeira','550-930-443-20','56020-2341','M',40),(4,'Leandro Silveira','450-212-499-33','98980-2317','M',39),(5,'Lilian Cabral','555-950-332-44','56632-9840','F',35),(6,'José Ribeiro','560-293-444-12','34562-9999','M',30),(7,'Leiane Farias','452-489-999-23','45259-3829','F',29),(8,'Mario Junqueira','234-293-928-22','56003-4324','M',36),(9,'Otávio Fonseca','445-234-985-90','23454-3940','M',40),(10,'Maria Aparecida','239-421-938-98','23451-2323','F',34);
/* Inserção dos dados na tabela */;
UNLOCK TABLES;

--
-- Table structure for table `tutores`
--


/*Criação da tabela tutores`*/;
CREATE TABLE `tutores` (
  `IDTutor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `disciplina` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDTutor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Dumping data for table `tutores`
--

LOCK TABLES `tutores` WRITE;
/*!40000 ALTER TABLE `tutores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 15:14:19
