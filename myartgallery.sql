-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: myartgallery
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artist` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `phone_no` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (301,'ANDY WARHOL','ADR1','PHNO1'),(302,'MARIA LOBODA','ADR2','PHNO2'),(303,'CHARLES WHITE','ADR3','PHNO3'),(304,'SEBASTIO SALGADO','ADR4','PHNO4'),(305,'MASA LALU','ADR5','PHNO5'),(306,'MARTINE FRANCK','ADR6','PHNO6'),(307,'CAO FEI','ADR7','PHNO7'),(308,'QIU ZHIJIE','ADR8','PHNO8'),(309,'LILY VAN DER STROKKER','ADR9','PHNO9'),(310,'LEONARDO DA VINCI','ADR10','PHNO10'),(311,'WILHELM KUHNERT ','ADR11','PHNO11'),(312,'VAN GOGH','ADR12','PHNO12'),(313,'DOROTHEA TANNING','ADR13','PHNO13'),(314,'BRUCE NAUMANN','ADR14','PHNO14'),(315,'TOMMA ABTS','ADR15','PHNO15');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bought_by`
--

DROP TABLE IF EXISTS `bought_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bought_by` (
  `cr_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought_by`
--

LOCK TABLES `bought_by` WRITE;
/*!40000 ALTER TABLE `bought_by` DISABLE KEYS */;
INSERT INTO `bought_by` VALUES (501,1011),(502,1007),(503,1008),(504,1004),(505,1001),(506,1006),(507,1012),(508,1008),(509,1011),(510,1006),(511,1010),(512,1017),(513,1013),(514,1014),(515,1011),(516,1019),(517,1002),(518,1007),(519,1009),(520,1004),(521,1002),(522,1005),(523,1008),(524,1006),(525,1002),(526,1004),(527,1007),(528,1009),(529,1011),(530,1014),(531,1016),(532,1002),(533,1020),(534,1018),(535,1016),(536,1013),(537,1015),(538,1009),(539,1014),(540,1001),(541,1005),(542,1003),(543,1014),(544,1017),(545,1019),(546,1006),(547,1005),(548,1002),(549,1015),(550,1016),(551,1007),(552,1015),(553,1007),(554,1005),(555,1012),(556,1013),(557,1014),(558,1015),(559,1016),(560,1017);
/*!40000 ALTER TABLE `bought_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creates`
--

DROP TABLE IF EXISTS `creates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `creates` (
  `cr_id` int(11) NOT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creates`
--

LOCK TABLES `creates` WRITE;
/*!40000 ALTER TABLE `creates` DISABLE KEYS */;
INSERT INTO `creates` VALUES (501,301),(502,302),(503,303),(504,304),(505,305),(506,306),(507,307),(508,308),(509,305),(510,308),(511,304),(512,314),(513,315),(514,319),(515,311),(516,316),(517,316),(518,320),(519,319),(520,320),(521,303),(522,304),(523,307),(524,309),(525,311),(526,314),(527,315),(528,319),(529,309),(530,310),(531,311),(532,312),(533,302),(534,316),(535,318),(536,316),(537,317),(538,318),(539,319),(540,320),(541,301),(542,302),(543,303),(544,304),(545,305),(546,306),(547,307),(548,308),(549,309),(550,310),(551,311),(552,312),(553,313),(554,314),(555,315),(556,316),(557,317),(558,318),(559,319),(560,320);
/*!40000 ALTER TABLE `creates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exhibition` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(225) DEFAULT NULL,
  `location` varchar(225) DEFAULT NULL,
  `e_type` varchar(225) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (101,'Whitney Museum of American Art','NEW YORK','Auction','2018-11-12 00:00:00','2018-12-12 00:00:00'),(102,'SCHIRN Kunsthalle','FRANKFURT','Exhibition','2018-11-16 00:00:00','2019-01-18 00:00:00'),(103,'Bildmuseet, Umeå','UMEA','Gallery ','2018-03-16 00:00:00','2018-07-04 00:00:00'),(104,'Museum für Gestaltung Zürich','ZURICH','Museum','2018-06-16 00:00:00','2018-10-15 00:00:00'),(105,'Museum of Modern and Contemporary Art','JAKARTA','Center ','2018-02-17 00:00:00','2018-03-17 00:00:00'),(106,'Fondation Henri Cartier-Bresson','PARIS','Festival','2018-07-06 00:00:00','2018-08-27 00:00:00'),(107,'Kunsthistorisches Museum Wien','VIENNA','Artist Cooperative','2018-08-06 00:00:00','2018-10-22 00:00:00'),(108,'SCHIRN Kunsthalle','FRANKFURT','Artist in-Residence','2018-01-01 00:00:00','2018-02-02 00:00:00'),(109,'WILDERNESS','BEIJING','Artist-run Initiative ','2018-11-24 00:00:00','2018-11-25 00:00:00'),(110,'Ullens Center for Contemporary Art','AMSTERDAM','Auction','2018-04-27 00:00:00','2018-05-30 00:00:00'),(111,'Stedelijk','AMSTERDAM','Exhibition','2018-09-25 00:00:00','2018-10-01 00:00:00'),(112,'KING OF THE ANIMALS','FRANKFURT','Gallery ','2018-10-24 00:00:00','2018-11-21 00:00:00'),(113,'Galleria Borghese','ROME','Museum','2018-10-24 00:00:00','2019-01-04 00:00:00'),(114,'Musée de la Civilisation','MONTREAL','Center ','2018-05-21 00:00:00','2018-06-07 00:00:00'),(115,'The Museum of Modern Art, MoMA PS1','NEW YORK','Festival','2018-06-19 00:00:00','2018-06-20 00:00:00'),(116,'The Art Institute of Chicago','CHICAGO','Artist Cooperative','2018-08-17 00:00:00','2018-08-20 00:00:00'),(117,'Guggenheim Bilbao','BILBAO','Artist in-Residence','2018-09-17 00:00:00','2018-11-20 00:00:00'),(118,'Palais de Tokyo','TOKYO','Artist-run Initiative ','2018-12-16 00:00:00','2019-01-17 00:00:00'),(119,'Centre Pompidou','PARIS','Auction','2018-11-12 00:00:00','2019-02-28 00:00:00'),(120,'Philadelphia Museum of Art','PHILADELPHIA','Exhibition','2018-02-09 00:00:00','2018-03-13 00:00:00');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galleries` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(225) DEFAULT NULL,
  `g_url` varchar(225) DEFAULT NULL,
  `location` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (201,'FROM A TO B AND BACK AGAIN ','URL1','NEW YORK'),(202,'MARIA LOBODA','URL2','FRANKFURT'),(203,'ENTANGLE','URL3','UMEA'),(204,'ARTISTIC IMAGINATION','URL4','ZURICH'),(205,'GENESIS','URL5','JAKARTA'),(206,'ARAHMAIANI','URL6','PARIS'),(207,'MARTINE FRANCK','URL7','VIENNA'),(208,'SPITZMAUS MUMMY','URL8','FRANKFURT'),(209,'MAIN','URL9','BEIJING'),(210,'MAPPA MUNDI','URL10','AMSTERDAM'),(211,'FRIENDLY GOOD','URL11','AMSTERDAM'),(212,'WILHELM KUNHERT','URL12','FRANKFURT'),(213,'PICASSO: THE SCULPTURE','URL13','ROME'),(214,'MY 2000 YEAR OLD DOUBLE','URL14','MONTREAL'),(215,'DISAPPEARING ACTS','URL15','NEW YORK'),(216,'TOMMA ABTS','URL16','CHICAGO'),(217,'A RETROSPECTIVE','URL17','BILBAO'),(218,'ON AIR','URL18','TOKYO'),(219,'CUBISM','URL19','PARIS'),(220,'FABULOUS FASHION','URL20','PHILADELPHIA'),(221,'ALBERTINA','URL21','VIENNA'),(222,'PAINTINGS FOR THE FUTURE','URL22','NEW YORK'),(223,'THE ARTIST IS PRESENT ','URL23','SHANGHAI'),(224,' ANNIE ALBERS','URL24','LONDON'),(225,'EIN TAG AM MEIR','URL25','PARIS');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handicraft`
--

DROP TABLE IF EXISTS `handicraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `handicraft` (
  `h_id` int(11) NOT NULL,
  `h_name` varchar(225) DEFAULT NULL,
  `cr_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `h_type` varchar(25) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handicraft`
--

LOCK TABLES `handicraft` WRITE;
/*!40000 ALTER TABLE `handicraft` DISABLE KEYS */;
INSERT INTO `handicraft` VALUES (801,'WOORDEN COC',501,301,'PAPERWEIGHT',10000),(802,'WOODEN PHOTO FRAME HORN/BONE DECOR',502,302,'PHOTO FRAME',34000),(803,'BRASS HANDICRAFT BOX',503,303,'BOX',35000),(804,'WOODEN HANDICRAFT BOX',504,304,'BOX',12000),(805,'TREE OF LIFE ',505,305,'PHOTO FRAME',23000),(806,'BUDDHA',506,306,'SHOW PIECE SET',87000),(807,'BALLERINA',507,307,'SHOW PIECE SET',12000),(808,'THOUGHT',508,308,'SCULPTURE',14000),(809,'SERENDIPITY',509,305,'PHOTO FRAME',17000),(810,'MAGNIFICACO',510,308,'PHOTO FRAME',16000),(811,'UNDER THE UMBRELLA',511,304,'PAPERWEIGHT',19000),(812,'LA VIE EN ROSE',512,314,'PAPERWEIGHT',18000),(813,'JUKE BOX',513,315,'BOX',15500),(814,'TREASURE OF LIFE',514,319,'SHOW PIECE SET',16500),(815,'SATIN DESIGNS',515,311,'PHOTO FRAME',22000),(816,'HEARTITUDE',516,316,'SHOW PIECE SET',23000),(817,'INDIA KA KHAZANA',517,316,'BOX',23500),(818,'THE WARLI',518,320,'PHOTO FRAME',30000),(819,'HIM',519,319,'PAPERWEIGHT',27000),(820,'HIGHLANDS',520,320,'SHOW PIECE SET',10000);
/*!40000 ALTER TABLE `handicraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `have`
--

DROP TABLE IF EXISTS `have`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `have` (
  `a_id` int(11) DEFAULT NULL,
  `g_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `have`
--

LOCK TABLES `have` WRITE;
/*!40000 ALTER TABLE `have` DISABLE KEYS */;
INSERT INTO `have` VALUES (301,201),(302,202),(303,203),(304,204),(305,205),(306,206),(307,207),(308,208),(309,209),(310,210),(311,212),(312,211),(313,213),(314,214),(315,215),(304,216),(306,217),(308,218),(310,219),(311,220),(314,221),(315,222),(301,223),(303,224),(305,225);
/*!40000 ALTER TABLE `have` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_a`
--

DROP TABLE IF EXISTS `is_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `is_a` (
  `spec_id` int(11) NOT NULL,
  `spec_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_a`
--

LOCK TABLES `is_a` WRITE;
/*!40000 ALTER TABLE `is_a` DISABLE KEYS */;
INSERT INTO `is_a` VALUES (1701,'sculpture'),(1702,'sculpture'),(1703,'painting '),(1704,'handicraft'),(1705,'sculpture'),(1706,'handicraft'),(1707,'painting '),(1708,'handicraft'),(1709,'sculpture'),(1710,'painting '),(1711,'sculpture'),(1712,'handicraft'),(1713,'painting '),(1714,'painting '),(1715,'handicraft'),(1716,'sculpture'),(1717,'sculpture'),(1718,'handicraft'),(1719,'sculpture'),(1720,'painting ');
/*!40000 ALTER TABLE `is_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `u_type` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1101,1001,'client','abc@gmail.com','abc@123',987654321),(1102,1002,'artist','bcd@gmail.com','bcd@123',987654322),(1103,1003,'client','cde@gmail.com','cde@123',987654323),(1104,1004,'artist','def@gmail.com','def@123',987654324),(1105,1005,'client','efg@gmail.com','efg@123',987654325),(1106,1006,'artist','fgh@gmail.com','fgh@123',987654326),(1107,1007,'client','ghi@gmail.com','ghi@123',987654327),(1108,1008,'artist','hij@gmail.com','hij@123',987654328),(1109,1009,'client','ijk@gmail.com','ijk@123',987654329),(1110,1010,'artist','jkl@gmail.com','jkl@123',987654330),(1111,1011,'client','klm@gmail.com','klm@123',987654331),(1112,1012,'artist','lmn@gmail.com','lmn@123',987654332),(1113,1013,'client','mno@gmail.com','mno@123',987654333),(1114,1014,'artist','nop@gmail.com','nop@123',987654334),(1115,1015,'client','opq@gmail.com','opq@123',987654335),(1116,1016,'artist','pqr@gmail.com','pqr@123',987654336),(1117,1017,'client','qrs@gmail.com','qrs@123',987654337),(1118,1018,'artist','rst@gmail.com','rst@123',987654338),(1119,1019,'client','stu@gmail.com','stu@123',987654339),(1120,1020,'artist','tuv@gmail.com','tuv@123',987654340);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_in`
--

DROP TABLE IF EXISTS `logs_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logs_in` (
  `l_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_in`
--

LOCK TABLES `logs_in` WRITE;
/*!40000 ALTER TABLE `logs_in` DISABLE KEYS */;
INSERT INTO `logs_in` VALUES (1101,1001),(1102,1002),(1103,1003),(1104,1004),(1105,1005),(1106,1006),(1107,1007),(1108,1008),(1109,1009),(1110,1010),(1111,1011),(1112,1012),(1113,1013),(1114,1014),(1115,1015),(1116,1016),(1117,1017),(1118,1018),(1119,1019),(1120,1020);
/*!40000 ALTER TABLE `logs_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organize`
--

DROP TABLE IF EXISTS `organize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organize` (
  `e_id` int(11) NOT NULL,
  `g_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organize`
--

LOCK TABLES `organize` WRITE;
/*!40000 ALTER TABLE `organize` DISABLE KEYS */;
INSERT INTO `organize` VALUES (101,201),(102,202),(103,203),(104,204),(105,205),(106,206),(107,207),(108,208),(109,209),(110,210),(111,211),(112,212),(113,213),(114,214),(115,215),(116,216),(117,217),(118,218),(119,219),(120,220),(107,221),(101,222),(109,223),(118,224),(106,225);
/*!40000 ALTER TABLE `organize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `painting` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(225) DEFAULT NULL,
  `cr_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `p_type` varchar(25) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES (601,'Allegory',541,301,'Oil on copper',10000),(602,'Bacchus, Ceres and Cupid',542,302,'Oil on canvas',14000),(603,'Joking Couple',543,303,'Copperplate',15000),(604,'Portrait of Emperor Rudolf II',544,304,'Oil on canvas',12300),(605,'Self-Portrait with a Glass of Wine',545,305,'Oil on canvas',16500),(606,'Deer beside a Lake',546,306,'Oil on canvas',155000),(607,'The Rose Garden',547,307,'Oil on canvas',14700),(608,'The Archangel Michael',548,308,'Wood',19900),(609,'Albarello',549,309,'Maiolica',19900),(610,'Ceramic Floor',550,310,'Ceramics',12200),(611,'Ceramic Floor',551,311,'Ceramics',173000),(612,'The Flood',552,312,'Ceramic mural composition',40000),(613,'Chimney breast',553,313,'Marble',16500),(614,'Chimney breast',554,314,'Marble',24500),(615,'Stag Hunt',555,315,'Oil on canvas',35000),(616,'Orpheus and Eurydice',556,316,'Oil on canvas',24600),(617,'The Rape of Proserpine',557,317,'Oil on canvas',15620),(618,'The Continence of Scipio',558,318,'Oil on canvas',4590),(619,'Landscape at Castiglioncello',559,319,'Oil on panel',15700),(620,'Country Road with Cypresses',560,320,'Oil on canvas',6400);
/*!40000 ALTER TABLE `painting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participate`
--

DROP TABLE IF EXISTS `participate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `participate` (
  `e_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participate`
--

LOCK TABLES `participate` WRITE;
/*!40000 ALTER TABLE `participate` DISABLE KEYS */;
INSERT INTO `participate` VALUES (101,301),(102,302),(103,303),(104,304),(105,305),(106,306),(107,307),(108,308),(109,309),(110,310),(111,311),(112,312),(113,313),(114,314),(115,315),(116,304),(117,306),(118,308),(119,310),(120,311);
/*!40000 ALTER TABLE `participate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `py_id` int(11) NOT NULL,
  `py_mode` varchar(225) DEFAULT NULL,
  `cr_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`py_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1201,'Transfer ',504,1001,12000),(1202,'Debit',505,1002,23000),(1203,'Credit ',521,1003,120000),(1204,'Cash',522,1004,132000),(1205,'Transfer ',542,1005,14000),(1206,'Debit',503,1006,35000),(1207,'Credit ',506,1007,87000),(1208,'Cash',511,1008,19000),(1209,'Transfer ',518,1009,30000),(1210,'Debit',528,1010,167000),(1211,'Credit ',507,1011,12000),(1212,'Cash',509,1012,17000),(1213,'Transfer ',513,1013,15500),(1214,'Debit',514,1014,16500),(1215,'Credit ',516,1015,23000),(1216,'Cash',533,1016,155000),(1217,'Transfer ',534,1017,165000),(1218,'Debit',558,1018,4590),(1219,'Credit ',559,1019,15700),(1220,'Cash',560,1020,6400);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pays` (
  `py_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` VALUES (1201,1001),(1202,1002),(1203,1003),(1204,1004),(1205,1005),(1206,1006),(1207,1007),(1208,1008),(1209,1009),(1210,1010),(1211,1011),(1212,1012),(1213,1013),(1214,1014),(1215,1015),(1216,1016),(1217,1017),(1218,1018),(1219,1019),(1220,1020);
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sculpture`
--

DROP TABLE IF EXISTS `sculpture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sculpture` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(225) DEFAULT NULL,
  `cr_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `s_type` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sculpture`
--

LOCK TABLES `sculpture` WRITE;
/*!40000 ALTER TABLE `sculpture` DISABLE KEYS */;
INSERT INTO `sculpture` VALUES (701,'LOREN MADSEN',521,303,120000,'DATA SCULPTURE'),(702,'MOUNT FEAR',522,304,132000,'KRELL SCULPTURE'),(703,'WORRY',523,307,100000,'CRIME SCULPTURE'),(704,'NATHALIE MEIBACH',524,309,150000,'WOVEN SCULPTURE'),(705,'EXPLOSION',525,311,130000,'SOUND SCULPTURE'),(706,'ANDREAS FISSCHER',526,314,140000,'DATA SCULPTURE'),(707,'BRIAN SIEMEN',527,315,123000,'DATA SCULPTURE'),(708,'LOOK',528,319,167000,'KRELL SCULPTURE'),(709,'SMILES',529,309,154000,'WOVEN SCULPTURE'),(710,'AWAY',530,310,120000,'KRELL SCULPTURE'),(711,'HENREICH ',531,311,130000,'WOVEN SCULPTURE'),(712,'CINDERELLA',532,312,150000,'DATA SCULPTURE'),(713,'CHAOS',533,302,155000,'DATA SCULPTURE'),(714,'SEE',534,316,165000,'KRELL SCULPTURE'),(715,'SHINE',535,318,172000,'KRELL SCULPTURE'),(716,'SOUND OF THE POEM',536,316,163000,'DATA SCULPTURE'),(717,'MOUNT DREAD',537,317,128000,'CRIME SCULPTURE'),(718,'SHIMMER',538,318,139000,'DATA SCULPTURE'),(719,'GLIMMER',539,319,124000,'KRELL SCULPTURE'),(720,'NINE',540,320,136000,'CRIME SCULPTURE');
/*!40000 ALTER TABLE `sculpture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(225) DEFAULT NULL,
  `phone_no` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1001,'UNAME1','987654321'),(1002,'UNAME2','987654322'),(1003,'UNAME3','987654323'),(1004,'UNAME4','987654324'),(1005,'UNAME5','987654325'),(1006,'UNAME6','987654326'),(1007,'UNAME7','987654327'),(1008,'UNAME8','987654328'),(1009,'UNAME9','987654329'),(1010,'UNAME10','987654330'),(1011,'UNAME11','987654331'),(1012,'UNAME12','987654332'),(1013,'UNAME13','987654333'),(1014,'UNAME14','987654334'),(1015,'UNAME15','987654335'),(1016,'UNAME16','987654336'),(1017,'UNAME17','987654337'),(1018,'UNAME18','987654338'),(1019,'UNAME19','987654339'),(1020,'UNAME20','987654340');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visits` (
  `e_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (101,1001),(103,1002),(106,1003),(108,1004),(102,1005),(102,1006),(108,1007),(109,1008),(109,1009),(110,1010),(110,1011),(111,1012),(102,1013),(105,1014),(108,1015),(106,1016),(120,1017),(118,1018),(119,1019),(120,1020);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 21:15:54
