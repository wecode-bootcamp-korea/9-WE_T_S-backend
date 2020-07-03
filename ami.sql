-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: ami
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Clothing'),(2,'Accessories'),(3,'Bags'),(4,'Jewelry'),(5,'Shoes');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_types`
--

DROP TABLE IF EXISTS `category_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `type_name_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_types_category_id_e8a8de4a_fk_menu_categories_id` (`category_id`),
  KEY `category_types_type_name_id_f352f3b8_fk_type_names_id` (`type_name_id`),
  CONSTRAINT `category_types_category_id_e8a8de4a_fk_menu_categories_id` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`id`),
  CONSTRAINT `category_types_type_name_id_f352f3b8_fk_type_names_id` FOREIGN KEY (`type_name_id`) REFERENCES `type_names` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_types`
--

LOCK TABLES `category_types` WRITE;
/*!40000 ALTER TABLE `category_types` DISABLE KEYS */;
INSERT INTO `category_types` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,3,9),(10,1,10),(11,2,11),(12,4,12),(13,5,13),(14,2,14),(15,1,15),(16,5,5);
/*!40000 ALTER TABLE `category_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `button_color` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'BLACK','https://www.amiparis.com/BWContent/AMI/14371975_cs.jpg'),(2,'BEIGE','https://www.amiparis.com/BWContent/AMI/14371273_cs.jpg'),(3,'CLAY','https://www.amiparis.com/BWContent/AMI/14371976_cs.jpg'),(4,'OFF WHITE','https://www.amiparis.com/BWContent/AMI/14240935_cs.jpg'),(5,'OFFWHITE/BLACK','https://www.amiparis.com/BWContent/AMI/14371246_cs.jpg'),(6,'SILVER','https://www.amiparis.com/BWContent/AMI/14369761_E20A915.361900_v1_v3_v6_v8.jpg'),(7,'BLACK/WHITE','https://www.amiparis.com/BWContent/AMI/14942402_cs.jpg'),(8,'TAUPE','https://www.amiparis.com/BWContent/AMI/14370480_E20HS408.940281_v2_v3.jpg'),(9,'OLIVE GREEN','https://www.amiparis.com/BWContent/AMI/14369746_cs.jpg'),(10,'SAGE','https://www.amiparis.com/BWContent/AMI/14371944_cs.jpg'),(11,'DARK OLIVE GREEN','https://www.amiparis.com/BWContent/AMI/14371262_cs.jpg'),(12,'OLIVE GREEN/BLACK','https://www.amiparis.com/BWContent/AMI/14371040_cs.jpg'),(13,'OXFORD BLUE','https://www.amiparis.com/BWContent/AMI/14371912_E20HC006.45454_v2_v6.jpg'),(14,'BURGUNDY','https://www.amiparis.com/BWContent/AMI/14371238_cs.jpg'),(15,'HEATHER GREY','https://www.amiparis.com/BWContent/AMI/14372047_cs.jpg'),(16,'RED','https://www.amiparis.com/BWContent/AMI/14372047_cs.jpg'),(17,'SAGE/OFF-WHITE','https://www.amiparis.com/BWContent/AMI/14371247_E20HK024.004319_v2_v6.jpg'),(18,'PINK','https://www.amiparis.com/BWContent/AMI/15196348_cs.jpg'),(19,'GREEN','https://www.amiparis.com/BWContent/AMI/14942281_cs.jpg'),(20,'GREEN/WHITE','https://www.amiparis.com/BWContent/AMI/14942401_cs.jpg');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'account','account'),(9,'account','guest'),(1,'contenttypes','contenttype'),(3,'menu','category'),(4,'menu','categorytype'),(5,'menu','menu'),(6,'menu','menucategory'),(7,'menu','typename'),(10,'product','color'),(11,'product','product'),(12,'product','productcolor'),(14,'product','productimage'),(13,'product','productsize'),(2,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'account','0001_initial','2020-06-30 05:01:21.355672'),(2,'contenttypes','0001_initial','2020-06-30 05:01:21.373393'),(3,'contenttypes','0002_remove_content_type_name','2020-06-30 05:01:21.395167'),(4,'menu','0001_initial','2020-06-30 05:01:21.475010'),(5,'menu','0002_auto_20200625_1324','2020-06-30 05:01:21.679522'),(6,'menu','0003_auto_20200628_0502','2020-06-30 05:01:21.802878'),(7,'product','0001_initial','2020-06-30 05:01:21.874623'),(8,'product','0002_auto_20200626_0651','2020-06-30 05:01:21.929668'),(9,'product','0003_auto_20200626_0904','2020-06-30 05:01:22.101985'),(10,'product','0004_auto_20200627_0350','2020-06-30 05:01:22.108389'),(11,'product','0005_auto_20200627_0833','2020-06-30 05:01:22.117074'),(12,'product','0006_color_button_url','2020-06-30 05:01:22.130976'),(13,'product','0007_auto_20200628_1104','2020-06-30 05:01:22.141001'),(14,'product','0008_thumnail','2020-06-30 05:01:22.152916'),(15,'product','0009_delete_thumnail','2020-06-30 05:01:22.170095'),(16,'product','0010_auto_20200629_0420','2020-06-30 05:01:22.213974'),(17,'product','0011_auto_20200629_1458','2020-06-30 05:01:22.259159'),(18,'sessions','0001_initial','2020-06-30 05:01:22.266522');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_categories`
--

DROP TABLE IF EXISTS `menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `menu_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_categories_category_id_5534b708_fk_categories_id` (`category_id`),
  KEY `menu_categories_menu_id_ee914041_fk_menus_id` (`menu_id`),
  CONSTRAINT `menu_categories_category_id_5534b708_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `menu_categories_menu_id_ee914041_fk_menus_id` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories`
--

LOCK TABLES `menu_categories` WRITE;
/*!40000 ALTER TABLE `menu_categories` DISABLE KEYS */;
INSERT INTO `menu_categories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);
/*!40000 ALTER TABLE `menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Man');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_colors_color_id_7339e928_fk_colors_id` (`color_id`),
  KEY `product_colors_product_id_61511590_fk_products_id` (`product_id`),
  CONSTRAINT `product_colors_color_id_7339e928_fk_colors_id` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `product_colors_product_id_61511590_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colors`
