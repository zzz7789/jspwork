/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : db_server

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2018-11-26 17:09:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_zhangdan
-- ----------------------------
DROP TABLE IF EXISTS `db_zhangdan`;
CREATE TABLE `db_zhangdan` (
  `账务账号` varchar(255) DEFAULT NULL,
  `登陆总时间（小时）` varchar(255) DEFAULT NULL,
  `费用（元）` varchar(255) DEFAULT NULL,
  `状态` varchar(255) DEFAULT NULL,
  `明细账` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_zhangdan
-- ----------------------------
INSERT INTO `db_zhangdan` VALUES ('李明', '40', '96.00', '开通', '明细');
INSERT INTO `db_zhangdan` VALUES ('jin ', '60', '176.00', '开通', '明细');
INSERT INTO `db_zhangdan` VALUES ('dvfd ', '45', '105.00', '开通', '明细');
INSERT INTO `db_zhangdan` VALUES ('vcdg', '65', '203.00', '开通', '明细');
INSERT INTO `db_zhangdan` VALUES ('vcvbd', '30', '70.00', '开通', '明细');
INSERT INTO `db_zhangdan` VALUES ('gnjh', '25', '57.00', '开通', '明细');
