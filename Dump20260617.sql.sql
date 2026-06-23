-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Python Basics','John Smith',NULL,'Programming',0.00,10,NULL,'2026-06-12 10:04:36'),(2,'SQL Fundamentals','David Lee',NULL,'Database',0.00,8,NULL,'2026-06-12 10:04:36'),(3,'Java Complete Guide','James Gosling',NULL,'Programming',0.00,5,NULL,'2026-06-12 10:04:36'),(4,'C Programming','Dennis Ritchie',NULL,'Programming',0.00,12,NULL,'2026-06-12 10:04:36'),(5,'Data Structures','Mark Allen',NULL,'Computer Science',0.00,7,NULL,'2026-06-12 10:04:36'),(6,'Operating Systems','Andrew Tanenbaum',NULL,'Computer Science',0.00,6,NULL,'2026-06-12 10:04:36'),(7,'Computer Networks','Behrouz Forouzan',NULL,'Networking',0.00,9,NULL,'2026-06-12 10:04:36'),(8,'DBMS Concepts','Korth',NULL,'Database',0.00,10,NULL,'2026-06-12 10:04:36'),(9,'Cyber Security','William Stallings',NULL,'Security',0.00,5,NULL,'2026-06-12 10:04:36'),(10,'Cloud Computing','Rajkumar Buyya',NULL,'Cloud',0.00,8,NULL,'2026-06-12 10:04:36'),(11,'Linux Administration','Tom Adelstein',NULL,'System Admin',0.00,6,NULL,'2026-06-12 10:04:36'),(12,'Power BI Essentials','Sam Gupta',NULL,'Analytics',0.00,10,NULL,'2026-06-12 10:04:36'),(13,'Web Development','Jon Duckett',NULL,'Web',0.00,7,NULL,'2026-06-12 10:04:36'),(14,'HTML & CSS','Jon Duckett',NULL,'Web',0.00,15,NULL,'2026-06-12 10:04:36'),(15,'JavaScript Basics','Brendan Eich',NULL,'Web',0.00,11,NULL,'2026-06-12 10:04:36'),(16,'Machine Learning','Aurélien Géron',NULL,'AI',0.00,4,NULL,'2026-06-12 10:04:36'),(17,'Artificial Intelligence','Stuart Russell',NULL,'AI',0.00,3,NULL,'2026-06-12 10:04:36'),(18,'Software Engineering','Ian Sommerville',NULL,'Software',0.00,9,NULL,'2026-06-12 10:04:36'),(19,'Computer Graphics','Donald Hearn',NULL,'Graphics',0.00,5,NULL,'2026-06-12 10:04:36'),(20,'Project Management','Harold Kerzner',NULL,'Management',0.00,8,NULL,'2026-06-12 10:04:36'),(21,'Python Basics','John Smith',NULL,'Programming',0.00,10,NULL,'2026-06-12 10:53:00'),(22,'SQL Fundamentals','David Lee',NULL,'Database',0.00,8,NULL,'2026-06-12 10:53:00'),(23,'Java Complete Guide','James Gosling',NULL,'Programming',0.00,5,NULL,'2026-06-12 10:53:00'),(24,'C Programming','Dennis Ritchie',NULL,'Programming',0.00,12,NULL,'2026-06-12 10:53:00'),(25,'Data Structures','Mark Allen',NULL,'Computer Science',0.00,7,NULL,'2026-06-12 10:53:00'),(26,'Operating Systems','Andrew Tanenbaum',NULL,'Computer Science',0.00,6,NULL,'2026-06-12 10:53:00'),(27,'Computer Networks','Behrouz Forouzan',NULL,'Networking',0.00,9,NULL,'2026-06-12 10:53:00'),(28,'DBMS Concepts','Korth',NULL,'Database',0.00,10,NULL,'2026-06-12 10:53:00'),(29,'Cyber Security','William Stallings',NULL,'Security',0.00,5,NULL,'2026-06-12 10:53:00'),(30,'Cloud Computing','Rajkumar Buyya',NULL,'Cloud',0.00,8,NULL,'2026-06-12 10:53:00'),(31,'Linux Administration','Tom Adelstein',NULL,'System Admin',0.00,6,NULL,'2026-06-12 10:53:00'),(32,'Power BI Essentials','Sam Gupta',NULL,'Analytics',0.00,10,NULL,'2026-06-12 10:53:00'),(33,'Web Development','Jon Duckett',NULL,'Web',0.00,7,NULL,'2026-06-12 10:53:00'),(34,'HTML & CSS','Jon Duckett',NULL,'Web',0.00,15,NULL,'2026-06-12 10:53:00'),(35,'JavaScript Basics','Brendan Eich',NULL,'Web',0.00,11,NULL,'2026-06-12 10:53:00'),(36,'Machine Learning','Aurélien Géron',NULL,'AI',0.00,4,NULL,'2026-06-12 10:53:00'),(37,'Artificial Intelligence','Stuart Russell',NULL,'AI',0.00,3,NULL,'2026-06-12 10:53:00'),(38,'Software Engineering','Ian Sommerville',NULL,'Software',0.00,9,NULL,'2026-06-12 10:53:00'),(39,'Computer Graphics','Donald Hearn',NULL,'Graphics',0.00,5,NULL,'2026-06-12 10:53:00'),(40,'Project Management','Harold Kerzner',NULL,'Management',0.00,8,NULL,'2026-06-12 10:53:00'),(41,'Database Systems','Navathe','9781234567890','Education',500.00,10,NULL,'2026-06-12 10:53:04'),(42,'Java Programming','Herbert Schildt','9781234567891','Programming',650.00,5,NULL,'2026-06-12 10:53:04');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `issuebooks`
--

