# Host: localhost  (Version: 5.5.47)
# Date: 2016-05-08 16:28:25
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "a1tl_jj1_0log1"
#

DROP TABLE IF EXISTS `a1tl_jj1_0log1`;
CREATE TABLE `a1tl_jj1_0log1` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `yid01` int(11) DEFAULT NULL,
  `userid` mediumint(9) DEFAULT NULL,
  `yeji` int(11) DEFAULT NULL COMMENT 'results',
  `jiangj` mediumint(9) DEFAULT NULL COMMENT 'bonus',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dat1time` bigint(12) DEFAULT '1456940000',
  `rcud` tinyint(3) DEFAULT NULL COMMENT 'r:0-c:1-u:2-d3',
  `atlaststate` tinyint(3) DEFAULT '0' COMMENT '0不是最后记录;>0是后期记录;越大越是最后面纪录;可用timestamp取代;是否最后（时间）纪录',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='日志-业绩-奖金&等';

#
# Data for table "a1tl_jj1_0log1"
#

INSERT INTO `a1tl_jj1_0log1` VALUES (1,1,1,1000,100,'2016-05-08 15:44:40',1456940001,1,0),(2,2,2,2000,200,'2016-05-08 15:44:44',1456940002,1,0),(3,2,2,3000,300,'2016-05-08 15:44:48',1456940003,2,1),(4,1,1,4000,400,'2016-05-08 15:45:08',1456940004,2,1);

#
# Structure for table "a1tl_jj1point"
#

DROP TABLE IF EXISTS `a1tl_jj1point`;
CREATE TABLE `a1tl_jj1point` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `logstarid` int(11) DEFAULT NULL,
  `startime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `logendid` int(11) DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='指针';

#
# Data for table "a1tl_jj1point"
#

INSERT INTO `a1tl_jj1point` VALUES (1,1,'0000-00-00 00:00:00',4,'2016-05-08 09:09:05');

#
# Structure for table "a1tl_jj1user1yeji"
#

DROP TABLE IF EXISTS `a1tl_jj1user1yeji`;
CREATE TABLE `a1tl_jj1user1yeji` (
  `yId` int(11) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(9) DEFAULT NULL,
  `yeji` int(11) DEFAULT NULL COMMENT 'results',
  `jiangj` mediumint(9) DEFAULT NULL COMMENT 'bonus',
  PRIMARY KEY (`yId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='业绩results-奖金bonus&等';

#
# Data for table "a1tl_jj1user1yeji"
#

INSERT INTO `a1tl_jj1user1yeji` VALUES (1,1,1000,100),(2,1,4000,400);

#
# Structure for table "a1tl_jj1user1yeji00"
#

DROP TABLE IF EXISTS `a1tl_jj1user1yeji00`;
CREATE TABLE `a1tl_jj1user1yeji00` (
  `yId` int(11) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(9) DEFAULT NULL,
  `yeji` int(11) DEFAULT NULL COMMENT 'results',
  `jiangj` mediumint(9) DEFAULT NULL COMMENT 'bonus',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rcud` tinyint(3) DEFAULT NULL COMMENT 'r:0-c:1-u:2-d3',
  `atlaststate` tinyint(3) DEFAULT '0' COMMENT '0不是最后记录;>0是后期记录;越大越是最后面纪录;可用timestamp取代;是否最后（时间）纪录',
  PRIMARY KEY (`yId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='业绩results-奖金bonus&等';

#
# Data for table "a1tl_jj1user1yeji00"
#


#
# Structure for table "a1tl_jj1user1yeji02"
#

DROP TABLE IF EXISTS `a1tl_jj1user1yeji02`;
CREATE TABLE `a1tl_jj1user1yeji02` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `yid2` int(11) DEFAULT '0',
  `userid` mediumint(9) DEFAULT NULL,
  `yeji` int(11) DEFAULT NULL COMMENT 'results',
  `jiangj` mediumint(9) DEFAULT NULL COMMENT 'bonus',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dat1time` int(11) DEFAULT '0',
  `rcud` tinyint(3) DEFAULT NULL COMMENT 'r:0-c:1-u:2-d3',
  `atlaststate` tinyint(3) DEFAULT '0' COMMENT '0不是最后记录;>0是后期记录;越大越是最后面纪录;可用timestamp取代;是否最后（时间）纪录',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业绩results-奖金bonus&等';

#
# Data for table "a1tl_jj1user1yeji02"
#

INSERT INTO `a1tl_jj1user1yeji02` VALUES (1,1,1,1000,100,'2016-05-08 15:44:40',1456940001,1,0),(2,2,2,2000,200,'2016-05-08 15:44:44',1456940002,1,0),(3,2,2,3000,300,'2016-05-08 15:44:48',1456940003,2,1);

#
# Structure for table "a1tl_jjz1z__log11all2"
#

DROP TABLE IF EXISTS `a1tl_jjz1z__log11all2`;
CREATE TABLE `a1tl_jjz1z__log11all2` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(11) DEFAULT NULL,
  `field012` mediumint(9) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rcud` tinyint(3) DEFAULT NULL COMMENT 'r:0--c:1-u2-d3',
  `timebefore` int(11) DEFAULT NULL,
  `timechanged` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='a1tl_jj1num日志';

#
# Data for table "a1tl_jjz1z__log11all2"
#

INSERT INTO `a1tl_jjz1z__log11all2` VALUES (1,1,1,'2016-05-08 09:09:01',1,0,1000),(2,1,2,'2016-05-08 09:09:01',1,0,100);
