/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : dianying

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-09-24 07:55:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsname` varchar(12) DEFAULT NULL,
  `basefee` varchar(12) DEFAULT NULL,
  `ratefee` varchar(12) DEFAULT NULL,
  `newsdesc` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('7', '7', '7', '7');
INSERT INTO `news` VALUES ('f', 'f', 'f', 'f');
INSERT INTO `news` VALUES ('ff', 'ff', 'ff', 'ff');
INSERT INTO `news` VALUES ('', '', '', '');
INSERT INTO `news` VALUES ('fff', 'f', 'ff', 'ff');
INSERT INTO `news` VALUES ('f', 'f', 'f', 'f');
INSERT INTO `news` VALUES ('1', '1', '1', '1');
INSERT INTO `news` VALUES ('1', '1', '1', '1');
INSERT INTO `news` VALUES ('11', '11', '11', '11');
INSERT INTO `news` VALUES ('', '', '', '');
INSERT INTO `news` VALUES ('ffff', 'f', 'ff', 'f');
INSERT INTO `news` VALUES ('fasd', 'aas', 'aa', 'aa');
INSERT INTO `news` VALUES ('1', '1', '1', '1');
INSERT INTO `news` VALUES ('1', '1', '1', '11');
INSERT INTO `news` VALUES ('w', '	w		', 'w', 'w');
INSERT INTO `news` VALUES ('1', '	1		', '1', '111');
INSERT INTO `news` VALUES ('11', '		11', '11', '11');
INSERT INTO `news` VALUES ('55', '	55		', '55', '55');
INSERT INTO `news` VALUES ('r', '	r		', 'r', 'r');
INSERT INTO `news` VALUES ('r', '	r		', 'r', 'r');
INSERT INTO `news` VALUES ('11', '		1	', '1', '1');
INSERT INTO `news` VALUES ('e', 'e			', 'e', 'e');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `nation` varchar(30) DEFAULT NULL,
  `userquestion` varchar(30) DEFAULT NULL,
  `permission` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '12', '男', '12', '12', '2000-01-01', '其他', '你的学号是', ' 管理员管理账务查询', '河南-商丘市-虞城');
INSERT INTO `user` VALUES ('8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `user` VALUES ('fe', 'df', 'df', '男', 'aa', 'a', '2000-01-01', '其他', '你的学号是', ' 管理员管理账务查询', '河南-商丘市-虞城');
INSERT INTO `user` VALUES ('j', 'j', 'j', '男', 'j', 'j', '2000-01-01', '其他', '你的学号是', ' 管理员管理账务查询', '河南-商丘市-虞城');
INSERT INTO `user` VALUES ('w', 'a', 'a', '男', 'a', 'a', '2000-01-01', '回族', '你的学号是', ' 管理员管理', 'é??é???±?-??????-è?????');
INSERT INTO `user` VALUES ('2', '2222', '2', '男', '2', '2', '2006-01-01', '汉族', '你的学号是', ' 管理员管理', '河南省-郑州-虞城');
INSERT INTO `user` VALUES ('a', 'a', 'a', '男', 'a', 'a', '2000-04-01', '其他', '你的学号是', ' 管理员管理资费管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('a', 'a', 'a', '男', 'a', 'a', '2000-01-01', '其他', '你的学号是', ' 管理员管理资费管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('9', '9', '9', '男', '9', '9', '2003-01-01', '汉族', '你的父亲是', ' 管理员管理资费管理用户管理', '山东省-商丘-虞城');
INSERT INTO `user` VALUES ('e', 'e', 'e', '男', 'email', 'e', '2000-01-01', '汉族', '你的学号是', ' 管理员管理用户管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('fff', 'f', 'f', '男', 'f', 'f', '2000-01-01', '汉族', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', 'e', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', 'e', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '8', '8', '男', '88', '8', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('f', 'f', 'f', '男', 'f', 'f', '2014-01-01', '其他', '你的学号是', ' 管理员管理账务查询账单查询', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('da', 'd', 'd', '男', 'd', 'd', '2000-01-01', '其他', '你的学号是', ' 管理员管理资费管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('', '', '', '男', '', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('t', 't', 'trrrrrrrrrr', '男', 't', 't', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('12', '121', '12', '男', '12', '12', '2000-01-01', '回族', '你的学号是', ' 管理员管理用户管理', '河南-商丘-虞城');
INSERT INTO `user` VALUES ('1', '', '', '男', '1', '', '2000-01-01', '其他', '你的学号是', ' 管理员管理', '河南-商丘-虞城');

-- ----------------------------
-- Table structure for usermanage
-- ----------------------------
DROP TABLE IF EXISTS `usermanage`;
CREATE TABLE `usermanage` (
  `account` varchar(12) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `email` varchar(12) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage
-- ----------------------------
INSERT INTO `usermanage` VALUES ('11', '11', '1', '11', 'null-null-2017-1-1');
INSERT INTO `usermanage` VALUES ('21', '21', '2', '2', '2017-1-2');
INSERT INTO `usermanage` VALUES ('31', '31', '3', '3', '2017-1-3');
INSERT INTO `usermanage` VALUES ('41', '41', '4', '4', '2017-1-4');
INSERT INTO `usermanage` VALUES ('51', '51', '5', '5', '2017-1-5');
INSERT INTO `usermanage` VALUES ('61', '61', '6', '6', '2017-1-6');
INSERT INTO `usermanage` VALUES ('71', '71', '7', '7', '2017-1-7');
INSERT INTO `usermanage` VALUES ('81', '81', '8', '8', '2017-1-8');
INSERT INTO `usermanage` VALUES ('91', '91', '9', '9', '2017-1-9');
INSERT INTO `usermanage` VALUES ('101', '101', '10', '10', '2017-1-10');
INSERT INTO `usermanage` VALUES ('1', '1', '1', '1', '2017-1-1');
INSERT INTO `usermanage` VALUES ('2', '2', '2', '2', '2017-1-2');
INSERT INTO `usermanage` VALUES ('3', '3', '3', '3', '2017-1-3');
INSERT INTO `usermanage` VALUES ('4', '4', '4', '4', '2017-1-4');
INSERT INTO `usermanage` VALUES ('5', '5', '5', '5', '2017-1-5');
INSERT INTO `usermanage` VALUES ('6', '6', '6', '6', '2017-1-6');
INSERT INTO `usermanage` VALUES ('7', '7', '7', '7', '2017-1-7');
INSERT INTO `usermanage` VALUES ('8', '8', '8', '8', '2017-1-8');
INSERT INTO `usermanage` VALUES ('9', '9', '9', '9', '2017-1-9');
INSERT INTO `usermanage` VALUES ('10', '10', '10', '10', '2017-1-10');
INSERT INTO `usermanage` VALUES ('12244', '44', '4', '4', 'null-null-2017-1-1');
INSERT INTO `usermanage` VALUES ('10', '付慧芳', '18838928050', '18838928050', '2017-6-23');
INSERT INTO `usermanage` VALUES ('7', '7', '7', '7', '7');
INSERT INTO `usermanage` VALUES ('q', 'q', 'q', 'q', 'q');
INSERT INTO `usermanage` VALUES ('77', '7', '7', '7', '7');
INSERT INTO `usermanage` VALUES ('f', 'f', 'f', 'f', 'f');
INSERT INTO `usermanage` VALUES ('4', '4', '4', '4', '4');
INSERT INTO `usermanage` VALUES ('f', 'ff', 'fff', 'f', 'f');
INSERT INTO `usermanage` VALUES ('122', '121', '121', '121', '121');
INSERT INTO `usermanage` VALUES ('aaa', 'aaa', 'aaa', 'aaa', 'aaa');
INSERT INTO `usermanage` VALUES ('122', '111', '1', '12', '1');
INSERT INTO `usermanage` VALUES ('122', '2', '2', '2', '2');
INSERT INTO `usermanage` VALUES ('1', '1', '1', '1', '123');
INSERT INTO `usermanage` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `usermanage` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `usermanage` VALUES ('122', '123', '123', '123', '2017-9-8');
INSERT INTO `usermanage` VALUES ('付', 'f', 'f', 'f', 'f');
INSERT INTO `usermanage` VALUES ('fff', 'ff', 'f', 'f', 'f');
INSERT INTO `usermanage` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `usermanage` VALUES ('w', 'w', '2', '2', '2');
INSERT INTO `usermanage` VALUES ('1', '11', '11', '1', '1');
INSERT INTO `usermanage` VALUES ('1', '11', '11', '1', '1');
INSERT INTO `usermanage` VALUES ('3', '3', '3', '3', '3');
