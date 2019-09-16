/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : jiaowumanage

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-06-09 11:11:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classes`
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'dfsdfsadf',
  `name` varchar(50) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', 'java11班', '0', '0');
INSERT INTO `classes` VALUES ('2', 'Java2班', '1', '0');
INSERT INTO `classes` VALUES ('3', 'UI一班', '1', '0');
INSERT INTO `classes` VALUES ('4', 'UI二班', '1', '0');
INSERT INTO `classes` VALUES ('5', 'Java高级班', '0', '0');
INSERT INTO `classes` VALUES ('6', '6', '1', '0');
INSERT INTO `classes` VALUES ('15', '软件工程4班', '0', null);

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT '0',
  `shenhe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '模拟电路12', '0', '1');
INSERT INTO `course` VALUES ('5', '线性代数', '0', '1');
INSERT INTO `course` VALUES ('7', 'Java', '1', '1');
INSERT INTO `course` VALUES ('8', 'c#', '1', '1');
INSERT INTO `course` VALUES ('9', 'java基础', '0', '1');
INSERT INTO `course` VALUES ('10', '毛泽东思想', '1', '1');
INSERT INTO `course` VALUES ('11', 'web课程12', '0', '1');
INSERT INTO `course` VALUES ('12', '面向对象', '0', '1');
INSERT INTO `course` VALUES ('13', '数据库设计与实现', '0', '1');
INSERT INTO `course` VALUES ('14', '操作系统', '0', '1');
INSERT INTO `course` VALUES ('15', '大数据', '0', null);
INSERT INTO `course` VALUES ('16', 'AI人工智能', '0', '1');
INSERT INTO `course` VALUES ('17', 'PS课程', '0', '1');
INSERT INTO `course` VALUES ('18', '程序设计', '0', '1');

