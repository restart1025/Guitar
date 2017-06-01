/*
Navicat MySQL Data Transfer

Source Server         : RESTART1025
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : misdb

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-05-31 16:53:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guitar
-- ----------------------------
DROP TABLE IF EXISTS `guitar`;
CREATE TABLE `guitar` (
  `serialNumber` varchar(30) NOT NULL DEFAULT '',
  `price` decimal(10,2) DEFAULT NULL,
  `guitarSpec` varchar(50) DEFAULT NULL,
  UNIQUE KEY `awfgawe` (`serialNumber`),
  KEY `sdrvrfv` (`guitarSpec`),
  CONSTRAINT `sdrvrfv` FOREIGN KEY (`guitarSpec`) REFERENCES `guitarspec` (`serialNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guitar
-- ----------------------------
INSERT INTO `guitar` VALUES ('1092', '12995.95', '9f1a0b7a-a1c6-4fc5-a0cd-bcdf48f1afdb');
INSERT INTO `guitar` VALUES ('11277', '3999.95', '80b77982-edac-4594-96a5-e550b3678407');
INSERT INTO `guitar` VALUES ('122784', '5495.95', 'a05c41c4-35f6-41e5-8642-49d26045cc5e');
INSERT INTO `guitar` VALUES ('566-62', '8999.95', 'b5559956-66da-4dd9-8a6f-c75151c5fcf7');
INSERT INTO `guitar` VALUES ('6 29584', '2100.95', '01119922-3cca-423a-aff3-7dbf2d77b3bc');
INSERT INTO `guitar` VALUES ('70108276', '2295.95', '05b81e6f-2a70-4e51-aa5c-67b6abd6e98c');
INSERT INTO `guitar` VALUES ('76531', '6295.95', '6075addd-96b0-40d0-94ec-2ceeb95ba036');
INSERT INTO `guitar` VALUES ('77023', '6275.95', '36f04bba-fe24-48e8-9bcf-a6b2cd3473c8');
INSERT INTO `guitar` VALUES ('82765501', '1890.95', 'bfc9536b-a30b-46dd-8bd5-97b526d57bc6');
INSERT INTO `guitar` VALUES ('V95693', '1499.95', '2c1e198c-d0b5-421c-88b5-310d6ee581f4');

-- ----------------------------
-- Table structure for guitarspec
-- ----------------------------
DROP TABLE IF EXISTS `guitarspec`;
CREATE TABLE `guitarspec` (
  `serialNumber` varchar(50) NOT NULL DEFAULT '',
  `builder` varchar(50) DEFAULT '',
  `model` varchar(50) DEFAULT '',
  `type` varchar(50) DEFAULT '',
  `numStrings` varchar(50) DEFAULT '',
  `backWood` varchar(50) DEFAULT '',
  `topWood` varchar(50) DEFAULT '',
  KEY `serialNumber` (`serialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guitarspec
-- ----------------------------
INSERT INTO `guitarspec` VALUES ('a05c41c4-35f6-41e5-8642-49d26045cc5e', 'Martin', 'D-18', 'acoustic', '6', 'Mahogany', 'Adirondack');
INSERT INTO `guitarspec` VALUES ('6075addd-96b0-40d0-94ec-2ceeb95ba036', 'Martin', 'OM-28', 'acoustic', '6', 'Brazilian_Rosewood', 'Adirondack');
INSERT INTO `guitarspec` VALUES ('05b81e6f-2a70-4e51-aa5c-67b6abd6e98c', 'Gibson', 'Les Paul', 'electric', '6', 'Mahogany', 'Mahogany');
INSERT INTO `guitarspec` VALUES ('bfc9536b-a30b-46dd-8bd5-97b526d57bc6', 'Gibson', 'SG \'61 Reissue', 'electric', '6', 'Mahogany', 'Mahogany');
INSERT INTO `guitarspec` VALUES ('36f04bba-fe24-48e8-9bcf-a6b2cd3473c8', 'Martin', 'D-28', 'acoustic', '6', 'Brazilian_Rosewood', 'Adirondack');
INSERT INTO `guitarspec` VALUES ('9f1a0b7a-a1c6-4fc5-a0cd-bcdf48f1afdb', 'Olson', 'SJ', 'acoustic', '12', 'Indian_Rosewood', 'Cedar');
INSERT INTO `guitarspec` VALUES ('b5559956-66da-4dd9-8a6f-c75151c5fcf7', 'Ryan', 'Cathedral', 'acoustic', '12', 'Cocobolo', 'Cedar');
INSERT INTO `guitarspec` VALUES ('01119922-3cca-423a-aff3-7dbf2d77b3bc', 'PRS', 'Dave Navarro Signature', 'electric', '6', 'Mahogany', 'Maple');
INSERT INTO `guitarspec` VALUES ('80b77982-edac-4594-96a5-e550b3678407', 'Collings', 'CJ', 'acoustic', '6', 'Indian_Rosewood', 'Sitka');
INSERT INTO `guitarspec` VALUES ('2c1e198c-d0b5-421c-88b5-310d6ee581f4', 'Fender', 'Stratocastor', 'electric', '6', 'Alder', 'Alder');
INSERT INTO `guitarspec` VALUES ('48da8e0b-1d90-482f-9530-6a4cd68053e2', 'Gibson', 'te', 'electric', '5', 'Cocobolo', 'Brazilian_Rosewood');
INSERT INTO `guitarspec` VALUES ('8de520e1-c26a-4e0f-b010-473d1ee42c51', 'Fender', '23', 'acoustic', '2', 'Indian_Rosewood', 'Indian_Rosewood');
