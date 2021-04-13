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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,10.00,1,1,1,'2021-04-13 09:33:51','2021-04-13 09:34:01'),(2,100.00,1,1,1,'2021-04-13 09:33:51','2021-04-13 09:34:01');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_05_02_180000_create_product_categories_table',1),(5,'2020_05_02_180100_create_products_table',1),(6,'2020_05_08_180100_create_bills_table',1);
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
INSERT INTO `product_categories` VALUES (1,'spfm','2021-04-10 03:57:02','2021-04-10 03:57:02'),(2,'zfid','2021-04-10 03:57:02','2021-04-10 03:57:02'),(3,'ihmd','2021-04-10 03:57:02','2021-04-10 03:57:02'),(4,'othg','2021-04-10 03:57:02','2021-04-10 03:57:02'),(5,'mszb','2021-04-10 03:57:02','2021-04-10 03:57:02'),(6,'zrbf','2021-04-10 03:57:02','2021-04-10 03:57:02'),(7,'imxj','2021-04-10 03:57:02','2021-04-10 03:57:02'),(8,'riob','2021-04-10 03:57:02','2021-04-10 03:57:02'),(9,'qnev','2021-04-10 03:57:02','2021-04-10 03:57:02'),(10,'hrle','2021-04-10 03:57:02','2021-04-10 03:57:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'nvez','oskp',6221.58,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(2,'ghrx','xapq',3894.78,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(3,'zybz','zwcq',365.51,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(4,'uioc','rgyf',2105.55,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(5,'yhsd','hdnu',4266.16,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(6,'eghb','iyiy',3239.66,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(7,'udyw','clsu',7494.20,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(8,'jibo','sfwh',7347.94,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(9,'adqg','ahtg',4736.70,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(10,'qokq','clnn',1981.82,1,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(11,'bvil','gwep',852.56,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(12,'pqlk','uvbf',5946.38,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(13,'maew','jlqv',5677.57,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(14,'weda','myij',5005.25,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(15,'mpkh','mzdg',2850.26,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(16,'vdyj','lkit',3339.88,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(17,'qnve','hugx',2875.93,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(18,'jfum','bxzp',5046.08,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(19,'shyk','updw',5152.46,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(20,'pmrb','dwro',9844.19,2,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(21,'irzp','jqia',6062.02,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(22,'siup','htoi',9646.93,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(23,'gydh','ztln',9992.68,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(24,'jmaw','nafw',4079.77,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(25,'hiqo','frbp',6517.93,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(26,'wbfb','owfh',4639.23,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(27,'ljby','xblq',9636.26,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(28,'sznl','rulo',3005.65,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(29,'fmtj','nuqh',4079.09,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(30,'chzg','pnje',2764.70,3,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(31,'alhq','hxtp',1184.77,4,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(32,'kzwb','ovqk',8935.51,4,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(33,'yxqp','mqvl',4374.95,4,'2021-04-10 03:57:02','2021-04-10 03:57:02'),(34,'fyhr','ltsl',7184.17,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(35,'udsd','hprw',8637.35,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(36,'kans','mqrc',3338.88,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(37,'dvff','chix',1204.87,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(38,'wmih','rkkc',6159.61,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(39,'yakl','sdhp',9737.75,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(40,'agnn','aogh',9593.46,4,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(41,'otat','somh',5697.19,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(42,'sfii','qmef',2716.04,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(43,'htwl','yhqv',4833.34,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(44,'pemg','uokf',6468.31,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(45,'vcop','tduo',4892.84,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(46,'yyck','nkpn',7106.69,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(47,'yssr','aazp',6851.05,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(48,'dutx','lvxf',7685.51,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(49,'domu','uneg',8224.05,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(50,'aksi','xigm',7618.75,5,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(51,'lxok','odlc',2531.03,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(52,'oodl','buiz',8433.77,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(53,'mxap','gioq',281.66,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(54,'gcpc','didl',9756.92,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(55,'clad','zsqm',7591.52,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(56,'jzmq','ddut',1501.60,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(57,'mkmf','chqx',241.70,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(58,'bvqs','hiip',8513.24,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(59,'pyux','pvvo',8449.62,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(60,'yide','twaa',4366.25,6,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(61,'xaxy','gyws',3844.19,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(62,'tiad','ltos',4059.12,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(63,'xhkk','qicu',9230.15,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(64,'tmyc','gqjr',9108.77,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(65,'dqcd','tuhe',9950.90,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(66,'yvuz','clvu',4478.80,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(67,'ixcd','quhu',762.86,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(68,'ykib','vsxi',4791.44,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(69,'zszg','yxhe',1635.38,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(70,'ejwa','fcip',7380.96,7,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(71,'mpkf','wzjw',8692.89,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(72,'aher','zrtl',8657.19,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(73,'lxle','qgbd',8072.03,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(74,'zojt','yugh',1839.59,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(75,'ncqe','bpvs',3100.25,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(76,'simb','vxaj',531.16,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(77,'bjuc','ophf',9801.28,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(78,'efzj','ehwq',9813.12,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(79,'odbb','qupp',9460.26,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(80,'mjgc','nhjd',1057.28,8,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(81,'sifa','okaa',8651.99,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(82,'hpxa','ytbn',658.69,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(83,'abqv','njyf',6278.77,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(84,'xyes','jnoz',3448.07,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(85,'wzyo','qjvy',3791.40,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(86,'eafe','pdvc',6622.39,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(87,'fgpm','loth',6618.01,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(88,'vetr','mfpr',2342.91,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(89,'tiix','kfko',8715.34,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(90,'allx','itmb',752.12,9,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(91,'xskr','gqqn',9345.49,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(92,'hrwf','xdst',2832.73,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(93,'docu','bhwy',2520.58,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(94,'cfxz','nrvb',8804.64,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(95,'cmai','tmtd',9298.61,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(96,'wrmi','fqbl',3544.82,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(97,'cbqh','tjsd',1506.69,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(98,'pnzf','qykl',2005.22,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(99,'bhss','favw',4186.85,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(100,'pinx','ffyj',1394.17,10,'2021-04-10 03:57:03','2021-04-10 03:57:03'),(114,'product','new product',4990.90,1,'2021-04-13 10:24:46','2021-04-13 10:24:46'),(115,'product','new product',4990.90,1,'2021-04-13 12:10:40','2021-04-13 12:10:40'),(116,'product','new product',4990.90,1,'2021-04-13 12:10:51','2021-04-13 12:10:51');
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
INSERT INTO `users` VALUES (1,'Vernice Rau','admin@email.com','2021-04-10 03:57:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EI11eAYaky','2021-04-10 03:57:02','2021-04-10 03:57:02');
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

-- Dump completed on 2021-04-13 12:46:35
