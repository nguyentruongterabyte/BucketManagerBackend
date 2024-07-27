-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: finacialmanager
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(30) NOT NULL,
  `_icon` int(11) NOT NULL,
  `_color` varchar(10) NOT NULL,
  `_transaction_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories__transaction_type_id_foreign` (`_transaction_type_id`),
  CONSTRAINT `categories__transaction_type_id_foreign` FOREIGN KEY (`_transaction_type_id`) REFERENCES `transaction_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Allowance',14,'#35B8FD',1),(2,'Award',15,'#006067',1),(3,'Bonus',16,'#00C0BC',1),(4,'Dividend',17,'#FEC900',1),(5,'Investment',18,'#FCAB04',1),(6,'Lottery',3,'#E3432F',1),(7,'Salary',19,'#9A015C',1),(8,'Tips',6,'#602C88',1),(9,'Others',13,'#8B59F7',1),(10,'Bill',0,'#2FBFFB',2),(11,'Clothing',1,'#0075C2',2),(12,'Education',2,'#01A49F',2),(13,'Entertainment',3,'#00C3BD',2),(14,'Fitness',4,'#79CE00',2),(15,'Food',5,'#FDC800',2),(16,'Gifts',6,'#FAAA00',2),(17,'Health',7,'#EA4031',2),(18,'Furniture',8,'#9C005B',2),(19,'Pet',9,'#632B88',2),(20,'Shopping',10,'#8E57F7',2),(21,'Transportation',11,'#DE1B9C',2),(22,'Travel',12,'#884310',2),(23,'Others',13,'#603C34',2);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_ISO_code` varchar(5) DEFAULT NULL,
  `_symbol` varchar(5) NOT NULL,
  `_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (700,'RUB','₽','Russian ruble'),(701,'AFN','؋','Afghan afghani'),(702,'EUR','€','Euro'),(703,'ALL','Lek','Albanian lek'),(704,'DZD','DA','Algerian dinar'),(705,'EUR','€','Euro'),(706,'AOA','Kz','Angolan kwanza'),(707,'XCD','$','Eastern Caribbean dollar'),(708,'XCD','$','Eastern Caribbean dollar'),(709,'ARS','$','Argentine peso'),(710,'AMD','֏','Armenian dram'),(711,'AWG','ƒ','Aruban florin'),(712,'SHP','£','Saint Helena pound'),(713,'AUD','$','Australian dollar'),(714,'EUR','€','Euro'),(715,'AZN','₼','Azerbaijani manat'),(716,'BSD','$','Bahamian dollar'),(717,'BHD','BD','Bahraini dinar'),(718,'BDT','৳','Bangladeshi taka'),(719,'BBD','$','Barbadian dollar'),(720,'BYN','Br','Belarusian ruble'),(721,'EUR','€','Euro'),(722,'BZD','$','Belize dollar'),(723,'XOF','Fr','West African CFA franc'),(724,'BMD','$','Bermudian dollar'),(725,'BTN','Nu','Bhutanese ngultrum'),(726,'INR','₹','Indian rupee'),(727,'BOB','Bs','Bolivian boliviano'),(728,'USD','$','United States dollar'),(729,'BAM','KM','Bosnia and Herzegovina convertible mark'),(730,'BWP','P','Botswana pula'),(731,'BRL','R$','Brazilian real'),(732,'USD','$','United States dollar'),(733,'USD','$','United States dollar'),(734,'BND','$','Brunei dollar'),(735,'SGD','$','Singapore dollar'),(736,'BGN','Lev','Bulgarian lev'),(737,'XOF','Fr','West African CFA franc'),(738,'BIF','Fr','Burundian franc'),(739,'KHR','៛','Cambodian riel'),(740,'USD','$','United States dollar'),(741,'XAF','Fr','Central African CFA franc'),(742,'CAD','$','Canadian dollar'),(743,'CVE','$','Cape Verdean escudo'),(744,'KYD','$','Cayman Islands dollar'),(745,'XAF','Fr','Central African CFA franc'),(746,'XAF','Fr','Central African CFA franc'),(747,'CLP','$','Chilean peso'),(748,'CNY','¥','Renminbi'),(749,'COP','$','Colombian peso'),(750,'KMF','Fr','Comorian franc'),(751,'CDF','Fr','Congolese franc'),(752,'XAF','Fr','Central African CFA franc'),(753,'NZD','$','New Zealand dollar'),(754,'CRC','₡','Costa Rican colón'),(755,'XOF','Fr','West African CFA franc'),(756,'EUR','€','Euro'),(757,'CUP','$','Cuban peso'),(758,'ANG','ƒ','Netherlands Antillean guilder'),(759,'EUR','€','Euro'),(760,'CZK','Kč','Czech koruna'),(761,'DKK','kr','Danish krone'),(762,'DJF','Fr','Djiboutian franc'),(763,'XCD','$','Eastern Caribbean dollar'),(764,'DOP','$','Dominican peso'),(765,'USD','$','United States dollar'),(766,'USD','$','United States dollar'),(767,'EGP','LE','Egyptian pound'),(768,'USD','$','United States dollar'),(770,'XAF','Fr','Central African CFA franc'),(771,'ERN','Nkf','Eritrean nakfa'),(772,'EUR','€','Euro'),(773,'SZL','L','Swazi lilangeni'),(774,'ZAR','R','South African rand'),(775,'ETB','Br','Ethiopian birr'),(776,'FKP','£','Falkland Islands pound'),(777,'GBP','£','Sterling'),(778,'DKK','kr','Danish krone'),(780,'FJD','$','Fijian dollar'),(781,'EUR','€','Euro'),(782,'EUR','€','Euro'),(783,'XPF','₣','CFP franc'),(784,'EUR','€','Euro'),(785,'XAF','Fr','Central African CFA franc'),(786,'GMD','D','Gambian dalasi'),(787,'GEL','₾','Georgian lari'),(788,'EUR','€','Euro'),(789,'GHS','₵','Ghanaian cedi'),(790,'GIP','£','Gibraltar pound'),(791,'GBP','£','Sterling'),(792,'EUR','€','Euro'),(793,'DKK','kr','Danish krone'),(794,'XCD','$','Eastern Caribbean dollar'),(795,'GTQ','Q','Guatemalan quetzal'),(797,'GBP','£','Sterling'),(798,'GNF','Fr','Guinean franc'),(799,'XOF','Fr','West African CFA franc'),(800,'GYD','$','Guyanese dollar'),(801,'HTG','G','Haitian gourde'),(802,'HNL','L','Honduran lempira'),(803,'HKD','$','Hong Kong dollar'),(804,'HUF','Ft','Hungarian forint'),(805,'ISK','kr','Icelandic króna'),(806,'INR','₹','Indian rupee'),(807,'IDR','Rp','Indonesian rupiah'),(808,'IRR','Rl','Iranian rial'),(809,'IQD','ID','Iraqi dinar'),(810,'EUR','€','Euro'),(812,'GBP','£','Sterling'),(813,'ILS','₪','Israeli new shekel'),(814,'EUR','€','Euro'),(815,'JMD','$','Jamaican dollar'),(816,'JPY','¥','Japanese yen'),(818,'GBP','£','Sterling'),(819,'JOD','JD','Jordanian dinar'),(820,'KZT','₸','Kazakhstani tenge'),(821,'KES','Sh','Kenyan shilling'),(823,'AUD','$','Australian dollar'),(824,'KPW','₩','North Korean won'),(825,'KRW','₩','South Korean won'),(826,'EUR','€','Euro'),(827,'KWD','KD','Kuwaiti dinar'),(828,'KGS','som','Kyrgyz som'),(829,'LAK','₭','Lao kip'),(830,'EUR','€','Euro'),(831,'LBP','LL','Lebanese pound'),(832,'LSL','L','Lesotho loti'),(833,'ZAR','R','South African rand'),(834,'FKP','£','Falkland Islands pound'),(835,'GBP','£','Sterling'),(836,'LRD','$','Liberian dollar'),(837,'USD','$','United States dollar'),(838,'LYD','LD','Libyan dinar'),(839,'CHF','Fr','Swiss franc'),(840,'EUR','€','Euro'),(841,'EUR','€','Euro'),(842,'MOP','MOP$','Macanese pataca'),(843,'HKD','$','Hong Kong dollar'),(844,'MGA','Ar','Malagasy ariary'),(845,'MWK','K','Malawian kwacha'),(846,'MYR','RM','Malaysian ringgit'),(847,'MVR','Rf','Maldivian rufiyaa'),(848,'XOF','Fr','West African CFA franc'),(849,'EUR','€','Euro'),(850,'USD','$','United States dollar'),(851,'MRU','UM','Mauritanian ouguiya'),(852,'MUR','Re','Mauritian rupee'),(853,'MXN','$','Mexican peso'),(854,'USD','$','United States dollar'),(855,'MDL','Leu','Moldovan leu'),(856,'EUR','€','Euro'),(857,'MNT','₮','Mongolian tögrög'),(858,'EUR','€','Euro'),(859,'XCD','$','Eastern Caribbean dollar'),(860,'MAD','DH','Moroccan dirham'),(861,'MZN','Mt','Mozambican metical'),(862,'MMK','K','Burmese kyat'),(863,'NAD','$','Namibian dollar'),(864,'ZAR','R','South African rand'),(865,'AUD','$','Australian dollar'),(866,'NPR','Re','Nepalese rupee'),(867,'INR','₹','Indian rupee'),(868,'EUR','€','Euro'),(869,'XPF','₣','CFP franc'),(870,'NZD','$','New Zealand dollar'),(871,'NIO','C$','Nicaraguan córdoba'),(872,'XOF','Fr','West African CFA franc'),(873,'NGN','₦','Nigerian naira'),(874,'NZD','$','New Zealand dollar'),(876,'MKD','DEN','Macedonian denar'),(877,'TRY','₺','Turkish lira'),(878,'NOK','kr','Norwegian krone'),(879,'OMR','RO','Omani rial'),(880,'PKR','Re','Pakistani rupee'),(881,'USD','$','United States dollar'),(882,'ILS','₪','Israeli new shekel'),(883,'JOD','JD','Jordanian dinar'),(884,'PAB','B','Panamanian balboa'),(885,'USD','$','United States dollar'),(886,'PGK','K','Papua New Guinean kina'),(887,'PYG','₲','Paraguayan guaraní'),(888,'PEN','S','Peruvian sol'),(889,'PHP','₱','Philippine peso'),(890,'NZD','$','New Zealand dollar'),(892,'PLN','zł','Polish złoty'),(893,'EUR','€','Euro'),(894,'QAR','QR','Qatari riyal'),(895,'RON','Leu','Romanian leu'),(896,'RUB','₽','Russian ruble'),(897,'RWF','Fr','Rwandan franc'),(898,'USD','$','United States dollar'),(899,'MAD','DH','Moroccan dirham'),(901,'SHP','£','Saint Helena pound'),(902,'GBP','£','Sterling'),(903,'XCD','$','Eastern Caribbean dollar'),(904,'XCD','$','Eastern Caribbean dollar'),(905,'EUR','€','Euro'),(906,'CAD','$','Canadian dollar'),(907,'XCD','$','Eastern Caribbean dollar'),(908,'WST','$','Samoan tālā'),(909,'EUR','€','Euro'),(910,'EUR','€','Euro'),(911,'STN','Db','São Tomé and Príncipe dobra'),(912,'SAR','Rl','Saudi riyal'),(913,'XOF','Fr','West African CFA franc'),(914,'RSD','DIN','Serbian dinar'),(915,'SCR','Re','Seychellois rupee'),(916,'SLE','Le','Sierra Leonean leone'),(917,'SGD','$','Singapore dollar'),(918,'BND','$','Brunei dollar'),(919,'USD','$','United States dollar'),(920,'ANG','ƒ','Netherlands Antillean guilder'),(921,'EUR','€','Euro'),(922,'EUR','€','Euro'),(923,'SBD','$','Solomon Islands dollar'),(924,'SOS','Sh','Somali shilling'),(926,'ZAR','R','South African rand'),(927,'RUB','₽','Russian ruble'),(928,'SSP','LS','South Sudanese pound'),(929,'EUR','€','Euro'),(930,'LKR','Re','Sri Lankan rupee'),(931,'SDG','LS','Sudanese pound'),(932,'SRD','$','Surinamese dollar'),(933,'SEK','kr','Swedish krona'),(934,'CHF','Fr','Swiss franc'),(935,'SYP','LS','Syrian pound'),(936,'TWD','$','New Taiwan dollar'),(937,'TJS','SM','Tajikistani somoni'),(938,'TZS','Sh','Tanzanian shilling'),(939,'THB','฿','Thai baht'),(940,'XOF','Fr','West African CFA franc'),(941,'TOP','T$','Tongan paʻanga[K]'),(943,'TTD','$','Trinidad and Tobago dollar'),(944,'TND','DT','Tunisian dinar'),(945,'TRY','₺','Turkish lira'),(946,'TMT','m','Turkmenistani manat'),(947,'USD','$','United States dollar'),(949,'AUD','$','Australian dollar'),(950,'UGX','Sh','Ugandan shilling'),(951,'UAH','₴','Ukrainian hryvnia'),(952,'AED','Dh','United Arab Emirates dirham'),(953,'GBP','£','Sterling'),(954,'USD','$','United States dollar'),(955,'UYU','$','Uruguayan peso'),(956,'UZS','soum','Uzbekistani sum'),(957,'VUV','VT','Vanuatu vatu'),(958,'EUR','€','Euro'),(959,'VES','Bs.S','Venezuelan sovereign bolívar'),(960,'VED','Bs.D','Venezuelan digital bolívar'),(961,'USD','$','United States dollar'),(962,'VND','₫','Vietnamese đồng'),(963,'XPF','₣','CFP franc'),(964,'YER','Rl','Yemeni rial'),(965,'ZMW','K','Zambian kwacha'),(968,'USD','$','United States dollar');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (3,'2024_07_11_023457_create_transaction_types_table',1),(4,'2024_07_11_025321_create_categories_table',2),(5,'2024_07_11_025532_create_transactions_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (92,'App\\Models\\User',3,'api-token','ea320f2886c0385e368cf420c38232e920e1ff550ec013981c1b9226c2b01a4a','[\"*\"]',NULL,'2024-07-20 05:04:36','2024-07-20 04:04:36','2024-07-20 04:04:36'),(94,'App\\Models\\User',3,'api-token','b09ccf15c55f781402598560ea8a69a545756ba052ee8a4557f37f57a4632132','[\"*\"]',NULL,'2024-07-20 05:22:49','2024-07-20 04:22:49','2024-07-20 04:22:49'),(95,'App\\Models\\User',3,'api-token','d4289d413f55c26bd209e20908cc1fe50cc12d04d3138c5781338ae7ac97d413','[\"*\"]',NULL,'2024-07-20 15:19:45','2024-07-20 14:19:45','2024-07-20 14:19:45');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `refresh_tokens_token_unique` (`token`),
  KEY `refresh_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `refresh_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
INSERT INTO `refresh_tokens` VALUES (47,'2024-07-15 09:08:34','2024-07-15 09:08:34',22,'BRdtBxdsP5aTWHqsqmyj5IZubW702Em8EdJQ78iLUGsv2bpQRkSdrYvX8QZTPiHU','2024-08-14 16:08:34'),(48,'2024-07-15 10:42:57','2024-07-15 10:42:57',3,'vB8Qr2GQGgtZRuqqltNdQuvpjHqSBxfeDm2dgffNcQYdFy3oUOiCD6nUrtRFsHMl','2024-08-14 17:42:57'),(52,'2024-07-15 11:03:14','2024-07-15 11:03:14',3,'3BYbVklj26M1YgB0G36tV52C61WAnN81U6x8e2XqNUnU5EJ9hS9B5Roq9yrLzeDB','2024-08-14 18:03:14'),(53,'2024-07-15 11:04:33','2024-07-15 11:04:33',3,'0zQKIXrkrhMJxJvCKAmpZH2ykIYMnZhMLb8CLIBSOwY7kVo2PmOMMmoz82f9qKvQ','2024-08-14 18:04:33'),(60,'2024-07-16 17:43:15','2024-07-16 17:43:15',21,'kSEZYRiXT4KLdGVDFuZ8WQ3ZP8mMQcU85FUncz5MOWF24UgOwuIc7o9pJ1OETr5B','2024-08-16 00:43:15'),(66,'2024-07-20 04:04:36','2024-07-20 04:04:36',3,'IT0fbbBnJnGJYYYuLJIMOLIWAGw9HI9iWpsYSmQOkZtpHdJBT9GS0YFe0QYEz2kw','2024-08-19 11:04:36'),(68,'2024-07-20 04:22:49','2024-07-20 04:22:49',3,'S7os5hUmQz2Vrnw8oyrS6eL021igIQVCtrEfPPUjQVryOlLMrCNcIFdxlHZANkkt','2024-08-19 11:22:49'),(69,'2024-07-20 14:19:45','2024-07-20 14:19:45',3,'InWw2nZ2ZOlN3jduVgQyP2fpZuzo7IzrqC0djBSsqSwVoreB1HyHteWELIbBVeJ7','2024-08-19 21:19:45');
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_types`
--

