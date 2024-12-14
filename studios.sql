-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: studios
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `studio_performance_data`
--

DROP TABLE IF EXISTS `studio_performance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studio_performance_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studio_id` int NOT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `filter_type` varchar(255) DEFAULT NULL,
  `campaign_type` varchar(255) DEFAULT NULL,
  `cpl` float DEFAULT NULL,
  `fb_budget` float DEFAULT NULL,
  `google_budget` float DEFAULT NULL,
  `cac_value` float DEFAULT NULL,
  `fb_ad_lead` float DEFAULT NULL,
  `non_fb_ad_lead` float DEFAULT NULL,
  `no_intro_sale` float DEFAULT NULL,
  `rollover_mem_sold` float DEFAULT NULL,
  `weekly_cancel` float DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `seven_day_revenue` varchar(255) DEFAULT NULL,
  `average_members` varchar(255) DEFAULT NULL,
  `paused_members` varchar(255) DEFAULT NULL,
  `lead_details` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `studio_id_idx` (`studio_id`),
  CONSTRAINT `studio_id` FOREIGN KEY (`studio_id`) REFERENCES `studios_fields` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio_performance_data`
--

LOCK TABLES `studio_performance_data` WRITE;
/*!40000 ALTER TABLE `studio_performance_data` DISABLE KEYS */;
INSERT INTO `studio_performance_data` VALUES (1,2,'2023-02-20','2023-02-26','weekly','Test Campaign',20,30,NULL,NULL,12,13,10,5,6,200,'1000','20','50',NULL,1,4,NULL,NULL,'2023-02-24 09:05:48','2023-02-24 09:05:48',NULL),(280,2,'2023-04-17','2023-04-23','weekly','Raja Mohan',100,23,NULL,NULL,10,5,10,5,5,5,'700','10','5',NULL,1,1,NULL,NULL,'2023-04-21 13:49:16','2023-04-21 13:49:16',NULL),(475,2,'2023-06-12','2023-06-18','weekly','15',16,17,18,NULL,19,20,21,22,24,23,'12','13','14',NULL,1,1,NULL,NULL,'2023-06-14 10:10:13','2023-06-14 10:10:13',NULL),(4303,4,'2024-08-19','2024-08-25','weekly','FitOver40',0,280,0,NULL,8,0,0,0,NULL,NULL,NULL,'145','24',NULL,1,18,NULL,NULL,'2024-08-25 18:01:07','2024-08-25 18:04:21',NULL),(4471,4,'2024-08-26','2024-09-01','weekly','FitOver40',0,278,0,NULL,3,0,0,0,NULL,NULL,NULL,'147','22',NULL,1,18,NULL,NULL,'2024-09-01 16:09:11','2024-09-01 18:04:28',NULL),(4662,4,'2024-09-02','2024-09-08','weekly','FitOver40',0,289,0,NULL,8,0,0,0,NULL,NULL,NULL,'125','22',NULL,1,18,NULL,NULL,'2024-09-08 18:31:25','2024-09-08 18:31:25',NULL),(4937,4,'2024-09-09','2024-09-15','weekly','28 day Kick starter',0,200,0,NULL,6,4,0,0,NULL,NULL,NULL,'120','25',NULL,1,146,NULL,NULL,'2024-09-16 23:59:53','2024-09-16 23:59:53',NULL),(4981,4,'2024-09-16','2024-09-22','weekly','Challange',0,132,0,NULL,7,0,0,0,NULL,NULL,NULL,'118','26',NULL,1,18,NULL,NULL,'2024-09-22 18:09:48','2024-09-22 18:18:59',NULL),(5134,4,'2024-09-23','2024-09-29','weekly','Challange',0,282,0,NULL,6,0,0,0,NULL,NULL,NULL,'114','28',NULL,1,18,NULL,NULL,'2024-09-29 18:09:50','2024-09-29 18:09:50',NULL),(5296,4,'2024-09-30','2024-10-06','weekly','Challenge',0,271.53,0,NULL,5,0,4,0,NULL,NULL,NULL,'109','31',NULL,1,18,NULL,NULL,'2024-10-06 20:40:53','2024-10-06 20:40:53',NULL),(5306,4,'2024-10-07','2024-10-13','weekly','FL | Singleton - ChallengeOct2024 - D1[I3,H1]',1.96,1.96,NULL,NULL,1,NULL,1,0,NULL,NULL,NULL,'113','27','[]',0,NULL,NULL,NULL,'2024-10-07 00:35:32','2024-10-13 19:19:19',NULL),(5471,4,'2024-10-07','2024-10-13','weekly',NULL,1.96,1.96,0,NULL,1,0,1,0,NULL,NULL,NULL,'113','27','[]',0,18,NULL,NULL,'2024-10-13 19:19:19','2024-10-13 19:20:21',NULL),(5472,4,'2024-10-07','2024-10-13','weekly','FL | Singleton - ChallengeOct2024 - D1[I3,H1]',1.96,1.96,0,NULL,1,NULL,1,0,NULL,NULL,NULL,'115','26','[]',1,18,NULL,NULL,'2024-10-13 19:20:21','2024-10-13 23:31:40',NULL),(5480,4,'2024-10-14','2024-10-20','weekly',NULL,0,0,NULL,NULL,0,NULL,4,0,NULL,NULL,NULL,'115','25','[]',1,NULL,NULL,NULL,'2024-10-14 00:53:00','2024-10-20 22:02:03',NULL),(5666,4,'2024-10-21','2024-10-27','weekly','FL | Singleton - 28 Day Transformation Program, FL | Singleton - 28DKNov - D1 [H,i2]',40.83,204.13,NULL,NULL,5,NULL,0,0,NULL,NULL,NULL,'117','22','[]',0,NULL,NULL,NULL,'2024-10-21 03:00:36','2024-10-27 18:31:19',NULL),(5808,4,'2024-10-21','2024-10-27','weekly','FL | Singleton - 28 Day Transformation Program, FL | Singleton - 28DKNov - D1 [H,i2]',40.83,204.13,0,NULL,5,NULL,0,0,NULL,NULL,NULL,'117','22','[]',1,18,NULL,NULL,'2024-10-27 18:31:19','2024-10-27 22:01:57',NULL),(5822,4,'2024-10-28','2024-11-03','weekly','FL | Singleton - 28DKNov - D1 [H,i2]',0,23.38,NULL,NULL,0,NULL,2,0,NULL,NULL,NULL,'116','20','[]',0,NULL,NULL,NULL,'2024-10-28 03:00:39','2024-11-03 18:21:25',NULL),(5969,4,'2024-10-28','2024-11-03','weekly','FL | Singleton - 28DKNov - D1 [H,i2]',0,23.38,0,139.77,0,NULL,2,0,NULL,NULL,NULL,'116','20','[]',1,18,NULL,NULL,'2024-11-03 18:21:25','2024-11-19 04:47:59',NULL),(5987,4,'2024-11-04','2024-11-10','weekly',NULL,0,0,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'114','21','[]',0,NULL,NULL,NULL,'2024-11-04 03:00:50','2024-11-10 20:36:21',NULL),(6207,4,'2024-11-04','2024-11-10','weekly',NULL,0,0,0,139.77,0,NULL,1,0,NULL,NULL,NULL,'114','21','[]',1,18,NULL,NULL,'2024-11-10 20:36:21','2024-11-19 04:47:59',NULL),(6219,4,'2024-11-11','2024-11-17','weekly',NULL,0,0,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'115','21','[]',0,NULL,NULL,NULL,'2024-11-11 03:00:48','2024-11-17 18:55:44',NULL),(6411,4,'2024-11-11','2024-11-17','weekly',NULL,0,0,0,139.77,0,2,1,0,NULL,NULL,NULL,'115','21','[]',1,18,NULL,NULL,'2024-11-17 18:55:44','2024-11-19 04:47:59',NULL),(6416,4,'2024-11-18','2024-11-24','weekly',NULL,0,0,NULL,139.77,0,NULL,0,0,NULL,NULL,NULL,'116','21',NULL,1,NULL,NULL,NULL,'2024-11-18 00:01:04','2024-11-19 04:47:59',NULL);
/*!40000 ALTER TABLE `studio_performance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios_fields`
--

DROP TABLE IF EXISTS `studios_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studios_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) DEFAULT NULL,
  `business_type` varchar(45) DEFAULT NULL,
  `franchise_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time_zone` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `country_code` varchar(45) DEFAULT NULL,
  `currency_symbol` varchar(45) DEFAULT NULL,
  `currency_text` varchar(45) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `primary_contact_user_id` int DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `updated_discount_code` varchar(255) DEFAULT NULL,
  `subs_expired` tinyint DEFAULT NULL,
  `restricted_access` tinyint DEFAULT NULL,
  `next_due_date` varchar(255) DEFAULT NULL,
  `has_mb_account` tinyint DEFAULT NULL,
  `is_mb_skipped` tinyint DEFAULT NULL,
  `mb_account_type` varchar(255) DEFAULT NULL,
  `cron_status` int DEFAULT NULL,
  `cron_last_updated` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios_fields`
--

LOCK TABLES `studios_fields` WRITE;
/*!40000 ALTER TABLE `studios_fields` DISABLE KEYS */;
INSERT INTO `studios_fields` VALUES (2,'a3bdfade-02fc-4313-9eec-a45bd5a75f80','gym',NULL,'Enoahisolution','Chennai',NULL,NULL,NULL,NULL,NULL,'studios/HdxWQ9YXfZvoPVjjJL56D2qGDcZtL8nsxAlUbCi6.png','https://portal-cloudtasker-co.s3.ap-southeast-2.amazonaws.com/studios/HdxWQ9YXfZvoPVjjJL56D2qGDcZtL8nsxAlUbCi6.png',99,2,15,15,5,NULL,NULL,NULL,'2023-12-24',NULL,NULL,NULL,0,NULL,'2023-10-30 18:14:35',1,'2023-02-23 19:16:22','2023-10-28 02:54:14',4),(3,'36f903ff-47cf-4957-bdbc-66453ccd22aa','gym',2,'F45 Training Edgeworth','Unit 2/15 Arnott Road Edgeworth 2285','Australia/Sydney','Australia','AU','$','AUD','studios/bn523JxH0azPwsMo6Tw1zsf7LGDYNFZ98oh8s0Bd.jpg','http://portal-cloudtasker-co.s3.ap-southeast-2.amazonaws.com/studios/bn523JxH0azPwsMo6Tw1zsf7LGDYNFZ98oh8s0Bd.jpg',13,2,5,5,6,NULL,NULL,NULL,'2026-10-01',NULL,NULL,NULL,0,NULL,NULL,NULL,'2023-02-24 03:24:07','2024-07-31 10:35:12',5),(4,'765ed949-b8a7-4819-9913-28f5bc4087be','gym',2,'F45 Training Singleton','21 Ryan Avenue, Singleton , NSW, Australia, NSW 2330','Australia/Sydney','Australia','AU','$','AUD','studios/F45_Default_Logo.jpg','https://portal-cloudtasker-co.s3.ap-southeast-2.amazonaws.com/studios/F45_Default_Logo.jpg',13,1,146,146,6,NULL,NULL,NULL,'2026-10-01',1,NULL,NULL,1,'2024-05-02',NULL,NULL,'2023-02-24 03:24:51','2024-07-31 10:35:13',146),(5,'ec9a8ffc-46d4-4e19-818d-13bf97cd83bb','gym',NULL,'Performance Dashboard','Hyderabad',NULL,NULL,NULL,NULL,NULL,'studios/PbloMTI52yyRigckYxm1flL2XidFhY3zvxGUlNJw.png','http://portal-cloudtasker-co.s3.ap-southeast-2.amazonaws.com/studios/PbloMTI52yyRigckYxm1flL2XidFhY3zvxGUlNJw.png',99,0,4,4,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2023-10-30 18:14:35',1,'2023-02-24 09:10:31','2023-06-07 16:11:31',4);
/*!40000 ALTER TABLE `studios_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14 14:12:15
