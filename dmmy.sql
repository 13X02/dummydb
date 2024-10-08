-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: dummydb
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievments`
--

DROP TABLE IF EXISTS `achievments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievments` (
  `achievment_id` varchar(255) NOT NULL,
  `event` varchar(255) DEFAULT NULL,
  `meet_name` varchar(255) DEFAULT NULL,
  `performance` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`achievment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievments`
--

LOCK TABLES `achievments` WRITE;
/*!40000 ALTER TABLE `achievments` DISABLE KEYS */;
INSERT INTO `achievments` VALUES ('AC_00001','SprintMaster 100m Dash','Victory Sprint Classic','Won gold and set a new personal best, earning the title of national sprint champion.','9.87 seconds'),('AC_00002','SpeedBurst 200m Sprint','World Athletics Finals','Secured a silver medal at the global level, making a mark on the international stage.','19.95 seconds'),('AC_00003','RelayChamp 4x100m','Continental Relay Games','Helped the national team win gold, breaking the continental record with a flawless relay performance.','37.98 seconds'),('AC_00004','VaultKing Pole Vault','World Athletics Championships','Clinched the bronze medal on the world stage, achieving a personal best and earning international recognition.','5.90 meters'),('AC_00005','Precision Long Jump','National Track & Field Championships','Won gold and set a new national record, becoming the country’s top long jumper.','8.10 meters'),('AC_00006','DistanceAce 5K Run','International Distance Meet','Finished first with a personal best, earning gold and recognition in long-distance running.','14:20.45 minutes'),('AC_00007','SprintMaster 100m Dash','World Sprint Championships','Earned a bronze medal in a highly competitive field, making their mark on the world stage.','9.92 seconds'),('AC_00008','RelayChamp 4x100m','National Relay Finals',' Captured the gold medal, leading the team to victory and setting a new national record.','38.05 seconds'),('AC_00009','SpeedBurst 200m Sprint','Continental Games','Won silver in the continental games, solidifying their status as one of the top sprinters in the region.','20.10 seconds'),('AC_00010','LeapPro Long Jump','National Field Championships','Took home the gold medal with a personal best, becoming the national long jump champion','8.25 meters'),('AC_00011','ShotPut Titan','World Shot Put Challenge','Won silver at the world level, setting a new personal best and breaking the national record.','21.50 meters');
/*!40000 ALTER TABLE `achievments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achive_seq`
--

DROP TABLE IF EXISTS `achive_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achive_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achive_seq`
--

LOCK TABLES `achive_seq` WRITE;
/*!40000 ALTER TABLE `achive_seq` DISABLE KEYS */;
INSERT INTO `achive_seq` VALUES (101);
/*!40000 ALTER TABLE `achive_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ass_req`
--

DROP TABLE IF EXISTS `ass_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ass_req` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ass_req`
--

