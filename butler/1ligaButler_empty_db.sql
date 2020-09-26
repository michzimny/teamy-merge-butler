/*
SQLyog Community v12.2.6 (64 bit)
MySQL - 5.7.15-log : Database - 1butlerrr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`1butlerrr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `1butlerrr`;

/*Table structure for table `addons` */

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `place` int(6) NOT NULL DEFAULT '0',
  `mastr` int(6) DEFAULT '0',
  `congr` int(6) DEFAULT '0',
  `descr` varchar(20) DEFAULT NULL,
  `prize` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `addons` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `fullname` varchar(100) DEFAULT NULL,
  `shortname` varchar(12) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `teamcnt` int(6) DEFAULT '0',
  `roundcnt` int(6) DEFAULT '0',
  `segmentsperround` int(6) DEFAULT '1',
  `boardspersegment` int(6) DEFAULT '0',
  `blok` tinyint(1) NOT NULL DEFAULT '0',
  `rnd` int(6) NOT NULL DEFAULT '0',
  `segm` int(6) NOT NULL DEFAULT '0',
  `imponly` tinyint(2) NOT NULL DEFAULT '0',
  `butler` tinyint(2) NOT NULL DEFAULT '2',
  `logoh` text,
  `plink` text,
  `plogo` text,
  `favicon` varchar(30) DEFAULT NULL,
  `wincp` varchar(12) DEFAULT 'latin1',
  `wwwcp` varchar(15) DEFAULT 'UTF-8',
  `wwwms` varchar(15) DEFAULT 'utf8',
  `oldbutler` varchar(20) DEFAULT NULL,
  `butjoin` int(6) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`fullname`,`shortname`,`link`,`teamcnt`,`roundcnt`,`segmentsperround`,`boardspersegment`,`blok`,`rnd`,`segm`,`imponly`,`butler`,`logoh`,`plink`,`plogo`,`favicon`,`wincp`,`wwwcp`,`wwwms`,`oldbutler`,`butjoin`) values 
('I liga DMP 2016/17 - Round Robin','b1rr','',32,15,2,12,1,0,0,0,8,'<span id=\"logo\"></span>\r\n<script type=\"text/javascript\">loadIt(\'b1rrlogo.html\',\'logo\');</script>','<a href=\"http://www.msc.com.pl/cezar/?mycl=1&p=21&r=:LINK:\" target=\"_blank\">\r\n',NULL,NULL,'cp1250','UTF-8','utf8',NULL,0);

/*Table structure for table `boards` */

DROP TABLE IF EXISTS `boards`;

