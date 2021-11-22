/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 22/11/2021 10:44:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET cp1251 COLLATE cp1251_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET cp1251 COLLATE cp1251_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = cp1251 COLLATE = cp1251_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (1, 'Лев', 'Толстой');
INSERT INTO `authors` VALUES (2, 'Александр', 'Грибоедов');
INSERT INTO `authors` VALUES (3, 'Денис', 'Фонвизин');

-- ----------------------------
-- Table structure for authors_books
-- ----------------------------
DROP TABLE IF EXISTS `authors_books`;
CREATE TABLE `authors_books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_author` int NULL DEFAULT NULL,
  `id_book` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_book`(`id_book`) USING BTREE,
  INDEX `id_author`(`id_author`) USING BTREE,
  CONSTRAINT `id_author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_book` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = cp1251 COLLATE = cp1251_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors_books
-- ----------------------------
INSERT INTO `authors_books` VALUES (1, 1, 1);
INSERT INTO `authors_books` VALUES (2, 2, 2);
INSERT INTO `authors_books` VALUES (3, 3, 2);

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET cp1251 COLLATE cp1251_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = cp1251 COLLATE = cp1251_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Война и Мир');
INSERT INTO `books` VALUES (2, 'Горе от ума. Недоросль');

SET FOREIGN_KEY_CHECKS = 1;
