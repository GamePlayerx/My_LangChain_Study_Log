/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : bootdo

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 24/03/2025 20:08:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for school_content
-- ----------------------------
DROP TABLE IF EXISTS `school_content`;
CREATE TABLE `school_content`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `study_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `study_one` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目，语文',
  `study_two` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目，数学',
  `study_three` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目，英语',
  `study_four` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目，物理',
  `study_five` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目，化学',
  `study_six` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '总分',
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '成绩排名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_content
-- ----------------------------
INSERT INTO `school_content` VALUES (1, '小明', '73', '73', '73', '52', '67', '338.0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `school_content` VALUES (2, '小黑', '67', '0', '41', '0', '0', '108.0', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for school_project
-- ----------------------------
DROP TABLE IF EXISTS `school_project`;
CREATE TABLE `school_project`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `project_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课题名称',
  `project_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '课题内容',
  `project_start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `project_end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学校的项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_project
-- ----------------------------
INSERT INTO `school_project` VALUES (1, '关于信息化建设意见', '如何建设信息化校园', NULL, NULL, '超级管理员', '2024-01-16 16:24:18', NULL, NULL, '');
INSERT INTO `school_project` VALUES (2, '关于期末考试安排', '期末考试', NULL, NULL, '超级管理员', '2024-01-16 16:44:11', NULL, NULL, '');

-- ----------------------------
-- Table structure for school_study
-- ----------------------------
DROP TABLE IF EXISTS `school_study`;
CREATE TABLE `school_study`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `study_person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生',
  `study_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '考试类型',
  `study_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '科目',
  `study_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '科目成绩',
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_study
-- ----------------------------
INSERT INTO `school_study` VALUES (19, '小明', '', '语文', '73', '超级管理员', '2024-07-07 14:29:21', '超级管理员', '2024-07-07 14:42:30', '');
INSERT INTO `school_study` VALUES (20, '小明', '', '数学', '73', '超级管理员', '2024-07-07 14:39:15', '超级管理员', '2024-07-07 14:42:00', '');
INSERT INTO `school_study` VALUES (21, '小明', '', '物理', '52', '超级管理员', '2024-07-07 14:43:56', '超级管理员', '2024-07-07 15:01:09', '');
INSERT INTO `school_study` VALUES (22, '小黑', '', '英语', '41', '超级管理员', '2024-07-07 15:01:29', NULL, NULL, '');
INSERT INTO `school_study` VALUES (23, '小黑', '', '语文', '67', '超级管理员', '2024-07-07 15:01:47', NULL, NULL, '');
INSERT INTO `school_study` VALUES (24, '小明', '', '英语', '73', '超级管理员', '2024-07-07 15:05:55', NULL, NULL, '');
INSERT INTO `school_study` VALUES (25, '小明', '', '化学', '67', '超级管理员', '2024-07-07 15:06:16', NULL, NULL, '');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (11, 0, '学院部', 1, 1);
INSERT INTO `sys_dept` VALUES (18, 11, '计算机学院', 1, 1);
INSERT INTO `sys_dept` VALUES (19, 11, '电子工厂学院', 2, 1);
INSERT INTO `sys_dept` VALUES (20, 11, '土木学院', 3, 1);
INSERT INTO `sys_dept` VALUES (21, 11, '医学院', 4, 1);
INSERT INTO `sys_dept` VALUES (26, 11, '生物工厂学院', 5, 1);
INSERT INTO `sys_dept` VALUES (27, 11, '食品安全学院', 6, 1);
INSERT INTO `sys_dept` VALUES (28, 11, '金融学院', 7, 1);
INSERT INTO `sys_dept` VALUES (29, 11, '工商管理学院', 8, 1);
INSERT INTO `sys_dept` VALUES (30, 11, '交通学院', 9, 1);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '描述',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父级编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value`) USING BTREE,
  INDEX `sys_dict_label`(`name`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '正常', '0', 'del_flag', '删除标记', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (3, '显示', '1', 'show_hide', '显示/隐藏', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (4, '隐藏', '0', 'show_hide', '显示/隐藏', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (5, '是', '1', 'yes_no', '是/否', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (6, '否', '0', 'yes_no', '是/否', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (7, '红色', 'red', 'color', '颜色值', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (8, '绿色', 'green', 'color', '颜色值', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (9, '蓝色', 'blue', 'color', '颜色值', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (10, '黄色', 'yellow', 'color', '颜色值', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (11, '橙色', 'orange', 'color', '颜色值', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (12, '默认主题', 'default', 'theme', '主题方案', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (13, '天蓝主题', 'cerulean', 'theme', '主题方案', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (14, '橙色主题', 'readable', 'theme', '主题方案', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (15, '红色主题', 'united', 'theme', '主题方案', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (16, 'Flat主题', 'flat', 'theme', '主题方案', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (17, '国家', '1', 'sys_area_type', '区域类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (18, '省份、直辖市', '2', 'sys_area_type', '区域类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (19, '地市', '3', 'sys_area_type', '区域类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (20, '区县', '4', 'sys_area_type', '区域类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (21, '公司', '1', 'sys_office_type', '机构类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (22, '部门', '2', 'sys_office_type', '机构类型', 70, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (23, '小组', '3', 'sys_office_type', '机构类型', 80, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (24, '其它', '4', 'sys_office_type', '机构类型', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (25, '综合部', '1', 'sys_office_common', '快捷通用部门', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (26, '开发部', '2', 'sys_office_common', '快捷通用部门', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (27, '人力部', '3', 'sys_office_common', '快捷通用部门', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (28, '一级', '1', 'sys_office_grade', '机构等级', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (29, '二级', '2', 'sys_office_grade', '机构等级', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (30, '三级', '3', 'sys_office_grade', '机构等级', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (31, '四级', '4', 'sys_office_grade', '机构等级', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (32, '所有数据', '1', 'sys_data_scope', '数据范围', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (33, '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (34, '所在公司数据', '3', 'sys_data_scope', '数据范围', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (35, '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (36, '所在部门数据', '5', 'sys_data_scope', '数据范围', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (37, '仅本人数据', '8', 'sys_data_scope', '数据范围', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (38, '按明细设置', '9', 'sys_data_scope', '数据范围', 100, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (39, '系统管理', '1', 'sys_user_type', '用户类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (40, '部门经理', '2', 'sys_user_type', '用户类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (41, '普通用户', '3', 'sys_user_type', '用户类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (42, '基础主题', 'basic', 'cms_theme', '站点主题', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (43, '蓝色主题', 'blue', 'cms_theme', '站点主题', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (44, '红色主题', 'red', 'cms_theme', '站点主题', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (45, '文章模型', 'article', 'cms_module', '栏目模型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (46, '图片模型', 'picture', 'cms_module', '栏目模型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (47, '下载模型', 'download', 'cms_module', '栏目模型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (48, '链接模型', 'link', 'cms_module', '栏目模型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (49, '专题模型', 'special', 'cms_module', '栏目模型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (50, '默认展现方式', '0', 'cms_show_modes', '展现方式', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (51, '首栏目内容列表', '1', 'cms_show_modes', '展现方式', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (52, '栏目第一条内容', '2', 'cms_show_modes', '展现方式', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (53, '发布', '0', 'cms_del_flag', '内容状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (54, '删除', '1', 'cms_del_flag', '内容状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (55, '审核', '2', 'cms_del_flag', '内容状态', 15, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (56, '首页焦点图', '1', 'cms_posid', '推荐位', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (57, '栏目页文章推荐', '2', 'cms_posid', '推荐位', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (58, '咨询', '1', 'cms_guestbook', '留言板分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (59, '建议', '2', 'cms_guestbook', '留言板分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (60, '投诉', '3', 'cms_guestbook', '留言板分类', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (61, '其它', '4', 'cms_guestbook', '留言板分类', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (62, '公休', '1', 'oa_leave_type', '请假类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (63, '病假', '2', 'oa_leave_type', '请假类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (64, '事假', '3', 'oa_leave_type', '请假类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (65, '调休', '4', 'oa_leave_type', '请假类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (66, '婚假', '5', 'oa_leave_type', '请假类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (67, '接入日志', '1', 'sys_log_type', '日志类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (68, '异常日志', '2', 'sys_log_type', '日志类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (69, '请假流程', 'leave', 'act_type', '流程类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (70, '审批测试流程', 'test_audit', 'act_type', '流程类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (71, '分类1', '1', 'act_category', '流程分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (72, '分类2', '2', 'act_category', '流程分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (73, '增删改查', 'crud', 'gen_category', '代码生成分类', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (74, '增删改查（包含从表）', 'crud_many', 'gen_category', '代码生成分类', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (75, '树结构', 'tree', 'gen_category', '代码生成分类', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (76, '=', '=', 'gen_query_type', '查询方式', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (77, '!=', '!=', 'gen_query_type', '查询方式', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (78, '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (79, '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (80, 'Between', 'between', 'gen_query_type', '查询方式', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (81, 'Like', 'like', 'gen_query_type', '查询方式', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (82, 'Left Like', 'left_like', 'gen_query_type', '查询方式', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (83, 'Right Like', 'right_like', 'gen_query_type', '查询方式', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (84, '文本框', 'input', 'gen_show_type', '字段生成方案', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (85, '文本域', 'textarea', 'gen_show_type', '字段生成方案', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (86, '下拉框', 'select', 'gen_show_type', '字段生成方案', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (87, '复选框', 'checkbox', 'gen_show_type', '字段生成方案', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (88, '单选框', 'radiobox', 'gen_show_type', '字段生成方案', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (89, '日期选择', 'dateselect', 'gen_show_type', '字段生成方案', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (90, '人员选择', 'userselect', 'gen_show_type', '字段生成方案', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (91, '部门选择', 'officeselect', 'gen_show_type', '字段生成方案', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (92, '区域选择', 'areaselect', 'gen_show_type', '字段生成方案', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (93, 'String', 'String', 'gen_java_type', 'Java类型', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (94, 'Long', 'Long', 'gen_java_type', 'Java类型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (95, '仅持久层', 'dao', 'gen_category', '代码生成分类', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (96, '男', '1', 'sex', '性别', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (97, '女', '2', 'sex', '性别', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (98, 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (99, 'Double', 'Double', 'gen_java_type', 'Java类型', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (100, 'Date', 'java.util.Date', 'gen_java_type', 'Java类型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (104, 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (105, '会议通告', '1', 'oa_notify_type', '通知通告类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (106, '奖惩通告', '2', 'oa_notify_type', '通知通告类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (107, '活动通告', '3', 'oa_notify_type', '通知通告类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (108, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (109, '发布', '1', 'oa_notify_status', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (110, '未读', '0', 'oa_notify_read', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (111, '已读', '1', 'oa_notify_read', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (112, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (113, '删除', '0', 'del_flag', '删除标记', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (118, '关于', 'about', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '全url是:/blog/open/page/about', '');
INSERT INTO `sys_dict` VALUES (119, '交流', 'communication', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (120, '文章', 'article', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (121, '编码', 'code', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (122, '绘画', 'painting', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (123, '计算机学院', '计算机学院', 'school_dept', '计算机学院', 1, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (124, '电子工厂学院', '电子工厂学院', 'school_dept', '电子工厂学院', 2, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (125, '生物工厂学院', '生物工厂学院', 'school_dept', '生物工厂学院', 3, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (126, '医学院', '医学院', 'school_dept', '医学院', 4, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (127, '金融学院', '金融学院', 'school_dept', '金融学院', 5, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (128, '工商管理学院', '工商管理学院', 'school_dept', '工商管理学院', 6, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (129, '自动化学院', '自动化学院', 'school_dept', '自动化学院', 7, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (130, '传媒信息学院', '传媒信息学院', 'school_dept', '传媒信息学院', 8, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (131, '环境工程学院', '环境工程学院', 'school_dept', '环境工程学院', 9, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (132, '临床医学学院', '临床医学学院', 'school_dept', '临床医学学院', 10, NULL, NULL, NULL, NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` int(0) NULL DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int(0) NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1297 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (609, 1, 'admin', '登录', 34, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:29:10');
INSERT INTO `sys_log` VALUES (610, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 10:29:10');
INSERT INTO `sys_log` VALUES (611, 1, 'admin', 'error', NULL, 'http://localhost:8088/index', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported', NULL, '2024-01-15 10:31:28');
INSERT INTO `sys_log` VALUES (612, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 10:31:29');
INSERT INTO `sys_log` VALUES (613, -1, '获取用户信息为空', '登录', 1, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:34:57');
INSERT INTO `sys_log` VALUES (614, -1, '获取用户信息为空', '登录', 43, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:35:01');
INSERT INTO `sys_log` VALUES (615, -1, '获取用户信息为空', '登录', 5, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:35:10');
INSERT INTO `sys_log` VALUES (616, 1, 'admin', '登录', 63, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:39:59');
INSERT INTO `sys_log` VALUES (617, 1, 'admin', 'error', NULL, 'http://localhost:8090/index', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\libraryreservationProject\\target\\classes\\mybatis\\common\\FileMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select `id`,`user_id`,`file_name`,`custom_type`,   `type`,`url`,`create_date`,`file_size`,`state`   from sys_file where id = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'', NULL, '2024-01-15 10:39:59');
INSERT INTO `sys_log` VALUES (618, 1, 'admin', 'error', NULL, 'http://localhost:8090/index', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\libraryreservationProject\\target\\classes\\mybatis\\common\\FileMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select `id`,`user_id`,`file_name`,`custom_type`,   `type`,`url`,`create_date`,`file_size`,`state`   from sys_file where id = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'', NULL, '2024-01-15 10:40:02');
INSERT INTO `sys_log` VALUES (619, 1, 'admin', '登录', 57, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:42:56');
INSERT INTO `sys_log` VALUES (620, 1, 'admin', 'error', NULL, 'http://localhost:8090/index', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\libraryreservationProject\\target\\classes\\mybatis\\common\\FileMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select `id`,`user_id`,`file_name`,`custom_type`,   `type`,`url`,`create_date`,`file_size`,`state`   from sys_file where id = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'', NULL, '2024-01-15 10:44:25');
INSERT INTO `sys_log` VALUES (621, 1, 'admin', '登录', 23, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:47:39');
INSERT INTO `sys_log` VALUES (622, 1, 'admin', 'error', NULL, 'http://localhost:8090/index', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: Error instantiating interface com.fnkj.common.dao.FileDao with invalid types () or values (). Cause: java.lang.NoSuchMethodException: com.fnkj.common.dao.FileDao.<init>()', NULL, '2024-01-15 10:47:39');
INSERT INTO `sys_log` VALUES (623, 1, 'admin', '登录', 72, 'com.fnkj.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 10:50:06');
INSERT INTO `sys_log` VALUES (624, 1, 'admin', '请求访问主页', 27, 'com.fnkj.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 10:50:06');
INSERT INTO `sys_log` VALUES (625, 1, 'admin', 'error', NULL, 'http://localhost:8090/common/sysFile/list', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\libraryreservationProject\\target\\classes\\mybatis\\common\\FileMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select `id`,`user_id`,`file_name`,`custom_type`,`type`,`url`,`create_date`,`file_size`,`state` from sys_file    WHERE  user_id = ?          order by id desc             limit ?, ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'user_id\' in \'field list\'', NULL, '2024-01-15 10:50:20');
INSERT INTO `sys_log` VALUES (626, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 11:17:18');
INSERT INTO `sys_log` VALUES (627, 1, 'admin', '请求访问主页', 43, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 11:17:18');
INSERT INTO `sys_log` VALUES (628, 1, 'admin', '删除菜单', 19, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:12');
INSERT INTO `sys_log` VALUES (629, 1, 'admin', '删除菜单', 6, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:19');
INSERT INTO `sys_log` VALUES (630, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:20');
INSERT INTO `sys_log` VALUES (631, 1, 'admin', '删除菜单', 6, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:22');
INSERT INTO `sys_log` VALUES (632, 1, 'admin', '删除菜单', 15, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:24');
INSERT INTO `sys_log` VALUES (633, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:28');
INSERT INTO `sys_log` VALUES (634, 1, 'admin', '删除菜单', 7, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 11:18:31');
INSERT INTO `sys_log` VALUES (635, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 11:18:35');
INSERT INTO `sys_log` VALUES (636, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 11:20:03');
INSERT INTO `sys_log` VALUES (637, 1, 'admin', '登录', 38, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:03:23');
INSERT INTO `sys_log` VALUES (638, 1, 'admin', '请求访问主页', 59, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:03:23');
INSERT INTO `sys_log` VALUES (639, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:06:57');
INSERT INTO `sys_log` VALUES (640, 1, 'admin', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:07:02');
INSERT INTO `sys_log` VALUES (641, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:07:02');
INSERT INTO `sys_log` VALUES (642, 1, 'admin', '登录', 31, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:07:47');
INSERT INTO `sys_log` VALUES (643, 1, 'admin', '请求访问主页', 58, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:07:47');
INSERT INTO `sys_log` VALUES (644, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-15 13:08:12');
INSERT INTO `sys_log` VALUES (645, 1, 'admin', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:09:26');
INSERT INTO `sys_log` VALUES (646, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:09:26');
INSERT INTO `sys_log` VALUES (647, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-15 13:09:38');
INSERT INTO `sys_log` VALUES (648, 1, 'admin', '登录', 38, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:10:39');
INSERT INTO `sys_log` VALUES (649, 1, 'admin', '请求访问主页', 46, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:10:39');
INSERT INTO `sys_log` VALUES (650, 1, 'admin', '登录', 70, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:14:27');
INSERT INTO `sys_log` VALUES (651, 1, 'admin', '请求访问主页', 47, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:14:27');
INSERT INTO `sys_log` VALUES (652, 1, 'admin', '删除菜单', 18, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:39');
INSERT INTO `sys_log` VALUES (653, 1, 'admin', '删除菜单', 15, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:42');
INSERT INTO `sys_log` VALUES (654, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:46');
INSERT INTO `sys_log` VALUES (655, 1, 'admin', '删除菜单', 16, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:52');
INSERT INTO `sys_log` VALUES (656, 1, 'admin', '删除菜单', 14, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:56');
INSERT INTO `sys_log` VALUES (657, 1, 'admin', '删除菜单', 15, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 13:14:59');
INSERT INTO `sys_log` VALUES (658, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:15:29');
INSERT INTO `sys_log` VALUES (659, 1, 'admin', '添加角色', 2, 'com.bootdo.system.controller.RoleController.add()', NULL, '127.0.0.1', '2024-01-15 13:15:55');
INSERT INTO `sys_log` VALUES (660, 1, 'admin', '添加角色', 1, 'com.bootdo.system.controller.RoleController.add()', NULL, '127.0.0.1', '2024-01-15 13:16:13');
INSERT INTO `sys_log` VALUES (661, 1, 'admin', '保存角色', 9, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-01-15 13:16:21');
INSERT INTO `sys_log` VALUES (662, 1, 'admin', '添加角色', 1, 'com.bootdo.system.controller.RoleController.add()', NULL, '127.0.0.1', '2024-01-15 13:16:23');
INSERT INTO `sys_log` VALUES (663, 1, 'admin', '保存角色', 6, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-01-15 13:16:34');
INSERT INTO `sys_log` VALUES (664, 1, 'admin', '登录', 69, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 13:33:13');
INSERT INTO `sys_log` VALUES (665, 1, 'admin', '请求访问主页', 44, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 13:33:13');
INSERT INTO `sys_log` VALUES (666, 1, 'admin', '登录', 63, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 14:56:14');
INSERT INTO `sys_log` VALUES (667, 1, 'admin', '请求访问主页', 25, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 14:56:14');
INSERT INTO `sys_log` VALUES (668, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 14:57:45');
INSERT INTO `sys_log` VALUES (669, 1, 'admin', '请求访问主页', 57, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 14:57:45');
INSERT INTO `sys_log` VALUES (670, 1, 'admin', '请求访问主页', 14, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 14:57:49');
INSERT INTO `sys_log` VALUES (671, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 14:58:56');
INSERT INTO `sys_log` VALUES (672, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 15:28:15');
INSERT INTO `sys_log` VALUES (673, 1, 'admin', '编辑用户', 7, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:28:53');
INSERT INTO `sys_log` VALUES (674, 1, 'admin', '请求更改用户密码', 0, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-01-15 15:29:02');
INSERT INTO `sys_log` VALUES (675, 1, 'admin', '编辑用户', 11, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:29:05');
INSERT INTO `sys_log` VALUES (676, 1, 'admin', '删除用户', 10, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:14');
INSERT INTO `sys_log` VALUES (677, 1, 'admin', '删除用户', 8, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:16');
INSERT INTO `sys_log` VALUES (678, 1, 'admin', '删除用户', 17, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:21');
INSERT INTO `sys_log` VALUES (679, 1, 'admin', '删除用户', 14, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:23');
INSERT INTO `sys_log` VALUES (680, 1, 'admin', '删除用户', 16, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:26');
INSERT INTO `sys_log` VALUES (681, 1, 'admin', '删除用户', 7, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:27');
INSERT INTO `sys_log` VALUES (682, 1, 'admin', '删除用户', 15, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:29');
INSERT INTO `sys_log` VALUES (683, 1, 'admin', '删除用户', 9, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:31');
INSERT INTO `sys_log` VALUES (684, 1, 'admin', '删除用户', 15, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:29:34');
INSERT INTO `sys_log` VALUES (685, 1, 'admin', '编辑用户', 12, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:34:02');
INSERT INTO `sys_log` VALUES (686, 1, 'admin', '编辑用户', 9, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:34:35');
INSERT INTO `sys_log` VALUES (687, 1, 'admin', '更新用户', 24, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-15 15:34:39');
INSERT INTO `sys_log` VALUES (688, 1, 'admin', '编辑用户', 8, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:34:49');
INSERT INTO `sys_log` VALUES (689, 1, 'admin', '更新用户', 8, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-15 15:34:55');
INSERT INTO `sys_log` VALUES (690, 1, 'admin', '删除用户', 8, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-01-15 15:34:57');
INSERT INTO `sys_log` VALUES (691, 1, 'admin', '编辑用户', 8, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-15 15:34:59');
INSERT INTO `sys_log` VALUES (692, 1, 'admin', '更新用户', 8, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-15 15:35:04');
INSERT INTO `sys_log` VALUES (693, 1, 'admin', '登录', 77, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 15:37:05');
INSERT INTO `sys_log` VALUES (694, 1, 'admin', '请求访问主页', 52, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 15:37:05');
INSERT INTO `sys_log` VALUES (695, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 15:42:20');
INSERT INTO `sys_log` VALUES (696, 1, 'admin', '添加用户', 3, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-15 15:42:27');
INSERT INTO `sys_log` VALUES (697, 1, 'admin', '保存用户', 33, 'com.bootdo.system.controller.UserController.save()', NULL, '127.0.0.1', '2024-01-15 15:43:01');
INSERT INTO `sys_log` VALUES (698, 1, 'admin', '添加角色', 1, 'com.bootdo.system.controller.RoleController.add()', NULL, '127.0.0.1', '2024-01-15 15:43:35');
INSERT INTO `sys_log` VALUES (699, 1, 'admin', '保存角色', 9, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-01-15 15:43:42');
INSERT INTO `sys_log` VALUES (700, 1, 'admin', '添加角色', 0, 'com.bootdo.system.controller.RoleController.add()', NULL, '127.0.0.1', '2024-01-15 15:44:07');
INSERT INTO `sys_log` VALUES (701, 1, 'admin', '保存角色', 8, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-01-15 15:44:13');
INSERT INTO `sys_log` VALUES (702, 1, 'admin', '登录', 72, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 15:44:59');
INSERT INTO `sys_log` VALUES (703, 1, 'admin', '请求访问主页', 26, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 15:44:59');
INSERT INTO `sys_log` VALUES (704, 1, 'admin', '删除菜单', 25, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 15:45:21');
INSERT INTO `sys_log` VALUES (705, 1, 'admin', '删除菜单', 14, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-15 15:45:23');
INSERT INTO `sys_log` VALUES (706, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 16:26:45');
INSERT INTO `sys_log` VALUES (707, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 16:26:45');
INSERT INTO `sys_log` VALUES (708, 1, 'admin', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 16:27:47');
INSERT INTO `sys_log` VALUES (709, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 16:27:47');
INSERT INTO `sys_log` VALUES (710, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 16:30:14');
INSERT INTO `sys_log` VALUES (711, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 16:30:14');
INSERT INTO `sys_log` VALUES (712, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-15 16:45:29');
INSERT INTO `sys_log` VALUES (713, 1, 'admin', '请求访问主页', 30, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-15 16:45:29');
INSERT INTO `sys_log` VALUES (714, 1, 'admin', '添加菜单', 1, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-15 17:01:32');
INSERT INTO `sys_log` VALUES (715, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-15 17:01:37');
INSERT INTO `sys_log` VALUES (716, 1, 'admin', '登录', 73, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 09:01:44');
INSERT INTO `sys_log` VALUES (717, 1, 'admin', '请求访问主页', 29, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:01:44');
INSERT INTO `sys_log` VALUES (718, 1, 'admin', '添加菜单', 3, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:01:56');
INSERT INTO `sys_log` VALUES (719, 1, 'admin', '编辑菜单', 12, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:02:01');
INSERT INTO `sys_log` VALUES (720, 1, 'admin', '添加菜单', 1, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:02:05');
INSERT INTO `sys_log` VALUES (721, 1, 'admin', '保存菜单', 9, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:02:52');
INSERT INTO `sys_log` VALUES (722, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:02:56');
INSERT INTO `sys_log` VALUES (723, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:03:07');
INSERT INTO `sys_log` VALUES (724, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:03:23');
INSERT INTO `sys_log` VALUES (725, 1, 'admin', '添加菜单', 6, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:03:33');
INSERT INTO `sys_log` VALUES (726, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:05:16');
INSERT INTO `sys_log` VALUES (727, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:05:23');
INSERT INTO `sys_log` VALUES (728, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:05:41');
INSERT INTO `sys_log` VALUES (729, 1, 'admin', '编辑角色', 4, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:05:47');
INSERT INTO `sys_log` VALUES (730, 1, 'admin', '更新角色', 51, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 09:05:52');
INSERT INTO `sys_log` VALUES (731, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:05:54');
INSERT INTO `sys_log` VALUES (732, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:06:57');
INSERT INTO `sys_log` VALUES (733, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:07:03');
INSERT INTO `sys_log` VALUES (734, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 09:08:32');
INSERT INTO `sys_log` VALUES (735, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:08:32');
INSERT INTO `sys_log` VALUES (736, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:10:16');
INSERT INTO `sys_log` VALUES (737, 1, 'admin', '添加菜单', 1, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:11:44');
INSERT INTO `sys_log` VALUES (738, 1, 'admin', '保存菜单', 9, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:12:22');
INSERT INTO `sys_log` VALUES (739, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:12:24');
INSERT INTO `sys_log` VALUES (740, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:12:28');
INSERT INTO `sys_log` VALUES (741, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:13:49');
INSERT INTO `sys_log` VALUES (742, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:14:09');
INSERT INTO `sys_log` VALUES (743, 1, 'admin', '添加菜单', 3, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:14:11');
INSERT INTO `sys_log` VALUES (744, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:15:32');
INSERT INTO `sys_log` VALUES (745, 1, 'admin', '编辑菜单', 6, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:15:47');
INSERT INTO `sys_log` VALUES (746, 1, 'admin', '更新菜单', 7, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:15:50');
INSERT INTO `sys_log` VALUES (747, 1, 'admin', '添加菜单', 7, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:15:54');
INSERT INTO `sys_log` VALUES (748, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:16:21');
INSERT INTO `sys_log` VALUES (749, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:16:27');
INSERT INTO `sys_log` VALUES (750, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:17:06');
INSERT INTO `sys_log` VALUES (751, 1, 'admin', '编辑角色', 4, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:17:18');
INSERT INTO `sys_log` VALUES (752, 1, 'admin', '更新角色', 41, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 09:17:22');
INSERT INTO `sys_log` VALUES (753, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:17:26');
INSERT INTO `sys_log` VALUES (754, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:17:42');
INSERT INTO `sys_log` VALUES (755, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:17:58');
INSERT INTO `sys_log` VALUES (756, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:18:18');
INSERT INTO `sys_log` VALUES (757, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:18:38');
INSERT INTO `sys_log` VALUES (758, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:18:42');
INSERT INTO `sys_log` VALUES (759, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:18:56');
INSERT INTO `sys_log` VALUES (760, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:19:00');
INSERT INTO `sys_log` VALUES (761, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:19:17');
INSERT INTO `sys_log` VALUES (762, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:19:21');
INSERT INTO `sys_log` VALUES (763, 1, 'admin', '更新角色', 16, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 09:19:28');
INSERT INTO `sys_log` VALUES (764, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:19:29');
INSERT INTO `sys_log` VALUES (765, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:19:43');
INSERT INTO `sys_log` VALUES (766, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:19:49');
INSERT INTO `sys_log` VALUES (767, 1, 'admin', '编辑菜单', 6, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:20:43');
INSERT INTO `sys_log` VALUES (768, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:20:47');
INSERT INTO `sys_log` VALUES (769, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:20:51');
INSERT INTO `sys_log` VALUES (770, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:00');
INSERT INTO `sys_log` VALUES (771, 1, 'admin', '编辑菜单', 9, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:02');
INSERT INTO `sys_log` VALUES (772, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:07');
INSERT INTO `sys_log` VALUES (773, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:09');
INSERT INTO `sys_log` VALUES (774, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:15');
INSERT INTO `sys_log` VALUES (775, 1, 'admin', '编辑菜单', 9, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:18');
INSERT INTO `sys_log` VALUES (776, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:22');
INSERT INTO `sys_log` VALUES (777, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:31');
INSERT INTO `sys_log` VALUES (778, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:36');
INSERT INTO `sys_log` VALUES (779, 1, 'admin', '编辑菜单', 8, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:40');
INSERT INTO `sys_log` VALUES (780, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:44');
INSERT INTO `sys_log` VALUES (781, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:47');
INSERT INTO `sys_log` VALUES (782, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:51');
INSERT INTO `sys_log` VALUES (783, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:21:55');
INSERT INTO `sys_log` VALUES (784, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:21:59');
INSERT INTO `sys_log` VALUES (785, 1, 'admin', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:22:02');
INSERT INTO `sys_log` VALUES (786, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:22:05');
INSERT INTO `sys_log` VALUES (787, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:22:08');
INSERT INTO `sys_log` VALUES (788, 1, 'admin', '编辑菜单', 4, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:22:30');
INSERT INTO `sys_log` VALUES (789, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:22:33');
INSERT INTO `sys_log` VALUES (790, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:22:36');
INSERT INTO `sys_log` VALUES (791, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:23:14');
INSERT INTO `sys_log` VALUES (792, 1, 'admin', '编辑菜单', 4, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 09:23:18');
INSERT INTO `sys_log` VALUES (793, 1, 'admin', '更新菜单', 15, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 09:23:24');
INSERT INTO `sys_log` VALUES (794, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:24:10');
INSERT INTO `sys_log` VALUES (795, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:24:32');
INSERT INTO `sys_log` VALUES (796, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-16 09:24:40');
INSERT INTO `sys_log` VALUES (797, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:24:50');
INSERT INTO `sys_log` VALUES (798, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:25:07');
INSERT INTO `sys_log` VALUES (799, 1, 'admin', '删除菜单', 4, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-16 09:25:13');
INSERT INTO `sys_log` VALUES (800, 1, 'admin', '添加菜单', 7, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 09:25:23');
INSERT INTO `sys_log` VALUES (801, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 09:25:38');
INSERT INTO `sys_log` VALUES (802, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-01-16 09:25:42');
INSERT INTO `sys_log` VALUES (803, 1, 'admin', '编辑角色', 4, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:25:49');
INSERT INTO `sys_log` VALUES (804, 1, 'admin', '更新角色', 14, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 09:25:54');
INSERT INTO `sys_log` VALUES (805, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 09:25:56');
INSERT INTO `sys_log` VALUES (806, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:26:00');
INSERT INTO `sys_log` VALUES (807, 1, 'admin', '登录', 61, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 09:50:25');
INSERT INTO `sys_log` VALUES (808, 1, 'admin', '请求访问主页', 25, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:50:25');
INSERT INTO `sys_log` VALUES (809, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:52:36');
INSERT INTO `sys_log` VALUES (810, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 09:53:06');
INSERT INTO `sys_log` VALUES (811, 1, 'admin', '请求访问主页', 74, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:53:06');
INSERT INTO `sys_log` VALUES (812, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 09:53:35');
INSERT INTO `sys_log` VALUES (813, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:53:35');
INSERT INTO `sys_log` VALUES (814, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:54:15');
INSERT INTO `sys_log` VALUES (815, 1, 'admin', '编辑用户', 15, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-16 09:56:51');
INSERT INTO `sys_log` VALUES (816, 1, 'admin', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:58:24');
INSERT INTO `sys_log` VALUES (817, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 09:58:48');
INSERT INTO `sys_log` VALUES (818, 1, 'admin', '添加菜单', 0, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:01:51');
INSERT INTO `sys_log` VALUES (819, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:02:40');
INSERT INTO `sys_log` VALUES (820, 1, 'admin', '添加菜单', 0, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:08:43');
INSERT INTO `sys_log` VALUES (821, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:09:36');
INSERT INTO `sys_log` VALUES (822, 1, 'admin', '编辑菜单', 8, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 10:09:57');
INSERT INTO `sys_log` VALUES (823, 1, 'admin', '更新菜单', 12, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 10:09:59');
INSERT INTO `sys_log` VALUES (824, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:10:04');
INSERT INTO `sys_log` VALUES (825, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:10:31');
INSERT INTO `sys_log` VALUES (826, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:10:36');
INSERT INTO `sys_log` VALUES (827, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:11:10');
INSERT INTO `sys_log` VALUES (828, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:11:17');
INSERT INTO `sys_log` VALUES (829, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:13:25');
INSERT INTO `sys_log` VALUES (830, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:13:55');
INSERT INTO `sys_log` VALUES (831, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:14:41');
INSERT INTO `sys_log` VALUES (832, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:14:59');
INSERT INTO `sys_log` VALUES (833, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:15:26');
INSERT INTO `sys_log` VALUES (834, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:15:36');
INSERT INTO `sys_log` VALUES (835, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:15:50');
INSERT INTO `sys_log` VALUES (836, 1, 'admin', '添加菜单', 3, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:16:04');
INSERT INTO `sys_log` VALUES (837, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:16:19');
INSERT INTO `sys_log` VALUES (838, 1, 'admin', 'error', NULL, 'http://localhost:8088/oa/notify/save', 'org.springframework.jdbc.UncategorizedSQLException: \r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, expect \')\' : insert into oa_notify_record\n		(\n		`notify_id`,\n		`user_id`,\n		`is_read`,\n		`read_date`\n		)\n		values\r\n### SQL: insert into oa_notify_record   (   `notify_id`,   `user_id`,   `is_read`,   `read_date`   )   values\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, expect \')\' : insert into oa_notify_record\n		(\n		`notify_id`,\n		`user_id`,\n		`is_read`,\n		`read_date`\n		)\n		values\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, expect \')\' : insert into oa_notify_record\n		(\n		`notify_id`,\n		`user_id`,\n		`is_read`,\n		`read_date`\n		)\n		values; nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, expect \')\' : insert into oa_notify_record\n		(\n		`notify_id`,\n		`user_id`,\n		`is_read`,\n		`read_date`\n		)\n		values', NULL, '2024-01-16 10:18:23');
INSERT INTO `sys_log` VALUES (839, 1, 'admin', '添加菜单', 3, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 10:22:58');
INSERT INTO `sys_log` VALUES (840, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 10:23:46');
INSERT INTO `sys_log` VALUES (841, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 10:24:17');
INSERT INTO `sys_log` VALUES (842, 1, 'admin', '更新角色', 32, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 10:24:24');
INSERT INTO `sys_log` VALUES (843, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 10:24:27');
INSERT INTO `sys_log` VALUES (844, 1, 'admin', '编辑菜单', 6, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 10:25:51');
INSERT INTO `sys_log` VALUES (845, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 10:25:54');
INSERT INTO `sys_log` VALUES (846, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 10:25:58');
INSERT INTO `sys_log` VALUES (847, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 10:26:00');
INSERT INTO `sys_log` VALUES (848, 1, 'admin', '编辑菜单', 8, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-01-16 10:26:03');
INSERT INTO `sys_log` VALUES (849, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-01-16 10:26:05');
INSERT INTO `sys_log` VALUES (850, 1, 'admin', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 10:26:07');
INSERT INTO `sys_log` VALUES (851, 1, 'admin', '登录', 84, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 13:42:44');
INSERT INTO `sys_log` VALUES (852, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:42:44');
INSERT INTO `sys_log` VALUES (853, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:48:49');
INSERT INTO `sys_log` VALUES (854, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 13:50:24');
INSERT INTO `sys_log` VALUES (855, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:50:24');
INSERT INTO `sys_log` VALUES (856, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:50:55');
INSERT INTO `sys_log` VALUES (857, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 13:54:40');
INSERT INTO `sys_log` VALUES (858, 1, 'admin', '请求访问主页', 32, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:54:40');
INSERT INTO `sys_log` VALUES (859, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 13:58:26');
INSERT INTO `sys_log` VALUES (860, 1, 'admin', '请求访问主页', 50, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 13:58:27');
INSERT INTO `sys_log` VALUES (861, 1, 'admin', '登录', 68, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:01:47');
INSERT INTO `sys_log` VALUES (862, 1, 'admin', '请求访问主页', 31, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:01:47');
INSERT INTO `sys_log` VALUES (863, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:02:43');
INSERT INTO `sys_log` VALUES (864, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:02:43');
INSERT INTO `sys_log` VALUES (865, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:04:02');
INSERT INTO `sys_log` VALUES (866, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:04:02');
INSERT INTO `sys_log` VALUES (867, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:07:24');
INSERT INTO `sys_log` VALUES (868, 1, 'admin', '请求访问主页', 58, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:07:24');
INSERT INTO `sys_log` VALUES (869, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:08:02');
INSERT INTO `sys_log` VALUES (870, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:09:41');
INSERT INTO `sys_log` VALUES (871, 1, 'admin', '请求访问主页', 32, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:09:41');
INSERT INTO `sys_log` VALUES (872, 1, 'admin', '登录', 80, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:15:11');
INSERT INTO `sys_log` VALUES (873, 1, 'admin', '请求访问主页', 51, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:15:11');
INSERT INTO `sys_log` VALUES (874, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:16:32');
INSERT INTO `sys_log` VALUES (875, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:17:18');
INSERT INTO `sys_log` VALUES (876, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:18:43');
INSERT INTO `sys_log` VALUES (877, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:18:43');
INSERT INTO `sys_log` VALUES (878, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:20:00');
INSERT INTO `sys_log` VALUES (879, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:20:00');
INSERT INTO `sys_log` VALUES (880, 1, 'admin', '登录', 56, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:25:35');
INSERT INTO `sys_log` VALUES (881, 1, 'admin', '请求访问主页', 26, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:25:35');
INSERT INTO `sys_log` VALUES (882, 1, 'admin', '登录', 22, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:37:51');
INSERT INTO `sys_log` VALUES (883, 1, 'admin', '请求访问主页', 25, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:37:51');
INSERT INTO `sys_log` VALUES (884, 1, 'admin', '登录', 58, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:40:52');
INSERT INTO `sys_log` VALUES (885, 1, 'admin', '请求访问主页', 64, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:40:52');
INSERT INTO `sys_log` VALUES (886, 1, 'admin', '登录', 59, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:45:20');
INSERT INTO `sys_log` VALUES (887, 1, 'admin', '请求访问主页', 28, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:45:20');
INSERT INTO `sys_log` VALUES (888, 1, 'admin', '登录', 64, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:48:17');
INSERT INTO `sys_log` VALUES (889, 1, 'admin', '请求访问主页', 26, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:48:17');
INSERT INTO `sys_log` VALUES (890, 1, 'admin', '登录', 26, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:56:24');
INSERT INTO `sys_log` VALUES (891, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:56:24');
INSERT INTO `sys_log` VALUES (892, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 14:56:55');
INSERT INTO `sys_log` VALUES (893, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 14:56:55');
INSERT INTO `sys_log` VALUES (894, 1, 'admin', '登录', 59, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:00:40');
INSERT INTO `sys_log` VALUES (895, 1, 'admin', '请求访问主页', 46, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:00:40');
INSERT INTO `sys_log` VALUES (896, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:03:47');
INSERT INTO `sys_log` VALUES (897, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:03:47');
INSERT INTO `sys_log` VALUES (898, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:04:34');
INSERT INTO `sys_log` VALUES (899, 1, 'admin', '登录', 54, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:08:03');
INSERT INTO `sys_log` VALUES (900, 1, 'admin', '请求访问主页', 63, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:08:03');
INSERT INTO `sys_log` VALUES (901, 1, 'admin', '登录', 15, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:10:40');
INSERT INTO `sys_log` VALUES (902, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:10:40');
INSERT INTO `sys_log` VALUES (903, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:15:54');
INSERT INTO `sys_log` VALUES (904, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:15:54');
INSERT INTO `sys_log` VALUES (905, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:16:10');
INSERT INTO `sys_log` VALUES (906, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:16:10');
INSERT INTO `sys_log` VALUES (907, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:18:07');
INSERT INTO `sys_log` VALUES (908, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:18:07');
INSERT INTO `sys_log` VALUES (909, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:21:23');
INSERT INTO `sys_log` VALUES (910, 1, 'admin', '登录', 54, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:21:28');
INSERT INTO `sys_log` VALUES (911, 1, 'admin', '请求访问主页', 77, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:21:28');
INSERT INTO `sys_log` VALUES (912, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:21:45');
INSERT INTO `sys_log` VALUES (913, 1, 'admin', '请求访问主页', 14, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:21:45');
INSERT INTO `sys_log` VALUES (914, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:22:35');
INSERT INTO `sys_log` VALUES (915, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:22:35');
INSERT INTO `sys_log` VALUES (916, 1, 'admin', '添加用户', 10, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-16 15:27:34');
INSERT INTO `sys_log` VALUES (917, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 15:32:01');
INSERT INTO `sys_log` VALUES (918, 1, 'admin', '请求访问主页', 29, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:32:01');
INSERT INTO `sys_log` VALUES (919, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 15:33:27');
INSERT INTO `sys_log` VALUES (920, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:15:19');
INSERT INTO `sys_log` VALUES (921, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:15:19');
INSERT INTO `sys_log` VALUES (922, 1, 'admin', '添加菜单', 6, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-01-16 16:22:24');
INSERT INTO `sys_log` VALUES (923, 1, 'admin', '保存菜单', 7, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-01-16 16:22:46');
INSERT INTO `sys_log` VALUES (924, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:22:50');
INSERT INTO `sys_log` VALUES (925, 1, 'admin', '更新角色', 58, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:22:54');
INSERT INTO `sys_log` VALUES (926, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:22:56');
INSERT INTO `sys_log` VALUES (927, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:23:00');
INSERT INTO `sys_log` VALUES (928, 1, 'admin', '登录', 59, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:23:23');
INSERT INTO `sys_log` VALUES (929, 1, 'admin', '请求访问主页', 65, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:23:24');
INSERT INTO `sys_log` VALUES (930, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:25:22');
INSERT INTO `sys_log` VALUES (931, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:25:22');
INSERT INTO `sys_log` VALUES (932, 1, 'admin', '编辑角色', 5, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:25:30');
INSERT INTO `sys_log` VALUES (933, 1, 'admin', '更新角色', 54, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:25:37');
INSERT INTO `sys_log` VALUES (934, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:27:29');
INSERT INTO `sys_log` VALUES (935, 1, 'admin', '请求访问主页', 24, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:27:29');
INSERT INTO `sys_log` VALUES (936, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:28:01');
INSERT INTO `sys_log` VALUES (937, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:28:47');
INSERT INTO `sys_log` VALUES (938, 1, 'admin', '请求访问主页', 24, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:28:47');
INSERT INTO `sys_log` VALUES (939, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:32:39');
INSERT INTO `sys_log` VALUES (940, 1, 'admin', '请求访问主页', 23, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:32:39');
INSERT INTO `sys_log` VALUES (941, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:33:30');
INSERT INTO `sys_log` VALUES (942, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:33:30');
INSERT INTO `sys_log` VALUES (943, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:34:23');
INSERT INTO `sys_log` VALUES (944, 1, 'admin', '请求访问主页', 14, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:34:23');
INSERT INTO `sys_log` VALUES (945, 1, 'admin', '登录', 54, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:36:39');
INSERT INTO `sys_log` VALUES (946, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:36:39');
INSERT INTO `sys_log` VALUES (947, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:37:17');
INSERT INTO `sys_log` VALUES (948, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:37:38');
INSERT INTO `sys_log` VALUES (949, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:37:38');
INSERT INTO `sys_log` VALUES (950, 1, 'admin', '登录', 26, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:38:41');
INSERT INTO `sys_log` VALUES (951, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:38:42');
INSERT INTO `sys_log` VALUES (952, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:39:07');
INSERT INTO `sys_log` VALUES (953, 1, 'admin', '登录', 53, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:43:40');
INSERT INTO `sys_log` VALUES (954, 1, 'admin', '请求访问主页', 24, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:43:40');
INSERT INTO `sys_log` VALUES (955, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:45:22');
INSERT INTO `sys_log` VALUES (956, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:45:22');
INSERT INTO `sys_log` VALUES (957, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:45:36');
INSERT INTO `sys_log` VALUES (958, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:45:36');
INSERT INTO `sys_log` VALUES (959, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:48:03');
INSERT INTO `sys_log` VALUES (960, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:48:03');
INSERT INTO `sys_log` VALUES (961, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:49:24');
INSERT INTO `sys_log` VALUES (962, 1, 'admin', '请求访问主页', 23, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:49:24');
INSERT INTO `sys_log` VALUES (963, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 16:50:13');
INSERT INTO `sys_log` VALUES (964, 1, 'admin', '请求访问主页', 24, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 16:50:14');
INSERT INTO `sys_log` VALUES (965, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:51:07');
INSERT INTO `sys_log` VALUES (966, 1, 'admin', '更新角色', 30, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:51:20');
INSERT INTO `sys_log` VALUES (967, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:51:23');
INSERT INTO `sys_log` VALUES (968, 1, 'admin', '更新角色', 12, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:52:02');
INSERT INTO `sys_log` VALUES (969, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:52:04');
INSERT INTO `sys_log` VALUES (970, 1, 'admin', '更新角色', 8, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:52:47');
INSERT INTO `sys_log` VALUES (971, 1, 'admin', '删除角色', 17, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-01-16 16:52:53');
INSERT INTO `sys_log` VALUES (972, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:52:56');
INSERT INTO `sys_log` VALUES (973, 1, 'admin', '更新角色', 16, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:53:02');
INSERT INTO `sys_log` VALUES (974, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:53:03');
INSERT INTO `sys_log` VALUES (975, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:53:09');
INSERT INTO `sys_log` VALUES (976, 1, 'admin', '更新角色', 11, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:53:12');
INSERT INTO `sys_log` VALUES (977, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:57:45');
INSERT INTO `sys_log` VALUES (978, 1, 'admin', '更新角色', 17, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:57:52');
INSERT INTO `sys_log` VALUES (979, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-16 16:57:55');
INSERT INTO `sys_log` VALUES (980, 1, 'admin', '更新角色', 9, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-16 16:58:03');
INSERT INTO `sys_log` VALUES (981, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:03:24');
INSERT INTO `sys_log` VALUES (982, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:03:24');
INSERT INTO `sys_log` VALUES (983, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:03:54');
INSERT INTO `sys_log` VALUES (984, 1, 'admin', '请求访问主页', 14, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:03:54');
INSERT INTO `sys_log` VALUES (985, 1, 'admin', '编辑用户', 21, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-16 17:04:14');
INSERT INTO `sys_log` VALUES (986, 1, 'admin', '更新用户', 39, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-16 17:04:19');
INSERT INTO `sys_log` VALUES (987, -1, '获取用户信息为空', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:04:31');
INSERT INTO `sys_log` VALUES (988, 138, 'xiaoming', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:04:39');
INSERT INTO `sys_log` VALUES (989, 138, 'xiaoming', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:04:39');
INSERT INTO `sys_log` VALUES (990, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:05:21');
INSERT INTO `sys_log` VALUES (991, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:05:21');
INSERT INTO `sys_log` VALUES (992, 1, 'admin', '添加用户', 3, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-16 17:05:47');
INSERT INTO `sys_log` VALUES (993, 1, 'admin', '保存用户', 19, 'com.bootdo.system.controller.UserController.save()', NULL, '127.0.0.1', '2024-01-16 17:06:24');
INSERT INTO `sys_log` VALUES (994, 1, 'admin', '添加用户', 2, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-16 17:06:27');
INSERT INTO `sys_log` VALUES (995, 1, 'admin', '保存用户', 9, 'com.bootdo.system.controller.UserController.save()', NULL, '127.0.0.1', '2024-01-16 17:06:44');
INSERT INTO `sys_log` VALUES (996, -1, '获取用户信息为空', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:06:55');
INSERT INTO `sys_log` VALUES (997, -1, '获取用户信息为空', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:07:06');
INSERT INTO `sys_log` VALUES (998, -1, '获取用户信息为空', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:07:15');
INSERT INTO `sys_log` VALUES (999, -1, '获取用户信息为空', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:07:25');
INSERT INTO `sys_log` VALUES (1000, 139, 'qwer', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:07:32');
INSERT INTO `sys_log` VALUES (1001, 139, 'qwer', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:07:32');
INSERT INTO `sys_log` VALUES (1002, 139, 'qwer', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:08:22');
INSERT INTO `sys_log` VALUES (1003, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-16 17:09:03');
INSERT INTO `sys_log` VALUES (1004, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-16 17:09:03');
INSERT INTO `sys_log` VALUES (1005, 1, 'admin', '编辑用户', 11, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-16 17:09:11');
INSERT INTO `sys_log` VALUES (1006, 1, 'admin', '更新用户', 18, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-16 17:09:14');
INSERT INTO `sys_log` VALUES (1007, 1, 'admin', '请求更改用户密码', 0, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-01-16 17:09:15');
INSERT INTO `sys_log` VALUES (1008, 1, 'admin', '登录', 37, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 09:16:24');
INSERT INTO `sys_log` VALUES (1009, 1, 'admin', '请求访问主页', 27, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 09:16:24');
INSERT INTO `sys_log` VALUES (1010, 1, 'admin', '删除角色', 16, 'com.bootdo.system.controller.RoleController.save()', NULL, '127.0.0.1', '2024-07-04 09:17:11');
INSERT INTO `sys_log` VALUES (1011, 1, 'admin', '删除用户', 17, 'com.bootdo.system.controller.UserController.remove()', NULL, '127.0.0.1', '2024-07-04 09:17:59');
INSERT INTO `sys_log` VALUES (1012, 1, 'admin', '编辑用户', 7, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-07-04 09:18:15');
INSERT INTO `sys_log` VALUES (1013, 1, 'admin', '更新用户', 15, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-07-04 09:18:20');
INSERT INTO `sys_log` VALUES (1014, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 09:19:45');
INSERT INTO `sys_log` VALUES (1015, 1, 'admin', '更新角色', 14, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 09:19:51');
INSERT INTO `sys_log` VALUES (1016, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 09:19:52');
INSERT INTO `sys_log` VALUES (1017, 1, 'admin', '更新角色', 5, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 09:19:57');
INSERT INTO `sys_log` VALUES (1018, 1, 'admin', '编辑角色', 1, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 09:19:59');
INSERT INTO `sys_log` VALUES (1019, 1, 'admin', '更新角色', 4, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 09:20:02');
INSERT INTO `sys_log` VALUES (1020, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:34');
INSERT INTO `sys_log` VALUES (1021, 1, 'admin', '删除菜单', 3, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:38');
INSERT INTO `sys_log` VALUES (1022, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:42');
INSERT INTO `sys_log` VALUES (1023, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:51');
INSERT INTO `sys_log` VALUES (1024, 1, 'admin', '删除菜单', 5, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:56');
INSERT INTO `sys_log` VALUES (1025, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:21:59');
INSERT INTO `sys_log` VALUES (1026, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:02');
INSERT INTO `sys_log` VALUES (1027, 1, 'admin', '删除菜单', 11, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:08');
INSERT INTO `sys_log` VALUES (1028, 1, 'admin', '删除菜单', 4, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:15');
INSERT INTO `sys_log` VALUES (1029, 1, 'admin', '删除菜单', 11, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:21');
INSERT INTO `sys_log` VALUES (1030, 1, 'admin', '删除菜单', 3, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:25');
INSERT INTO `sys_log` VALUES (1031, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:28');
INSERT INTO `sys_log` VALUES (1032, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:39');
INSERT INTO `sys_log` VALUES (1033, 1, 'admin', '删除菜单', 11, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:44');
INSERT INTO `sys_log` VALUES (1034, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:48');
INSERT INTO `sys_log` VALUES (1035, 1, 'admin', '删除菜单', 14, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:51');
INSERT INTO `sys_log` VALUES (1036, 1, 'admin', '删除菜单', 5, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:54');
INSERT INTO `sys_log` VALUES (1037, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:22:59');
INSERT INTO `sys_log` VALUES (1038, 1, 'admin', '删除菜单', 12, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:02');
INSERT INTO `sys_log` VALUES (1039, 1, 'admin', '删除菜单', 10, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:07');
INSERT INTO `sys_log` VALUES (1040, 1, 'admin', '删除菜单', 5, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:11');
INSERT INTO `sys_log` VALUES (1041, 1, 'admin', '删除菜单', 2, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:15');
INSERT INTO `sys_log` VALUES (1042, 1, 'admin', '删除菜单', 2, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:20');
INSERT INTO `sys_log` VALUES (1043, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:25');
INSERT INTO `sys_log` VALUES (1044, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:29');
INSERT INTO `sys_log` VALUES (1045, 1, 'admin', '删除菜单', 6, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:34');
INSERT INTO `sys_log` VALUES (1046, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:37');
INSERT INTO `sys_log` VALUES (1047, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 09:23:40');
INSERT INTO `sys_log` VALUES (1048, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 09:23:49');
INSERT INTO `sys_log` VALUES (1049, 1, 'admin', '登录', 64, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:07:00');
INSERT INTO `sys_log` VALUES (1050, 1, 'admin', '请求访问主页', 38, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:07:00');
INSERT INTO `sys_log` VALUES (1051, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:07:29');
INSERT INTO `sys_log` VALUES (1052, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:07:29');
INSERT INTO `sys_log` VALUES (1053, 1, 'admin', '添加菜单', 1, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:09:24');
INSERT INTO `sys_log` VALUES (1054, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:10:06');
INSERT INTO `sys_log` VALUES (1055, 1, 'admin', '添加菜单', 2, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:10:20');
INSERT INTO `sys_log` VALUES (1056, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:11:19');
INSERT INTO `sys_log` VALUES (1057, 1, 'admin', '添加菜单', 6, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:11:30');
INSERT INTO `sys_log` VALUES (1058, 1, 'admin', '保存菜单', 3, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:11:51');
INSERT INTO `sys_log` VALUES (1059, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:11:58');
INSERT INTO `sys_log` VALUES (1060, 1, 'admin', '保存菜单', 4, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:12:20');
INSERT INTO `sys_log` VALUES (1061, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:12:29');
INSERT INTO `sys_log` VALUES (1062, 1, 'admin', '保存菜单', 6, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:12:40');
INSERT INTO `sys_log` VALUES (1063, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:12:43');
INSERT INTO `sys_log` VALUES (1064, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:12:55');
INSERT INTO `sys_log` VALUES (1065, 1, 'admin', '添加菜单', 4, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:13:01');
INSERT INTO `sys_log` VALUES (1066, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:13:48');
INSERT INTO `sys_log` VALUES (1067, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:13:53');
INSERT INTO `sys_log` VALUES (1068, 1, 'admin', '编辑菜单', 9, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:13:57');
INSERT INTO `sys_log` VALUES (1069, 1, 'admin', '编辑菜单', 9, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:13:59');
INSERT INTO `sys_log` VALUES (1070, 1, 'admin', '更新菜单', 12, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:01');
INSERT INTO `sys_log` VALUES (1071, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:06');
INSERT INTO `sys_log` VALUES (1072, 1, 'admin', '更新菜单', 6, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:07');
INSERT INTO `sys_log` VALUES (1073, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:13');
INSERT INTO `sys_log` VALUES (1074, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:15');
INSERT INTO `sys_log` VALUES (1075, 1, 'admin', '编辑菜单', 4, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:20');
INSERT INTO `sys_log` VALUES (1076, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:22');
INSERT INTO `sys_log` VALUES (1077, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:26');
INSERT INTO `sys_log` VALUES (1078, 1, 'admin', '更新菜单', 4, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:29');
INSERT INTO `sys_log` VALUES (1079, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:14:36');
INSERT INTO `sys_log` VALUES (1080, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:40');
INSERT INTO `sys_log` VALUES (1081, 1, 'admin', '更新角色', 20, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:14:51');
INSERT INTO `sys_log` VALUES (1082, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:14:53');
INSERT INTO `sys_log` VALUES (1083, 1, 'admin', '更新角色', 10, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:15:11');
INSERT INTO `sys_log` VALUES (1084, 1, 'admin', '编辑角色', 1, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:15:20');
INSERT INTO `sys_log` VALUES (1085, 1, 'admin', '更新角色', 21, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:15:24');
INSERT INTO `sys_log` VALUES (1086, 1, 'admin', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:15:25');
INSERT INTO `sys_log` VALUES (1087, 1, 'admin', '编辑菜单', 5, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:15:39');
INSERT INTO `sys_log` VALUES (1088, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:15:43');
INSERT INTO `sys_log` VALUES (1089, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:15:44');
INSERT INTO `sys_log` VALUES (1090, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:16:45');
INSERT INTO `sys_log` VALUES (1091, 1, 'admin', '更新角色', 21, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:16:52');
INSERT INTO `sys_log` VALUES (1092, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:16:53');
INSERT INTO `sys_log` VALUES (1093, 1, 'admin', '更新角色', 9, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:17:08');
INSERT INTO `sys_log` VALUES (1094, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:17:10');
INSERT INTO `sys_log` VALUES (1095, 1, 'admin', '更新角色', 10, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:17:13');
INSERT INTO `sys_log` VALUES (1096, 1, 'admin', '删除菜单', 13, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 10:17:19');
INSERT INTO `sys_log` VALUES (1097, 1, 'admin', '编辑菜单', 7, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-04 10:17:25');
INSERT INTO `sys_log` VALUES (1098, 1, 'admin', '更新菜单', 5, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-04 10:17:27');
INSERT INTO `sys_log` VALUES (1099, 1, 'admin', '添加菜单', 5, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:17:34');
INSERT INTO `sys_log` VALUES (1100, 1, 'admin', '保存菜单', 5, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:17:41');
INSERT INTO `sys_log` VALUES (1101, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:17:43');
INSERT INTO `sys_log` VALUES (1102, 1, 'admin', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:17:53');
INSERT INTO `sys_log` VALUES (1103, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:21:02');
INSERT INTO `sys_log` VALUES (1104, 1, 'admin', '请求访问主页', 23, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:21:02');
INSERT INTO `sys_log` VALUES (1105, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.UncategorizedSQLException: \r\n### Error querying database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve com.bootdo.school.dao.StudyDao.list\r\n### The error occurred while executing a query\r\n### SQL: select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,   `update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?; nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?', NULL, '2024-07-04 10:21:04');
INSERT INTO `sys_log` VALUES (1106, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:24:35');
INSERT INTO `sys_log` VALUES (1107, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:24:35');
INSERT INTO `sys_log` VALUES (1108, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.UncategorizedSQLException: \r\n### Error querying database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve com.bootdo.school.dao.StudyDao.list\r\n### The error occurred while executing a query\r\n### SQL: select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,   `update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?; nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?', NULL, '2024-07-04 10:24:37');
INSERT INTO `sys_log` VALUES (1109, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.UncategorizedSQLException: \r\n### Error querying database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve com.bootdo.school.dao.StudyDao.list\r\n### The error occurred while executing a query\r\n### SQL: select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,   `update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?; nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?', NULL, '2024-07-04 10:25:03');
INSERT INTO `sys_log` VALUES (1110, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:25:05');
INSERT INTO `sys_log` VALUES (1111, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.UncategorizedSQLException: \r\n### Error querying database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve com.bootdo.school.dao.StudyDao.list\r\n### The error occurred while executing a query\r\n### SQL: select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,   `update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?; nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'title`,`study_content`,`create_by`,\',expect IDENTIFIER, actual IDENTIFIER `,` : select `id`,`studey_person`,`studey_type`,`study_title`,`study_content`,`create_by`,`create_time`,\n		`update_by`,`update_t`study_title`,`study_content`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`\n		from school_study\n          \n         \n                order by id desc\n			 \n		 \n			limit ?, ?', NULL, '2024-07-04 10:25:07');
INSERT INTO `sys_log` VALUES (1112, 1, 'admin', '登录', 28, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:28:26');
INSERT INTO `sys_log` VALUES (1113, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:28:26');
INSERT INTO `sys_log` VALUES (1114, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_person\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select id, studey_person, studey_type, study_title, study_content, create_by, create_time, update_by, update_time, remark   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_person\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_person\' in \'field list\'', NULL, '2024-07-04 10:28:28');
INSERT INTO `sys_log` VALUES (1115, 1, 'admin', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:29:41');
INSERT INTO `sys_log` VALUES (1116, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:29:41');
INSERT INTO `sys_log` VALUES (1117, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/list', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_type\' in \'field list\'\r\n### The error may exist in file [D:\\ProjectJava\\bootdo\\target\\classes\\mybatis\\school\\StudyMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select id, study_person, studey_type, study_title, study_content, create_by, create_time, update_by, update_time, remark   from school_study                                      order by id desc             limit ?, ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_type\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'studey_type\' in \'field list\'', NULL, '2024-07-04 10:29:43');
INSERT INTO `sys_log` VALUES (1118, 1, 'admin', '登录', 68, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:30:46');
INSERT INTO `sys_log` VALUES (1119, 1, 'admin', '请求访问主页', 58, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:30:46');
INSERT INTO `sys_log` VALUES (1120, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:32:31');
INSERT INTO `sys_log` VALUES (1121, 1, 'admin', '登录', 50, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:32:37');
INSERT INTO `sys_log` VALUES (1122, 1, 'admin', '请求访问主页', 42, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:32:37');
INSERT INTO `sys_log` VALUES (1123, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:32:57');
INSERT INTO `sys_log` VALUES (1124, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:32:57');
INSERT INTO `sys_log` VALUES (1125, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:33:54');
INSERT INTO `sys_log` VALUES (1126, 1, 'admin', '请求访问主页', 19, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:33:54');
INSERT INTO `sys_log` VALUES (1127, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:34:06');
INSERT INTO `sys_log` VALUES (1128, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:34:06');
INSERT INTO `sys_log` VALUES (1129, 1, 'admin', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:35:54');
INSERT INTO `sys_log` VALUES (1130, 1, 'admin', '请求访问主页', 19, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:35:54');
INSERT INTO `sys_log` VALUES (1131, 1, 'admin', '登录', 79, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:37:01');
INSERT INTO `sys_log` VALUES (1132, 1, 'admin', '请求访问主页', 53, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:37:02');
INSERT INTO `sys_log` VALUES (1133, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:38:43');
INSERT INTO `sys_log` VALUES (1134, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:38:48');
INSERT INTO `sys_log` VALUES (1135, 1, 'admin', '更新角色', 21, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:38:53');
INSERT INTO `sys_log` VALUES (1136, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:38:54');
INSERT INTO `sys_log` VALUES (1137, 1, 'admin', '更新角色', 8, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:38:58');
INSERT INTO `sys_log` VALUES (1138, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:39:00');
INSERT INTO `sys_log` VALUES (1139, -1, '获取用户信息为空', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:39:17');
INSERT INTO `sys_log` VALUES (1140, 138, 'xiaoming', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:39:21');
INSERT INTO `sys_log` VALUES (1141, 138, 'xiaoming', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:39:21');
INSERT INTO `sys_log` VALUES (1142, 1, 'admin', '登录', 61, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:48:43');
INSERT INTO `sys_log` VALUES (1143, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:48:43');
INSERT INTO `sys_log` VALUES (1144, 1, 'admin', '编辑角色', 5, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:48:48');
INSERT INTO `sys_log` VALUES (1145, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:48:51');
INSERT INTO `sys_log` VALUES (1146, 1, 'admin', '更新角色', 14, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:48:54');
INSERT INTO `sys_log` VALUES (1147, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:48:55');
INSERT INTO `sys_log` VALUES (1148, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:48:59');
INSERT INTO `sys_log` VALUES (1149, 1, 'admin', '删除菜单', 7, 'com.bootdo.system.controller.MenuController.remove()', NULL, '127.0.0.1', '2024-07-04 10:49:07');
INSERT INTO `sys_log` VALUES (1150, 1, 'admin', '添加菜单', 6, 'com.bootdo.system.controller.MenuController.add()', NULL, '127.0.0.1', '2024-07-04 10:49:11');
INSERT INTO `sys_log` VALUES (1151, 1, 'admin', '保存菜单', 8, 'com.bootdo.system.controller.MenuController.save()', NULL, '127.0.0.1', '2024-07-04 10:49:40');
INSERT INTO `sys_log` VALUES (1152, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:50:10');
INSERT INTO `sys_log` VALUES (1153, 1, 'admin', '更新角色', 14, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:50:12');
INSERT INTO `sys_log` VALUES (1154, 1, 'admin', '编辑角色', 1, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-04 10:50:14');
INSERT INTO `sys_log` VALUES (1155, 1, 'admin', '更新角色', 15, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-04 10:50:17');
INSERT INTO `sys_log` VALUES (1156, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:50:18');
INSERT INTO `sys_log` VALUES (1157, 138, 'xiaoming', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:50:42');
INSERT INTO `sys_log` VALUES (1158, 138, 'xiaoming', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:50:42');
INSERT INTO `sys_log` VALUES (1159, 138, 'xiaoming', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:50:52');
INSERT INTO `sys_log` VALUES (1160, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:52:30');
INSERT INTO `sys_log` VALUES (1161, 138, 'xiaoming', '登录', 59, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:52:39');
INSERT INTO `sys_log` VALUES (1162, 138, 'xiaoming', '请求访问主页', 44, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:52:39');
INSERT INTO `sys_log` VALUES (1163, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 10:53:02');
INSERT INTO `sys_log` VALUES (1164, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 10:53:02');
INSERT INTO `sys_log` VALUES (1165, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:12:49');
INSERT INTO `sys_log` VALUES (1166, 1, 'admin', '登录', 55, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:17:31');
INSERT INTO `sys_log` VALUES (1167, 1, 'admin', '请求访问主页', 37, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:17:31');
INSERT INTO `sys_log` VALUES (1168, 138, 'xiaoming', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:18:53');
INSERT INTO `sys_log` VALUES (1169, 138, 'xiaoming', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:18:53');
INSERT INTO `sys_log` VALUES (1170, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:19:31');
INSERT INTO `sys_log` VALUES (1171, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:19:31');
INSERT INTO `sys_log` VALUES (1172, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:19:45');
INSERT INTO `sys_log` VALUES (1173, -1, '获取用户信息为空', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:19:50');
INSERT INTO `sys_log` VALUES (1174, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:19:56');
INSERT INTO `sys_log` VALUES (1175, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:19:56');
INSERT INTO `sys_log` VALUES (1176, 1, 'admin', '请求更改用户密码', 1, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-07-04 11:20:00');
INSERT INTO `sys_log` VALUES (1177, 1, 'admin', 'admin提交更改用户密码', 19, 'com.bootdo.system.controller.UserController.adminResetPwd()', NULL, '127.0.0.1', '2024-07-04 11:20:04');
INSERT INTO `sys_log` VALUES (1178, 139, 'qwer', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 11:20:17');
INSERT INTO `sys_log` VALUES (1179, 139, 'qwer', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 11:20:17');
INSERT INTO `sys_log` VALUES (1180, 1, 'admin', '登录', 61, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-04 21:00:02');
INSERT INTO `sys_log` VALUES (1181, 1, 'admin', '请求访问主页', 297, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-04 21:00:02');
INSERT INTO `sys_log` VALUES (1182, 1, 'admin', '登录', 320, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 00:08:53');
INSERT INTO `sys_log` VALUES (1183, 1, 'admin', '请求访问主页', 138, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 00:08:53');
INSERT INTO `sys_log` VALUES (1184, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 00:09:07');
INSERT INTO `sys_log` VALUES (1185, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 00:09:07');
INSERT INTO `sys_log` VALUES (1186, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 00:09:14');
INSERT INTO `sys_log` VALUES (1187, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 00:09:14');
INSERT INTO `sys_log` VALUES (1188, 1, 'admin', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 00:21:16');
INSERT INTO `sys_log` VALUES (1189, 1, 'admin', '请求访问主页', 23, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 00:21:16');
INSERT INTO `sys_log` VALUES (1190, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '171.108.102.208', '2024-07-06 00:22:43');
INSERT INTO `sys_log` VALUES (1191, 1, 'admin', '请求访问主页', 17, 'com.bootdo.system.controller.LoginController.index()', NULL, '171.108.102.208', '2024-07-06 00:22:44');
INSERT INTO `sys_log` VALUES (1192, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '171.108.102.208', '2024-07-06 00:23:43');
INSERT INTO `sys_log` VALUES (1193, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '171.108.102.208', '2024-07-06 00:23:43');
INSERT INTO `sys_log` VALUES (1194, 1, 'admin', '登录', 34, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 12:22:32');
INSERT INTO `sys_log` VALUES (1195, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 12:22:32');
INSERT INTO `sys_log` VALUES (1196, 1, 'admin', '登录', 17, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-06 23:59:20');
INSERT INTO `sys_log` VALUES (1197, 1, 'admin', '请求访问主页', 16, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-06 23:59:20');
INSERT INTO `sys_log` VALUES (1198, 1, 'admin', '编辑角色', 3, 'com.bootdo.system.controller.RoleController.edit()', NULL, '183.195.63.173', '2024-07-07 00:00:40');
INSERT INTO `sys_log` VALUES (1199, 139, 'qwer', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 00:01:17');
INSERT INTO `sys_log` VALUES (1200, 139, 'qwer', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:01:17');
INSERT INTO `sys_log` VALUES (1201, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 00:02:11');
INSERT INTO `sys_log` VALUES (1202, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 00:02:19');
INSERT INTO `sys_log` VALUES (1203, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:02:19');
INSERT INTO `sys_log` VALUES (1204, 1, 'admin', '添加用户', 2, 'com.bootdo.system.controller.UserController.add()', NULL, '183.195.63.173', '2024-07-07 00:02:23');
INSERT INTO `sys_log` VALUES (1205, 1, 'admin', '保存用户', 45, 'com.bootdo.system.controller.UserController.save()', NULL, '183.195.63.173', '2024-07-07 00:02:49');
INSERT INTO `sys_log` VALUES (1206, 140, 'xb', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 00:02:58');
INSERT INTO `sys_log` VALUES (1207, 140, 'xb', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:02:58');
INSERT INTO `sys_log` VALUES (1208, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 00:03:10');
INSERT INTO `sys_log` VALUES (1209, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:03:10');
INSERT INTO `sys_log` VALUES (1210, 1, 'admin', '添加菜单', 9, 'com.bootdo.system.controller.MenuController.add()', NULL, '183.195.63.173', '2024-07-07 00:12:26');
INSERT INTO `sys_log` VALUES (1211, 1, 'admin', '保存菜单', 16, 'com.bootdo.system.controller.MenuController.save()', NULL, '183.195.63.173', '2024-07-07 00:12:41');
INSERT INTO `sys_log` VALUES (1212, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:24:21');
INSERT INTO `sys_log` VALUES (1213, 1, 'admin', '添加用户', 3, 'com.bootdo.system.controller.UserController.add()', NULL, '183.195.63.173', '2024-07-07 00:24:29');
INSERT INTO `sys_log` VALUES (1214, 1, 'admin', '保存用户', 24, 'com.bootdo.system.controller.UserController.save()', NULL, '183.195.63.173', '2024-07-07 00:24:47');
INSERT INTO `sys_log` VALUES (1215, 1, 'admin', '添加用户', 3, 'com.bootdo.system.controller.UserController.add()', NULL, '183.195.63.173', '2024-07-07 00:24:49');
INSERT INTO `sys_log` VALUES (1216, 1, 'admin', '添加用户', 3, 'com.bootdo.system.controller.UserController.add()', NULL, '183.195.63.173', '2024-07-07 00:24:59');
INSERT INTO `sys_log` VALUES (1217, 1, 'admin', '保存用户', 25, 'com.bootdo.system.controller.UserController.save()', NULL, '183.195.63.173', '2024-07-07 00:25:20');
INSERT INTO `sys_log` VALUES (1218, 1, 'admin', '编辑用户', 21, 'com.bootdo.system.controller.UserController.edit()', NULL, '183.195.63.173', '2024-07-07 00:25:22');
INSERT INTO `sys_log` VALUES (1219, 1, 'admin', 'error', NULL, 'http://49.232.17.211:2024/sys/user/edit/140', 'java.lang.NullPointerException', NULL, '2024-07-07 00:25:25');
INSERT INTO `sys_log` VALUES (1220, 1, 'admin', '删除用户', 16, 'com.bootdo.system.controller.UserController.remove()', NULL, '183.195.63.173', '2024-07-07 00:25:30');
INSERT INTO `sys_log` VALUES (1221, 1, 'admin', '编辑用户', 13, 'com.bootdo.system.controller.UserController.edit()', NULL, '183.195.63.173', '2024-07-07 00:25:31');
INSERT INTO `sys_log` VALUES (1222, 1, 'admin', '添加用户', 2, 'com.bootdo.system.controller.UserController.add()', NULL, '183.195.63.173', '2024-07-07 00:25:37');
INSERT INTO `sys_log` VALUES (1223, 1, 'admin', '保存用户', 20, 'com.bootdo.system.controller.UserController.save()', NULL, '183.195.63.173', '2024-07-07 00:25:50');
INSERT INTO `sys_log` VALUES (1224, 1, 'admin', '编辑用户', 15, 'com.bootdo.system.controller.UserController.edit()', NULL, '183.195.63.173', '2024-07-07 00:25:51');
INSERT INTO `sys_log` VALUES (1225, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 00:32:08');
INSERT INTO `sys_log` VALUES (1226, 1, 'admin', '登录', 57, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:04:57');
INSERT INTO `sys_log` VALUES (1227, 1, 'admin', '请求访问主页', 299, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:04:57');
INSERT INTO `sys_log` VALUES (1228, 1, 'admin', '编辑角色', 32, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-07 10:05:04');
INSERT INTO `sys_log` VALUES (1229, 1, 'admin', '更新角色', 217, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-07 10:05:08');
INSERT INTO `sys_log` VALUES (1230, 1, 'admin', '编辑菜单', 397, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-07 10:05:14');
INSERT INTO `sys_log` VALUES (1231, 1, 'admin', '更新菜单', 177, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-07 10:05:38');
INSERT INTO `sys_log` VALUES (1232, 1, 'admin', '请求访问主页', 238, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:05:44');
INSERT INTO `sys_log` VALUES (1233, 1, 'admin', '登录', 54, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:06:46');
INSERT INTO `sys_log` VALUES (1234, 1, 'admin', '请求访问主页', 327, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:06:46');
INSERT INTO `sys_log` VALUES (1235, 1, 'admin', '编辑菜单', 415, 'com.bootdo.system.controller.MenuController.edit()', NULL, '127.0.0.1', '2024-07-07 10:06:52');
INSERT INTO `sys_log` VALUES (1236, 1, 'admin', '更新菜单', 191, 'com.bootdo.system.controller.MenuController.update()', NULL, '127.0.0.1', '2024-07-07 10:06:55');
INSERT INTO `sys_log` VALUES (1237, 1, 'admin', '请求访问主页', 300, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:06:56');
INSERT INTO `sys_log` VALUES (1238, 1, 'admin', '登录', 104, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:14:08');
INSERT INTO `sys_log` VALUES (1239, 1, 'admin', '请求访问主页', 623, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:14:09');
INSERT INTO `sys_log` VALUES (1240, 1, 'admin', '登录', 34, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:14:33');
INSERT INTO `sys_log` VALUES (1241, 1, 'admin', '请求访问主页', 247, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:14:33');
INSERT INTO `sys_log` VALUES (1242, 1, 'admin', '登录', 58, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:23:06');
INSERT INTO `sys_log` VALUES (1243, 1, 'admin', '请求访问主页', 305, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:23:06');
INSERT INTO `sys_log` VALUES (1244, 1, 'admin', '登录', 64, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:24:04');
INSERT INTO `sys_log` VALUES (1245, 1, 'admin', '请求访问主页', 327, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:24:05');
INSERT INTO `sys_log` VALUES (1246, 1, 'admin', '登录', 59, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:25:06');
INSERT INTO `sys_log` VALUES (1247, 1, 'admin', '请求访问主页', 373, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:25:06');
INSERT INTO `sys_log` VALUES (1248, 1, 'admin', '登录', 57, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:26:03');
INSERT INTO `sys_log` VALUES (1249, 1, 'admin', '请求访问主页', 307, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:26:03');
INSERT INTO `sys_log` VALUES (1250, 1, 'admin', '登录', 72, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:28:28');
INSERT INTO `sys_log` VALUES (1251, 1, 'admin', '请求访问主页', 472, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:28:28');
INSERT INTO `sys_log` VALUES (1252, NULL, NULL, 'error', NULL, 'http://localhost:2024/;JSESSIONID=8c83658b-21d4-4cf8-bc59-563ade23eb69login', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported', NULL, '2024-07-07 10:30:02');
INSERT INTO `sys_log` VALUES (1253, 1, 'admin', '登录', 55, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 10:30:08');
INSERT INTO `sys_log` VALUES (1254, 1, 'admin', '请求访问主页', 335, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 10:30:09');
INSERT INTO `sys_log` VALUES (1255, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '183.195.63.173', '2024-07-07 05:37:32');
INSERT INTO `sys_log` VALUES (1256, 1, 'admin', '请求访问主页', 13, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 05:37:32');
INSERT INTO `sys_log` VALUES (1257, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 05:38:46');
INSERT INTO `sys_log` VALUES (1258, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 06:02:47');
INSERT INTO `sys_log` VALUES (1259, 1, 'admin', '编辑菜单', 17, 'com.bootdo.system.controller.MenuController.edit()', NULL, '183.195.63.173', '2024-07-07 06:02:55');
INSERT INTO `sys_log` VALUES (1260, 1, 'admin', '更新菜单', 19, 'com.bootdo.system.controller.MenuController.update()', NULL, '183.195.63.173', '2024-07-07 06:03:10');
INSERT INTO `sys_log` VALUES (1261, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '183.195.63.173', '2024-07-07 06:07:18');
INSERT INTO `sys_log` VALUES (1262, 1, 'admin', '登录', 70, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:28:11');
INSERT INTO `sys_log` VALUES (1263, 1, 'admin', '请求访问主页', 807, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:28:12');
INSERT INTO `sys_log` VALUES (1264, 1, 'admin', '登录', 56, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:29:04');
INSERT INTO `sys_log` VALUES (1265, 1, 'admin', '请求访问主页', 311, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:29:05');
INSERT INTO `sys_log` VALUES (1266, 1, 'admin', '登录', 55, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:30:32');
INSERT INTO `sys_log` VALUES (1267, 1, 'admin', '请求访问主页', 311, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:30:32');
INSERT INTO `sys_log` VALUES (1268, 1, 'admin', '请求访问主页', 19758, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:37:31');
INSERT INTO `sys_log` VALUES (1269, 1, 'admin', '请求访问主页', 262, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:39:19');
INSERT INTO `sys_log` VALUES (1270, 1, 'admin', '请求访问主页', 252, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:40:03');
INSERT INTO `sys_log` VALUES (1271, 1, 'admin', '登录', 68, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:41:48');
INSERT INTO `sys_log` VALUES (1272, 1, 'admin', '请求访问主页', 334, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:41:49');
INSERT INTO `sys_log` VALUES (1273, 1, 'admin', '请求访问主页', 489, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:42:04');
INSERT INTO `sys_log` VALUES (1274, 1, 'admin', '请求访问主页', 232, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:42:36');
INSERT INTO `sys_log` VALUES (1275, 1, 'admin', '请求访问主页', 242, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:44:01');
INSERT INTO `sys_log` VALUES (1276, 1, 'admin', '登录', 62, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:52:50');
INSERT INTO `sys_log` VALUES (1277, 1, 'admin', '请求访问主页', 298, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:52:50');
INSERT INTO `sys_log` VALUES (1278, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/update', 'java.lang.NullPointerException', NULL, '2024-07-07 14:52:58');
INSERT INTO `sys_log` VALUES (1279, 1, 'admin', '登录', 54, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 14:57:41');
INSERT INTO `sys_log` VALUES (1280, 1, 'admin', '请求访问主页', 316, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 14:57:41');
INSERT INTO `sys_log` VALUES (1281, 1, 'admin', 'error', NULL, 'http://localhost:2024/school/study/update', 'java.lang.NullPointerException', NULL, '2024-07-07 14:58:01');
INSERT INTO `sys_log` VALUES (1282, 1, 'admin', '登录', 66, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 15:00:44');
INSERT INTO `sys_log` VALUES (1283, 1, 'admin', '请求访问主页', 329, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:00:45');
INSERT INTO `sys_log` VALUES (1284, 1, 'admin', '请求访问主页', 641, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:01:13');
INSERT INTO `sys_log` VALUES (1285, 1, 'admin', '请求访问主页', 292, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:01:33');
INSERT INTO `sys_log` VALUES (1286, 1, 'admin', '请求访问主页', 298, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:01:50');
INSERT INTO `sys_log` VALUES (1287, 1, 'admin', '登录', 60, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 15:03:05');
INSERT INTO `sys_log` VALUES (1288, 1, 'admin', '请求访问主页', 558, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:03:06');
INSERT INTO `sys_log` VALUES (1289, 1, 'admin', '登录', 193, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 15:04:23');
INSERT INTO `sys_log` VALUES (1290, 1, 'admin', '请求访问主页', 288, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:04:24');
INSERT INTO `sys_log` VALUES (1291, 1, 'admin', '登录', 34, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-07-07 15:04:56');
INSERT INTO `sys_log` VALUES (1292, 1, 'admin', '请求访问主页', 487, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:04:57');
INSERT INTO `sys_log` VALUES (1293, 1, 'admin', '请求访问主页', 266, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:05:57');
INSERT INTO `sys_log` VALUES (1294, 1, 'admin', '请求访问主页', 238, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-07-07 15:06:28');
INSERT INTO `sys_log` VALUES (1295, 1, 'admin', '编辑角色', 33, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-07 15:06:59');
INSERT INTO `sys_log` VALUES (1296, 1, 'admin', '更新角色', 202, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-07-07 15:07:03');
INSERT INTO `sys_log` VALUES (1297, 1, 'admin', '编辑角色', 29, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-07-07 15:07:05');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '基础管理', '', '', 0, 'fa fa-bars', 0, '2017-08-09 22:49:47', NULL);
INSERT INTO `sys_menu` VALUES (2, 3, '系统菜单', 'sys/menu/', 'sys:menu:menu', 1, 'fa fa-th-list', 2, '2017-08-09 22:55:15', NULL);
INSERT INTO `sys_menu` VALUES (3, 0, '系统管理', NULL, NULL, 0, 'fa fa-desktop', 1, '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES (6, 3, '用户管理', 'sys/user/', 'sys:user:user', 1, 'fa fa-user', 0, '2017-08-10 14:12:11', NULL);
INSERT INTO `sys_menu` VALUES (7, 3, '角色管理', 'sys/role', 'sys:role:role', 1, 'fa fa-paw', 1, '2017-08-10 14:13:19', NULL);
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '', 'sys:user:add', 2, '', 0, '2017-08-14 10:51:35', NULL);
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '', 'sys:user:edit', 2, '', 0, '2017-08-14 10:52:06', NULL);
INSERT INTO `sys_menu` VALUES (14, 6, '删除', NULL, 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', NULL);
INSERT INTO `sys_menu` VALUES (15, 7, '新增', '', 'sys:role:add', 2, '', 0, '2017-08-14 10:56:37', NULL);
INSERT INTO `sys_menu` VALUES (20, 2, '新增', '', 'sys:menu:add', 2, '', 0, '2017-08-14 10:59:32', NULL);
INSERT INTO `sys_menu` VALUES (21, 2, '编辑', '', 'sys:menu:edit', 2, '', 0, '2017-08-14 10:59:56', NULL);
INSERT INTO `sys_menu` VALUES (22, 2, '删除', '', 'sys:menu:remove', 2, '', 0, '2017-08-14 11:00:26', NULL);
INSERT INTO `sys_menu` VALUES (24, 6, '批量删除', '', 'sys:user:batchRemove', 2, '', 0, '2017-08-14 17:27:18', NULL);
INSERT INTO `sys_menu` VALUES (25, 6, '停用', NULL, 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', NULL);
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '', 'sys:user:resetPwd', 2, '', 0, '2017-08-14 17:28:34', NULL);
INSERT INTO `sys_menu` VALUES (27, 91, '系统日志', 'common/log', 'common:log', 1, 'fa fa-warning', 0, '2017-08-14 22:11:53', NULL);
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', NULL, 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', NULL);
INSERT INTO `sys_menu` VALUES (29, 27, '删除', NULL, 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', NULL);
INSERT INTO `sys_menu` VALUES (30, 27, '清空', NULL, 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', NULL);
INSERT INTO `sys_menu` VALUES (48, 77, '代码生成', 'common/generator', 'common:generator', 1, 'fa fa-code', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (55, 7, '编辑', '', 'sys:role:edit', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (56, 7, '删除', '', 'sys:role:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (57, 91, '运行监控', '/druid/index.html', '', 1, 'fa fa-caret-square-o-right', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 2, '批量删除', '', 'sys:menu:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (62, 7, '批量删除', '', 'sys:role:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, 1, '文件管理', '/common/sysFile', 'common:sysFile:sysFile', 1, 'fa fa-folder-open', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, 77, '计划任务', 'common/job', 'common:taskScheduleJob', 1, 'fa fa-hourglass-1', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, 3, '部门管理', '/system/sysDept', 'system:sysDept:sysDept', 1, 'fa fa-users', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, 73, '增加', '/system/sysDept/add', 'system:sysDept:add', 2, NULL, 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, 73, '刪除', 'system/sysDept/remove', 'system:sysDept:remove', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, 73, '编辑', '/system/sysDept/edit', 'system:sysDept:edit', 2, NULL, 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, 0, '系统工具', '', '', 0, 'fa fa-gear', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, 1, '数据字典', '/common/dict', 'common:dict:dict', 1, 'fa fa-book', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, 78, '增加', '/common/dict/add', 'common:dict:add', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (80, 78, '编辑', '/common/dict/edit', 'common:dict:edit', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (81, 78, '删除', '/common/dict/remove', 'common:dict:remove', 2, '', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (83, 78, '批量删除', '/common/dict/batchRemove', 'common:dict:batchRemove', 2, '', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (91, 0, '系统监控', '', '', 0, 'fa fa-video-camera', 5, NULL, NULL);
INSERT INTO `sys_menu` VALUES (92, 91, '在线用户', 'sys/online', '', 1, 'fa fa-user', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, 77, 'swagger', '/swagger-ui.html', '', 1, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (129, 0, '学生成绩', '', '', 0, 'fa fa-bar-chart', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (130, 129, '学生成绩', '/school/study', 'school:study:study', 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (131, 130, '新增', '', 'school:study:add', 2, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (132, 130, '编辑', '', 'school:study:edit', 2, '', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (133, 130, '删除', '', 'school:study:remove', 2, '', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (134, 130, '批量删除', '', 'school:study:batchRemove', 2, '', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (137, 129, '查询成绩', '/school/project', 'school:project:project', 1, 'fa fa-book', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (138, 129, '成绩排名', '/cj/content', 'cj:content:content', 1, '', 3, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(0) NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级用户角色', 'admin', '拥有最高权限', 2, '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES (59, '普通用户', NULL, '基本用户权限', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES (60, '学生', NULL, '学生', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES (61, '老师', NULL, '老师', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4080 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (367, 44, 1);
INSERT INTO `sys_role_menu` VALUES (368, 44, 32);
INSERT INTO `sys_role_menu` VALUES (369, 44, 33);
INSERT INTO `sys_role_menu` VALUES (370, 44, 34);
INSERT INTO `sys_role_menu` VALUES (371, 44, 35);
INSERT INTO `sys_role_menu` VALUES (372, 44, 28);
INSERT INTO `sys_role_menu` VALUES (373, 44, 29);
INSERT INTO `sys_role_menu` VALUES (374, 44, 30);
INSERT INTO `sys_role_menu` VALUES (375, 44, 38);
INSERT INTO `sys_role_menu` VALUES (376, 44, 4);
INSERT INTO `sys_role_menu` VALUES (377, 44, 27);
INSERT INTO `sys_role_menu` VALUES (378, 45, 38);
INSERT INTO `sys_role_menu` VALUES (379, 46, 3);
INSERT INTO `sys_role_menu` VALUES (380, 46, 20);
INSERT INTO `sys_role_menu` VALUES (381, 46, 21);
INSERT INTO `sys_role_menu` VALUES (382, 46, 22);
INSERT INTO `sys_role_menu` VALUES (383, 46, 23);
INSERT INTO `sys_role_menu` VALUES (384, 46, 11);
INSERT INTO `sys_role_menu` VALUES (385, 46, 12);
INSERT INTO `sys_role_menu` VALUES (386, 46, 13);
INSERT INTO `sys_role_menu` VALUES (387, 46, 14);
INSERT INTO `sys_role_menu` VALUES (388, 46, 24);
INSERT INTO `sys_role_menu` VALUES (389, 46, 25);
INSERT INTO `sys_role_menu` VALUES (390, 46, 26);
INSERT INTO `sys_role_menu` VALUES (391, 46, 15);
INSERT INTO `sys_role_menu` VALUES (392, 46, 2);
INSERT INTO `sys_role_menu` VALUES (393, 46, 6);
INSERT INTO `sys_role_menu` VALUES (394, 46, 7);
INSERT INTO `sys_role_menu` VALUES (598, 50, 38);
INSERT INTO `sys_role_menu` VALUES (632, 38, 42);
INSERT INTO `sys_role_menu` VALUES (737, 51, 38);
INSERT INTO `sys_role_menu` VALUES (738, 51, 39);
INSERT INTO `sys_role_menu` VALUES (739, 51, 40);
INSERT INTO `sys_role_menu` VALUES (740, 51, 41);
INSERT INTO `sys_role_menu` VALUES (741, 51, 4);
INSERT INTO `sys_role_menu` VALUES (742, 51, 32);
INSERT INTO `sys_role_menu` VALUES (743, 51, 33);
INSERT INTO `sys_role_menu` VALUES (744, 51, 34);
INSERT INTO `sys_role_menu` VALUES (745, 51, 35);
INSERT INTO `sys_role_menu` VALUES (746, 51, 27);
INSERT INTO `sys_role_menu` VALUES (747, 51, 28);
INSERT INTO `sys_role_menu` VALUES (748, 51, 29);
INSERT INTO `sys_role_menu` VALUES (749, 51, 30);
INSERT INTO `sys_role_menu` VALUES (750, 51, 1);
INSERT INTO `sys_role_menu` VALUES (1064, 54, 53);
INSERT INTO `sys_role_menu` VALUES (1095, 55, 2);
INSERT INTO `sys_role_menu` VALUES (1096, 55, 6);
INSERT INTO `sys_role_menu` VALUES (1097, 55, 7);
INSERT INTO `sys_role_menu` VALUES (1098, 55, 3);
INSERT INTO `sys_role_menu` VALUES (1099, 55, 50);
INSERT INTO `sys_role_menu` VALUES (1100, 55, 49);
INSERT INTO `sys_role_menu` VALUES (1101, 55, 1);
INSERT INTO `sys_role_menu` VALUES (1856, 53, 28);
INSERT INTO `sys_role_menu` VALUES (1857, 53, 29);
INSERT INTO `sys_role_menu` VALUES (1858, 53, 30);
INSERT INTO `sys_role_menu` VALUES (1859, 53, 27);
INSERT INTO `sys_role_menu` VALUES (1860, 53, 57);
INSERT INTO `sys_role_menu` VALUES (1861, 53, 71);
INSERT INTO `sys_role_menu` VALUES (1862, 53, 48);
INSERT INTO `sys_role_menu` VALUES (1863, 53, 72);
INSERT INTO `sys_role_menu` VALUES (1864, 53, 1);
INSERT INTO `sys_role_menu` VALUES (1865, 53, 7);
INSERT INTO `sys_role_menu` VALUES (1866, 53, 55);
INSERT INTO `sys_role_menu` VALUES (1867, 53, 56);
INSERT INTO `sys_role_menu` VALUES (1868, 53, 62);
INSERT INTO `sys_role_menu` VALUES (1869, 53, 15);
INSERT INTO `sys_role_menu` VALUES (1870, 53, 2);
INSERT INTO `sys_role_menu` VALUES (1871, 53, 61);
INSERT INTO `sys_role_menu` VALUES (1872, 53, 20);
INSERT INTO `sys_role_menu` VALUES (1873, 53, 21);
INSERT INTO `sys_role_menu` VALUES (1874, 53, 22);
INSERT INTO `sys_role_menu` VALUES (2084, 56, 68);
INSERT INTO `sys_role_menu` VALUES (2085, 56, 60);
INSERT INTO `sys_role_menu` VALUES (2086, 56, 59);
INSERT INTO `sys_role_menu` VALUES (2087, 56, 58);
INSERT INTO `sys_role_menu` VALUES (2088, 56, 51);
INSERT INTO `sys_role_menu` VALUES (2089, 56, 50);
INSERT INTO `sys_role_menu` VALUES (2090, 56, 49);
INSERT INTO `sys_role_menu` VALUES (2243, 48, 72);
INSERT INTO `sys_role_menu` VALUES (2252, 64, 84);
INSERT INTO `sys_role_menu` VALUES (2253, 64, 89);
INSERT INTO `sys_role_menu` VALUES (2254, 64, 88);
INSERT INTO `sys_role_menu` VALUES (2255, 64, 87);
INSERT INTO `sys_role_menu` VALUES (2256, 64, 86);
INSERT INTO `sys_role_menu` VALUES (2257, 64, 85);
INSERT INTO `sys_role_menu` VALUES (2258, 65, 89);
INSERT INTO `sys_role_menu` VALUES (2259, 65, 88);
INSERT INTO `sys_role_menu` VALUES (2260, 65, 86);
INSERT INTO `sys_role_menu` VALUES (2262, 67, 48);
INSERT INTO `sys_role_menu` VALUES (2263, 68, 88);
INSERT INTO `sys_role_menu` VALUES (2264, 68, 87);
INSERT INTO `sys_role_menu` VALUES (2265, 69, 89);
INSERT INTO `sys_role_menu` VALUES (2266, 69, 88);
INSERT INTO `sys_role_menu` VALUES (2267, 69, 86);
INSERT INTO `sys_role_menu` VALUES (2268, 69, 87);
INSERT INTO `sys_role_menu` VALUES (2269, 69, 85);
INSERT INTO `sys_role_menu` VALUES (2270, 69, 84);
INSERT INTO `sys_role_menu` VALUES (2271, 70, 85);
INSERT INTO `sys_role_menu` VALUES (2272, 70, 89);
INSERT INTO `sys_role_menu` VALUES (2273, 70, 88);
INSERT INTO `sys_role_menu` VALUES (2274, 70, 87);
INSERT INTO `sys_role_menu` VALUES (2275, 70, 86);
INSERT INTO `sys_role_menu` VALUES (2276, 70, 84);
INSERT INTO `sys_role_menu` VALUES (2277, 71, 87);
INSERT INTO `sys_role_menu` VALUES (2278, 72, 59);
INSERT INTO `sys_role_menu` VALUES (2279, 73, 48);
INSERT INTO `sys_role_menu` VALUES (2280, 74, 88);
INSERT INTO `sys_role_menu` VALUES (2281, 74, 87);
INSERT INTO `sys_role_menu` VALUES (2282, 75, 88);
INSERT INTO `sys_role_menu` VALUES (2283, 75, 87);
INSERT INTO `sys_role_menu` VALUES (2284, 76, 85);
INSERT INTO `sys_role_menu` VALUES (2285, 76, 89);
INSERT INTO `sys_role_menu` VALUES (2286, 76, 88);
INSERT INTO `sys_role_menu` VALUES (2287, 76, 87);
INSERT INTO `sys_role_menu` VALUES (2288, 76, 86);
INSERT INTO `sys_role_menu` VALUES (2289, 76, 84);
INSERT INTO `sys_role_menu` VALUES (2292, 78, 88);
INSERT INTO `sys_role_menu` VALUES (2293, 78, 87);
INSERT INTO `sys_role_menu` VALUES (2294, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2295, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2296, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2308, 80, 87);
INSERT INTO `sys_role_menu` VALUES (2309, 80, 86);
INSERT INTO `sys_role_menu` VALUES (2310, 80, -1);
INSERT INTO `sys_role_menu` VALUES (2311, 80, 84);
INSERT INTO `sys_role_menu` VALUES (2312, 80, 85);
INSERT INTO `sys_role_menu` VALUES (2328, 79, 72);
INSERT INTO `sys_role_menu` VALUES (2329, 79, 48);
INSERT INTO `sys_role_menu` VALUES (2330, 79, 77);
INSERT INTO `sys_role_menu` VALUES (2331, 79, 84);
INSERT INTO `sys_role_menu` VALUES (2332, 79, 89);
INSERT INTO `sys_role_menu` VALUES (2333, 79, 88);
INSERT INTO `sys_role_menu` VALUES (2334, 79, 87);
INSERT INTO `sys_role_menu` VALUES (2335, 79, 86);
INSERT INTO `sys_role_menu` VALUES (2336, 79, 85);
INSERT INTO `sys_role_menu` VALUES (2337, 79, -1);
INSERT INTO `sys_role_menu` VALUES (2338, 77, 89);
INSERT INTO `sys_role_menu` VALUES (2339, 77, 88);
INSERT INTO `sys_role_menu` VALUES (2340, 77, 87);
INSERT INTO `sys_role_menu` VALUES (2341, 77, 86);
INSERT INTO `sys_role_menu` VALUES (2342, 77, 85);
INSERT INTO `sys_role_menu` VALUES (2343, 77, 84);
INSERT INTO `sys_role_menu` VALUES (2344, 77, 72);
INSERT INTO `sys_role_menu` VALUES (2345, 77, -1);
INSERT INTO `sys_role_menu` VALUES (2346, 77, 77);
INSERT INTO `sys_role_menu` VALUES (2974, 57, 93);
INSERT INTO `sys_role_menu` VALUES (2975, 57, 99);
INSERT INTO `sys_role_menu` VALUES (2976, 57, 95);
INSERT INTO `sys_role_menu` VALUES (2977, 57, 101);
INSERT INTO `sys_role_menu` VALUES (2978, 57, 96);
INSERT INTO `sys_role_menu` VALUES (2979, 57, 94);
INSERT INTO `sys_role_menu` VALUES (2980, 57, -1);
INSERT INTO `sys_role_menu` VALUES (2981, 58, 93);
INSERT INTO `sys_role_menu` VALUES (2982, 58, 99);
INSERT INTO `sys_role_menu` VALUES (2983, 58, 95);
INSERT INTO `sys_role_menu` VALUES (2984, 58, 101);
INSERT INTO `sys_role_menu` VALUES (2985, 58, 96);
INSERT INTO `sys_role_menu` VALUES (2986, 58, 94);
INSERT INTO `sys_role_menu` VALUES (2987, 58, -1);
INSERT INTO `sys_role_menu` VALUES (3953, 61, 134);
INSERT INTO `sys_role_menu` VALUES (3954, 61, 133);
INSERT INTO `sys_role_menu` VALUES (3955, 61, 132);
INSERT INTO `sys_role_menu` VALUES (3956, 61, 131);
INSERT INTO `sys_role_menu` VALUES (3957, 61, 76);
INSERT INTO `sys_role_menu` VALUES (3958, 61, 75);
INSERT INTO `sys_role_menu` VALUES (3959, 61, 74);
INSERT INTO `sys_role_menu` VALUES (3960, 61, 62);
INSERT INTO `sys_role_menu` VALUES (3961, 61, 56);
INSERT INTO `sys_role_menu` VALUES (3962, 61, 55);
INSERT INTO `sys_role_menu` VALUES (3963, 61, 15);
INSERT INTO `sys_role_menu` VALUES (3964, 61, 26);
INSERT INTO `sys_role_menu` VALUES (3965, 61, 25);
INSERT INTO `sys_role_menu` VALUES (3966, 61, 24);
INSERT INTO `sys_role_menu` VALUES (3967, 61, 14);
INSERT INTO `sys_role_menu` VALUES (3968, 61, 13);
INSERT INTO `sys_role_menu` VALUES (3969, 61, 12);
INSERT INTO `sys_role_menu` VALUES (3970, 61, 73);
INSERT INTO `sys_role_menu` VALUES (3971, 61, 7);
INSERT INTO `sys_role_menu` VALUES (3972, 61, 6);
INSERT INTO `sys_role_menu` VALUES (3973, 61, -1);
INSERT INTO `sys_role_menu` VALUES (3974, 61, 129);
INSERT INTO `sys_role_menu` VALUES (3975, 61, 130);
INSERT INTO `sys_role_menu` VALUES (3976, 61, 3);
INSERT INTO `sys_role_menu` VALUES (4028, 1, 137);
INSERT INTO `sys_role_menu` VALUES (4029, 1, 134);
INSERT INTO `sys_role_menu` VALUES (4030, 1, 133);
INSERT INTO `sys_role_menu` VALUES (4031, 1, 132);
INSERT INTO `sys_role_menu` VALUES (4032, 1, 131);
INSERT INTO `sys_role_menu` VALUES (4033, 1, 92);
INSERT INTO `sys_role_menu` VALUES (4034, 1, 57);
INSERT INTO `sys_role_menu` VALUES (4035, 1, 30);
INSERT INTO `sys_role_menu` VALUES (4036, 1, 29);
INSERT INTO `sys_role_menu` VALUES (4037, 1, 28);
INSERT INTO `sys_role_menu` VALUES (4038, 1, 104);
INSERT INTO `sys_role_menu` VALUES (4039, 1, 72);
INSERT INTO `sys_role_menu` VALUES (4040, 1, 48);
INSERT INTO `sys_role_menu` VALUES (4041, 1, 76);
INSERT INTO `sys_role_menu` VALUES (4042, 1, 75);
INSERT INTO `sys_role_menu` VALUES (4043, 1, 74);
INSERT INTO `sys_role_menu` VALUES (4044, 1, 62);
INSERT INTO `sys_role_menu` VALUES (4045, 1, 56);
INSERT INTO `sys_role_menu` VALUES (4046, 1, 55);
INSERT INTO `sys_role_menu` VALUES (4047, 1, 15);
INSERT INTO `sys_role_menu` VALUES (4048, 1, 26);
INSERT INTO `sys_role_menu` VALUES (4049, 1, 25);
INSERT INTO `sys_role_menu` VALUES (4050, 1, 24);
INSERT INTO `sys_role_menu` VALUES (4051, 1, 14);
INSERT INTO `sys_role_menu` VALUES (4052, 1, 13);
INSERT INTO `sys_role_menu` VALUES (4053, 1, 12);
INSERT INTO `sys_role_menu` VALUES (4054, 1, 61);
INSERT INTO `sys_role_menu` VALUES (4055, 1, 22);
INSERT INTO `sys_role_menu` VALUES (4056, 1, 21);
INSERT INTO `sys_role_menu` VALUES (4057, 1, 20);
INSERT INTO `sys_role_menu` VALUES (4058, 1, 83);
INSERT INTO `sys_role_menu` VALUES (4059, 1, 81);
INSERT INTO `sys_role_menu` VALUES (4060, 1, 80);
INSERT INTO `sys_role_menu` VALUES (4061, 1, 79);
INSERT INTO `sys_role_menu` VALUES (4062, 1, 71);
INSERT INTO `sys_role_menu` VALUES (4063, 1, 130);
INSERT INTO `sys_role_menu` VALUES (4064, 1, 27);
INSERT INTO `sys_role_menu` VALUES (4065, 1, 91);
INSERT INTO `sys_role_menu` VALUES (4066, 1, 77);
INSERT INTO `sys_role_menu` VALUES (4067, 1, 73);
INSERT INTO `sys_role_menu` VALUES (4068, 1, 7);
INSERT INTO `sys_role_menu` VALUES (4069, 1, 6);
INSERT INTO `sys_role_menu` VALUES (4070, 1, 2);
INSERT INTO `sys_role_menu` VALUES (4071, 1, 3);
INSERT INTO `sys_role_menu` VALUES (4072, 1, 78);
INSERT INTO `sys_role_menu` VALUES (4073, 1, 1);
INSERT INTO `sys_role_menu` VALUES (4074, 1, 138);
INSERT INTO `sys_role_menu` VALUES (4075, 1, 129);
INSERT INTO `sys_role_menu` VALUES (4076, 1, -1);
INSERT INTO `sys_role_menu` VALUES (4077, 60, 137);
INSERT INTO `sys_role_menu` VALUES (4078, 60, 138);
INSERT INTO `sys_role_menu` VALUES (4079, 60, -1);
INSERT INTO `sys_role_menu` VALUES (4080, 60, 129);

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES (2, '0/10 * * * * ?', 'run1', '1', '', '4028ea815a3d2a8c015a3d2f8d2a0002', 'com.bootdo.common.task.WelcomeJob', '2017-05-19 18:30:56', '0', 'group1', '2017-05-19 18:31:07', NULL, '', 'welcomJob');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(0) NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(0) NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(0) NULL DEFAULT NULL COMMENT '性别',
  `birth` datetime(0) NULL DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(0) NULL DEFAULT NULL,
  `live_address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '27bd386e70f280e24c2f4f2a549b82cf', 11, 'admin@example.com', '17699999999', 1, 1, '2017-08-15 21:40:39', '2017-08-15 21:41:00', 96, '2017-12-14 00:00:00', 138, 'ccc', '122;121;', '北京市', '北京市市辖区', '东城区');
INSERT INTO `sys_user` VALUES (138, 'xiaoming', '小明', 'dca5e9f9e58c44d065c2d00b41014493', 30, '133@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (139, 'qwer', '老师1', 'e48ead8c2873904a161bd23777513b43', 30, '21883@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (141, 'xh', '小黑', '7f917b7070601774eb47c5704e72c1e9', 27, '21943@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (142, 'xh1', '小红', 'dfbf6e97a59c3797949b6a65491de8d8', 26, '21943@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (143, 'xb', '小白', '312401452824f19d84bc192db08f21b6', 20, '21943@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_plus
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_plus`;
CREATE TABLE `sys_user_plus`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NOT NULL,
  `payment` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_plus
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (73, 30, 48);
INSERT INTO `sys_user_role` VALUES (74, 30, 49);
INSERT INTO `sys_user_role` VALUES (75, 30, 50);
INSERT INTO `sys_user_role` VALUES (76, 31, 48);
INSERT INTO `sys_user_role` VALUES (77, 31, 49);
INSERT INTO `sys_user_role` VALUES (78, 31, 52);
INSERT INTO `sys_user_role` VALUES (79, 32, 48);
INSERT INTO `sys_user_role` VALUES (80, 32, 49);
INSERT INTO `sys_user_role` VALUES (81, 32, 50);
INSERT INTO `sys_user_role` VALUES (82, 32, 51);
INSERT INTO `sys_user_role` VALUES (83, 32, 52);
INSERT INTO `sys_user_role` VALUES (84, 33, 38);
INSERT INTO `sys_user_role` VALUES (85, 33, 49);
INSERT INTO `sys_user_role` VALUES (86, 33, 52);
INSERT INTO `sys_user_role` VALUES (87, 34, 50);
INSERT INTO `sys_user_role` VALUES (88, 34, 51);
INSERT INTO `sys_user_role` VALUES (89, 34, 52);
INSERT INTO `sys_user_role` VALUES (124, NULL, 48);
INSERT INTO `sys_user_role` VALUES (139, 138, 60);
INSERT INTO `sys_user_role` VALUES (140, 139, 61);
INSERT INTO `sys_user_role` VALUES (143, 1, 1);
INSERT INTO `sys_user_role` VALUES (145, 141, 60);
INSERT INTO `sys_user_role` VALUES (146, 142, 60);
INSERT INTO `sys_user_role` VALUES (147, 143, 60);

SET FOREIGN_KEY_CHECKS = 1;
