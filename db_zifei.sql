/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : db_zifei

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2018-10-22 17:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `aihao` varchar(100) DEFAULT NULL,
  `job` char(100) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `bir` date DEFAULT NULL,
  `zone` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('aaa', 'aaa', 'cy', 'Java', '?', null, null, null, null);
