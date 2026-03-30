-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hms
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','Test@12345','30-10-2022 11:42:05 AM');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `consultancyFees` int DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int DEFAULT NULL,
  `doctorStatus` int DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (3,'Dental Care',1,4,300,'2024-05-19','12:00 AM','2024-05-17 04:30:03',1,1,NULL),(4,'ENT',5,5,200,'2024-06-06','9:45 PM','2024-06-06 16:10:45',1,1,NULL),(5,'Dental Care',4,6,300,'2024-06-23','10:15 PM','2024-06-07 07:37:25',1,1,NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (4,'Dental Care','xyz','mumbai','300',123456789,'xyz@gmail.com','e10adc3949ba59abbe56e057f20f883e','2024-05-17 16:37:52',NULL),(5,'ENT','Rohan','Goa ','200',1234567891,'Rohan@gmail.com','e10adc3949ba59abbe56e057f20f883e','2024-05-17 16:43:25',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorslog`
--

LOCK TABLES `doctorslog` WRITE;
/*!40000 ALTER TABLE `doctorslog` DISABLE KEYS */;
INSERT INTO `doctorslog` VALUES (28,NULL,'xyz',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:38:53',NULL,0),(29,NULL,'xyz',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:40:58',NULL,0),(30,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:41:22',NULL,0),(31,5,'Rohan@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:44:00',NULL,1),(32,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-06 16:00:03',NULL,0);
/*!40000 ALTER TABLE `doctorslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorspecilization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorspecilization`
--

LOCK TABLES `doctorspecilization` WRITE;
/*!40000 ALTER TABLE `doctorspecilization` DISABLE KEYS */;
INSERT INTO `doctorspecilization` VALUES (1,'Orthopedics','2024-09-20 18:09:46',NULL),(2,'Internal Medicine','2022-10-30 18:09:57',NULL),(3,'Obstetrics and Gynecology','2022-10-30 18:10:18',NULL),(4,'Dermatology','2022-10-30 18:10:28',NULL),(5,'Pediatrics','2022-10-30 18:10:37',NULL),(6,'Radiology','2022-10-30 18:10:46',NULL),(7,'General Surgery','2022-10-30 18:10:56',NULL),(8,'Ophthalmology','2022-10-30 18:11:03',NULL),(9,'Anesthesia','2022-10-30 18:11:15',NULL),(10,'Pathology','2022-10-30 18:11:22',NULL),(11,'ENT','2022-10-30 18:11:30',NULL),(12,'Dental Care','2022-10-30 18:11:39',NULL),(13,'Dermatologists','2022-10-30 18:12:02',NULL),(14,'Endocrinologists','2022-10-30 18:12:10',NULL),(15,'Neurologists','2022-10-30 18:12:30',NULL);
/*!40000 ALTER TABLE `doctorspecilization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontactus`
--

DROP TABLE IF EXISTS `tblcontactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactus`
--

LOCK TABLES `tblcontactus` WRITE;
/*!40000 ALTER TABLE `tblcontactus` DISABLE KEYS */;
INSERT INTO `tblcontactus` VALUES (3,'Roshan','roshanchavan810@gmail.com',7028385216,'hello.....','2024-05-17 03:53:58',NULL,NULL,NULL),(4,'Roshan','roshanchavan810@gmail.com',7769943216,'Hello','2026-03-30 06:28:09',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblcontactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmedicalhistory`
--

DROP TABLE IF EXISTS `tblmedicalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmedicalhistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmedicalhistory`
--

LOCK TABLES `tblmedicalhistory` WRITE;
/*!40000 ALTER TABLE `tblmedicalhistory` DISABLE KEYS */;
INSERT INTO `tblmedicalhistory` VALUES (1,1,'80/120','120','85','98','Test','2022-11-06 13:19:41');
/*!40000 ALTER TABLE `tblmedicalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OpenningTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpage`
--

LOCK TABLES `tblpage` WRITE;
/*!40000 ALTER TABLE `tblpage` DISABLE KEYS */;
INSERT INTO `tblpage` VALUES (1,'aboutus','About Us','<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>',NULL,NULL,'2020-05-20 07:21:52',NULL),(2,'contactus','Contact Details','Lonere, Maharashtra, India','roshan@gmail.com',7769943216,'2020-05-20 07:24:07','9 AM to 6 PM');
/*!40000 ALTER TABLE `tblpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpatient`
--

DROP TABLE IF EXISTS `tblpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpatient` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Docid` int DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpatient`
--

LOCK TABLES `tblpatient` WRITE;
/*!40000 ALTER TABLE `tblpatient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (7,4,'roshanchavan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 04:27:25',NULL,1),(8,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 04:58:56',NULL,0),(9,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 04:59:00',NULL,0),(10,NULL,'johndoe12@test.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:23:45',NULL,0),(11,NULL,'Amit Kumar',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:24:07',NULL,0),(12,4,'roshanchavan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-05-17 16:46:11',NULL,1),(13,5,'chavanroshan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-06 15:55:24',NULL,1),(14,5,'chavanroshan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-06 16:06:12',NULL,1),(15,NULL,'chavanrohan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-07 07:32:05',NULL,0),(16,6,'chavanrohan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-07 07:32:25',NULL,1),(17,6,'chavanrohan810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-06-07 07:40:20',NULL,1),(18,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-09-26 13:00:40',NULL,0),(19,NULL,'admin',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-09-26 13:00:43',NULL,0),(20,7,'rc7028385216810@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-09-26 13:18:46',NULL,1),(21,8,'anas@2627',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-09-27 10:12:21',NULL,1),(22,NULL,'Swati',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2026-03-29 15:10:52',NULL,0),(23,NULL,'Swati',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2026-03-29 15:11:28',NULL,0),(24,NULL,'Swati',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2026-03-29 15:12:11',NULL,0),(25,9,'swati@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2026-03-29 15:25:51',NULL,1),(26,9,'swati@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2026-03-30 05:15:47',NULL,1);
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Roshan','At.Mangaon,402103, Raigad','Mangaon','male','roshanchavan810@gmail.com','1b084e5a64c118c6c1ecb06d9564ddbc','2024-05-17 04:26:47',NULL),(5,'Roshan','At.Mangaon,402103, Raigad','mahad','male','chavanroshan810@gmail.com','1b084e5a64c118c6c1ecb06d9564ddbc','2024-06-06 15:54:48',NULL),(6,'Ravi','At.Mangaon,402103, Raigad','Mangaon','male','chavanrohan810@gmail.com','865705f3d16ae6a06e4c8d9a8c473258','2024-06-07 07:31:12',NULL),(7,'Roshan Chavan','At.Mangaon,402104, Raigad','Mangaon','male','rc7028385216810@gmail.com','d9f41481bf687ab8e58f3d80b4e052ba','2024-09-26 13:18:00',NULL),(8,'Anas Khatri','Lonere','Lonere','male','anas@2627','a59f6a44bde15aa1a1166e219e4eb97e','2024-09-27 10:11:16',NULL),(9,'Swati','lonere','mangaon','male','swati@gmail.com','a6ab9140df0b4cff5b8b2c323da07f24','2026-03-29 15:07:34',NULL);
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

-- Dump completed on 2026-03-30 15:00:08
