-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: chemou
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `A_Username` char(7) NOT NULL,
  `A_Password` char(4) NOT NULL,
  `A_Picture` varchar(20) NOT NULL,
  PRIMARY KEY (`A_Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('2000684','9210','45 MB'),('2001892','7493','40 MB'),('2057436','7726','42 MB'),('2106473','3083','40 MB'),('2115693','2348','43 MB'),('2116548','2466','42 MB'),('2127412','2412','41 MB'),('2204102','9604','47 MB'),('2216984','9117','50 MB'),('2715649','5959','44 MB'),('2732481','7297','43 MB'),('2901290','2330','40 MB'),('2903126','6548','50 MB');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `B_Title` varchar(100) NOT NULL,
  `B_Content` varchar(200) NOT NULL,
  `B_Price` int NOT NULL,
  `B_Publisher` varchar(50) NOT NULL,
  PRIMARY KEY (`B_Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Acid-base I-II','Acid-base',2600,'Chem Ou'),('Atomic structure, safety and skills in chemistry operations','Basic Chemistry, Atomic Structure',2600,'Chem Ou'),('Biomolecules','Biomolecules',1000,'Chem Ou'),('Chemical bonding','Chemical bonding',2200,'Chem Ou'),('Chemical equilibrium','Chemical equilibrium',1400,'Chem Ou'),('Chemical reaction rate','Chemical reaction rate',1400,'Chem Ou'),('Chemistry exercises for Junior high school','Focus on doing problems and analyzing for entrance to the 10th grade',2200,'Chem Ou'),('Electrochemistry','Electrochemistry',2000,'Chem Ou'),('Entrance','Summary of advanced content, connecting the relationship of chemistry in all 5 books, and many problems',14000,'Chem Ou'),('Exercise practice course','Summarize important specific content and focus on doing advanced exercise that have never been done before',3800,'Chem Ou'),('Fundamentals of Computing, Volume 2 (Grade 12)','Pre-prep the basics of junior high school chemistry in the calculation part',1600,'Chem Ou'),('Fundamentals of Lectures, Volume 1 (Grade 12)','Pre-prep the basics of junior high school chemistry in the theory part',1500,'Chem Ou'),('Gas and gas properties','Gas and gas properties',1400,'Chem Ou'),('IJSO - 1','Basic chemistry for Junior high school volume 1 to volume 2',3000,'Chem Ou'),('IJSO - 2','Basic chemistry for Junior high school volume 3 to volume 5',3400,'Chem Ou'),('Organic chemistry, polymer','Organic chemistry, polymer',4500,'Chem Ou'),('Periodic table','periodic table',1400,'Chem Ou'),('Pre-Entrance','Improve all basics in high school before going to tutoring for exams.',3800,'Chem Ou'),('Science (chemistry) - Junior high school','Chemistry for Grade 7 - Grade 9',2800,'Chem Ou'),('Stoichiometry I','Moles and chemical formulas',2600,'Chem Ou'),('Stoichiometry II','Solution, stoichiometry',2800,'Chem Ou');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `B_Name` varchar(20) NOT NULL,
  `B_Number` varchar(20) NOT NULL,
  `B_Street` varchar(50) DEFAULT NULL,
  `B_Subdistrict` varchar(50) NOT NULL,
  `B_District` varchar(50) NOT NULL,
  `B_Province` varchar(50) NOT NULL,
  `B_Phone` char(9) NOT NULL,
  PRIMARY KEY (`B_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES ('Bankapi','2991/64-65','','Khlong Chan','Bangkapi','Bangkok','023701353'),('Buriram','465/4','Isan','Mueang Buriram','Mueang Buriram','Buriram','044621757'),('Chachoengsao','249','Chumphon','Na Mueang','Mueang Chachoengsao','Chachoengsao','038086573'),('Chiang Mai','5-5/4','Ratchadamnoen','Sri-Poom','Mueang Chiang Mai','Chiang Mai','053416505'),('Chiang Rai','643/1','Udon Kit','Wiang','Mueang Chiang Rai','Chiang Rai','053719955'),('Chonburi','55/55','Sukhumvit','ฺBan Suan','Mueang Chonburi','Chonburi','038797450'),('Chumphon','188/111','Saladaeng','Tha Tapao','Mueang Chumphon','Chumphon','077510655'),('Hat Yai','59/28-29','Jootee Anusorn','Hat Yai','Hat Yai','Songkla','074346165'),('Khonkaen','684/37-45','Na Mueang','Nai mueang','Mueang Khon Kaen','Khonkaen','043225752'),('Lampang','138/69-73','Phahonyothin','Suan Dok','Mueang Lampang','Lampang','054221450'),('Nakhon Ratchasima','32/5','Mittraphap','Nai mueang','Mueang Nakhon Ratchasima','Nakhon Ratchasima','044268512'),('Nakhon Sawan','255/5','Matuli 25','Nakhon Sawan Tok','Mueang Nakhon Sawan','Nakhon Sawan','056372455'),('Nakhon Si Thammarat','55','Om Kai Wachirawuth','Thawang','Mueang Nakhon Si Thammarat','Nakhon Si Thammarat','075431109'),('Nonthaburi','619/4-5','Ngam Wong Wan','Bangkhen','Mueang Nonthaburi','Nonthaburi','025805294'),('Phatthalung','103','Aphai Borirak','Khuha Sawan','Mueang Phatthalung','Phatthalung','074615571'),('Phayathai','35','Phaya Thai','Phayathai Road','Ratchathewi','Bangkok','023060850'),('Phitsanulok','59','Sri Dhamma Tripitaka','Nai mueang','Mueang Phitsanulok','Phitsanulok','055225096'),('Phuket','14','Chumphon Road','Talat Yai','Mueang Phuket','Phuket','076234814'),('Pinklao','71/50','Borommaratchachonnani','Arun Amarin','Bangkoknoi','Bangkok','024095894'),('Rangsit','94','Phahonyothin','Prachathipat','Thanyaburi','Pathum Thani','025676135'),('Ratchaburi','284','Montree Suriyawong','Na mueang','Mueang Ratchaburi','Ratchaburi','032332754'),('Rayong','955','Sukhumvit','Choeng Noen','Mueang Rayong','Rayong','038623524'),('Roi Et','316/5','Thewaphiban','Nai mueang','Mueang Roi Et','Roi Et','043516144'),('Sakon Nakhon','1309/5','Sukkasem','That Choeng Chum','Mueang Sakon Nakhon','Sakon Nakhon','042732274'),('Saraburi','179/5','Sud Banthat','Mueang Saraburi','Mueang Saraburi','Saraburi','036340156'),('Srinakarin','59/5','Srinakarin','Nong Boni','Prawet','Bangkok','020220035'),('Surat Thani','359/32','Chonkasem','Makhamtia','Mueang Surat Thani','Surat Thani','077219255'),('Trang','46/3-4','Wisetkul','Tubtiang','Mueang Trang','Trang','075215359'),('Ubon Ratchathani','625','Sanpasit','Nai mueang','Mueang Ubon Ratchathani','Ubon Ratchathani','045262435'),('Udon Thani','212/45','Kang Amphoe','Mak Khaeng','Mueang Udon Thani','Udon Thani','042329005'),('Wongwian Yai','99','Lat Ya','Somdejchaopraya','Khlong San','Bangkok','024378518');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `Class_Name` varchar(50) NOT NULL,
  `DateNTime` varchar(100) NOT NULL,
  `C_course_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`C_course_ID`,`Class_Name`),
  CONSTRAINT `FK_classid` FOREIGN KEY (`C_course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('RoomV1','Sun 09:00 - 12:00','UC01'),('RoomV2','Wed 13:30 - 16:00','UC02'),('RoomV3','Mon 13:00 - 15:30','UC03'),('RoomV1','Sat 13:30 - 16:00','UC08,UC09,UC10'),('RoomV2','Sun 13:30 - 16:00','UC08,UC09,UC10'),('RoomV4','Fri 09:30 - 12:00','UC14'),('RoomV3','Tue 09:30 - 12:00','UC15'),('RoomV1','Thu 08:00 - 13:00','UC19'),('RoomV5','Mon 08:00 - 13:00','UC19'),('RoomV6','Wed 08:00 - 13:00','UC19');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contain`
--

DROP TABLE IF EXISTS `contain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contain` (
  `C_CID` varchar(20) NOT NULL,
  `C_BTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`C_CID`,`C_BTitle`),
  KEY `FK_containbook` (`C_BTitle`),
  CONSTRAINT `FK_containbook` FOREIGN KEY (`C_BTitle`) REFERENCES `book` (`B_Title`),
  CONSTRAINT `FK_containcourse` FOREIGN KEY (`C_CID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contain`
--

LOCK TABLES `contain` WRITE;
/*!40000 ALTER TABLE `contain` DISABLE KEYS */;
INSERT INTO `contain` VALUES ('UC13','Acid-base I-II'),('UC05','Atomic structure, safety and skills in chemistry operations'),('UC05,UC06,UC07','Atomic structure, safety and skills in chemistry operations'),('UC17','Biomolecules'),('UC05,UC06,UC07','Chemical bonding'),('UC07','Chemical bonding'),('UC12','Chemical equilibrium'),('UC11','Chemical reaction rate'),('UC01,UC02,UC03,UC04','Chemistry exercises for junior high school'),('UC01,UC04','Chemistry exercises for junior high school'),('UC04','Chemistry exercises for junior high school'),('UC14,UC15','Electrochemistry'),('UC18,UC19','Entrance'),('UC18,UC19','Exercise practice course'),('UC21,UC22','Fundamentals of Computing, Volume 2 (Grade 12)'),('UC21,UC22','Fundamentals of Lectures, Volume 1 (Grade 12)'),('UC08,UC09,UC10','Gas and gas properties'),('UC10','Gas and gas properties'),('UC01,UC02,UC03,UC04','IJSO - 1'),('UC02','IJSO - 1'),('UC01,UC02,UC03,UC04','IJSO - 2'),('UC03','IJSO - 2'),('UC14,UC15','Organic chemistry, polymer'),('UC05,UC06,UC07','Periodic table'),('UC06','Periodic table'),('UC23','Pre-Entrance'),('UC01','Science (chemistry) - Junior high school'),('UC01,UC02,UC03,UC04','Science (chemistry) - junior high school'),('UC01,UC04','Science (chemistry) - junior high school'),('UC08','Stoichiometry I'),('UC08,UC09,UC10','Stoichiometry I'),('UC08,UC09,UC10','Stoichiometry II'),('UC09','Stoichiometry II');
/*!40000 ALTER TABLE `contain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Course_ID` varchar(20) NOT NULL,
  `Course_Name` varchar(200) NOT NULL,
  `Course_Price` int NOT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('UC01','Junior Chemistry',2800),('UC01,UC02,UC03,UC04','Junior chemistry , IJSO 1 , IJSO 2 , Intensive exercise for Junior high school',10400),('UC01,UC04','Junior Chemistry and Intensive exercise for Junior high school',4800),('UC02','Junior Chemistry for IJSO1',3000),('UC03','Junior Chemistry for IJSO2',3400),('UC04','Intensive exercise for Junior Chemistry',2200),('UC05','Chemistry Grade 12, Volume 1 - Fundamentals of Chemistry + Atomic Structure',2600),('UC05,UC06,UC07','Chemistry Grade 12, Volume 1 - Atomic Structure, Periodic Table, Chemical Bonding',5300),('UC06','Chemistry Grade 12, Volume 1 Periodic Table',1400),('UC07','Chemistry Grade 12, Volume 1 Chemical Bonding',2200),('UC08','Chemistry Grade 12, Volume 2 - Moles and Chemistry Formulas stoichiometry I',2600),('UC08,UC09,UC10','Chemistry Grade 12 Volume 2, - Moles and Chemistry Formulas stoichiometry I, solution, stoichiometry II, gas and gas properties',4800),('UC09','Chemistry Grade 12, Volume 2 - Solution, Stoichiometry II',2800),('UC10','Chemistry Grade 12, Volume 3 - Gases and Gas Properties',1400),('UC11','Chemistry Grade 12, Volume 3 - Chemical Reaction Rate',1400),('UC11,UC12,UC13','Chemistry Grade 12, Volume 3 - ratio , equilibrium , acid base',4700),('UC12','Chemistry Grade 12, Volume 3 - Chemical Equilibrium',1400),('UC13','Chemistry Grade 13, Volume 4 - Acid-Bases I-II',2600),('UC14','Chemistry Grade 13, Volume 4 - Electrochemistry',2000),('UC14,UC15','Chemistry Grade 13, Volume 4, Electrochemistry, Organic Chemistry, Polymers',5500),('UC15','Chemistry Grade 13, Organic Chemistry, Polymer',4500),('UC17','Chemistry Grade 13, Volume 5 - Biomolecules',1000),('UC18','Chemistry Grade 14, Course Entrance',14000),('UC18,UC19','Entrance, Intensive exercise for High Chemistry',17000),('UC19','Intensive exercise for High Chemistry',3800),('UC21','Fundamentals of Lectures, Volume 1 (Grade 12)',1500),('UC21,UC22','Fundamentals of Lectures and Calculations, Volumes 1-2 (Grade 12) ',2800),('UC22','Fundamentals of Computing, Volume 2 (Grade 12)',1600),('UC23','Pre-Entrance',3800);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enroll` (
  `E_SID` char(13) NOT NULL,
  `E_PayID` char(9) NOT NULL,
  `E_CID` varchar(20) NOT NULL,
  `E_Type` varchar(50) NOT NULL,
  `E_AY` char(4) NOT NULL,
  `E_ED` datetime NOT NULL,
  PRIMARY KEY (`E_SID`,`E_PayID`,`E_CID`),
  KEY `FK_enrollPay` (`E_PayID`),
  KEY `FK_enrollCourse` (`E_CID`),
  CONSTRAINT `FK_enrollCourse` FOREIGN KEY (`E_CID`) REFERENCES `course` (`Course_ID`),
  CONSTRAINT `FK_enrollPay` FOREIGN KEY (`E_PayID`) REFERENCES `payment` (`Payment_ID`),
  CONSTRAINT `FK_enrollStu` FOREIGN KEY (`E_SID`) REFERENCES `students` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

LOCK TABLES `enroll` WRITE;
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
INSERT INTO `enroll` VALUES ('1102312034602','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 09:12:15'),('1102312034602','771371440','UC23','DVD','2022','2022-06-25 11:39:58'),('1102312034602','777089264','UC18','DVD','2021','2021-01-17 09:03:19'),('1102735543510','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 10:09:17'),('1102735543510','771371440','UC23','DVD','2022','2022-06-25 16:05:37'),('1102735543510','777089264','UC18','DVD','2021','2021-02-14 15:21:02'),('1105694224534','362011933','UC02','Live','2021','2021-02-22 09:48:10'),('1105694224534','367714631','UC04','DVD','2020','2020-10-05 13:28:19'),('1105694224534','773139342','UC03','Live','2022','2022-10-02 09:01:45'),('1106652241503','209645320','UC14','Live','2021','2021-01-16 15:08:57'),('1106652241503','771371440','UC23','DVD','2022','2022-06-25 12:08:16'),('1106652241503','777089264','UC18','DVD','2020','2020-10-04 14:42:08'),('1108645180161','209645320','UC14','Live','2020','2020-10-10 11:20:33'),('1108645180161','209660058','UC15','Live','2021','2021-04-10 11:42:07'),('1108645180161','363191350','UC19','Live','2022','2022-05-02 14:27:49'),('1120012329012','209645320','UC14','Live','2021','2021-01-15 12:20:35'),('1120012329012','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 09:01:20'),('1120012329012','771371440','UC23','DVD','2022','2022-05-09 13:45:17'),('1139214271920','363191350','UC19','Live','2021','2021-02-02 13:00:14'),('1139214271920','771371440','UC23','DVD','2022','2022-06-25 08:17:45'),('1139214271920','777089264','UC18','DVD','2020','2020-10-12 16:56:03'),('1200147920466','209645320','UC14','Live','2021','2021-01-16 10:01:02'),('1200147920466','209660058','UC15','Live','2022','2022-05-05 12:21:29'),('1200147920466','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 09:30:32'),('1502898433724','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 14:25:18'),('1502898433724','363191350','UC19','Live','2022','2022-04-20 09:00:57'),('1502898433724','777089264','UC18','DVD','2021','2021-01-17 12:17:04'),('1806918362746','362011933','UC02','Live','2021','2021-02-21 10:29:30'),('1806918362746','770393711','UC01,UC04','DVD','2020','2020-10-03 11:07:09'),('1806918362746','773139342','UC03','Live','2022','2022-04-09 15:32:18'),('2600289182390','362618177','UC08,UC09,UC10','Live','2020','2020-10-01 09:03:56'),('2600289182390','363191350','UC19','Live','2021','2021-02-12 17:05:14'),('2600289182390','771371440','UC23','DVD','2022','2022-04-28 14:23:00');
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has` (
  `H_SID` char(13) NOT NULL,
  `H_BName` varchar(50) NOT NULL,
  PRIMARY KEY (`H_SID`,`H_BName`),
  KEY `FK_hasBName` (`H_BName`),
  CONSTRAINT `FK_hasBName` FOREIGN KEY (`H_BName`) REFERENCES `branches` (`B_Name`),
  CONSTRAINT `FK_hasStu` FOREIGN KEY (`H_SID`) REFERENCES `students` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
INSERT INTO `has` VALUES ('1120012329012','Bankapi'),('1139214271920','Bankapi'),('1102312034602','Chachoengsao'),('1502898433724','Chiang Mai'),('1108645180161','Chiang Rai'),('1502898433724','Chiang Rai'),('1200147920466','Chonburi'),('1102735543510','Hat Yai'),('1102312034602','Khonkaen'),('1502898433724','Lampang'),('1102312034602','Nakhon Ratchasima'),('1200147920466','Nakhon Sawan'),('2600289182390','Nakhon Sawan'),('1806918362746','Nakhon Si Thammarat'),('1120012329012','Nonthaburi'),('1102735543510','Phayathai'),('1105694224534','Phayathai'),('1106652241503','Phayathai'),('1108645180161','Phayathai'),('1120012329012','Phayathai'),('1139214271920','Phayathai'),('2600289182390','Phayathai'),('1806918362746','Phuket'),('1102735543510','Pinklao'),('1105694224534','Pinklao'),('1106652241503','Rangsit'),('1108645180161','Rangsit'),('1139214271920','Rangsit'),('2600289182390','Ratchaburi'),('1200147920466','Rayong'),('1106652241503','Srinakarin'),('1806918362746','Trang'),('1105694224534','Wongwian Yai');
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` char(9) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Payment_Time` time NOT NULL,
  `Payment_Type` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('202010309','2020-10-02','12:00:58','Counter Service',2800),('209645320','2020-12-24','17:08:56','Counter Service',3000),('209660058','2020-07-16','08:35:09','Counter Service',3800),('362011933','2020-10-02','09:25:01','Mobile Banking',2000),('362618177','2020-12-28','12:49:55','Mobile Banking',4800),('363191350','2020-09-20','11:34:34','Mobile Banking',4500),('367714631','2020-05-26','17:23:09','Mobile Banking',2200),('770393711','2020-10-23','10:48:39','Krung Thai Bank',4800),('771371440','2020-06-13','12:07:11','Krung Thai Bank',3800),('773139342','2020-08-04','13:41:24','Krung Thai Bank',3400),('777089264','2020-08-09','14:22:07','Krung Thai Bank',14000);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `SID` char(13) NOT NULL,
  `S_Email` varchar(30) NOT NULL,
  `S_Fname` varchar(20) NOT NULL,
  `S_Lname` varchar(20) NOT NULL,
  `S_Number` varchar(20) NOT NULL,
  `S_Street` varchar(100) DEFAULT NULL,
  `S_Subdistrict` varchar(100) NOT NULL,
  `S_District` varchar(100) NOT NULL,
  `S_Province` varchar(100) NOT NULL,
  `S_Phone` char(10) NOT NULL,
  `S_Gender` char(1) NOT NULL,
  `S_School` varchar(100) NOT NULL,
  `S_Parent` char(10) NOT NULL,
  `S_BD` date DEFAULT NULL,
  `S_a_username` char(7) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `FK_Stu` (`S_a_username`),
  CONSTRAINT `FK_Stu` FOREIGN KEY (`S_a_username`) REFERENCES `accounts` (`A_Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('1102211235079','Robertdowney@hotmail.com','Robert','Hongthai','297','Tipchang','Rop Wiang','Mueang Chiang Rai','Chiang Rai','0831249990','M','Chiang Rai Vidhayakhome School','0618791918','2001-04-27','2127412'),('1102312034602','TangD@gmail.com','Duangxuanli','Tong','179/126',' ','Tha Phra','Mueang Khon Kaen','Khon Kaen','0619244796','F','Khon Kaen International','0623378959','2003-02-14','2116548'),('1102735543510','Jirapatpui@gmail.com','Jirapat','Deesara','911/119','Ratchadaphisek','Huai Kwang','Din Daeng','Bangkok','0987895659','M','Bangkok Christian College','0659716264','2001-03-12','2216984'),('1105694224534','JidapaM@gmail.com','Jidapa','Moolkeaw','3103','Lat Phrao','Khlong Chan','Bangkapi','Bangkok','0942879171','F','Ruamrudee International School','0808649795','2003-08-29','2115693'),('1106652241503','Kongphopppp@hotmail.com','Kongphop','Panyanirun','81/56','Thoet Thai','Talat Phlu','Thonburi','Bangkok','0634965526','M','Bangkok Christian College','0622489495','2002-12-05','2903126'),('1108645180161','Paulaponn@gmail.com','Ponnapassorn','Iamborisut','7/381','Liab Klong Thawi Watthana','Sala Thammasop','Thawi Watthana','Bangkok','0659168587','F','Mater Dei School','0649633565','2003-02-24','2106473'),('1109944321179','Nipponjapan@gmail.com','Nippon','Downey','43','Phahonyothin','Mueang Lampang','Mueang Lampang','Lampang','0998761209','F','Lampang Wittaya School','0889901116','2006-08-04','2000684'),('1120012329012','Jamespotter@gmail.com','James','Mekmanee','90/47','Kanchanaphisek','Bang Yai','Bang Yai','Nonthaburi','0628974553','M','Nonthaburi Wittayalai','0928865695','2002-09-17','2901290'),('1139214271920','Thadeeya00@hotmail.com','Thadeeya','Duangkaew','512','Phahonyothin','Klong Nueng','Khlong Luang','Pathum Thani','0824547146','F','Thammasat Secondary School','0937416551','2001-08-26','2204102'),('1200147920466','Wangwang@gmail.com','Dong','Eng','8/41','Chaloem Phrakiat','North Pattaya','Bang Lamung','Chonburi','0824792297','M','International School of Chonburi','0806898759','2004-05-04','2001892'),('1502898433724','ShaojunW@gmail.com','Shaojun','Wan','975','Pha Daeng','Mueang Na','Chiang Dao','Chiang Mai','0629259235','M','Singapore International School Chiangmai','0629955859','2006-10-13','2715649'),('1806918362746','Zhangfeng@hotmail.com','Linfeng','Zhun','16/72','Mahachai','Khanom','Khanom','Nakhon Si Thammarat','0994742635','F','Srithammarat Suksa School','0616657859','2008-02-29','2732481'),('2600289182390','Henhao@hotmail.com','Hao','Wong','122','Kosi Tai','Pak Nam Pho','Mueang Nakhon Sawan','Nakhon Sawan','0942699874','M','St.Joseph Nakhon Sawan','0984145796','2002-11-26','2057436');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:16:52
