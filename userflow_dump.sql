-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: UserFlow
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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `card_id` varchar(36) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_id` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('12fb3f4f-5799-444d-ade5-f012cebe233d','Gold Card'),('23c437b9-6b78-41a8-9c2e-ad500ea60de7','Bronze Card'),('2a6af0b4-e462-40e4-af4a-57e541c07d27','Silver Card'),('74e92a96-2dde-49f9-ac34-8d6e44126f60','Silver Card'),('9b921a9c-ecd7-419b-ac26-e1a0a2b023bb','Silver Card'),('9c324a5f-e482-4a29-9b02-340db8f536ba','Silver Card'),('9d22faab-7310-451d-a13e-b84a02fa70ce','Platinum Card'),('c407c1d6-baa1-4fb0-9c59-56282c3c5b12','Gold Card'),('e3e722e6-52c4-4a6c-ae2c-db44c51fe1f2','Diamond Card'),('e40a6e01-bb55-4611-a02b-a2177ed29ace','Gold Card');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `description` text,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postuser`
--

DROP TABLE IF EXISTS `postuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postuser` (
  `user_id` varchar(36) NOT NULL,
  `post_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `postuser_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `postuser_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postuser`
--

LOCK TABLES `postuser` WRITE;
/*!40000 ALTER TABLE `postuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `postuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(50) NOT NULL,
  `profile_picture` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('0880b1d2-ddfd-433f-856c-688505f315dd','ChrisJohnson402','https://randomuser.me/api/portraits/lego/3.jpg'),('0be59adc-cdb9-48ae-803e-b426b2e7a6a7','JaneJohnson505','https://randomuser.me/api/portraits/lego/8.jpg'),('1a3315f3-1a93-489e-8877-5bdb2dc0edf7','AlexBrown329','https://randomuser.me/api/portraits/lego/8.jpg'),('32c223c6-1103-467c-b4de-e281be154e6c','JaneDoe441','https://randomuser.me/api/portraits/lego/0.jpg'),('43588c5a-3135-4a86-8cda-0dceb4384197','ChrisLee627','https://randomuser.me/api/portraits/lego/1.jpg'),('53a67adb-8a49-4ddd-9418-3381cdc01ca2','AlexLee496','https://randomuser.me/api/portraits/lego/8.jpg'),('613ef79e-fdb4-463d-8369-f254525f8023','JaneSmith83','https://randomuser.me/api/portraits/lego/7.jpg'),('8dc57e46-3480-497d-952b-be4f6b811d74','JaneDoe934','https://randomuser.me/api/portraits/lego/1.jpg'),('9d7952df-0860-4ff2-885f-08af7924b1eb','EmilyBrown926','https://randomuser.me/api/portraits/lego/0.jpg'),('b31ff8b5-1efc-4960-981d-90b6038c8503','EmilySmith815','https://randomuser.me/api/portraits/lego/3.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercard`
--

DROP TABLE IF EXISTS `usercard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercard` (
  `user_id` varchar(36) NOT NULL,
  `card_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`card_id`),
  KEY `card_id` (`card_id`),
  CONSTRAINT `usercard_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `usercard_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercard`
--

LOCK TABLES `usercard` WRITE;
/*!40000 ALTER TABLE `usercard` DISABLE KEYS */;
INSERT INTO `usercard` VALUES ('43588c5a-3135-4a86-8cda-0dceb4384197','12fb3f4f-5799-444d-ade5-f012cebe233d'),('0be59adc-cdb9-48ae-803e-b426b2e7a6a7','23c437b9-6b78-41a8-9c2e-ad500ea60de7'),('b31ff8b5-1efc-4960-981d-90b6038c8503','2a6af0b4-e462-40e4-af4a-57e541c07d27'),('53a67adb-8a49-4ddd-9418-3381cdc01ca2','74e92a96-2dde-49f9-ac34-8d6e44126f60'),('8dc57e46-3480-497d-952b-be4f6b811d74','9b921a9c-ecd7-419b-ac26-e1a0a2b023bb'),('1a3315f3-1a93-489e-8877-5bdb2dc0edf7','9c324a5f-e482-4a29-9b02-340db8f536ba'),('32c223c6-1103-467c-b4de-e281be154e6c','c407c1d6-baa1-4fb0-9c59-56282c3c5b12'),('0880b1d2-ddfd-433f-856c-688505f315dd','e3e722e6-52c4-4a6c-ae2c-db44c51fe1f2');
/*!40000 ALTER TABLE `usercard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-19  0:56:44
