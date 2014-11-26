-- MySQL dump 10.13  Distrib 5.5.39, for Linux (x86_64)
--
-- Host: localhost    Database: stich
-- ------------------------------------------------------
-- Server version	5.5.39

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_11_26_065420_shopify_product',1),('2014_11_26_162820_vend_product',2),('2014_11_26_165039_stichlite_inventory',3),('2014_11_26_165053_stichlite_inventory_details',3),('2014_11_26_165705_stichlite_inventory_syncdetails',4),('2014_11_26_172907_add_attributes_to_shopify_product',5),('2014_11_26_173928_add_specific_attributes_to_shopify_product',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopify_product`
--

DROP TABLE IF EXISTS `shopify_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopify_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `variant_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variant_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variant_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopify_product_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopify_product`
--

LOCK TABLES `shopify_product` WRITE;
/*!40000 ALTER TABLE `shopify_product` DISABLE KEYS */;
INSERT INTO `shopify_product` VALUES (1,'Armani Jackets','SKU_JACKET_001','25','400.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(2,'Armani Jackets','SKU_JACKET_002','10','400.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(3,'Armani Jackets','SKU_JACKET_003','10','400.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(4,'Boss Formal Shirt','SKU_SHIRT_001','20','30.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(5,'Boss Formal Shirt','SKU_SHIRT_002','20','40.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(6,'Boss Formal Shirt','SKU_SHIRT_003','10','3.00','2014-11-27 01:07:05','2014-11-27 01:39:39','','','',''),(7,'Coach Wallets','SKU_WALLETS_001','10','300.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(8,'Coach Wallets','SKU_WALLETS_002','5','300.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(9,'Coach Wallets','SKU_WALLETS_003','5','300.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(10,'Nike Shoes','SKU_SHOES_001','10','100.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(11,'Nike Shoes','SKU_SHOES_002','10','100.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(12,'Nike Shoes','SKU_SHOES_003','10','100.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(13,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_001','10','1000.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(14,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_002','10','1000.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','',''),(15,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_003','10','1000.00','2014-11-27 01:07:05','2014-11-27 01:07:05','','','','');
/*!40000 ALTER TABLE `shopify_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stichlite_inventory`
--

DROP TABLE IF EXISTS `stichlite_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stichlite_inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `stichlite_inventory_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stichlite_inventory`
--

LOCK TABLES `stichlite_inventory` WRITE;
/*!40000 ALTER TABLE `stichlite_inventory` DISABLE KEYS */;
INSERT INTO `stichlite_inventory` VALUES (1,'Armani Jackets','SKU_JACKET_001','shopify','50','400.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(2,'Armani Jackets','SKU_JACKET_002','shopify','50','400.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(3,'Armani Jackets','SKU_JACKET_003','shopify','50','400.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(4,'Boss Formal Shirt','SKU_SHIRT_001','shopify','50','30.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(5,'Boss Formal Shirt','SKU_SHIRT_002','shopify','50','40.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(6,'Boss Formal Shirt','SKU_SHIRT_003','shopify','50','30.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(7,'Coach Wallets','SKU_WALLETS_001','shopify','10','300.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(8,'Coach Wallets','SKU_WALLETS_002','shopify','5','300.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(9,'Coach Wallets','SKU_WALLETS_003','shopify','5','300.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(10,'Nike Shoes','SKU_SHOES_001','shopify','10','100.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(11,'Nike Shoes','SKU_SHOES_002','shopify','10','100.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(12,'Nike Shoes','SKU_SHOES_003','shopify','10','100.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(13,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_001','shopify','10','1000.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(14,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_002','shopify','10','1000.00','2014-11-27 01:38:46','2014-11-27 01:38:46'),(15,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_003','shopify','10','1000.00','2014-11-27 01:38:46','2014-11-27 01:38:46');
/*!40000 ALTER TABLE `stichlite_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stichlite_inventory_syncdetails`
--

DROP TABLE IF EXISTS `stichlite_inventory_syncdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stichlite_inventory_syncdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_on_stichlite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_on_pull` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_to_push` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `stichlite_inventory_syncdetails_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stichlite_inventory_syncdetails`
--

LOCK TABLES `stichlite_inventory_syncdetails` WRITE;
/*!40000 ALTER TABLE `stichlite_inventory_syncdetails` DISABLE KEYS */;
INSERT INTO `stichlite_inventory_syncdetails` VALUES (1,'Armani Jackets','SKU_JACKET_001','shopify','25','25','','400.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(2,'Armani Jackets','SKU_JACKET_002','shopify','10','10','','400.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(3,'Armani Jackets','SKU_JACKET_003','shopify','10','10','','400.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(4,'Boss Formal Shirt','SKU_SHIRT_001','shopify','20','20','','30.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(5,'Boss Formal Shirt','SKU_SHIRT_002','shopify','20','20','','40.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(6,'Boss Formal Shirt','SKU_SHIRT_003','shopify','20','10','','3.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(7,'Coach Wallets','SKU_WALLETS_001','shopify','10','10','','300.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(8,'Coach Wallets','SKU_WALLETS_002','shopify','5','5','','300.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(9,'Coach Wallets','SKU_WALLETS_003','shopify','5','5','','300.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(10,'Nike Shoes','SKU_SHOES_001','shopify','10','10','','100.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(11,'Nike Shoes','SKU_SHOES_002','shopify','10','10','','100.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(12,'Nike Shoes','SKU_SHOES_003','shopify','10','10','','100.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(13,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_001','shopify','10','10','','1000.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(14,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_002','shopify','10','10','','1000.00','2014-11-27 01:38:46','2014-11-27 01:39:39'),(15,'Swiss wrist ROLEX Men Watch','SKU_ROLEX_003','shopify','10','10','','1000.00','2014-11-27 01:38:46','2014-11-27 01:39:39');
/*!40000 ALTER TABLE `stichlite_inventory_syncdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vend_product`
--

DROP TABLE IF EXISTS `vend_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vend_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `vend_product_sku_index` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vend_product`
--

LOCK TABLES `vend_product` WRITE;
/*!40000 ALTER TABLE `vend_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `vend_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 16:08:42
