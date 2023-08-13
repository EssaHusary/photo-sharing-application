-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: csc317db
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` mediumtext NOT NULL,
  `fk_postId` int unsigned NOT NULL,
  `fk_authorId` int unsigned NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `comment_author_idx` (`fk_authorId`),
  KEY `comment_belongsTo_idx` (`fk_postId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'test',9,4,'2022-05-17 03:09:31'),(2,'test',9,4,'2022-05-17 03:09:31'),(3,'test',9,4,'2022-05-17 03:09:31'),(4,'test',9,4,'2022-05-17 03:09:31'),(5,'test',9,4,'2022-05-17 03:09:31'),(6,'test',9,4,'2022-05-17 03:09:31'),(7,'test',9,4,'2022-05-17 03:09:31'),(8,'test',9,4,'2022-05-17 03:09:31'),(9,'test',9,4,'2022-05-17 03:09:31'),(10,'This is a test comment from a logged in user',9,4,'2022-05-18 04:39:40'),(11,'This is a test comment from a logged in user',9,4,'2022-05-18 04:59:41'),(12,'This is a test comment from a logged in user',9,4,'2022-05-18 04:59:42'),(13,'This is a test comment from a logged in user',9,4,'2022-05-18 04:59:44'),(14,'Wow!',9,4,'2022-05-18 05:00:11'),(15,'Awesome photo!',9,4,'2022-05-18 05:00:21'),(16,'DEMOLITION!!!!',8,4,'2022-05-18 19:57:42'),(18,'WOW!',11,8,'2022-05-18 20:53:41');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` mediumtext NOT NULL,
  `photopath` varchar(2048) NOT NULL,
  `thumbnail` varchar(2048) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `fk_userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `post_author_idx` (`fk_userId`),
  CONSTRAINT `post_author` FOREIGN KEY (`fk_userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'test03','test03','public\\images\\uploads\\04549b6dea2b4bdd1fc5bb4e04bb4b3fe59872681abf.png','public/images/uploads/thumbnail-04549b6dea2b4bdd1fc5bb4e04bb4b3fe59872681abf.png',1,'2022-05-13 22:32:31',4),(2,'spanish guitar','picture of a spanish guitar','public\\images\\uploads\\95d09d78350d9d7b63cfa2261fec96d1f39eea4f002b.jpeg','public/images/uploads/thumbnail-95d09d78350d9d7b63cfa2261fec96d1f39eea4f002b.jpeg',1,'2022-05-14 01:10:34',4),(3,'skydiving','pic of my buddy and I skydiving','public\\images\\uploads\\0a5a6c81fbcdec6033f98f6e109d2cf0e7fce16a919e.jpeg','public/images/uploads/thumbnail-0a5a6c81fbcdec6033f98f6e109d2cf0e7fce16a919e.jpeg',1,'2022-05-14 01:12:14',4),(4,'wheelie','me popping a wheelie','public\\images\\uploads\\b5ee6345bd9dc5d9fd5884ebb22db8e0dc1c8d6a8d82.jpeg','public/images/uploads/thumbnail-b5ee6345bd9dc5d9fd5884ebb22db8e0dc1c8d6a8d82.jpeg',1,'2022-05-14 01:14:53',4),(5,'grinding','my friend samantha grinding','public\\images\\uploads\\291818f798d7cf5885601de898eae8ac39c3c31893ac.jpeg','public/images/uploads/thumbnail-291818f798d7cf5885601de898eae8ac39c3c31893ac.jpeg',1,'2022-05-14 01:16:57',4),(6,'flying','my brother Steve flying through the air on his scooter','public\\images\\uploads\\ea1003288d9a705d8a17709a3e4038bcfb7fae58db1c.jpeg','public/images/uploads/thumbnail-ea1003288d9a705d8a17709a3e4038bcfb7fae58db1c.jpeg',1,'2022-05-14 01:51:49',4),(7,'heaviest deadlift','Hafthor Bjornsson performing the heaviest deadlift in the world','public\\images\\uploads\\d27606359445b85b242603e89f2119d17b675871791b.webp','public/images/uploads/thumbnail-d27606359445b85b242603e89f2119d17b675871791b.webp',1,'2022-05-14 01:56:13',4),(8,'monster truck destruction','monster truck flying through the air after obliterating a small car','public\\images\\uploads\\58d310fe8f1d4e4af6c8c57b15ef2109643f43f9c1fa.jpeg','public/images/uploads/thumbnail-58d310fe8f1d4e4af6c8c57b15ef2109643f43f9c1fa.jpeg',1,'2022-05-14 02:01:39',4),(9,'nebula ','image of a nebula in outer space','public\\images\\uploads\\b2b63ae1affb2feb1999a19e4756bf7f9ce9518c737a.jpeg','public/images/uploads/thumbnail-b2b63ae1affb2feb1999a19e4756bf7f9ce9518c737a.jpeg',1,'2022-05-16 15:20:56',4),(11,'high tide','my buddy riding a gnarly wave','public\\images\\uploads\\5738412a6a6a3f1130559a5fe5b02907a06c12c0c57a.jpeg','public/images/uploads/thumbnail-5738412a6a6a3f1130559a5fe5b02907a06c12c0c57a.jpeg',1,'2022-05-18 20:52:43',8);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'s','e@g.com','[\"v\",\"v\"]',1,'2022-04-28 21:52:46'),(2,'v','s@g.com','[\"d\",\"d\"]',1,'2022-05-05 00:15:43'),(3,'test06','test06@gmail.com','$2b$15$cstzfT3MdJVM/PP.AORV0O9UrgPonQuVM4ugOSk7bz23VBzlV0DvW',1,'2022-05-10 02:40:39'),(4,'test04','test04@mail.com','$2b$15$uaGHwZ8pO/Bsc44rTi.7pe6LrfW8eLxHIwXLku8KPkGl0cJe6jzYW',1,'2022-05-10 17:13:17'),(5,'refactorTest01','refact01@gmail.com','$2b$15$/VaZwZsSVnRZqclX5hSrb.fEsV/UQV/IXr7HFIzSuulYjllq.cvYW',1,'2022-05-16 03:43:41'),(6,'happiboi333','e@y.com','$2b$15$Wml9TH6rrdvFmitoHmhbU.LMUUetOOuYeK11ouN8wECHmMEEjepsy',1,'2022-05-18 19:50:20'),(7,'happyboi3','e@r.com','$2b$15$tLeeuPywAdGdTJiiuXHIX.JmkZOELzfn8GUgP73IdOxvmoZU4gElO',1,'2022-05-18 20:35:50'),(8,'hee444','t@p.com','$2b$15$0V9pH/BZhgPZNp1TkWMgbOuC7sTMwvr719jT7emdx2I5LQ2SjhJOG',1,'2022-05-18 20:51:11');
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

-- Dump completed on 2022-05-18 22:43:39
