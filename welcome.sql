/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : welcome

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-09-11 21:43:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` varchar(20) NOT NULL,
  `aname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('0101010', '成电小姐姐');

-- ----------------------------
-- Table structure for `tb_authority`
-- ----------------------------
DROP TABLE IF EXISTS `tb_authority`;
CREATE TABLE `tb_authority` (
  `id` varchar(20) NOT NULL,
  `authority` int(4) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_authority
-- ----------------------------
INSERT INTO `tb_authority` VALUES ('0101010', '1', '123456');

-- ----------------------------
-- Table structure for `tb_class`
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `class_id` varchar(10) NOT NULL,
  `class_name` varchar(10) NOT NULL,
  `mid` varchar(10) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('010101', '计算机一班', '01');

-- ----------------------------
-- Table structure for `tb_college`
-- ----------------------------
DROP TABLE IF EXISTS `tb_college`;
CREATE TABLE `tb_college` (
  `cid` varchar(10) NOT NULL,
  `cname` varchar(10) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_college
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_major`
-- ----------------------------
DROP TABLE IF EXISTS `tb_major`;
CREATE TABLE `tb_major` (
  `mid` varchar(10) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_major
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `class_id` varchar(10) DEFAULT NULL COMMENT '班号',
  `srooom` varchar(15) DEFAULT NULL COMMENT '寝室号',
  `saddress` varchar(50) NOT NULL COMMENT '地址',
  `stel` varchar(15) DEFAULT NULL COMMENT '电话',
  `sname` varchar(20) NOT NULL COMMENT '姓名',
  `Sid` varchar(18) NOT NULL COMMENT '身份证号',
  `Id` varchar(20) NOT NULL COMMENT 'Id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `id` varchar(20) NOT NULL,
  `tid` varchar(18) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `ttel` varchar(20) DEFAULT NULL,
  `cid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
