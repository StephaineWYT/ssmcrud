/*
 Navicat Premium Data Transfer

 Source Server         : Stephanie
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : springdemo

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 21/08/2019 15:02:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (40);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `paper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'paperID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'paper名称',
  `number` int(11) NOT NULL COMMENT 'paper数量',
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'paper描述',
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'paper表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, '测试', 20, '见附件');
INSERT INTO `paper` VALUES (2, '深度学习', 3, 'dldldl');
INSERT INTO `paper` VALUES (3, '大数据', 4, 'bdbdbd');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `t_id` bigint(20) NOT NULL,
  `t_age` int(255) NULL DEFAULT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 12, 'zhangsan', '胜利小学');
INSERT INTO `student` VALUES (7, 17, 'wangwu', '胜利高中');
INSERT INTO `student` VALUES (10, 1, 'yiyi', 'null');
INSERT INTO `student` VALUES (11, 3, 'chener', 'kindergarten');
INSERT INTO `student` VALUES (12, 13, 'lisi', 'senior');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reg_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (35, 'bibi', 'bb@126.com', 'bb', 'bb123456', '2019年7月31日 下午04时26分00秒', 0);
INSERT INTO `user` VALUES (36, 'cc', 'cc@126.com', 'cc', 'cc123456', '2019年7月31日 下午04时26分00秒', 0);

-- ----------------------------
-- Table structure for user_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail`  (
  `id` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_dm7hrxg9mvrb92v1p3o6wg97u`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_detail
-- ----------------------------
INSERT INTO `user_detail` VALUES (38, '秋雨村', '旅游', 36);
INSERT INTO `user_detail` VALUES (39, '杏花村', '打球', 35);

SET FOREIGN_KEY_CHECKS = 1;