LOCK TABLES `ass_req` WRITE;
/*!40000 ALTER TABLE `ass_req` DISABLE KEYS */;
INSERT INTO `ass_req` VALUES (101);
/*!40000 ALTER TABLE `ass_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistance_request`
--

DROP TABLE IF EXISTS `assistance_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistance_request` (
  `assistance_request_id` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `athlete_athlete_id` varchar(255) DEFAULT NULL,
  `coach_coach_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`assistance_request_id`),
  UNIQUE KEY `UKnw76poos8d1hkupwsch0ushj8` (`athlete_athlete_id`),
  KEY `FKqy7dii3jv085hwn2kgdyhrn9v` (`coach_coach_id`),
  CONSTRAINT `FKojxdpdck6dpjmo4oqlomjemu9` FOREIGN KEY (`athlete_athlete_id`) REFERENCES `athlete` (`athlete_id`),
  CONSTRAINT `FKqy7dii3jv085hwn2kgdyhrn9v` FOREIGN KEY (`coach_coach_id`) REFERENCES `coach` (`coach_id`),
  CONSTRAINT `assistance_request_chk_1` CHECK ((`status` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistance_request`
--

LOCK TABLES `assistance_request` WRITE;
/*!40000 ALTER TABLE `assistance_request` DISABLE KEYS */;
INSERT INTO `assistance_request` VALUES ('AS_00001','i need your help',1,'ATH_00003','CO_00001'),('AS_00002','help',0,'ATH_00004','CO_00001');
/*!40000 ALTER TABLE `assistance_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ath_seq`
--

DROP TABLE IF EXISTS `ath_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ath_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ath_seq`
--

LOCK TABLES `ath_seq` WRITE;
/*!40000 ALTER TABLE `ath_seq` DISABLE KEYS */;
INSERT INTO `ath_seq` VALUES (101);
/*!40000 ALTER TABLE `ath_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete` (
  `athlete_id` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `coach_coach_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`athlete_id`),
  UNIQUE KEY `UK1d2crke3fl36c7643i6ry8cr2` (`coach_coach_id`),
  CONSTRAINT `FKdtbtf2t6ycmh8og46tmtocix7` FOREIGN KEY (`coach_coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete`
--

LOCK TABLES `athlete` WRITE;
/*!40000 ALTER TABLE `athlete` DISABLE KEYS */;
INSERT INTO `athlete` VALUES ('ATH_00001','2000-10-10','100M','2024-09-03','Liam','Male','170','Carter','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_220451_925eaf42-8481-4f9f-bf64-515b04abbdb6_v3_0968136.jpg','U_00006','60',NULL),('ATH_00002','2002-04-13','Throw','2024-09-03','Sophia','Female','170','Martinez','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_220641_19069574-4cc4-40e1-8367-0bb61f58fb28_v3_0025297.jpg','U_00007','60',NULL),('ATH_00003','2003-10-10','200M','2024-09-03','Ethan','Male','170','Blake','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_220920_ca46fc0a-11dc-45b6-a3a1-89b325ea8b9c_100k-ai-faces-5.jpg','U_00008','60','CO_00001'),('ATH_00004','2005-08-08','10M','2024-09-03','Isabella','Female','170','Kim','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_221123_376cdf07-1ae4-4cec-baea-51df827c90cf_v3_0122543.jpg','U_00009','60',NULL);
/*!40000 ALTER TABLE `athlete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_seq`
--

DROP TABLE IF EXISTS `co_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_seq`
--

LOCK TABLES `co_seq` WRITE;
/*!40000 ALTER TABLE `co_seq` DISABLE KEYS */;
INSERT INTO `co_seq` VALUES (101);
/*!40000 ALTER TABLE `co_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('CO_00001','1980-10-10','100M','2024-09-03','Alex','Male','Winter','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_213733_41032022-be49-4d48-a768-18d0b7a1167c_v3_0416757.jpg','U_00002'),('CO_00002','1980-10-10','Jump','2024-09-03','Jordan','Male','Reed','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_214352_64d55212-43d7-4371-8f22-d222a42cfd5a_100k-ai-faces-4.jpg','U_00003'),('CO_00003','1999-09-10','Sprint','2024-09-03','Taylor','Female','Brooks','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_215821_b6789008-a86c-4d2d-bc63-08445812c8b5_100k-ai-faces-7.jpg','U_00004'),('CO_00004','1989-09-10','Jump','2024-09-03','Morgan','Male','Hayes','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/20240903_220203_35bda66f-0639-456d-bac5-f0d57b3a5672_100k-ai-faces-3.jpg','U_00005');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach_achievements`
--

DROP TABLE IF EXISTS `coach_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_achievements` (
  `coach_coach_id` varchar(255) NOT NULL,
  `achievements_achievment_id` varchar(255) NOT NULL,
  UNIQUE KEY `UKbvfk9b32awk2n3v35gvxbo8mp` (`achievements_achievment_id`),
  KEY `FK57c2hn8xrf38afdpd0qpgqgsv` (`coach_coach_id`),
  CONSTRAINT `FK47ldusjsw58qoc91kcwiodsyu` FOREIGN KEY (`achievements_achievment_id`) REFERENCES `achievments` (`achievment_id`),
  CONSTRAINT `FK57c2hn8xrf38afdpd0qpgqgsv` FOREIGN KEY (`coach_coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_achievements`
--

LOCK TABLES `coach_achievements` WRITE;
/*!40000 ALTER TABLE `coach_achievements` DISABLE KEYS */;
INSERT INTO `coach_achievements` VALUES ('CO_00001','AC_00001'),('CO_00001','AC_00002'),('CO_00001','AC_00003'),('CO_00002','AC_00004'),('CO_00002','AC_00005'),('CO_00002','AC_00006'),('CO_00003','AC_00007'),('CO_00003','AC_00008'),('CO_00003','AC_00009'),('CO_00004','AC_00010'),('CO_00004','AC_00011');
/*!40000 ALTER TABLE `coach_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach_athletes`
--

DROP TABLE IF EXISTS `coach_athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_athletes` (
  `coach_coach_id` varchar(255) NOT NULL,
  `athletes_athlete_id` varchar(255) NOT NULL,
  UNIQUE KEY `UKexe60bk083pvbfhotidrf6ang` (`athletes_athlete_id`),
  KEY `FKcw66k7qllfxpngrgu47cuqnry` (`coach_coach_id`),
  CONSTRAINT `FK52jeu12uisb4jly1bg02ouayo` FOREIGN KEY (`athletes_athlete_id`) REFERENCES `athlete` (`athlete_id`),
  CONSTRAINT `FKcw66k7qllfxpngrgu47cuqnry` FOREIGN KEY (`coach_coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_athletes`
--

LOCK TABLES `coach_athletes` WRITE;
/*!40000 ALTER TABLE `coach_athletes` DISABLE KEYS */;
INSERT INTO `coach_athletes` VALUES ('CO_00001','ATH_00003');
/*!40000 ALTER TABLE `coach_athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_diet`
--

DROP TABLE IF EXISTS `daily_diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_diet` (
  `id` bigint NOT NULL,
  `athlete_id` varchar(255) DEFAULT NULL,
  `calories` bigint DEFAULT NULL,
  `current_weight` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `weight_plan_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjajvrywuurd9xqb9qg08bqs6t` (`weight_plan_id`),
  CONSTRAINT `FKjajvrywuurd9xqb9qg08bqs6t` FOREIGN KEY (`weight_plan_id`) REFERENCES `weight_plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_diet`
--

LOCK TABLES `daily_diet` WRITE;
/*!40000 ALTER TABLE `daily_diet` DISABLE KEYS */;
INSERT INTO `daily_diet` VALUES (1,'ATH_00002',1000,50,'2024-09-01',NULL);
/*!40000 ALTER TABLE `daily_diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_diet_seq`
--

DROP TABLE IF EXISTS `daily_diet_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_diet_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_diet_seq`
--

LOCK TABLES `daily_diet_seq` WRITE;
/*!40000 ALTER TABLE `daily_diet_seq` DISABLE KEYS */;
INSERT INTO `daily_diet_seq` VALUES (51);
/*!40000 ALTER TABLE `daily_diet_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_description` varchar(1000) DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `meet_meet_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `FK7dd9e3m2n1c7uyyo7koy4eypl` (`meet_meet_id`),
  CONSTRAINT `FK7dd9e3m2n1c7uyyo7koy4eypl` FOREIGN KEY (`meet_meet_id`) REFERENCES `meet` (`meet_id`),
  CONSTRAINT `event_chk_1` CHECK ((`status` between 0 and 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('E_00001','100M','2024-09-03','2024-09-06','Test your speed in this fast-paced sprint. The Rapid Dash 100m is for athletes who excel in explosive power and quick acceleration, as they race against the clock to cross the finish line.','Rapid Dash','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/%20i.jpeg',0,'Paris','M_00001'),('E_00002','200M','2024-09-03','2024-09-26','A classic middle-distance event, the Golden Mile challenges athletes to maintain a balance of speed and endurance. Compete to see who can complete the mile in record time.\r\n\r\n','Golden Mile Run','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_58by2558by2558by.jpeg',0,'TVM','M_00002'),('E_00003','100M','2024-09-03','2024-09-05','The SprintMaster 100m Dash is the ultimate test of speed and power. Athletes will push their limits in this explosive sprint, racing to be the first to cross the finish line in a blur of motion.\r\n\r\n','SprintMaster 100m Dash','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_58by2658by2658by.jpeg',0,'Kochi','M_00001'),('E_00004','10M','2024-09-03','2024-09-12','The VaultKing Pole Vault event is a showcase of technique, strength, and daring. Athletes will aim to soar higher than ever, mastering the art of pole vaulting to claim the top spot.','VaultKing Pole Vault','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_nfqygsnfqygsnfqy.jpeg',0,'Kollam','M_00003'),('E_00005','10M','2024-09-03','2024-09-18','The LeapPro Long Jump combines speed, power, and precision. Athletes will sprint down the runway and leap for distance, striving for a perfect takeoff and landing in the sand pit.','LeapPro Long Jump','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_yueco2yueco2yuec.jpeg',0,'TVM','M_00003'),('E_00006','4x100m','2024-09-03','2024-09-30','The RelayChamp 4x100m is a fast-paced team event that requires seamless baton exchanges and raw speed. Teams will work together to sprint their way to victory, with each leg of the relay counting.','RelayChamp 4x100m','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_yueco3yueco3yuec.jpeg',0,'Kochi','M_00002'),('E_00007','Throw','2024-09-03','2024-10-16','DiscusForce Throw is a field event that showcases an athlete’s strength and technique. Competitors will aim to throw the discus as far as possible, demonstrating power and precision in every attempt.','DiscusForce Throw','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_s2sdzis2sdzis2sd.jpeg',1,'Paris','M_00003'),('E_00008','Throw','2024-09-03','2024-09-05','The ShotPut Titan event challenges athletes to harness their raw strength and perfect their technique. The goal is to launch the shot as far as possible, blending power, balance, and control.','ShotPut Titan','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_xn3u1zxn3u1zxn3u.jpeg',0,'Kochi','M_00003'),('E_00009','200m','2024-09-03','2024-09-24','SpeedBurst 200m Sprint is designed for athletes who excel in combining acceleration and endurance. This event requires a burst of speed around the curve and down the straightaway, with victory just meters away.','SpeedBurst 200m Sprint','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/Gemini_Generated_Image_58by2658by2658by.jpeg',0,'Kollam','M_00002');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_seq`
--

DROP TABLE IF EXISTS `event_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_seq`
--

LOCK TABLES `event_seq` WRITE;
/*!40000 ALTER TABLE `event_seq` DISABLE KEYS */;
INSERT INTO `event_seq` VALUES (101);
/*!40000 ALTER TABLE `event_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet`
--

DROP TABLE IF EXISTS `meet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meet` (
  `meet_id` varchar(255) NOT NULL,
  `meet_name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`meet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet`
--

LOCK TABLES `meet` WRITE;
/*!40000 ALTER TABLE `meet` DISABLE KEYS */;
INSERT INTO `meet` VALUES ('M_00001','Victory Sprint Classic','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/haut-risque-3WqzE236Hhw-unsplash.jpg'),('M_00002','Grand Marathon Challenge','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/jonathan-chng-HgoKvtKpyHA-unsplash.jpg'),('M_00003','Lightning Bolt Championships','https://basilintebucket2024ilundakkiyath.s3.ap-south-1.amazonaws.com/julian-david-loaiza-agudelo-f_kpapSabAA-unsplash.jpg');
/*!40000 ALTER TABLE `meet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_seq`
--

DROP TABLE IF EXISTS `reg_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_seq`
--

LOCK TABLES `reg_seq` WRITE;
/*!40000 ALTER TABLE `reg_seq` DISABLE KEYS */;
INSERT INTO `reg_seq` VALUES (151);
/*!40000 ALTER TABLE `reg_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `registration_id` varchar(255) NOT NULL,
  `athlete_id` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `event_event_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`registration_id`),
  KEY `FKbian7juyewbo97v9xv4pkkch5` (`event_event_id`),
  CONSTRAINT `FKbian7juyewbo97v9xv4pkkch5` FOREIGN KEY (`event_event_id`) REFERENCES `event` (`event_id`),
  CONSTRAINT `registration_chk_1` CHECK ((`status` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('R_00052','ATH_00001',0,'E_00007'),('R_00053','ATH_00001',0,'E_00006'),('R_00054','ATH_00001',1,'E_00001'),('R_00055','ATH_00001',2,'E_00004'),('R_00056','ATH_00002',0,'E_00006'),('R_00057','ATH_00002',1,'E_00004'),('R_00058','ATH_00002',0,'E_00005'),('R_00059','ATH_00003',1,'E_00004'),('R_00060','ATH_00003',2,'E_00001'),('R_00061','ATH_00003',0,'E_00005'),('R_00062','ATH_00003',1,'E_00002');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_seq`
--

DROP TABLE IF EXISTS `res_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_seq`
--

LOCK TABLES `res_seq` WRITE;
/*!40000 ALTER TABLE `res_seq` DISABLE KEYS */;
INSERT INTO `res_seq` VALUES (151);
/*!40000 ALTER TABLE `res_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `result_id` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `event_event_id` varchar(255) DEFAULT NULL,
  `registration_registration_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `UK9yptyswb9evtsd8ndmfa1sh8m` (`registration_registration_id`),
  KEY `FKqkow9vx5e9ux758a2tepfttww` (`event_event_id`),
  CONSTRAINT `FKmlx70v6vyg7dhrmx86g1qdrjm` FOREIGN KEY (`registration_registration_id`) REFERENCES `registration` (`registration_id`),
  CONSTRAINT `FKqkow9vx5e9ux758a2tepfttww` FOREIGN KEY (`event_event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES ('RES_00052','good',100,'E_00007','R_00052');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credential`
--

DROP TABLE IF EXISTS `user_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_credential` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKja400kbsfopl13c5pu8rhbo09` (`email`),
  UNIQUE KEY `UK6s3isow7rby7lajiubl6rcxkv` (`username`),
  CONSTRAINT `user_credential_chk_1` CHECK ((`role` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credential`
--

LOCK TABLES `user_credential` WRITE;
/*!40000 ALTER TABLE `user_credential` DISABLE KEYS */;
INSERT INTO `user_credential` VALUES ('U_00001','admin@admin.com','$2a$10$ePnnh6Fp9npZVn.LQNBisul60fY2O8ZXtccGW.rBeMqflFjPcxBt2',1,'admin'),('U_00002','coach1@coach1.com','$2a$10$paVDDZ7ZAAUf8FCe.hm4SupAqHxw2U9d3NpFPvv/9HElG5FxNE8.O',2,'coach1'),('U_00003','coach2@coach2.coach2','$2a$10$1NdBkGEpvYlEEe0XMQCPZeMjDC8T/BtmZXaUCvlJc7F4oAwupCKpu',2,'coach2'),('U_00004','coach3@coach3.coach3','$2a$10$FUVnf8xtou7KTBKwsYtPMOKPuDiTBL0MfpHT.WbfWtQRuDXlAfvIq',2,'coach3'),('U_00005','coach4@coach4.coach4','$2a$10$UZj.SGGqCDSDYLJNQC3uDuCvuv6cGcaDUMY7oYn4pH5LlT3MdphOu',2,'coach4'),('U_00006','athlete1@athlete1.athlete1','$2a$10$bP5LcWA3hhrcqbHbAxQQ5.31dtpbP1g0qcGo.nmcjPNISdNQeW03y',0,'athlete1'),('U_00007','athlete2@athlete2.athlete2','$2a$10$o3jIRLN7IeqT/TOT/p8q6evASKAD53TutjUlBmwO6fRWaB1RjBqv6',0,'athlete2'),('U_00008','athlete3@athlete3.athlete3','$2a$10$vnLHtmOw3jhZj1pWyQH8Be4rqVB5MLDmuiIbgUfWSzQCwfec6UZeG',0,'athlete3'),('U_00009','athlete4@athlete4.com','$2a$10$uvl.pST6e0zCGBSAc8z4L.iUBOjiti/b0.3bWnEyDbJD7CJO6MT.e',0,'athlete4');
/*!40000 ALTER TABLE `user_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_plan`
--

DROP TABLE IF EXISTS `weight_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weight_plan` (
  `id` bigint NOT NULL,
  `athlete_id` varchar(255) DEFAULT NULL,
  `daily_calorie_goal` bigint DEFAULT NULL,
  `preference` varchar(255) DEFAULT NULL,
  `start_weight` bigint DEFAULT NULL,
  `target_weight` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_plan`
--

LOCK TABLES `weight_plan` WRITE;
/*!40000 ALTER TABLE `weight_plan` DISABLE KEYS */;
INSERT INTO `weight_plan` VALUES (1,'ATH_00002',2000,'indian',50,60);
/*!40000 ALTER TABLE `weight_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_plan_seq`
--

DROP TABLE IF EXISTS `weight_plan_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weight_plan_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_plan_seq`
--

LOCK TABLES `weight_plan_seq` WRITE;
/*!40000 ALTER TABLE `weight_plan_seq` DISABLE KEYS */;
INSERT INTO `weight_plan_seq` VALUES (51);
/*!40000 ALTER TABLE `weight_plan_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 21:34:57
