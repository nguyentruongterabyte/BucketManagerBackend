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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'api-token','fec1fb08652353876b405ffb38a1bd7551da447846bbee8b3878de603884f5e1','[\"*\"]',NULL,NULL,'2024-06-25 07:07:17','2024-06-25 07:07:17'),(2,'App\\Models\\User',1,'api-token','ca0bc0c15c56442a17db551e4517e03cf3814e22f83163f0dd41347b7d1c365b','[\"*\"]',NULL,NULL,'2024-06-25 07:09:13','2024-06-25 07:09:13'),(3,'App\\Models\\User',2,'api-token','667861b4636a597a4fa21851296b3de82b66a2e5ad579e6e69a26c201bfc1fc1','[\"*\"]',NULL,NULL,'2024-06-25 07:10:54','2024-06-25 07:10:54'),(22,'App\\Models\\User',4,'api-token','b30436d37c3c2bad8495697499a33bb41ddfbead970000fa5f236643313b28bd','[\"*\"]',NULL,'2024-06-29 20:53:16','2024-06-29 19:53:16','2024-06-29 19:53:16'),(23,'App\\Models\\User',4,'api-token','2480cd606f34f3b3f69d03089650f0ba97ab647860c0f10c8bce16221178402f','[\"*\"]',NULL,'2024-07-01 04:09:27','2024-07-01 03:09:27','2024-07-01 03:09:27'),(24,'App\\Models\\User',6,'api-token','5d8310b91c4ba7df1865ac2058de4b01eef61f2823005d23460a8a48eecc814e','[\"*\"]',NULL,NULL,'2024-07-03 02:34:24','2024-07-03 02:34:24'),(25,'App\\Models\\User',4,'api-token','97c3a7e722ff3ebb388cc3baceee4238e7d2f4314b528f07b85743ee2329301a','[\"*\"]',NULL,'2024-07-03 03:35:31','2024-07-03 02:35:31','2024-07-03 02:35:31'),(26,'App\\Models\\User',7,'api-token','fbbe012c3c235cb7d91b54ecd4f365105529b87aae5bd8716d3637a32fc13b4e','[\"*\"]',NULL,NULL,'2024-07-03 02:37:04','2024-07-03 02:37:04'),(27,'App\\Models\\User',8,'api-token','babc0f5819b4b9e36d903bf09861b7e7edbfda259b2f92b52c9d5ee6c061a310','[\"*\"]',NULL,NULL,'2024-07-03 02:40:53','2024-07-03 02:40:53'),(28,'App\\Models\\User',9,'api-token','65728023f9be412069d1891a20f9eb95ca258d5941ee15b1a2cc240c99d49aaf','[\"*\"]',NULL,NULL,'2024-07-03 03:33:05','2024-07-03 03:33:05'),(29,'App\\Models\\User',10,'api-token','42333d66ab8f81b195fc038ca358c091dedf091b586226efd8669a6980126785','[\"*\"]',NULL,NULL,'2024-07-03 03:39:51','2024-07-03 03:39:51'),(30,'App\\Models\\User',11,'api-token','7459c790518ab2d04893fcee0d2c94ec410281f11ff4d9208c381d8145cb1095','[\"*\"]',NULL,NULL,'2024-07-03 03:45:42','2024-07-03 03:45:42'),(31,'App\\Models\\User',12,'api-token','3d98fbfd5c96daa14c99e62d5b9690899041c1ecf12486a95deb9185d19697e4','[\"*\"]',NULL,NULL,'2024-07-03 03:48:46','2024-07-03 03:48:46'),(32,'App\\Models\\User',13,'api-token','86f67ac79f51abd8654ac5d0b1a437f83ffa3c130bd1c21647c7f47501b0e190','[\"*\"]',NULL,NULL,'2024-07-03 03:50:13','2024-07-03 03:50:13'),(33,'App\\Models\\User',14,'api-token','784948eaf357e4c39af291c8cec75473a278363ea5fcd8bd78e9bac6ca9f9f49','[\"*\"]',NULL,NULL,'2024-07-03 03:53:28','2024-07-03 03:53:28'),(34,'App\\Models\\User',15,'api-token','db5e1ace9e349f003c89ad18f1d3349ed6ba709829e01320fab032091b863828','[\"*\"]',NULL,NULL,'2024-07-03 03:55:52','2024-07-03 03:55:52'),(35,'App\\Models\\User',16,'api-token','8bc7b1e77c47f3aead91d4053014f22ba08766535b0ee7a4a7a5d72f5cac2153','[\"*\"]',NULL,NULL,'2024-07-03 03:59:50','2024-07-03 03:59:50'),(36,'App\\Models\\User',4,'api-token','a41965298afb3434dcde2604414c6560e73340f7875cac7c2e54058a448fac33','[\"*\"]','2024-07-03 19:13:05','2024-07-03 20:04:18','2024-07-03 19:04:19','2024-07-03 19:13:05'),(37,'App\\Models\\User',4,'api-token','dcb9896bd86cb2ad4516399a9b21faca39078d35c4559858b16eb8d6d97f6d91','[\"*\"]','2024-07-04 07:02:46','2024-07-04 07:33:07','2024-07-04 06:33:07','2024-07-04 07:02:46'),(38,'App\\Models\\User',4,'api-token','9facabc1d17b82778f0a27eb5dbe1f434f9ef5588d145147170d8c4d33be3df5','[\"*\"]',NULL,'2024-07-04 08:25:25','2024-07-04 07:25:25','2024-07-04 07:25:25'),(43,'App\\Models\\User',17,'api-token','7d4bde355f0aad1bde5865ac954806d5945cadd177e8d0a81151a3e5bf17fbc2','[\"*\"]','2024-07-08 20:09:09',NULL,'2024-07-08 20:09:07','2024-07-08 20:09:09'),(44,'App\\Models\\User',18,'api-token','65a0796d9a03ff623b0dd8ecbcc8ab3fdb702111ee8a800f95ae8ceab2cbec18','[\"*\"]','2024-07-08 20:20:45',NULL,'2024-07-08 20:20:44','2024-07-08 20:20:45'),(53,'App\\Models\\User',3,'api-token','3c5c6df7186ffcd5075bf6f283175e03f8aec9e7f221f257ad20376f1f6f40ed','[\"*\"]',NULL,'2024-07-09 10:41:30','2024-07-09 09:41:30','2024-07-09 09:41:30'),(54,'App\\Models\\User',3,'api-token','3abcf312bff493f2a233bdf1cfb32042957cd3519dc7bbd0e73753f6e9cb7e68','[\"*\"]',NULL,'2024-07-09 10:52:50','2024-07-09 09:52:50','2024-07-09 09:52:50'),(55,'App\\Models\\User',19,'api-token','48353b157442dc837f8958c01f1c8c9f0416a2d00b7d14ca6f98ea6daec6d45f','[\"*\"]',NULL,NULL,'2024-07-09 09:59:49','2024-07-09 09:59:49'),(56,'App\\Models\\User',3,'api-token','84d3a7900332b268b4d3bbb747233dc384214d7ef7ca49e904300c8eadcd4b89','[\"*\"]',NULL,'2024-07-09 11:02:47','2024-07-09 10:02:47','2024-07-09 10:02:47'),(57,'App\\Models\\User',4,'api-token','820b8f3d9f6e0dff79ebf0bdd1695e2cec70e08d2078645801b1f5bfda322471','[\"*\"]',NULL,'2024-07-09 11:40:02','2024-07-09 10:40:02','2024-07-09 10:40:02'),(58,'App\\Models\\User',4,'api-token','9cca3970b9e7568c4016c0ea9a6b8fd58374d5ea1f71efe0bc7c4f9593d62597','[\"*\"]',NULL,'2024-07-09 12:00:22','2024-07-09 11:00:22','2024-07-09 11:00:22'),(59,'App\\Models\\User',20,'api-token','a588a8e7205b6f70ebcc52f4bbfb90297c0ff275809fa6b4e2b83629ddace94b','[\"*\"]',NULL,NULL,'2024-07-12 04:11:52','2024-07-12 04:11:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
INSERT INTO `refresh_tokens` VALUES (1,'2024-06-28 07:54:15','2024-06-28 07:54:15',4,'Kd70rcYqCF66ndF7A8v9EwX2bbuTyPp3AShCz7zqoq92S6VR7rQjh7ukOHVbx3vr','2024-07-28 14:54:15'),(2,'2024-07-01 03:09:27','2024-07-01 03:09:27',4,'trfK8YbKTIxEDIMhk5NGEfMUq1m62HBOZxoZhqjZWuss8g5BgdZePGKPkTTh7q0l','2024-07-31 10:09:27'),(3,'2024-07-03 02:35:31','2024-07-03 02:35:31',4,'PiWdiave3MoeFjDJyrLbZ0JNxSBEk6tZid9ggCl6DvwwZ1mFiMXnWrhnP6KUOUxC','2024-08-02 09:35:31'),(11,'2024-07-03 03:55:52','2024-07-03 03:55:52',15,'afT4TbunRywyp9ucT4O7WrwXlZMgJIHsnU4MFk7rWxn2DFyJkd6Q60XRAOCDboJA','2024-08-02 10:55:52'),(12,'2024-07-03 03:59:50','2024-07-03 03:59:50',16,'6qfManiUO94K6Q0nCahiVJe66D7ddDAWhbe0ggQwRHxrc6GMqVpIaRahuTkIHdka','2024-08-02 10:59:50'),(13,'2024-07-03 19:04:19','2024-07-03 19:04:19',4,'ja5RFAryY3touk3q8J5hIeStcexFuqGIpHkEHoE0eQ7OL0xbK4ZeWQZWgBoe7QsC','2024-08-03 02:04:19'),(14,'2024-07-04 06:33:07','2024-07-04 06:33:07',4,'9KJ2lBj3cQaaWL4zKw2jiaMVvv41by5RW5r6Xck0XUSjYuR4nnBjAyCfYlRkIF1W','2024-08-03 13:33:07'),(15,'2024-07-04 07:25:25','2024-07-04 07:25:25',4,'7Y4xHYCpzL6nPUHaEnICs1oobkrWXbleBW3UEnvoN8pcICUq7zmfjaRStuaaz3py','2024-08-03 14:25:25'),(16,'2024-07-04 07:25:48','2024-07-04 07:25:48',3,'AOIJBiH43FogbrdxxZ2houfi59dMPaItQEk04uVSdW4T4PycKNwgZ4GKfPcjqpcS','2024-08-03 14:25:48'),(17,'2024-07-04 07:26:19','2024-07-04 07:26:19',3,'HPNerNK3HtVqrp34scqO3ul9OUfrY1EVkGduhif381QSOYLpC8yYQSAyDimiLCGV','2024-08-03 14:26:19'),(18,'2024-07-04 07:30:12','2024-07-04 07:30:12',3,'iyGdo2MnPwjzuGEQexWFIK5J5Dseh44x6IedCwu6fYu28amK2hyVhBKlqaCoAfWU','2024-08-03 14:30:12'),(19,'2024-07-08 19:56:02','2024-07-08 19:56:02',3,'FLso7Ch9DU18ye8qeEJ7us84YVyinYDiIl4W9EW909BJGoGgiVUdLQSWnR0EEbWo','2024-08-08 02:56:02'),(20,'2024-07-08 20:09:07','2024-07-08 20:09:07',17,'uB9WsFLuTIojw8s1pqzicGeyaWfdLrnIctLR1JAKjKO351REwtG0IS55KxNUXHML','2024-08-08 03:09:07'),(21,'2024-07-08 20:20:44','2024-07-08 20:20:44',18,'IkvZlsHH0C2hvkYC5nwdYo5wIj9sQBgaSRSFZVeqQEFOMCPbTwQHA0fjpSJscmqM','2024-08-08 03:20:44'),(22,'2024-07-09 07:32:48','2024-07-09 07:32:48',3,'FUdWNIhvlRSdn4o2mPV45XwTlVnAvcTvybMw5KG6jA70SizqhuhyHwkctYgBx2RT','2024-08-08 14:32:48'),(23,'2024-07-09 09:03:24','2024-07-09 09:03:24',3,'pmZnE4RgGO9o4ACUt2faRL6xmg1m8dYTRji6QeV2Ur9EO3CTADG2gbVWEqXw5yml','2024-08-08 16:03:24'),(24,'2024-07-09 09:10:46','2024-07-09 09:10:46',3,'EkkoyTDavKKQ2HZmeKogoVs4ilTB2kobMIrbuOnBuiF8pASZHfYW78xyLEN0vrul','2024-08-08 16:10:46'),(25,'2024-07-09 09:19:18','2024-07-09 09:19:18',3,'5lRJjitN4H9DCFTB8zbaZOfiQgFRXmIt1zBBgdAMgrvp2enkzKHl7oq63CDTDKBm','2024-08-08 16:19:18'),(26,'2024-07-09 09:20:22','2024-07-09 09:20:22',3,'CFUWGw84eFjpEWhTV9vbGdbgmRWoeAZbCWdTmh1cxGQC5unOe92YPQZFyxoXSu8U','2024-08-08 16:20:22'),(27,'2024-07-09 09:25:04','2024-07-09 09:25:04',3,'ifLJqriVDxkDQLQ5ZHaptNMdExlXXXHMdtXf2QWRitWaIFlYW5kfvBASI0s4hE6t','2024-08-08 16:25:04'),(28,'2024-07-09 09:28:04','2024-07-09 09:28:04',3,'VI3gnTQi06EGPWLn4FvU4FdTinZwJmhWj6fsgb3q1F6NIwqilcTz8oDnqqmMhUV2','2024-08-08 16:28:04'),(29,'2024-07-09 09:31:20','2024-07-09 09:31:20',3,'2SCTNkuhuKIW374KIh69IeZUfbcKmVdhYbBtUExR4oMnRRgiAfZiihObAxnGBk7m','2024-08-08 16:31:20'),(30,'2024-07-09 09:41:30','2024-07-09 09:41:30',3,'XuRNOLGIga3V3KmetSZGLK9xm7LVu1UzIB3kZxw5xYvdTiLlLNnacmDWqYCt47bc','2024-08-08 16:41:30'),(31,'2024-07-09 09:52:50','2024-07-09 09:52:50',3,'zlu2tS2tfc8rvxds58RufikXQVLaUH8iuQ4O8ugPKqEp4gBYvTXEmOTSPzKlh1EE','2024-08-08 16:52:50'),(32,'2024-07-09 09:59:49','2024-07-09 09:59:49',19,'eja2ri6zBAqTytZlu98HM28Sf0wA6CFImHXCpT5lj6xRDSFck47Wum9pvD03H3TK','2024-08-08 16:59:49'),(33,'2024-07-09 10:02:47','2024-07-09 10:02:47',3,'i7gFNN0sBVVQ7qheVr2sKHmQN97t2vp0Z2SFsVZlmDmPtcFOli1ejqZRJvOZi5xA','2024-08-08 17:02:47'),(34,'2024-07-09 10:40:02','2024-07-09 10:40:02',4,'sdP06sFnKUZhBbu0I9qwiPyP5tJQ7sYUj9OBUqcRGnFS4cQBoK0mBtBezIURLBFz','2024-08-08 17:40:02'),(35,'2024-07-09 11:00:22','2024-07-09 11:00:22',4,'FNfEtFExwhyovrWJutyCsDMGTD3a8GvbSyw5UC198mPte2SuHybgTm7mEk1JeGSP','2024-08-08 18:00:22'),(36,'2024-07-12 04:11:52','2024-07-12 04:11:52',20,'Z6RLrQfYzGD15o0y6MB2fWXki6n5NyUNqT27KILmXeHiUESdh3VNedxk33oYphgx','2024-08-11 11:11:52');
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
  `_category_id` bigint(20) unsigned NOT NULL,
  `_memo` text DEFAULT NULL,
  `_from_wallet_id` bigint(20) unsigned DEFAULT NULL,
  `_to_wallet_id` bigint(20) unsigned DEFAULT NULL,
  `_fee` double NOT NULL DEFAULT 0,
  `_transaction_type_id` bigint(20) unsigned NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
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
  `_name` varchar(255) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Nguyễn Thái Trưởng','nguyenthaitruong.entertainment@gmail.com','2024-06-25 18:46:10','$2y$10$ev4B10zupvivO5X8H2hgb.mhTWt0KoDVyWOpLOVxPzaocFN4azG2q','2024-06-25 07:17:51','2024-06-25 18:46:10',962),(4,'Nguyễn Thái Trưởng','nguyenthaitruong1223@gmail.com','2024-06-25 18:27:55','$2y$10$XKBtuqbveghEsMg70/BnA.oepJYpR/eUOVEEE2IYpBK3qVkxjy9li','2024-06-25 07:43:38','2024-06-25 18:27:55',962),(15,'Trưởng','nguyenthaitruong.entertainment1@gmail.com',NULL,'$2y$10$FBI4iCeFAszt9GoF3xpaYuRe7cMtrhzuNJJlOXf8eMIzGbqS35mH.','2024-07-03 03:55:52','2024-07-03 03:55:52',704),(16,'Trưởng','nguyenthaitruong.entertainment2@gmail.com',NULL,'$2y$10$6X7IQHpoQTAx3LG/YAM6bePRZB.Mw51fH7sn8ZVEAZ37cbig2G1Bm','2024-07-03 03:59:50','2024-07-03 03:59:50',703),(17,'n','nguyenthaitruong.entertainment3@gmail.com',NULL,'$2y$10$XDKltLl/dDIp9.fVQ4otZuM9IFN.pnyrb7hNewrBabrJMkik1cWGi','2024-07-08 20:09:07','2024-07-08 20:09:07',703),(18,'Trưởng','nguyenthaitruong@gmail.com',NULL,'$2y$10$0F/yu/q0PQJHv73DzX6/IOgkvxfqBMH8Kt/Rg9jYiecJmlEnYEi3i','2024-07-08 20:20:44','2024-07-08 20:20:44',714),(19,'Nguyễn Thái Trưởng','nguyenthaitruong.entertainment4@gmail.com',NULL,'$2y$10$O7WSzp1IImhp7xvd.X/Efu7GTkqPBu47bBF5EYi6UUUVnHRd8PKH2','2024-07-09 09:59:49','2024-07-09 09:59:49',962),(20,'Truong','nguyenthaitruong1224@gmail.com',NULL,'$2y$10$0tgWLtfDWS3WYJYBzRyAxurSqxphY1AuBswqURfNeC7g5FQnmVILG','2024-07-12 04:11:52','2024-07-12 04:11:52',705);
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
  `_exclude` tinyint(1) NOT NULL,
  `_color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets__account_id_foreign` (`_account_id`),
  KEY `wallets__wallet_type_code_foreign` (`_wallet_type_code`),
  CONSTRAINT `wallets__account_id_foreign` FOREIGN KEY (`_account_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wallets__wallet_type_code_foreign` FOREIGN KEY (`_wallet_type_code`) REFERENCES `wallet_types` (`_code`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (12,'2024-07-04 06:59:34','2024-07-04 06:59:34',3,'Cash','GEN',370000000,1,NULL),(13,'2024-07-04 07:02:00','2024-07-04 07:02:00',3,'Cash','GEN',370000000,1,NULL),(14,'2024-07-04 07:02:46','2024-07-04 07:02:46',3,'Cash','GEN',370000000,1,NULL),(15,'2024-07-08 20:09:10','2024-07-08 20:09:10',17,'Cash','GEN',2000,1,'#008ED5'),(16,'2024-07-08 20:20:45','2024-07-08 20:20:45',18,'Cash','GEN',0,1,'#008ED5'),(17,'2024-07-09 09:53:35','2024-07-09 09:53:35',3,'Cash','GEN',370000000,1,NULL),(18,'2024-07-12 04:11:53','2024-07-12 04:11:53',20,'Cash','GEN',200,1,'#35B8FD');
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

-- Dump completed on 2024-07-12 23:16:19
