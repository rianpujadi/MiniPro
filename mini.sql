/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : mini

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-11-11 14:01:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('13');
INSERT INTO `hibernate_sequence` VALUES ('13');

-- ----------------------------
-- Table structure for `tbl_asset`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_asset`;
CREATE TABLE `tbl_asset` (
  `assetid` int(11) NOT NULL AUTO_INCREMENT,
  `assetnumber` varchar(60) NOT NULL,
  `assetname` varchar(200) NOT NULL,
  `category` varchar(60) NOT NULL,
  PRIMARY KEY (`assetid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_asset
-- ----------------------------
INSERT INTO `tbl_asset` VALUES ('11', '2122', 'Laptop', 'Asset Bergerak');
INSERT INTO `tbl_asset` VALUES ('12', '1112', 'Computer', 'Asset Tetap');

-- ----------------------------
-- Table structure for `tbl_member`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE `tbl_member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `membername` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_member
-- ----------------------------
INSERT INTO `tbl_member` VALUES ('8', 'Faiz', '1994-08-17');
INSERT INTO `tbl_member` VALUES ('9', 'Frank Suluh', '1994-10-11');
