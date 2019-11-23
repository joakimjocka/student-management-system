/*
 Navicat Premium Data Transfer

 Source Server         : Class_Exs
 Source Server Type    : MySQL
 Source Server Version : 50132
 Source Host           : localhost:3306
 Source Schema         : student_management

 Target Server Type    : MySQL
 Target Server Version : 50132
 File Encoding         : 65001

 Date: 18/12/2018 15:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students_info
-- ----------------------------
DROP TABLE IF EXISTS `students_info`;
CREATE TABLE `students_info`  (
  `SID` int(9) NOT NULL,
  `Fname` varchar(20) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Lname` varchar(20) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `MID` varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Year` decimal(1, 0) NULL DEFAULT NULL,
  `Email` varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci NULL DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET ascii COLLATE ascii_general_ci NULL DEFAULT NULL,
  `Gender` char(1) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Nationality` varchar(35) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`SID`) USING BTREE,
  INDEX `midForeignKey`(`MID`) USING BTREE,
  CONSTRAINT `midForeignKey` FOREIGN KEY (`MID`) REFERENCES `majors_info` (`MID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = ascii COLLATE = ascii_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of students_info
-- ----------------------------
INSERT INTO `students_info` VALUES (101, 'Joe', 'Mck', 'CS50', 2, 'joemack@gmail.com', '1342388432', 'M', 'Zimbabwe');
INSERT INTO `students_info` VALUES (102, 'Pavese', 'Nola', 'ME49', 2, 'pavesenlola@gmail.com', '123456789', 'M', 'Cameroon');
INSERT INTO `students_info` VALUES (103, 'Claire', 'Paige', 'PH48', 2, 'ClairePaige@gmail.com', '1863845646778', 'F', 'Zimbabwe');
INSERT INTO `students_info` VALUES (104, 'Andrew', 'Chase', 'CE47', 2, 'Chase@yahoo.com', NULL, 'M', 'Zambia');
INSERT INTO `students_info` VALUES (105, 'Ishmael', 'Mussa', 'CE47', 1, 'Ishmaelmusa@gmail.com', '123453408457', 'M', 'Zimbabwe');
INSERT INTO `students_info` VALUES (106, 'Shadreck', 'Zoro', 'CE47', 2, 'shallyzoro@gmail.com', '133443646463462', 'M', 'Zambia');
INSERT INTO `students_info` VALUES (107, 'Niza', 'Moyo', 'CE47', 2, 'nimoyo@gmail.com', '1324366544937', 'M', 'Zambia');
INSERT INTO `students_info` VALUES (108, 'Abi', 'Abi', 'EE46', 2, 'abix2@gmail.com', '18623646466', 'M', 'Tanzania');
INSERT INTO `students_info` VALUES (109, 'Greggory', 'Kane', 'CE47', 2, 'kanegregg@gmail.com', NULL, 'M', 'Tanzania');

SET FOREIGN_KEY_CHECKS = 1;
