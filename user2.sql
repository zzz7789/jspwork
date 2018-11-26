/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : mysql

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2018-11-26 17:13:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user2
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2` (
  `业务账号` varchar(255) DEFAULT NULL,
  `服务器` varchar(255) DEFAULT NULL,
  `总计（单位：小时）` varchar(255) DEFAULT NULL,
  `总费用（元）` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user2
-- ----------------------------
