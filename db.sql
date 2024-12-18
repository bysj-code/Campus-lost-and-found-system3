/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shiwuzhaolingon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiwuzhaolingon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiwuzhaolingon`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'zhaugntai_types','物品状态',1,'未找回',NULL,NULL,'2023-03-06 10:39:12'),(2,'zhaugntai_types','物品状态',2,'已找回',NULL,NULL,'2023-03-06 10:39:12'),(3,'shiwuzhaoling_types','物品类型',1,'物品类型1',NULL,NULL,'2023-03-06 10:39:12'),(4,'shiwuzhaoling_types','物品类型',2,'物品类型2',NULL,NULL,'2023-03-06 10:39:12'),(5,'shiwuzhaoling_types','物品类型',3,'物品类型3',NULL,NULL,'2023-03-06 10:39:12'),(9,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-06 10:39:12'),(10,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-06 10:39:12'),(11,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-06 10:39:12'),(12,'sex_types','性别',1,'男',NULL,NULL,'2023-03-06 10:39:12'),(13,'sex_types','性别',2,'女',NULL,NULL,'2023-03-06 10:39:12'),(14,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-06 10:39:12'),(15,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-06 10:39:12');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',478,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(2,'帖子标题2',1,NULL,'发布内容2',335,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(3,'帖子标题3',2,NULL,'发布内容3',186,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(4,'帖子标题4',2,NULL,'发布内容4',279,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(5,'帖子标题5',3,NULL,'发布内容5',313,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(6,'帖子标题6',3,NULL,'发布内容6',144,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(7,'帖子标题7',2,NULL,'发布内容7',427,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(8,'帖子标题8',2,NULL,'发布内容8',250,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(9,'帖子标题9',3,NULL,'发布内容9',420,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(10,'帖子标题10',3,NULL,'发布内容10',326,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(11,'帖子标题11',1,NULL,'发布内容11',306,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(12,'帖子标题12',1,NULL,'发布内容12',286,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(13,'帖子标题13',2,NULL,'发布内容13',301,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(14,'帖子标题14',2,NULL,'发布内容14',240,1,'2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(17,NULL,NULL,1,'123123',14,2,'2023-03-06 11:27:54',NULL,'2023-03-06 11:27:54'),(18,NULL,1,NULL,'123123',14,2,'2023-03-06 11:32:13',NULL,'2023-03-06 11:32:13');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-06 10:39:24','公告详情1','2023-03-06 10:39:24'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-06 10:39:24','公告详情2','2023-03-06 10:39:24'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-06 10:39:24','公告详情3','2023-03-06 10:39:24'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-06 10:39:24','公告详情4','2023-03-06 10:39:24'),(5,'公告标题5',3,'upload/news5.jpg','2023-03-06 10:39:24','公告详情5','2023-03-06 10:39:24'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-06 10:39:24','公告详情6','2023-03-06 10:39:24'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-06 10:39:24','公告详情7','2023-03-06 10:39:24'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-06 10:39:24','公告详情8','2023-03-06 10:39:24'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-06 10:39:24','公告详情9','2023-03-06 10:39:24'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-06 10:39:24','公告详情10','2023-03-06 10:39:24'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-06 10:39:24','公告详情11','2023-03-06 10:39:24'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-06 10:39:24','公告详情12','2023-03-06 10:39:24'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-06 10:39:24','公告详情13','2023-03-06 10:39:24'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-06 10:39:24','公告详情14','2023-03-06 10:39:24');

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwuzhaoling_uuid_number` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `shiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `zhaugntai_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `shiwuzhaoling_time` timestamp NULL DEFAULT NULL COMMENT '拾遗时间',
  `shiwuzhaoling_dizhi` varchar(200) DEFAULT NULL COMMENT '拾遗地址 Search111',
  `shiwuzhaoling_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='失物信息';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`shiwuzhaoling_uuid_number`,`shiwuzhaoling_name`,`shiwuzhaoling_types`,`zhaugntai_types`,`yonghu_id`,`shiwuzhaoling_photo`,`shiwuzhaoling_time`,`shiwuzhaoling_dizhi`,`shiwuzhaoling_content`,`create_time`) values (1,'1678070364656','物品名称1',1,1,3,'upload/shiwuzhaoling1.jpg','2023-03-06 10:39:24','拾遗地址1','详情1','2023-03-06 10:39:24'),(2,'1678070364629','物品名称2',1,1,3,'upload/shiwuzhaoling2.jpg','2023-03-06 10:39:24','拾遗地址2','详情2','2023-03-06 10:39:24'),(3,'1678070364585','物品名称3',2,2,1,'upload/shiwuzhaoling3.jpg','2023-03-06 10:39:24','拾遗地址3','详情3','2023-03-06 10:39:24'),(4,'1678070364618','物品名称4',3,1,1,'upload/shiwuzhaoling4.jpg','2023-03-06 10:39:24','拾遗地址4','详情4','2023-03-06 10:39:24'),(5,'1678070364642','物品名称5',2,2,3,'upload/shiwuzhaoling5.jpg','2023-03-06 10:39:24','拾遗地址5','详情5','2023-03-06 10:39:24'),(6,'1678070364590','物品名称6',2,1,1,'upload/shiwuzhaoling6.jpg','2023-03-06 10:39:24','拾遗地址6','详情6','2023-03-06 10:39:24'),(7,'1678070364663','物品名称7',3,2,3,'upload/shiwuzhaoling7.jpg','2023-03-06 10:39:24','拾遗地址7','详情7','2023-03-06 10:39:24'),(8,'1678070364587','物品名称8',2,1,2,'upload/shiwuzhaoling8.jpg','2023-03-06 10:39:24','拾遗地址8','详情8','2023-03-06 10:39:24'),(9,'1678070364651','物品名称9',3,1,1,'upload/shiwuzhaoling9.jpg','2023-03-06 10:39:24','拾遗地址9','详情9','2023-03-06 10:39:24'),(10,'1678070364598','物品名称10',2,2,2,'upload/shiwuzhaoling10.jpg','2023-03-06 10:39:24','拾遗地址10','详情10','2023-03-06 10:39:24'),(11,'1678070364573','物品名称11',3,2,3,'upload/shiwuzhaoling11.jpg','2023-03-06 10:39:24','拾遗地址11','详情11','2023-03-06 10:39:24'),(12,'1678070364578','物品名称12',3,2,2,'upload/shiwuzhaoling12.jpg','2023-03-06 10:39:24','拾遗地址12','详情12','2023-03-06 10:39:24'),(13,'1678070364662','物品名称13',2,1,1,'upload/shiwuzhaoling13.jpg','2023-03-06 10:39:24','拾遗地址13','详情13','2023-03-06 10:39:24'),(14,'1678070364658','物品名称14',1,1,2,'upload/shiwuzhaoling14.jpg','2023-03-06 10:39:24','拾遗地址14','详情14','2023-03-06 10:39:24');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'admin','users','管理员','nprjdd20x1c95ue6ewzvum324exdwald','2023-03-06 10:51:19','2023-03-06 12:39:18'),(4,1,'a1','yonghu','用户','bnyce7rd9v06p77q34bxw2i5u6nkfcqz','2023-03-06 11:00:04','2023-03-06 12:30:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-06 10:39:12');

/*Table structure for table `xunwuqishi` */

DROP TABLE IF EXISTS `xunwuqishi`;

CREATE TABLE `xunwuqishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunwuqishi_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `zhaugntai_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `xunwuqishi_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xunwuqishi_time` timestamp NULL DEFAULT NULL COMMENT '丢失时间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwuqishi_dizhi` varchar(200) DEFAULT NULL COMMENT '丢失地址',
  `xunwuqishi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='寻物启事';

/*Data for the table `xunwuqishi` */

insert  into `xunwuqishi`(`id`,`xunwuqishi_name`,`shiwuzhaoling_types`,`zhaugntai_types`,`xunwuqishi_photo`,`xunwuqishi_time`,`yonghu_id`,`xunwuqishi_dizhi`,`xunwuqishi_content`,`create_time`) values (1,'物品名称1',2,1,'upload/xunwuqishi1.jpg','2023-03-06 10:39:24',3,'丢失地址1','详情1','2023-03-06 10:39:24'),(2,'物品名称2',3,2,'upload/xunwuqishi2.jpg','2023-03-06 10:39:24',2,'丢失地址2','详情2','2023-03-06 10:39:24'),(3,'物品名称3',3,2,'upload/xunwuqishi3.jpg','2023-03-06 10:39:24',1,'丢失地址3','详情3','2023-03-06 10:39:24'),(4,'物品名称4',1,2,'upload/xunwuqishi4.jpg','2023-03-06 10:39:24',2,'丢失地址4','详情4','2023-03-06 10:39:24'),(5,'物品名称5',3,2,'upload/xunwuqishi5.jpg','2023-03-06 10:39:24',2,'丢失地址5','详情5','2023-03-06 10:39:24'),(6,'物品名称6',1,1,'upload/xunwuqishi6.jpg','2023-03-06 10:39:24',1,'丢失地址6','详情6','2023-03-06 10:39:24'),(7,'物品名称7',3,1,'upload/xunwuqishi7.jpg','2023-03-06 10:39:24',1,'丢失地址7','详情7','2023-03-06 10:39:24'),(8,'物品名称8',2,2,'upload/xunwuqishi8.jpg','2023-03-06 10:39:24',3,'丢失地址8','详情8','2023-03-06 10:39:24'),(9,'物品名称9',2,2,'upload/xunwuqishi9.jpg','2023-03-06 10:39:24',1,'丢失地址9','详情9','2023-03-06 10:39:24'),(10,'物品名称10',2,1,'upload/xunwuqishi10.jpg','2023-03-06 10:39:24',2,'丢失地址10','详情10','2023-03-06 10:39:24'),(11,'物品名称11',3,2,'upload/xunwuqishi11.jpg','2023-03-06 10:39:24',1,'丢失地址11','详情11','2023-03-06 10:39:24'),(12,'物品名称12',3,1,'upload/xunwuqishi12.jpg','2023-03-06 10:39:24',2,'丢失地址12','详情12','2023-03-06 10:39:24'),(13,'物品名称13',3,1,'upload/xunwuqishi13.jpg','2023-03-06 10:39:24',2,'丢失地址13','详情13','2023-03-06 10:39:24'),(14,'物品名称14',2,1,'upload/xunwuqishi14.jpg','2023-03-06 10:39:24',3,'丢失地址14','详情14','2023-03-06 10:39:24');

/*Table structure for table `xunwuqishi_liuyan` */

DROP TABLE IF EXISTS `xunwuqishi_liuyan`;

CREATE TABLE `xunwuqishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunwuqishi_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwuqishi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='寻物启事留言';

/*Data for the table `xunwuqishi_liuyan` */

insert  into `xunwuqishi_liuyan`(`id`,`xunwuqishi_id`,`yonghu_id`,`xunwuqishi_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(2,2,1,'留言内容2','回复信息2','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(3,3,3,'留言内容3','回复信息3','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(4,4,3,'留言内容4','回复信息4','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(5,5,2,'留言内容5','回复信息5','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(6,6,1,'留言内容6','回复信息6','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(7,7,1,'留言内容7','回复信息7','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(8,8,3,'留言内容8','回复信息8','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(9,9,2,'留言内容9','回复信息9','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(10,10,3,'留言内容10','回复信息10','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(11,11,1,'留言内容11','回复信息11','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(12,12,2,'留言内容12','回复信息12','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(13,13,2,'留言内容13','回复信息13','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24'),(14,14,3,'留言内容14','回复信息14','2023-03-06 10:39:24','2023-03-06 10:39:24','2023-03-06 10:39:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-03-06 10:39:24'),(2,'a2','123456','用户姓名2',2,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-03-06 10:39:24'),(3,'a3','123456','用户姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-03-06 10:39:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
