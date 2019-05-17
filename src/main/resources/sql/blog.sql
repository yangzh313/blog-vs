-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `t_blog`
--

DROP TABLE IF EXISTS `t_blog`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blog` (
  `id`          smallint     NOT NULL AUTO_INCREMENT,
  `title`       varchar(60)  NOT NULL,
  `summary`     varchar(160) NOT NULL,
  `releaseDate` timestamp    NOT NULL,
  `clickHit`    smallint     NOT NULL,
  `content`     mediumtext   NOT NULL,
  `typeId`      tinyint      NOT NULL,
  `keyWord`     varchar(60)           DEFAULT NULL,
  `state`       tinyint      NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1585
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blog`
--

LOCK TABLES `t_blog` WRITE;
/*!40000 ALTER TABLE `t_blog`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_blog`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_blogger`
--

DROP TABLE IF EXISTS `t_blogger`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blogger` (
  `id`        tinyint      NOT NULL AUTO_INCREMENT,
  `userName`  varchar(20)  NOT NULL,
  `password`  char(32)     NOT NULL,
  `salt`      char(32)     NOT NULL,
  `profile`   text         NOT NULL,
  `nickName`  varchar(20)  NOT NULL,
  `sign`      varchar(40)  NOT NULL,
  `imageName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blogger`
--

LOCK TABLES `t_blogger` WRITE;
/*!40000 ALTER TABLE `t_blogger`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_blogger`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_blogtype`
--

DROP TABLE IF EXISTS `t_blogtype`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blogtype` (
  `id`       tinyint     NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  `orderNo`  tinyint     NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blogtype`
--

LOCK TABLES `t_blogtype` WRITE;
/*!40000 ALTER TABLE `t_blogtype`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_blogtype`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id`          mediumint     NOT NULL AUTO_INCREMENT,
  `userIp`      INT UNSIGNED  NOT NULL,
  `userName`    varchar(20)   NOT NULL,
  `blogId`      mediumint     NOT NULL,
  `content`     varchar(1000) NOT NULL,
  `commentDate` timestamp     NOT NULL,
  `state`       tinyint       NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comment`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_link`
--

DROP TABLE IF EXISTS `t_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_link` (
  `id`       tinyint      NOT NULL AUTO_INCREMENT,
  `linkName` varchar(30)  NOT NULL,
  `linkUrl`  varchar(200) NOT NULL,
  `orderNo`  tinyint      NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_link`
--

LOCK TABLES `t_link` WRITE;
/*!40000 ALTER TABLE `t_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message` (
  `id`               mediumint     NOT NULL AUTO_INCREMENT,
  `userIp`           INT UNSIGNED  NOT NULL,
  `userName`         varchar(20)   NOT NULL,
  `content`          varchar(1000) NOT NULL,
  `leaveMessageDate` timestamp     NOT NULL,
  `state`            tinyint       NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message`
  ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 16:44:34
