/*
 Navicat MySQL Data Transfer

 Source Server         : 172_16_132_128
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : 172.16.132.128
 Source Database       : notification

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : utf-8

 Date: 09/18/2019 10:08:07 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time DEFAULT NULL COMMENT '上课时间',
  `end_time` time DEFAULT NULL COMMENT '下课时间',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `teacher` varchar(255) DEFAULT NULL COMMENT '上课老师',
  `classroom` varchar(255) DEFAULT NULL COMMENT '上课教室',
  `begin_time` datetime DEFAULT NULL COMMENT '课程开始时间',
  `finish_time` datetime DEFAULT NULL COMMENT '课程结束时间',
  `isSingle` varchar(255) DEFAULT NULL COMMENT '是否单周上课',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', '08:00:00', '10:00:00', 'class1', 'teacher1', '2111', '2019-09-01 11:23:31', '2019-12-31 11:23:50', '0'), ('2', '10:10:00', '12:10:00', 'class2', 'teacher2', '2111', '2019-09-01 11:23:31', '2019-12-31 11:23:50', '0');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
