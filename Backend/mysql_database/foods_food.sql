-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foods
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `category_id` int NOT NULL,
  `price` int NOT NULL,
  `rating` int NOT NULL,
  `img_link` varchar(1000) NOT NULL,
  `gluten_free` int NOT NULL,
  `vegan` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Chicken Pakora (8 Pcs)',1,200,4,'pakora.jpg',1,0),(2,'Paneer Tikka',1,275,3,'paneer_tikka.jpg',1,0),(3,'Chicken Cutlet',1,100,5,'chicken_cutlet.jpg',1,0),(4,'Vegetable Patty',1,61,4,'vegetable_patty.jpg',0,1),(5,'Healthy Protein Salad\r',1,158,5,'protein_salad.jpg',1,0),(6,'Veg Burger With French Fries',1,148,5,'veg_burger.jpg',0,1),(7,'Mutton Biryani',2,260,5,'mutton_biriyani.jpg',1,0),(8,'Chicken Biryani',2,125,5,'chicken_biriyani.jpg',1,0),(9,'Veg Hakka Noodles',2,190,3,'veg_hakka.jpg',1,1),(10,'Maharaja Veg Pizza',2,250,4,'veg_pizza.jpg',0,1),(11,'La Pino\'z Chicken Pizza',2,289,5,'chicken_pizza.jpg',0,0),(12,'Mixed Fried Rice',2,220,2,'mixed_fried_rice.jpg',1,0),(13,'Veg Fried Rice',2,150,2,'mixed_fried_rice.jpg',1,1),(14,'Aloo Paratha',2,119,4,'aloo_paratha.jpg',0,1),(15,'Chocolate Truffle Cake',3,500,5,'chocolate_cake.jpg',0,1),(16,'Vanilla Ice cream Cup (100 ml)',3,200,5,'vanila_ice_cream.jpg',0,0),(17,'Fruit & Nut Ice cream Cup',3,90,4,'fruit_nut_ice_cream.jpg',0,1),(18,'Belgian Chocolate Ice Cream [100 ml]',3,94,5,'belgian_chocolate_ice_cream.jpg',0,0);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

