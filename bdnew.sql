-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB

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
-- Table structure for table `maladie`
--

DROP TABLE IF EXISTS `maladie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maladie` (
  `nom` varchar(100) NOT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maladie`
--

LOCK TABLES `maladie` WRITE;
/*!40000 ALTER TABLE `maladie` DISABLE KEYS */;
INSERT INTO `maladie` VALUES ('anémie ferriprive','L’anémie se caractérise par une diminution du nombre de globules rouges dans le sang ou de leur teneur en hémoglobine. Les principaux symptômes, lorsqu’il y en a, sont la fatigue, un teint pâle et un essoufflement plus prononcé à l’effort.\r\nL’anémie ferriprive survient en raison d’une carence en fer. Le fer se lie au pigment « hème » de l’hémoglobine qui apporte l’oxygène aux cellules du corps. L’oxygène est un élément essentiel aux cellules pour qu’elles puissent produire de l’énergie et accomplir leurs fonctions.'),('angine','L\'angine correspond à une infection au niveau de la gorge, et plus précisément au niveau des amygdales. Elle peut s\'étendre à l\'ensemble du pharynx. L\'angine est due soit à un virus - c\'est le cas le plus fréquent - soit à une bactérie et est caractérisée par un mal de gorge important.\r\nEn cas d\'angine, des démangeaisons et des douleurs peuvent se faire sentir au moment de la déglutition. Elle peut également rendre les amygdales rouges et gonflées et provoquer de la fièvre, des maux de tête, des difficultés pour parler, etc...'),('aphtes','Les aphtes sont de petits ulcères superficiels qui se forment le plus souvent sur les muqueuses à l’intérieur de la bouche : sur la face interne des joues, la langue, la face interne des lèvres, le palais ou les gencives. Des aphtes peuvent aussi apparaître sur les organes génitaux, mais rarement. Il sera ici uniquement question des aphtes dans la bouche.'),('bronchite aiguë','La bronchite se caractérise par une inflammation des bronches, les conduits qui mènent l\'air inspiré de la trachée aux poumons. L\'inflammation rend la respiration plus difficile, car les parois des bronches sont enflées et produisent une quantité importante de mucus. La bronchite s\'accompagne d\'une toux profonde.');
/*!40000 ALTER TABLE `maladie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maladie_possede_symptome`
--

DROP TABLE IF EXISTS `maladie_possede_symptome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maladie_possede_symptome` (
  `nomMaladie` varchar(100) DEFAULT NULL,
  `nomSymptome` varchar(100) DEFAULT NULL,
  KEY `nomMaladie_idx` (`nomMaladie`),
  KEY `nomSymptome_idx` (`nomSymptome`),
  CONSTRAINT `nomMaladie` FOREIGN KEY (`nomMaladie`) REFERENCES `maladie` (`nom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `nomSymptome` FOREIGN KEY (`nomSymptome`) REFERENCES `symptome` (`nomSymptome`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maladie_possede_symptome`
--

LOCK TABLES `maladie_possede_symptome` WRITE;
/*!40000 ALTER TABLE `maladie_possede_symptome` DISABLE KEYS */;
INSERT INTO `maladie_possede_symptome` VALUES ('bronchite aiguë','toux '),('bronchite aiguë','expectorations visqueuses de couleur claire, jaunâtre ou verdâtre'),('bronchite aiguë','compression des poumons'),('bronchite aiguë','malaise général'),('bronchite aiguë','souffle court'),('bronchite aiguë',' douleur à la poitrine'),('bronchite aiguë','compression des poumons'),('anémie ferriprive','fatigue anormale'),('anémie ferriprive','teint pâle'),('anémie ferriprive','souffle court'),('anémie ferriprive','essoufflement plus prononcé à l’effort'),('anémie ferriprive','diminution des performances intellectuelles'),('anémie ferriprive','malaise général'),('aphtes','douleur comparable à une sensation de brûlure'),('aphtes','petits ulcères à l’intérieur de la bouche'),('bronchite aiguë','maux de tete');
/*!40000 ALTER TABLE `maladie_possede_symptome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medecin` (
  `idmedecin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `motPasse` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `specialite` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `sexe` varchar(45) NOT NULL DEFAULT 'masculin',
  PRIMARY KEY (`idmedecin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medecin`
--

LOCK TABLES `medecin` WRITE;
/*!40000 ALTER TABLE `medecin` DISABLE KEYS */;
INSERT INTO `medecin` VALUES (2,'hakim1','123','BOUDJELIDA','hakim','Boulevard Mohamed Boudiaf Bloc D (Rèsidence Zaim, Blida','ophtalmologue',50,'025 21 59 05','masculin'),(3,'lechheb','123','lechheb','abd enour','blida','cardiologue',71,'0000000000','masculin'),(4,'Mohamed1','123','MOUHOUB','Mohamed ','Cité 168/1100 logements bâtiment 7 n°4 Ouled Yaich, Blida 09100','PneumoPhtisiologue ',51,' 0675 23 95 64','masculin'),(5,'riad1','123','Belatoui','riad','cite 488 logts bt 27 n° 07, Ouled Yaïch',' Psychiatre',NULL,'025 22 58 63','masculin'),(6,'nouri1','123','Nouri','Akila',' 31 Rue Khelifa Boukhalfa, Sidi M\'Hamed 16000','O.R.L.',30,' 021 73 16 79','feminin'),(7,'boudjemaa1','123','Boudjemaa','Abdelkader ','2 PLACE EL QUODS Hydra, Alger(16), AlgÃ©rie','Autre',46,'023 48 04 12','masculin'),(8,'boudjemaa1','123','Boudjemaa','Abdelkader ','2 PLACE EL QUODS Hydra, Alger(16), AlgÃ©rie','Autre',46,'023 48 04 12','masculin');
/*!40000 ALTER TABLE `medecin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicament` (
  `label` varchar(50) NOT NULL,
  `prix` double DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `effets` varchar(500) NOT NULL,
  `quantité` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicament`
--

LOCK TABLES `medicament` WRITE;
/*!40000 ALTER TABLE `medicament` DISABLE KEYS */;
INSERT INTO `medicament` VALUES ('CLAMOXYL 500 mg, gélule, boîte de 12',250,'pharm','CLAMOXYL est indiqué dans le traitement des infections suivantes chez l\'adulte et l\'enfant (voir rubriques Posologie et mode d\'administration, Mises en garde et précautions d\'emploi et Propriétés pharmacodynamiques) : Sinusite bactérienne aiguë,Otite moyenne aiguë,Angine/pharyngite documentée à streptocoque,Exacerbations aiguës de bronchites chroniques,Pneumonie communautaire ..ect',1),('clofenal 25mg enfant ',310,'pharm','remède a tout les maux',1),('DAFALGAN 500 mg, gélule, boîte de 16',250,'pharm','Traitement symptomatique des douleurs d\'intensité légère à modérée et/ou des états fébriles.',1),('doliprane',65,'pharm','soulager le mal de tete',1),('FORLAX 10 g, poudre pour solution buvable en sache',440,'pharm','Traitement symptomatique de la constipation chez l\'adulte et chez l\'enfant à partir de 8 ans.',1),('GAVISCON Suspension buvable flacon de 250 ml',420,'pharm','Traitement symptomatique du reflux gastro-oesophagien.',1),('L\'argile',100,'herbo','soulage la rage de dents',1),('L\'écorce de saule ',300,'herbo','contre les maux de tête',1),('La grande camomille',50,'herbo','contre les migraines',1),('La menthe poivrée',100,'herbo','finir avec le mal de tête , stimuler la digestion',1),('La valériane',210,'herbo','mieux dormir',1),('Le fenouil ',60,'herbo','lutter contre les troubles digestifs',1),('Le ginseng',300,'herbo','tonifier l\'organisme',1),('Le thé vert',120,'herbo','brûle-graisse naturel',1),('paracetamole 500mg',60,'pharm','soulager le mal de tete',1),('rince-bouche',350,'pharm','nettoyant des dents',1),('TAHOR 80 mg, comprimé pelliculé, boîte de 28',600,'pharm','TAHOR est indiqué en complément d\'un régime pour réduire les taux élevés de cholestérol total (Chol-T), de LDL-cholestérol (LDL-C), d\'apolipoprotéine B et de triglycérides chez les adultes, adolescents et enfants âgés de 10 ans ou plus présentant une hypercholestérolémie primaire incluant l\'hypercholestérolémie familiale (hétérozygote) ou les hyperlipidémies mixtes (correspondant aux types IIa et IIb de la classification de Fredrickson), lorsque la réponse à un régime ou à d\'autres traitements n',1),('VOLTARENE 100 mg, suppositoire, boîte de 10',210,'pharm','Elles procèdent de l\'activité anti-inflammatoire du diclofénac, de l\'importance des manifestations d\'intolérance auxquelles le médicament donne lieu et de sa place dans l\'éventail des produits anti-in',1);
/*!40000 ALTER TABLE `medicament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `idpatient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `sexe` varchar(45) DEFAULT 'masculin' COMMENT 'sexe="masculin" or\nsexe="feminin"',
  `dateNaissance` varchar(20) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `motPasse` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpatient`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'chahrat','djamel','alger,alger',23,'05 xx xx xx xx','masculin','01/01/1996','chahrat1','123'),(2,'bendjoudi','khalida','meftah,blida',22,'05 xx xx xx xx','feminin','01/01/1998','bendjoudi1','123'),(3,'bendali','haciba','blida,blida',21,'05 xx xx xx xx','feminin','01/01/1997','bendali2','123'),(4,'rezzoug','zakaria','douira,alger',23,'05 55 55 55 55','masculin','1997-01-01','rezzoug1','123');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_cherche_maladie`
--

DROP TABLE IF EXISTS `patient_cherche_maladie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_cherche_maladie` (
  `idpatient` int(11) NOT NULL,
  `nomMaladie` varchar(100) NOT NULL,
  PRIMARY KEY (`idpatient`,`nomMaladie`),
  KEY `nomMaladie` (`nomMaladie`),
  CONSTRAINT `patient_cherche_maladie_ibfk_1` FOREIGN KEY (`idpatient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `patient_cherche_maladie_ibfk_2` FOREIGN KEY (`nomMaladie`) REFERENCES `maladie` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_cherche_maladie`
--

LOCK TABLES `patient_cherche_maladie` WRITE;
/*!40000 ALTER TABLE `patient_cherche_maladie` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_cherche_maladie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rendez_vous`
--

DROP TABLE IF EXISTS `rendez_vous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rendez_vous` (
  `idrendez_vous` int(11) NOT NULL AUTO_INCREMENT,
  `idpatient` int(11) NOT NULL,
  `idmedecin` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  PRIMARY KEY (`idrendez_vous`),
  KEY `idpatient_idx` (`idpatient`),
  KEY `idmedecin` (`idmedecin`),
  CONSTRAINT `idpatient` FOREIGN KEY (`idpatient`) REFERENCES `patient` (`idpatient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rendez_vous_ibfk_1` FOREIGN KEY (`idpatient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `rendez_vous_ibfk_2` FOREIGN KEY (`idmedecin`) REFERENCES `medecin` (`idmedecin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rendez_vous`
--

LOCK TABLES `rendez_vous` WRITE;
/*!40000 ALTER TABLE `rendez_vous` DISABLE KEYS */;
/*!40000 ALTER TABLE `rendez_vous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptome`
--

DROP TABLE IF EXISTS `symptome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptome` (
  `nomSymptome` varchar(100) NOT NULL,
  PRIMARY KEY (`nomSymptome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptome`
--

LOCK TABLES `symptome` WRITE;
/*!40000 ALTER TABLE `symptome` DISABLE KEYS */;
INSERT INTO `symptome` VALUES (' douleur à la poitrine'),('amygdales enflées et rouges'),('compression des poumons'),('courbatures'),('dépôts blanchâtres ou jaunâtres sur les amygdales'),('difficultés à déglutir'),('diminution des performances intellectuelles'),('douleur comparable à une sensation de brûlure'),('essoufflement plus prononcé à l’effort'),('étourdissements'),('expectorations visqueuses de couleur claire, jaunâtre ou verdâtre'),('fatigue anormale'),('fièvre'),('frissons'),('ganglions au niveau de la gorge ou de la mâchoire'),('mains et les pieds froids'),('malaise général'),('mauvaise haleine'),('maux de gorge'),('maux de tete'),('maux de ventre'),('petits ulcères à l’intérieur de la bouche'),('pouls rapide'),('souffle court'),('teint pâle'),('toux '),('voix enrouée');
/*!40000 ALTER TABLE `symptome` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-17 12:00:12
