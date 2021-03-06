-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: linkd
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Current Database: `linkd`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `linkd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `linkd`;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `action_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_position` varchar(10) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `action_type` varchar(50) DEFAULT NULL,
  `other_stuff` varchar(20) DEFAULT NULL,
  `start_action` date NOT NULL,
  `end_action` date DEFAULT '2021-07-07',
  `schedule` time NOT NULL,
  `action_town` varchar(20) DEFAULT NULL,
  `action_location` varchar(20) DEFAULT NULL,
  `other_location` varchar(20) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `speaker` tinyint(1) DEFAULT NULL,
  `speaker_suggestion` varchar(20) DEFAULT NULL,
  `speaker_transfer` tinyint(1) NOT NULL DEFAULT '0',
  `speaker_accommodation` tinyint(1) NOT NULL DEFAULT '0',
  `meeting_agenda` varchar(300) DEFAULT NULL,
  `meeting_theme` varchar(50) DEFAULT NULL,
  `pax_number` int NOT NULL,
  `action_field` varchar(100) DEFAULT NULL,
  `invited_doctors` varchar(300) DEFAULT NULL,
  `other_doctors` varchar(20) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'En attente de validation VM',
  `VM_validation` int DEFAULT NULL,
  `DSM_supervisor` int DEFAULT NULL,
  `CDP_supervisor` int DEFAULT NULL,
  `DSM_validation` int DEFAULT NULL,
  `CDP_validation` int DEFAULT NULL,
  `MED_validation` int DEFAULT NULL,
  `VM_rejection` int DEFAULT NULL,
  `DSM_rejection` int DEFAULT NULL,
  `CDP_rejection` int DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,1,'VM','yknaizia@gmail.com','Simosium National','Non sp├®cifi├®','2021-08-28','2021-08-30','03:10:00','Bizerte','Ain Mariem: Bizerte','Non sp├®cifi├®','productA',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'M├®decin G├®n├®ral','Amor Skander','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(2,1,'VM','yknaizia@gmail.com','Simosium International','Non sp├®cifi├®','2021-08-26','2021-09-03','02:14:00','Bizerte','Ras Djbal: Bizerte','Non sp├®cifi├®','productA',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'M├®decin de travail','Abdeljawed Hassen','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(3,1,'VM','yknaizia@gmail.com','Simosium International','Non sp├®cifi├®','2021-09-01','2021-09-05','00:18:00','Bizerte','Ain Mariem: Bizerte','Non sp├®cifi├®','productA',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'Neuphrologie','Memmi Yassmine','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(4,1,'VM','yknaizia@gmail.com','Congr├®s International','Non sp├®cifi├®','2021-08-27','2021-09-04','00:25:00','Medenine','Djerba: Medenine','Non sp├®cifi├®','productB',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'M├®decin G├®n├®ral,Neuphrologie','Amor Skander','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(5,1,'VM','yknaizia@gmail.com','Simosium National','Non sp├®cifi├®','2021-08-27','2021-08-28','03:30:00','Bizerte','Ras Djbal: Bizerte','Non sp├®cifi├®','productB',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'Chirugien','mskemin iheb','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(6,1,'VM','yknaizia@gmail.com','Simosium National','Non sp├®cifi├®','2021-09-01','2021-09-03','02:33:00','Bizerte','Ain Mariem: Bizerte','Non sp├®cifi├®','productB',1,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'Neuphrologie','Memmi Yassmine','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(7,1,'VM','yknaizia@gmail.com','Simosium International','Non sp├®cifi├®','2021-08-26','2021-08-31','12:20:00','Bizerte','Ras Djbal: Bizerte','Non sp├®cifi├®','productB',0,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'Chirugien','Knaizia Yassine','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,NULL,NULL,NULL,NULL),(8,1,'VM','yknaizia@gmail.com','Simosium National','Non sp├®cifi├®','2021-09-04','2021-09-05','23:03:00','Medenine','Djerba: Medenine','Non sp├®cifi├®','productC',1,'Non sp├®cifi├®',0,0,'/calendar/IMG_9566.JPG','1',1,'M├®decin G├®n├®ral','Amor Skander','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(9,1,'VM','yknaizia@gmail.com','Simosium International','Non sp├®cifi├®','2021-08-31','2021-09-01','13:28:00','Bizerte','Ain Mariem: Bizerte','Non sp├®cifi├®','productA',1,'Non sp├®cifi├®',0,0,'/calendar/IMG_9566.JPG','1',1,'M├®decin G├®n├®ral','Amor Skander','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(10,1,'VM','yknaizia@gmail.com','Projet','Italy','2021-08-30','2021-08-31','12:30:00','Medenine','Djerba: Medenine','Non sp├®cifi├®','productB',0,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'Neuphrologie','Memmi Yassmine','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,NULL,NULL,NULL,NULL),(11,1,'VM','yknaizia@gmail.com','Projet','London','2021-08-31','2021-09-01','13:10:00','Medenine','Djerba: Medenine','Non sp├®cifi├®','productB',0,'1',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','aa',12,'Chirugien,Generaliste','mskemin iheb,Bouazizi Ashref','1','Non sp├®cifi├®','Refus├®',1,4,3,NULL,NULL,NULL,NULL,NULL,3),(12,1,'VM','yknaizia@gmail.com','Projet','Non sp├®cifi├®','2021-08-30','2021-09-02','14:23:00','Medenine','Djerba: Medenine','Non sp├®cifi├®','productB',1,'Non sp├®cifi├®',0,0,'/calendar/IMG_9566.JPG','1',1,'Neuphrologie','Memmi Yassmine','Non sp├®cifi├®','Non sp├®cifi├®','Valid├®',1,4,3,NULL,3,7,NULL,NULL,NULL),(13,1,'VM','yknaizia@gmail.com','Simosium International','Non sp├®cifi├®','2021-08-30','2021-09-02','13:48:00','Tunis','Hay tahrir: Tunis','Non sp├®cifi├®','productB',0,'Non sp├®cifi├®',0,0,'https://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar1_big.png','1',1,'M├®decin G├®n├®ral','Amor Skander','Non sp├®cifi├®','Non sp├®cifi├®','En attente de validation CDP',1,4,3,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_fname` varchar(20) DEFAULT NULL,
  `doctor_lname` varchar(20) DEFAULT NULL,
  `doctor_age` int NOT NULL,
  `doctor_field` varchar(20) DEFAULT NULL,
  `doctor_potential` varchar(20) DEFAULT NULL,
  `VM_supervisors` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Asma','Jaziri',32,'M├®decin de travail','A','1,8'),(4,'Skander','Amor',35,'M├®decin G├®n├®ral','B','1,7'),(5,'Yassmine','Memmi',35,'Neuphrologie','B','1,7'),(6,'Hassen','Abdeljawed',35,'M├®decin de travail','A','1,7'),(7,'Ashref','Bouazizi',35,'Generaliste','C','1,7'),(8,'Mhamed','Bedhief',35,'M├®decin enfant','C','1,7'),(9,'Mhamed','emin',35,'M├®decin enfant','C','1,7'),(10,'iheb','mskemin',35,'Chirugien','B','1,7'),(11,'Yassine','Knaizia',35,'Chirugien','A','1,7,9'),(12,'Amira','Magroun',35,'Chirugien','undefined','1,7,9'),(13,'Amira','Magroun',35,'M├®decin de travail','undefined','1,7,9'),(14,'Amira','Magroun',35,'Chirugien','C','1,7,9'),(15,'Amira','Magroun',35,'Chirugien','C','1,7,9');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localisation` (
  `localisation_id` int NOT NULL AUTO_INCREMENT,
  `localisation_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`localisation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localisation`
--

LOCK TABLES `localisation` WRITE;
/*!40000 ALTER TABLE `localisation` DISABLE KEYS */;
INSERT INTO `localisation` VALUES (1,'Tunis'),(2,'Bizerte'),(3,'Medenine'),(4,'Le Kef');
/*!40000 ALTER TABLE `localisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `notification_name` varchar(200) DEFAULT NULL,
  `notification_sender` int DEFAULT NULL,
  `notification_VM_supervisor` int DEFAULT NULL,
  `notification_DSM_supervisor` int DEFAULT NULL,
  `notification_CDP_supervisor` int DEFAULT NULL,
  `markAsRead_VM_supervisor` tinyint(1) NOT NULL DEFAULT '0',
  `markAsRead_DSM_supervisor` tinyint(1) NOT NULL DEFAULT '0',
  `markAsRead_CDP_supervisor` tinyint(1) NOT NULL DEFAULT '0',
  `recieved_since` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:21:05.813Z'),(2,'Action avec id 2 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:24:11.343Z'),(3,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:25:56.829Z'),(4,'Action avec id 4 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:27:02.759Z'),(5,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:30:28.662Z'),(6,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-03T14:32:01.133Z'),(7,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® en retour avec modification de la part du DSM yassine.knaizia@esprit.tn pour la raison nnnnnnnn',4,1,NULL,3,1,0,1,'2021-08-03T14:48:11.197Z'),(8,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-08T22:54:39.323Z'),(9,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® en retour avec modification de la part du CDP cdp@gmail.com pour la raison aaaa',3,1,2,NULL,1,1,0,'2021-08-08T22:55:26.046Z'),(10,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-09T09:40:22.108Z'),(11,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-09T09:40:45.449Z'),(12,'Action avec id 9 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-09T09:43:38.991Z'),(13,'Action avec id 7 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-09T10:41:22.526Z'),(14,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-18T21:57:13.410Z'),(15,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-18T21:57:50.979Z'),(16,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-18T21:58:49.355Z'),(17,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T16:22:29.805Z'),(18,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T16:24:46.961Z'),(19,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T16:25:56.259Z'),(20,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T16:26:01.849Z'),(21,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T17:08:13.982Z'),(22,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T17:08:31.249Z'),(23,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T17:08:49.180Z'),(24,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T17:09:26.557Z'),(25,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:13:59.384Z'),(26,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:13:59.384Z'),(27,'Action avec id 12 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T18:15:14.023Z'),(28,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T18:15:38.584Z'),(29,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T18:15:56.064Z'),(30,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:16:18.984Z'),(31,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:16:18.984Z'),(32,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T18:17:38.001Z'),(33,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T18:18:04.816Z'),(34,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T18:19:00.608Z'),(35,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T18:21:20.832Z'),(36,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:21:33.016Z'),(37,'Action avec id 14 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T18:21:33.016Z'),(38,'Action avec id 15 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T22:47:27.061Z'),(39,'Action avec id 15 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T22:50:25.887Z'),(40,'Action avec id 15 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T22:50:58.471Z'),(41,'Action avec id 15 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T22:50:58.471Z'),(42,'Action avec id 16 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T22:52:22.623Z'),(43,'Action avec id 16 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T22:52:39.886Z'),(44,'Action avec id 16 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T22:55:37.350Z'),(45,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:05:00.181Z'),(46,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:05:09.502Z'),(47,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:05:24.150Z'),(48,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:05:28.182Z'),(49,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:06:41.021Z'),(50,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:07:02.415Z'),(51,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:07:15.686Z'),(52,'Action avec id 1 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T23:07:35.887Z'),(53,'Action avec id 2 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:10:55.535Z'),(54,'Action avec id 2 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:11:09.583Z'),(55,'Action avec id 2 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:11:25.873Z'),(56,'Action avec id 2 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T23:11:49.790Z'),(57,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:15:48.126Z'),(58,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:16:06.337Z'),(59,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® en retour avec modification de la part du MED med@gmail.com pour la raison hhhhhh',7,1,NULL,NULL,1,0,0,'2021-08-22T23:17:32.277Z'),(60,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:17:52.250Z'),(61,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:18:14.711Z'),(62,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:20:23.888Z'),(63,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:20:37.543Z'),(64,'Action avec id 4 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:21:24.999Z'),(65,'Action avec id 4 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:21:47.984Z'),(66,'Action avec id 4 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:25:52.311Z'),(67,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:26:29.080Z'),(68,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:26:42.447Z'),(69,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T23:26:56.953Z'),(70,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:27:08.423Z'),(71,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:27:10.398Z'),(72,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:27:19.338Z'),(73,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:28:13.071Z'),(74,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:28:16.800Z'),(75,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:28:40.055Z'),(76,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:28:42.810Z'),(77,'Action avec id 5 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:29:17.497Z'),(78,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-22T23:30:08.287Z'),(79,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-22T23:30:31.199Z'),(80,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-22T23:30:56.848Z'),(81,'Action avec id 6 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-22T23:31:17.313Z'),(82,'Action avec id 7 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-24T10:17:42.371Z'),(83,'Action avec id 7 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-24T10:18:18.753Z'),(84,'Action avec id 3 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-24T10:20:01.983Z'),(85,'Action avec id 4 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-24T10:22:00.223Z'),(86,'Action avec id 7 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-24T10:22:47.161Z'),(87,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-29T20:01:44.774Z'),(88,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-29T20:02:26.634Z'),(89,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-29T20:04:22.421Z'),(90,'Action avec id 8 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,1,0,0,'2021-08-30T09:07:45.990Z'),(91,'Action avec id 9 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-30T09:25:37.207Z'),(92,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-30T09:27:58.143Z'),(93,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-30T10:12:44.513Z'),(94,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® en retour avec modification de la part du DSM yassine.knaizia@esprit.tn pour la raison ydaydazhdaz',4,1,NULL,3,1,0,1,'2021-08-30T10:15:22.953Z'),(95,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,1,1,1,'2021-08-30T10:16:06.391Z'),(96,'Action avec id 11 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,1,0,1,'2021-08-30T10:16:21.721Z'),(97,'Action avec id 11 du client yknaizia@gmail.com a ├®t├® rejet├®e de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,1,0,0,'2021-08-30T10:17:21.861Z'),(98,'Action avec id 12 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,0,1,1,'2021-08-30T10:20:37.200Z'),(99,'Action avec id 12 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,0,0,1,'2021-08-30T10:21:07.778Z'),(100,'Action avec id 12 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,0,0,0,'2021-08-30T10:21:40.722Z'),(101,'Action avec id 12 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,0,0,0,'2021-08-30T10:35:44.146Z'),(102,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,0,0,0,'2021-08-30T10:37:30.073Z'),(103,'Action avec id 9 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,0,0,0,'2021-08-30T10:39:51.497Z'),(104,'Action avec id 9 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,0,0,0,'2021-08-30T10:43:33.178Z'),(105,'Action avec id 10 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet cdp@gmail.com!',3,1,2,NULL,0,0,0,'2021-08-30T10:45:10.762Z'),(106,'Action avec id 9 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du chef de projet med@gmail.com!',7,1,NULL,NULL,0,0,0,'2021-08-30T10:45:32.418Z'),(107,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® envoy├®e et en attente de validation DSM!',1,1,4,3,0,1,0,'2021-08-30T10:47:04.633Z'),(108,'Action avec id 13 de la part du client yknaizia@gmail.com a ├®t├® valid├®e avec succ├®s de la part du DSM yassine.knaizia@esprit.tn et en attente de validation CDP',4,1,NULL,3,0,0,0,'2021-08-30T10:47:24.147Z');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_position` varchar(20) DEFAULT 'VM',
  `VM_supervisor` int DEFAULT NULL,
  `DSM_supervisor` int DEFAULT NULL,
  `CDP_supervisor` int DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT 'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',
  `resetPasswordToken` varchar(70) DEFAULT NULL,
  `resetPasswordExpires` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'yknaizia@gmail.com','$2a$10$JANLtGe/Hb2Oy8DUeXLXu.RbQPYZ8NDbbgHlCOfUDU.Xf/83zwj56','VM',NULL,4,3,'/edit-profile/IMG_9566.JPG',NULL,NULL),(2,'dsm@gmail.com','$2a$10$e.RRlhBcG3PpR20ezcNBW.DY9YrpoxNurHo1bDNkUPUSvE6gT4cwK','DSM',1,NULL,3,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(3,'cdp@gmail.com','$2a$10$e.RRlhBcG3PpR20ezcNBW.DY9YrpoxNurHo1bDNkUPUSvE6gT4cwK','CDP',NULL,2,NULL,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(4,'yassine.knaizia@esprit.tn','$2a$10$QGbSIlFx7S6cMFMTd7SLM.vW7szUDnniYtNy5D4hvLEND0zBmX4TO','DSM',1,NULL,3,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(5,'Wassim@gmail.com','$2a$10$4XxMUnTFvPXlUx0DlLuM0eKnZsSVoheLBODEYioymtwZKhyndJ6UO','VM',NULL,NULL,NULL,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(6,'a@gmail.com','$2a$10$DAgILXuAJrxMOVSWlSeAYe9pq7wm2tg/hpPyMMrdkbhkrnmVO4coq','VM',NULL,NULL,NULL,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(7,'med@gmail.com','$2a$10$Cr2OYHDrWNP5Cf28y3z6GO08woWjd/fnQuhGYcyk16EDChvG21IIm','MED',NULL,NULL,NULL,'https://i.pinimg.com/originals/2c/b5/b7/2cb5b7bfa9506a980435078b0d41379d.gif',NULL,NULL),(9,'wass@gmail.com','$2a$10$de2YgD/t4WoyjOBbFZT7LeWjbVm6cFR8y8RByAaRs4dnkon61C0hy','VM',NULL,NULL,NULL,'/edit-profile/IMG_9300.JPG',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-31 10:25:06
