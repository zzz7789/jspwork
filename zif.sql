/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : db_zifei

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-10-29 20:31:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zif
-- ----------------------------
DROP TABLE IF EXISTS `zif`;
CREATE TABLE `zif` (
  `a` varchar(50) NOT NULL,
  `b` int(20) DEFAULT NULL,
  `c` int(20) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
