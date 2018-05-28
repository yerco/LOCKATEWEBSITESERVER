-- MySQL dump 10.13  Distrib 5.7.20, for osx10.13 (x86_64)
--
-- Host: localhost    Database: lockate
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Current Database: `lockate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lockate` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lockate`;

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `user_gateway_sensors` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES (1,'uno','uno','uno@example.com','uno@example.com',1,NULL,'$2y$13$DHkv1VI3aYQtGPvPrkR1DO5Gr8d3v2M7MhWje8hjlcRzyqxubKKgq','2018-05-01 13:37:59',NULL,NULL,'a:0:{}','{\"devices\":[{\"gateway_id\":1,\"nodes\":[1]}]}');
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lockate_gateway`
--

DROP TABLE IF EXISTS `lockate_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lockate_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_id_real` int(11) NOT NULL,
  `gateway_timestamp` datetime NOT NULL,
  `gateway_summary` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockate_gateway`
--

LOCK TABLES `lockate_gateway` WRITE;
/*!40000 ALTER TABLE `lockate_gateway` DISABLE KEYS */;
INSERT INTO `lockate_gateway` VALUES (349,1,'2018-05-01 13:34:13','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(350,1,'2018-05-01 13:34:24','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(351,1,'2018-05-01 13:34:36','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(352,1,'2018-05-01 13:34:47','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(353,1,'2018-05-01 13:34:58','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(354,1,'2018-05-01 13:35:09','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(355,1,'2018-05-01 13:35:20','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(356,1,'2018-05-01 13:35:32','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(357,1,'2018-05-01 13:35:44','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(358,1,'2018-05-01 13:35:55','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(359,1,'2018-05-01 13:36:18','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(360,1,'2018-05-01 13:36:24','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(361,1,'2018-05-01 13:36:30','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(362,1,'2018-05-01 13:36:36','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(363,1,'2018-05-01 13:36:42','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(364,1,'2018-05-01 13:36:48','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(365,1,'2018-05-01 13:36:54','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(366,1,'2018-05-01 13:37:00','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(367,1,'2018-05-01 13:37:06','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(368,1,'2018-05-01 13:37:12','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(369,1,'2018-05-01 13:37:34','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(370,1,'2018-05-01 13:37:40','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(371,1,'2018-05-01 13:37:46','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(372,1,'2018-05-01 13:37:52','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}'),(373,1,'2018-05-01 13:37:58','{\"device\":\"RPI\",\"name\":\"naifo_gateway\",\"location\":\"penalolen\"}');
/*!40000 ALTER TABLE `lockate_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lockate_nodes`
--

DROP TABLE IF EXISTS `lockate_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lockate_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_id` int(11) DEFAULT NULL,
  `node_id_real` int(11) NOT NULL,
  `node_timestamp` datetime NOT NULL,
  `node_summary` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_BD81F8EC577F8E00` (`gateway_id`),
  CONSTRAINT `FK_BD81F8EC577F8E00` FOREIGN KEY (`gateway_id`) REFERENCES `lockate_gateway` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockate_nodes`
--

LOCK TABLES `lockate_nodes` WRITE;
/*!40000 ALTER TABLE `lockate_nodes` DISABLE KEYS */;
INSERT INTO `lockate_nodes` VALUES (406,349,1,'2018-05-01 13:34:13','{\"phones_around_now\":61,\"phones_around_hour_mean\":52,\"phones_detected_hour\":30,\"phones_detected_today\":19,\"name\":\"naifo_node\"}'),(407,350,1,'2018-05-01 13:34:24','{\"phones_around_now\":39,\"phones_around_hour_mean\":69,\"phones_detected_hour\":40,\"phones_detected_today\":41,\"name\":\"naifo_node\"}'),(408,351,1,'2018-05-01 13:34:36','{\"phones_around_now\":43,\"phones_around_hour_mean\":21,\"phones_detected_hour\":50,\"phones_detected_today\":55,\"name\":\"naifo_node\"}'),(409,352,1,'2018-05-01 13:34:47','{\"phones_around_now\":72,\"phones_around_hour_mean\":73,\"phones_detected_hour\":76,\"phones_detected_today\":68,\"name\":\"naifo_node\"}'),(410,353,1,'2018-05-01 13:34:58','{\"phones_around_now\":8,\"phones_around_hour_mean\":82,\"phones_detected_hour\":21,\"phones_detected_today\":29,\"name\":\"naifo_node\"}'),(411,354,1,'2018-05-01 13:35:09','{\"phones_around_now\":19,\"phones_around_hour_mean\":76,\"phones_detected_hour\":31,\"phones_detected_today\":68,\"name\":\"naifo_node\"}'),(412,355,1,'2018-05-01 13:35:20','{\"phones_around_now\":86,\"phones_around_hour_mean\":2,\"phones_detected_hour\":72,\"phones_detected_today\":44,\"name\":\"naifo_node\"}'),(413,356,1,'2018-05-01 13:35:32','{\"phones_around_now\":89,\"phones_around_hour_mean\":79,\"phones_detected_hour\":80,\"phones_detected_today\":30,\"name\":\"naifo_node\"}'),(414,357,1,'2018-05-01 13:35:44','{\"phones_around_now\":33,\"phones_around_hour_mean\":95,\"phones_detected_hour\":89,\"phones_detected_today\":94,\"name\":\"naifo_node\"}'),(415,358,1,'2018-05-01 13:35:55','{\"phones_around_now\":16,\"phones_around_hour_mean\":90,\"phones_detected_hour\":66,\"phones_detected_today\":38,\"name\":\"naifo_node\"}'),(416,359,1,'2018-05-01 13:36:18','{\"phones_around_now\":88,\"phones_around_hour_mean\":85,\"phones_detected_hour\":92,\"phones_detected_today\":5,\"name\":\"naifo_node\"}'),(417,360,1,'2018-05-01 13:36:24','{\"phones_around_now\":84,\"phones_around_hour_mean\":40,\"phones_detected_hour\":57,\"phones_detected_today\":77,\"name\":\"naifo_node\"}'),(418,361,1,'2018-05-01 13:36:30','{\"phones_around_now\":32,\"phones_around_hour_mean\":86,\"phones_detected_hour\":91,\"phones_detected_today\":7,\"name\":\"naifo_node\"}'),(419,362,1,'2018-05-01 13:36:36','{\"phones_around_now\":16,\"phones_around_hour_mean\":56,\"phones_detected_hour\":68,\"phones_detected_today\":98,\"name\":\"naifo_node\"}'),(420,363,1,'2018-05-01 13:36:42','{\"phones_around_now\":43,\"phones_around_hour_mean\":6,\"phones_detected_hour\":3,\"phones_detected_today\":17,\"name\":\"naifo_node\"}'),(421,364,1,'2018-05-01 13:36:48','{\"phones_around_now\":62,\"phones_around_hour_mean\":12,\"phones_detected_hour\":19,\"phones_detected_today\":75,\"name\":\"naifo_node\"}'),(422,365,1,'2018-05-01 13:36:54','{\"phones_around_now\":47,\"phones_around_hour_mean\":96,\"phones_detected_hour\":78,\"phones_detected_today\":61,\"name\":\"naifo_node\"}'),(423,366,1,'2018-05-01 13:37:00','{\"phones_around_now\":86,\"phones_around_hour_mean\":22,\"phones_detected_hour\":17,\"phones_detected_today\":28,\"name\":\"naifo_node\"}'),(424,367,1,'2018-05-01 13:37:06','{\"phones_around_now\":87,\"phones_around_hour_mean\":3,\"phones_detected_hour\":45,\"phones_detected_today\":18,\"name\":\"naifo_node\"}'),(425,368,1,'2018-05-01 13:37:12','{\"phones_around_now\":82,\"phones_around_hour_mean\":56,\"phones_detected_hour\":100,\"phones_detected_today\":27,\"name\":\"naifo_node\"}'),(426,369,1,'2018-05-01 13:37:34','{\"phones_around_now\":33,\"phones_around_hour_mean\":87,\"phones_detected_hour\":6,\"phones_detected_today\":90,\"name\":\"naifo_node\"}'),(427,370,1,'2018-05-01 13:37:40','{\"phones_around_now\":77,\"phones_around_hour_mean\":3,\"phones_detected_hour\":48,\"phones_detected_today\":74,\"name\":\"naifo_node\"}'),(428,371,1,'2018-05-01 13:37:46','{\"phones_around_now\":11,\"phones_around_hour_mean\":79,\"phones_detected_hour\":59,\"phones_detected_today\":70,\"name\":\"naifo_node\"}'),(429,372,1,'2018-05-01 13:37:52','{\"phones_around_now\":61,\"phones_around_hour_mean\":83,\"phones_detected_hour\":15,\"phones_detected_today\":72,\"name\":\"naifo_node\"}'),(430,373,1,'2018-05-01 13:37:58','{\"phones_around_now\":75,\"phones_around_hour_mean\":34,\"phones_detected_hour\":66,\"phones_detected_today\":16,\"name\":\"naifo_node\"}');
/*!40000 ALTER TABLE `lockate_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lockate_sensor`
--

DROP TABLE IF EXISTS `lockate_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lockate_sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `sensor_id` int(11) NOT NULL,
  `sensor_description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `input` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `output` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_A191BB29460D9FD7` (`node_id`),
  CONSTRAINT `FK_A191BB29460D9FD7` FOREIGN KEY (`node_id`) REFERENCES `lockate_nodes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockate_sensor`
