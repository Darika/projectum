-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: erp
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-05-02 10:08:21','2022-05-02 10:08:21','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_bill_account_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_bill_account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_bill_account_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_bill_account_details`
--

LOCK TABLES `wp_erp_acct_bill_account_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_bill_account_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_bill_account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_bill_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_bill_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `ledger_id` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_bill_details`
--

LOCK TABLES `wp_erp_acct_bill_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_bill_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_bills`
--

DROP TABLE IF EXISTS `wp_erp_acct_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_bills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_bills`
--

LOCK TABLES `wp_erp_acct_bills` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_cash_at_banks`
--

DROP TABLE IF EXISTS `wp_erp_acct_cash_at_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_cash_at_banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ledger_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `balance` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_cash_at_banks`
--

LOCK TABLES `wp_erp_acct_cash_at_banks` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_cash_at_banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_cash_at_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_chart_of_accounts`
--

DROP TABLE IF EXISTS `wp_erp_acct_chart_of_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_chart_of_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_chart_of_accounts`
--

LOCK TABLES `wp_erp_acct_chart_of_accounts` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_chart_of_accounts` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_chart_of_accounts` VALUES (1,'Asset','asset',NULL,NULL,NULL,NULL),(2,'Liability','liability',NULL,NULL,NULL,NULL),(3,'Equity','equity',NULL,NULL,NULL,NULL),(4,'Income','income',NULL,NULL,NULL,NULL),(5,'Expense','expense',NULL,NULL,NULL,NULL),(6,'Asset & Liability','asset_liability',NULL,NULL,NULL,NULL),(7,'Bank','bank',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_chart_of_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_currency_info`
--

DROP TABLE IF EXISTS `wp_erp_acct_currency_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_currency_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_currency_info`
--

