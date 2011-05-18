-- MySQL dump 10.13  Distrib 5.1.46, for slackware-linux-gnu (i486)
--
-- Host: localhost    Database: asteriskdb
-- ------------------------------------------------------
-- Server version	5.1.46-log

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
-- Current Database: `asteriskdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `asteriskdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `asteriskdb`;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr` (
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `src` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dst` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dcontext` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channel` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dstchannel` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastapp` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastdata` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uniqueid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userfield` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  KEY `uniqueid` (`uniqueid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemessages`
--

DROP TABLE IF EXISTS `voicemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicemessages` (
  `msgnum` int(11) unsigned DEFAULT NULL,
  `dir` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `macrocontext` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callerid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origtime` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailboxuser` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailboxcontext` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recording` longblob,
  KEY `msgnum` (`msgnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Voicemail Messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemessages`
--

LOCK TABLES `voicemessages` WRITE;
/*!40000 ALTER TABLE `voicemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `voicemessages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-18 19:44:39