LOCK TABLES `issuebooks` WRITE;
/*!40000 ALTER TABLE `issuebooks` DISABLE KEYS */;
INSERT INTO `issuebooks` VALUES (1,1,1,'2026-06-01','2026-06-15','Issued'),(2,2,2,'2026-06-02','2026-06-16','Issued'),(3,3,3,'2026-06-03','2026-06-17','Issued'),(4,4,4,'2026-06-04','2026-06-18','Issued'),(5,5,5,'2026-06-05','2026-06-19','Issued'),(6,6,6,'2026-06-06','2026-06-20','Issued'),(7,7,7,'2026-06-07','2026-06-21','Issued'),(8,8,8,'2026-06-08','2026-06-22','Issued'),(9,9,9,'2026-06-09','2026-06-23','Issued'),(10,10,10,'2026-06-10','2026-06-24','Issued');
/*!40000 ALTER TABLE `issuebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Rahul Sharma','BSc IT','rahul@gmail.com','2026-06-12 10:04:39'),(2,'Priya Patil','BSc IT','priya@gmail.com','2026-06-12 10:04:39'),(3,'Amit Kumar','BCA','amit@gmail.com','2026-06-12 10:04:39'),(4,'Sneha Joshi','BSc CS','sneha@gmail.com','2026-06-12 10:04:39'),(5,'Rohit Verma','BSc IT','rohit@gmail.com','2026-06-12 10:04:39'),(6,'Neha Singh','BCA','neha@gmail.com','2026-06-12 10:04:39'),(7,'Karan Mehta','BSc IT','karan@gmail.com','2026-06-12 10:04:39'),(8,'Pooja Desai','BSc CS','pooja@gmail.com','2026-06-12 10:04:39'),(9,'Vikas Gupta','BCA','vikas@gmail.com','2026-06-12 10:04:39'),(10,'Anjali Nair','BSc IT','anjali@gmail.com','2026-06-12 10:04:39'),(11,'Arjun Patil','BSc IT','arjun@gmail.com','2026-06-12 10:04:39'),(12,'Komal Shah','BCA','komal@gmail.com','2026-06-12 10:04:39'),(13,'Nitin Rao','BSc CS','nitin@gmail.com','2026-06-12 10:04:39'),(14,'Meera Kulkarni','BSc IT','meera@gmail.com','2026-06-12 10:04:39'),(15,'Yash More','BCA','yash@gmail.com','2026-06-12 10:04:39'),(16,'Riya Jain','BSc IT','riya@gmail.com','2026-06-12 10:04:39'),(17,'Sahil Khan','BSc CS','sahil@gmail.com','2026-06-12 10:04:39'),(18,'Tanvi Gupta','BCA','tanvi@gmail.com','2026-06-12 10:04:39'),(19,'Harsh Patel','BSc IT','harsh@gmail.com','2026-06-12 10:04:39'),(20,'Aarti Singh','BSc CS','aarti@gmail.com','2026-06-12 10:04:39'),(21,'Aditya Joshi','BCA','aditya@gmail.com','2026-06-12 10:04:39'),(22,'Kavya Sharma','BSc IT','kavya@gmail.com','2026-06-12 10:04:39'),(23,'Manav Shah','BSc CS','manav@gmail.com','2026-06-12 10:04:39'),(24,'Ishita Verma','BCA','ishita@gmail.com','2026-06-12 10:04:39'),(25,'Deepak Yadav','BSc IT','deepak@gmail.com','2026-06-12 10:04:39');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-17 13:26:34