CREATE TABLE `boards` (
  `rnd` int(6) NOT NULL DEFAULT '0',
  `segment` int(6) NOT NULL DEFAULT '0',
  `brd` int(6) NOT NULL DEFAULT '0',
  `bno` int(6) DEFAULT '0',
  `pbn` text,
  `html` mediumtext,
  UNIQUE KEY `ruse` (`rnd`,`segment`,`brd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `boards` */

insert  into `boards`(`rnd`,`segment`,`brd`,`bno`,`pbn`,`html`) values 
(1,1,1,0,NULL,NULL),
(1,1,2,0,NULL,NULL),
(1,1,3,0,NULL,NULL),
(1,1,4,0,NULL,NULL),
(1,1,5,0,NULL,NULL),
(1,1,6,0,NULL,NULL),
(1,1,7,0,NULL,NULL),
(1,1,8,0,NULL,NULL),
(1,1,9,0,NULL,NULL),
(1,1,10,0,NULL,NULL),
(1,1,11,0,NULL,NULL),
(1,1,12,0,NULL,NULL),
(1,2,1,0,NULL,NULL),
(1,2,2,0,NULL,NULL),
(1,2,3,0,NULL,NULL),
(1,2,4,0,NULL,NULL),
(1,2,5,0,NULL,NULL),
(1,2,6,0,NULL,NULL),
(1,2,7,0,NULL,NULL),
(1,2,8,0,NULL,NULL),
(1,2,9,0,NULL,NULL),
(1,2,10,0,NULL,NULL),
(1,2,11,0,NULL,NULL),
(1,2,12,0,NULL,NULL),
(2,1,1,0,NULL,NULL),
(2,1,2,0,NULL,NULL),
(2,1,3,0,NULL,NULL),
(2,1,4,0,NULL,NULL),
(2,1,5,0,NULL,NULL),
(2,1,6,0,NULL,NULL),
(2,1,7,0,NULL,NULL),
(2,1,8,0,NULL,NULL),
(2,1,9,0,NULL,NULL),
(2,1,10,0,NULL,NULL),
(2,1,11,0,NULL,NULL),
(2,1,12,0,NULL,NULL),
(2,2,1,0,NULL,NULL),
(2,2,2,0,NULL,NULL),
(2,2,3,0,NULL,NULL),
(2,2,4,0,NULL,NULL),
(2,2,5,0,NULL,NULL),
(2,2,6,0,NULL,NULL),
(2,2,7,0,NULL,NULL),
(2,2,8,0,NULL,NULL),
(2,2,9,0,NULL,NULL),
(2,2,10,0,NULL,NULL),
(2,2,11,0,NULL,NULL),
(2,2,12,0,NULL,NULL),
(3,1,1,0,NULL,NULL),
(3,1,2,0,NULL,NULL),
(3,1,3,0,NULL,NULL),
(3,1,4,0,NULL,NULL),
(3,1,5,0,NULL,NULL),
(3,1,6,0,NULL,NULL),
(3,1,7,0,NULL,NULL),
(3,1,8,0,NULL,NULL),
(3,1,9,0,NULL,NULL),
(3,1,10,0,NULL,NULL),
(3,1,11,0,NULL,NULL),
(3,1,12,0,NULL,NULL),
(3,2,1,0,NULL,NULL),
(3,2,2,0,NULL,NULL),
(3,2,3,0,NULL,NULL),
(3,2,4,0,NULL,NULL),
(3,2,5,0,NULL,NULL),
(3,2,6,0,NULL,NULL),
(3,2,7,0,NULL,NULL),
(3,2,8,0,NULL,NULL),
(3,2,9,0,NULL,NULL),
(3,2,10,0,NULL,NULL),
(3,2,11,0,NULL,NULL),
(3,2,12,0,NULL,NULL),
(4,1,1,0,NULL,NULL),
(4,1,2,0,NULL,NULL),
(4,1,3,0,NULL,NULL),
(4,1,4,0,NULL,NULL),
(4,1,5,0,NULL,NULL),
(4,1,6,0,NULL,NULL),
(4,1,7,0,NULL,NULL),
(4,1,8,0,NULL,NULL),
(4,1,9,0,NULL,NULL),
(4,1,10,0,NULL,NULL),
(4,1,11,0,NULL,NULL),
(4,1,12,0,NULL,NULL),
(4,2,1,0,NULL,NULL),
(4,2,2,0,NULL,NULL),
(4,2,3,0,NULL,NULL),
(4,2,4,0,NULL,NULL),
(4,2,5,0,NULL,NULL),
(4,2,6,0,NULL,NULL),
(4,2,7,0,NULL,NULL),
(4,2,8,0,NULL,NULL),
(4,2,9,0,NULL,NULL),
(4,2,10,0,NULL,NULL),
(4,2,11,0,NULL,NULL),
(4,2,12,0,NULL,NULL),
(5,1,1,0,NULL,NULL),
(5,1,2,0,NULL,NULL),
(5,1,3,0,NULL,NULL),
(5,1,4,0,NULL,NULL),
(5,1,5,0,NULL,NULL),
(5,1,6,0,NULL,NULL),
(5,1,7,0,NULL,NULL),
(5,1,8,0,NULL,NULL),
(5,1,9,0,NULL,NULL),
(5,1,10,0,NULL,NULL),
(5,1,11,0,NULL,NULL),
(5,1,12,0,NULL,NULL),
(5,2,1,0,NULL,NULL),
(5,2,2,0,NULL,NULL),
(5,2,3,0,NULL,NULL),
(5,2,4,0,NULL,NULL),
(5,2,5,0,NULL,NULL),
(5,2,6,0,NULL,NULL),
(5,2,7,0,NULL,NULL),
(5,2,8,0,NULL,NULL),
(5,2,9,0,NULL,NULL),
(5,2,10,0,NULL,NULL),
(5,2,11,0,NULL,NULL),
(5,2,12,0,NULL,NULL),
(6,1,1,0,NULL,NULL),
(6,1,2,0,NULL,NULL),
(6,1,3,0,NULL,NULL),
(6,1,4,0,NULL,NULL),
(6,1,5,0,NULL,NULL),
(6,1,6,0,NULL,NULL),
(6,1,7,0,NULL,NULL),
(6,1,8,0,NULL,NULL),
(6,1,9,0,NULL,NULL),
(6,1,10,0,NULL,NULL),
(6,1,11,0,NULL,NULL),
(6,1,12,0,NULL,NULL),
(6,2,1,0,NULL,NULL),
(6,2,2,0,NULL,NULL),
(6,2,3,0,NULL,NULL),
(6,2,4,0,NULL,NULL),
(6,2,5,0,NULL,NULL),
(6,2,6,0,NULL,NULL),
(6,2,7,0,NULL,NULL),
(6,2,8,0,NULL,NULL),
(6,2,9,0,NULL,NULL),
(6,2,10,0,NULL,NULL),
(6,2,11,0,NULL,NULL),
(6,2,12,0,NULL,NULL),
(7,1,1,0,NULL,NULL),
(7,1,2,0,NULL,NULL),
(7,1,3,0,NULL,NULL),
(7,1,4,0,NULL,NULL),
(7,1,5,0,NULL,NULL),
(7,1,6,0,NULL,NULL),
(7,1,7,0,NULL,NULL),
(7,1,8,0,NULL,NULL),
(7,1,9,0,NULL,NULL),
(7,1,10,0,NULL,NULL),
(7,1,11,0,NULL,NULL),
(7,1,12,0,NULL,NULL),
(7,2,1,0,NULL,NULL),
(7,2,2,0,NULL,NULL),
(7,2,3,0,NULL,NULL),
(7,2,4,0,NULL,NULL),
(7,2,5,0,NULL,NULL),
(7,2,6,0,NULL,NULL),
(7,2,7,0,NULL,NULL),
(7,2,8,0,NULL,NULL),
(7,2,9,0,NULL,NULL),
(7,2,10,0,NULL,NULL),
(7,2,11,0,NULL,NULL),
(7,2,12,0,NULL,NULL),
(8,1,1,0,NULL,NULL),
(8,1,2,0,NULL,NULL),
(8,1,3,0,NULL,NULL),
(8,1,4,0,NULL,NULL),
(8,1,5,0,NULL,NULL),
(8,1,6,0,NULL,NULL),
(8,1,7,0,NULL,NULL),
(8,1,8,0,NULL,NULL),
(8,1,9,0,NULL,NULL),
(8,1,10,0,NULL,NULL),
(8,1,11,0,NULL,NULL),
(8,1,12,0,NULL,NULL),
(8,2,1,0,NULL,NULL),
(8,2,2,0,NULL,NULL),
(8,2,3,0,NULL,NULL),
(8,2,4,0,NULL,NULL),
(8,2,5,0,NULL,NULL),
(8,2,6,0,NULL,NULL),
(8,2,7,0,NULL,NULL),
(8,2,8,0,NULL,NULL),
(8,2,9,0,NULL,NULL),
(8,2,10,0,NULL,NULL),
(8,2,11,0,NULL,NULL),
(8,2,12,0,NULL,NULL),
(9,1,1,0,NULL,NULL),
(9,1,2,0,NULL,NULL),
(9,1,3,0,NULL,NULL),
(9,1,4,0,NULL,NULL),
(9,1,5,0,NULL,NULL),
(9,1,6,0,NULL,NULL),
(9,1,7,0,NULL,NULL),
(9,1,8,0,NULL,NULL),
(9,1,9,0,NULL,NULL),
(9,1,10,0,NULL,NULL),
(9,1,11,0,NULL,NULL),
(9,1,12,0,NULL,NULL),
(9,2,1,0,NULL,NULL),
(9,2,2,0,NULL,NULL),
(9,2,3,0,NULL,NULL),
(9,2,4,0,NULL,NULL),
(9,2,5,0,NULL,NULL),
(9,2,6,0,NULL,NULL),
(9,2,7,0,NULL,NULL),
(9,2,8,0,NULL,NULL),
(9,2,9,0,NULL,NULL),
(9,2,10,0,NULL,NULL),
(9,2,11,0,NULL,NULL),
(9,2,12,0,NULL,NULL),
(10,1,1,0,NULL,NULL),
(10,1,2,0,NULL,NULL),
(10,1,3,0,NULL,NULL),
(10,1,4,0,NULL,NULL),
(10,1,5,0,NULL,NULL),
(10,1,6,0,NULL,NULL),
(10,1,7,0,NULL,NULL),
(10,1,8,0,NULL,NULL),
(10,1,9,0,NULL,NULL),
(10,1,10,0,NULL,NULL),
(10,1,11,0,NULL,NULL),
(10,1,12,0,NULL,NULL),
(10,2,1,0,NULL,NULL),
(10,2,2,0,NULL,NULL),
(10,2,3,0,NULL,NULL),
(10,2,4,0,NULL,NULL),
(10,2,5,0,NULL,NULL),
(10,2,6,0,NULL,NULL),
(10,2,7,0,NULL,NULL),
(10,2,8,0,NULL,NULL),
(10,2,9,0,NULL,NULL),
(10,2,10,0,NULL,NULL),
(10,2,11,0,NULL,NULL),
(10,2,12,0,NULL,NULL),
(11,1,1,0,NULL,NULL),
(11,1,2,0,NULL,NULL),
(11,1,3,0,NULL,NULL),
(11,1,4,0,NULL,NULL),
(11,1,5,0,NULL,NULL),
(11,1,6,0,NULL,NULL),
(11,1,7,0,NULL,NULL),
(11,1,8,0,NULL,NULL),
(11,1,9,0,NULL,NULL),
(11,1,10,0,NULL,NULL),
(11,1,11,0,NULL,NULL),
(11,1,12,0,NULL,NULL),
(11,2,1,0,NULL,NULL),
(11,2,2,0,NULL,NULL),
(11,2,3,0,NULL,NULL),
(11,2,4,0,NULL,NULL),
(11,2,5,0,NULL,NULL),
(11,2,6,0,NULL,NULL),
(11,2,7,0,NULL,NULL),
(11,2,8,0,NULL,NULL),
(11,2,9,0,NULL,NULL),
(11,2,10,0,NULL,NULL),
(11,2,11,0,NULL,NULL),
(11,2,12,0,NULL,NULL),
(12,1,1,0,NULL,NULL),
(12,1,2,0,NULL,NULL),
(12,1,3,0,NULL,NULL),
(12,1,4,0,NULL,NULL),
(12,1,5,0,NULL,NULL),
(12,1,6,0,NULL,NULL),
(12,1,7,0,NULL,NULL),
(12,1,8,0,NULL,NULL),
(12,1,9,0,NULL,NULL),
(12,1,10,0,NULL,NULL),
(12,1,11,0,NULL,NULL),
(12,1,12,0,NULL,NULL),
(12,2,1,0,NULL,NULL),
(12,2,2,0,NULL,NULL),
(12,2,3,0,NULL,NULL),
(12,2,4,0,NULL,NULL),
(12,2,5,0,NULL,NULL),
(12,2,6,0,NULL,NULL),
(12,2,7,0,NULL,NULL),
(12,2,8,0,NULL,NULL),
(12,2,9,0,NULL,NULL),
(12,2,10,0,NULL,NULL),
(12,2,11,0,NULL,NULL),
(12,2,12,0,NULL,NULL),
(13,1,1,0,NULL,NULL),
(13,1,2,0,NULL,NULL),
(13,1,3,0,NULL,NULL),
(13,1,4,0,NULL,NULL),
(13,1,5,0,NULL,NULL),
(13,1,6,0,NULL,NULL),
(13,1,7,0,NULL,NULL),
(13,1,8,0,NULL,NULL),
(13,1,9,0,NULL,NULL),
(13,1,10,0,NULL,NULL),
(13,1,11,0,NULL,NULL),
(13,1,12,0,NULL,NULL),
(13,2,1,0,NULL,NULL),
(13,2,2,0,NULL,NULL),
(13,2,3,0,NULL,NULL),
(13,2,4,0,NULL,NULL),
(13,2,5,0,NULL,NULL),
(13,2,6,0,NULL,NULL),
(13,2,7,0,NULL,NULL),
(13,2,8,0,NULL,NULL),
(13,2,9,0,NULL,NULL),
(13,2,10,0,NULL,NULL),
(13,2,11,0,NULL,NULL),
(13,2,12,0,NULL,NULL),
(14,1,1,0,NULL,NULL),
(14,1,2,0,NULL,NULL),
(14,1,3,0,NULL,NULL),
(14,1,4,0,NULL,NULL),
(14,1,5,0,NULL,NULL),
(14,1,6,0,NULL,NULL),
(14,1,7,0,NULL,NULL),
(14,1,8,0,NULL,NULL),
(14,1,9,0,NULL,NULL),
(14,1,10,0,NULL,NULL),
(14,1,11,0,NULL,NULL),
(14,1,12,0,NULL,NULL),
(14,2,1,0,NULL,NULL),
(14,2,2,0,NULL,NULL),
(14,2,3,0,NULL,NULL),
(14,2,4,0,NULL,NULL),
(14,2,5,0,NULL,NULL),
(14,2,6,0,NULL,NULL),
(14,2,7,0,NULL,NULL),
(14,2,8,0,NULL,NULL),
(14,2,9,0,NULL,NULL),
(14,2,10,0,NULL,NULL),
(14,2,11,0,NULL,NULL),
(14,2,12,0,NULL,NULL),
(15,1,1,0,NULL,NULL),
(15,1,2,0,NULL,NULL),
(15,1,3,0,NULL,NULL),
(15,1,4,0,NULL,NULL),
(15,1,5,0,NULL,NULL),
(15,1,6,0,NULL,NULL),
(15,1,7,0,NULL,NULL),
(15,1,8,0,NULL,NULL),
(15,1,9,0,NULL,NULL),
(15,1,10,0,NULL,NULL),
(15,1,11,0,NULL,NULL),
(15,1,12,0,NULL,NULL),
(15,2,1,0,NULL,NULL),
(15,2,2,0,NULL,NULL),
(15,2,3,0,NULL,NULL),
(15,2,4,0,NULL,NULL),
(15,2,5,0,NULL,NULL),
(15,2,6,0,NULL,NULL),
(15,2,7,0,NULL,NULL),
(15,2,8,0,NULL,NULL),
(15,2,9,0,NULL,NULL),
(15,2,10,0,NULL,NULL),
(15,2,11,0,NULL,NULL),
(15,2,12,0,NULL,NULL);

/*Table structure for table `butler` */

DROP TABLE IF EXISTS `butler`;

CREATE TABLE `butler` (
  `id` int(4) NOT NULL DEFAULT '0',
  `simp` decimal(5,2) DEFAULT NULL,
  `bcnt` int(4) NOT NULL DEFAULT '0',
  `seg01_1` decimal(5,2) DEFAULT NULL,
  `seg01_2` decimal(5,2) DEFAULT NULL,
  `seg02_1` decimal(5,2) DEFAULT NULL,
  `seg02_2` decimal(5,2) DEFAULT NULL,
  `seg03_1` decimal(5,2) DEFAULT NULL,
  `seg03_2` decimal(5,2) DEFAULT NULL,
  `seg04_1` decimal(5,2) DEFAULT NULL,
  `seg04_2` decimal(5,2) DEFAULT NULL,
  `seg05_1` decimal(5,2) DEFAULT NULL,
  `seg05_2` decimal(5,2) DEFAULT NULL,
  `seg06_1` decimal(5,2) DEFAULT NULL,
  `seg06_2` decimal(5,2) DEFAULT NULL,
  `seg07_1` decimal(5,2) DEFAULT NULL,
  `seg07_2` decimal(5,2) DEFAULT NULL,
  `seg08_1` decimal(5,2) DEFAULT NULL,
  `seg08_2` decimal(5,2) DEFAULT NULL,
  `seg09_1` decimal(5,2) DEFAULT NULL,
  `seg09_2` decimal(5,2) DEFAULT NULL,
  `seg10_1` decimal(5,2) DEFAULT NULL,
  `seg10_2` decimal(5,2) DEFAULT NULL,
  `seg11_1` decimal(5,2) DEFAULT NULL,
  `seg11_2` decimal(5,2) DEFAULT NULL,
  `seg12_1` decimal(5,2) DEFAULT NULL,
  `seg12_2` decimal(5,2) DEFAULT NULL,
  `seg13_1` decimal(5,2) DEFAULT NULL,
  `seg13_2` decimal(5,2) DEFAULT NULL,
  `seg14_1` decimal(5,2) DEFAULT NULL,
  `seg14_2` decimal(5,2) DEFAULT NULL,
  `seg15_1` decimal(5,2) DEFAULT NULL,
  `seg15_2` decimal(5,2) DEFAULT NULL,
  UNIQUE KEY `zaw` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `butler` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `groupno` int(6) NOT NULL DEFAULT '0',
  `groupname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`groupno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

/*Table structure for table `logoh` */

DROP TABLE IF EXISTS `logoh`;

CREATE TABLE `logoh` (
  `id` int(3) NOT NULL DEFAULT '0',
  `dane` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `logoh` */

insert  into `logoh`(`id`,`dane`) values 
(0,'<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tr>\r\n<td valign=\"center\"><img src=\"images/pzbs.gif\"></td>\r\n<td align=\"center\">\r\n<font size=\"5\">I liga DMP 2016/17</font><br><br>\r\n[<a class=\"zb\" target=\"_top\" href=\"../n/nrrleaderb.html\">&nbsp;grupa N&nbsp;</a>]&nbsp;\r\n[<a class=\"zb\" target=\"_top\" href=\"../s/srrleaderb.html\">&nbsp;grupa S&nbsp;</a>]&nbsp;\r\n</td></tr></table>');

/*Table structure for table `matches` */

DROP TABLE IF EXISTS `matches`;

CREATE TABLE `matches` (
  `rnd` int(6) NOT NULL DEFAULT '0',
  `tabl` int(6) NOT NULL DEFAULT '0',
  `homet` int(6) NOT NULL DEFAULT '0',
  `visit` int(6) NOT NULL DEFAULT '0',
  `carry` decimal(8,1) NOT NULL DEFAULT '0.0',
  `vph` decimal(8,2) NOT NULL DEFAULT '0.00',
  `vpv` decimal(8,2) NOT NULL DEFAULT '0.00',
  `corrh` decimal(8,2) NOT NULL DEFAULT '0.00',
  `corrv` decimal(8,2) NOT NULL DEFAULT '0.00',
  `reah` varchar(120) DEFAULT NULL,
  `reav` varchar(120) DEFAULT NULL,
  `mtitle` varchar(255) DEFAULT NULL,
  `firstbrd` int(6) DEFAULT '0',
  `lastseg` int(6) DEFAULT '0',
  UNIQUE KEY `ruta` (`rnd`,`tabl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `matches` */

insert  into `matches`(`rnd`,`tabl`,`homet`,`visit`,`carry`,`vph`,`vpv`,`corrh`,`corrv`,`reah`,`reav`,`mtitle`,`firstbrd`,`lastseg`) values 
(1,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(1,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(2,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(3,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(4,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(5,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(6,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(7,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(8,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(9,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(10,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(11,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(12,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(13,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(14,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,1,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,2,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,3,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,4,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,5,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,6,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,7,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,8,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,9,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,10,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,11,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,12,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,13,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,14,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,15,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0),
(15,16,0,0,0.0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,0,0);

/*Table structure for table `params` */

DROP TABLE IF EXISTS `params`;

CREATE TABLE `params` (
  `datasource` tinyint(1) DEFAULT '0',
  `lineup` tinyint(1) DEFAULT '0',
  `colbg` int(10) DEFAULT '16777215',
  `colframe` int(10) DEFAULT '11008',
  `colframep` int(10) DEFAULT '13092807',
  `coltitbg` int(10) DEFAULT '15269864',
  `colheabg` int(10) DEFAULT '16777088',
  `colhome` int(10) DEFAULT '16768991',
  `colaway` int(10) DEFAULT '11206655',
  `fontname` varchar(255) DEFAULT 'Arial',
  `fontsize` int(10) DEFAULT '10',
  `fontcol` int(10) DEFAULT '11008',
  `path` varchar(255) DEFAULT NULL,
  `projlines` int(10) DEFAULT '15',
  `projsecs` int(10) DEFAULT '8',
  `language` varchar(255) DEFAULT NULL,
  `ftphost` varchar(255) DEFAULT NULL,
  `ftpuser` varchar(255) DEFAULT NULL,
  `ftppasswd` varchar(255) DEFAULT NULL,
  `ftpdirectory` varchar(255) DEFAULT NULL,
  `ftptimeout` int(10) DEFAULT '5000',
  `ftppassive` tinyint(1) DEFAULT '0',
  `gonport` int(10) DEFAULT '8090',
  `gonhost` varchar(255) DEFAULT 'localhost',
  `minbutler` int(3) DEFAULT '0',
  `rzukol` int(3) DEFAULT '2',
  `projhtml` int(3) DEFAULT '0',
  `ftpport` int(3) DEFAULT '21'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `params` */

insert  into `params`(`datasource`,`lineup`,`colbg`,`colframe`,`colframep`,`coltitbg`,`colheabg`,`colhome`,`colaway`,`fontname`,`fontsize`,`fontcol`,`path`,`projlines`,`projsecs`,`language`,`ftphost`,`ftpuser`,`ftppasswd`,`ftpdirectory`,`ftptimeout`,`ftppassive`,`gonport`,`gonhost`,`minbutler`,`rzukol`,`projhtml`,`ftpport`) values 
(1,0,16777215,11008,13092807,15269864,16777088,16768991,11206655,'Arial',10,11008,'c:\\www\\butler\\',18,8,'C:\\Program Files (x86)\\JFR\\Teamy\\polski.language',NULL,NULL,NULL,NULL,5000,0,8090,'localhost',50,2,0,21);

/*Table structure for table `players` */

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `gname` varchar(30) DEFAULT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `team` int(6) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `captain` enum('T','N','P') NOT NULL DEFAULT 'N',
  `coach` enum('T','N') NOT NULL DEFAULT 'N',
  `NorS` enum('N','S','') DEFAULT NULL,
  `EorW` enum('E','W','') DEFAULT NULL,
  `partner` int(6) NOT NULL DEFAULT '0',
  `wbfcode` varchar(20) DEFAULT NULL,
  `intim` tinyint(2) DEFAULT '0',
  `wk` decimal(5,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `players` */

/*Table structure for table `rounds` */

DROP TABLE IF EXISTS `rounds`;

CREATE TABLE `rounds` (
  `rnd` int(6) NOT NULL DEFAULT '0',
  `day` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `bfrm` varchar(60) DEFAULT '1',
  `rdname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `rounds` */

insert  into `rounds`(`rnd`,`day`,`hour`,`finished`,`bfrm`,`rdname`) values 
(1,NULL,NULL,0,'1,13',NULL),
(2,NULL,NULL,0,'1,13',NULL),
(3,NULL,NULL,0,'1,13',NULL),
(4,NULL,NULL,0,'1,13',NULL),
(5,NULL,NULL,0,'1,13',NULL),
(6,NULL,NULL,0,'1,13',NULL),
(7,NULL,NULL,0,'1,13',NULL),
(8,NULL,NULL,0,'1,13',NULL),
(9,NULL,NULL,0,'1,13',NULL),
(10,NULL,NULL,0,'1,13',NULL),
(11,NULL,NULL,0,'1,13',NULL),
(12,NULL,NULL,0,'1,13',NULL),
(13,NULL,NULL,0,'1,13',NULL),
(14,NULL,NULL,0,'1,13',NULL),
(15,NULL,NULL,0,'1,13',NULL);

/*Table structure for table `scores` */

DROP TABLE IF EXISTS `scores`;

CREATE TABLE `scores` (
  `rnd` int(6) NOT NULL DEFAULT '0',
  `segment` int(6) NOT NULL DEFAULT '0',
  `tabl` int(6) NOT NULL DEFAULT '0',
  `room` int(6) NOT NULL DEFAULT '0',
  `board` int(6) NOT NULL DEFAULT '0',
  `declarer` enum('?','N','E','S','W') DEFAULT NULL,
  `contract` varchar(10) DEFAULT NULL,
  `result` int(6) DEFAULT NULL,
  `lead` char(3) DEFAULT NULL,
  `score` int(6) DEFAULT NULL,
  `badl` tinyint(1) NOT NULL DEFAULT '0',
  `mecz` tinyint(1) NOT NULL DEFAULT '1',
  `butler` tinyint(1) NOT NULL DEFAULT '1',
  `processed` tinyint(1) DEFAULT '1',
  `tims` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auction` text,
  `play` text,
  `bbo` text,
  UNIQUE KEY `rsb` (`rnd`,`segment`,`board`,`tabl`,`room`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `scores` */

/*Table structure for table `segments` */

DROP TABLE IF EXISTS `segments`;

CREATE TABLE `segments` (
  `rnd` int(6) NOT NULL DEFAULT '0',
  `segment` int(6) NOT NULL DEFAULT '0',
  `tabl` int(6) NOT NULL DEFAULT '0',
  `homet` int(6) NOT NULL DEFAULT '0',
  `visit` int(6) NOT NULL DEFAULT '0',
  `openN` int(6) NOT NULL DEFAULT '0',
  `openE` int(6) NOT NULL DEFAULT '0',
  `openS` int(6) NOT NULL DEFAULT '0',
  `openW` int(6) NOT NULL DEFAULT '0',
  `closeN` int(6) NOT NULL DEFAULT '0',
  `closeE` int(6) NOT NULL DEFAULT '0',
  `closeS` int(6) NOT NULL DEFAULT '0',
  `closeW` int(6) NOT NULL DEFAULT '0',
  `impH` decimal(8,2) NOT NULL DEFAULT '0.00',
  `impV` decimal(8,2) NOT NULL DEFAULT '0.00',
  `corrH` decimal(8,2) NOT NULL DEFAULT '0.00',
  `corrV` decimal(8,2) NOT NULL DEFAULT '0.00',
  `horem` text,
  `hcrem` text,
  `vorem` text,
  `vcrem` text,
  `towel` tinyint(1) DEFAULT '0',
  `hostt` tinyint(1) DEFAULT '0',
  `rems` text,
  UNIQUE KEY `rst` (`rnd`,`segment`,`tabl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `segments` */

insert  into `segments`(`rnd`,`segment`,`tabl`,`homet`,`visit`,`openN`,`openE`,`openS`,`openW`,`closeN`,`closeE`,`closeS`,`closeW`,`impH`,`impV`,`corrH`,`corrV`,`horem`,`hcrem`,`vorem`,`vcrem`,`towel`,`hostt`,`rems`) values 
(1,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(1,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(2,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(3,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(4,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(5,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(6,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(7,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(8,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(9,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(10,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(11,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(12,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(13,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(14,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,1,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,1,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,2,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,3,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,4,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,5,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,6,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,7,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,8,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,9,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,10,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,11,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,12,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,13,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,14,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,15,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL),
(15,2,16,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0,0,NULL);

/*Table structure for table `tabvp` */

DROP TABLE IF EXISTS `tabvp`;

CREATE TABLE `tabvp` (
  `dimp` int(6) NOT NULL DEFAULT '0',
  `vpns` decimal(5,2) NOT NULL DEFAULT '0.00',
  `vpew` decimal(5,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `dimp` (`dimp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tabvp` */

insert  into `tabvp`(`dimp`,`vpns`,`vpew`) values 
(0,10.00,10.00),
(1,10.25,9.75),
(2,10.50,9.50),
(3,10.75,9.25),
(4,10.99,9.01),
(5,11.23,8.77),
(6,11.46,8.54),
(7,11.68,8.32),
(8,11.90,8.10),
(9,12.12,7.88),
(10,12.33,7.67),
(11,12.54,7.46),
(12,12.75,7.25),
(13,12.95,7.05),
(14,13.15,6.85),
(15,13.34,6.66),
(16,13.53,6.47),
(17,13.72,6.28),
(18,13.90,6.10),
(19,14.08,5.92),
(20,14.26,5.74),
(21,14.43,5.57),
(22,14.60,5.40),
(23,14.76,5.24),
(24,14.92,5.08),
(25,15.08,4.92),
(26,15.24,4.76),
(27,15.39,4.61),
(28,15.54,4.46),
(29,15.69,4.31),
(30,15.83,4.17),
(31,15.97,4.03),
(32,16.11,3.89),
(33,16.25,3.75),
(34,16.38,3.62),
(35,16.51,3.49),
(36,16.64,3.36),
(37,16.77,3.23),
(38,16.89,3.11),
(39,17.01,2.99),
(40,17.13,2.87),
(41,17.25,2.75),
(42,17.36,2.64),
(43,17.47,2.53),
(44,17.58,2.42),
(45,17.69,2.31),
(46,17.79,2.21),
(47,17.89,2.11),
(48,17.99,2.01),
(49,18.09,1.91),
(50,18.19,1.81),
(51,18.29,1.71),
(52,18.38,1.62),
(53,18.47,1.53),
(54,18.56,1.44),
(55,18.65,1.35),
(56,18.74,1.26),
(57,18.82,1.18),
(58,18.90,1.10),
(59,18.98,1.02),
(60,19.06,0.94),
(61,19.14,0.86),
(62,19.22,0.78),
(63,19.30,0.70),
(64,19.37,0.63),
(65,19.44,0.56),
(66,19.51,0.49),
(67,19.58,0.42),
(68,19.65,0.35),
(69,19.72,0.28),
(70,19.79,0.21),
(71,19.85,0.15),
(72,19.91,0.09),
(73,19.97,0.03),
(74,20.00,0.00);

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` int(6) NOT NULL DEFAULT '0',
  `fullname` varchar(50) DEFAULT NULL,
  `shortname` varchar(30) NOT NULL DEFAULT '',
  `gif` varchar(20) DEFAULT NULL,
  `score` decimal(8,2) DEFAULT '0.00',
  `bye` tinyint(1) DEFAULT '0',
  `IOC` varchar(3) DEFAULT NULL,
  `internet` varchar(255) DEFAULT NULL,
  `grupa` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `teams` */

insert  into `teams`(`id`,`fullname`,`shortname`,`gif`,`score`,`bye`,`IOC`,`internet`,`grupa`) values 
(1,'TEAM 1','TEAM 1',NULL,0.00,0,NULL,NULL,0),
(2,'TEAM 2','TEAM 2',NULL,0.00,0,NULL,NULL,0),
(3,'TEAM 3','TEAM 3',NULL,0.00,0,NULL,NULL,0),
(4,'TEAM 4','TEAM 4',NULL,0.00,0,NULL,NULL,0),
(5,'TEAM 5','TEAM 5',NULL,0.00,0,NULL,NULL,0),
(6,'TEAM 6','TEAM 6',NULL,0.00,0,NULL,NULL,0),
(7,'TEAM 7','TEAM 7',NULL,0.00,0,NULL,NULL,0),
(8,'TEAM 8','TEAM 8',NULL,0.00,0,NULL,NULL,0),
(9,'TEAM 9','TEAM 9',NULL,0.00,0,NULL,NULL,0),
(10,'TEAM 10','TEAM 10',NULL,0.00,0,NULL,NULL,0),
(11,'TEAM 11','TEAM 11',NULL,0.00,0,NULL,NULL,0),
(12,'TEAM 12','TEAM 12',NULL,0.00,0,NULL,NULL,0),
(13,'TEAM 13','TEAM 13',NULL,0.00,0,NULL,NULL,0),
(14,'TEAM 14','TEAM 14',NULL,0.00,0,NULL,NULL,0),
(15,'TEAM 15','TEAM 15',NULL,0.00,0,NULL,NULL,0),
(16,'TEAM 16','TEAM 16',NULL,0.00,0,NULL,NULL,0),
(17,'TEAM 17','TEAM 17',NULL,0.00,0,NULL,NULL,0),
(18,'TEAM 18','TEAM 18',NULL,0.00,0,NULL,NULL,0),
(19,'TEAM 19','TEAM 19',NULL,0.00,0,NULL,NULL,0),
(20,'TEAM 20','TEAM 20',NULL,0.00,0,NULL,NULL,0),
(21,'TEAM 21','TEAM 21',NULL,0.00,0,NULL,NULL,0),
(22,'TEAM 22','TEAM 22',NULL,0.00,0,NULL,NULL,0),
(23,'TEAM 23','TEAM 23',NULL,0.00,0,NULL,NULL,0),
(24,'TEAM 24','TEAM 24',NULL,0.00,0,NULL,NULL,0),
(25,'TEAM 25','TEAM 25',NULL,0.00,0,NULL,NULL,0),
(26,'TEAM 26','TEAM 26',NULL,0.00,0,NULL,NULL,0),
(27,'TEAM 27','TEAM 27',NULL,0.00,0,NULL,NULL,0),
(28,'TEAM 28','TEAM 28',NULL,0.00,0,NULL,NULL,0),
(29,'TEAM 29','TEAM 29',NULL,0.00,0,NULL,NULL,0),
(30,'TEAM 30','TEAM 30',NULL,0.00,0,NULL,NULL,0),
(31,'TEAM 31','TEAM 31',NULL,0.00,0,NULL,NULL,0),
(32,'TEAM 32','TEAM 32',NULL,0.00,0,NULL,NULL,0);

/*Table structure for table `ties` */

DROP TABLE IF EXISTS `ties`;

CREATE TABLE `ties` (
  `mxeen` int(6) DEFAULT '0',
  `meth1` tinyint(1) DEFAULT '0',
  `meth2` tinyint(1) DEFAULT '0',
  `meth3` tinyint(1) DEFAULT '0',
  `meth4` tinyint(1) DEFAULT '0',
  `meth5` tinyint(1) DEFAULT '0',
  `meth6` tinyint(1) DEFAULT '0',
  `meth7` tinyint(1) DEFAULT '0',
  `meth8` tinyint(1) DEFAULT '0',
  `meth9` tinyint(1) DEFAULT '0',
  `meth10` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ties` */

insert  into `ties`(`mxeen`,`meth1`,`meth2`,`meth3`,`meth4`,`meth5`,`meth6`,`meth7`,`meth8`,`meth9`,`meth10`) values 
(0,1,2,3,0,0,0,0,0,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
