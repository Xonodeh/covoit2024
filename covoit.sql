-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: covoit2024
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CovoitUser`
--

DROP TABLE IF EXISTS `CovoitUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CovoitUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `mdp_Clair` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CovoitUser`
--

LOCK TABLES `CovoitUser` WRITE;
/*!40000 ALTER TABLE `CovoitUser` DISABLE KEYS */;
INSERT INTO `CovoitUser` VALUES (22,'Martin','Paul','0612345678','paul.martin@example.com','$2y$10$Lmp7PVFTN9/OeQ2zOtxFDuYQklqXQ7pN1PQv8PjyAbKqJlJfrTe1i','paul123'),(23,'Leroy','Marie','0623456780','marie.leroy@example.com','$2y$10$IX4FsYxjjvYcQ.Ax7Gb7aeTKwrpBP7.kJ77Az6n/NKEoYsuhvQbhO','marie123'),(24,'Morel','Jean','0623456781','jean.morel@example.com','$2y$10$BDRNi9uD8sMdpJcslTzSOuYFJHVn2bR/WkpjlQOjZMoEySjPGOw3W','jean123'),(25,'Petit','Claire','0623456782','claire.petit@example.com','$2y$10$Rya1gYOax8i4OeZqR3CTzOvDyyJ7k2TkTRvqlXtQ.KsdQZBoWgP3C','claire123'),(26,'Bernard','Luc','0623456783','luc.bernard@example.com','$2y$10$zI3AaHIZtpNbo1c4UyxS1.fQDGJq16mjH4TDNNG8N6X/WmfGCf9rC','luc123'),(27,'Dupont','Julie','0623456784','julie.dupont@example.com','$2y$10$qzD5ZTL3b1QeMjq.nM/03uqVvfhKHcnF.z0AwXJvMwwN5D1Yrg8IW','julie123'),(28,'Gauthier','Pierre','0623456785','pierre.gauthier@example.com','$2y$10$pA9/XoJ/N1aa53HqHcBsD.wyTz3X/PPO9Evruefr05KbKB6m9OlyC','pierre123'),(29,'Girard','Anna','0623456786','anna.girard@example.com','$2y$10$JmdnZhnF5X6zIQow7SvCTuZHHgFQgzh6/TQG3qU02MCOcLfO9ozim','anna123'),(30,'Fournier','Louis','0623456787','louis.fournier@example.com','$2y$10$ztwxtkUj0MwGoSPgX2CiuOkXgrlT7M.57cWBR8CjKZUlJ4Q8vIgVi','louis123'),(31,'Masson','Lucie','0623456788','lucie.masson@example.com','$2y$10$6I08Hs8WWddDKa8wPUH7kuy1vW1OEFrHUuYspbOvEd3RfKqg/GzFi','lucie123'),(32,'Richard','Thomas','0623456789','thomas.richard@example.com','$2y$10$tPP4J9XcVRuXBB4VzNeWpue5IDIZdpsRXbLpzANnT9rsHNTuWiFmK','thomas123'),(33,'Roux','Emilie','0612345671','emilie.roux@example.com','$2y$10$uNHR8xbAaQYP3pg7zCZ0Ve2PV0hSahWjPzyeE6FnlBMmIHcq5N12a','emilie123'),(34,'Blanc','Vincent','0612345672','vincent.blanc@example.com','$2y$10$9Sz4eWl9ZXZ0Fih.J7fNJeCBOTivNmowzzbb0W1/GeipmtyLKqofS','vincent123'),(35,'Dupuis','Laura','0612345673','laura.dupuis@example.com','$2y$10$Tib7yWnMCco3ZGAyfb1HtulAbFm8lAh5WkvxCGDK8ep8D1owhHYN.','laura123'),(36,'Perrin','Olivier','0612345674','olivier.perrin@example.com','$2y$10$T4XBmJPS4B6SG5hmpJcPQOf5QfbrbcF7OshN3Ib56nMK.kvwbMSAK','olivier123'),(37,'Muller','Alice','0612345675','alice.muller@example.com','$2y$10$.IZHd8R5I1Syf/XPlAJuCeJgOmEGEAP/mRIvrlE54zx8h4naYUMd6','alice123'),(38,'Fabre','Antoine','0612345676','antoine.fabre@example.com','$2y$10$RLVf3UyRxmkAsx.I1OOb8u7CjTfcsmfzPSZt/DwgjTReJrruxuvtG','antoine123'),(39,'Bonnet','Sophie','0612345677','sophie.bonnet@example.com','$2y$10$n9dgnuhUYN0IYvI7yTCkwuAowPxYyV9Vtz2edMTXY9aOGqPyGpg0S','sophie123'),(40,'Granger','Julien','0612345678','julien.granger@example.com','$2y$10$PFAO41QbmCXYEOA4TbpYb.0f.xB9YPrhlzYZyUCN5RSy.4FKiS6W.','julien123'),(41,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$ZtfFQ35YLfiZo/8RWNitTef8vdP2Z5V2gRIE3b5./47FuYQrFb9yW','testmdp'),(42,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$xiNg2giR2JdyZ8s2FImwfu2VFmJrYsz4cGgzC6l/Ff2cXme2t8lya','testmdp'),(43,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$zcfs73kJsdTRM.4Hvf9SoeEfyuLhhN9bEHv.mGk8osTF7mtEALkAS','testmdppp'),(44,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$4aPm7zOjg8.fBsFvMw6weO1UNluOcCxXx4NMyCQFpDRXq7MQAha7e','testmdppp'),(45,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$xY5pY4d/0lnBU07lyQPouu.SXmclGBN8L2unEsZUfeHRhR57VXSmG','testmdppp'),(46,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$SFoOp0zOFZdY9/XwmQ8/DOHWNNRb3OzHFj6cON0GLROlyBfnaTZwq','testmdppp'),(47,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$43OE6FVboK5bnVRdE1jHveQZhPfkcDOq5aMGpV/3zA/XeghWLo3DG','testmdppp'),(48,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$EGJfGr3dvDfOHwetGUc5Ku/PwVlVZzC7kI0/VY9QZUjqwpZ8OEExK','testmdppp'),(49,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$HJY6UY/pIpsKsZeA8.UdXOC0m8bfLkV3zHxbxzY6fwu0pKwCaiV9y','testmdppp'),(50,'Haddadi','Nael','0647916126','test@mail.com','$2y$10$VgWC5K2R89IrKDHU5IjLXOVIR86cNMU5rKVM6hiDiASTOg6eNzLwy','testmdppp');
/*!40000 ALTER TABLE `CovoitUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OffreCovoit`
--

DROP TABLE IF EXISTS `OffreCovoit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OffreCovoit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` enum('lundi','mardi','mercredi','jeudi','vendredi') NOT NULL,
  `heure` time NOT NULL,
  `date` date NOT NULL,
  `lieu` varchar(40) NOT NULL,
  `chauffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chauffeur` (`chauffeur`),
  CONSTRAINT `OffreCovoit_ibfk_1` FOREIGN KEY (`chauffeur`) REFERENCES `CovoitUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OffreCovoit`
--

LOCK TABLES `OffreCovoit` WRITE;
/*!40000 ALTER TABLE `OffreCovoit` DISABLE KEYS */;
/*!40000 ALTER TABLE `OffreCovoit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 10:15:12