--

LOCK TABLES `lockate_sensor` WRITE;
/*!40000 ALTER TABLE `lockate_sensor` DISABLE KEYS */;
INSERT INTO `lockate_sensor` VALUES (441,406,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.695338543610106,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.177411954437975,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(442,407,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.154403488188105,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.427862727069375,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(443,408,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.05778786155998,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.954660239062203,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(444,409,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.336785034347237,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.65219971461733,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(445,410,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.983883961964704,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.70735221063677,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(446,411,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.584949351771,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.290724492842642,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(447,412,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.227615737297914,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.794235465241297,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(448,413,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.172459886204486,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.41786019378441,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(449,414,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.533157729748517,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":24.510056428662768,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(450,415,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.22823070988801,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.6133189421518,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(451,416,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.402049696569968,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.455769160992684,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(452,417,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.625028503287236,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.01771173499732,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(453,418,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.36683561026559,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.747343806608217,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(454,419,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.512172301881076,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.37154166241564,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(455,420,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.29127275571966,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.859585039006642,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(456,421,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.834937088864283,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":24.34733516730207,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(457,422,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.342782541922926,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":24.691541289911267,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(458,423,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.776989068342136,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.09106284151287,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(459,424,1,'{\"name\":\"Atheros\"}','[{\"rssi\":25.180232094040747,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.489039346369598,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(460,425,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.149339562596545,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":24.637489263273476,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(461,426,1,'{\"name\":\"Atheros\"}','[{\"rssi\":24.450320531317907,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":24.81668875610813,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(462,427,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.436865557641593,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.650917488295473,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(463,428,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.233044153581506,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":25.04421256204986,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(464,429,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.797867971896608,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.78814460170147,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}'),(465,430,1,'{\"name\":\"Atheros\"}','[{\"rssi\":26.000693067267044,\"company\":\"ARRIS Group, Inc.\",\"mac\":\"54:65:de:60:d0:b0\"},{\"rssi\":26.532936787423456,\"company\":\"HUAWEI TECHNOLOGIES CO.,LTD\",\"mac\":\"7c:7d:3d:ab:c1:92\"}]','{}');
/*!40000 ALTER TABLE `lockate_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20180322145241'),('20180324101225');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 15:40:34
