-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: finacialmanager
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `budget_details`
--

DROP TABLE IF EXISTS `budget_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_budget_id` bigint unsigned NOT NULL,
  `_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `budget_details__budget_id_foreign` (`_budget_id`),
  KEY `budget_details__category_id_foreign` (`_category_id`),
  CONSTRAINT `budget_details__budget_id_foreign` FOREIGN KEY (`_budget_id`) REFERENCES `budgets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `budget_details__category_id_foreign` FOREIGN KEY (`_category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_details`
--

LOCK TABLES `budget_details` WRITE;
/*!40000 ALTER TABLE `budget_details` DISABLE KEYS */;
INSERT INTO `budget_details` VALUES (30,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,10),(31,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,11),(32,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,12),(33,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,13),(34,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,14),(35,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,15),(36,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,16),(37,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,17),(38,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,18),(39,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,19),(40,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,20),(41,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,21),(42,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,22),(43,'2024-08-11 03:20:14','2024-08-11 03:20:14',4,23),(44,'2024-08-11 08:07:25','2024-08-11 08:07:25',5,18),(45,'2024-08-11 08:07:25','2024-08-11 08:07:25',5,19),(46,'2024-08-11 08:07:25','2024-08-11 08:07:25',5,22),(47,'2024-08-11 08:07:25','2024-08-11 08:07:25',5,11),(62,'2024-08-11 16:24:49','2024-08-11 16:24:49',7,10),(63,'2024-08-11 16:24:49','2024-08-11 16:24:49',7,11);
/*!40000 ALTER TABLE `budget_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgets`
--

DROP TABLE IF EXISTS `budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_amount` double NOT NULL DEFAULT '0',
  `_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_period` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_account_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `budgets__account_id_foreign` (`_account_id`),
  CONSTRAINT `budgets__account_id_foreign` FOREIGN KEY (`_account_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgets`
--

LOCK TABLES `budgets` WRITE;
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
INSERT INTO `budgets` VALUES (4,'2024-08-11 03:20:14','2024-08-11 16:23:36','yearly spending',500000000,'#35B8FD','Yearly',3),(5,'2024-08-11 08:07:25','2024-08-11 12:57:41','Quarter spending',50000000,'#FEC900','Quarterly',3),(7,'2024-08-11 16:24:49','2024-08-11 16:24:49','Weekly spending',500000,'#35B8FD','Weekly',3);
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_icon` int NOT NULL,
  `_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_transaction_type_id` bigint unsigned NOT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `_ISO_code` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `_symbol` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `_currency` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (3,'2024_07_11_023457_create_transaction_types_table',1),(4,'2024_07_11_025321_create_categories_table',2),(5,'2024_07_11_025532_create_transactions_table',3),(12,'2024_08_09_063241_create_budgets_table',4),(13,'2024_08_09_063343_create_budget_details_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (96,'App\\Models\\User',26,'api-token','11e2c18f5b5bac1c7eb43305a5489d86263295d8826e91881b5c493d10f9d8b8','[\"*\"]',NULL,NULL,'2024-07-21 03:23:14','2024-07-21 03:23:14'),(98,'App\\Models\\User',27,'api-token','e7cc9dea7d083363f380d693f2c930b055be368530185897be7db3ebbc39c7ab','[\"*\"]',NULL,NULL,'2024-07-21 03:53:01','2024-07-21 03:53:01'),(174,'App\\Models\\User',3,'api-token','89ea8957c8fabd68b9dc4c86567b594459a161752e8097eaf8752c139ff7722c','[\"*\"]',NULL,'2024-08-11 01:10:00','2024-08-11 00:10:00','2024-08-11 00:10:00');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `refresh_tokens_token_unique` (`token`),
  KEY `refresh_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `refresh_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
INSERT INTO `refresh_tokens` VALUES (47,'2024-07-15 09:08:34','2024-07-15 09:08:34',22,'BRdtBxdsP5aTWHqsqmyj5IZubW702Em8EdJQ78iLUGsv2bpQRkSdrYvX8QZTPiHU','2024-08-14 16:08:34'),(48,'2024-07-15 10:42:57','2024-07-15 10:42:57',3,'vB8Qr2GQGgtZRuqqltNdQuvpjHqSBxfeDm2dgffNcQYdFy3oUOiCD6nUrtRFsHMl','2024-08-14 17:42:57'),(52,'2024-07-15 11:03:14','2024-07-15 11:03:14',3,'3BYbVklj26M1YgB0G36tV52C61WAnN81U6x8e2XqNUnU5EJ9hS9B5Roq9yrLzeDB','2024-08-14 18:03:14'),(53,'2024-07-15 11:04:33','2024-07-15 11:04:33',3,'0zQKIXrkrhMJxJvCKAmpZH2ykIYMnZhMLb8CLIBSOwY7kVo2PmOMMmoz82f9qKvQ','2024-08-14 18:04:33'),(66,'2024-07-20 04:04:36','2024-07-20 04:04:36',3,'IT0fbbBnJnGJYYYuLJIMOLIWAGw9HI9iWpsYSmQOkZtpHdJBT9GS0YFe0QYEz2kw','2024-08-19 11:04:36'),(69,'2024-07-20 14:19:45','2024-07-20 14:19:45',3,'InWw2nZ2ZOlN3jduVgQyP2fpZuzo7IzrqC0djBSsqSwVoreB1HyHteWELIbBVeJ7','2024-08-19 21:19:45'),(71,'2024-07-21 03:34:06','2024-07-21 03:34:06',3,'2tno0hNCHnFUEen6FvgxxXJRTY8P2yzqJV3zZ0E0GBJvCcAb37dqxjtiZaSeLL3B','2024-08-20 10:34:06'),(75,'2024-07-21 13:37:55','2024-07-21 13:37:55',3,'JcLqg1lA3td00cLWPyKatVEwXEdtKwJUguzrM7a8OjWDWg9P5aQQYtIwtzjwBWeB','2024-08-20 20:37:55'),(76,'2024-07-21 15:06:47','2024-07-21 15:06:47',3,'cUtINfpBRjThtpoimHSyH0rkn5kur29oIWUkt7dIUCUpv0CJ4ISDjjrsrDlrRlWq','2024-08-20 22:06:47'),(77,'2024-07-21 15:06:58','2024-07-21 15:06:58',3,'EtBm4AYmI7hldBAg3LKjwgQQ9EI6R0MmenL6nwXlOL1YF9gU46Gf26556d21EK0K','2024-08-20 22:06:58'),(78,'2024-07-22 01:05:18','2024-07-22 01:05:18',3,'BrY1TJpjON6kEhEEeFzKjx06xNSYpbJGRHdXaTZv3Tv9Gyb9z4kbfzMSTf2LRbKm','2024-08-21 08:05:18'),(79,'2024-07-23 01:09:19','2024-07-23 01:09:19',3,'Yt6pB21TZbJEZzT2Xs9emrgT9QPq3SnY2qYd1psM8i2dPevcxYqocCwdlYzADoHJ','2024-08-22 08:09:19'),(80,'2024-07-23 10:19:35','2024-07-23 10:19:35',3,'YtKoPDokiEEUeU2rNpLovKy6YrXOebpaP51hbrIKpXSlZwpn1DHmyFGugJZtDQSw','2024-08-22 17:19:35'),(81,'2024-07-24 04:46:57','2024-07-24 04:46:57',3,'PJ7hrpPyvApcFfVQXpyyWi0iQff2zV4I60VSJaXpRrMVzNIF4Sf9m5rULoO2vTBa','2024-08-23 11:46:57'),(82,'2024-07-26 15:11:59','2024-07-26 15:11:59',3,'tpLyFLxl0dHb1uMW0O1pWchKXXtnEF8IKKJCo2m15qrnIpo1qa73u2DKiZxjKub9','2024-08-25 22:11:59'),(83,'2024-08-02 08:53:23','2024-08-02 08:53:23',3,'thKD7D7LPmkXalyOqqiS6i9ws02TDVImo6KnKfY0lNLbrR7PLA6Z9LXrFDPQbIpu','2024-09-01 15:53:23'),(87,'2024-08-09 04:04:17','2024-08-09 04:04:17',3,'BnPRumTWaHR2eSqDO3exiZeaR8Cdh75YpFGJE2AGAMZuC2md7k0HWDA2rpZ3GPd5','2024-09-08 11:04:17'),(94,'2024-08-10 10:50:57','2024-08-10 10:50:57',3,'kEq0HgWU89nkC5k2MS4wVif9lFQXQZVkbLPzNcLkyPDnIF51JCX3vHxq4zDASn6N','2024-09-09 17:50:57'),(95,'2024-08-10 10:51:29','2024-08-10 10:51:29',3,'NqsuhSs28Er6DBg55cnsYg9l5NHFuziAHAy5rjFYVuoLdLUNu8VdckB4OP8hzkXO','2024-09-09 17:51:29'),(96,'2024-08-10 10:52:00','2024-08-10 10:52:00',3,'928iuy47KR4SEZeWtkoNRgZnN1nOCEBdmbWkwTYuzJinCunobBOdb3IFyuy0pZ4A','2024-09-09 17:52:00'),(97,'2024-08-10 10:52:20','2024-08-10 10:52:20',3,'07bPED8uSiOQMONgDKEsYfPEwYnKBhKwAjbQGWxN7VF5W4DXPmA1cxcnlcrlMy8M','2024-09-09 17:52:20'),(98,'2024-08-10 10:53:20','2024-08-10 10:53:20',3,'skxqnTNQEASjnqz1uJA9hRABI70EQGnjY6O96tfpLiUkzp58WLWzrGMEJIJgiZfD','2024-09-09 17:53:20'),(99,'2024-08-10 10:56:50','2024-08-10 10:56:50',3,'f1ttleLiKregxLgGSm6Yu4VcrxuflfSqLL1xy6KL3KZ39HZqrkaEsaCkR3dZgKXa','2024-09-09 17:56:50'),(100,'2024-08-10 12:44:07','2024-08-10 12:44:07',3,'uDOw7HZZJX6kEdo04wIG2YUCAluaoOCV5aiGBG1TnBWbTKiTSDnACJlFCkfLWDVs','2024-09-09 19:44:07'),(103,'2024-08-10 15:04:18','2024-08-10 15:04:18',3,'pTxKxChF9ABGvZymZaChNQY1KF1aAe226QkgzVvPloVSwSZi60XyceOwZbVPDB4H','2024-09-09 22:04:18'),(104,'2024-08-11 00:10:00','2024-08-11 00:10:00',3,'rwoQs7ic0s99p7gTJ9GQSOY7eZWANxToGqxb79cgyBybuMeO886aPFaoIVCJlABY','2024-09-10 07:10:00');
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_types`
--

DROP TABLE IF EXISTS `transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_amount` double NOT NULL DEFAULT '0',
  `_description` text COLLATE utf8mb4_unicode_ci,
  `_wallet_id` bigint unsigned NOT NULL,
  `_category_id` bigint unsigned DEFAULT NULL,
  `_memo` text COLLATE utf8mb4_unicode_ci,
  `_from_wallet_id` bigint unsigned DEFAULT NULL,
  `_to_wallet_id` bigint unsigned DEFAULT NULL,
  `_fee` double NOT NULL DEFAULT '0',
  `_transaction_type_id` bigint unsigned NOT NULL,
  `_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (92,'2024-08-02 15:09:20','2024-08-02 15:09:20',5000,NULL,12,12,NULL,NULL,12,0,2,'2024-08-02 15:09:00'),(93,'2024-08-02 15:21:47','2024-08-02 15:21:47',5000,NULL,12,11,NULL,NULL,12,0,2,'2024-08-02 15:21:31'),(95,'2024-08-03 00:48:42','2024-08-03 00:48:42',550,NULL,12,11,NULL,NULL,12,0,2,'2024-08-03 00:48:15'),(96,'2024-08-03 01:04:05','2024-08-03 01:04:05',500,NULL,12,9,NULL,NULL,12,0,1,'2024-08-03 01:03:52'),(100,'2024-08-03 12:27:40','2024-08-03 12:27:40',200000,NULL,13,2,NULL,17,13,0,3,'2024-08-03 12:26:49'),(102,'2024-08-04 02:52:16','2024-08-08 03:23:28',50000,'food 2/8',12,15,NULL,NULL,12,0,2,'2024-08-04 02:51:52'),(105,'2024-08-06 02:11:02','2024-08-06 02:11:02',54000,NULL,12,6,NULL,NULL,12,0,1,'2024-08-06 02:10:28'),(108,'2024-08-09 08:53:57','2024-08-10 13:27:07',5000,'Gap',12,13,NULL,NULL,12,0,2,'2024-08-09 08:53:32'),(109,'2024-08-09 11:47:19','2024-08-09 11:47:19',5000,NULL,12,13,NULL,NULL,12,0,2,'2024-08-09 11:46:56'),(110,'2024-08-10 13:29:10','2024-08-10 13:29:10',10000000,NULL,12,7,NULL,NULL,12,0,1,'2024-08-10 13:27:40'),(111,'2024-08-11 03:26:57','2024-08-11 03:26:57',5900000,NULL,12,7,NULL,NULL,12,0,1,'2024-06-09 03:26:20'),(112,'2024-08-11 03:29:07','2024-08-11 03:29:07',500000,NULL,12,5,'Bitcoin',NULL,12,0,1,'2024-08-11 03:28:14'),(113,'2024-08-11 08:01:44','2024-08-11 08:01:44',74000,NULL,12,20,NULL,NULL,12,0,2,'2024-08-11 08:01:13');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_initial_currency_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users__email_unique` (`_email`),
  KEY `users__initial_currency_id_foreign` (`_initial_currency_id`),
  CONSTRAINT `users__initial_currency_id_foreign` FOREIGN KEY (`_initial_currency_id`) REFERENCES `currencies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Nguyễn Trần Thúy Lan Tâm','nguyenthaitruong.entertainment@gmail.com','2024-06-25 18:46:10','$2y$10$3kOfZNpd7Fx22w8mpPnuJuUOpE0YcB7PoSbrrOYCHarE7pgMkBSme','2024-06-25 07:17:51','2024-08-08 04:47:29',962),(21,'Nguyen Thai Truong','nguyenthaitruong1223@gmail.com',NULL,'$2y$10$nu5e/5c32oqbVJg1d3lBfOerznVa5Csdb4mA6N/2wNtLxHVBMFHRa','2024-07-15 08:52:07','2024-07-15 10:45:20',962),(22,'Nguyen Thanh Tan','n20dccn083@student.ptithcm.edu.vn',NULL,'$2y$10$h65H/YW.W7K94OfbWIc3UeClFXBP0fl08lZvCekhOtaIo5ExbRX.e','2024-07-15 09:08:34','2024-07-15 09:08:34',962),(23,'Nguyen Thi Lan Phuong','nguyenthaitruong.work@gmail.com',NULL,'$2y$10$.knjR067xeeStg0qroCG0u86/O3emHaO.oe6ThMgXHgSAQ/g9dVH2','2024-07-17 20:11:30','2024-07-17 20:11:30',728),(24,'Time keeper','nguyenthaitruong12234@gmail.com',NULL,'$2y$10$TkBFkvV1Ykhfr8ECbVFn/uAh52CpWEp3xnfxA4HNapJmmgBG8OQLe','2024-07-18 03:23:01','2024-07-18 03:23:01',962),(25,'Tran Tam','nguyenthaitruong.entertainment1@gmail.com',NULL,'$2y$10$fEhTUJJcM7ErzTDQGc/MOun8MUjJClsWDbHkMO.w4JbDc8Se.f5Ze','2024-07-18 03:41:57','2024-07-18 03:41:57',713),(28,'Nguyễn Thái Trưởng','nguyenthaitruong.entertainment3@gmail.com',NULL,'$2y$10$jEO13HYTvuu5cayumUyhkeB34LTG.TO2NhGPNYOqMswVkeBO9AC0a','2024-07-21 04:02:46','2024-07-21 04:02:46',702);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_types`
--

DROP TABLE IF EXISTS `wallet_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_types` (
  `_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_account_id` bigint unsigned NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_wallet_type_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_initial_amount` double NOT NULL,
  `_exclude` tinyint(1) NOT NULL DEFAULT '0',
  `_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_icon` int DEFAULT '0',
  `_amount` double DEFAULT '0',
  `_is_deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wallets__account_id_foreign` (`_account_id`),
  KEY `wallets__wallet_type_code_foreign` (`_wallet_type_code`),
  CONSTRAINT `wallets__account_id_foreign` FOREIGN KEY (`_account_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wallets__wallet_type_code_foreign` FOREIGN KEY (`_wallet_type_code`) REFERENCES `wallet_types` (`_code`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (12,'2024-07-04 06:59:34','2024-08-11 08:01:47',3,'Cash','GEN',370000000,0,'#35B8FD',0,380409950,0),(13,'2024-07-04 07:02:00','2024-08-11 16:20:43',3,'Momo','GEN',70000000,0,'#9C005B',1,70200000,0),(14,'2024-07-04 07:02:46','2024-07-28 02:14:40',3,'ZaloPay','GEN',110003000,0,'#35B8FD',2,110003000,0),(17,'2024-07-09 09:53:35','2024-08-03 12:27:40',3,'ShopeePay','GEN',200000,0,'#35B8FD',3,0,0),(19,'2024-07-15 08:52:07','2024-07-15 08:52:07',21,'Cash','GEN',200000,0,'#35B8FD',0,200000,0),(20,'2024-07-15 09:08:34','2024-07-15 09:08:34',22,'Cash','GEN',230000,0,'#35B8FD',0,230000,0),(21,'2024-07-17 20:11:32','2024-07-17 20:11:32',23,'Cash','GEN',200000,0,'#35B8FD',0,200000,0),(22,'2024-07-18 03:23:05','2024-07-18 03:23:05',24,'Cash','GEN',200000,0,'#35B8FD',0,200000,0),(23,'2024-07-18 03:41:59','2024-07-18 03:41:59',25,'Cash','GEN',250000,0,'#35B8FD',0,250000,0),(27,'2024-07-21 04:02:47','2024-07-21 04:02:47',28,'Cash','GEN',5400,0,'#35B8FD',0,5400,0),(28,'2024-08-02 04:04:57','2024-08-11 14:41:12',3,'Shopee pay','GEN',2000000,0,'#FCAB04',0,2000000,1),(37,'2024-08-02 15:48:09','2024-08-02 15:48:09',3,'Crypto','CRE',5000,1,'#FEC900',10,5000,0),(38,'2024-08-11 14:49:29','2024-08-11 14:49:46',3,'Shop back','CRE',5000000,0,'#E3432F',11,5000000,1);
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `set_amount_before_insert` BEFORE INSERT ON `wallets` FOR EACH ROW BEGIN
    SET NEW.`_amount` = NEW.`_initial_amount`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'finacialmanager'
--

--
-- Dumping routines for database 'finacialmanager'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_TRANSACTIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GET_TRANSACTIONS`(
	in user_id INT,
	in page int,
	in amount int
)
begin
	declare pos int;
	set pos = (page - 1) * amount;
	select t.*
	from transactions t
	join wallets w on t._wallet_id = w.id
	where w._account_id = user_id 
	order by t._date desc
	limit pos, amount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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

-- Dump completed on 2024-08-11 23:26:50
