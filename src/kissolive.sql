/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.14-log : Database - kissolive
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kissolive` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kissolive`;

/*Table structure for table `tb_address` */

DROP TABLE IF EXISTS `tb_address`;

CREATE TABLE `tb_address` (
  `aid` varchar(32) NOT NULL COMMENT '地址id',
  `userid` varchar(32) NOT NULL COMMENT '所属用户id',
  `isdefault` int(11) NOT NULL DEFAULT '0' COMMENT '是否默认(1是0否)',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '市',
  `district` varchar(30) DEFAULT NULL COMMENT '区',
  `detail` varchar(50) NOT NULL COMMENT '详细地址',
  `name` varchar(20) NOT NULL COMMENT '收货人姓名',
  `tel` varchar(20) NOT NULL COMMENT '收货人手机号',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`aid`,`userid`),
  KEY `orderBy` (`orderBy`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_address_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_address` */

insert  into `tb_address`(`aid`,`userid`,`isdefault`,`province`,`city`,`district`,`detail`,`name`,`tel`,`orderBy`) values ('0342524C04C747969B7A96CC89B36D76','EB9E10CEDBA24028BE2AB23DC1771E10',0,'广东','汕头','潮阳区','凤上居委','李洁娜','13612415192',2),('581C3914AACD4C299E37EC707428DF54','EB9E10CEDBA24028BE2AB23DC1771E10',1,'广东','肇庆','端州区','恩溢学校','李映泉','13556507500',1);

/*Table structure for table `tb_brand` */

DROP TABLE IF EXISTS `tb_brand`;

CREATE TABLE `tb_brand` (
  `bid` varchar(32) NOT NULL COMMENT '品牌id',
  `bname` varchar(50) NOT NULL COMMENT '品牌名',
  `bsrc` varchar(80) NOT NULL COMMENT '品牌logo',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`bid`),
  KEY `orderBy` (`orderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_brand` */

/*Table structure for table `tb_cart` */

DROP TABLE IF EXISTS `tb_cart`;

CREATE TABLE `tb_cart` (
  `cid` varchar(32) NOT NULL COMMENT '购物袋id',
  `userid` varchar(32) NOT NULL COMMENT '所属用户id',
  `gid` varchar(32) NOT NULL COMMENT '商品id',
  `number` int(11) NOT NULL COMMENT '商品数量',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`cid`),
  KEY `orderBy` (`orderBy`),
  KEY `userid` (`userid`),
  KEY `gid` (`gid`),
  CONSTRAINT `tb_cart_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`),
  CONSTRAINT `tb_cart_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `tb_goods` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_cart` */

/*Table structure for table `tb_colorno` */

DROP TABLE IF EXISTS `tb_colorno`;

CREATE TABLE `tb_colorno` (
  `cnid` varchar(32) NOT NULL COMMENT '色号id',
  `cncode` varchar(20) NOT NULL COMMENT '色号代码',
  `cnRGB` varchar(20) NOT NULL COMMENT '16色',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`cnid`),
  KEY `orderBy` (`orderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_colorno` */

/*Table structure for table `tb_goods` */

DROP TABLE IF EXISTS `tb_goods`;

CREATE TABLE `tb_goods` (
  `gid` varchar(32) NOT NULL COMMENT '商品id',
  `lid` varchar(32) NOT NULL COMMENT '所属口红',
  `cnid` varchar(32) NOT NULL COMMENT '所属色号',
  `gprice` double NOT NULL DEFAULT '0' COMMENT '商品价格',
  `gnumber` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1:上架，0:下架',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`gid`),
  KEY `orderBy` (`orderBy`),
  KEY `lid` (`lid`),
  KEY `cnid` (`cnid`),
  CONSTRAINT `tb_goods_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `tb_lipstick` (`lid`),
  CONSTRAINT `tb_goods_ibfk_2` FOREIGN KEY (`cnid`) REFERENCES `tb_colorno` (`cnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_goods` */

/*Table structure for table `tb_hotspot` */

DROP TABLE IF EXISTS `tb_hotspot`;

CREATE TABLE `tb_hotspot` (
  `hid` varchar(32) NOT NULL COMMENT '选购热点id',
  `hdescribe` varchar(80) NOT NULL COMMENT '选购热点描述',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`hid`),
  KEY `orderBy` (`orderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_hotspot` */

/*Table structure for table `tb_lipstick` */

DROP TABLE IF EXISTS `tb_lipstick`;

CREATE TABLE `tb_lipstick` (
  `sid` varchar(32) NOT NULL COMMENT '系列id',
  `lid` varchar(32) NOT NULL COMMENT '口红id',
  `hid` varchar(32) NOT NULL COMMENT '选购热点id',
  `lname` varchar(50) NOT NULL COMMENT '口红名',
  `lorigin` varchar(20) NOT NULL COMMENT '口红产地',
  `shelflife` int(11) NOT NULL COMMENT '保质期',
  `skin` varchar(80) NOT NULL COMMENT '适用肤质',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`lid`),
  KEY `orderBy` (`orderBy`),
  KEY `sid` (`sid`),
  KEY `hid` (`hid`),
  CONSTRAINT `tb_lipstick_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `tb_series` (`sid`),
  CONSTRAINT `tb_lipstick_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `tb_hotspot` (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_lipstick` */

/*Table structure for table `tb_lipstickpicture` */

DROP TABLE IF EXISTS `tb_lipstickpicture`;

CREATE TABLE `tb_lipstickpicture` (
  `lpid` varchar(32) NOT NULL COMMENT '图片id',
  `lid` varchar(32) NOT NULL COMMENT '口红id',
  `lpsrc` varchar(80) NOT NULL COMMENT '图片地址',
  `ismain` int(11) NOT NULL COMMENT '是否主图(1是0否)',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`lpid`),
  KEY `orderBy` (`orderBy`),
  KEY `lid` (`lid`),
  CONSTRAINT `tb_lipstickpicture_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `tb_lipstick` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_lipstickpicture` */

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `oid` varchar(32) NOT NULL COMMENT '订单id',
  `userid` varchar(32) NOT NULL COMMENT '所属用户id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态（0取消 1未付款 2已付款等待发货 3发货等待收货 4订单完成）',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '市',
  `district` varchar(30) DEFAULT NULL COMMENT '区',
  `detail` varchar(50) NOT NULL COMMENT '详细地址',
  `name` varchar(20) NOT NULL COMMENT '收货人姓名',
  `tel` varchar(20) NOT NULL COMMENT '收货人手机号',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `newtime` varchar(30) DEFAULT NULL COMMENT '最近更新时间',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`oid`),
  KEY `orderBy` (`orderBy`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_order` */

/*Table structure for table `tb_orderitem` */

DROP TABLE IF EXISTS `tb_orderitem`;

CREATE TABLE `tb_orderitem` (
  `oiid` varchar(32) NOT NULL COMMENT '订单详情id',
  `oid` varchar(32) NOT NULL COMMENT '订单id',
  `gid` varchar(32) NOT NULL COMMENT '商品id',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `unitprice` double NOT NULL DEFAULT '0' COMMENT '商品单价',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`oiid`),
  KEY `orderBy` (`orderBy`),
  KEY `oid` (`oid`),
  KEY `gid` (`gid`),
  CONSTRAINT `tb_orderitem_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `tb_order` (`oid`),
  CONSTRAINT `tb_orderitem_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `tb_goods` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_orderitem` */

/*Table structure for table `tb_recommend` */

DROP TABLE IF EXISTS `tb_recommend`;

CREATE TABLE `tb_recommend` (
  `gid` varchar(32) NOT NULL COMMENT '商品id',
  `sid1` varchar(32) NOT NULL COMMENT '系列1id',
  `sid2` varchar(32) NOT NULL COMMENT '系列2id',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`orderBy`),
  KEY `sid1` (`sid1`),
  KEY `sid2` (`sid2`),
  KEY `gid` (`gid`),
  CONSTRAINT `tb_recommend_ibfk_1` FOREIGN KEY (`sid1`) REFERENCES `tb_series` (`sid`),
  CONSTRAINT `tb_recommend_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `tb_goods` (`gid`),
  CONSTRAINT `tb_recommend_ibfk_3` FOREIGN KEY (`sid2`) REFERENCES `tb_series` (`sid`),
  CONSTRAINT `tb_recommend_ibfk_4` FOREIGN KEY (`gid`) REFERENCES `tb_recommend` (`sid1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_recommend` */

/*Table structure for table `tb_series` */

DROP TABLE IF EXISTS `tb_series`;

CREATE TABLE `tb_series` (
  `bid` varchar(32) NOT NULL COMMENT '所属品牌id',
  `sid` varchar(32) NOT NULL COMMENT '系列id',
  `sname` varchar(50) NOT NULL COMMENT '系列名',
  `ssrc` varchar(80) NOT NULL COMMENT '系列图片',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`sid`),
  KEY `orderBy` (`orderBy`),
  KEY `bid` (`bid`),
  CONSTRAINT `tb_series_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `tb_brand` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_series` */

/*Table structure for table `tb_shuffling` */

DROP TABLE IF EXISTS `tb_shuffling`;

CREATE TABLE `tb_shuffling` (
  `src` varchar(80) DEFAULT NULL COMMENT '图片地址',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`orderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_shuffling` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `userid` varchar(32) NOT NULL COMMENT '用户id',
  `password` varchar(80) NOT NULL COMMENT '用户密码',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `usertel` varchar(20) NOT NULL COMMENT '用户手机号',
  `orderBy` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序用',
  PRIMARY KEY (`userid`),
  KEY `orderBy` (`orderBy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`userid`,`password`,`username`,`usertel`,`orderBy`) values ('1','1','1','13129729858',1),('EB9E10CEDBA24028BE2AB23DC1771E10','f6ExzkuNWVymdFC710lwPg==','13822866200','13822866200',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