LOCK TABLES `wp_erp_acct_currency_info` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_currency_info` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_currency_info` VALUES (1,'AED','د.إ',NULL,NULL,NULL,NULL),(2,'AFN','؋',NULL,NULL,NULL,NULL),(3,'ALL','L',NULL,NULL,NULL,NULL),(4,'AMD','AMD',NULL,NULL,NULL,NULL),(5,'ANG','ƒ',NULL,NULL,NULL,NULL),(6,'AOA','Kz',NULL,NULL,NULL,NULL),(7,'ARS','$',NULL,NULL,NULL,NULL),(8,'AUD','$',NULL,NULL,NULL,NULL),(9,'AWG','ƒ',NULL,NULL,NULL,NULL),(10,'AZN','₼',NULL,NULL,NULL,NULL),(11,'BAM','KM',NULL,NULL,NULL,NULL),(12,'BBD','$',NULL,NULL,NULL,NULL),(13,'BDT','৳',NULL,NULL,NULL,NULL),(14,'BGN','лв',NULL,NULL,NULL,NULL),(15,'BHD','.د.ب',NULL,NULL,NULL,NULL),(16,'BIF','Fr',NULL,NULL,NULL,NULL),(17,'BMD','$',NULL,NULL,NULL,NULL),(18,'BND','$',NULL,NULL,NULL,NULL),(19,'BOB','Bs.',NULL,NULL,NULL,NULL),(20,'BRL','R$',NULL,NULL,NULL,NULL),(21,'BSD','$',NULL,NULL,NULL,NULL),(22,'BTN','Nu.',NULL,NULL,NULL,NULL),(23,'BWP','P',NULL,NULL,NULL,NULL),(24,'BYN','Br',NULL,NULL,NULL,NULL),(25,'BYR','Br',NULL,NULL,NULL,NULL),(26,'BZD','$',NULL,NULL,NULL,NULL),(27,'CAD','$',NULL,NULL,NULL,NULL),(28,'CDF','Fr',NULL,NULL,NULL,NULL),(29,'CHF','Fr',NULL,NULL,NULL,NULL),(30,'CLP','$',NULL,NULL,NULL,NULL),(31,'CNY','¥',NULL,NULL,NULL,NULL),(32,'COP','$',NULL,NULL,NULL,NULL),(33,'CRC','₡',NULL,NULL,NULL,NULL),(34,'CUC','$',NULL,NULL,NULL,NULL),(35,'CUP','$',NULL,NULL,NULL,NULL),(36,'CVE','$',NULL,NULL,NULL,NULL),(37,'CZK','Kč',NULL,NULL,NULL,NULL),(38,'DJF','Fr',NULL,NULL,NULL,NULL),(39,'DKK','kr',NULL,NULL,NULL,NULL),(40,'DOP','$',NULL,NULL,NULL,NULL),(41,'DZD','د.ج',NULL,NULL,NULL,NULL),(42,'EGP','£',NULL,NULL,NULL,NULL),(43,'ERN','Nfk',NULL,NULL,NULL,NULL),(44,'ETB','Br',NULL,NULL,NULL,NULL),(45,'EUR','€',NULL,NULL,NULL,NULL),(46,'FJD','$',NULL,NULL,NULL,NULL),(47,'FKP','£',NULL,NULL,NULL,NULL),(48,'GBP','£',NULL,NULL,NULL,NULL),(49,'GEL','GEL',NULL,NULL,NULL,NULL),(50,'GGP','£',NULL,NULL,NULL,NULL),(51,'GHS','₵',NULL,NULL,NULL,NULL),(52,'GIP','£',NULL,NULL,NULL,NULL),(53,'GMD','D',NULL,NULL,NULL,NULL),(54,'GNF','Fr',NULL,NULL,NULL,NULL),(55,'GTQ','Q',NULL,NULL,NULL,NULL),(56,'GYD','$',NULL,NULL,NULL,NULL),(57,'HKD','$',NULL,NULL,NULL,NULL),(58,'HNL','L',NULL,NULL,NULL,NULL),(59,'HRK','kn',NULL,NULL,NULL,NULL),(60,'HTG','G',NULL,NULL,NULL,NULL),(61,'HUF','Ft',NULL,NULL,NULL,NULL),(62,'IDR','Rp',NULL,NULL,NULL,NULL),(63,'ILS','₪',NULL,NULL,NULL,NULL),(64,'IMP','£',NULL,NULL,NULL,NULL),(65,'INR','₹',NULL,NULL,NULL,NULL),(66,'IQD','ع.د',NULL,NULL,NULL,NULL),(67,'IRR','﷼',NULL,NULL,NULL,NULL),(68,'ISK','kr',NULL,NULL,NULL,NULL),(69,'JEP','£',NULL,NULL,NULL,NULL),(70,'JMD','$',NULL,NULL,NULL,NULL),(71,'JOD','د.ا',NULL,NULL,NULL,NULL),(72,'JPY','¥',NULL,NULL,NULL,NULL),(73,'KES','Sh',NULL,NULL,NULL,NULL),(74,'KGS','с',NULL,NULL,NULL,NULL),(75,'KHR','៛',NULL,NULL,NULL,NULL),(76,'KMF','Fr',NULL,NULL,NULL,NULL),(77,'KPW','₩',NULL,NULL,NULL,NULL),(78,'KRW','₩',NULL,NULL,NULL,NULL),(79,'KWD','د.ك',NULL,NULL,NULL,NULL),(80,'KYD','$',NULL,NULL,NULL,NULL),(81,'KZT','KZT',NULL,NULL,NULL,NULL),(82,'LAK','₭',NULL,NULL,NULL,NULL),(83,'LBP','ل.ل',NULL,NULL,NULL,NULL),(84,'LKR','Rs',NULL,NULL,NULL,NULL),(85,'LRD','$',NULL,NULL,NULL,NULL),(86,'LSL','L',NULL,NULL,NULL,NULL),(87,'LYD','ل.د',NULL,NULL,NULL,NULL),(88,'MAD','د.م.',NULL,NULL,NULL,NULL),(89,'MDL','L',NULL,NULL,NULL,NULL),(90,'MGA','Ar',NULL,NULL,NULL,NULL),(91,'MKD','ден',NULL,NULL,NULL,NULL),(92,'MMK','Ks',NULL,NULL,NULL,NULL),(93,'MNT','₮',NULL,NULL,NULL,NULL),(94,'MOP','P',NULL,NULL,NULL,NULL),(95,'MRO','UM',NULL,NULL,NULL,NULL),(96,'MUR','₨',NULL,NULL,NULL,NULL),(97,'MVR','MVR',NULL,NULL,NULL,NULL),(98,'MWK','MK',NULL,NULL,NULL,NULL),(99,'MXN','$',NULL,NULL,NULL,NULL),(100,'MYR','RM',NULL,NULL,NULL,NULL),(101,'MZN','MT',NULL,NULL,NULL,NULL),(102,'NAD','$',NULL,NULL,NULL,NULL),(103,'NGN','₦',NULL,NULL,NULL,NULL),(104,'NIO','C$',NULL,NULL,NULL,NULL),(105,'NOK','kr',NULL,NULL,NULL,NULL),(106,'NPR','₨',NULL,NULL,NULL,NULL),(107,'NZD','$',NULL,NULL,NULL,NULL),(108,'OMR','ر.ع.',NULL,NULL,NULL,NULL),(109,'PAB','B/.',NULL,NULL,NULL,NULL),(110,'PEN','S/.',NULL,NULL,NULL,NULL),(111,'PGK','K',NULL,NULL,NULL,NULL),(112,'PHP','₱',NULL,NULL,NULL,NULL),(113,'PKR','₨',NULL,NULL,NULL,NULL),(114,'PLN','zł',NULL,NULL,NULL,NULL),(115,'PRB','р.',NULL,NULL,NULL,NULL),(116,'PYG','₲',NULL,NULL,NULL,NULL),(117,'QAR','ر.ق',NULL,NULL,NULL,NULL),(118,'RON','lei',NULL,NULL,NULL,NULL),(119,'RSD','дин',NULL,NULL,NULL,NULL),(120,'RUB','₽',NULL,NULL,NULL,NULL),(121,'RWF','Fr',NULL,NULL,NULL,NULL),(122,'SAR','ر.س',NULL,NULL,NULL,NULL),(123,'SBD','$',NULL,NULL,NULL,NULL),(124,'SCR','₨',NULL,NULL,NULL,NULL),(125,'SDG','ج.س.',NULL,NULL,NULL,NULL),(126,'SEK','kr',NULL,NULL,NULL,NULL),(127,'SGD','$',NULL,NULL,NULL,NULL),(128,'SHP','£',NULL,NULL,NULL,NULL),(129,'SLL','Le',NULL,NULL,NULL,NULL),(130,'SOS','Sh',NULL,NULL,NULL,NULL),(131,'SRD','$',NULL,NULL,NULL,NULL),(132,'SSP','£',NULL,NULL,NULL,NULL),(133,'STD','Db',NULL,NULL,NULL,NULL),(134,'SYP','£',NULL,NULL,NULL,NULL),(135,'SZL','L',NULL,NULL,NULL,NULL),(136,'THB','฿',NULL,NULL,NULL,NULL),(137,'TJS','ЅМ',NULL,NULL,NULL,NULL),(138,'TMT','m',NULL,NULL,NULL,NULL),(139,'TND','د.ت',NULL,NULL,NULL,NULL),(140,'TOP','T$',NULL,NULL,NULL,NULL),(141,'TRY','TRY',NULL,NULL,NULL,NULL),(142,'TTD','$',NULL,NULL,NULL,NULL),(143,'TVD','$',NULL,NULL,NULL,NULL),(144,'TWD','$',NULL,NULL,NULL,NULL),(145,'TZS','Sh',NULL,NULL,NULL,NULL),(146,'UAH','₴',NULL,NULL,NULL,NULL),(147,'UGX','Sh',NULL,NULL,NULL,NULL),(148,'USD','$',NULL,NULL,NULL,NULL),(149,'UYU','$',NULL,NULL,NULL,NULL),(150,'UZS','UZS',NULL,NULL,NULL,NULL),(151,'VEF','Bs',NULL,NULL,NULL,NULL),(152,'VND','₫',NULL,NULL,NULL,NULL),(153,'VUV','Vt',NULL,NULL,NULL,NULL),(154,'WST','T',NULL,NULL,NULL,NULL),(155,'XAF','Fr',NULL,NULL,NULL,NULL),(156,'XCD','$',NULL,NULL,NULL,NULL),(157,'XOF','Fr',NULL,NULL,NULL,NULL),(158,'XPF','Fr',NULL,NULL,NULL,NULL),(159,'YER','﷼',NULL,NULL,NULL,NULL),(160,'ZAR','R',NULL,NULL,NULL,NULL),(161,'ZMW','ZK',NULL,NULL,NULL,NULL),(162,'ZWL','$',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_currency_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_expense_checks`
--

DROP TABLE IF EXISTS `wp_erp_acct_expense_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_expense_checks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `bank` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pay_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_expense_checks`
--

LOCK TABLES `wp_erp_acct_expense_checks` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_expense_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_expense_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_expense_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_expense_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_expense_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `ledger_id` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_expense_details`
--

LOCK TABLES `wp_erp_acct_expense_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_expense_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_expense_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_expenses`
--

DROP TABLE IF EXISTS `wp_erp_acct_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `people_id` int DEFAULT NULL,
  `people_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `trn_by` int DEFAULT NULL,
  `transaction_charge` decimal(20,2) DEFAULT '0.00',
  `trn_by_ledger_id` int DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_expenses`
--

LOCK TABLES `wp_erp_acct_expenses` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_financial_years`
--

DROP TABLE IF EXISTS `wp_erp_acct_financial_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_financial_years` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_financial_years`
--

LOCK TABLES `wp_erp_acct_financial_years` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_financial_years` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_financial_years` VALUES (1,'2022','2022-01-01','2022-12-31',NULL,'2022-05-02','1',NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_financial_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoice_account_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoice_account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoice_account_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoice_account_details`
--

LOCK TABLES `wp_erp_acct_invoice_account_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_account_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoice_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoice_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoice_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `unit_price` decimal(20,2) DEFAULT '0.00',
  `discount` decimal(20,2) DEFAULT '0.00',
  `shipping` decimal(20,2) DEFAULT '0.00',
  `tax` decimal(20,2) DEFAULT '0.00',
  `tax_cat_id` int DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT '0.00',
  `ecommerce_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoice_details`
--

LOCK TABLES `wp_erp_acct_invoice_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoice_details_tax`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoice_details_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoice_details_tax` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_details_id` int DEFAULT NULL,
  `agency_id` int DEFAULT NULL,
  `tax_rate` decimal(20,2) DEFAULT '0.00',
  `tax_amount` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoice_details_tax`
--

LOCK TABLES `wp_erp_acct_invoice_details_tax` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_details_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_details_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoice_receipts`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoice_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoice_receipts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `transaction_charge` decimal(20,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_by_ledger_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoice_receipts`
--

LOCK TABLES `wp_erp_acct_invoice_receipts` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoice_receipts_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoice_receipts_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoice_receipts_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `invoice_no` int DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoice_receipts_details`
--

LOCK TABLES `wp_erp_acct_invoice_receipts_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_receipts_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoice_receipts_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_invoices`
--

DROP TABLE IF EXISTS `wp_erp_acct_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `discount` decimal(20,2) DEFAULT '0.00',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipping` decimal(20,2) DEFAULT '0.00',
  `shipping_tax` decimal(20,2) DEFAULT '0.00',
  `tax` decimal(20,2) DEFAULT '0.00',
  `tax_zone_id` int DEFAULT NULL,
  `estimate` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_invoices`
--

LOCK TABLES `wp_erp_acct_invoices` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_journal_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_journal_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `ledger_id` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_journal_details`
--

LOCK TABLES `wp_erp_acct_journal_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_journal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_journals`
--

DROP TABLE IF EXISTS `wp_erp_acct_journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_journals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_date` date DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_no` int DEFAULT NULL,
  `voucher_amount` decimal(20,2) DEFAULT '0.00',
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_journals`
--

LOCK TABLES `wp_erp_acct_journals` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_journals` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_ledger_categories`
--

DROP TABLE IF EXISTS `wp_erp_acct_ledger_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_ledger_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `chart_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_ledger_categories`
--

LOCK TABLES `wp_erp_acct_ledger_categories` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_categories` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_ledger_categories` VALUES (1,'Current Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Fixed Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Inventory',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Non-current Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Prepayment',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Bank & Cash',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Current Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Non-current Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Depreciation',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Direct Costs',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Expense',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Revenue',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Sales',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Other Income',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Equity',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_ledger_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_ledger_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_ledger_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_ledger_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ledger_id` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `trn_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_ledger_details`
--

LOCK TABLES `wp_erp_acct_ledger_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_ledger_settings`
--

DROP TABLE IF EXISTS `wp_erp_acct_ledger_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_ledger_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ledger_id` int DEFAULT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_ledger_settings`
--

LOCK TABLES `wp_erp_acct_ledger_settings` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_ledgers`
--

DROP TABLE IF EXISTS `wp_erp_acct_ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_ledgers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chart_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `code` int DEFAULT NULL,
  `unused` tinyint(1) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_ledgers`
--

LOCK TABLES `wp_erp_acct_ledgers` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledgers` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_ledgers` VALUES (1,1,NULL,'Accounts Receivable','accounts_receivable',120,1,1,NULL,NULL,NULL,NULL),(2,1,NULL,'Inventory','inventory',140,NULL,1,NULL,NULL,NULL,NULL),(3,1,NULL,'Office Equipment','office_equipment',150,NULL,1,NULL,NULL,NULL,NULL),(4,1,NULL,'Less Accumulated Depreciation on Office Equipment','less_accumulated_depreciation_on_office_equipment',151,NULL,1,NULL,NULL,NULL,NULL),(5,1,NULL,'Computer Equipment','computer_equipment',160,NULL,1,NULL,NULL,NULL,NULL),(6,1,NULL,'Less Accumulated Depreciation on Computer Equipment','less_accumulated_depreciation_on_computer_equipment',161,NULL,1,NULL,NULL,NULL,NULL),(7,1,NULL,'Cash','cash',90,NULL,0,NULL,NULL,NULL,NULL),(8,2,NULL,'Accounts Payable','accounts_payable',200,1,1,NULL,NULL,NULL,NULL),(9,2,NULL,'Accruals','accruals',205,NULL,0,NULL,NULL,NULL,NULL),(10,2,NULL,'Unpaid Expense Claims','unpaid_expense_claims',210,NULL,1,NULL,NULL,NULL,NULL),(11,2,NULL,'Wages Payable','wages_payable',215,NULL,1,NULL,NULL,NULL,NULL),(12,2,NULL,'Wages Payable - Payroll','wages_payable_payroll',216,NULL,0,NULL,NULL,NULL,NULL),(13,2,NULL,'Sales Tax','sales_tax',220,NULL,1,NULL,NULL,NULL,NULL),(14,2,NULL,'Employee Tax Payable','employee_tax_payable',230,NULL,0,NULL,NULL,NULL,NULL),(15,2,NULL,'Employee Benefits Payable','employee_benefits_payable',235,NULL,0,NULL,NULL,NULL,NULL),(16,2,NULL,'Employee Deductions payable','employee_deductions_payable',236,NULL,0,NULL,NULL,NULL,NULL),(17,2,NULL,'Income Tax Payable','income_tax_payable',240,NULL,0,NULL,NULL,NULL,NULL),(18,2,NULL,'Suspense','suspense',250,NULL,0,NULL,NULL,NULL,NULL),(19,2,NULL,'Historical Adjustments','historical_adjustments',255,NULL,1,NULL,NULL,NULL,NULL),(20,2,NULL,'Rounding','rounding',260,NULL,1,NULL,NULL,NULL,NULL),(21,2,NULL,'Revenue Received in Advance','revenue_received_in_advance',835,NULL,0,NULL,NULL,NULL,NULL),(22,2,NULL,'Clearing Account','clearing_account',855,NULL,0,NULL,NULL,NULL,NULL),(23,2,NULL,'Loan','loan',290,NULL,0,NULL,NULL,NULL,NULL),(24,5,NULL,'Costs of Goods Sold','costs_of_goods_sold',500,NULL,1,NULL,NULL,NULL,NULL),(25,5,NULL,'Advertising','advertising',600,NULL,0,NULL,NULL,NULL,NULL),(26,5,NULL,'Bank Service Charges','bank_service_charges',605,NULL,0,NULL,NULL,NULL,NULL),(27,5,NULL,'Bank Transaction Charge','bank_transaction_charge',606,NULL,0,NULL,NULL,NULL,NULL),(28,5,NULL,'Sales Return','sales_return',607,NULL,0,NULL,NULL,NULL,NULL),(29,5,NULL,'Janitorial Expenses','janitorial_expenses',610,NULL,0,NULL,NULL,NULL,NULL),(30,5,NULL,'Consulting & Accounting','consulting_accounting',615,NULL,0,NULL,NULL,NULL,NULL),(31,5,NULL,'Entertainment','entertainment',620,NULL,0,NULL,NULL,NULL,NULL),(32,5,NULL,'Postage & Delivary','postage_delivary',624,NULL,0,NULL,NULL,NULL,NULL),(33,5,NULL,'General Expenses','general_expenses',628,NULL,0,NULL,NULL,NULL,NULL),(34,5,NULL,'Insurance','insurance',632,NULL,0,NULL,NULL,NULL,NULL),(35,5,NULL,'Legal Expenses','legal_expenses',636,NULL,0,NULL,NULL,NULL,NULL),(36,5,NULL,'Utilities','utilities',640,NULL,1,NULL,NULL,NULL,NULL),(37,5,NULL,'Automobile Expenses','automobile_expenses',644,NULL,0,NULL,NULL,NULL,NULL),(38,5,NULL,'Office Expenses','office_expenses',648,NULL,1,NULL,NULL,NULL,NULL),(39,5,NULL,'Printing & Stationary','printing_stationary',652,NULL,0,NULL,NULL,NULL,NULL),(40,5,NULL,'Rent','rent',656,NULL,1,NULL,NULL,NULL,NULL),(41,5,NULL,'Repairs & Maintenance','repairs_maintenance',660,NULL,0,NULL,NULL,NULL,NULL),(42,5,NULL,'Wages & Salaries','wages_salaries',664,NULL,0,NULL,NULL,NULL,NULL),(43,5,NULL,'Payroll Tax Expense','payroll_tax_expense',668,NULL,0,NULL,NULL,NULL,NULL),(44,5,NULL,'Dues & Subscriptions','dues_subscriptions',672,NULL,0,NULL,NULL,NULL,NULL),(45,5,NULL,'Telephone & Internet','telephone_internet',676,NULL,0,NULL,NULL,NULL,NULL),(46,5,NULL,'Travel','travel',680,NULL,0,NULL,NULL,NULL,NULL),(47,5,NULL,'Bad Debts','bad_debts',684,NULL,0,NULL,NULL,NULL,NULL),(48,5,NULL,'Depreciation','depreciation',700,NULL,1,NULL,NULL,NULL,NULL),(49,5,NULL,'Income Tax Expense','income_tax_expense',710,NULL,0,NULL,NULL,NULL,NULL),(50,5,NULL,'Employee Benefits Expense','employee_benefits_expense',715,NULL,0,NULL,NULL,NULL,NULL),(51,5,NULL,'Interest Expense','interest_expense',800,NULL,0,NULL,NULL,NULL,NULL),(52,5,NULL,'Bank Revaluations','bank_revaluations',810,NULL,1,NULL,NULL,NULL,NULL),(53,5,NULL,'Unrealized Currency Gains','unrealized_currency_gains',815,NULL,1,NULL,NULL,NULL,NULL),(54,5,NULL,'Realized Currency Gains','realized_currency_gains',820,NULL,1,NULL,NULL,NULL,NULL),(55,5,NULL,'Sales Discount','sales_discount',825,NULL,1,NULL,NULL,NULL,NULL),(56,4,NULL,'Sales','sales',400,NULL,0,NULL,NULL,NULL,NULL),(57,4,NULL,'Interest Income','interest_income',460,NULL,0,NULL,NULL,NULL,NULL),(58,4,NULL,'Other Revenue','other_revenue',470,NULL,0,NULL,NULL,NULL,NULL),(59,4,NULL,'Purchase Discount','purchase_discount',475,NULL,1,NULL,NULL,NULL,NULL),(60,3,NULL,'Owners Contribution','owners_contribution',300,NULL,0,NULL,NULL,NULL,NULL),(61,3,NULL,'Owners Draw','owners_draw',310,NULL,0,NULL,NULL,NULL,NULL),(62,3,NULL,'Retained Earnings','retained_earnings',320,NULL,1,NULL,NULL,NULL,NULL),(63,3,NULL,'Common Stock','common_stock',330,NULL,0,NULL,NULL,NULL,NULL),(64,1,NULL,'Savings Account','savings_account',92,NULL,0,NULL,NULL,NULL,NULL),(65,2,NULL,'Shipment Tax','shipment_tax',221,NULL,1,NULL,NULL,NULL,NULL),(66,1,NULL,'Allowance for Doubtful Accounts','allowance_for_doubtful_accounts',1001,NULL,1,NULL,NULL,NULL,NULL),(67,1,NULL,'Interest Receivable','interest_receivable',1002,NULL,1,NULL,NULL,NULL,NULL),(68,1,NULL,'Supplies','supplies',1003,NULL,1,NULL,NULL,NULL,NULL),(69,1,NULL,'Prepaid Insurance','prepaid_insurance',1004,NULL,1,NULL,NULL,NULL,NULL),(70,1,NULL,'Prepaid Rent','prepaid_rent',1005,NULL,1,NULL,NULL,NULL,NULL),(71,1,NULL,'Prepaid Salary','prepaid_salary',1006,NULL,1,NULL,NULL,NULL,NULL),(72,1,NULL,'Land','land',1007,NULL,1,NULL,NULL,NULL,NULL),(73,1,NULL,'Furniture & Fixture','furniture_fixture',1008,NULL,1,NULL,NULL,NULL,NULL),(74,1,NULL,'Buildings','buildings',1009,NULL,1,NULL,NULL,NULL,NULL),(75,1,NULL,'Copyrights','copyrights',1010,NULL,1,NULL,NULL,NULL,NULL),(76,1,NULL,'Goodwill','goodwill',1011,NULL,1,NULL,NULL,NULL,NULL),(77,1,NULL,'Patents','patents',1012,NULL,1,NULL,NULL,NULL,NULL),(78,1,NULL,'Accoumulated Depreciation- Buildings','accoumulated_depreciation_buildings',1013,NULL,1,NULL,NULL,NULL,NULL),(79,1,NULL,'Accoumulated Depreciation- Furniture & Fixtures','accoumulated_depreciation_furniture_fixtures',1014,NULL,1,NULL,NULL,NULL,NULL),(80,2,NULL,'Notes Payable','notes_payable',1201,NULL,1,NULL,NULL,NULL,NULL),(81,2,NULL,'Salaries and Wages Payable','salaries_and_wages_payable',1202,NULL,1,NULL,NULL,NULL,NULL),(82,2,NULL,'Unearned Rent Revenue','unearned_rent_revenue',1203,NULL,1,NULL,NULL,NULL,NULL),(83,2,NULL,'Interest Payable','interest_payable',1204,NULL,1,NULL,NULL,NULL,NULL),(84,2,NULL,'Dividends Payable','dividends_payable',1205,NULL,1,NULL,NULL,NULL,NULL),(85,2,NULL,'Bonds Payable','bonds_payable',1206,NULL,1,NULL,NULL,NULL,NULL),(86,2,NULL,'Discount on Bonds Payable','discount_on_bonds_payable',1207,NULL,1,NULL,NULL,NULL,NULL),(87,2,NULL,'Premium on Bonds Payable','premium_on_bonds_payable',1208,NULL,1,NULL,NULL,NULL,NULL),(88,2,NULL,'Mortgage Payable','mortgage_payable',1209,NULL,1,NULL,NULL,NULL,NULL),(89,3,NULL,'Owner\'s Equity','owner_s_equity',1301,NULL,1,NULL,NULL,NULL,NULL),(90,3,NULL,'Paid-in Capital in Excess of Par- Common Stock','paid_in_capital_in_excess_of_par_common_stock',1302,NULL,1,NULL,NULL,NULL,NULL),(91,3,NULL,'Paid-in Capital in Excess of Par- Preferred Stock','paid_in_capital_in_excess_of_par_preferred_stock',1303,NULL,1,NULL,NULL,NULL,NULL),(92,3,NULL,'Preferred Stock','preferred_stock',1304,NULL,1,NULL,NULL,NULL,NULL),(93,3,NULL,'Treasury Stock','treasury_stock',1305,NULL,1,NULL,NULL,NULL,NULL),(94,3,NULL,'Dividends','dividends',1306,NULL,1,NULL,NULL,NULL,NULL),(95,3,NULL,'Income Summary','income_summary',1307,NULL,1,NULL,NULL,NULL,NULL),(96,4,NULL,'Service Revenue','service_revenue',1401,NULL,1,NULL,NULL,NULL,NULL),(97,4,NULL,'Sales Revenue','sales_revenue',1402,NULL,1,NULL,NULL,NULL,NULL),(98,4,NULL,'Shipment','shipment',1411,NULL,1,NULL,NULL,NULL,NULL),(99,4,NULL,'Gain on Disposal of Plant Assets','gain_on_disposal_of_plant_assets',1404,NULL,1,NULL,NULL,NULL,NULL),(100,4,NULL,'Asset Sales','asset_sales',1405,NULL,1,NULL,NULL,NULL,NULL),(101,4,NULL,'Sales Return Discount','sales_return_discount',1406,NULL,1,NULL,NULL,NULL,NULL),(102,4,NULL,'Sales Return Tax','sales_return_tax',1407,NULL,1,NULL,NULL,NULL,NULL),(103,4,NULL,'Purchase Return','purchase_return',1408,NULL,1,NULL,NULL,NULL,NULL),(104,4,NULL,'Purchase Return VAT','purchase_return_vat',1409,NULL,1,NULL,NULL,NULL,NULL),(105,5,NULL,'Amortization Expense','amortization_expense',1501,NULL,1,NULL,NULL,NULL,NULL),(106,5,NULL,'Freight-Out','freight_out',1502,NULL,1,NULL,NULL,NULL,NULL),(107,5,NULL,'Insurance Expense','insurance_expense',1503,NULL,1,NULL,NULL,NULL,NULL),(108,5,NULL,'Loss on Disposal of Plant Assets','loss_on_disposal_of_plant_assets',1504,NULL,1,NULL,NULL,NULL,NULL),(109,5,NULL,'Maintenance and Repairs Expense','maintenance_and_repairs_expense',1505,NULL,1,NULL,NULL,NULL,NULL),(110,5,NULL,'Purchase','purchase',1506,NULL,1,NULL,NULL,NULL,NULL),(111,5,NULL,'Asset Purchase','asset_purchase',1507,NULL,1,NULL,NULL,NULL,NULL),(112,5,NULL,'Purchase VAT','purchase_vat',1509,NULL,1,NULL,NULL,NULL,NULL),(113,5,NULL,'Sales Returns and Allowance','sales_returns_and_allowance',1403,NULL,1,NULL,NULL,NULL,NULL),(114,5,NULL,'Purchase Return Discount','purchase_return_discount',1410,NULL,1,NULL,NULL,NULL,NULL),(115,5,NULL,'Bank Transaction Charge','bank_transaction_charge',1508,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_opening_balances`
--

DROP TABLE IF EXISTS `wp_erp_acct_opening_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_opening_balances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `financial_year_id` int DEFAULT NULL,
  `chart_id` int DEFAULT NULL,
  `ledger_id` int DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_opening_balances`
--

LOCK TABLES `wp_erp_acct_opening_balances` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_opening_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_opening_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_pay_bill`
--

DROP TABLE IF EXISTS `wp_erp_acct_pay_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_pay_bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_by_ledger_id` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_pay_bill`
--

LOCK TABLES `wp_erp_acct_pay_bill` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_pay_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_pay_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_pay_bill_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_pay_bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_pay_bill_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `bill_no` int DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_pay_bill_details`
--

LOCK TABLES `wp_erp_acct_pay_bill_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_pay_bill_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_pay_bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_pay_purchase`
--

DROP TABLE IF EXISTS `wp_erp_acct_pay_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_pay_purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_charge` decimal(20,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_by_ledger_id` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_pay_purchase`
--

LOCK TABLES `wp_erp_acct_pay_purchase` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_pay_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_pay_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_pay_purchase_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_pay_purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_pay_purchase_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `purchase_no` int DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `tax_cat_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_pay_purchase_details`
--

LOCK TABLES `wp_erp_acct_pay_purchase_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_pay_purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_pay_purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_payment_methods`
--

DROP TABLE IF EXISTS `wp_erp_acct_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_payment_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_payment_methods`
--

LOCK TABLES `wp_erp_acct_payment_methods` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_payment_methods` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_payment_methods` VALUES (1,'Cash',NULL,NULL,NULL,NULL),(2,'Bank',NULL,NULL,NULL,NULL),(3,'Check',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_people_account_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_people_account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_people_account_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_people_account_details`
--

LOCK TABLES `wp_erp_acct_people_account_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_people_account_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_people_account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_people_trn`
--

DROP TABLE IF EXISTS `wp_erp_acct_people_trn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_people_trn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_no` int DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_people_trn`
--

LOCK TABLES `wp_erp_acct_people_trn` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_people_trn` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_people_trn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_people_trn_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_people_trn_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_people_trn_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `voucher_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_people_trn_details`
--

LOCK TABLES `wp_erp_acct_people_trn_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_people_trn_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_people_trn_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_product_categories`
--

DROP TABLE IF EXISTS `wp_erp_acct_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_product_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `parent` int NOT NULL DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_product_categories`
--

LOCK TABLES `wp_erp_acct_product_categories` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_product_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_product_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `stock_in` int DEFAULT NULL,
  `stock_out` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_product_details`
--

LOCK TABLES `wp_erp_acct_product_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_product_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_product_types`
--

DROP TABLE IF EXISTS `wp_erp_acct_product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_product_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_product_types`
--

LOCK TABLES `wp_erp_acct_product_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_product_types` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_product_types` VALUES (1,'Inventory','inventory',NULL,NULL,NULL,NULL),(2,'Service','service',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_products`
--

DROP TABLE IF EXISTS `wp_erp_acct_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_type_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tax_cat_id` int DEFAULT NULL,
  `vendor` int DEFAULT NULL,
  `cost_price` decimal(20,2) DEFAULT '0.00',
  `sale_price` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_products`
--

LOCK TABLES `wp_erp_acct_products` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_purchase`
--

DROP TABLE IF EXISTS `wp_erp_acct_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `tax` decimal(20,2) DEFAULT NULL,
  `tax_zone_id` int DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `purchase_order` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_purchase`
--

LOCK TABLES `wp_erp_acct_purchase` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_purchase_account_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_purchase_account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_purchase_account_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_no` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_purchase_account_details`
--

LOCK TABLES `wp_erp_acct_purchase_account_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_account_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_purchase_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_purchase_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trn_no` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(20,2) DEFAULT '0.00',
  `amount` decimal(20,2) DEFAULT '0.00',
  `tax` decimal(20,2) DEFAULT NULL,
  `tax_cat_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_purchase_details`
--

LOCK TABLES `wp_erp_acct_purchase_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_purchase_details_tax`
--

DROP TABLE IF EXISTS `wp_erp_acct_purchase_details_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_purchase_details_tax` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice_details_id` int NOT NULL,
  `agency_id` int DEFAULT NULL,
  `tax_rate` decimal(20,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_purchase_details_tax`
--

LOCK TABLES `wp_erp_acct_purchase_details_tax` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_details_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_purchase_details_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_synced_taxes`
--

DROP TABLE IF EXISTS `wp_erp_acct_synced_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_synced_taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `system_id` bigint NOT NULL,
  `sync_id` bigint DEFAULT NULL,
  `sync_slug` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sync_type` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sync_source` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_id` (`system_id`),
  KEY `sync_id` (`sync_id`),
  KEY `sync_slug` (`sync_slug`),
  KEY `sync_type` (`sync_type`),
  KEY `sync_source` (`sync_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_synced_taxes`
--

LOCK TABLES `wp_erp_acct_synced_taxes` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_synced_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_synced_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_tax_agencies`
--

DROP TABLE IF EXISTS `wp_erp_acct_tax_agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_tax_agencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ecommerce_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_tax_agencies`
--

LOCK TABLES `wp_erp_acct_tax_agencies` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_tax_agencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_tax_agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_tax_agency_details`
--

DROP TABLE IF EXISTS `wp_erp_acct_tax_agency_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_tax_agency_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agency_id` int DEFAULT NULL,
  `trn_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT '0.00',
  `credit` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_tax_agency_details`
--

LOCK TABLES `wp_erp_acct_tax_agency_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_tax_agency_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_tax_agency_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_tax_cat_agency`
--

DROP TABLE IF EXISTS `wp_erp_acct_tax_cat_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_tax_cat_agency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_id` int DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tax_cat_id` int DEFAULT NULL,
  `agency_id` int DEFAULT NULL,
  `tax_rate` decimal(20,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_tax_cat_agency`
--

LOCK TABLES `wp_erp_acct_tax_cat_agency` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_tax_cat_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_tax_cat_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_tax_categories`
--

DROP TABLE IF EXISTS `wp_erp_acct_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_tax_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_tax_categories`
--

LOCK TABLES `wp_erp_acct_tax_categories` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_tax_pay`
--

DROP TABLE IF EXISTS `wp_erp_acct_tax_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_tax_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `trn_by` int DEFAULT NULL,
  `agency_id` int DEFAULT NULL,
  `ledger_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_tax_pay`
--

LOCK TABLES `wp_erp_acct_tax_pay` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_tax_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_tax_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_taxes`
--

DROP TABLE IF EXISTS `wp_erp_acct_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_rate_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tax_number` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_taxes`
--

LOCK TABLES `wp_erp_acct_taxes` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_transfer_voucher`
--

DROP TABLE IF EXISTS `wp_erp_acct_transfer_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_transfer_voucher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_no` int DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `ac_from` int DEFAULT NULL,
  `ac_to` int DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_transfer_voucher`
--

LOCK TABLES `wp_erp_acct_transfer_voucher` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_transfer_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_transfer_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_trn_status_types`
--

DROP TABLE IF EXISTS `wp_erp_acct_trn_status_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_trn_status_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_trn_status_types`
--

LOCK TABLES `wp_erp_acct_trn_status_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_trn_status_types` DISABLE KEYS */;
INSERT INTO `wp_erp_acct_trn_status_types` VALUES (1,'Draft','draft',NULL,NULL,NULL,NULL),(2,'Awaiting Payment','awaiting_payment',NULL,NULL,NULL,NULL),(3,'Pending','pending',NULL,NULL,NULL,NULL),(4,'Paid','paid',NULL,NULL,NULL,NULL),(5,'Partially Paid','partially_paid',NULL,NULL,NULL,NULL),(6,'Approved','approved',NULL,NULL,NULL,NULL),(7,'Closed','closed',NULL,NULL,NULL,NULL),(8,'Void','void',NULL,NULL,NULL,NULL),(9,'Returned','returned',NULL,NULL,NULL,NULL),(10,'Partially Returned','partially_returned',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_erp_acct_trn_status_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_acct_voucher_no`
--

DROP TABLE IF EXISTS `wp_erp_acct_voucher_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_acct_voucher_no` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `editable` tinyint DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_acct_voucher_no`
--

LOCK TABLES `wp_erp_acct_voucher_no` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_voucher_no` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_acct_voucher_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_audit_log`
--

DROP TABLE IF EXISTS `wp_erp_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_audit_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sub_component` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data_id` bigint DEFAULT NULL,
  `old_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `new_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `changetype` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `sub_component` (`sub_component`),
  KEY `changetype` (`changetype`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_audit_log`
--

LOCK TABLES `wp_erp_audit_log` WRITE;
/*!40000 ALTER TABLE `wp_erp_audit_log` DISABLE KEYS */;
INSERT INTO `wp_erp_audit_log` VALUES (1,'HRM','department',NULL,'','','Отдел <strong>HR</strong> создан','add',1,'2022-05-02 10:39:42',NULL),(2,'HRM','department',NULL,'','','Отдел <strong>Инжиниринг</strong> создан','add',1,'2022-05-02 10:39:42',NULL),(3,'HRM','department',NULL,'','','Отдел <strong>Разработка</strong> создан','add',1,'2022-05-02 10:39:43',NULL),(4,'HRM','department',NULL,'','','Отдел <strong>Маркетинг</strong> создан','add',1,'2022-05-02 10:39:43',NULL),(5,'HRM','department',NULL,'','','Отдел <strong>Бухгалтерия</strong> создан','add',1,'2022-05-02 10:39:43',NULL),(6,'HRM','designation',NULL,'','','Обозначение <strong>Менеджер</strong> было создано','add',1,'2022-05-02 10:40:29',NULL),(7,'HRM','designation',NULL,'','','Обозначение <strong>Разработчик</strong> было создано','add',1,'2022-05-02 10:40:29',NULL),(8,'HRM','designation',NULL,'','','Обозначение <strong>HR</strong> было создано','add',1,'2022-05-02 10:40:30',NULL),(9,'HRM','designation',NULL,'','','Обозначение <strong>Бухгалтер</strong> было создано','add',1,'2022-05-02 10:40:30',NULL),(10,'HRM','designation',NULL,'','','Обозначение <strong>Маркетолог</strong> было создано','add',1,'2022-05-02 10:40:31',NULL),(11,'HRM','designation',NULL,'','','Обозначение <strong>Ведущий специалист</strong> было создано','add',1,'2022-05-02 10:40:31',NULL),(12,'HRM','designation',NULL,'','','Обозначение <strong>TeamLead</strong> было создано','add',1,'2022-05-02 10:40:31',NULL),(13,'HRM','employee',NULL,'','','Сотрудник <strong>Иван</strong> создан','add',1,'2022-05-02 10:44:13',NULL),(14,'HRM','employee',NULL,'','','Сотрудник <strong>Илья</strong> создан','add',1,'2022-05-02 10:47:48',NULL);
/*!40000 ALTER TABLE `wp_erp_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_company_locations`
--

DROP TABLE IF EXISTS `wp_erp_company_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_company_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_company_locations`
--

LOCK TABLES `wp_erp_company_locations` WRITE;
/*!40000 ALTER TABLE `wp_erp_company_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_company_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_activities_task`
--

DROP TABLE IF EXISTS `wp_erp_crm_activities_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_activities_task` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_activities_task`
--

LOCK TABLES `wp_erp_crm_activities_task` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_activities_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_activities_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_contact_group`
--

DROP TABLE IF EXISTS `wp_erp_crm_contact_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_contact_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `private` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_contact_group`
--

LOCK TABLES `wp_erp_crm_contact_group` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_contact_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_contact_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_contact_subscriber`
--

DROP TABLE IF EXISTS `wp_erp_crm_contact_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_contact_subscriber` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subscribe_at` datetime DEFAULT NULL,
  `unsubscribe_at` datetime DEFAULT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_group` (`user_id`,`group_id`),
  KEY `status` (`status`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_contact_subscriber`
--

LOCK TABLES `wp_erp_crm_contact_subscriber` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_contact_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_contact_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_customer_activities`
--

DROP TABLE IF EXISTS `wp_erp_crm_customer_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_customer_activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `email_subject` text COLLATE utf8mb4_unicode_520_ci,
  `log_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_520_ci,
  `sent_notification` tinyint DEFAULT '0',
  `done_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  KEY `log_type` (`log_type`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_customer_activities`
--

LOCK TABLES `wp_erp_crm_customer_activities` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_customer_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_customer_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_customer_companies`
--

DROP TABLE IF EXISTS `wp_erp_crm_customer_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_customer_companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_customer_companies`
--

LOCK TABLES `wp_erp_crm_customer_companies` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_customer_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_customer_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_save_email_replies`
--

DROP TABLE IF EXISTS `wp_erp_crm_save_email_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_save_email_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `subject` text COLLATE utf8mb4_unicode_520_ci,
  `template` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_save_email_replies`
--

LOCK TABLES `wp_erp_crm_save_email_replies` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_save_email_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_save_email_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_crm_save_search`
--

DROP TABLE IF EXISTS `wp_erp_crm_save_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_crm_save_search` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `global` tinyint DEFAULT '0',
  `search_name` text COLLATE utf8mb4_unicode_520_ci,
  `search_val` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_crm_save_search`
--

LOCK TABLES `wp_erp_crm_save_search` WRITE;
/*!40000 ALTER TABLE `wp_erp_crm_save_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_crm_save_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_holidays_indv`
--

DROP TABLE IF EXISTS `wp_erp_holidays_indv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_holidays_indv` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `holiday_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_holidays_indv`
--

LOCK TABLES `wp_erp_holidays_indv` WRITE;
/*!40000 ALTER TABLE `wp_erp_holidays_indv` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_holidays_indv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_announcement`
--

DROP TABLE IF EXISTS `wp_erp_hr_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_announcement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email_status` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_announcement`
--

LOCK TABLES `wp_erp_hr_announcement` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_dependents`
--

DROP TABLE IF EXISTS `wp_erp_hr_dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_dependents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relation` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_dependents`
--

LOCK TABLES `wp_erp_hr_dependents` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_dependents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_depts`
--

DROP TABLE IF EXISTS `wp_erp_hr_depts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_depts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `lead` int unsigned DEFAULT '0',
  `parent` int unsigned DEFAULT '0',
  `status` tinyint unsigned DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_depts`
--

LOCK TABLES `wp_erp_hr_depts` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_depts` DISABLE KEYS */;
INSERT INTO `wp_erp_hr_depts` VALUES (1,'General Management',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(2,'Operations Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(3,'Finance Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(4,'Sales Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(5,'Human Resource Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(6,'Purchase Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(7,'Engineering Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(8,'Production Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(9,'Procurement Department',NULL,0,0,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(10,'HR','',0,0,1,'2022-05-02 10:39:41','2022-05-02 10:39:41'),(11,'Инжиниринг','',0,0,1,'2022-05-02 10:39:42','2022-05-02 10:39:42'),(12,'Разработка','',0,0,1,'2022-05-02 10:39:43','2022-05-02 10:39:43'),(13,'Маркетинг','',0,0,1,'2022-05-02 10:39:43','2022-05-02 10:39:43'),(14,'Бухгалтерия','',0,0,1,'2022-05-02 10:39:43','2022-05-02 10:39:43');
/*!40000 ALTER TABLE `wp_erp_hr_depts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_designations`
--

DROP TABLE IF EXISTS `wp_erp_hr_designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_designations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_designations`
--

LOCK TABLES `wp_erp_hr_designations` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_designations` DISABLE KEYS */;
INSERT INTO `wp_erp_hr_designations` VALUES (1,'President',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(2,'Vice President',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(3,'CEO',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(4,'Managing Director',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(5,'Product Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(6,'Project Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(7,'Program Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(8,'Operations Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(9,'Marketing Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(10,'Business Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(11,'Technology Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(12,'Finance/Accounts Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(13,'Human Resource Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(14,'Hiring Manager',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(15,'Senior Engineer',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(16,'Engineer',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(17,'Junior Engineer',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(18,'Business Executive',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(19,'Marketing Executive',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(20,'Customer Support Executive',NULL,1,'2022-05-02 00:00:00','2022-05-02 00:00:00'),(21,'Менеджер','',1,'2022-05-02 10:40:29','2022-05-02 10:40:29'),(22,'Разработчик','',1,'2022-05-02 10:40:29','2022-05-02 10:40:29'),(23,'HR','',1,'2022-05-02 10:40:29','2022-05-02 10:40:29'),(24,'Бухгалтер','',1,'2022-05-02 10:40:30','2022-05-02 10:40:30'),(25,'Маркетолог','',1,'2022-05-02 10:40:30','2022-05-02 10:40:30'),(26,'Ведущий специалист','',1,'2022-05-02 10:40:31','2022-05-02 10:40:31'),(27,'TeamLead','',1,'2022-05-02 10:40:31','2022-05-02 10:40:31');
/*!40000 ALTER TABLE `wp_erp_hr_designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_education`
--

DROP TABLE IF EXISTS `wp_erp_hr_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_education` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int unsigned DEFAULT NULL,
  `school` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `degree` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `result` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `result_type` enum('grade','percentage') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `finished` int unsigned DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci,
  `interest` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_education`
--

LOCK TABLES `wp_erp_hr_education` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_employee_history`
--

DROP TABLE IF EXISTS `wp_erp_hr_employee_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_employee_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_520_ci,
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `module` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_employee_history`
--

LOCK TABLES `wp_erp_hr_employee_history` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employee_history` DISABLE KEYS */;
INSERT INTO `wp_erp_hr_employee_history` VALUES (1,2,'employee','active','','',NULL,'2022-04-05 10:44:13'),(2,2,'employment','','permanent','',NULL,'2022-04-05 10:44:13'),(3,2,'compensation','biweekly','100000','','','2022-04-05 10:44:14'),(4,3,'employee','active','','',NULL,'2022-01-01 10:47:48'),(5,3,'employment','','permanent','',NULL,'2022-01-01 10:47:48'),(6,3,'compensation','biweekly','150000','','','2022-01-01 10:47:49');
/*!40000 ALTER TABLE `wp_erp_hr_employee_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_employee_notes`
--

DROP TABLE IF EXISTS `wp_erp_hr_employee_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_employee_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_employee_notes`
--

LOCK TABLES `wp_erp_hr_employee_notes` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employee_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_employee_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_employee_performance`
--

DROP TABLE IF EXISTS `wp_erp_hr_employee_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_employee_performance` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int unsigned DEFAULT NULL,
  `reporting_to` int unsigned DEFAULT NULL,
  `job_knowledge` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `work_quality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attendance` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communication` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dependablity` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `reviewer` int unsigned DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_520_ci,
  `completion_date` datetime DEFAULT NULL,
  `goal_description` text COLLATE utf8mb4_unicode_520_ci,
  `employee_assessment` text COLLATE utf8mb4_unicode_520_ci,
  `supervisor` int unsigned DEFAULT NULL,
  `supervisor_assessment` text COLLATE utf8mb4_unicode_520_ci,
  `type` text COLLATE utf8mb4_unicode_520_ci,
  `performance_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_employee_performance`
--

LOCK TABLES `wp_erp_hr_employee_performance` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employee_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_employee_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_employees`
--

DROP TABLE IF EXISTS `wp_erp_hr_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `designation` int unsigned NOT NULL DEFAULT '0',
  `department` int unsigned NOT NULL DEFAULT '0',
  `location` int unsigned NOT NULL DEFAULT '0',
  `hiring_source` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hiring_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `date_of_birth` date NOT NULL,
  `reporting_to` bigint unsigned NOT NULL DEFAULT '0',
  `pay_rate` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `pay_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `employee_id` (`employee_id`),
  KEY `designation` (`designation`),
  KEY `department` (`department`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_employees`
--

LOCK TABLES `wp_erp_hr_employees` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employees` DISABLE KEYS */;
INSERT INTO `wp_erp_hr_employees` VALUES (1,2,'1',6,12,0,'direct','2022-04-05','0000-00-00','0000-00-00',0,100000.00,'biweekly','permanent','active',NULL),(2,3,'2',26,12,0,'direct','2022-01-01','0000-00-00','0000-00-00',0,150000.00,'biweekly','permanent','active',NULL);
/*!40000 ALTER TABLE `wp_erp_hr_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_financial_years`
--

DROP TABLE IF EXISTS `wp_erp_hr_financial_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_financial_years` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` int DEFAULT NULL,
  `end_date` int DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `year_search` (`start_date`,`end_date`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_financial_years`
--

LOCK TABLES `wp_erp_hr_financial_years` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_financial_years` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_financial_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_holiday`
--

DROP TABLE IF EXISTS `wp_erp_hr_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_holiday` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `range_status` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_holiday`
--

LOCK TABLES `wp_erp_hr_holiday` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_approval_status`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_approval_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_approval_status` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `leave_request_id` bigint unsigned NOT NULL,
  `approval_status_id` tinyint unsigned NOT NULL DEFAULT '0',
  `approved_by` bigint unsigned DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_request_id` (`leave_request_id`),
  KEY `approval_status_id` (`approval_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_approval_status`
--

LOCK TABLES `wp_erp_hr_leave_approval_status` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_approval_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_approval_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_encashment_requests`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_encashment_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_encashment_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `leave_id` smallint unsigned NOT NULL,
  `approved_by` bigint unsigned DEFAULT NULL,
  `approval_status_id` tinyint unsigned NOT NULL DEFAULT '1',
  `encash_days` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `forward_days` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `f_year` smallint unsigned NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `leave_id` (`leave_id`),
  KEY `f_year` (`f_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_encashment_requests`
--

LOCK TABLES `wp_erp_hr_leave_encashment_requests` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_encashment_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_encashment_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_entitlements`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_entitlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_entitlements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `leave_id` smallint unsigned NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `trn_id` bigint unsigned NOT NULL,
  `trn_type` enum('leave_policies','leave_approval_status','leave_encashment_requests','leave_entitlements','unpaid_leave','leave_encashment','leave_carryforward','manual_leave_policies','Accounts','others','leave_accrual','carry_forward_leave_expired') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'leave_policies',
  `day_in` decimal(5,1) unsigned NOT NULL DEFAULT '0.0',
  `day_out` decimal(5,1) unsigned NOT NULL DEFAULT '0.0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `f_year` smallint NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comp_key_1` (`user_id`,`leave_id`,`f_year`,`trn_type`),
  KEY `trn_id` (`trn_id`),
  KEY `leave_id` (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_entitlements`
--

LOCK TABLES `wp_erp_hr_leave_entitlements` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_entitlements` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_entitlements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_policies`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_policies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `leave_id` smallint unsigned NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `days` tinyint unsigned NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `apply_limit` tinyint unsigned NOT NULL DEFAULT '0',
  `employee_type` enum('-1','permanent','parttime','contract','temporary','trainee') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'permanent',
  `department_id` int NOT NULL DEFAULT '-1',
  `location_id` int NOT NULL DEFAULT '-1',
  `designation_id` int NOT NULL DEFAULT '-1',
  `gender` enum('-1','male','female','other') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '-1',
  `marital` enum('-1','single','married','widowed') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '-1',
  `f_year` smallint unsigned DEFAULT NULL,
  `apply_for_new_users` tinyint unsigned NOT NULL DEFAULT '0',
  `carryover_days` tinyint unsigned NOT NULL DEFAULT '0',
  `carryover_uses_limit` tinyint unsigned NOT NULL DEFAULT '0',
  `encashment_days` tinyint unsigned NOT NULL DEFAULT '0',
  `encashment_based_on` enum('pay_rate','basic','gross') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `forward_default` enum('encashment','carryover') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'encashment',
  `applicable_from_days` smallint unsigned NOT NULL DEFAULT '0',
  `accrued_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `accrued_max_days` smallint unsigned NOT NULL DEFAULT '0',
  `halfday_enable` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_id` (`leave_id`),
  KEY `f_year` (`f_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_policies`
--

LOCK TABLES `wp_erp_hr_leave_policies` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_policies_segregation`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_policies_segregation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_policies_segregation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `leave_policy_id` bigint unsigned NOT NULL,
  `jan` tinyint unsigned NOT NULL DEFAULT '0',
  `feb` tinyint unsigned NOT NULL DEFAULT '0',
  `mar` tinyint unsigned NOT NULL DEFAULT '0',
  `apr` tinyint unsigned NOT NULL DEFAULT '0',
  `may` tinyint unsigned NOT NULL DEFAULT '0',
  `jun` tinyint unsigned NOT NULL DEFAULT '0',
  `jul` tinyint unsigned NOT NULL DEFAULT '0',
  `aug` tinyint unsigned NOT NULL DEFAULT '0',
  `sep` tinyint unsigned NOT NULL DEFAULT '0',
  `oct` tinyint unsigned NOT NULL DEFAULT '0',
  `nov` tinyint unsigned NOT NULL DEFAULT '0',
  `decem` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_policy_id` (`leave_policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_policies_segregation`
--

LOCK TABLES `wp_erp_hr_leave_policies_segregation` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_policies_segregation` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_policies_segregation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_request_details`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_request_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_request_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `leave_request_id` bigint unsigned NOT NULL,
  `leave_approval_status_id` bigint unsigned NOT NULL,
  `workingday_status` tinyint unsigned NOT NULL DEFAULT '1',
  `user_id` bigint unsigned NOT NULL,
  `f_year` smallint NOT NULL,
  `leave_date` int NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_request_id` (`leave_request_id`),
  KEY `user_id` (`user_id`),
  KEY `user_fyear_leave` (`user_id`,`f_year`,`leave_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_request_details`
--

LOCK TABLES `wp_erp_hr_leave_request_details` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_request_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_request_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leave_requests`
--

DROP TABLE IF EXISTS `wp_erp_hr_leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leave_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `leave_id` smallint unsigned NOT NULL,
  `leave_entitlement_id` bigint unsigned NOT NULL DEFAULT '0',
  `day_status_id` smallint unsigned NOT NULL DEFAULT '1',
  `days` decimal(5,1) unsigned NOT NULL DEFAULT '0.0',
  `start_date` int NOT NULL,
  `end_date` int NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_status` smallint unsigned NOT NULL DEFAULT '2',
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_leave` (`user_id`,`leave_id`),
  KEY `user_entitlement` (`user_id`,`leave_entitlement_id`),
  KEY `last_status` (`last_status`),
  KEY `leave_entitlement_id` (`leave_entitlement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leave_requests`
--

LOCK TABLES `wp_erp_hr_leave_requests` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leave_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leave_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leaves`
--

DROP TABLE IF EXISTS `wp_erp_hr_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leaves` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leaves`
--

LOCK TABLES `wp_erp_hr_leaves` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_leaves_unpaid`
--

DROP TABLE IF EXISTS `wp_erp_hr_leaves_unpaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_leaves_unpaid` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `leave_id` smallint unsigned NOT NULL,
  `leave_request_id` bigint unsigned NOT NULL,
  `leave_approval_status_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `days` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `f_year` smallint unsigned NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `leave_id` (`leave_id`),
  KEY `f_year` (`f_year`),
  KEY `leave_request_id` (`leave_request_id`),
  KEY `leave_approval_status_id` (`leave_approval_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_leaves_unpaid`
--

LOCK TABLES `wp_erp_hr_leaves_unpaid` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_leaves_unpaid` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_leaves_unpaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_hr_work_exp`
--

DROP TABLE IF EXISTS `wp_erp_hr_work_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_hr_work_exp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_hr_work_exp`
--

LOCK TABLES `wp_erp_hr_work_exp` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_work_exp` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_hr_work_exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_people_type_relations`
--

DROP TABLE IF EXISTS `wp_erp_people_type_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_people_type_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `people_id` bigint unsigned DEFAULT NULL,
  `people_types_id` int unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `people_types_id` (`people_types_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_people_type_relations`
--

LOCK TABLES `wp_erp_people_type_relations` WRITE;
/*!40000 ALTER TABLE `wp_erp_people_type_relations` DISABLE KEYS */;
INSERT INTO `wp_erp_people_type_relations` VALUES (1,1,5,NULL),(2,2,5,NULL);
/*!40000 ALTER TABLE `wp_erp_people_type_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_people_types`
--

DROP TABLE IF EXISTS `wp_erp_people_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_people_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_people_types`
--

LOCK TABLES `wp_erp_people_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_people_types` DISABLE KEYS */;
INSERT INTO `wp_erp_people_types` VALUES (2,'company'),(1,'contact'),(3,'customer'),(5,'employee'),(4,'vendor');
/*!40000 ALTER TABLE `wp_erp_people_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_peoplemeta`
--

DROP TABLE IF EXISTS `wp_erp_peoplemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_peoplemeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `erp_people_id` bigint DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `erp_people_id` (`erp_people_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_peoplemeta`
--

LOCK TABLES `wp_erp_peoplemeta` WRITE;
/*!40000 ALTER TABLE `wp_erp_peoplemeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_peoplemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_peoples`
--

DROP TABLE IF EXISTS `wp_erp_peoples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_peoples` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT '0',
  `first_name` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `company` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `other` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci,
  `street_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `street_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `life_stage` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `contact_owner` bigint DEFAULT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_peoples`
--

LOCK TABLES `wp_erp_peoples` WRITE;
/*!40000 ALTER TABLE `wp_erp_peoples` DISABLE KEYS */;
INSERT INTO `wp_erp_peoples` VALUES (1,2,'Иван','Иванов',NULL,'ivamnov@datum.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1ca28d9d1e67372eee35168d66738f117ad41129',1,'2022-05-02 10:44:17'),(2,3,'Илья','Власов',NULL,'vlasoviv@datum-group.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'346ff2692eccb5b06c936fd5a40b21e2ab27bed6',1,'2022-05-02 10:47:52');
/*!40000 ALTER TABLE `wp_erp_peoples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_erp_user_leaves`
--

DROP TABLE IF EXISTS `wp_erp_user_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_erp_user_leaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `request_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_erp_user_leaves`
--

LOCK TABLES `wp_erp_user_leaves` WRITE;
/*!40000 ALTER TABLE `wp_erp_user_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_erp_user_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_activities`
--

DROP TABLE IF EXISTS `wp_pm_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int unsigned NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `resource_id` int unsigned DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `meta` text,
  `project_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `actor_id` (`actor_id`),
  KEY `resource_id` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_activities`
--

LOCK TABLES `wp_pm_activities` WRITE;
/*!40000 ALTER TABLE `wp_pm_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_assignees`
--

DROP TABLE IF EXISTS `wp_pm_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_assignees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int unsigned NOT NULL,
  `assigned_to` int unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `project_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_assignees`
--

LOCK TABLES `wp_pm_assignees` WRITE;
/*!40000 ALTER TABLE `wp_pm_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_boardables`
--

DROP TABLE IF EXISTS `wp_pm_boardables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_boardables` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int unsigned NOT NULL,
  `board_type` varchar(255) NOT NULL,
  `boardable_id` int unsigned NOT NULL,
  `boardable_type` varchar(255) NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `board_id` (`board_id`),
  KEY `boardable_id` (`boardable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_boardables`
--

LOCK TABLES `wp_pm_boardables` WRITE;
/*!40000 ALTER TABLE `wp_pm_boardables` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_boardables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_boards`
--

DROP TABLE IF EXISTS `wp_pm_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_boards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `order` int unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `is_private` tinyint unsigned DEFAULT '0',
  `project_id` int unsigned NOT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_boards`
--

LOCK TABLES `wp_pm_boards` WRITE;
/*!40000 ALTER TABLE `wp_pm_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_capabilities`
--

DROP TABLE IF EXISTS `wp_pm_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_capabilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_capabilities`
--

LOCK TABLES `wp_pm_capabilities` WRITE;
/*!40000 ALTER TABLE `wp_pm_capabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_categories`
--

DROP TABLE IF EXISTS `wp_pm_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `categorible_type` varchar(255) DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_categories`
--

LOCK TABLES `wp_pm_categories` WRITE;
/*!40000 ALTER TABLE `wp_pm_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_category_project`
--

DROP TABLE IF EXISTS `wp_pm_category_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_category_project` (
  `project_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  KEY `project_id` (`project_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_category_project`
--

LOCK TABLES `wp_pm_category_project` WRITE;
/*!40000 ALTER TABLE `wp_pm_category_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_category_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_comments`
--

DROP TABLE IF EXISTS `wp_pm_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `mentioned_users` varchar(255) DEFAULT NULL,
  `commentable_id` int unsigned NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `project_id` int unsigned NOT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `commentable_id` (`commentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_comments`
--

LOCK TABLES `wp_pm_comments` WRITE;
/*!40000 ALTER TABLE `wp_pm_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_files`
--

DROP TABLE IF EXISTS `wp_pm_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fileable_id` int DEFAULT NULL,
  `fileable_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'file',
  `attachment_id` bigint DEFAULT NULL,
  `parent` int NOT NULL DEFAULT '0',
  `project_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `fileable_id` (`fileable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_files`
--

LOCK TABLES `wp_pm_files` WRITE;
/*!40000 ALTER TABLE `wp_pm_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_imports`
--

DROP TABLE IF EXISTS `wp_pm_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_imports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `remote_id` varchar(150) NOT NULL,
  `local_id` varchar(150) NOT NULL,
  `creator_id` int unsigned DEFAULT NULL,
  `source` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_imports`
--

LOCK TABLES `wp_pm_imports` WRITE;
/*!40000 ALTER TABLE `wp_pm_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_meta`
--

DROP TABLE IF EXISTS `wp_pm_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text,
  `project_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_id` (`entity_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_meta`
--

LOCK TABLES `wp_pm_meta` WRITE;
/*!40000 ALTER TABLE `wp_pm_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_projects`
--

DROP TABLE IF EXISTS `wp_pm_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint NOT NULL DEFAULT '0',
  `budget` double(8,2) DEFAULT NULL,
  `pay_rate` double(8,2) DEFAULT NULL,
  `est_completion_date` timestamp NULL DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `projectable_type` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_projects`
--

LOCK TABLES `wp_pm_projects` WRITE;
/*!40000 ALTER TABLE `wp_pm_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_role_project`
--

DROP TABLE IF EXISTS `wp_pm_role_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_role_project` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_role_project`
--

LOCK TABLES `wp_pm_role_project` WRITE;
/*!40000 ALTER TABLE `wp_pm_role_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_role_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_role_project_capabilities`
--

DROP TABLE IF EXISTS `wp_pm_role_project_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_role_project_capabilities` (
  `role_project_id` int unsigned NOT NULL,
  `capability_id` int unsigned NOT NULL,
  KEY `role_project_id` (`role_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_role_project_capabilities`
--

LOCK TABLES `wp_pm_role_project_capabilities` WRITE;
/*!40000 ALTER TABLE `wp_pm_role_project_capabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_role_project_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_role_project_users`
--

DROP TABLE IF EXISTS `wp_pm_role_project_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_role_project_users` (
  `role_project_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  KEY `role_project_id` (`role_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_role_project_users`
--

LOCK TABLES `wp_pm_role_project_users` WRITE;
/*!40000 ALTER TABLE `wp_pm_role_project_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_role_project_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_role_user`
--

DROP TABLE IF EXISTS `wp_pm_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `assigned_by` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  KEY `assigned_by` (`assigned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_role_user`
--

LOCK TABLES `wp_pm_role_user` WRITE;
/*!40000 ALTER TABLE `wp_pm_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_roles`
--

DROP TABLE IF EXISTS `wp_pm_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_roles`
--

LOCK TABLES `wp_pm_roles` WRITE;
/*!40000 ALTER TABLE `wp_pm_roles` DISABLE KEYS */;
INSERT INTO `wp_pm_roles` VALUES (1,'Manager','manager','Manager is a person who manages the project.',1,1,1,'2022-05-02 07:28:41','2022-05-02 07:28:41'),(2,'Co-Worker','co_worker','Co-worker is person who works under a project.',1,1,1,'2022-05-02 07:28:41','2022-05-02 07:28:41');
/*!40000 ALTER TABLE `wp_pm_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_settings`
--

DROP TABLE IF EXISTS `wp_pm_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text,
  `project_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_settings`
--

LOCK TABLES `wp_pm_settings` WRITE;
/*!40000 ALTER TABLE `wp_pm_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_task_type_task`
--

DROP TABLE IF EXISTS `wp_pm_task_type_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_task_type_task` (
  `type_id` int unsigned NOT NULL,
  `task_id` int unsigned NOT NULL,
  `project_id` int unsigned NOT NULL,
  `list_id` int unsigned NOT NULL,
  UNIQUE KEY `task_id` (`task_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_task_type_task`
--

LOCK TABLES `wp_pm_task_type_task` WRITE;
/*!40000 ALTER TABLE `wp_pm_task_type_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_task_type_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_task_types`
--

DROP TABLE IF EXISTS `wp_pm_task_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_task_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_task_types`
--

LOCK TABLES `wp_pm_task_types` WRITE;
/*!40000 ALTER TABLE `wp_pm_task_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_task_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pm_tasks`
--

DROP TABLE IF EXISTS `wp_pm_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_pm_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `estimation` int DEFAULT '0',
  `start_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `complexity` tinyint DEFAULT NULL,
  `priority` tinyint NOT NULL DEFAULT '1',
  `payable` tinyint(1) NOT NULL DEFAULT '0',
  `recurrent` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_private` tinyint unsigned DEFAULT '0',
  `project_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `completed_by` int unsigned DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pm_tasks`
--

LOCK TABLES `wp_pm_tasks` WRITE;
/*!40000 ALTER TABLE `wp_pm_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pm_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,6,'_wp_attached_file','2022/05/Снимок-экрана-от-2022-01-21-16-01-45.png'),(4,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:62:\"2022/05/Снимок-экрана-от-2022-01-21-16-01-45.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(5,7,'_wp_attached_file','2022/05/Без-названия-2.jpeg'),(6,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:38:\"2022/05/Без-названия-2.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(7,8,'_wp_attached_file','2022/05/Без-названия.png'),(8,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:35:\"2022/05/Без-названия.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-05-02 10:08:21','2022-05-02 10:08:21','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-05-02 10:08:21','2022-05-02 10:08:21','',0,'http://projects/?p=1',0,'post','',1),(2,1,'2022-05-02 10:08:21','2022-05-02 10:08:21','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://projects/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-05-02 10:08:21','2022-05-02 10:08:21','',0,'http://projects/?page_id=2',0,'page','',0),(3,1,'2022-05-02 10:08:21','2022-05-02 10:08:21','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://projects.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-05-02 10:08:21','2022-05-02 10:08:21','',0,'http://projects/?page_id=3',0,'page','',0),(4,1,'2022-05-02 10:08:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-05-02 10:08:53','0000-00-00 00:00:00','',0,'http://projects/?p=4',0,'post','',0),(5,1,'2022-05-02 10:26:16','2022-05-02 10:26:16','','ERP Подписка','','publish','closed','closed','','erp-%d0%bf%d0%be%d0%b4%d0%bf%d0%b8%d1%81%d0%ba%d0%b0','','','2022-05-02 10:26:16','2022-05-02 10:26:16','',0,'http://projects/index.php/erp-%d0%bf%d0%be%d0%b4%d0%bf%d0%b8%d1%81%d0%ba%d0%b0/',0,'page','',0),(6,1,'2022-05-02 10:41:57','2022-05-02 10:41:57','','Снимок экрана от 2022-01-21 16-01-45','','inherit','open','closed','','%d1%81%d0%bd%d0%b8%d0%bc%d0%be%d0%ba-%d1%8d%d0%ba%d1%80%d0%b0%d0%bd%d0%b0-%d0%be%d1%82-2022-01-21-16-01-45','','','2022-05-02 10:41:57','2022-05-02 10:41:57','',0,'http://projects/wp-content/uploads/2022/05/Снимок-экрана-от-2022-01-21-16-01-45.png',0,'attachment','image/png',0),(7,1,'2022-05-02 10:42:55','2022-05-02 10:42:55','','Без названия (2)','','inherit','open','closed','','%d0%b1%d0%b5%d0%b7-%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f-2','','','2022-05-02 10:42:55','2022-05-02 10:42:55','',0,'http://projects/wp-content/uploads/2022/05/Без-названия-2.jpeg',0,'attachment','image/jpeg',0),(8,1,'2022-05-02 10:48:39','2022-05-02 10:48:39','','Без названия','','inherit','open','closed','','%d0%b1%d0%b5%d0%b7-%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f','','','2022-05-02 10:48:39','2022-05-02 10:48:39','',0,'http://projects/wp-content/uploads/2022/05/Без-названия.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','erp'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:5:{s:13:\"administrator\";b:1;s:14:\"erp_hr_manager\";b:1;s:15:\"erp_crm_manager\";b:1;s:14:\"erp_ac_manager\";b:1;s:8:\"pm_admin\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"0434dbbfa9d1c8be00adc8ef9d90bdc86f1d74cfa435a9c5e0081e99ae384a5e\";a:4:{s:10:\"expiration\";i:1651658928;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36\";s:5:\"login\";i:1651486128;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,2,'nickname','ivamnov@datum.ru'),(20,2,'first_name','Иван'),(21,2,'last_name','Иванов'),(22,2,'description',''),(23,2,'rich_editing','true'),(24,2,'syntax_highlighting','true'),(25,2,'comment_shortcuts','false'),(26,2,'admin_color','fresh'),(27,2,'use_ssl','0'),(28,2,'show_admin_bar_front','true'),(29,2,'locale',''),(30,2,'wp_capabilities','a:1:{s:8:\"employee\";b:1;}'),(31,2,'wp_user_level','0'),(32,2,'dismissed_wp_pointers',''),(33,2,'other_email',''),(34,2,'phone',''),(35,2,'spouse_name',''),(36,2,'father_name',''),(37,2,'mother_name',''),(38,2,'mobile',''),(39,2,'address',''),(40,2,'hobbies',''),(41,2,'user_url',''),(42,2,'street_1',''),(43,2,'street_2',''),(44,2,'city',''),(45,2,'postal_code',''),(46,2,'full_name',''),(47,2,'photo_id','7'),(48,2,'middle_name','Иванович'),(49,2,'work_phone','88006664422'),(50,2,'blood_group','-1'),(51,2,'nationality','-1'),(52,2,'gender','male'),(53,2,'marital_status','single'),(54,2,'driving_license','B'),(55,2,'country','RU'),(56,2,'state','ROSTOV'),(57,1,'wp_user-settings','libraryContent=browse'),(58,1,'wp_user-settings-time','1651488252'),(59,3,'nickname','vlasoviv@datum-group.ru'),(60,3,'first_name','Илья'),(61,3,'last_name','Власов'),(62,3,'description',''),(63,3,'rich_editing','true'),(64,3,'syntax_highlighting','true'),(65,3,'comment_shortcuts','false'),(66,3,'admin_color','fresh'),(67,3,'use_ssl','0'),(68,3,'show_admin_bar_front','true'),(69,3,'locale',''),(70,3,'wp_capabilities','a:1:{s:8:\"employee\";b:1;}'),(71,3,'wp_user_level','0'),(72,3,'dismissed_wp_pointers',''),(73,3,'photo_id','8'),(74,3,'other_email',''),(75,3,'phone',''),(76,3,'work_phone',''),(77,3,'spouse_name',''),(78,3,'father_name',''),(79,3,'mother_name',''),(80,3,'mobile',''),(81,3,'address',''),(82,3,'driving_license',''),(83,3,'hobbies',''),(84,3,'user_url',''),(85,3,'street_1',''),(86,3,'street_2',''),(87,3,'city',''),(88,3,'postal_code',''),(89,3,'full_name',''),(90,3,'middle_name','Вадимович'),(91,3,'blood_group','-1'),(92,3,'nationality','-1'),(93,3,'gender','male'),(94,3,'marital_status','single'),(95,3,'country','RU'),(96,3,'state','ROSTOV');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'erp','$P$BE0RgByV.lRrXAF/QIBesbaqhi1P40/','erp','darikapiterski@mail.ru','http://projects','2022-05-02 10:08:18','',0,'erp'),(2,'ivamnov@datum.ru','$P$B4RdEpBAOG9/IBuM5zIJLuIc/J2JUJ0','ivamnovdatum-ru','ivamnov@datum.ru','','2022-05-02 10:44:10','',0,'Иван Иванович Иванов'),(3,'vlasoviv@datum-group.ru','$P$B/s5OaERRKxPQ60gDQmTuHMVXgmFT/.','vlasovivdatum-group-ru','vlasoviv@datum-group.ru','','2022-05-02 10:47:46','',0,'Илья Вадимович Власов');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wemail_forms`
--

DROP TABLE IF EXISTS `wp_wemail_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wemail_forms` (
  `id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `template` longtext COLLATE utf8mb4_unicode_520_ci,
  `plugin_version` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT 'inline',
  `status` tinyint(1) DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wemail_forms`
--

LOCK TABLES `wp_wemail_forms` WRITE;
/*!40000 ALTER TABLE `wp_wemail_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wemail_forms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 14:16:05