DROP TABLE IF EXISTS `transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_types`
--

LOCK TABLES `transaction_types` WRITE;
/*!40000 ALTER TABLE `transaction_types` DISABLE KEYS */;
INSERT INTO `transaction_types` VALUES (1,'Income'),(2,'Expense'),(3,'Transfer');
/*!40000 ALTER TABLE `transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_amount` double NOT NULL DEFAULT 0,
  `_description` text DEFAULT NULL,
  `_wallet_id` bigint(20) unsigned NOT NULL,
  `_category_id` bigint(20) unsigned DEFAULT NULL,
  `_memo` text DEFAULT NULL,
  `_from_wallet_id` bigint(20) unsigned DEFAULT NULL,
  `_to_wallet_id` bigint(20) unsigned DEFAULT NULL,
  `_fee` double NOT NULL DEFAULT 0,
  `_transaction_type_id` bigint(20) unsigned NOT NULL,
  `_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `transactions__wallet_id_foreign` (`_wallet_id`),
  KEY `transactions__category_id_foreign` (`_category_id`),
  KEY `transactions__from_wallet_id_foreign` (`_from_wallet_id`),
  KEY `transactions__to_wallet_id_foreign` (`_to_wallet_id`),
  KEY `transactions__transaction_type_id_foreign` (`_transaction_type_id`),
  CONSTRAINT `transactions__category_id_foreign` FOREIGN KEY (`_category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `transactions__from_wallet_id_foreign` FOREIGN KEY (`_from_wallet_id`) REFERENCES `wallets` (`id`),
  CONSTRAINT `transactions__to_wallet_id_foreign` FOREIGN KEY (`_to_wallet_id`) REFERENCES `wallets` (`id`),
  CONSTRAINT `transactions__transaction_type_id_foreign` FOREIGN KEY (`_transaction_type_id`) REFERENCES `transaction_types` (`id`),
  CONSTRAINT `transactions__wallet_id_foreign` FOREIGN KEY (`_wallet_id`) REFERENCES `wallets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2024-07-20 14:37:39','2024-07-20 14:37:39',222,NULL,12,NULL,NULL,14,12,0,3,'2024-08-20 14:03:02');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(25) NOT NULL,
  `_email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_initial_currency_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users__email_unique` (`_email`),
  KEY `users__initial_currency_id_foreign` (`_initial_currency_id`),
  CONSTRAINT `users__initial_currency_id_foreign` FOREIGN KEY (`_initial_currency_id`) REFERENCES `currencies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Nguyễn Trần Thúy Lan Tâm','nguyenthaitruong.entertainment@gmail.com','2024-06-25 18:46:10','$2y$10$ev4B10zupvivO5X8H2hgb.mhTWt0KoDVyWOpLOVxPzaocFN4azG2q','2024-06-25 07:17:51','2024-06-25 18:46:10',962),(21,'Nguyen Thai Truong','nguyenthaitruong1223@gmail.com',NULL,'$2y$10$nu5e/5c32oqbVJg1d3lBfOerznVa5Csdb4mA6N/2wNtLxHVBMFHRa','2024-07-15 08:52:07','2024-07-15 10:45:20',962),(22,'Nguyen Thanh Tan','n20dccn083@student.ptithcm.edu.vn',NULL,'$2y$10$h65H/YW.W7K94OfbWIc3UeClFXBP0fl08lZvCekhOtaIo5ExbRX.e','2024-07-15 09:08:34','2024-07-15 09:08:34',962),(23,'Nguyen Thi Lan Phuong','nguyenthaitruong.work@gmail.com',NULL,'$2y$10$.knjR067xeeStg0qroCG0u86/O3emHaO.oe6ThMgXHgSAQ/g9dVH2','2024-07-17 20:11:30','2024-07-17 20:11:30',728),(24,'Time keeper','nguyenthaitruong12234@gmail.com',NULL,'$2y$10$TkBFkvV1Ykhfr8ECbVFn/uAh52CpWEp3xnfxA4HNapJmmgBG8OQLe','2024-07-18 03:23:01','2024-07-18 03:23:01',962),(25,'Tran Tam','nguyenthaitruong.entertainment1@gmail.com',NULL,'$2y$10$fEhTUJJcM7ErzTDQGc/MOun8MUjJClsWDbHkMO.w4JbDc8Se.f5Ze','2024-07-18 03:41:57','2024-07-18 03:41:57',713);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_types`
--

DROP TABLE IF EXISTS `wallet_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_types` (
  `_code` varchar(4) NOT NULL,
  `_name` varchar(255) NOT NULL,
  PRIMARY KEY (`_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_types`
--

LOCK TABLES `wallet_types` WRITE;
/*!40000 ALTER TABLE `wallet_types` DISABLE KEYS */;
INSERT INTO `wallet_types` VALUES ('CRE','Credit card'),('GEN','General');
/*!40000 ALTER TABLE `wallet_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_account_id` bigint(20) unsigned NOT NULL,
  `_name` varchar(255) NOT NULL,
  `_wallet_type_code` varchar(4) NOT NULL,
  `_initial_amount` double NOT NULL,
  `_exclude` tinyint(1) NOT NULL DEFAULT 0,
  `_color` varchar(10) DEFAULT NULL,
  `_icon` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `wallets__account_id_foreign` (`_account_id`),
  KEY `wallets__wallet_type_code_foreign` (`_wallet_type_code`),
  CONSTRAINT `wallets__account_id_foreign` FOREIGN KEY (`_account_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wallets__wallet_type_code_foreign` FOREIGN KEY (`_wallet_type_code`) REFERENCES `wallet_types` (`_code`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (12,'2024-07-04 06:59:34','2024-07-04 06:59:34',3,'Cash','GEN',370000000,0,'#35B8FD',0),(13,'2024-07-04 07:02:00','2024-07-04 07:02:00',3,'Momo','GEN',68000000,0,'#9A015C',1),(14,'2024-07-04 07:02:46','2024-07-04 07:02:46',3,'ZaloPay','GEN',110003000,0,'#35B8FD',2),(17,'2024-07-09 09:53:35','2024-07-09 09:53:35',3,'ShopeePay','GEN',200000,0,'#35B8FD',3),(19,'2024-07-15 08:52:07','2024-07-15 08:52:07',21,'Cash','GEN',200000,0,'#35B8FD',0),(20,'2024-07-15 09:08:34','2024-07-15 09:08:34',22,'Cash','GEN',230000,0,'#35B8FD',0),(21,'2024-07-17 20:11:32','2024-07-17 20:11:32',23,'Cash','GEN',200000,0,'#35B8FD',0),(22,'2024-07-18 03:23:05','2024-07-18 03:23:05',24,'Cash','GEN',200000,0,'#35B8FD',0),(23,'2024-07-18 03:41:59','2024-07-18 03:41:59',25,'Cash','GEN',250000,0,'#35B8FD',0);
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'finacialmanager'
--

--
-- Dumping routines for database 'finacialmanager'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_SEARCH_CURRENCIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SEARCH_CURRENCIES`(
    in search_key VARCHAR(255)
)
begin
    declare search_key_int INT default null;
-- Chuyển đổi search_key thành số nguyên nếu có thể
    SET search_key_int = CAST(search_key AS UNSIGNED);

    SELECT 
        id, _ISO_code, _symbol, _currency
    FROM 
        finacialmanager.currencies
    WHERE 
       
        _currency LIKE CONCAT('%', search_key, '%')
        OR _symbol LIKE CONCAT('%', search_key, '%')
        OR _ISO_code LIKE CONCAT('%', search_key, '%');
        
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

-- Dump completed on 2024-07-20 22:09:10
