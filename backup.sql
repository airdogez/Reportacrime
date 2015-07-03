-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: reportacrime_development
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Current Database: `reportacrime_development`
--

/*!40000 DROP DATABASE IF EXISTS `reportacrime_development`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `reportacrime_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `reportacrime_development`;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@site.com','$2a$10$./qXfwEFQgnwYQx5CQcLX.fVPugZ6oEGdhLY3Io3ZUQtebw7kbGKG',NULL,NULL,'2015-05-09 19:05:18',3,'2015-05-10 02:45:38','2015-05-10 01:15:09','200.0.118.173','200.0.118.173','2015-05-09 15:12:17','2015-05-10 02:45:38');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crimen a mano armada','Categoria de crimen a mano armada','2015-05-08 20:08:48','2015-05-08 20:08:48'),(2,'Accidente','Accidente de trafico','2015-05-08 20:09:05','2015-05-08 20:09:05');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (4,'La Molina','2015-05-09 15:13:01','2015-05-09 15:13:01');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_images`
--

DROP TABLE IF EXISTS `report_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `report_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_report_images_on_report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_images`
--

LOCK TABLES `report_images` WRITE;
/*!40000 ALTER TABLE `report_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reports_on_category_id` (`category_id`),
  KEY `index_reports_on_user_id` (`user_id`),
  KEY `index_reports_on_district_id` (`district_id`),
  KEY `index_reports_on_status_id` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (5,'Adsadas','sadfasdfsdfasdf',1,5,4,'23432rffa',1,'2015-05-09 16:16:46','2015-05-09 16:16:46',NULL,NULL,'asdfasdf234',NULL,NULL),(6,'dfgfdsg','dfsgsdfg',1,5,4,'3542rewfas',1,'2015-05-09 16:20:02','2015-05-09 16:20:02',NULL,NULL,'dfadf',NULL,NULL),(7,'Derpo','Derp',1,5,4,'Derpo derped',1,'2015-05-09 16:35:37','2015-05-09 16:35:37',-12.0824,-76.9856,'Av. Javier Prado',NULL,NULL),(8,'Neim','Deskripzhion',2,6,4,'Detailz',1,'2015-05-09 18:56:08','2015-05-09 18:56:08',NULL,NULL,'Adrezz',NULL,NULL),(9,'Ebola','Its catching up',2,7,4,'Who would hace tought',1,'2015-05-09 19:12:06','2015-05-09 19:12:06',48.8584,2.29448,'eiffel tower',NULL,NULL),(10,'TEst2','DETEDFSGDGFGSDGds\r\nfgdsfGSDFGsdfg\r\ndfsgsdf\r\ngs\r\ndfg',1,5,4,'DEREGE',1,'2015-05-09 19:28:53','2015-05-09 19:28:53',-34.4301,-58.7974,'La Camelias',NULL,NULL),(11,'TEst Images','Tesing images upload',1,5,4,'@ Images',1,'2015-05-09 19:31:16','2015-05-09 19:31:16',-12.082,-76.9282,'La molina',NULL,NULL),(12,'','',1,5,4,'',1,'2015-05-09 19:48:05','2015-05-09 19:48:05',NULL,NULL,'',NULL,1),(13,'Test 2','Test report',2,8,4,'RGGDFSDFg',1,'2015-05-10 01:12:00','2015-05-10 01:12:00',-12.1416,-76.9918,'Surco',NULL,1),(14,'Test Report','Description',2,9,4,'Details',1,'2015-05-10 02:43:07','2015-05-10 02:43:07',-12.0892,-77.0236,'Javier prado',NULL,1),(15,'onho','Irjejd',2,10,4,'Ajajdjene',1,'2015-05-11 00:07:42','2015-05-11 00:09:39',-12.082,-76.9282,'la molina',NULL,1);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150508183307'),('20150508183955'),('20150508184107'),('20150508184317'),('20150508184840'),('20150508184841'),('20150508184842'),('20150508184843'),('20150508184844'),('20150508185327'),('20150508185350'),('20150508185707'),('20150508185739'),('20150508185926'),('20150509041533'),('20150509043417'),('20150509143258'),('20150509171603'),('20150509194210');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'On Going','2015-05-08 20:10:04','2015-05-08 20:10:04'),(2,'Cancelled','2015-05-08 20:10:11','2015-05-08 20:10:11'),(3,'Recived','2015-05-08 20:10:20','2015-05-08 20:10:20'),(4,'Closed','2015-05-08 20:10:31','2015-05-08 20:10:31');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `district_id` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_district_id` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aqwssama@gmail.com','$2a$10$Wf1pF/0I5kMceCKwMJM9vO5ZUl6jXk8EOSHv6JChg01iylw/66OS.',NULL,NULL,NULL,1,'2015-05-09 05:04:46','2015-05-09 05:04:46','181.66.91.121','181.66.91.121','2015-05-09 05:04:46','2015-05-09 05:04:46',NULL,NULL,NULL,NULL,NULL),(2,'aqwssama2@gmail.com','$2a$10$zR37OcxAfhoLZVpHatz7h.vJFApG62d8GMDTbXXG98hBUEi3Q/GEa',NULL,NULL,NULL,1,'2015-05-09 05:45:32','2015-05-09 05:45:32','181.66.91.121','181.66.91.121','2015-05-09 05:45:32','2015-05-09 05:45:32',NULL,NULL,NULL,NULL,NULL),(3,'aqws3@fmail.com','$2a$10$bxzvE0oMJWUUWmHiDPbsyeyd53DCzgjGcXRs6OYBBTqTCITFV66Ta',NULL,NULL,NULL,2,'2015-05-09 14:04:46','2015-05-09 05:53:29','181.66.91.121','181.66.91.121','2015-05-09 05:53:29','2015-05-09 14:04:46',NULL,NULL,NULL,NULL,NULL),(4,'aqws3@f3mail.com','$2a$10$5o/AcVbsbo3GhBywB3swYuuVQaCG.tngYuebjSyo.NE24KOcF45SG',NULL,NULL,NULL,1,'2015-05-09 06:01:26','2015-05-09 06:01:26','181.66.91.121','181.66.91.121','2015-05-09 06:01:26','2015-05-09 06:01:26','andres','recedf',NULL,NULL,234545),(5,'aaaaa@gmail.com','$2a$10$FToKRkMvKfJr.tnR1jHB4OIdMlwkUBYnnfAzlnbA39154so5gch76',NULL,NULL,NULL,4,'2015-05-09 16:43:26','2015-05-09 14:22:57','201.230.106.51','181.66.91.121','2015-05-09 14:02:19','2015-05-09 16:43:26','Andres','Revolledo',NULL,NULL,3948234),(6,'123124@failtest.ke','$2a$10$I1YTuhAv90CbLh5VGWGANO7t.6ZgcG4ggB3YMAW2rUk203c2Ud6a2',NULL,NULL,NULL,1,'2015-05-09 18:55:21','2015-05-09 18:55:21','190.43.18.106','190.43.18.106','2015-05-09 18:55:21','2015-05-09 18:55:21','123','%',NULL,NULL,NULL),(7,'tezt@ded.com','$2a$10$wFbFoEGZWT0N.rxM8hhBDe14pYX9gdtaNEJWMkx.p4ZyKVFtE7O7K',NULL,NULL,NULL,1,'2015-05-09 19:09:43','2015-05-09 19:09:43','181.67.132.111','181.67.132.111','2015-05-09 19:09:43','2015-05-09 19:09:43','Derpo','Herpz',NULL,NULL,998643518),(8,'aaa@gmail.com','$2a$10$KYM.jmYFi8PZBoD.tcM50OPWxPb.tTKSLv61DkJ/9def/rfn4ux42',NULL,NULL,NULL,1,'2015-05-10 01:11:39','2015-05-10 01:11:39','200.0.118.173','200.0.118.173','2015-05-10 01:11:39','2015-05-10 01:11:39','andres','revolledo',NULL,NULL,23435436),(9,'test@test.com','$2a$10$97AdOknlvY//N5KFi0Yag.GddVyAYrVlxGah8KKSu6/1AjVPieEwi',NULL,NULL,NULL,1,'2015-05-10 02:41:26','2015-05-10 02:41:26','200.0.118.173','200.0.118.173','2015-05-10 02:41:26','2015-05-10 02:41:26','Andres','Revolledo',NULL,NULL,12345678),(10,'tedt@trst.com','$2a$10$0frB3FuG4y9ubpr7fhaJJOxLRzxYAJMPdakpsNKSPMFlyY9FKdNvi',NULL,NULL,NULL,1,'2015-05-11 00:06:43','2015-05-11 00:06:43','66.102.8.156','66.102.8.156','2015-05-11 00:06:43','2015-05-11 00:06:43','ada','galvez',NULL,NULL,12345678);
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

-- Dump completed on 2015-05-26  7:09:40