-- ----------------------------
-- Table structure for `ctc`
-- ----------------------------
DROP TABLE IF EXISTS `ctc`;
CREATE TABLE `ctc` (
  `couid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `claid` int(11) NOT NULL,
  PRIMARY KEY (`couid`,`tid`,`claid`),
  KEY `tid` (`tid`),
  KEY `claid` (`claid`),
  KEY `couid` (`couid`),
  CONSTRAINT `claid` FOREIGN KEY (`claid`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `couid` FOREIGN KEY (`couid`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ctc
-- ----------------------------
INSERT INTO `ctc` VALUES ('1', '1', '2');
INSERT INTO `ctc` VALUES ('1', '1', '3');
INSERT INTO `ctc` VALUES ('1', '1', '4');
INSERT INTO `ctc` VALUES ('1', '1', '5');
INSERT INTO `ctc` VALUES ('5', '1', '1');
INSERT INTO `ctc` VALUES ('5', '1', '2');
INSERT INTO `ctc` VALUES ('5', '1', '4');
INSERT INTO `ctc` VALUES ('5', '1', '5');
INSERT INTO `ctc` VALUES ('7', '1', '1');
INSERT INTO `ctc` VALUES ('7', '1', '2');
INSERT INTO `ctc` VALUES ('7', '1', '3');
INSERT INTO `ctc` VALUES ('7', '1', '4');
INSERT INTO `ctc` VALUES ('7', '1', '5');
INSERT INTO `ctc` VALUES ('7', '1', '15');
INSERT INTO `ctc` VALUES ('8', '1', '4');
INSERT INTO `ctc` VALUES ('8', '1', '5');
INSERT INTO `ctc` VALUES ('8', '1', '15');
INSERT INTO `ctc` VALUES ('9', '1', '4');
INSERT INTO `ctc` VALUES ('9', '1', '5');
INSERT INTO `ctc` VALUES ('9', '1', '6');
INSERT INTO `ctc` VALUES ('10', '1', '2');
INSERT INTO `ctc` VALUES ('10', '1', '3');
INSERT INTO `ctc` VALUES ('10', '1', '5');
INSERT INTO `ctc` VALUES ('11', '1', '15');
INSERT INTO `ctc` VALUES ('12', '1', '1');
INSERT INTO `ctc` VALUES ('14', '1', '1');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0',
  `cid` int(11) DEFAULT '0',
  `tid` int(11) DEFAULT NULL,
  `pgrade` double DEFAULT NULL,
  `kgrade` double DEFAULT NULL,
  `zgrade` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid2` (`cid`),
  KEY `tid2` (`tid`),
  KEY `sid2` (`sid`),
  CONSTRAINT `cid2` FOREIGN KEY (`cid`) REFERENCES `course` (`id`),
  CONSTRAINT `sid2` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tid2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('7', '1', '1', '1', '23', '45', '68');
INSERT INTO `grade` VALUES ('8', '1', '7', '1', '34', '54', '88');
INSERT INTO `grade` VALUES ('9', '1', '10', '1', '33', '55', '88');
INSERT INTO `grade` VALUES ('10', '1', '1', '1', '89', '78', '167');
INSERT INTO `grade` VALUES ('11', '27', '10', '1', '34', '67', '89');
INSERT INTO `grade` VALUES ('12', '1', '7', '1', '86', '90', '176');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `cId1` (`cid`),
  KEY `tId1` (`tid`),
  CONSTRAINT `cId1` FOREIGN KEY (`cid`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sId1` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tId1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('1', '1', '1');
INSERT INTO `sc` VALUES ('1', '1', '7');
INSERT INTO `sc` VALUES ('1', '1', '10');
INSERT INTO `sc` VALUES ('27', '1', '5');
INSERT INTO `sc` VALUES ('27', '1', '7');
INSERT INTO `sc` VALUES ('27', '1', '12');
INSERT INTO `sc` VALUES ('27', '1', '14');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `classid` int(30) DEFAULT NULL,
  `usertype` int(11) DEFAULT '2',
  `password` varchar(30) DEFAULT NULL,
  `loginname` varchar(30) DEFAULT NULL,
  `files` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_c` (`classid`),
  CONSTRAINT `classid` FOREIGN KEY (`classid`) REFERENCES `classes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'ahui1', '1', '山西', '15635354675', '1', '2', null, null, null);
INSERT INTO `student` VALUES ('8', '赵璇', '1', '辅导费但V发tyrytttttttttttttttttt', '123432133', '1', '2', 'aaa', 'zx', null);
INSERT INTO `student` VALUES ('9', '张宇航111', '1', '事实上', '11111', '5', '2', null, null, null);
INSERT INTO `student` VALUES ('21', '22', '0', '2222', '222', '1', '2', '22222', '22', null);
INSERT INTO `student` VALUES ('27', '张三', '0', '江苏大学', '12345678912', '1', '2', '123456', 'zhangsan', null);
INSERT INTO `student` VALUES ('28', '22', '0', 'sss', '111', '1', '2', 'eee', '22', null);
INSERT INTO `student` VALUES ('29', 'ee', '0', 'ffffff', '15635385193', '1', '2', 'hjjjj', 'yyy', null);
INSERT INTO `student` VALUES ('38', 'wwww', '0', 'www', '15635385193', '1', '2', 'aaa', 'admin', 'myfile');
INSERT INTO `student` VALUES ('43', 'ddd', '1', 'ddd', 'dd', '2', '2', 'ddd', 'dd', null);
INSERT INTO `student` VALUES ('45', '张三同学', '0', '大连东软信息学院', '13354268903', '15', '2', 'admin12345', 'admin', null);
INSERT INTO `student` VALUES ('46', '余长权', '0', '大连东软', '17614052024', '15', null, '123456', 'yu', null);
INSERT INTO `student` VALUES ('47', '夏生', '0', '大连东软', '18920999298', '1', '2', '123456', 'xia', null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `usertype` int(11) DEFAULT '3',
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(30) DEFAULT 'aaaaaa',
  `workId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '王老师12', '3', 'wang', '123456', '12');
INSERT INTO `teacher` VALUES ('4', '赵老师', '3', 'zhao', '123456', null);
INSERT INTO `teacher` VALUES ('5', '夏老师', '3', 'xia', '123456', null);
INSERT INTO `teacher` VALUES ('6', '马老师', '3', 'ma', '123456', null);
INSERT INTO `teacher` VALUES ('10', '陈老师', '3', 'chen', '123456', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1');
INSERT INTO `user` VALUES ('2', 'zhaojing', 'aaa', '1');
