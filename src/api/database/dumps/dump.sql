-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-1:10.5.8+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydb`;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` double(8,2) NOT NULL,
  `payed` tinyint(1) NOT NULL,
  `recorded` tinyint(1) NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,9619.35,0,0,716,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(2,5235.15,1,0,914,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(3,2605.43,1,0,670,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(4,178.80,0,1,881,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(5,6243.80,1,0,713,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(6,2231.76,1,1,652,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(7,2574.49,0,1,97,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(8,2938.57,0,1,627,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(9,2921.53,1,1,291,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(10,7919.27,0,0,656,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(11,6105.41,1,0,321,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(12,3178.96,1,0,535,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(13,5309.70,0,0,244,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(14,5406.31,0,1,930,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(15,3637.24,1,0,765,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(16,2512.82,1,0,497,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(17,3229.82,1,1,729,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(18,1342.03,1,1,87,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(19,7298.37,1,0,209,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(20,4248.93,0,0,191,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(21,2477.67,1,0,710,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(22,3547.11,0,1,189,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(23,8891.97,0,1,25,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(24,6456.34,0,0,256,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(25,7653.75,1,0,938,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(26,2855.53,0,1,962,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(27,1259.48,1,1,297,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(28,4975.56,0,1,534,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(29,9253.58,1,1,634,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(30,7981.31,1,0,599,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(31,4809.63,0,1,424,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(32,9532.80,0,0,35,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(33,8128.65,0,1,91,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(34,3811.68,0,0,431,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(35,5767.64,1,0,548,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(36,1644.96,0,0,194,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(37,1979.34,0,0,230,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(38,566.42,1,1,809,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(39,8149.40,0,1,428,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(40,5990.56,0,1,492,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(41,7232.38,0,1,746,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(42,6892.25,0,1,770,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(43,6296.21,0,1,743,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(44,6723.87,0,1,281,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(45,1102.42,1,0,731,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(46,7129.77,1,0,283,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(47,2671.90,1,0,834,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(48,6028.02,1,1,423,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(49,2226.86,1,1,302,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(50,5109.26,0,0,37,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(51,5053.81,1,1,507,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(52,8665.02,0,0,292,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(53,6584.97,1,1,230,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(54,3854.11,0,1,834,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(55,7063.86,1,0,19,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(56,5246.11,0,0,774,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(57,9655.72,1,0,222,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(58,2864.13,1,1,182,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(59,1642.71,1,0,811,'2021-05-16 23:10:15','2021-05-16 23:10:15'),(60,5737.70,1,1,166,'2021-05-16 23:10:15','2021-05-16 23:10:15');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editcount`
--

DROP TABLE IF EXISTS `editcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editcount` (
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`username`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editcount`
--

LOCK TABLES `editcount` WRITE;
/*!40000 ALTER TABLE `editcount` DISABLE KEYS */;
INSERT INTO `editcount` VALUES ('UserA','Apples',1),('UserA','Bananas',1),('UserA','Durian',1),('UserB','Bananas',1),('UserB','Carrots',1),('UserB','Durian',1),('UserC','Apples',1),('UserC','Bananas',1),('UserC','Carrots',1),('UserC','Durian',1),('UserD','Durian',1),('UserE','Apples',1),('UserE','Bananas',1),('UserE','Carrots',1),('UserE','Durian',1),('UserF','Apples',1),('UserF','Bananas',1),('UserF','Carrots',1),('UserF','Durian',1),('UserG','Apples',1),('UserH','Bananas',1),('UserH','Carrots',1),('UserH','Durian',1);
/*!40000 ALTER TABLE `editcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_05_02_180000_create_product_categories_table',1),(5,'2020_05_02_180100_create_products_table',1),(6,'2020_05_08_180100_create_bills_table',1),(7,'2020_05_16_120000_create_edit_count_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'kbne','2021-05-16 23:10:13','2021-05-16 23:10:13'),(2,'gokf','2021-05-16 23:10:13','2021-05-16 23:10:13'),(3,'tqnm','2021-05-16 23:10:13','2021-05-16 23:10:13'),(4,'ymxt','2021-05-16 23:10:13','2021-05-16 23:10:13'),(5,'hmdh','2021-05-16 23:10:13','2021-05-16 23:10:13'),(6,'lsak','2021-05-16 23:10:13','2021-05-16 23:10:13'),(7,'wzeb','2021-05-16 23:10:13','2021-05-16 23:10:13'),(8,'vhtr','2021-05-16 23:10:13','2021-05-16 23:10:13'),(9,'owmc','2021-05-16 23:10:13','2021-05-16 23:10:13'),(10,'wyul','2021-05-16 23:10:13','2021-05-16 23:10:13');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `product_categories_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_categories_id_foreign` (`product_categories_id`),
  CONSTRAINT `products_product_categories_id_foreign` FOREIGN KEY (`product_categories_id`) REFERENCES `product_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'lcql','qing',2158.11,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(2,'mbrx','kizz',8879.00,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(3,'lfwc','cjmq',246.91,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(4,'dweh','mgfv',449.99,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(5,'elvp','zyhw',7059.26,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(6,'kasz','lxlm',3288.29,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(7,'uumi','wrap',7757.06,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(8,'wvoc','rcbf',2914.37,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(9,'dxqt','mwik',5046.90,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(10,'biwl','odnh',996.84,1,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(11,'tvix','yfbi',4524.26,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(12,'pkdy','eqtf',4843.71,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(13,'avox','lmrv',470.86,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(14,'ylyl','erqt',8675.41,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(15,'rdee','bamh',5819.80,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(16,'whyr','ggru',3975.77,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(17,'cvte','cpry',4113.24,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(18,'gjft','ayig',8605.08,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(19,'feqc','bdvg',369.28,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(20,'vumh','nzaz',5940.68,2,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(21,'kutp','hdxm',2700.69,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(22,'pcwb','veed',3047.33,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(23,'qfmc','pkng',3299.77,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(24,'ezle','lkzv',1539.39,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(25,'dlwj','uieu',2179.79,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(26,'hmnr','ufsr',2690.14,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(27,'ztgs','glei',5267.80,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(28,'snbb','twqt',7493.65,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(29,'ssbn','svlp',585.89,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(30,'dpxm','lird',9715.30,3,'2021-05-16 23:10:13','2021-05-16 23:10:13'),(31,'ykhe','cvic',5874.62,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(32,'evfg','vnpu',6868.63,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(33,'marg','ieqk',2909.88,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(34,'xzgw','nqap',9233.39,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(35,'ltno','coea',9626.79,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(36,'hxko','ukeg',5536.12,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(37,'lvvy','mirq',7616.18,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(38,'kmrl','agtv',4390.83,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(39,'uzgy','crfz',9263.30,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(40,'jfal','nusw',1212.47,4,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(41,'zghk','zupy',2720.18,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(42,'jyyz','zpnt',6758.41,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(43,'hwok','qngd',3569.29,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(44,'dsll','lpdr',9792.97,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(45,'gmkp','covu',7356.53,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(46,'mbpl','xxlg',6718.72,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(47,'vica','vfzi',9270.55,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(48,'isek','fwrp',9433.40,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(49,'klws','hztc',5391.43,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(50,'axdy','qezp',8206.61,5,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(51,'djtj','qrjo',9779.37,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(52,'jfsz','jsva',228.75,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(53,'ojql','yuou',1902.30,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(54,'eacg','krjy',4405.58,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(55,'afyw','ibnb',9974.70,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(56,'zkmt','jzkg',1312.46,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(57,'hfgt','luwa',6986.65,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(58,'vwci','iumm',274.85,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(59,'hhcf','badg',4828.40,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(60,'wwxg','cxgh',9224.57,6,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(61,'odkf','fjoi',42.02,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(62,'zfwu','krmk',5745.67,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(63,'hghc','gndg',2755.53,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(64,'qmrr','dumm',1220.15,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(65,'mspb','dvps',9306.75,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(66,'pjxm','xzmi',4183.05,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(67,'eyyt','sqgu',201.01,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(68,'mirx','blmz',9230.07,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(69,'xdxa','isxz',517.09,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(70,'pppm','wkmi',5505.05,7,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(71,'jyid','hbjk',3582.51,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(72,'jwzp','bbiu',4163.19,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(73,'xljh','cwos',7312.98,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(74,'tjuw','psdu',2494.30,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(75,'pdcl','idnc',2848.83,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(76,'bjdj','xkuw',1169.08,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(77,'bqik','lwxr',4582.22,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(78,'aclc','fzka',2315.64,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(79,'wxnz','fadr',9371.98,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(80,'svnm','yrdt',7399.61,8,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(81,'bqoj','sdok',9486.48,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(82,'znyp','usel',3071.82,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(83,'ltyi','owyh',7226.70,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(84,'jogq','kqie',7593.72,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(85,'kryl','jkmr',6316.33,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(86,'nwuo','mffr',6375.56,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(87,'bjaf','bhkf',2822.52,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(88,'amrp','kpjv',6541.39,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(89,'xxvx','hpot',2805.19,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(90,'lsbt','ovub',6486.06,9,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(91,'ahha','gizz',2957.54,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(92,'ccwe','yybu',9457.49,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(93,'wawm','ibnm',1795.42,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(94,'wuxy','szll',4612.12,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(95,'shxm','emac',6149.54,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(96,'ztah','ohfa',7264.25,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(97,'jqhx','vvwa',3245.71,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(98,'kwwj','hwjf',8860.53,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(99,'ljaf','edxx',9655.10,10,'2021-05-16 23:10:14','2021-05-16 23:10:14'),(100,'ubrn','ljpm',7007.76,10,'2021-05-16 23:10:14','2021-05-16 23:10:14');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Loyal Bruen','admin@email.com','2021-05-16 23:10:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','o4cu8kqhjV','2021-05-16 23:10:13','2021-05-16 23:10:13');
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

-- Dump completed on 2021-05-16 23:48:06
