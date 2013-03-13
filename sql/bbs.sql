-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bbs
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ bbs;
USE bbs;

--
-- Table structure for table `bbs`.`article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `rootid` int(11) default NULL,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `pdate` varchar(255) default NULL,
  `isleaf` int(11) default NULL,
  `hit` int(11) default NULL,
  `replyNum` int(11) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKD458CCF67BB44CE5` (`userid`),
  CONSTRAINT `FKD458CCF67BB44CE5` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `bbs`.`article`
--

/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`,`pid`,`rootid`,`title`,`content`,`pdate`,`isleaf`,`hit`,`replyNum`,`userid`) VALUES 
 (1,0,1,'大家好啊@_@！','<p>大家好啊@_@！</p>\r\n<p>大家好啊@_@！大家好啊@_@！</p>\r\n<p>大家好啊@_@！大家好啊@_@！大家好啊@_@！</p>','2009-10-16 05:27:22',2,8,2,4),
 (2,1,1,'你也好啊@_@！','<p>你也好啊@_@！</p>\r\n<p>你也好啊@_@！你也好啊@_@！</p>\r\n<p>你也好啊@_@！你也好啊@_@！你也好啊@_@！</p>','2009-10-16 05:27:22',1,2,0,1),
 (3,1,1,'我很好！','<p><strong><em>我很好！</em></strong></p>\r\n<p><strong><em>我很好！我很好！</em></strong></p>\r\n<p><strong><em>我很好！我很好！我很好！</em></strong></p>','2009-10-17 02:50:21',2,2,1,3),
 (4,3,1,'你真的好吗？？？','<p><strong><u>你真的好吗？？？</u></strong></p>\r\n<p><strong><u>好就好吧！还自我感觉良好？？</u></strong></p>','2009-10-17 03:00:02',1,1,0,2),
 (5,0,5,'开始吃素，加入环保，拯救地球!!!','<p><strong>开始吃素，加入环保，拯救地球</strong></p>\r\n<p><strong>Be Veg. Go Green Save the Planet!!!!</strong></p>','2009-10-17 03:24:03',2,7,2,2),
 (6,5,5,'吃素1天 = 多种100棵树！！！','<p><strong><u>生产1公斤肉 = 生产36.4公斤二氧化碳！！！！</u></strong></p>\r\n<p><strong><u>吃素1天 = 多种100棵树！！！</u></strong></p>\r\n<p><strong><u>吃素吧！！！</u></strong></p>','2009-10-17 03:16:16',1,2,0,1);
INSERT INTO `article` (`id`,`pid`,`rootid`,`title`,`content`,`pdate`,`isleaf`,`hit`,`replyNum`,`userid`) VALUES 
 (7,5,5,'全世界的人都吃素，世界将不会有饥荒','<p><strong><em><u>全世界的人都吃素，世界将不会有饥荒</u></em></strong></p>\r\n<p><strong><em><u>全世界的人都吃素，世界将不会有饥荒</u></em></strong></p>\r\n<p><strong><em><u>真的！</u></em></strong></p>','2009-10-17 03:22:31',1,2,0,4),
 (8,0,8,'风雨一甲子 辉煌六十年！','<p><strong>风雨一甲子 辉煌六十年！</strong></p>\r\n<p><strong>祝祖国母亲生日快乐！！！</strong></p>','2009-10-18 01:55:53',2,3,1,1),
 (9,8,8,'六十年好快啊！','<p><strong>六十年好快啊！</strong></p>\r\n<p><strong>六十年好快啊！六十年好快啊！</strong></p>','2009-10-18 01:55:03',2,2,1,2),
 (10,9,8,'确实好快啊！！','<p>确实好快啊！！</p>\r\n<p>确实好快啊！！确实好快啊！！</p>','2009-10-18 01:55:57',1,0,0,3),
 (11,0,11,'操作系统的原理与应用','<p>《操作系统的原理与应用》</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &mdash;&mdash;孔宪军著</p>','2009-10-18 01:25:57',2,5,2,3),
 (12,11,11,'C程序设计','<p>《C&nbsp;程序设计》</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &mdash;&mdash;谭浩强著</p>','2009-10-18 01:58:46',2,2,1,4);
INSERT INTO `article` (`id`,`pid`,`rootid`,`title`,`content`,`pdate`,`isleaf`,`hit`,`replyNum`,`userid`) VALUES 
 (13,11,11,'计算机网络','<p>《计算机网络》</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &mdash;&mdash;谢希仁著</p>','2009-10-18 02:00:03',1,0,0,4),
 (14,12,11,'挺好的书！！','<p>挺好的！！！！！！！！！！！</p>','2009-10-18 02:00:55',1,0,0,1),
 (15,0,15,'JSTL JSP STRUTS HIBERNATE SPRING EJB...','<p>JSTL JSP STRUTS HIBERNATE SPRING EJB...</p>','2009-10-18 02:28:34',1,0,0,4),
 (16,0,16,'IT WORLD!!','<p>IT WORLD!!</p>\r\n<p>IT WORLD!!IT WORLD!!</p>','2009-10-18 02:00:35',1,0,0,4),
 (17,0,17,'SOS','<p><strong>SOS</strong></p>\r\n<p><strong>SOS SOS SOS</strong></p>','2009-10-18 02:24:35',1,0,0,4),
 (18,0,18,'JSP','','2009-10-18 02:40:35',2,3,1,4),
 (19,18,18,'楼上的想说什么？？？','<p><strong><font size=\"4\">楼上的想说什么？？？</font></strong></p>\r\n<p><strong><font size=\"4\">只有标题 没有内容啊？？？？？？？？？？？</font></strong></p>','2009-10-18 02:36:56',1,1,0,4),
 (20,0,20,'hello itworld','<p>hello itworld</p>\r\n<p>hello itworldhello itworld</p>','2009-10-18 02:37:37',1,0,0,4);
INSERT INTO `article` (`id`,`pid`,`rootid`,`title`,`content`,`pdate`,`isleaf`,`hit`,`replyNum`,`userid`) VALUES 
 (21,0,21,'请大家不要灌水！！！','<p>请大家不要灌水！！！</p>\r\n<p>请大家不要灌水！！！请大家不要灌水！！！</p>','2009-10-18 02:21:38',2,3,1,1),
 (22,0,22,'大家都说点有用的！！','<p>大家都说点有用的！！</p>\r\n<p>大家都说点有用的！！大家都说点有用的！！</p>','2009-10-18 02:00:39',1,0,0,1),
 (23,0,23,'比如说程序设计上的！','<p><strong>比如说程序设计上的！</strong></p>\r\n<p><strong>比如说程序设计上的！比如说程序设计上的！</strong></p>','2009-10-18 02:47:39',1,1,0,1),
 (24,0,24,'特搞的图片','<p><img alt=\"\" src=\"/XBBS2010/fckeditor/editor/images/smiley/msn/broken_heart.gif\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ～～<img alt=\"\" src=\"/XBBS2010/fckeditor/editor/images/smiley/msn/angry_smile.gif\" /></p>','2009-10-18 02:04:43',1,1,0,1),
 (25,21,21,'不要灌水啊！','<p>不要灌水啊！</p>\r\n<p>不要灌水啊！不要灌水啊！</p>','2009-10-18 02:45:12',1,0,0,1);
INSERT INTO `article` (`id`,`pid`,`rootid`,`title`,`content`,`pdate`,`isleaf`,`hit`,`replyNum`,`userid`) VALUES 
 (26,0,26,'该帖已被管理员删除!','该帖已被管理员删除！<br> 请规范自己的言语！！谢谢合作！！！！','2009-10-18 04:37:51',1,0,0,4);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;


--
-- Table structure for table `bbs`.`hit`
--

DROP TABLE IF EXISTS `hit`;
CREATE TABLE `hit` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hit` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `bbs`.`hit`
--

/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` (`id`,`hit`) VALUES 
 (1,214);
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;


--
-- Table structure for table `bbs`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `appearNum` int(11) default NULL,
  `level` int(11) default NULL,
  `score` int(11) default NULL,
  `imagePath` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `bbs`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`,`username`,`password`,`appearNum`,`level`,`score`,`imagePath`) VALUES 
 (1,'severus','bauble',9,1,9,'./tx/none.gif'),
 (2,'bauble','severus',3,1,3,'./tx/female.jpg'),
 (3,'fuqiang','fuqiang',3,1,3,'./tx/male.jpg'),
 (4,'游客','000000',4,1,4,'./tx/em01.gif');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
