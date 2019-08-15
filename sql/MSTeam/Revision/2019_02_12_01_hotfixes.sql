/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50509
Source Host           : 127.0.0.1:3306
Source Database       : hotfixes

Target Server Type    : MYSQL
Target Server Version : 50509
File Encoding         : 65001

Date: 2019-02-01 20:02:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `relic_slot_tier_requirement`
-- ----------------------------
DROP TABLE IF EXISTS `relic_slot_tier_requirement`;
CREATE TABLE `relic_slot_tier_requirement` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RelicIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RelicTier` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relic_slot_tier_requirement
-- ----------------------------
