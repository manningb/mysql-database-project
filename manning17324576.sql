-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: manning17324576
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'This is the unique identifier of the address. To be used in the candidates and hospitals tables.',
  `address_l1` varchar(120) NOT NULL COMMENT 'This is the first line of the address.',
  `address_l2` varchar(120) DEFAULT NULL COMMENT 'This is the second line of the address.',
  `address_l3` varchar(120) DEFAULT NULL COMMENT 'This is the third line of the address.',
  `county_province` varchar(120) NOT NULL COMMENT 'This is the county/province.',
  `country` varchar(120) NOT NULL DEFAULT 'Ireland' COMMENT 'This is the country of the address.',
  `eircode` varchar(16) DEFAULT NULL COMMENT 'This is the eircode/postcode for foregin countries of the address.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table stores address information relating to candidates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'4 Scofield Court','','','Dublin','Ireland','347639'),(2,'46 Jenna Park','','','Dublin','Ireland','354395'),(3,'5595 Surrey Street','','','Dublin','Ireland',''),(4,'4 Dixon Lane','','','Dublin','Ireland',''),(5,'54435 Colorado Crossing','','','Dublin','Ireland',''),(6,'21143 Orin Court','','','Dublin','Ireland','2314'),(7,'23 Roth Trail','','','Dublin','Ireland',''),(8,'1 Melody Place','','','Dublin','Ireland',''),(9,'87627 Del Sol Street','','','Dublin','Ireland','33911'),(10,'85696 Ridgeview Trail','','','Dublin','Ireland','1916'),(11,'85 Graedel Junction','','','Dublin','Ireland',''),(12,'735 Scott Lane','','','Dublin','Ireland',''),(13,'5172 Hollow Ridge Junction','','','Dublin','Ireland','4430'),(14,'73 Sugar Terrace','','','Dublin','Ireland',''),(15,'22 Green Place','','','Dublin','Ireland','125364'),(16,'9867 Haas Point','','','Dublin','Ireland',''),(17,'623 Golf View Drive','','','Dublin','Ireland','6344'),(18,'67 Main Alley','','','Dublin','Ireland',''),(19,'6147 Larry Road','','','Dublin','Ireland','4803'),(20,'65 Eastwood Court','','','Dublin','Ireland','B4V'),(21,'6 Ronald Regan Center','','','Dublin','Ireland','783 91'),(22,'48785 Melby Park','','','Dublin','Ireland',''),(23,'04948 Bluestem Plaza','','','Dublin','Ireland',''),(24,'72223 Homewood Park','','','Dublin','Ireland',''),(25,'88753 Lillian Plaza','','','Dublin','Ireland',''),(26,'3 Jenna Alley','','','Dublin','Ireland','V9A'),(27,'04080 Ryan Road','','','Dublin','Ireland','1752'),(28,'2714 Lakewood Avenue','','','Dublin','Ireland','6129'),(29,'22720 Scofield Road','','','Dublin','Ireland',''),(30,'515 Scott Pass','','','Dublin','Ireland','659518'),(31,'316 Crescent Oaks Junction','','','Dublin','Ireland',''),(32,'7 Eagle Crest Parkway','','','Dublin','Ireland','8604'),(33,'250 Gateway Center','','','Dublin','Ireland','B4V'),(34,'265 Maryland Crossing','','','Dublin','Ireland',''),(35,'455 Bunker Hill Place','','','Dublin','Ireland',''),(36,'51 Lakeland Street','','','Dublin','Ireland',''),(37,'625 Ludington Circle','','','Dublin','Ireland',''),(38,'24851 Mayfield Junction','','','Dublin','Ireland','456143'),(39,'09111 Saint Paul Center','','','Dublin','Ireland','4023'),(40,'961 Warrior Center','','','Dublin','Ireland',''),(41,'00 Messerschmidt Park','','','Dublin','Ireland',''),(42,'68 Manitowish Road','','','Dublin','Ireland',''),(43,'3 Elgar Trail','','','Dublin','Ireland',''),(44,'433 Texas Center','','','Dublin','Ireland',''),(45,'8631 Forest Run Lane','','','Dublin','Ireland','652577'),(46,'672 Bay Plaza','','','Dublin','Ireland','417 43'),(47,'4200 Claremont Court','','','Dublin','Ireland','1433'),(48,'88 Kensington Crossing','','','Dublin','Ireland','7409'),(49,'78757 Mayer Drive','','','Dublin','Ireland',''),(50,'1558 Crescent Oaks Plaza','','','Dublin','Ireland','531 93'),(51,'0264 Fordem Junction','','','Dublin','Ireland','39930'),(52,'26 Oakridge Circle','','','Dublin','Ireland','6844'),(53,'4928 Jackson Junction','','','Dublin','Ireland',''),(54,'012 Welch Alley','','','Dublin','Ireland','89-506'),(66,'Dublin','','','Dublin','Ireland','045jrfds'),(67,'Grove Ave','','','Dublin','Ireland',''),(68,'Blackrock','','','Dublin','Ireland',''),(69,'Belfield','','','Dublin','Ireland',''),(70,'Rathmines','','','Dublin','Ireland',''),(71,'Rathgar','','','Dublin','Ireland',''),(72,'Rathdown','','','Dublin','Ireland',''),(73,'Kilkenny','','','Kilkenny','',''),(74,'Dublin','','','Dublin','',''),(75,'Meath','','','Meath','',''),(76,'Louth','','','Louth','',''),(77,'Tipperary',NULL,NULL,'Tipperary','Ireland',NULL),(78,'Waterford','','','Waterford','','');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidate_id` int NOT NULL COMMENT 'ID of the candidate',
  `skill_id` int NOT NULL COMMENT 'ID of the skill the candidate has',
  PRIMARY KEY (`candidate_id`,`skill_id`),
  KEY `skills_id_cand_idx` (`skill_id`),
  CONSTRAINT `link_cand_with_skill` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `link_skill_with_cand` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table links a candidate with their skills.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1,1),(7,1),(16,1),(22,1),(31,1),(37,1),(44,1),(2,2),(8,2),(17,2),(23,2),(32,2),(38,2),(3,3),(9,3),(18,3),(24,3),(33,3),(39,3),(4,4),(10,4),(19,4),(25,4),(34,4),(5,5),(11,5),(20,5),(26,5),(35,5),(6,6),(12,6),(21,6),(27,6),(36,6),(7,7),(13,7),(22,7),(28,7),(37,7),(8,8),(14,8),(23,8),(29,8),(38,8),(9,9),(15,9),(24,9),(30,9),(39,9),(1,10),(10,10),(16,10),(25,10),(31,10),(2,11),(11,11),(17,11),(26,11),(32,11),(3,12),(12,12),(18,12),(27,12),(33,12),(4,13),(13,13),(19,13),(28,13),(34,13),(5,14),(14,14),(20,14),(29,14),(35,14),(6,15),(15,15),(21,15),(30,15),(36,15);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Identifier of Candidate',
  `pid` int NOT NULL COMMENT 'This relates to the position the candidate is currently applying for.',
  `first` varchar(45) NOT NULL COMMENT 'First Name of Candidate',
  `last` varchar(45) NOT NULL COMMENT 'Last Name of Candidate',
  `tel` varchar(45) NOT NULL COMMENT 'Telephone Number of Candidate',
  `email` varchar(320) NOT NULL COMMENT 'Email address of the candidate',
  `aid` int DEFAULT NULL COMMENT 'ID of the address of the candidate',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `address_candidate_idx` (`aid`),
  KEY `link_pos_with_candidates_idx` (`pid`),
  CONSTRAINT `link_cand_with_address` FOREIGN KEY (`aid`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `link_pos_with_cand` FOREIGN KEY (`pid`) REFERENCES `positions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table stores information relating to candidates that have applied for positions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,1,'Dorise','de Clerk','539422271','kmanhood0@mysql.com',1),(2,1,'Francklyn','Briscow','(021)4504339','vketton1@constantcontact.com',2),(3,1,'Janenna','Moutray Read','(056)8833111','amcfadzean2@joomla.org',3),(4,3,'Kirby','Jandac','(01)8439360','cgooke3@flavors.me',4),(5,4,'Cahra','Carefull','(023)53924','dstoade4@discuz.net',5),(6,5,'Haydon','Bartlomiej','(01)2851672','rboame5@g.co',6),(7,7,'Gerome','Garman','(052)70876','cmaskall6@sourceforge.net',7),(8,8,'Jany','Checklin','(01)6280393','gdongles7@mayoclinic.com',8),(9,9,'Gilbert','Lambotin','(098)27844','jlosebie8@vinaora.com',9),(10,10,'Flori','Clarke-Williams','(01)2867662','ngirod9@github.com',10),(11,11,'Burtie','Locarno','(047)72853','melfleeta@wisc.edu',11),(12,12,'Dael','Harrad','(071)9855391','deldonb@omniture.com',12),(13,13,'Caesar','Creffield','(01)2861933','dmcmanamenc@deviantart.com',13),(14,14,'Maury','MacEllen','876391956','bstangroomd@devhub.com',14),(15,15,'Ty','Sline','(087)1609011','jwildore@businesswire.com',15),(16,16,'Briano','Fraser','6976263','lchilderleyf@arstechnica.com',16),(17,17,'Marlene','Manilow','(045)897328','wandreacciog@stumbleupon.com',17),(18,18,'Ivory','Apfelmann','667103902','aeldersh@angelfire.com',18),(19,19,'Judas','Meadley','61472337','dkippingi@pen.io',19),(20,20,'Reinold','Seakes','667141844','aalsinaj@gizmodo.com',20),(21,1,'Shaylah','Esberger','659051076','zcarnalank@economist.com',21),(22,2,'Winnie','Stallion','598631434','dhurchel@engadget.com',22),(23,3,'Lindy','Luciani','12829589','afarloem@ow.ly',23),(24,4,'Florri','Adamowitz','12869484','dpetchn@vkontakte.ru',24),(25,5,'Deck','Brigham','51291181','hruslingo@hao123.com',25),(26,6,'Rita','Habbes','(021)4316511','khabberjamp@biglobe.ne.jp',26),(27,7,'Von','Livens','(041)9842240','sjennensq@cmu.edu',27),(28,8,'Lemar','O\' Concannon','91768891','dmorsomr@woothemes.com',28),(29,9,'Cheryl','Liffey','656820077','vcominellos@sogou.com',29),(30,10,'Gaston','Fever','04886763771()02886763771()','nsedgmondt@abc.net.au',30),(31,11,'Marnia','Duffy','1850240240','derdelyu@marketwatch.com',31),(32,12,'Haslett','MacAnespie','539140388','passadv@uiuc.edu',32),(33,13,'Noble','Spileman','(021)4292673','nbonnerw@blinklist.com',33),(34,14,'Hanny','Chatainier','04828276633()02828276633()','calpex@shareasale.com',34),(35,15,'Jenna','Statefield','(0502)22415','cpiattoy@sciencedaily.com',35),(36,16,'Kendre','Kubas','51875307','szornz@amazon.de',36),(37,17,'Lillian','Gurner','6383282','pshillito10@istockphoto.com',37),(38,18,'Corbet','Simner','(045)527421','hcrudge11@goo.ne.jp',38),(39,19,'John','Frayne','653436645','tcopner12@g.co',39),(40,20,'brian','manning','65464746','test@email.com',40),(41,1,'john','frayne','5432','john@gmail.com',68),(42,2,'James','MacDonald','6546345','james@gmail.com',69),(43,3,'John','Murphy','0977566','johnn@gmail.com',71),(44,1,'Brian','Mannion','8954307','email@gmail.com',73),(45,2,'Bryan','Minnion','54893','brian@minnion.com',74),(46,1,'John','MacEvoy','5328905','john@mc.com',78);
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Identifier for Hospital',
  `name` varchar(45) NOT NULL COMMENT 'Name of Hospital',
  `tel` varchar(45) NOT NULL COMMENT 'Phone Number of Hospital',
  `aid` int DEFAULT NULL COMMENT 'ID of the address of the hospital',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `hospitals_addresses_idx` (`aid`),
  CONSTRAINT `link_hospital_with_addressd` FOREIGN KEY (`aid`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table stores information relating to hospitals';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Midland Regional Hospital Portlaoise','(01)8438333',40),(2,'Midland Regional Hospital Tullamore','018400263',41),(3,'St James\'s Hospital Dublin','014587637',42),(4,'Naas General Hospital','(01)8455827',43),(5,'Cavan General Hospital','0238844952',45),(6,'Louth County Hospital Dundalk','0449223602',77),(7,'Monaghan Hospital','0949021849',46),(8,'Our Lady of Lourdes Hospital Drogheda','(021)4875530',47),(9,'Connolly Hospital Dublin','018536300',48),(10,'Beaumont Hospital','014540299',49),(11,'St Luke\'s General Hospital Kilkenny','02761001',50),(12,'Wexford General Hospital','(01)6906550',51),(13,'Our Lady\'s Hospital Navan','0238829982',52),(14,'Midland Regional Hospital Mullingar','0214774644',53),(15,'St Columcille\'s Hospital','0949388209',54),(39,'Hosptial','6493',70),(40,'Test Hospital','asdfsda',72),(41,'Meath County Hospital','5438983452',75),(42,'Louth County Hospital','57348905',76);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of the interview',
  `cid` int NOT NULL COMMENT 'This is the id of the candidate',
  `pid` int NOT NULL COMMENT 'This is the id of the position the candidate applied for',
  `interview_date` date NOT NULL COMMENT 'This represents the date that the interview will take place.',
  `interview_time` time NOT NULL COMMENT 'This represents the time of the interview on the date above.',
  `interview_location` varchar(80) DEFAULT NULL COMMENT 'This represents where the interview will take place.',
  `notes` varchar(400) DEFAULT NULL COMMENT 'This represents any notes that the recruiters have after the interview that should be stored for future reference.',
  `accepted_status` tinyint NOT NULL DEFAULT '0' COMMENT 'This represents whether a candidate has accepted a role. 0 if they have not been offered the role(default), 1 if they have been offered the role but have not accepted it and 2 if they have accepted the role.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `positions_cand_idx` (`pid`),
  KEY `candidate_app_idx` (`cid`),
  CONSTRAINT `link_candidate_with_interview` FOREIGN KEY (`cid`) REFERENCES `candidates` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `link_position_with_interview` FOREIGN KEY (`pid`) REFERENCES `positions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table stores information linking a candidate to a specific position. This allows one candidate to apply for many different positions. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (1,1,1,'2020-11-01','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(2,1,1,'2020-11-04','15:00:00','RM1',NULL,0),(3,2,1,'2020-11-01','15:00:00','RM1',NULL,0),(4,2,1,'2020-11-04','15:00:00','RM1',NULL,0),(5,3,1,'2020-11-07','15:00:00','RM1',NULL,0),(6,3,1,'2020-11-11','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',1),(7,4,3,'2020-11-03','15:00:00','RM1',NULL,0),(8,4,3,'2020-11-04','15:00:00','RM1',NULL,1),(9,5,4,'2020-11-03','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(10,5,4,'2020-11-05','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',2),(11,6,5,'2020-11-03','15:00:00','RM1',NULL,0),(12,6,5,'2020-11-05','15:00:00','RM1',NULL,1),(13,7,7,'2020-11-05','15:00:00','RM1',NULL,0),(14,8,8,'2020-11-05','15:00:00','RM1',NULL,0),(15,9,9,'2020-11-05','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',1),(16,10,10,'2020-11-05','15:00:00','RM1',NULL,0),(17,11,11,'2020-11-05','15:00:00','RM1',NULL,1),(18,12,12,'2020-11-05','15:00:00','RM1',NULL,0),(19,13,13,'2020-11-05','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',1),(20,14,14,'2020-11-05','15:00:00','RM1',NULL,1),(21,15,15,'2020-11-05','15:00:00','RM1',NULL,2),(22,16,16,'2020-11-05','15:00:00','RM1',NULL,2),(23,17,17,'2020-11-05','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',2),(24,18,18,'2020-11-05','15:00:00','RM1',NULL,1),(25,19,19,'2020-11-05','15:00:00','RM1',NULL,0),(26,20,20,'2020-11-05','15:00:00','RM1',NULL,0),(27,21,1,'2020-11-05','15:00:00','RM1',NULL,0),(28,22,2,'2020-11-05','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(29,23,3,'2020-11-05','15:00:00','RM1',NULL,0),(30,24,4,'2020-11-05','15:00:00','RM1',NULL,0),(31,25,5,'2020-11-05','15:00:00','RM1',NULL,0),(32,26,6,'2020-11-05','15:00:00','RM1',NULL,0),(33,27,7,'2020-11-05','15:00:00','RM1',NULL,0),(34,28,8,'2020-11-05','15:00:00','RM1',NULL,0),(35,29,9,'2020-11-05','15:00:00','RM1',NULL,0),(36,30,10,'2020-11-07','15:00:00','RM1',NULL,0),(37,31,11,'2020-11-07','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(38,32,12,'2020-11-07','15:00:00','RM1',NULL,0),(39,33,13,'2020-11-07','15:00:00','RM1',NULL,0),(40,34,14,'2020-11-07','15:00:00','RM1',NULL,0),(41,35,15,'2020-11-07','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(42,36,16,'2020-11-07','15:00:00','RM1',NULL,0),(43,37,17,'2020-11-07','15:00:00','RM1',NULL,0),(44,38,18,'2020-11-07','15:00:00','RM1','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.',0),(45,39,19,'2020-11-07','15:00:00','RM1',NULL,0),(46,40,20,'2020-11-07','15:00:00','RM1',NULL,2);
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `position_id` int NOT NULL COMMENT 'ID of the position',
  `skill_id` int NOT NULL COMMENT 'ID of the skill needed for the above position',
  PRIMARY KEY (`position_id`,`skill_id`),
  KEY `skill_id_pos_idx` (`skill_id`),
  KEY `position_id_idx` (`position_id`),
  CONSTRAINT `link_position_with_skill` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `link_skill_with_position` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table links a position with its required skills';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES (1,1),(6,1),(11,1),(15,1),(16,1),(1,2),(2,2),(7,2),(12,2),(16,2),(17,2),(2,3),(3,3),(8,3),(13,3),(17,3),(18,3),(3,4),(4,4),(9,4),(14,4),(18,4),(19,4),(4,5),(5,5),(10,5),(15,5),(20,5),(1,6),(5,6),(6,6),(11,6),(16,6),(2,7),(6,7),(7,7),(12,7),(17,7),(3,8),(7,8),(8,8),(13,8),(18,8),(4,9),(8,9),(9,9),(14,9),(19,9),(5,10),(9,10),(10,10),(15,10),(20,10),(1,11),(6,11),(10,11),(11,11),(16,11),(2,12),(7,12),(11,12),(12,12),(17,12),(3,13),(8,13),(12,13),(13,13),(18,13),(4,14),(9,14),(13,14),(14,14),(19,14),(5,15),(10,15),(14,15),(15,15),(20,16),(1,18);
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Identifier of a Position',
  `hid` int NOT NULL,
  `job_title` varchar(45) NOT NULL COMMENT 'Job title of the position',
  `job_description` varchar(500) DEFAULT NULL COMMENT 'Long description of the positon to be used in recruiting advertisements',
  `date_created` date DEFAULT NULL COMMENT 'This is the date the position was originally requested',
  PRIMARY KEY (`id`),
  KEY `link_hospital_with_position_idx` (`hid`),
  CONSTRAINT `link_hospital_with_position` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table stores information relating to a positon. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,1,'Technical Writer','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis','2020-10-01'),(2,1,'VP Marketing','quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu','2020-10-01'),(3,1,'Chief Design Engineer','libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla','2020-10-01'),(4,2,'Developer II','consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum','2020-10-01'),(5,2,'Account Representative IV','in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi','2020-10-01'),(6,2,'Help Desk Operator','sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor','2020-10-01'),(7,3,'VP Quality Control','varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui','2020-10-02'),(8,3,'Editor','nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante','2020-10-02'),(9,3,'Quality Control Specialist','ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in','2020-10-02'),(10,4,'Desktop Support Technician','in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a','2020-10-02'),(11,4,'VP Quality Control','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat','2020-10-02'),(12,4,'Research Nurse','ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet','2020-10-02'),(13,5,'Quality Control Specialist','dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis','2020-10-02'),(14,5,'Analog Circuit Design manager','quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat','2020-10-02'),(15,5,'Occupational Therapist','lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci','2020-10-03'),(16,6,'Marketing Assistant','duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla','2020-10-04'),(17,6,'Occupational Therapist','fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim','2020-10-04'),(18,6,'Programmer II','cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante','2020-10-04'),(19,7,'Chief Design Engineer','sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo','2020-10-04'),(20,7,'Librarian','eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis','2020-10-04'),(39,1,'Testing Agent','Tester','2020-11-20');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Identifier of a skill',
  `name` varchar(45) NOT NULL COMMENT 'Name of a skill',
  `description` varchar(200) DEFAULT NULL COMMENT 'This stores optional further information about a skill.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Database to store information about skills';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Cultural Awareness','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(2,'Professionalism',NULL),(3,'Attention to Detail','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(4,'Critical Thinking',NULL),(5,'Compassion',NULL),(6,'Time Management','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(7,'Communication',NULL),(8,'Emotional Intelligence',NULL),(9,'Problem Solving',NULL),(10,'Teamwork','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(11,'Leadership',NULL),(12,'Resilience',NULL),(13,'Industry Knowledge',NULL),(14,'Relationship Building','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(15,'Ethical Judgement',NULL),(16,'Adaptability',NULL),(17,'Quick Thinking','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(18,'Nursing',NULL),(41,'Testing','In egestas dui ac ipsum iaculis, nec ultricies orci ornare.'),(42,'Doctoring','Doctorskill');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'manning17324576'
--

--
-- Dumping routines for database 'manning17324576'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_address_return_aid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_address_return_aid`(
                           IN address_l1   VARCHAR(120),
                           IN address_l2   VARCHAR(120),
                           IN address_l3   VARCHAR(120),
                           IN county_province   VARCHAR(120),
                           IN country   VARCHAR(120),
                           IN eircode   VARCHAR(16))
BEGIN 
    INSERT INTO addresses 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) 
                VALUES 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) ;
	SELECT LAST_INSERT_ID() AS 'ID of the Address you inserted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_candidate_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_candidate_skill`(
                           IN candidate_id         INT,
                           IN skill_id INT)
BEGIN 
    INSERT INTO candidate_skills
                ( 
                            candidate_id,
                            skill_id
                ) 
                VALUES 
                ( 
							candidate_id,
                            skill_id
                ) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_candidate_with_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_candidate_with_address`(
						   IN pid INT,
                           IN first         VARCHAR(45), 
                           IN last          VARCHAR(45), 
                           IN tel           VARCHAR(45), 
                           IN email       VARCHAR(320), 
                           IN address_l1   VARCHAR(120),
                           IN address_l2   VARCHAR(120),
                           IN address_l3   VARCHAR(120),
                           IN county_province   VARCHAR(120),
                           IN country   VARCHAR(120),
                           IN eircode   VARCHAR(16))
BEGIN 

    INSERT INTO addresses 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) 
                VALUES 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) ;
	SELECT LAST_INSERT_ID() INTO @aid;
    INSERT INTO candidates 
                ( 
                            pid, 
                            first,
                            last, 
                            tel, 
                            email, 
                            aid
                ) 
                VALUES 
                ( 
                            pid, 
                            first,
                            last, 
                            tel, 
                            email, 
                            @aid 
                ) ;
				SELECT LAST_INSERT_ID() AS 'ID of the candidate you inserted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_candidate_with_aid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_candidate_with_aid`(
                           IN pid INT,
                           IN first         VARCHAR(45), 
                           IN last          VARCHAR(45), 
                           IN tel           VARCHAR(45), 
                           IN email       VARCHAR(320),
                           IN aid INT
)
BEGIN 
    INSERT INTO candidates 
                ( 
                            pid, 
                            first,
                            last, 
                            tel, 
                            email,
                            aid
                ) 
                VALUES 
                ( 
                            pid, 
                            first,
                            last, 
                            tel, 
                            email,
                            aid
                ) ;
				SELECT LAST_INSERT_ID() AS 'ID of the candidate you inserted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_hospital_with_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_hospital_with_address`(IN name    VARCHAR(45), 
                                IN tel     VARCHAR(45), 
                                IN address_l1   VARCHAR(120),
							   IN address_l2   VARCHAR(120),
							   IN address_l3   VARCHAR(120),
							   IN county_province   VARCHAR(120),
							   IN country   VARCHAR(120),
							   IN eircode   VARCHAR(16))
begin 
INSERT INTO addresses 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) 
                VALUES 
                ( 
                            address_l1, 
                            address_l2, 
                            address_l3, 
                            county_province, 
                            country, 
                            eircode 
                ) ;
	SELECT LAST_INSERT_ID() INTO @aid;
  INSERT INTO hospitals 
              (name, 
               tel, 
               aid) 
  VALUES      ( name, 
                tel, 
                @aid); 
		SELECT LAST_INSERT_ID() AS 'ID of the hospital you inserted';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_hospital_with_aid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_hospital_with_aid`(IN name    VARCHAR(45), 
                                IN tel     VARCHAR(45), 
                                IN aid INT)
begin 
  INSERT INTO hospitals 
              (name, 
               tel, 
               aid) 
  VALUES      ( name, 
                tel, 
                aid); 
		SELECT LAST_INSERT_ID() AS 'ID of the hospital you inserted';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_interview`(IN cid    INT, 
                                IN pid     INT,
                                IN app_status TINYINT,
                                IN interview_date DATE,
                                IN interview_time TIME,
                                IN interview_location VARCHAR(80),
                                IN notes VARCHAR(400),
                                IN accepted_status VARCHAR(45))
begin 
  INSERT INTO interviews 
              (cid, 
               pid, 
               app_status, 
               interview_date,
               interview_time,
               interview_location,
               notes,
               accepted_status) 
  VALUES       (cid, 
               pid, 
               app_status, 
               interview_date,
               interview_time,
               interview_location,
               notes,
               accepted_status);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_position`(
                           IN hid INT,
                           IN job_title VARCHAR(45),
                           IN job_description VARCHAR(500),
                           IN date_created DATE)
BEGIN 
    INSERT INTO positions 
                ( 
                            hid,
                            job_title, 
                            job_description,
                            date_created
                ) 
                VALUES 
                ( 
                            hid,
                            job_title, 
                            job_description,
                            date_created
                ) ;
				SELECT LAST_INSERT_ID() AS 'ID of the position you inserted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_position_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_position_skill`(
                           IN position_id         INT,
                           IN skill_id INT)
BEGIN 
    INSERT INTO skills_positions
                ( 
                            position_id,
                            skill_id
                ) 
                VALUES 
                ( 
							position_id,
                            skill_id
                ) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_skill`(
                           IN name         VARCHAR(45),
                           IN description VARCHAR(200))
BEGIN 
    INSERT INTO skills 
                ( 
                            name,
                            description
                ) 
                VALUES 
                ( 
							name,
                            description
                ) ;
                SELECT LAST_INSERT_ID() AS 'ID of the skill you inserted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_candidates_by_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_candidates_by_surname`(
                           IN `last`   VARCHAR(45))
BEGIN 
	SELECT * FROM candidates where candidates.last = `last`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_candidates_with_pos_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_candidates_with_pos_skill`(
                           IN `position_id`   INT)
BEGIN 
	SELECT DISTINCT c.id, c.first, c.last 
	FROM candidates as c, candidate_skills as cs, position_skills as ps
	WHERE ps.position_id = position_id
		  AND cs.skill_id = ps.skill_id 
		  AND c.id = cs.candidate_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_by_inter_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_by_inter_date`(IN date_of_interview DATE)
BEGIN 
    SELECT DISTINCT i.cid AS 'Candidate Identifier (ID)' 
    FROM interviews AS i 
    WHERE i.interview_date = date_of_interview AND i.cid IN (
        SELECT i.cid
        FROM interviews AS i
        GROUP BY (i.cid)
        HAVING count(distinct DATE(i.interview_date)) = 1
        ) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_inter_twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_inter_twice`()
BEGIN 
    SELECT DISTINCT i.cid AS 'Candidate ID', 
    c.first AS 'First Name', 
    c.last AS 'Last Name'
    FROM interviews AS i, candidates AS c 
    WHERE i.cid = c.id AND i.cid IN (
        SELECT i.cid
        FROM interviews AS i
        GROUP BY (i.cid)
        HAVING count(i.cid) >=2
        ) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_count_of_offered_cand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_count_of_offered_cand`()
BEGIN 
	SELECT COUNT(DISTINCT interviews.cid) 
    AS 'Number of Candidates offered positions' 
    FROM interviews where interviews.accepted_status != 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_hospital_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_hospital_by_id`(
                           IN id   INTEGER)
BEGIN 
    SELECT * FROM hospitals
    INNER JOIN addresses ON addresses.id = hospitals.aid where hospitals.id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_hospital_by_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_hospital_by_name`(
                           IN `name`   VARCHAR(45))
BEGIN 
	SELECT * FROM hospitals 
    INNER JOIN addresses ON addresses.id = hospitals.aid
    where hospitals.name = `name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_interview_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_interview_by_date`(IN date DATE)
BEGIN 
    SELECT i.id AS 'Interview ID', 
    i.cid AS 'Candidate ID', 
    i.pid AS 'Position ID', 
    i.interview_date AS 'Interview Date', 
    i.interview_location AS 'Location of Interview',
    i.interview_time AS 'Time of Interview'
    FROM interviews AS i WHERE DATE(i.interview_date)=date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_pos_by_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_pos_by_skill`(
                           IN `skill_name`   VARCHAR(45))
BEGIN 
	SELECT DISTINCT p.id AS 'Position ID', p.job_title AS 'Job Title'
	FROM positions as p, candidate_skills as cs, position_skills as ps, skills as s
	WHERE s.id = ps.skill_id 
    AND s.name = skill_name
		  AND p.id = ps.position_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_pos_skill_nursing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_pos_skill_nursing`()
BEGIN 
	SELECT COUNT(*) AS 'Number of Positions requiring nursing' 
	FROM positions as p, position_skills as ps, skills as s
	WHERE ps.position_id = p.id
		  AND s.name = 'nursing' 
          AND s.id = ps.skill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_pos_sort_hosp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_pos_sort_hosp`()
BEGIN 
	SELECT p.id, p.job_title, h.name
	FROM positions as p, hospitals as h
    WHERE p.hid = h.id
	ORDER BY h.name, p.job_title;
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

-- Dump completed on 2020-11-24 15:58:00
