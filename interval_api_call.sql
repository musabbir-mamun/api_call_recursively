/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : interval_api_call

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 01/10/2023 17:33:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rech_req
-- ----------------------------
DROP TABLE IF EXISTS `rech_req`;
CREATE TABLE `rech_req`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double(10, 2) NOT NULL DEFAULT 0.00,
  `operator` enum('GP','BL','RB','TT','AT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rech_req
-- ----------------------------
INSERT INTO `rech_req` VALUES (1, 10.00, 'GP', 0);
INSERT INTO `rech_req` VALUES (2, 20.00, 'GP', 0);
INSERT INTO `rech_req` VALUES (3, 15.00, 'BL', 0);
INSERT INTO `rech_req` VALUES (4, 25.00, 'BL', 0);
INSERT INTO `rech_req` VALUES (5, 18.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (6, 28.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (7, 28.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (8, 28.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (9, 252.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (10, 10.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (11, 50.00, 'RB', 0);
INSERT INTO `rech_req` VALUES (12, 80.00, 'AT', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Superadmin', 'admin@admin.com', '0175555555', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-09 12:17:37', NULL);
INSERT INTO `users` VALUES (2, 'Musabbir', 'musabbir.mamun@apsissolutions.com', '01726315133', '$2y$10$o/Ou9gTud5F7oujt4Qk3oeBEatsH8OcCw0MoDyfYToZQIZx6/1e1q', '2020-12-09 12:17:37', NULL);
INSERT INTO `users` VALUES (82, 'admin', 'aa@bb.com', '01862482532', '$2a$04$rvKiBzKBSyy1VbShLpESJ.S1lyTYjzbelZzemFS.e7Kq4z7z4aRmi', '2021-01-01 19:42:54', NULL);

SET FOREIGN_KEY_CHECKS = 1;
