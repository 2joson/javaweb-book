/*
 Navicat Premium Data Transfer

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : atguigu

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 06/08/2023 22:50:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(11, 2) NOT NULL,
  `sales` int(0) NOT NULL,
  `stock` int(0) NOT NULL,
  `img_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES (1, 'java从门到放', '国哥', 50.00, 9999, 9, 'static/img/default.gif');
INSERT INTO `t_book` VALUES (4, '木虚肉盖饭', '小胖', 16.00, 1001, 49, 'static/img/default.gif');
INSERT INTO `t_book` VALUES (6, '蛋炒饭', '周星星', 9.90, 12, 53, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (7, '赌神', '龙伍', 66.50, 125, 535, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (8, 'Java编程思想', '阳哥', 99.50, 47, 36, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (9, 'JavaScript从入门到精通', '婷姐', 9.90, 85, 95, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (10, 'cocos2d-x游戏编程入门', '国哥', 49.00, 52, 62, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (11, 'C语言程序设计', '谭浩强', 28.00, 52, 74, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (12, 'Lua语言程序设计', '雷丰阳', 51.50, 48, 82, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (13, '西游记', '罗贯中', 12.00, 19, 9999, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (14, '水浒传', '华仔', 33.05, 22, 88, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (15, '操作系统原理', '刘优', 133.05, 122, 188, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (16, '数据结构 java版', '封大神', 173.15, 21, 81, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (17, 'UNIX高级环境编程', '乐天', 99.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (18, 'javaScript高级编程', '国哥', 69.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (19, '大话设计模式', '国哥', 89.15, 20, 10, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (20, '人月神话', '刚哥ge', 88.15, 20, 80, 'static/img/default.gif');
INSERT INTO `t_book` VALUES (31, 'jjjjjj', 'll', 22.00, 99777, 888, 'static/img/default.gif');

-- ----------------------------
-- Table structure for t_book_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_book_copy1`;
CREATE TABLE `t_book_copy1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(11, 2) NOT NULL,
  `sales` int(0) NOT NULL,
  `stock` int(0) NOT NULL,
  `img_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book_copy1
-- ----------------------------
INSERT INTO `t_book_copy1` VALUES (1, 'java从入门到放弃', '国哥', 80.00, 9999, 9, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (2, '数据结构与算法', '严敏君', 78.50, 6, 13, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (3, '怎样拐跑别人的媳妇', '龙伍', 68.00, 99999, 52, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (4, '木虚肉盖饭', '小胖', 16.00, 1000, 50, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (5, 'C++编程思想', '刚哥', 45.50, 14, 95, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (6, '蛋炒饭', '周星星', 9.90, 12, 53, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (7, '赌神', '龙伍', 66.50, 125, 535, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (8, 'Java编程思想', '阳哥', 99.50, 47, 36, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (9, 'JavaScript从入门到精通', '婷姐', 9.90, 85, 95, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (10, 'cocos2d-x游戏编程入门', '国哥', 49.00, 52, 62, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (11, 'C语言程序设计', '谭浩强', 28.00, 52, 74, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (12, 'Lua语言程序设计', '雷丰阳', 51.50, 48, 82, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (13, '西游记', '罗贯中', 12.00, 19, 9999, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (14, '水浒传', '华仔', 33.05, 22, 88, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (15, '操作系统原理', '刘优', 133.05, 122, 188, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (16, '数据结构 java版', '封大神', 173.15, 21, 81, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (17, 'UNIX高级环境编程', '乐天', 99.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (18, 'javaScript高级编程', '国哥', 69.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (19, '大话设计模式', '国哥', 89.15, 20, 10, 'static/img/default.jpg');
INSERT INTO `t_book_copy1` VALUES (20, '人月神话', '刚哥', 88.15, 20, 80, 'static/img/default.jpg');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `price` decimal(11, 2) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('16811929248651', '2023-04-11 14:02:05', 84.00, 0, 1);
INSERT INTO `t_order` VALUES ('16814504241331', '2023-04-14 13:33:44', 68.00, 0, 1);
INSERT INTO `t_order` VALUES ('16814697880251', '2023-04-14 18:56:28', 146.50, 0, 1);

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  `price` decimal(11, 2) NULL DEFAULT NULL,
  `total_price` decimal(11, 2) NULL DEFAULT NULL,
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES (10, '怎样拐跑别人的媳妇', 1, 68.00, 68.00, '16811929248651');
INSERT INTO `t_order_item` VALUES (11, '木虚肉盖饭', 1, 16.00, 16.00, '16811929248651');
INSERT INTO `t_order_item` VALUES (12, '怎样拐跑别人的媳妇', 1, 68.00, 68.00, '16814504241331');
INSERT INTO `t_order_item` VALUES (13, '怎样拐跑别人的媳妇', 1, 68.00, 68.00, '16814697880251');
INSERT INTO `t_order_item` VALUES (14, '数据结构与算法', 1, 78.50, 78.50, '16814697880251');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 'admin@atguigu.com');
INSERT INTO `t_user` VALUES (2, 'yyyyy', '123456', '1111111@qq.ggg');
INSERT INTO `t_user` VALUES (3, 'ddddd', '123456', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (4, 'fffff', '123456', '123456@11.com');
INSERT INTO `t_user` VALUES (5, 'wwwww', '123456', '1111111@qq.ggg');
INSERT INTO `t_user` VALUES (6, 'maxianchen', '123456', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (7, 'xianchen', '123456', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (8, 'xiann', '123456', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (9, 'kangjie', '12345', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (10, 'aaaaa', '12345', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (11, 'bbbbb', '12345', 'qew13821@gmail.com');
INSERT INTO `t_user` VALUES (12, 'qqqqq', '12345', '2068363905@qq.com');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20060310', '张德胜', '000000', '男', '教授、博士生导师、研究院副院长');
INSERT INTO `teacher` VALUES ('20060311', '李东强', '000000', '男', '欢迎来自计算机/电子/自动化等相关专业的本科生提前进入实验室共同学习进步或报考硕士研究生！带着愉悦的心情工作生活！');
INSERT INTO `teacher` VALUES ('20060312', '刘晨', '000000', '女', '欢迎来自计算机专业的同学报考硕士研究生！');
INSERT INTO `teacher` VALUES ('20060313', '李勇', '000000', '男', '硕士研究生导师');
INSERT INTO `teacher` VALUES ('20060314', '王敏', '000000', '女', '讲师，硕导');
INSERT INTO `teacher` VALUES ('20060315', '张成', '000000', '男', '三级教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060316', '刘心', '000000', '女', '二级教授、学部副部长');
INSERT INTO `teacher` VALUES ('20060317', '余闵', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060318', '晏晓晨', '000000', '女', '计算机系副教授、硕导');
INSERT INTO `teacher` VALUES ('20060319', '叶溪城', '000000', '男', '国家级高层次专家');
INSERT INTO `teacher` VALUES ('20060320', '于采薇', '000000', '女', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060321', '孔羽心', '000000', '女', '硕导');
INSERT INTO `teacher` VALUES ('20060322', '孟德馨', '000000', '女', '教授、硕导');
INSERT INTO `teacher` VALUES ('20060323', '张辛月', '000000', '女', '计算机系讲师');
INSERT INTO `teacher` VALUES ('20060324', '李海花', '000000', '女', '硕导');
INSERT INTO `teacher` VALUES ('20060325', '刘流', '000000', '男', '教授、博士生导师、研究院副院长');
INSERT INTO `teacher` VALUES ('20060326', '余亦', '000000', '女', '博士生导师');
INSERT INTO `teacher` VALUES ('20060327', '刘时初', '000000', '男', '欢迎来自网络空间安全专业的同学报考硕士研究生！');
INSERT INTO `teacher` VALUES ('20060328', '岳饮冰', '000000', '女', '教授');
INSERT INTO `teacher` VALUES ('20060329', '李思颖', '000000', '女', '教授、博士生导师、研究院院长');
INSERT INTO `teacher` VALUES ('20060330', '余莹', '000000', '女', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060331', '张德文', '000000', '男', '欢迎来自信息安全专业的同学报考硕士研究生！');
INSERT INTO `teacher` VALUES ('20060332', '杨子俊', '000000', '男', '教授、硕导');
INSERT INTO `teacher` VALUES ('20060333', '刘阔', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060334', '吴文卿', '000000', '男', '国家高层次专家');
INSERT INTO `teacher` VALUES ('20060335', '颜一', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060336', '张德胜', '000000', '男', '欢迎来自保密专业的同学报考硕士研究生');
INSERT INTO `teacher` VALUES ('20060337', '李桂芳', '000000', '女', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060338', '余露', '000000', '女', '希望大家带着愉悦的心情工作或学习！');
INSERT INTO `teacher` VALUES ('20060339', '张雪坤', '000000', '男', '每天都保持积极的心态，常常会让效率更高');
INSERT INTO `teacher` VALUES ('20060340', '李莫酬', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060341', '杨柳', '000000', '女', '欢迎来自软件工程专业的同学报考本人硕士研究生，方向不限');
INSERT INTO `teacher` VALUES ('20060342', '冷冰冰', '000000', '女', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060343', '刘汝佳', '000000', '女', '博士生导师');
INSERT INTO `teacher` VALUES ('20060344', '朱振武', '000000', '男', '欢迎计算机专业的同学参与实验室科研活动或报考研究生');
INSERT INTO `teacher` VALUES ('20060345', '谭浩强', '000000', '男', '教授、硕导');
INSERT INTO `teacher` VALUES ('20060346', '金心艾', '000000', '女', '欢迎计算机、保密等专业的同学参与实验室科研活动或报考本人研究生，方向不限');
INSERT INTO `teacher` VALUES ('20060347', '林砚秋', '000000', '女', '教授');
INSERT INTO `teacher` VALUES ('20060348', '库里里', '000000', '男', '欢迎计算机、软件工程等专业的同学参与实验室科研活动或报考本人研究生');
INSERT INTO `teacher` VALUES ('20060349', '陈卓杨', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060350', '齐铭羽', '000000', '男', '在忙碌的同时，也要关注身心健康');
INSERT INTO `teacher` VALUES ('20060351', '刘超', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060352', '王培杵', '000000', '男', '多多运动，才能保持健康的状态');
INSERT INTO `teacher` VALUES ('20060353', '沈方予', '000000', '男', '欢迎同学们和我一起探讨问题，有问必答');
INSERT INTO `teacher` VALUES ('20060354', '徐颖惠', '000000', '女', '欢迎来自自动化的同学报考本人的硕士研究生！');
INSERT INTO `teacher` VALUES ('20060355', '赵孟凡', '000000', '男', '欢迎大家在课余时间跟我一起参加跑步活动，身体是革命的本钱');
INSERT INTO `teacher` VALUES ('20060356', '杨兆丰', '000000', '男', '教授、博士生导师');
INSERT INTO `teacher` VALUES ('20060357', '王奇兰', '000000', '女', '教授');
INSERT INTO `teacher` VALUES ('20060358', '汪月婷', '000000', '女', '博士生导师');
INSERT INTO `teacher` VALUES ('20060359', '陈百合', '000000', '女', '国家高层次专家');
INSERT INTO `teacher` VALUES ('20060360', '王卓然', '000000', '男', '教授');

-- ----------------------------
-- Table structure for test_decimal1
-- ----------------------------
DROP TABLE IF EXISTS `test_decimal1`;
CREATE TABLE `test_decimal1`  (
  `f1` decimal(10, 0) NULL DEFAULT NULL,
  `f2` decimal(5, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_int2
-- ----------------------------
DROP TABLE IF EXISTS `test_int2`;
CREATE TABLE `test_int2`  (
  `f1` int(0) NULL DEFAULT NULL,
  `f2` int(0) NULL DEFAULT NULL,
  `f3` int(5) UNSIGNED ZEROFILL NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