--

LOCK TABLES `product_colors` WRITE;
/*!40000 ALTER TABLE `product_colors` DISABLE KEYS */;
INSERT INTO `product_colors` VALUES (1,1,1),(2,2,2),(3,3,3),(4,1,4),(5,1,5),(6,1,6),(7,4,7),(8,1,8),(9,1,9),(10,1,10),(11,5,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,6,18),(19,7,19),(20,8,20),(21,9,21),(22,1,22),(23,10,23),(24,1,24),(25,11,25),(26,12,26),(27,10,27),(28,5,28),(29,13,29),(30,3,1),(31,14,2),(32,11,3),(33,15,4),(34,3,5),(35,8,6),(36,1,7),(37,16,8),(38,4,9),(39,3,10),(40,17,11),(41,4,12),(42,3,13),(43,18,14),(44,19,15),(45,10,16),(46,2,17),(47,2,18),(48,20,19),(49,1,20),(50,8,21),(51,8,22),(52,3,23),(53,7,24),(54,7,25),(55,5,26),(56,3,27),(57,3,28),(58,4,29);
/*!40000 ALTER TABLE `product_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(2000) NOT NULL,
  `product_color_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_color_id_89fbd550_fk_product_colors_id` (`product_color_id`),
  CONSTRAINT `product_images_product_color_id_89fbd550_fk_product_colors_id` FOREIGN KEY (`product_color_id`) REFERENCES `product_colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073831_500.jpg?c=2',1),(2,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27073486_1920.jpg?c=2',2),(3,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27073787_1920.jpg?c=2',3),(4,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27094273_1920.jpg?c=2',4),(5,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27074061_1920.jpg?c=2',5),(6,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27074083_1920.jpg?c=2',6),(7,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27071468_1920.jpg?c=2',7),(8,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233884_1920.jpg?c=2',8),(9,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27073603_1920.jpg',9),(10,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27073962_1920.jpg?c=2',10),(11,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27073367_1920.jpg?c=2',11),(12,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27073176_1920.jpg?c=2',12),(13,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27094096_1920.jpg?c=2',13),(14,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196346_27109910_1920.jpg?c=2',14),(15,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942280_27092095_1920.jpg?c=2',15),(16,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27073257_1920.jpg?c=2',16),(17,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27091718_1920.jpg?c=2',17),(18,'https://cdn-images.farfetch-contents.com/ami-necklace-with-bells-and-ami-de-coeur-clasp_14369761_27070670_1920.jpg?c=2',18),(19,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093326_1920.jpg?c=2',19),(20,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370480_27070843_1920.jpg?c=2',20),(21,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070537_1920.jpg?c=2',21),(22,'https://cdn-images.farfetch-contents.com/ami-sunglasses_14369771_27071030_1920.jpg?c=2',22),(23,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073694_1920.jpg?c=2',23),(24,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370475_27070834_1920.jpg?c=2',24),(25,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27073444_1920.jpg?c=2',25),(26,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27070853_1920.jpg?c=2',26),(27,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27071564_1920.jpg?c=2',27),(28,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27073565_1920.jpg?c=2',28),(29,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27073559_1920.jpg?c=2',29),(30,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073832_500.jpg?c=2',1),(31,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27073485_1920.jpg?c=2',2),(32,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27071507_1920.jpg?c=2',3),(33,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27093551_1920.jpg?c=2',4),(34,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27074062_1920.jpg?c=2',5),(35,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27074084_1920.jpg?c=2',6),(36,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27073674_1920.jpg?c=2',7),(37,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233886_1920.jpg?c=2',8),(38,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27073605_1920.jpg',9),(39,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27073964_1920.jpg?c=2',10),(40,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27073368_1920.jpg?c=2',11),(41,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27071238_1920.jpg?c=2',12),(42,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093067_1920.jpg?c=2',13),(43,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196346_27109911_1920.jpg?c=2',14),(44,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942280_27092097_1920.jpg?c=2',15),(45,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27073258_1920.jpg?c=2',16),(46,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27090732_1920.jpg?c=2',17),(47,'https://cdn-images.farfetch-contents.com/ami-necklace-with-bells-and-ami-de-coeur-clasp_14369761_27070671_1920.jpg?c=2',18),(48,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093327_1920.jpg?c=2',19),(49,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370480_27070845_1920.jpg?c=2',20),(50,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070539_1920.jpg?c=2',21),(51,'https://cdn-images.farfetch-contents.com/ami-sunglasses_14369771_27070757_1920.jpg?c=2',22),(52,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073695_1920.jpg?c=2',23),(53,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370475_27071097_1920.jpg?c=2',24),(54,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27071338_1920.jpg?c=2',25),(55,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27071114_1920.jpg?c=2',26),(56,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27074016_1920.jpg?c=2',27),(57,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27071417_1920.jpg?c=2',28),(58,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27071415_1920.jpg?c=2',29),(59,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073833_500.jpg?c=2',1),(60,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27073487_1920.jpg?c=2',2),(61,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27073790_1920.jpg?c=2',3),(62,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27093550_1920.jpg?c=2',4),(63,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27074064_1920.jpg?c=2',5),(64,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27071594_1920.jpg?c=2',6),(65,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27071469_1920.jpg?c=2',7),(66,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233887_1920.jpg?c=2',8),(67,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27073604_1920.jpg',9),(68,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27073965_1920.jpg?c=2',10),(69,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27071311_1920.jpg?c=2',11),(70,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27073177_1920.jpg?c=2',12),(71,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093071_1920.jpg?c=2',13),(72,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196346_27109912_1920.jpg?c=2',14),(73,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942280_27090861_1920.jpg?c=2',15),(74,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27073260_1920.jpg?c=2',16),(75,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27087986_1920.jpg?c=2',17),(76,'https://cdn-images.farfetch-contents.com/ami-necklace-with-bells-and-ami-de-coeur-clasp_14369761_27068992_1920.jpg?c=2',18),(77,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093329_1920.jpg?c=2',19),(78,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370480_27071108_1920.jpg?c=2',20),(79,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070538_1920.jpg?c=2',21),(80,'https://cdn-images.farfetch-contents.com/ami-sunglasses_14369771_27070756_1920.jpg?c=2',22),(81,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073696_1920.jpg?c=2',23),(82,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370475_27071098_1920.jpg?c=2',24),(83,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27073445_1920.jpg?c=2',25),(84,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27070855_1920.jpg?c=2',26),(85,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27074017_1920.jpg?c=2',27),(86,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27073566_1920.jpg?c=2',28),(87,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27071414_1920.jpg?c=2',29),(88,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073834_500.jpg?c=2',1),(89,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27073488_1920.jpg?c=2',2),(90,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27073788_1920.jpg?c=2',3),(91,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27093552_1920.jpg?c=2',4),(92,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27074063_1920.jpg?c=2',5),(93,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27071593_1920.jpg?c=2',6),(94,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27073675_1920.jpg?c=2',7),(95,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233888_1920.jpg?c=2',8),(96,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27073606_1920.jpg',9),(97,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27073966_1920.jpg?c=2',10),(98,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27071312_1920.jpg?c=2',11),(99,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27071239_1920.jpg?c=2',12),(100,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093069_1920.jpg?c=2',13),(101,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093069_1920.jpg?c=2',14),(102,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942280_27091800_1920.jpg?c=2',15),(103,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27073261_1920.jpg?c=2',16),(104,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27091719_1920.jpg?c=2',17),(105,'https://cdn-images.farfetch-contents.com/ami-necklace-with-bells-and-ami-de-coeur-clasp_14369761_27070672_1920.jpg?c=2',18),(106,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093328_1920.jpg?c=2',19),(107,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370480_27071109_1920.jpg?c=2',20),(108,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070540_1920.jpg?c=2',21),(109,'https://cdn-images.farfetch-contents.com/ami-sunglasses_14369771_27071032_1920.jpg?c=2',22),(110,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073697_1920.jpg?c=2',23),(111,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370475_27070835_1920.jpg?c=2',24),(112,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27071339_1920.jpg?c=2',25),(113,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27070854_1920.jpg?c=2',26),(114,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27071565_1920.jpg?c=2',27),(115,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27073567_1920.jpg?c=2',28),(116,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27073561_1920.jpg?c=2',29),(117,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073835_500.jpg?c=2',1),(118,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27071361_1920.jpg?c=2',2),(119,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27073789_1920.jpg?c=2',3),(120,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27093553_1920.jpg?c=2',4),(121,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27074065_1920.jpg?c=2',5),(122,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27071595_1920.jpg?c=2',6),(123,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27073676_1920.jpg?c=2',7),(124,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233889_1920.jpg?c=2',8),(125,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27071427_1920.jpg',9),(126,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27071531_1920.jpg?c=2',10),(127,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27073369_1920.jpg?c=2',11),(128,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27073178_1920.jpg?c=2',12),(129,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093072_1920.jpg?c=2',13),(130,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093072_1920.jpg?c=2',14),(131,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942280_27090863_1920.jpg?c=2',15),(132,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27071268_1920.jpg?c=2',16),(133,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27090733_1920.jpg?c=2',17),(134,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942223_27090733_1920.jpg?c=2',18),(135,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093330_1920.jpg?c=2',19),(136,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370480_27070847_1920.jpg?c=2',20),(137,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070542_1920.jpg?c=2',21),(138,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070542_1920.jpg?c=2',22),(139,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073698_1920.jpg?c=2',23),(140,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370475_27071099_1920.jpg?c=2',24),(141,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27073446_1920.jpg?c=2',25),(142,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27071115_1920.jpg?c=2',26),(143,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27071566_1920.jpg?c=2',27),(144,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27071418_1920.jpg?c=2',28),(145,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27071416_1920.jpg?c=2',29),(146,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371975_27073836_500.jpg?c=2',1),(147,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371273_27073490_1920.jpg?c=2',2),(148,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371966_27073791_1920.jpg?c=2',3),(149,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942752_27094274_1920.jpg?c=2',4),(150,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372021_27071591_1920.jpg?c=2',5),(151,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372029_27074087_1920.jpg?c=2',6),(152,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371939_27071470_1920.jpg?c=2',7),(153,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372004_27233890_1920.jpg?c=2',8),(154,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371922_27073607_1920.jpg',9),(155,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371994_27073968_1920.jpg?c=2',10),(156,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371246_27073371_1920.jpg?c=2',11),(157,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371196_27071240_1920.jpg?c=2',12),(158,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093073_1920.jpg?c=2',13),(159,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093073_1920.jpg?c=2',14),(160,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942356_27093073_1920.jpg?c=2',15),(161,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27071269_1920.jpg?c=2',16),(162,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27071269_1920.jpg?c=2',17),(163,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371225_27071269_1920.jpg?c=2',18),(164,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093331_1920.jpg?c=2',19),(165,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942402_27093331_1920.jpg?c=2',20),(166,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070541_1920.jpg?c=2',21),(167,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369746_27070541_1920.jpg?c=2',22),(168,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073699_1920.jpg?c=2',23),(169,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371944_27073699_1920.jpg?c=2',24),(170,'https://cdn-images.farfetch-contents.com/ami-zipped-suede-jacket_14371262_27071340_1920.jpg?c=2',25),(171,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371040_27070856_1920.jpg?c=2',26),(172,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372011_27071567_1920.jpg?c=2',27),(173,'https://cdn-images.farfetch-contents.com/ami-gingham-ami-de-coeur-shirt_14371913_27073568_1920.jpg?c=2',28),(174,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371912_27073562_1920.jpg?c=2',29),(175,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27073839_1920.jpg?c=2',30),(176,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27073491_1920.jpg?c=2',31),(177,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27073793_1920.jpg?c=2',32),(178,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27094270_1920.jpg?c=2',33),(179,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074069_1920.jpg?c=2',34),(180,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27071597_1920.jpg?c=2',35),(181,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27168093_1920.jpg?c=2',36),(182,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27074003_1920.jpg?c=2',37),(183,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27073610_1920.jpg?c=2',38),(184,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27073970_1920.jpg?c=2',39),(185,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27073373_1920.jpg?c=2',40),(186,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27073181_1920.jpg?c=2',41),(187,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093050_1920.jpg?c=2',42),(188,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196348_27109915_1920.jpg?c=2',43),(189,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942281_27090864_1920.jpg?c=2',44),(190,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27071271_1920.jpg?c=2',45),(191,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27091721_1920.jpg?c=2',46),(192,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27091721_1920.jpg?c=2',47),(193,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27094199_1920.jpg?c=2',48),(194,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370479_27101952_1920.jpg?c=2',49),(195,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068941_1920.jpg?c=2',50),(196,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068941_1920.jpg?c=2',51),(197,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073686_1920.jpg?c=2',52),(198,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070837_1920.jpg?c=2',53),(199,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070837_1920.jpg?c=2',54),(200,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27071111_1920.jpg?c=2',55),(201,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27074013_1920.jpg?c=2',56),(202,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27074013_1920.jpg?c=2',57),(203,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27071412_1920.jpg?c=2',58),(204,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27073840_1920.jpg?c=2',30),(205,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27073492_1920.jpg?c=2',31),(206,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27073795_1920.jpg?c=2',32),(207,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27093547_1920.jpg?c=2',33),(208,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074068_1920.jpg?c=2',34),(209,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27071596_1920.jpg?c=2',35),(210,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27168095_1920.jpg?c=2',36),(211,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27074002_1920.jpg?c=2',37),(212,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27073611_1920.jpg?c=2',38),(213,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27073969_1920.jpg?c=2',39),(214,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27073374_1920.jpg?c=2',40),(215,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27073180_1920.jpg?c=2',41),(216,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27094091_1920.jpg?c=2',42),(217,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196348_27109916_1920.jpg?c=2',43),(218,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942281_27091802_1920.jpg?c=2',44),(219,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073271_1920.jpg?c=2',45),(220,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27091722_1920.jpg?c=2',46),(221,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27091722_1920.jpg?c=2',47),(222,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27093321_1920.jpg?c=2',48),(223,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370479_27104696_1920.jpg?c=2',49),(224,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068943_1920.jpg?c=2',50),(225,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068943_1920.jpg?c=2',51),(226,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073687_1920.jpg?c=2',52),(227,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27071101_1920.jpg?c=2',53),(228,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27071101_1920.jpg?c=2',54),(229,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27070848_1920.jpg?c=2',55),(230,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27074012_1920.jpg?c=2',56),(231,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27074012_1920.jpg?c=2',57),(232,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27073556_1920.jpg?c=2',58),(233,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27073842_1920.jpg?c=2',30),(234,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27073493_1920.jpg?c=2',31),(235,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27071508_1920.jpg?c=2',32),(236,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27093545_1920.jpg?c=2',33),(237,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074070_1920.jpg?c=2',34),(238,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27074089_1920.jpg?c=2',35),(239,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27168094_1920.jpg?c=2',36),(240,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27071547_1920.jpg?c=2',37),(241,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27073612_1920.jpg?c=2',38),(242,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27073971_1920.jpg?c=2',39),(243,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27071313_1920.jpg?c=2',40),(244,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27073183_1920.jpg?c=2',41),(245,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27094093_1920.jpg?c=2',42),(246,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-scarf_15196348_27109917_1920.jpg?c=2',43),(247,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942281_27090865_1920.jpg?c=2',44),(248,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073274_1920.jpg?c=2',45),(249,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27090734_1920.jpg?c=2',46),(250,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27090734_1920.jpg?c=2',47),(251,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27093322_1920.jpg?c=2',48),(252,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370479_27104693_1920.jpg?c=2',49),(253,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27070528_1920.jpg?c=2',50),(254,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27070528_1920.jpg?c=2',51),(255,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073688_1920.jpg?c=2',52),(256,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070838_1920.jpg?c=2',53),(257,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070838_1920.jpg?c=2',54),(258,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27071112_1920.jpg?c=2',55),(259,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071560_1920.jpg?c=2',56),(260,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071560_1920.jpg?c=2',57),(261,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27071411_1920.jpg?c=2',58),(262,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27073841_1920.jpg?c=2',30),(263,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27071364_1920.jpg?c=2',31),(264,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27073796_1920.jpg?c=2',32),(265,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27093546_1920.jpg?c=2',33),(266,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074071_1920.jpg?c=2',34),(267,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27074088_1920.jpg?c=2',35),(268,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27168096_1920.jpg?c=2',36),(269,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27071548_1920.jpg?c=2',37),(270,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27071428_1920.jpg?c=2',38),(271,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27071533_1920.jpg?c=2',39),(272,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27073375_1920.jpg?c=2',40),(273,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27073182_1920.jpg?c=2',41),(274,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093053_1920.jpg?c=2',42),(275,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093053_1920.jpg?c=2',43),(276,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942281_27090866_1920.jpg?c=2',44),(277,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073272_1920.jpg?c=2',45),(278,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27087988_1920.jpg?c=2',46),(279,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27087988_1920.jpg?c=2',47),(280,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27094200_1920.jpg?c=2',48),(281,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370479_27104694_1920.jpg?c=2',49),(282,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068944_1920.jpg?c=2',50),(283,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068944_1920.jpg?c=2',51),(284,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073689_1920.jpg?c=2',52),(285,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070839_1920.jpg?c=2',53),(286,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27070839_1920.jpg?c=2',54),(287,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27070849_1920.jpg?c=2',55),(288,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071561_1920.jpg?c=2',56),(289,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071561_1920.jpg?c=2',57),(290,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27073555_1920.jpg?c=2',58),(291,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27071519_1920.jpg?c=2',30),(292,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27071363_1920.jpg?c=2',31),(293,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27073797_1920.jpg?c=2',32),(294,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27094271_1920.jpg?c=2',33),(295,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074072_1920.jpg?c=2',34),(296,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27074090_1920.jpg?c=2',35),(297,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27170338_1920.jpg?c=2',36),(298,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27071546_1920.jpg?c=2',37),(299,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27073613_1920.jpg?c=2',38),(300,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27073972_1920.jpg?c=2',39),(301,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27073376_1920.jpg?c=2',40),(302,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27073184_1920.jpg?c=2',41),(303,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093057_1920.jpg?c=2',42),(304,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093057_1920.jpg?c=2',43),(305,'https://cdn-images.farfetch-contents.com/ami-small-box-bag_14942281_27092098_1920.jpg?c=2',44),(306,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073273_1920.jpg?c=2',45),(307,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27090735_1920.jpg?c=2',46),(308,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-cap_14942224_27090735_1920.jpg?c=2',47),(309,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27094201_1920.jpg?c=2',48),(310,'https://cdn-images.farfetch-contents.com/ami-spring-low-sneakers_14370479_27104695_1920.jpg?c=2',49),(311,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068946_1920.jpg?c=2',50),(312,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27068946_1920.jpg?c=2',51),(313,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073691_1920.jpg?c=2',52),(314,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27071102_1920.jpg?c=2',53),(315,'https://cdn-images.farfetch-contents.com/ami-laced-ankle-boots-with-tractor-sole_14370476_27071102_1920.jpg?c=2',54),(316,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27070850_1920.jpg?c=2',55),(317,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071562_1920.jpg?c=2',56),(318,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071562_1920.jpg?c=2',57),(319,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27071413_1920.jpg?c=2',58),(320,'https://cdn-images.farfetch-contents.com/ami-cigarette-fit-trousers_14371976_27073844_1920.jpg?c=2',30),(321,'https://cdn-images.farfetch-contents.com/ami-unstructured-coat_14371275_27073495_1920.jpg?c=2',31),(322,'https://cdn-images.farfetch-contents.com/ami-oversize-mac-coat_14371967_27073798_1920.jpg?c=2',32),(323,'https://cdn-images.farfetch-contents.com/ami-two-buttons-jacket_14942751_27094272_1920.jpg?c=2',33),(324,'https://cdn-images.farfetch-contents.com/ami-pleated-bermuda-shorts_14372024_27074075_1920.jpg?c=2',34),(325,'https://cdn-images.farfetch-contents.com/ami-patch-pockets-bermuda-shorts_14372031_27071598_1920.jpg?c=2',35),(326,'https://cdn-images.farfetch-contents.com/ami-embroidered-shirt_14371938_27170339_1920.jpg?c=2',36),(327,'https://cdn-images.farfetch-contents.com/ami-straight-fit-trousers_14372006_27071549_1920.jpg?c=2',37),(328,'https://cdn-images.farfetch-contents.com/ami-side-slits-oversize-shirt_14371923_27073614_1920.jpg?c=2',38),(329,'https://cdn-images.farfetch-contents.com/ami-carrot-fit-pleated-trousers_14371996_27073973_1920.jpg?c=2',39),(330,'https://cdn-images.farfetch-contents.com/ami-striped-crewneck-sweater_14371247_27073378_1920.jpg?c=2',40),(331,'https://cdn-images.farfetch-contents.com/ami-light-t-shirt_14371197_27071242_1920.jpg?c=2',41),(332,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093062_1920.jpg?c=2',42),(333,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093062_1920.jpg?c=2',43),(334,'https://cdn-images.farfetch-contents.com/ami-elasticized-waist-trousers_14942354_27093062_1920.jpg?c=2',44),(335,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073275_1920.jpg?c=2',45),(336,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073275_1920.jpg?c=2',46),(337,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-polo-shirt_14371228_27073275_1920.jpg?c=2',47),(338,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27093324_1920.jpg?c=2',48),(339,'https://cdn-images.farfetch-contents.com/ami-crewneck-rugby-striped-sweater_14942401_27093324_1920.jpg?c=2',49),(340,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27070529_1920.jpg?c=2',50),(341,'https://cdn-images.farfetch-contents.com/ami-mini-accordion-bag_14369745_27070529_1920.jpg?c=2',51),(342,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073692_1920.jpg?c=2',52),(343,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073692_1920.jpg?c=2',53),(344,'https://cdn-images.farfetch-contents.com/ami-chest-pockets-overshirt_14371942_27073692_1920.jpg?c=2',54),(345,'https://cdn-images.farfetch-contents.com/ami-ami-de-coeur-swim-shorts_14371039_27071113_1920.jpg?c=2',55),(346,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071563_1920.jpg?c=2',56),(347,'https://cdn-images.farfetch-contents.com/ami-oversize-carrott-fit-chino-trousers_14372010_27071563_1920.jpg?c=2',57),(348,'https://cdn-images.farfetch-contents.com/ami-ami-embroidery-shirt_14371911_27073557_1920.jpg?c=2',58);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
INSERT INTO `product_sizes` VALUES (1,'36, 38, 40, 42, 44'),(2,'50'),(3,'S'),(4,'44, 54'),(5,'S, M, L'),(6,'S, M, L, XL'),(7,'XS, S, M, L, XL, XXL'),(8,'38, 40, 42'),(9,'34, 36, 38, 40, 42'),(10,'XS, XL'),(11,'34, 36, 38, 40, 42, 44, 46'),(12,'OS'),(13,'XXS, XS, S'),(14,'XS, M'),(15,'40, 41, 42'),(16,'XS, S, M, L, XL'),(17,'40, 41, 43, 44'),(18,'S, M, L, XL, XXL'),(19,'M, L'),(20,'36, 42'),(21,'37, 38, 39, 40, 41, 42');
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `guide` varchar(500) DEFAULT NULL,
  `product_size_id` int DEFAULT NULL,
  `type_name_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_size_id_e34751d5_fk_product_sizes_id` (`product_size_id`),
  KEY `products_type_name_id_72002248_fk_type_names_id` (`type_name_id`),
  CONSTRAINT `products_product_size_id_e34751d5_fk_product_sizes_id` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`id`),
  CONSTRAINT `products_type_name_id_72002248_fk_type_names_id` FOREIGN KEY (`type_name_id`) REFERENCES `type_names` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Cigarette Fit Trousers',470000.0000,'2020-06-30 08:50:58.658504','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',1,1),(2,'Unstructured Coat',1620000.0000,'2020-06-30 08:50:58.670743','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',2,2),(3,'Oversize Mac Coat',1610000.0000,'2020-06-30 08:50:58.673043','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',3,2),(4,'Two Buttons Jacket',1380000.0000,'2020-06-30 08:50:58.675067','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',4,3),(5,'Pleated Bermuda Shorts',320000.0000,'2020-06-30 08:50:58.677028','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',5,3),(6,'Patch Pockets Bermuda Shorts',470000.0000,'2020-06-30 08:50:58.678744','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',6,4),(7,'Embroidered Shirt',470000.0000,'2020-06-30 08:50:58.680403','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',7,4),(8,'Straight Fit Trousers',830000.0000,'2020-06-30 08:50:58.682090','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',8,5),(9,'Side Slits Oversize Shirt',440000.0000,'2020-06-30 08:50:58.683875','Machine wash at 30° gentle, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',5,6),(10,'Carrot Fit Pleated Trousers',490000.0000,'2020-06-30 08:50:58.685512','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',9,1),(11,'Striped Crewneck Sweater',530000.0000,'2020-06-30 08:50:58.687245','Hand wash low temperature, Do not bleach, Do not tumble dry, Dry flat, Cool iron, Dry clean delicate, ',10,7),(12,'Light T-shirt',160000.0000,'2020-06-30 08:50:58.689417','Machine wash at 30°c gentle, Do not bleach, Do not tumble dry, Cool iron, Do not dry clean',7,6),(13,'Elasticized Waist Trousers',510000.0000,'2020-06-30 08:50:58.691062','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',11,1),(14,'Ami De Coeur Scarf',274000.0000,'2020-06-30 08:50:58.692691','Hand wash low temperature, Do not bleach, Do not tumble dry, Dry flat, Cool iron, Dry clean delicate',12,8),(15,'Small Box Bag',810000.0000,'2020-06-30 08:50:58.694264','Protect from direct light, heat and rain, Clean with a cloth or brush',12,9),(16,'Ami De Coeur Polo Shirt',200000.0000,'2020-06-30 08:50:58.695820','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium Iron inside out, Do not dry clean Reshape whilst damp Wash inside out',13,10),(17,'Ami De Coeur Cap',185000.0000,'2020-06-30 08:50:58.697481','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',12,11),(18,'Necklace With Bells and Ami De Coeur Clasp',760000.0000,'2020-06-30 08:50:58.699312','We advise you to minimize the contact with water, perfum, checmical products and cosmetics, that can alter the jewelry',12,12),(19,'Crewneck Rugby-striped Sweater',510000.0000,'2020-06-30 08:50:58.701871','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Dry clean delicate',14,7),(20,'Spring Low Sneakers',580000.0000,'2020-06-30 08:50:58.703644','Clean with leather care product',15,13),(21,'Mini Accordion Bag',690000.0000,'2020-06-30 08:50:58.705315','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Do not iron, Do not dry clean',12,9),(22,'Sunglasses',440000.0000,'2020-06-30 08:50:58.706936','',12,14),(23,'Chest Pockets Overshirt',450000.0000,'2020-06-30 08:50:58.708744','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',16,15),(24,'Laced Ankle Boots With Tractor Sole',760000.0000,'2020-06-30 08:50:58.710946','Clean with leather care product',17,5),(25,'Zipped Suede Jacket',2430000.0000,'2020-06-30 08:50:58.712741','Do not wash, Do not bleach, Do not tumble dry, Cool iron, Do not iron, Do not dry clean, The material is guenuine leather. It is possible to notice some shading of color, grain of relief. These are the characteristics of natural leather.',6,3),(26,'Ami De Coeur Swim Shorts',250000.0000,'2020-06-30 08:50:58.714388','Machine wash at 30°c, Do not bleach, Do not tumble dry, Cool iron, Dry clean possible',18,4),(27,'Oversize Carrott Fit Chino Trousers',400000.0000,'2020-06-30 08:50:58.715993','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',19,1),(28,'Gingham Ami De Coeur Shirt',330000.0000,'2020-06-30 08:50:58.717697','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',20,15),(29,'Ami Embroidery Shirt',310000.0000,'2020-06-30 08:50:58.719332','Machine wash at 30°c, Do not bleach, Do not tumble dry, Medium iron, Dry clean possible',21,15);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_names`
--

DROP TABLE IF EXISTS `type_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_names`
--

LOCK TABLES `type_names` WRITE;
/*!40000 ALTER TABLE `type_names` DISABLE KEYS */;
INSERT INTO `type_names` VALUES (1,'Pants'),(2,'Coats'),(3,'Jackets'),(4,'Shorts'),(5,'Boots'),(6,'T-Shirts & Vests'),(7,'Knitwear'),(8,'Scarf'),(9,'Messenger Bags'),(10,'Polo Shirts'),(11,'Hats'),(12,'Necklaces'),(13,'Sneakers'),(14,'Sunglasses'),(15,'Shirts');
/*!40000 ALTER TABLE `type_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-03 10:11:29
