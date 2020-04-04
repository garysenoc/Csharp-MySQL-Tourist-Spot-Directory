-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_touristspot
--

CREATE DATABASE IF NOT EXISTS db_touristspot;
USE db_touristspot;

--
-- Definition of table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `con` varchar(45) NOT NULL,
  `fb` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `ins` varchar(45) NOT NULL,
  `text` varchar(45) NOT NULL,
  `img` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

/*!40000 ALTER TABLE `about` DISABLE KEYS */;
/*!40000 ALTER TABLE `about` ENABLE KEYS */;


--
-- Definition of table `directory`
--

DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `ba` varchar(200) DEFAULT NULL,
  `cla` varchar(200) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL,
  `con` varchar(200) DEFAULT NULL,
  `de` varchar(200) DEFAULT NULL,
  `lo` varchar(200) DEFAULT NULL,
  `history` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `pic` blob,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory`
--

/*!40000 ALTER TABLE `directory` DISABLE KEYS */;
INSERT INTO `directory` (`id`,`name`,`type`,`ba`,`cla`,`cate`,`con`,`de`,`lo`,`history`,`sign`,`pic`,`date`) VALUES 
 (1,'Butterfly Garden','NATURE','Nature','POTENTIAL','Sta. Monica','Near Mitra Road','CIRCUIT 1','','One of the oldest tourist destination in the ','no',0x323032302D30342D30342031333A32343A3130,'2020-04-04 13:24:10');
/*!40000 ALTER TABLE `directory` ENABLE KEYS */;


--
-- Definition of table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `event` varchar(45) NOT NULL,
  `who` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` (`id`,`name`,`event`,`who`,`date`) VALUES 
 (1,'gary senoc','ADD NEW TOURISPOT','Select Item First','2020-04-04 13:15:12'),
 (2,'gary senoc','VIEW DETAILS','Select Item First','2020-04-04 13:15:13'),
 (3,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:15:24'),
 (4,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:15:49'),
 (5,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:15:54'),
 (6,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:16:03'),
 (7,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:17:23'),
 (8,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:17:25'),
 (9,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:17:33'),
 (10,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:18:12'),
 (11,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:18:15'),
 (12,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:18:21'),
 (13,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:18:22'),
 (14,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:19:01');
INSERT INTO `history` (`id`,`name`,`event`,`who`,`date`) VALUES 
 (15,'gary senoc','VIEW DETAILS','Select Item First','2020-04-04 13:23:22'),
 (16,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:23:26'),
 (17,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:23:29'),
 (18,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:23:30'),
 (19,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:23:44'),
 (20,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:23:52'),
 (21,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:23:55'),
 (22,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:23:56'),
 (23,'gary senoc','UPDATE TOURISPOT','Butterfly Garden','2020-04-04 13:24:11'),
 (24,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:24:16'),
 (25,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:24:17'),
 (26,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:24:26'),
 (27,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:24:27'),
 (28,'gary senoc','VIEW DETAILS','Butterfly Garden','2020-04-04 13:24:27');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `Administrator` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `add` varchar(45) NOT NULL,
  `seq` varchar(45) NOT NULL,
  `ans` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `outtime` varchar(45) NOT NULL,
  `intime` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `profilepic` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`user`,`pass`,`Administrator`,`fname`,`lname`,`gender`,`age`,`add`,`seq`,`ans`,`contact`,`outtime`,`intime`,`status`,`profilepic`) VALUES 
 (1,'admin','admin','user','gary','senoc','male','18','Brgy Sta. Monica','','','09098429227','2020-04-04 13:25:15','2020-04-04 13:26:16','Active','');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atrac` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `mname` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `con` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `pro` varchar(200) DEFAULT NULL,
  `gen` varchar(200) DEFAULT NULL,
  `stat` varchar(200) DEFAULT NULL,
  `de` varchar(200) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personel`
--

/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` (`id`,`atrac`,`fname`,`lname`,`mname`,`address`,`con`,`mail`,`age`,`pro`,`gen`,`stat`,`de`,`about`,`image`) VALUES 
 (1,'Butterfly Garden','Lea','Franco','Bacones','San Jose PPC','0912391230','leafranco@gmail.com','18','Economics','Male ','Single','no','Graduated BS in Business Management Major in Economics',0x323032302D30342D30342031333A32343A3131);
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
