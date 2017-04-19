/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : forex

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-17 07:38:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fx_abc
-- ----------------------------
DROP TABLE IF EXISTS `fx_abc`;
CREATE TABLE `fx_abc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(50) DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '调用数',
  `items` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_abc
-- ----------------------------
INSERT INTO `fx_abc` VALUES ('1', '首页幻灯', '首页', '722', '257', '<loop><li><a href=\"{$url}\"><img src=\"{$content}\" width=\"{$width}\" height=\"{$height}\" /></a></li></loop>', '2', '2', '2');

-- ----------------------------
-- Table structure for fx_abc_detail
-- ----------------------------
DROP TABLE IF EXISTS `fx_abc_detail`;
CREATE TABLE `fx_abc_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_abc_detail
-- ----------------------------
INSERT INTO `fx_abc_detail` VALUES ('1', '图片1', 'http://img9.xyhcms.com/banner/p1.jpg', '#', '1416276000', '1924912800', '1', '1', '1');
INSERT INTO `fx_abc_detail` VALUES ('2', '图片2', 'http://img9.xyhcms.com/banner/p2.jpg', '#', '1416276000', '1924912800', '1', '1', '1');

-- ----------------------------
-- Table structure for fx_access
-- ----------------------------
DROP TABLE IF EXISTS `fx_access`;
CREATE TABLE `fx_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_access
-- ----------------------------
INSERT INTO `fx_access` VALUES ('1', '11', '3', null);
INSERT INTO `fx_access` VALUES ('1', '10', '3', null);
INSERT INTO `fx_access` VALUES ('1', '9', '3', null);
INSERT INTO `fx_access` VALUES ('1', '8', '3', null);
INSERT INTO `fx_access` VALUES ('1', '6', '3', null);
INSERT INTO `fx_access` VALUES ('1', '5', '3', null);
INSERT INTO `fx_access` VALUES ('1', '4', '3', null);
INSERT INTO `fx_access` VALUES ('1', '3', '3', null);
INSERT INTO `fx_access` VALUES ('1', '2', '2', null);
INSERT INTO `fx_access` VALUES ('1', '1', '1', null);
INSERT INTO `fx_access` VALUES ('1', '12', '3', null);
INSERT INTO `fx_access` VALUES ('1', '17', '2', null);
INSERT INTO `fx_access` VALUES ('1', '18', '3', null);
INSERT INTO `fx_access` VALUES ('1', '55', '3', null);
INSERT INTO `fx_access` VALUES ('1', '19', '2', null);
INSERT INTO `fx_access` VALUES ('1', '20', '3', null);
INSERT INTO `fx_access` VALUES ('1', '21', '3', null);
INSERT INTO `fx_access` VALUES ('1', '22', '3', null);
INSERT INTO `fx_access` VALUES ('1', '23', '3', null);
INSERT INTO `fx_access` VALUES ('1', '24', '3', null);
INSERT INTO `fx_access` VALUES ('1', '25', '2', null);
INSERT INTO `fx_access` VALUES ('1', '26', '3', null);
INSERT INTO `fx_access` VALUES ('1', '27', '3', null);
INSERT INTO `fx_access` VALUES ('1', '28', '3', null);
INSERT INTO `fx_access` VALUES ('1', '29', '3', null);
INSERT INTO `fx_access` VALUES ('1', '30', '3', null);
INSERT INTO `fx_access` VALUES ('1', '31', '2', null);
INSERT INTO `fx_access` VALUES ('1', '32', '3', null);
INSERT INTO `fx_access` VALUES ('1', '33', '3', null);
INSERT INTO `fx_access` VALUES ('1', '34', '3', null);
INSERT INTO `fx_access` VALUES ('1', '35', '3', null);
INSERT INTO `fx_access` VALUES ('1', '36', '2', null);
INSERT INTO `fx_access` VALUES ('1', '37', '3', null);
INSERT INTO `fx_access` VALUES ('1', '38', '3', null);
INSERT INTO `fx_access` VALUES ('1', '39', '3', null);
INSERT INTO `fx_access` VALUES ('1', '40', '3', null);
INSERT INTO `fx_access` VALUES ('1', '41', '2', null);
INSERT INTO `fx_access` VALUES ('1', '42', '3', null);
INSERT INTO `fx_access` VALUES ('1', '43', '3', null);
INSERT INTO `fx_access` VALUES ('1', '44', '3', null);
INSERT INTO `fx_access` VALUES ('1', '45', '3', null);
INSERT INTO `fx_access` VALUES ('1', '46', '2', null);
INSERT INTO `fx_access` VALUES ('1', '47', '3', null);
INSERT INTO `fx_access` VALUES ('1', '48', '3', null);
INSERT INTO `fx_access` VALUES ('1', '49', '3', null);
INSERT INTO `fx_access` VALUES ('1', '50', '3', null);
INSERT INTO `fx_access` VALUES ('1', '51', '2', null);
INSERT INTO `fx_access` VALUES ('1', '52', '3', null);
INSERT INTO `fx_access` VALUES ('1', '53', '3', null);
INSERT INTO `fx_access` VALUES ('1', '54', '3', null);

-- ----------------------------
-- Table structure for fx_active
-- ----------------------------
DROP TABLE IF EXISTS `fx_active`;
CREATE TABLE `fx_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `code` varchar(11) NOT NULL DEFAULT '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '激活时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_active
-- ----------------------------

-- ----------------------------
-- Table structure for fx_admin
-- ----------------------------
DROP TABLE IF EXISTS `fx_admin`;
CREATE TABLE `fx_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL COMMENT '登录IP',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

-- ----------------------------
-- Records of fx_admin
-- ----------------------------
INSERT INTO `fx_admin` VALUES ('1', 'admin', '37631502c710ef19514282758651c22e', 'kp1Qe3', '', '', '9', '1492340236', '127.0.0.1', '0');

-- ----------------------------
-- Table structure for fx_announce
-- ----------------------------
DROP TABLE IF EXISTS `fx_announce`;
CREATE TABLE `fx_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_announce
-- ----------------------------

-- ----------------------------
-- Table structure for fx_area
-- ----------------------------
DROP TABLE IF EXISTS `fx_area`;
CREATE TABLE `fx_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sname` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `ename` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_area
-- ----------------------------
INSERT INTO `fx_area` VALUES ('1', '北京市', '北京', '', '0', '0');
INSERT INTO `fx_area` VALUES ('2', '上海市', '上海', '', '0', '0');
INSERT INTO `fx_area` VALUES ('3', '天津市', '天津', '', '0', '0');
INSERT INTO `fx_area` VALUES ('4', '重庆市', '重庆', '', '0', '0');
INSERT INTO `fx_area` VALUES ('5', '广东省', '广东', '', '0', '0');
INSERT INTO `fx_area` VALUES ('6', '福建省', '福建', '', '0', '0');
INSERT INTO `fx_area` VALUES ('7', '浙江省', '浙江', '', '0', '0');
INSERT INTO `fx_area` VALUES ('8', '江苏省', '江苏', '', '0', '0');
INSERT INTO `fx_area` VALUES ('9', '山东省', '山东', '', '0', '0');
INSERT INTO `fx_area` VALUES ('10', '辽宁省', '辽宁', '', '0', '0');
INSERT INTO `fx_area` VALUES ('11', '江西省', '江西', '', '0', '0');
INSERT INTO `fx_area` VALUES ('12', '四川省', '四川', '', '0', '0');
INSERT INTO `fx_area` VALUES ('13', '陕西省', '陕西', '', '0', '0');
INSERT INTO `fx_area` VALUES ('14', '湖北省', '湖北', '', '0', '0');
INSERT INTO `fx_area` VALUES ('15', '河南省', '河南', '', '0', '0');
INSERT INTO `fx_area` VALUES ('16', '河北省', '河北', '', '0', '0');
INSERT INTO `fx_area` VALUES ('17', '山西省', '山西', '', '0', '0');
INSERT INTO `fx_area` VALUES ('18', '内蒙古', '内蒙古', '', '0', '0');
INSERT INTO `fx_area` VALUES ('19', '吉林省', '吉林', '', '0', '0');
INSERT INTO `fx_area` VALUES ('20', '黑龙江', '黑龙江', '', '0', '0');
INSERT INTO `fx_area` VALUES ('21', '安徽省', '安徽', '', '0', '0');
INSERT INTO `fx_area` VALUES ('22', '湖南省', '湖南', '', '0', '0');
INSERT INTO `fx_area` VALUES ('23', '广西', '广西', '', '0', '0');
INSERT INTO `fx_area` VALUES ('24', '海南省', '海南', '', '0', '0');
INSERT INTO `fx_area` VALUES ('25', '云南省', '云南', '', '0', '0');
INSERT INTO `fx_area` VALUES ('26', '贵州省', '贵州', '', '0', '0');
INSERT INTO `fx_area` VALUES ('27', '西藏', '西藏', '', '0', '0');
INSERT INTO `fx_area` VALUES ('28', '甘肃省', '甘肃', '', '0', '0');
INSERT INTO `fx_area` VALUES ('29', '宁夏区', '宁夏区', '', '0', '0');
INSERT INTO `fx_area` VALUES ('30', '青海省', '青海', '', '0', '0');
INSERT INTO `fx_area` VALUES ('31', '新疆', '新疆', '', '0', '0');
INSERT INTO `fx_area` VALUES ('32', '香港', '香港', '', '0', '0');
INSERT INTO `fx_area` VALUES ('33', '澳门', '澳门', '', '0', '0');
INSERT INTO `fx_area` VALUES ('34', '台湾省', '台湾', '', '0', '0');
INSERT INTO `fx_area` VALUES ('60', '海外', '海外', '', '0', '0');
INSERT INTO `fx_area` VALUES ('101', '东城区', '东城区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('102', '西城区', '西城区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('103', '崇文区', '崇文区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('104', '宣武区', '宣武区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('105', '朝阳区', '朝阳区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('106', '海淀区', '海淀区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('107', '丰台区', '丰台区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('108', '石景山区', '石景山区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('109', '门头沟区', '门头沟区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('110', '房山区', '房山区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('111', '通州区', '通区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('112', '顺义区', '顺义区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('113', '昌平区', '昌平区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('114', '大兴区', '大兴区', '', '1', '0');
INSERT INTO `fx_area` VALUES ('115', '平谷县', '平谷县', '', '1', '0');
INSERT INTO `fx_area` VALUES ('116', '怀柔县', '怀柔县', '', '1', '0');
INSERT INTO `fx_area` VALUES ('117', '密云县', '密云县', '', '1', '0');
INSERT INTO `fx_area` VALUES ('118', '延庆县', '延庆县', '', '1', '0');
INSERT INTO `fx_area` VALUES ('201', '黄浦区', '黄浦区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('202', '卢湾区', '卢湾区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('203', '徐汇区', '徐汇区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('204', '长宁区', '长宁区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('205', '静安区', '静安区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('206', '普陀区', '普陀区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('207', '闸北区', '闸北区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('208', '虹口区', '虹口区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('209', '杨浦区', '杨浦区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('210', '宝山区', '宝山区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('211', '闵行区', '闵行区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('212', '嘉定区', '嘉定区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('213', '浦东新区', '浦东新区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('214', '松江区', '松江区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('215', '金山区', '金山区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('216', '青浦区', '青浦区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('217', '南汇区', '南汇区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('218', '奉贤区', '奉贤区', '', '2', '0');
INSERT INTO `fx_area` VALUES ('219', '崇明县', '崇明县', '', '2', '0');
INSERT INTO `fx_area` VALUES ('301', '和平区', '和平区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('302', '河东区', '河东区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('303', '河西区', '河西区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('304', '南开区', '南开区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('305', '河北区', '河北区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('306', '红桥区', '红桥区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('307', '塘沽区', '塘沽区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('308', '汉沽区', '汉沽区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('309', '大港区', '大港区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('310', '东丽区', '东丽区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('311', '西青区', '西青区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('312', '北辰区', '北辰区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('313', '津南区', '津南区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('314', '武清区', '武清区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('315', '宝坻区', '宝坻区', '', '3', '0');
INSERT INTO `fx_area` VALUES ('316', '静海县', '静海县', '', '3', '0');
INSERT INTO `fx_area` VALUES ('317', '宁河县', '宁河县', '', '3', '0');
INSERT INTO `fx_area` VALUES ('318', '蓟县', '蓟县', '', '3', '0');
INSERT INTO `fx_area` VALUES ('401', '渝中区', '渝中区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('402', '大渡口区', '大渡口区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('403', '江北区', '江北区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('404', '沙坪坝区', '沙坪坝区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('405', '九龙坡区', '九龙坡区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('406', '南岸区', '南岸区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('407', '北碚区', '北碚区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('408', '万盛区', '万盛区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('409', '双桥区', '双桥区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('410', '渝北区', '渝北区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('411', '巴南区', '巴南区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('412', '万州区', '万区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('413', '涪陵区', '涪陵区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('414', '黔江区', '黔江区', '', '4', '0');
INSERT INTO `fx_area` VALUES ('415', '永川市', '永川', '', '4', '0');
INSERT INTO `fx_area` VALUES ('416', '合川市', '合川', '', '4', '0');
INSERT INTO `fx_area` VALUES ('417', '江津市', '江津', '', '4', '0');
INSERT INTO `fx_area` VALUES ('418', '南川市', '南川', '', '4', '0');
INSERT INTO `fx_area` VALUES ('419', '长寿县', '长寿县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('420', '綦江县', '綦江县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('421', '潼南县', '潼南县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('422', '荣昌县', '荣昌县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('423', '璧山县', '璧山县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('424', '大足县', '大足县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('425', '铜梁县', '铜梁县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('426', '梁平县', '梁平县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('427', '城口县', '城口县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('428', '垫江县', '垫江县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('429', '武隆县', '武隆县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('430', '丰都县', '丰都县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('431', '奉节县', '奉节县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('432', '开县', '开县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('433', '云阳县', '云阳县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('434', '忠县', '忠县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('435', '巫溪县', '巫溪县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('436', '巫山县', '巫山县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('437', '石柱县', '石柱县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('438', '秀山县', '秀山县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('439', '酉阳县', '酉阳县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('440', '彭水县', '彭水县', '', '4', '0');
INSERT INTO `fx_area` VALUES ('501', '广州市', '广州', '', '5', '0');
INSERT INTO `fx_area` VALUES ('502', '深圳市', '深圳', '', '5', '0');
INSERT INTO `fx_area` VALUES ('503', '珠海市', '珠海', '', '5', '0');
INSERT INTO `fx_area` VALUES ('504', '汕头市', '汕头', '', '5', '0');
INSERT INTO `fx_area` VALUES ('505', '韶关市', '韶关', '', '5', '0');
INSERT INTO `fx_area` VALUES ('506', '河源市', '河源', '', '5', '0');
INSERT INTO `fx_area` VALUES ('507', '梅州市', '梅州', '', '5', '0');
INSERT INTO `fx_area` VALUES ('508', '惠州市', '惠州', '', '5', '0');
INSERT INTO `fx_area` VALUES ('509', '汕尾市', '汕尾', '', '5', '0');
INSERT INTO `fx_area` VALUES ('510', '东莞市', '东莞', '', '5', '0');
INSERT INTO `fx_area` VALUES ('511', '中山市', '中山', '', '5', '0');
INSERT INTO `fx_area` VALUES ('512', '江门市', '江门', '', '5', '0');
INSERT INTO `fx_area` VALUES ('513', '佛山市', '佛山', '', '5', '0');
INSERT INTO `fx_area` VALUES ('514', '阳江市', '阳江', '', '5', '0');
INSERT INTO `fx_area` VALUES ('515', '湛江市', '湛江', '', '5', '0');
INSERT INTO `fx_area` VALUES ('516', '茂名市', '茂名', '', '5', '0');
INSERT INTO `fx_area` VALUES ('517', '肇庆市', '肇庆', '', '5', '0');
INSERT INTO `fx_area` VALUES ('518', '清远市', '清远', '', '5', '0');
INSERT INTO `fx_area` VALUES ('519', '潮州市', '潮州', '', '5', '0');
INSERT INTO `fx_area` VALUES ('520', '揭阳市', '揭阳', '', '5', '0');
INSERT INTO `fx_area` VALUES ('521', '云浮市', '云浮', '', '5', '0');
INSERT INTO `fx_area` VALUES ('601', '福州市', '福州', '', '6', '0');
INSERT INTO `fx_area` VALUES ('602', '厦门市', '厦门', '', '6', '0');
INSERT INTO `fx_area` VALUES ('603', '三明市', '三明', '', '6', '0');
INSERT INTO `fx_area` VALUES ('604', '莆田市', '莆田', '', '6', '0');
INSERT INTO `fx_area` VALUES ('605', '泉州市', '泉州', '', '6', '0');
INSERT INTO `fx_area` VALUES ('606', '漳州市', '漳州', '', '6', '0');
INSERT INTO `fx_area` VALUES ('607', '南平市', '南平', '', '6', '0');
INSERT INTO `fx_area` VALUES ('608', '龙岩市', '龙岩', '', '6', '0');
INSERT INTO `fx_area` VALUES ('609', '宁德市', '宁德', '', '6', '0');
INSERT INTO `fx_area` VALUES ('701', '杭州市', '杭州', '', '7', '0');
INSERT INTO `fx_area` VALUES ('702', '宁波市', '宁波', '', '7', '0');
INSERT INTO `fx_area` VALUES ('703', '温州市', '温州', '', '7', '0');
INSERT INTO `fx_area` VALUES ('704', '嘉兴市', '嘉兴', '', '7', '0');
INSERT INTO `fx_area` VALUES ('705', '湖州市', '湖州', '', '7', '0');
INSERT INTO `fx_area` VALUES ('706', '绍兴市', '绍兴', '', '7', '0');
INSERT INTO `fx_area` VALUES ('707', '金华市', '金华', '', '7', '0');
INSERT INTO `fx_area` VALUES ('708', '衢州市', '衢州', '', '7', '0');
INSERT INTO `fx_area` VALUES ('709', '舟山市', '舟山', '', '7', '0');
INSERT INTO `fx_area` VALUES ('710', '台州市', '台州', '', '7', '0');
INSERT INTO `fx_area` VALUES ('711', '丽水市', '丽水', '', '7', '0');
INSERT INTO `fx_area` VALUES ('801', '南京市', '南京', '', '8', '0');
INSERT INTO `fx_area` VALUES ('802', '徐州市', '徐州', '', '8', '0');
INSERT INTO `fx_area` VALUES ('803', '连云港市', '连云港', '', '8', '0');
INSERT INTO `fx_area` VALUES ('804', '淮安市', '淮安', '', '8', '0');
INSERT INTO `fx_area` VALUES ('805', '宿迁市', '宿迁', '', '8', '0');
INSERT INTO `fx_area` VALUES ('806', '盐城市', '盐城', '', '8', '0');
INSERT INTO `fx_area` VALUES ('807', '扬州市', '扬州', '', '8', '0');
INSERT INTO `fx_area` VALUES ('808', '泰州市', '泰州', '', '8', '0');
INSERT INTO `fx_area` VALUES ('809', '南通市', '南通', '', '8', '0');
INSERT INTO `fx_area` VALUES ('810', '镇江市', '镇江', '', '8', '0');
INSERT INTO `fx_area` VALUES ('811', '常州市', '常州', '', '8', '0');
INSERT INTO `fx_area` VALUES ('812', '无锡市', '无锡', '', '8', '0');
INSERT INTO `fx_area` VALUES ('813', '苏州市', '苏州', '', '8', '0');
INSERT INTO `fx_area` VALUES ('901', '济南市', '济南', '', '9', '0');
INSERT INTO `fx_area` VALUES ('902', '青岛市', '青岛', '', '9', '0');
INSERT INTO `fx_area` VALUES ('903', '淄博市', '淄博', '', '9', '0');
INSERT INTO `fx_area` VALUES ('904', '枣庄市', '枣庄', '', '9', '0');
INSERT INTO `fx_area` VALUES ('905', '东营市', '东营', '', '9', '0');
INSERT INTO `fx_area` VALUES ('906', '潍坊市', '潍坊', '', '9', '0');
INSERT INTO `fx_area` VALUES ('907', '烟台市', '烟台', '', '9', '0');
INSERT INTO `fx_area` VALUES ('908', '威海市', '威海', '', '9', '0');
INSERT INTO `fx_area` VALUES ('909', '济宁市', '济宁', '', '9', '0');
INSERT INTO `fx_area` VALUES ('910', '泰安市', '泰安', '', '9', '0');
INSERT INTO `fx_area` VALUES ('911', '日照市', '日照', '', '9', '0');
INSERT INTO `fx_area` VALUES ('912', '莱芜市', '莱芜', '', '9', '0');
INSERT INTO `fx_area` VALUES ('913', '德州市', '德州', '', '9', '0');
INSERT INTO `fx_area` VALUES ('914', '临沂市', '临沂', '', '9', '0');
INSERT INTO `fx_area` VALUES ('915', '聊城市', '聊城', '', '9', '0');
INSERT INTO `fx_area` VALUES ('916', '滨州市', '滨州', '', '9', '0');
INSERT INTO `fx_area` VALUES ('917', '菏泽市', '菏泽', '', '9', '0');
INSERT INTO `fx_area` VALUES ('1001', '沈阳市', '沈阳', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1002', '大连市', '大连', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1003', '鞍山市', '鞍山', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1004', '抚顺市', '抚顺', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1005', '本溪市', '本溪', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1006', '丹东市', '丹东', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1007', '锦州市', '锦州', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1008', '葫芦岛市', '葫芦岛', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1009', '营口市', '营口', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1010', '盘锦市', '盘锦', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1011', '阜新市', '阜新', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1012', '辽阳市', '辽阳', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1013', '铁岭市', '铁岭', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1014', '朝阳市', '朝阳', '', '10', '0');
INSERT INTO `fx_area` VALUES ('1101', '南昌市', '南昌', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1102', '景德镇市', '景德镇', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1103', '萍乡市', '萍乡', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1104', '新余市', '新余', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1105', '九江市', '九江', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1106', '鹰潭市', '鹰潭', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1107', '赣州市', '赣州', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1108', '吉安市', '吉安', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1109', '宜春市', '宜春', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1110', '抚州市', '抚州', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1111', '上饶市', '上饶', '', '11', '0');
INSERT INTO `fx_area` VALUES ('1201', '成都市', '成都', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1202', '自贡市', '自贡', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1203', '攀枝花市', '攀枝花', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1204', '泸州市', '泸州', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1205', '德阳市', '德阳', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1206', '绵阳市', '绵阳', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1207', '广元市', '广元', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1208', '遂宁市', '遂宁', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1209', '内江市', '内江', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1210', '乐山市', '乐山', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1211', '南充市', '南充', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1212', '宜宾市', '宜宾', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1213', '广安市', '广安', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1214', '达州市', '达州', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1215', '巴中市', '巴中', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1216', '雅安市', '雅安', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1217', '眉山市', '眉山', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1218', '资阳市', '资阳', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1219', '阿坝州', '阿坝', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1220', '甘孜州', '甘孜', '', '12', '0');
INSERT INTO `fx_area` VALUES ('1221', '凉山州', '凉山', '', '12', '0');
INSERT INTO `fx_area` VALUES ('3114', '西安市', '西安', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1302', '铜川市', '铜川', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1303', '宝鸡市', '宝鸡', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1304', '咸阳市', '咸阳', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1305', '渭南市', '渭南', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1306', '延安市', '延安', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1307', '汉中市', '汉中', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1308', '榆林市', '榆林', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1309', '安康市', '安康', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1310', '商洛地区', '商洛地区', '', '13', '0');
INSERT INTO `fx_area` VALUES ('1401', '武汉市', '武汉', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1402', '黄石市', '黄石', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1403', '襄樊市', '襄樊', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1404', '十堰市', '十堰', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1405', '荆州市', '荆州', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1406', '宜昌市', '宜昌', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1407', '荆门市', '荆门', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1408', '鄂州市', '鄂州', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1409', '孝感市', '孝感', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1410', '黄冈市', '黄冈', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1411', '咸宁市', '咸宁', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1412', '随州市', '随州', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1413', '仙桃市', '仙桃', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1414', '天门市', '天门', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1415', '潜江市', '潜江', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1416', '神农架', '神农架', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1417', '恩施州', '恩施', '', '14', '0');
INSERT INTO `fx_area` VALUES ('1501', '郑州市', '郑州', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1502', '开封市', '开封', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1503', '洛阳市', '洛阳', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1504', '平顶山市', '平顶山', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1505', '焦作市', '焦作', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1506', '鹤壁市', '鹤壁', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1507', '新乡市', '新乡', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1508', '安阳市', '安阳', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1509', '濮阳市', '濮阳', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1510', '许昌市', '许昌', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1511', '漯河市', '漯河', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1512', '三门峡市', '三门峡', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1513', '南阳市', '南阳', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1514', '商丘市', '商丘', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1515', '信阳市', '信阳', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1516', '周口市', '周口', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1517', '驻马店市', '驻马店', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1518', '济源市', '济源', '', '15', '0');
INSERT INTO `fx_area` VALUES ('1601', '石家庄市', '石家庄', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1602', '唐山市', '唐山', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1603', '秦皇岛市', '秦皇岛', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1604', '邯郸市', '邯郸', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1605', '邢台市', '邢台', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1606', '保定市', '保定', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1607', '张家口市', '张家口', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1608', '承德市', '承德', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1609', '沧州市', '沧州', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1610', '廊坊市', '廊坊', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1611', '衡水市', '衡水', '', '16', '0');
INSERT INTO `fx_area` VALUES ('1701', '太原市', '太原', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1702', '大同市', '大同', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1703', '阳泉市', '阳泉', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1704', '长治市', '长治', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1705', '晋城市', '晋城', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1706', '朔州市', '朔州', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1707', '晋中市', '晋中', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1708', '忻州市', '忻州', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1709', '临汾市', '临汾', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1710', '运城市', '运城', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1711', '吕梁地区', '吕梁地区', '', '17', '0');
INSERT INTO `fx_area` VALUES ('1801', '呼和浩特', '呼和浩特', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1802', '包头市', '包头', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1803', '乌海市', '乌海', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1804', '赤峰市', '赤峰', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1805', '通辽市', '通辽', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1806', '鄂尔多斯', '鄂尔多斯', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1807', '乌兰察布', '乌兰察布', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1808', '锡林郭勒', '锡林郭勒', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1809', '呼伦贝尔', '呼伦贝尔', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1810', '巴彦淖尔', '巴彦淖尔', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1811', '阿拉善盟', '阿拉善盟', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1812', '兴安盟', '兴安盟', '', '18', '0');
INSERT INTO `fx_area` VALUES ('1901', '长春市', '长春', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1902', '吉林市', '吉林', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1903', '四平市', '四平', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1904', '辽源市', '辽源', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1905', '通化市', '通化', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1906', '白山市', '白山', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1907', '松原市', '松原', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1908', '白城市', '白城', '', '19', '0');
INSERT INTO `fx_area` VALUES ('1909', '延边州', '延边', '', '19', '0');
INSERT INTO `fx_area` VALUES ('2001', '哈尔滨市', '哈尔滨', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2002', '齐齐哈尔', '齐齐哈尔', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2003', '鹤岗市', '鹤岗', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2004', '双鸭山市', '双鸭山', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2005', '鸡西市', '鸡西', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2006', '大庆市', '大庆', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2007', '伊春市', '伊春', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2008', '牡丹江市', '牡丹江', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2009', '佳木斯市', '佳木斯', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2010', '七台河市', '七台河', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2011', '黑河市', '黑河', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2012', '绥化市', '绥化', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2013', '大兴安岭', '大兴安岭', '', '20', '0');
INSERT INTO `fx_area` VALUES ('2101', '合肥市', '合肥', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2102', '芜湖市', '芜湖', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2103', '蚌埠市', '蚌埠', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2104', '淮南市', '淮南', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2105', '马鞍山市', '马鞍山', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2106', '淮北市', '淮北', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2107', '铜陵市', '铜陵', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2108', '安庆市', '安庆', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2109', '黄山市', '黄山', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2110', '滁州市', '滁州', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2111', '阜阳市', '阜阳', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2112', '宿州市', '宿州', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2113', '巢湖市', '巢湖', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2114', '六安市', '六安', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2115', '亳州市', '亳州', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2116', '宣城市', '宣城', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2117', '池州市', '池州', '', '21', '0');
INSERT INTO `fx_area` VALUES ('2201', '长沙市', '长沙', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2202', '株州市', '株州', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2203', '湘潭市', '湘潭', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2204', '衡阳市', '衡阳', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2205', '邵阳市', '邵阳', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2206', '岳阳市', '岳阳', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2207', '常德市', '常德', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2208', '张家界市', '张家界', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2209', '益阳市', '益阳', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2210', '郴州市', '郴州', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2211', '永州市', '永州', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2212', '怀化市', '怀化', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2213', '娄底市', '娄底', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2214', '湘西州', '湘西', '', '22', '0');
INSERT INTO `fx_area` VALUES ('2301', '南宁市', '南宁', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2302', '柳州市', '柳州', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2303', '桂林市', '桂林', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2304', '梧州市', '梧州', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2305', '北海市', '北海', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2306', '防城港市', '防城港', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2307', '钦州市', '钦州', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2308', '贵港市', '贵港', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2309', '玉林市', '玉林', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2310', '南宁地区', '南宁地区', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2311', '柳州地区', '柳地区', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2312', '贺州地区', '贺地区', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2313', '百色地区', '百色地区', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2314', '河池地区', '河池地区', '', '23', '0');
INSERT INTO `fx_area` VALUES ('2401', '海口市', '海口', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2402', '三亚市', '三亚', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2403', '五指山市', '五指山', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2404', '琼海市', '琼海', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2405', '儋州市', '儋州', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2406', '琼山市', '琼山', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2407', '文昌市', '文昌', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2408', '万宁市', '万宁', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2409', '东方市', '东方', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2410', '澄迈县', '澄迈县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2411', '定安县', '定安县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2412', '屯昌县', '屯昌县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2413', '临高县', '临高县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2414', '白沙县', '白沙县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2415', '昌江县', '昌江县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2416', '乐东县', '乐东县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2417', '陵水县', '陵水县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2418', '保亭县', '保亭县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2419', '琼中县', '琼中县', '', '24', '0');
INSERT INTO `fx_area` VALUES ('2501', '昆明市', '昆明', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2502', '曲靖市', '曲靖', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2503', '玉溪市', '玉溪', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2504', '保山市', '保山', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2505', '昭通市', '昭通', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2506', ' 普洱市', ' 普洱', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2507', '临沧市', '临沧', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2508', '丽江市', '丽江', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2509', '文山州', '文山', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2510', '红河州', '红河', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2511', '西双版纳', '西双版纳', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2512', '楚雄州', '楚雄', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2513', '大理州', '大理', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2514', '德宏州', '德宏', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2515', '怒江州', '怒江', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2516', '迪庆州', '迪庆', '', '25', '0');
INSERT INTO `fx_area` VALUES ('2601', '贵阳市', '贵阳', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2602', '六盘水市', '六盘水', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2603', '遵义市', '遵义', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2604', '安顺市', '安顺', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2605', '铜仁地区', '铜仁地区', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2606', '毕节地区', '毕节地区', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2607', '黔西南州', '黔西南', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2608', '黔东南州', '黔东南', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2609', '黔南州', '黔南', '', '26', '0');
INSERT INTO `fx_area` VALUES ('2701', '拉萨市', '拉萨', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2702', '那曲地区', '那曲地区', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2703', '昌都地区', '昌都地区', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2704', '山南地区', '山南地区', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2705', '日喀则', '日喀则', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2706', '阿里地区', '阿里地区', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2707', '林芝地区', '林芝地区', '', '27', '0');
INSERT INTO `fx_area` VALUES ('2801', '兰州市', '兰州', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2802', '金昌市', '金昌', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2803', '白银市', '白银', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2804', '天水市', '天水', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2805', '嘉峪关市', '嘉峪关', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2806', '武威市', '武威', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2807', '定西地区', '定西地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2808', '平凉地区', '平凉地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2809', '庆阳地区', '庆阳地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2810', '陇南地区', '陇南地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2811', '张掖地区', '张掖地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2812', '酒泉地区', '酒泉地区', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2813', '甘南州', '甘南', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2814', '临夏州', '临夏', '', '28', '0');
INSERT INTO `fx_area` VALUES ('2901', '银川市', '银川', '', '29', '0');
INSERT INTO `fx_area` VALUES ('2902', '石嘴山市', '石嘴山', '', '29', '0');
INSERT INTO `fx_area` VALUES ('2903', '吴忠市', '吴忠', '', '29', '0');
INSERT INTO `fx_area` VALUES ('2904', '固原市', '固原', '', '29', '0');
INSERT INTO `fx_area` VALUES ('3001', '西宁市', '西宁', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3002', '海东地区', '海东地区', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3003', '海北州', '海北', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3004', '黄南州', '黄南', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3005', '海南州', '海南', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3006', '果洛州', '果洛', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3007', '玉树州', '玉树', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3008', '海西州', '海西', '', '30', '0');
INSERT INTO `fx_area` VALUES ('3101', '乌鲁木齐', '乌鲁木齐', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3102', '克拉玛依', '克拉玛依', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3103', '石河子市', '石河子', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3104', '吐鲁番', '吐鲁番', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3105', '哈密地区', '哈密地区', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3106', '和田地区', '和田地区', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3107', '阿克苏', '阿克苏', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3108', '喀什地区', '喀什地区', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3109', '克孜勒苏', '克孜勒苏', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3110', '巴音郭楞', '巴音郭楞', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3111', '昌吉州', '昌吉', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3112', '博尔塔拉', '博尔塔拉', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3113', '伊犁州', '伊犁', '', '31', '0');
INSERT INTO `fx_area` VALUES ('3201', '香港岛', '香港岛', '', '32', '0');
INSERT INTO `fx_area` VALUES ('3202', '九龙', '九龙', '', '32', '0');
INSERT INTO `fx_area` VALUES ('3203', '新界', '新界', '', '32', '0');
INSERT INTO `fx_area` VALUES ('3301', '澳门半岛', '澳门半岛', '', '33', '0');
INSERT INTO `fx_area` VALUES ('3302', '离岛', '离岛', '', '33', '0');
INSERT INTO `fx_area` VALUES ('3401', '台北市', '台北', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3402', '高雄市', '高雄', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3403', '台南市', '台南', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3404', '台中市', '台中', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3405', '金门县', '金门县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3406', '南投县', '南投县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3407', '基隆市', '基隆', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3408', '新竹市', '新竹', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3409', '嘉义市', '嘉义', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3410', '新北市', '新北', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3411', '宜兰县', '宜兰县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3412', '新竹县', '新竹县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3413', '桃园县', '桃园县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3414', '苗栗县', '苗栗县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3415', '彰化县', '彰化县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3416', '嘉义县', '嘉义县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3417', '云林县', '云林县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3418', '屏东县', '屏东县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3419', '台东县', '台东县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3420', '花莲县', '花莲县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('3421', '澎湖县', '澎湖县', '', '34', '0');
INSERT INTO `fx_area` VALUES ('6001', '美国', '美国', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6002', '英国', '英国', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6003', '法国', '法国', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6004', '俄罗斯', '俄罗斯', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6005', '加拿大', '加拿大', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6006', '巴西', '巴西', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6007', '澳大利亚', '澳大利亚', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6008', '印尼', '印尼', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6009', '马来西亚', '马来西亚', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6010', '新加坡', '新加坡', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6011', '菲律宾', '菲律宾', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6012', '越南', '越南', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6013', '印度', '印度', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6014', '日本', '日本', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6015', '韩国', '韩国', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6016', '泰国', '泰国', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6017', '缅甸', '缅甸', '', '60', '0');
INSERT INTO `fx_area` VALUES ('6018', '其他', '其他', '', '60', '0');

-- ----------------------------
-- Table structure for fx_article
-- ----------------------------
DROP TABLE IF EXISTS `fx_article`;
CREATE TABLE `fx_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_article
-- ----------------------------

-- ----------------------------
-- Table structure for fx_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fx_attachment`;
CREATE TABLE `fx_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '原文件名',
  `filepath` varchar(200) NOT NULL DEFAULT '',
  `filetype` smallint(6) NOT NULL DEFAULT '1',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `haslitpic` tinyint(1) NOT NULL DEFAULT '1',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for fx_attachmentindex
-- ----------------------------
DROP TABLE IF EXISTS `fx_attachmentindex`;
CREATE TABLE `fx_attachmentindex` (
  `attid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(20) NOT NULL DEFAULT '',
  KEY `attid` (`attid`),
  KEY `arcid` (`arcid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_attachmentindex
-- ----------------------------

-- ----------------------------
-- Table structure for fx_block
-- ----------------------------
DROP TABLE IF EXISTS `fx_block`;
CREATE TABLE `fx_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '说明',
  `content` text COMMENT '内容',
  `blocktype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_block
-- ----------------------------
INSERT INTO `fx_block` VALUES ('1', 'Introduction', '', '<p>网络科技有限公司成立于2007年。是一家集科研、生产、开发、销售为一体的互联网产业高新技术企业。 我公司在全国与多个大型门户网站保持密切技术合作与往来；并且与全国多所高校合作，开发与研究互联网深度产品，取得了不错的研究成果，获得良好的好评</p>', '3');

-- ----------------------------
-- Table structure for fx_category
-- ----------------------------
DROP TABLE IF EXISTS `fx_category`;
CREATE TABLE `fx_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL DEFAULT '' COMMENT '别名',
  `catpic` varchar(150) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别',
  `seotitle` varchar(50) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

-- ----------------------------
-- Records of fx_category
-- ----------------------------

-- ----------------------------
-- Table structure for fx_category_access
-- ----------------------------
DROP TABLE IF EXISTS `fx_category_access`;
CREATE TABLE `fx_category_access` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  KEY `catid` (`catid`),
  KEY `roleid` (`roleid`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_category_access
-- ----------------------------

-- ----------------------------
-- Table structure for fx_charge_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_charge_record`;
CREATE TABLE `fx_charge_record` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL,
  `userid` int(20) NOT NULL,
  `accountid` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `charge_rmb` decimal(10,2) unsigned NOT NULL,
  `charge_usd` decimal(10,2) NOT NULL,
  `forex` float(8,4) unsigned NOT NULL COMMENT '汇率',
  `charge_time` varchar(32) NOT NULL,
  `pay_way` varchar(32) DEFAULT NULL,
  `pay_result` int(1) unsigned NOT NULL DEFAULT '0',
  `charge_result` int(1) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_charge_record
-- ----------------------------
INSERT INTO `fx_charge_record` VALUES ('1', '2147483647', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8641', '2017', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('2', '2147483647', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8641', '2017', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('3', '1015100216661703271737031', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8641', '2017', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('4', '1015100216661703271927241', '905819701', 'fjwinter', '冯建文', '6.87', '1.00', '6.8655', '2017', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('5', '1015100216661703271930041', '905819701', 'fjwinter', '冯建文', '6.87', '1.00', '6.8655', '2017-03-27 19:30:05', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('6', '1015100216661703271931521', '905819701', 'fjwinter', '冯建文', '6.87', '1.00', '6.8655', '2017-03-27 19:31:52', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('7', '1015100216661703280853101', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 08:53:11', '微信支付', '1', '1', null);
INSERT INTO `fx_charge_record` VALUES ('8', '1015100216661703280901461', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:01:47', '微信支付', '1', '1', null);
INSERT INTO `fx_charge_record` VALUES ('9', '1015100216661703280903231', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:03:24', '微信支付', '1', '1', null);
INSERT INTO `fx_charge_record` VALUES ('10', '1015100216661703280906011', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:06:02', '微信支付', '1', '1', null);
INSERT INTO `fx_charge_record` VALUES ('11', '1015100216661703280911061', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:11:07', '支付宝支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('12', '1015100216661703280914091', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:14:10', '支付宝支付', '1', '1', null);
INSERT INTO `fx_charge_record` VALUES ('13', '1015100216661703280924511', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:24:51', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('14', '1015100216661703280924571', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:24:58', '支付宝支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('15', '1015100216661703280926521', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:26:52', '支付宝支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('16', '1015100216661703280927131', '905819701', 'fjwinter', '冯建文', '6.86', '1.00', '6.8616', '2017-03-28 09:27:13', '微信支付', '0', '0', null);
INSERT INTO `fx_charge_record` VALUES ('17', '1015100216661703280927231', '905819701', 'fjwinter', '冯建文', '13.72', '2.00', '6.8616', '2017-03-28 09:27:23', '支付宝支付', '0', '0', null);

-- ----------------------------
-- Table structure for fx_comment
-- ----------------------------
DROP TABLE IF EXISTS `fx_comment`;
CREATE TABLE `fx_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `modelid` (`modelid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_comment
-- ----------------------------

-- ----------------------------
-- Table structure for fx_config
-- ----------------------------
DROP TABLE IF EXISTS `fx_config`;
CREATE TABLE `fx_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  `tvalue` varchar(150) NOT NULL DEFAULT '' COMMENT '参数类型',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分组',
  `value` text,
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `typeid` (`typeid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_config
-- ----------------------------
INSERT INTO `fx_config` VALUES ('1', 'CFG_WEBNAME', '网站名称', '', '', '2', '1', '外汇', '0');
INSERT INTO `fx_config` VALUES ('2', 'CFG_WEBURL', '网站域名', '', '', '2', '1', 'http://fjw.io/forex', '0');
INSERT INTO `fx_config` VALUES ('3', 'CFG_WEBTITLE', '网站标题', '站点首页title(SEO)的设置', '', '2', '1', '外汇', '0');
INSERT INTO `fx_config` VALUES ('4', 'CFG_KEYWORDS', '站点关键词', '', '', '2', '1', '外汇', '0');
INSERT INTO `fx_config` VALUES ('5', 'CFG_DESCRIPTION', '站点描述', '', '', '3', '1', '外汇', '0');
INSERT INTO `fx_config` VALUES ('6', 'CFG_THEMESTYLE', '模板风格', '', 'select', '2', '1', 'default', '0');
INSERT INTO `fx_config` VALUES ('7', 'CFG_COOKIE_ENCODE', 'cookie加密码', '', '', '2', '1', 'rPzgasPp2', '0');
INSERT INTO `fx_config` VALUES ('8', 'CFG_POWERBY', '网站版权信息', '', '', '3', '1', 'Copyright © 2014-2014 XYHCMS. 行云海软件 版权所有', '0');
INSERT INTO `fx_config` VALUES ('9', 'CFG_STATS', '网站统计', '', '', '3', '1', '', '0');
INSERT INTO `fx_config` VALUES ('10', 'CFG_BEIAN', '网站备案号', '', '', '2', '1', '', '0');
INSERT INTO `fx_config` VALUES ('11', 'CFG_ADDRESS', '联系地址', '', '', '2', '1', '昆明北京路', '0');
INSERT INTO `fx_config` VALUES ('12', 'CFG_PHONE', '联系电话', '', '', '2', '1', '0871-66666', '0');
INSERT INTO `fx_config` VALUES ('13', 'CFG_WEBSITE_CLOSE', '关闭网站', '', '', '4', '2', '0', '0');
INSERT INTO `fx_config` VALUES ('14', 'CFG_WEBSITE_CLOSE_INFO', '关站提示', '', '', '3', '2', '站点维护中，请稍等一会...', '0');
INSERT INTO `fx_config` VALUES ('15', 'CFG_MOBILE_AUTO', '手机版开启', '', '', '4', '2', '1', '1');
INSERT INTO `fx_config` VALUES ('16', 'CFG_EMAIL_FROM', '发件邮箱地址', '', '', '2', '3', 'ddend@qq.com', '0');
INSERT INTO `fx_config` VALUES ('17', 'CFG_EMAIL_FROM_NAME', '发件人名称', '', '', '2', '3', '站名', '0');
INSERT INTO `fx_config` VALUES ('18', 'CFG_EMAIL_HOST', 'STMP服务器', '', '', '2', '3', 'smtp.exmail.qq.com', '0');
INSERT INTO `fx_config` VALUES ('19', 'CFG_EMAIL_PORT', '服务器端口', '', '', '1', '3', '25', '0');
INSERT INTO `fx_config` VALUES ('20', 'CFG_EMAIL_LOGINNAME', '邮箱帐号', '', '', '2', '3', 'ddend@qq.com', '0');
INSERT INTO `fx_config` VALUES ('21', 'CFG_EMAIL_PASSWORD', '邮箱密码', '', '', '2', '3', '123zstQhz4', '0');
INSERT INTO `fx_config` VALUES ('22', 'CFG_BADWORD', '禁用词语', '', '', '3', '2', '艾滋病|中国共产党|111111111', '0');
INSERT INTO `fx_config` VALUES ('23', 'CFG_FEEDBACK_GUEST', '允许匿名评论', '', '', '4', '2', '1', '0');
INSERT INTO `fx_config` VALUES ('24', 'CFG_MEMBER_OPEN', '开启会员功能', '', '', '4', '5', '1', '0');
INSERT INTO `fx_config` VALUES ('25', 'CFG_MEMBER_VERIFYEMAIL', ' 开启邮件验证', '', '', '4', '5', '0', '0');
INSERT INTO `fx_config` VALUES ('26', 'CFG_MEMBER_NOTALLOW', '禁止使用的昵称', '', '', '3', '5', 'www,bbs,ftp,mail,user,users,admin,administrator,xyhcms', '0');
INSERT INTO `fx_config` VALUES ('27', 'CFG_UPLOAD_MAXSIZE', '允许上传大小', 'KB', '', '1', '4', '2048', '0');
INSERT INTO `fx_config` VALUES ('28', 'CFG_IMGTHUMB_SIZE', '缩略图组尺寸', '', '', '2', '4', '300X300', '0');
INSERT INTO `fx_config` VALUES ('29', 'CFG_IMGTHUMB_TYPE', '缩略图生成方式', '固定大小截取 ,原图等比例缩略', 'radio\r\n0|原图等比例缩略\r\n1|固定大小截取', '4', '4', '0', '0');
INSERT INTO `fx_config` VALUES ('30', 'CFG_IMGTHUMB_WIDTH', '固宽缩略图组长度', '固定宽度等比缩略,如60,50', '', '2', '4', '600', '0');
INSERT INTO `fx_config` VALUES ('31', 'CFG_UPLOAD_ROOTPATH', '上传根目录', '', '', '2', '4', './uploads/', '0');
INSERT INTO `fx_config` VALUES ('32', 'CFG_UPLOAD_FILE_EXT', '允许附件类型', '', '', '3', '4', 'jpg,gif,png,jpeg,txt,doc,docx,xls,ppt,zip,rar,mp3', '0');
INSERT INTO `fx_config` VALUES ('33', 'CFG_UPLOAD_IMG_EXT', '允许图片类型', '带缩略图的图片', '', '2', '4', 'jpg,gif,png,jpeg', '0');
INSERT INTO `fx_config` VALUES ('34', 'CFG_VERIFY_REGISTER', '开启注册验证码', '', '', '4', '2', '0', '0');
INSERT INTO `fx_config` VALUES ('35', 'CFG_VERIFY_LOGIN', '开启登录验证码', '', '', '4', '2', '0', '0');
INSERT INTO `fx_config` VALUES ('36', 'CFG_VERIFY_GUESTBOOK', '开启留言板验证码', '', '', '4', '2', '1', '0');
INSERT INTO `fx_config` VALUES ('37', 'CFG_VERIFY_REVIEW', '开启评论验证码', '', '', '4', '2', '1', '0');
INSERT INTO `fx_config` VALUES ('38', 'CFG_SQL_FILESIZE', 'sql文件大小', '备份数据库，值不可太大，否则会导致内存溢出备份、恢复失败，合理大小在512K~10M间，建议3M一卷。单位字节,5M=5*1024*1024=5242880', '', '1', '6', '5242880', '0');
INSERT INTO `fx_config` VALUES ('39', 'CFG_DOWNLOAD_HIDE', '隐藏下载地址', '', '', '4', '4', '0', '0');
INSERT INTO `fx_config` VALUES ('40', 'CFG_MOBILE_THEMESTYLE', '手机模板风格', '', 'select', '2', '2', 'default', '1');
INSERT INTO `fx_config` VALUES ('41', 'DATA_OPENID', '接口openid', '聚合数据用不到的', '', '0', '0', '', '0');
INSERT INTO `fx_config` VALUES ('45', 'DATA_SIGN', '数据sign', '聚合数据用不到的', '', '0', '0', 'df85d88858481c640d4e67af4ad9d533', '0');
INSERT INTO `fx_config` VALUES ('42', 'DATA_APPKEY', '接口appkey', '', '', '0', '0', '6f832d648ff472d9115a3089539b304c', '0');
INSERT INTO `fx_config` VALUES ('43', 'DATA_URL', '数据接口url', '', '', '0', '0', 'http://web.juhe.cn:8080/finance/exchange/rmbquot', '0');
INSERT INTO `fx_config` VALUES ('44', 'DATA_SECRET', '数据secret', '聚合数据用不到的', '', '0', '0', '5a083d4a14ac7fab7166fcc1fea18582', '0');
INSERT INTO `fx_config` VALUES ('46', 'K_REFRESH_INTERVAL', 'k线图刷新时间', 'value里的数值是刷新秒数', '', '0', '0', '1', '0');
INSERT INTO `fx_config` VALUES ('47', 'ADMIN_OP', '后台操作', '', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for fx_copyfrom
-- ----------------------------
DROP TABLE IF EXISTS `fx_copyfrom`;
CREATE TABLE `fx_copyfrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_copyfrom
-- ----------------------------

-- ----------------------------
-- Table structure for fx_forex
-- ----------------------------
DROP TABLE IF EXISTS `fx_forex`;
CREATE TABLE `fx_forex` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `f_time` varchar(32) NOT NULL DEFAULT '0' COMMENT '时间戳',
  `f_timestamp` varchar(32) NOT NULL,
  `name1` varchar(10) DEFAULT '',
  `title1` varchar(10) DEFAULT '',
  `fBuyPri1` float(8,4) unsigned DEFAULT '1.0000',
  `name2` varchar(10) DEFAULT '',
  `title2` varchar(10) DEFAULT '',
  `fBuyPri2` float(8,4) unsigned NOT NULL,
  `name3` varchar(10) DEFAULT '',
  `title3` varchar(10) DEFAULT '',
  `fBuyPri3` float(8,4) unsigned NOT NULL,
  `name4` varchar(10) DEFAULT '',
  `title4` varchar(10) DEFAULT '',
  `fBuyPri4` float(8,4) unsigned NOT NULL,
  `name5` varchar(10) DEFAULT '',
  `title5` varchar(10) DEFAULT '',
  `fBuyPri5` float(8,4) unsigned NOT NULL,
  `name6` varchar(10) DEFAULT '',
  `title6` varchar(10) DEFAULT '',
  `fBuyPri6` float(8,4) unsigned NOT NULL,
  `name7` varchar(10) DEFAULT '',
  `title7` varchar(10) DEFAULT '',
  `fBuyPri7` float(8,4) unsigned NOT NULL,
  `name8` varchar(10) DEFAULT NULL,
  `title8` varchar(10) DEFAULT NULL,
  `fBuyPri8` float(8,4) unsigned NOT NULL,
  `name9` varchar(10) DEFAULT NULL,
  `title9` varchar(10) DEFAULT NULL,
  `fBuyPri9` float(8,4) unsigned NOT NULL,
  `name10` varchar(10) DEFAULT NULL,
  `title10` varchar(10) DEFAULT NULL,
  `fBuyPri10` float(8,4) unsigned NOT NULL,
  `name11` varchar(10) DEFAULT NULL,
  `title11` varchar(10) DEFAULT NULL,
  `fBuyPri11` float(8,4) unsigned NOT NULL,
  `name12` varchar(10) DEFAULT NULL,
  `title12` varchar(10) DEFAULT NULL,
  `fBuyPri12` float(8,4) unsigned NOT NULL,
  `name13` varchar(10) DEFAULT NULL,
  `title13` varchar(10) DEFAULT NULL,
  `fBuyPri13` float(8,4) unsigned NOT NULL,
  `name14` varchar(10) DEFAULT NULL,
  `title14` varchar(10) DEFAULT NULL,
  `fBuyPri14` float(8,4) unsigned NOT NULL,
  `name15` varchar(10) DEFAULT NULL,
  `title15` varchar(10) DEFAULT NULL,
  `fBuyPri15` float(8,4) NOT NULL,
  `name16` varchar(10) DEFAULT NULL,
  `title16` varchar(10) DEFAULT NULL,
  `fBuyPri16` float(8,4) unsigned NOT NULL,
  `name17` varchar(10) DEFAULT NULL,
  `title17` varchar(10) DEFAULT NULL,
  `fBuyPri17` float(8,4) unsigned NOT NULL,
  `name18` varchar(10) DEFAULT NULL,
  `title18` varchar(10) DEFAULT NULL,
  `fBuyPri18` float(8,4) unsigned NOT NULL,
  `name19` varchar(10) DEFAULT NULL,
  `title19` varchar(10) DEFAULT NULL,
  `fBuyPri19` float(8,4) unsigned NOT NULL,
  `name20` varchar(10) DEFAULT NULL,
  `title20` varchar(10) DEFAULT NULL,
  `fBuyPri20` float(8,4) unsigned NOT NULL,
  `name21` varchar(10) DEFAULT NULL,
  `title21` varchar(10) DEFAULT NULL,
  `fBuyPri21` float(8,4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_forex
-- ----------------------------
INSERT INTO `fx_forex` VALUES ('1', '2017-04-11 16:10:01', '', 'RMB', '人民币', '6.8895', 'EUR', '欧元', '1.0576', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0090', 'GBP', '英镑', '1.2391', 'AUD', '澳大利亚元', '0.7503', 'CAD', '加拿大元', '0.7503', 'THB', '泰国铢', '0.0288', 'SGD', '新加坡元', '0.7106', 'DKK', '丹麦克朗', '0.9904', 'NOK', '挪威克朗', '0.1098', 'SEK', '瑞典克朗', '0.1158', 'CHF', '瑞士法郎', '0.1421', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1253', 'PHP', '菲律宾比索', '0.6939', 'MYR', '林吉特', '0.0719', 'MOP', '澳门元', '0.2268', 'KRW', '韩国元', '0.0175', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('2', '2017-04-11 16:15:03', '', 'RMB', '人民币', '6.8905', 'EUR', '欧元', '1.0584', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0090', 'GBP', '英镑', '1.2391', 'AUD', '澳大利亚元', '0.7503', 'CAD', '加拿大元', '0.7499', 'THB', '泰国铢', '0.0288', 'SGD', '新加坡元', '0.7109', 'DKK', '丹麦克朗', '0.9904', 'NOK', '挪威克朗', '0.1098', 'SEK', '瑞典克朗', '0.1158', 'CHF', '瑞士法郎', '0.1421', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1253', 'PHP', '菲律宾比索', '0.6939', 'MYR', '林吉特', '0.0719', 'MOP', '澳门元', '0.2268', 'KRW', '韩国元', '0.0175', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('3', '2017-04-11 16:25:04', '', 'RMB', '人民币', '6.8913', 'EUR', '欧元', '1.0584', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0090', 'GBP', '英镑', '1.2391', 'AUD', '澳大利亚元', '0.7499', 'CAD', '加拿大元', '0.7499', 'THB', '泰国铢', '0.0288', 'SGD', '新加坡元', '0.7106', 'DKK', '丹麦克朗', '0.9904', 'NOK', '挪威克朗', '0.1098', 'SEK', '瑞典克朗', '0.1158', 'CHF', '瑞士法郎', '0.1422', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1253', 'PHP', '菲律宾比索', '0.6939', 'MYR', '林吉特', '0.0719', 'MOP', '澳门元', '0.2269', 'KRW', '韩国元', '0.0175', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('4', '2017-04-12 11:05:01', '', 'RMB', '人民币', '6.8865', 'EUR', '欧元', '1.0591', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0091', 'GBP', '英镑', '1.2474', 'AUD', '澳大利亚元', '0.7481', 'CAD', '加拿大元', '0.7492', 'THB', '泰国铢', '0.0289', 'SGD', '新加坡元', '0.7121', 'DKK', '丹麦克朗', '0.9911', 'NOK', '挪威克朗', '0.1102', 'SEK', '瑞典克朗', '0.1160', 'CHF', '瑞士法郎', '0.1422', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1251', 'PHP', '菲律宾比索', '0.6927', 'MYR', '林吉特', '0.0722', 'MOP', '澳门元', '0.2268', 'KRW', '韩国元', '0.0175', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('5', '2017-04-13 10:10:01', '', 'RMB', '人民币', '6.8646', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7556', 'CAD', '加拿大元', '0.7544', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9959', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1166', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0743', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('6', '2017-04-13 10:10:01', '', 'RMB', '人民币', '6.8646', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7556', 'CAD', '加拿大元', '0.7544', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9959', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1166', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0743', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('7', '2017-04-13 10:10:01', '', 'RMB', '人民币', '6.8646', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7556', 'CAD', '加拿大元', '0.7544', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9959', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1166', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0743', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('8', '2017-04-13 10:10:01', '', 'RMB', '人民币', '6.8646', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7556', 'CAD', '加拿大元', '0.7544', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9959', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1166', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0743', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('9', '2017-04-13 10:10:01', '', 'RMB', '人民币', '6.8646', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7556', 'CAD', '加拿大元', '0.7544', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9959', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1166', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0743', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('10', '2017-04-13 10:15:03', '', 'RMB', '人民币', '6.8651', 'EUR', '欧元', '1.0651', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2552', 'AUD', '澳大利亚元', '0.7560', 'CAD', '加拿大元', '0.7548', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7148', 'DKK', '丹麦克朗', '0.9966', 'NOK', '挪威克朗', '0.1113', 'SEK', '瑞典克朗', '0.1167', 'CHF', '瑞士法郎', '0.1430', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0202', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6980', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2270', 'KRW', '韩国元', '0.0176', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('11', '2017-04-15 14:00:01', '1492236766', 'RMB', '人民币', '6.8735', 'EUR', '欧元', '1.0598', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2502', 'AUD', '澳大利亚元', '0.7565', 'CAD', '加拿大元', '0.7491', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7141', 'DKK', '丹麦克朗', '0.9925', 'NOK', '挪威克朗', '0.1104', 'SEK', '瑞典克朗', '0.1162', 'CHF', '瑞士法郎', '0.1423', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6987', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2278', 'KRW', '韩国元', '0.0177', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('12', '2017-04-15 14:00:01', '1492236766', 'RMB', '人民币', '6.8735', 'EUR', '欧元', '1.0598', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2502', 'AUD', '澳大利亚元', '0.7565', 'CAD', '加拿大元', '0.7491', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7141', 'DKK', '丹麦克朗', '0.9925', 'NOK', '挪威克朗', '0.1104', 'SEK', '瑞典克朗', '0.1162', 'CHF', '瑞士法郎', '0.1423', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6987', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2278', 'KRW', '韩国元', '0.0177', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('13', '2017-04-15 14:00:01', '1492236766', 'RMB', '人民币', '6.8735', 'EUR', '欧元', '1.0598', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2502', 'AUD', '澳大利亚元', '0.7565', 'CAD', '加拿大元', '0.7491', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7141', 'DKK', '丹麦克朗', '0.9925', 'NOK', '挪威克朗', '0.1104', 'SEK', '瑞典克朗', '0.1162', 'CHF', '瑞士法郎', '0.1423', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6987', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2278', 'KRW', '韩国元', '0.0177', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('14', '2017-04-15 14:10:02', '1492236708', 'RMB', '人民币', '6.8735', 'EUR', '欧元', '1.0598', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2502', 'AUD', '澳大利亚元', '0.7565', 'CAD', '加拿大元', '0.7491', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7141', 'DKK', '丹麦克朗', '0.9925', 'NOK', '挪威克朗', '0.1104', 'SEK', '瑞典克朗', '0.1162', 'CHF', '瑞士法郎', '0.1423', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6987', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2278', 'KRW', '韩国元', '0.0177', 'NZD', '新西兰元', '0.0009');
INSERT INTO `fx_forex` VALUES ('15', '2017-04-15 14:10:02', '1492236764', 'RMB', '人民币', '6.8735', 'EUR', '欧元', '1.0598', 'HKD', '港币', '0.1286', 'JPY', '日元', '0.0092', 'GBP', '英镑', '1.2502', 'AUD', '澳大利亚元', '0.7565', 'CAD', '加拿大元', '0.7491', 'THB', '泰国铢', '0.0290', 'SGD', '新加坡元', '0.7141', 'DKK', '丹麦克朗', '0.9925', 'NOK', '挪威克朗', '0.1104', 'SEK', '瑞典克朗', '0.1162', 'CHF', '瑞士法郎', '0.1423', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '0.0201', 'RUB', '卢布', '0.1250', 'PHP', '菲律宾比索', '0.6987', 'MYR', '林吉特', '0.0744', 'MOP', '澳门元', '0.2278', 'KRW', '韩国元', '0.0177', 'NZD', '新西兰元', '0.0009');

-- ----------------------------
-- Table structure for fx_forex0
-- ----------------------------
DROP TABLE IF EXISTS `fx_forex0`;
CREATE TABLE `fx_forex0` (
  `int` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `f_time` varchar(32) NOT NULL DEFAULT '0' COMMENT '时间戳',
  `name1` varchar(10) DEFAULT '',
  `title1` varchar(10) DEFAULT '',
  `fBuyPri1` float(8,4) unsigned DEFAULT '1.0000',
  `name2` varchar(10) DEFAULT '',
  `title2` varchar(10) DEFAULT '',
  `fBuyPri2` float(8,4) unsigned NOT NULL,
  `name3` varchar(10) DEFAULT '',
  `title3` varchar(10) DEFAULT '',
  `fBuyPri3` float(8,4) unsigned NOT NULL,
  `name4` varchar(10) DEFAULT '',
  `title4` varchar(10) DEFAULT '',
  `fBuyPri4` float(8,4) unsigned NOT NULL,
  `name5` varchar(10) DEFAULT '',
  `title5` varchar(10) DEFAULT '',
  `fBuyPri5` float(8,4) unsigned NOT NULL,
  `name6` varchar(10) DEFAULT '',
  `title6` varchar(10) DEFAULT '',
  `fBuyPri6` float(8,4) unsigned NOT NULL,
  `name7` varchar(10) DEFAULT '',
  `title7` varchar(10) DEFAULT '',
  `fBuyPri7` float(8,4) unsigned NOT NULL,
  `name8` varchar(10) DEFAULT NULL,
  `title8` varchar(10) DEFAULT NULL,
  `fBuyPri8` float(8,4) unsigned NOT NULL,
  `name9` varchar(10) DEFAULT NULL,
  `title9` varchar(10) DEFAULT NULL,
  `fBuyPri9` float(8,4) unsigned NOT NULL,
  `name10` varchar(10) DEFAULT NULL,
  `title10` varchar(10) DEFAULT NULL,
  `fBuyPri10` float(8,4) unsigned NOT NULL,
  `name11` varchar(10) DEFAULT NULL,
  `title11` varchar(10) DEFAULT NULL,
  `fBuyPri11` float(8,4) unsigned NOT NULL,
  `name12` varchar(10) DEFAULT NULL,
  `title12` varchar(10) DEFAULT NULL,
  `fBuyPri12` float(8,4) unsigned NOT NULL,
  `name13` varchar(10) DEFAULT NULL,
  `title13` varchar(10) DEFAULT NULL,
  `fBuyPri13` float(8,4) unsigned NOT NULL,
  `name14` varchar(10) DEFAULT NULL,
  `title14` varchar(10) DEFAULT NULL,
  `fBuyPri14` float(8,4) unsigned NOT NULL,
  `name15` varchar(10) DEFAULT NULL,
  `title15` varchar(10) DEFAULT NULL,
  `fBuyPri15` float(8,4) NOT NULL,
  `name16` varchar(10) DEFAULT NULL,
  `title16` varchar(10) DEFAULT NULL,
  `fBuyPri16` float(8,4) unsigned NOT NULL,
  `name17` varchar(10) DEFAULT NULL,
  `title17` varchar(10) DEFAULT NULL,
  `fBuyPri17` float(8,4) unsigned NOT NULL,
  `name18` varchar(10) DEFAULT NULL,
  `title18` varchar(10) DEFAULT NULL,
  `fBuyPri18` float(8,4) unsigned NOT NULL,
  `name19` varchar(10) DEFAULT NULL,
  `title19` varchar(10) DEFAULT NULL,
  `fBuyPri19` float(8,4) unsigned NOT NULL,
  `name20` varchar(10) DEFAULT NULL,
  `title20` varchar(10) DEFAULT NULL,
  `fBuyPri20` float(8,4) unsigned NOT NULL,
  `name21` varchar(10) DEFAULT NULL,
  `title21` varchar(10) DEFAULT NULL,
  `fBuyPri21` float(8,4) unsigned NOT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_forex0
-- ----------------------------
INSERT INTO `fx_forex0` VALUES ('1', '1489980303', '', '', '1.0000', 'EUR', '欧元', '107.4663', 'HKD', '港币', '12.8777', 'JPY', '日元', '0.8873', 'GBP', '英镑', '123.6845', 'AUD', '澳大利亚元', '77.1122', 'CAD', '加拿大元', '74.9732', 'THB', '泰国铢', '2.8733', 'SGD', '新加坡元', '71.4076', 'DKK', '丹麦克朗', '14.4391', 'NOK', '挪威克朗', '11.8053', 'SEK', '瑞典克朗', '11.3206', 'CHF', '瑞士法郎', '100.1959', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8697', 'RUB', '卢布', '1.7370', 'PHP', '菲律宾比索', '1.9881', 'MYR', '林吉特', '22.6803', 'MOP', '澳门元', '12.5337', 'KRW', '韩国元', '0.0888', 'NZD', '新西兰元', '70.2583');
INSERT INTO `fx_forex0` VALUES ('2', '1489980602', '', '', '1.0000', 'EUR', '欧元', '107.4663', 'HKD', '港币', '12.8777', 'JPY', '日元', '0.8873', 'GBP', '英镑', '123.6845', 'AUD', '澳大利亚元', '77.1122', 'CAD', '加拿大元', '74.9732', 'THB', '泰国铢', '2.8733', 'SGD', '新加坡元', '71.4076', 'DKK', '丹麦克朗', '14.4391', 'NOK', '挪威克朗', '11.8053', 'SEK', '瑞典克朗', '11.3206', 'CHF', '瑞士法郎', '100.1959', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8697', 'RUB', '卢布', '1.7370', 'PHP', '菲律宾比索', '1.9881', 'MYR', '林吉特', '22.6803', 'MOP', '澳门元', '12.5337', 'KRW', '韩国元', '0.0888', 'NZD', '新西兰元', '70.2583');
INSERT INTO `fx_forex0` VALUES ('3', '1489980903', '', '', '1.0000', 'EUR', '欧元', '107.4663', 'HKD', '港币', '12.8777', 'JPY', '日元', '0.8873', 'GBP', '英镑', '123.6845', 'AUD', '澳大利亚元', '77.1122', 'CAD', '加拿大元', '74.9732', 'THB', '泰国铢', '2.8733', 'SGD', '新加坡元', '71.4076', 'DKK', '丹麦克朗', '14.4391', 'NOK', '挪威克朗', '11.8053', 'SEK', '瑞典克朗', '11.3206', 'CHF', '瑞士法郎', '100.1959', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8697', 'RUB', '卢布', '1.7370', 'PHP', '菲律宾比索', '1.9881', 'MYR', '林吉特', '22.6803', 'MOP', '澳门元', '12.5337', 'KRW', '韩国元', '0.0888', 'NZD', '新西兰元', '70.2583');
INSERT INTO `fx_forex0` VALUES ('4', '1489986003', '', '', '1.0000', 'EUR', '欧元', '107.5060', 'HKD', '港币', '12.8757', 'JPY', '日元', '0.8875', 'GBP', '英镑', '123.6848', 'AUD', '澳大利亚元', '77.1323', 'CAD', '加拿大元', '74.9844', 'THB', '泰国铢', '2.8735', 'SGD', '新加坡元', '71.4172', 'DKK', '丹麦克朗', '14.4431', 'NOK', '挪威克朗', '11.8047', 'SEK', '瑞典克朗', '11.3228', 'CHF', '瑞士法郎', '100.1872', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8717', 'RUB', '卢布', '1.7386', 'PHP', '菲律宾比索', '1.9882', 'MYR', '林吉特', '22.6805', 'MOP', '澳门元', '12.5346', 'KRW', '韩国元', '0.0888', 'NZD', '新西兰元', '70.3186');
INSERT INTO `fx_forex0` VALUES ('5', '1489986303', '', '', '1.0000', 'EUR', '欧元', '107.5060', 'HKD', '港币', '12.8757', 'JPY', '日元', '0.8875', 'GBP', '英镑', '123.6848', 'AUD', '澳大利亚元', '77.1323', 'CAD', '加拿大元', '74.9844', 'THB', '泰国铢', '2.8735', 'SGD', '新加坡元', '71.4172', 'DKK', '丹麦克朗', '14.4431', 'NOK', '挪威克朗', '11.8047', 'SEK', '瑞典克朗', '11.3228', 'CHF', '瑞士法郎', '100.1872', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8717', 'RUB', '卢布', '1.7386', 'PHP', '菲律宾比索', '1.9882', 'MYR', '林吉特', '22.6805', 'MOP', '澳门元', '12.5346', 'KRW', '韩国元', '0.0888', 'NZD', '新西兰元', '70.3186');
INSERT INTO `fx_forex0` VALUES ('6', '1490175001', '', '', '1.0000', 'EUR', '欧元', '107.6655', 'HKD', '港币', '12.8713', 'JPY', '日元', '0.8981', 'GBP', '英镑', '124.4742', 'AUD', '澳大利亚元', '76.3345', 'CAD', '加拿大元', '74.5527', 'THB', '泰国铢', '2.8713', 'SGD', '新加坡元', '71.2509', 'DKK', '丹麦克朗', '14.4625', 'NOK', '挪威克朗', '11.7033', 'SEK', '瑞典克朗', '11.2887', 'CHF', '瑞士法郎', '100.4596', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.8778', 'RUB', '卢布', '1.7222', 'PHP', '菲律宾比索', '1.9840', 'MYR', '林吉特', '22.6589', 'MOP', '澳门元', '12.5338', 'KRW', '韩国元', '0.0887', 'NZD', '新西兰元', '70.1295');
INSERT INTO `fx_forex0` VALUES ('7', '1490229003', '', '', '1.0000', 'EUR', '欧元', '107.7462', 'HKD', '港币', '12.8739', 'JPY', '日元', '0.8971', 'GBP', '英镑', '124.5630', 'AUD', '澳大利亚元', '76.5723', 'CAD', '加拿大元', '74.9014', 'THB', '泰国铢', '2.8702', 'SGD', '新加坡元', '71.3573', 'DKK', '丹麦克朗', '14.4706', 'NOK', '挪威克朗', '11.7793', 'SEK', '瑞典克朗', '11.3340', 'CHF', '瑞士法郎', '100.5807', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.9470', 'RUB', '卢布', '1.7262', 'PHP', '菲律宾比索', '1.9838', 'MYR', '林吉特', '22.6592', 'MOP', '澳门元', '12.5348', 'KRW', '韩国元', '0.0892', 'NZD', '新西兰元', '70.2802');
INSERT INTO `fx_forex0` VALUES ('8', '1490229903', '', '', '1.0000', 'EUR', '欧元', '107.7767', 'HKD', '港币', '12.8710', 'JPY', '日元', '0.8972', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.5330', 'CAD', '加拿大元', '74.9509', 'THB', '泰国铢', '2.8702', 'SGD', '新加坡元', '71.3733', 'DKK', '丹麦克朗', '14.4735', 'NOK', '挪威克朗', '11.7808', 'SEK', '瑞典克朗', '11.3383', 'CHF', '瑞士法郎', '100.6215', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '7.9441', 'RUB', '卢布', '1.7277', 'PHP', '菲律宾比索', '1.9868', 'MYR', '林吉特', '22.6592', 'MOP', '澳门元', '12.5348', 'KRW', '韩国元', '0.0892', 'NZD', '新西兰元', '70.2598');
INSERT INTO `fx_forex0` VALUES ('9', '1490577303', '', '', '1.0000', 'EUR', '欧元', '108.3148', 'HKD', '港币', '12.8718', 'JPY', '日元', '0.9048', 'GBP', '英镑', '125.0040', 'AUD', '澳大利亚元', '76.1840', 'CAD', '加拿大元', '74.8955', 'THB', '泰国铢', '2.8813', 'SGD', '新加坡元', '71.5207', 'DKK', '丹麦克朗', '101.0395', 'NOK', '挪威克朗', '11.3591', 'SEK', '瑞典克朗', '11.7828', 'CHF', '瑞士法郎', '14.5490', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9902', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.3895', 'MYR', '林吉特', '8.0381', 'MOP', '澳门元', '22.7109', 'KRW', '韩国元', '1.7500', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('10', '1490577602', '', '', '1.0000', 'EUR', '欧元', '108.3148', 'HKD', '港币', '12.8718', 'JPY', '日元', '0.9053', 'GBP', '英镑', '125.0433', 'AUD', '澳大利亚元', '76.1535', 'CAD', '加拿大元', '74.9072', 'THB', '泰国铢', '2.8813', 'SGD', '新加坡元', '71.5251', 'DKK', '丹麦克朗', '101.0395', 'NOK', '挪威克朗', '11.3591', 'SEK', '瑞典克朗', '11.7930', 'CHF', '瑞士法郎', '14.5490', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.3895', 'MYR', '林吉特', '8.0396', 'MOP', '澳门元', '22.7109', 'KRW', '韩国元', '1.7500', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('11', '1490577901', '', '', '1.0000', 'EUR', '欧元', '108.3148', 'HKD', '港币', '12.8718', 'JPY', '日元', '0.9053', 'GBP', '英镑', '125.0433', 'AUD', '澳大利亚元', '76.1535', 'CAD', '加拿大元', '74.9072', 'THB', '泰国铢', '2.8813', 'SGD', '新加坡元', '71.5251', 'DKK', '丹麦克朗', '101.0395', 'NOK', '挪威克朗', '11.3591', 'SEK', '瑞典克朗', '11.7930', 'CHF', '瑞士法郎', '14.5490', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.3895', 'MYR', '林吉特', '8.0396', 'MOP', '澳门元', '22.7109', 'KRW', '韩国元', '1.7500', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('12', '1490578203', '', '', '1.0000', 'EUR', '欧元', '108.2857', 'HKD', '港币', '12.8718', 'JPY', '日元', '0.9049', 'GBP', '英镑', '124.9734', 'AUD', '澳大利亚元', '76.0938', 'CAD', '加拿大元', '74.8722', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.5149', 'DKK', '丹麦克朗', '101.0090', 'NOK', '挪威克朗', '11.3562', 'SEK', '瑞典克朗', '11.7930', 'CHF', '瑞士法郎', '14.5447', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9873', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.3094', 'MYR', '林吉特', '8.0381', 'MOP', '澳门元', '22.7109', 'KRW', '韩国元', '1.7500', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('13', '1490578502', '', '', '1.0000', 'EUR', '欧元', '108.2738', 'HKD', '港币', '12.8712', 'JPY', '日元', '0.9047', 'GBP', '英镑', '124.9614', 'AUD', '澳大利亚元', '76.1330', 'CAD', '加拿大元', '74.9060', 'THB', '泰国铢', '2.8910', 'SGD', '新加坡元', '71.5137', 'DKK', '丹麦克朗', '101.0084', 'NOK', '挪威克朗', '11.3558', 'SEK', '瑞典克朗', '11.7929', 'CHF', '瑞士法郎', '14.5441', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9861', 'RUB', '卢布', '12.5346', 'PHP', '菲律宾比索', '70.3684', 'MYR', '林吉特', '8.0378', 'MOP', '澳门元', '22.7115', 'KRW', '韩国元', '1.7501', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('14', '1490578802', '', '', '1.0000', 'EUR', '欧元', '108.2738', 'HKD', '港币', '12.8712', 'JPY', '日元', '0.9047', 'GBP', '英镑', '124.9614', 'AUD', '澳大利亚元', '76.1330', 'CAD', '加拿大元', '74.9060', 'THB', '泰国铢', '2.8910', 'SGD', '新加坡元', '71.5137', 'DKK', '丹麦克朗', '101.0084', 'NOK', '挪威克朗', '11.3558', 'SEK', '瑞典克朗', '11.7929', 'CHF', '瑞士法郎', '14.5441', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9861', 'RUB', '卢布', '12.5346', 'PHP', '菲律宾比索', '70.3684', 'MYR', '林吉特', '8.0378', 'MOP', '澳门元', '22.7115', 'KRW', '韩国元', '1.7501', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('15', '1490581201', '', '', '1.0000', 'EUR', '欧元', '108.3137', 'HKD', '港币', '12.8714', 'JPY', '日元', '0.9049', 'GBP', '英镑', '124.9920', 'AUD', '澳大利亚元', '76.1424', 'CAD', '加拿大元', '74.9060', 'THB', '泰国铢', '2.8913', 'SGD', '新加坡元', '71.5554', 'DKK', '丹麦克朗', '101.0279', 'NOK', '挪威克朗', '11.3580', 'SEK', '瑞典克朗', '11.8027', 'CHF', '瑞士法郎', '14.5482', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9902', 'RUB', '卢布', '12.5346', 'PHP', '菲律宾比索', '70.3686', 'MYR', '林吉特', '8.0410', 'MOP', '澳门元', '22.7627', 'KRW', '韩国元', '1.7496', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('16', '1490581502', '', '', '1.0000', 'EUR', '欧元', '108.3241', 'HKD', '港币', '12.8710', 'JPY', '日元', '0.9051', 'GBP', '英镑', '125.0015', 'AUD', '澳大利亚元', '76.1429', 'CAD', '加拿大元', '74.9227', 'THB', '泰国铢', '2.8923', 'SGD', '新加坡元', '71.5494', 'DKK', '丹麦克朗', '101.0292', 'NOK', '挪威克朗', '11.3593', 'SEK', '瑞典克朗', '11.8024', 'CHF', '瑞士法郎', '14.5490', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.3685', 'MYR', '林吉特', '8.0413', 'MOP', '澳门元', '22.7623', 'KRW', '韩国元', '1.7494', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('17', '1490581801', '', '', '1.0000', 'EUR', '欧元', '108.3243', 'HKD', '港币', '12.8721', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0226', 'AUD', '澳大利亚元', '76.1726', 'CAD', '加拿大元', '74.9278', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.5608', 'DKK', '丹麦克朗', '101.0393', 'NOK', '挪威克朗', '11.3591', 'SEK', '瑞典克朗', '11.8051', 'CHF', '瑞士法郎', '14.5483', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.3685', 'MYR', '林吉特', '8.0416', 'MOP', '澳门元', '22.7633', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('18', '1490582103', '', '', '1.0000', 'EUR', '欧元', '108.3237', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0426', 'AUD', '澳大利亚元', '76.1627', 'CAD', '加拿大元', '74.9224', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5556', 'DKK', '丹麦克朗', '101.0392', 'NOK', '挪威克朗', '11.3612', 'SEK', '瑞典克朗', '11.8071', 'CHF', '瑞士法郎', '14.5487', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3590', 'MYR', '林吉特', '8.0424', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7490', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('19', '1490582702', '', '', '1.0000', 'EUR', '欧元', '108.3141', 'HKD', '港币', '12.8706', 'JPY', '日元', '0.9048', 'GBP', '英镑', '125.0415', 'AUD', '澳大利亚元', '76.1828', 'CAD', '加拿大元', '74.9104', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.5491', 'DKK', '丹麦克朗', '101.0189', 'NOK', '挪威克朗', '11.3591', 'SEK', '瑞典克朗', '11.8065', 'CHF', '瑞士法郎', '14.5483', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9896', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.3787', 'MYR', '林吉特', '8.0401', 'MOP', '澳门元', '22.7633', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('20', '1490583001', '', '', '1.0000', 'EUR', '欧元', '108.3033', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0222', 'AUD', '澳大利亚元', '76.2021', 'CAD', '加拿大元', '74.9166', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5658', 'DKK', '丹麦克朗', '101.0290', 'NOK', '挪威克朗', '11.3582', 'SEK', '瑞典克朗', '11.8071', 'CHF', '瑞士法郎', '14.5472', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3881', 'MYR', '林吉特', '8.0424', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7504', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('21', '1490583304', '', '', '1.0000', 'EUR', '欧元', '108.3044', 'HKD', '港币', '12.8720', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0226', 'AUD', '澳大利亚元', '76.1929', 'CAD', '加拿大元', '74.9104', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.5656', 'DKK', '丹麦克朗', '101.0187', 'NOK', '挪威克朗', '11.3577', 'SEK', '瑞典克朗', '11.8066', 'CHF', '瑞士法郎', '14.5466', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9894', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0435', 'MOP', '澳门元', '22.7621', 'KRW', '韩国元', '1.7504', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('22', '1490583603', '', '', '1.0000', 'EUR', '欧元', '108.3044', 'HKD', '港币', '12.8720', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0226', 'AUD', '澳大利亚元', '76.1929', 'CAD', '加拿大元', '74.9104', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.5656', 'DKK', '丹麦克朗', '101.0187', 'NOK', '挪威克朗', '11.3577', 'SEK', '瑞典克朗', '11.8066', 'CHF', '瑞士法郎', '14.5466', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9894', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0435', 'MOP', '澳门元', '22.7621', 'KRW', '韩国元', '1.7504', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('23', '1490583906', '', '', '1.0000', 'EUR', '欧元', '108.3044', 'HKD', '港币', '12.8720', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0226', 'AUD', '澳大利亚元', '76.1929', 'CAD', '加拿大元', '74.9104', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.5656', 'DKK', '丹麦克朗', '101.0187', 'NOK', '挪威克朗', '11.3577', 'SEK', '瑞典克朗', '11.8066', 'CHF', '瑞士法郎', '14.5466', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9894', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0435', 'MOP', '澳门元', '22.7621', 'KRW', '韩国元', '1.7504', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('24', '1490584202', '', '', '1.0000', 'EUR', '欧元', '108.3137', 'HKD', '港币', '12.8712', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0619', 'AUD', '澳大利亚元', '76.1824', 'CAD', '加拿大元', '74.9337', 'THB', '泰国铢', '2.8922', 'SGD', '新加坡元', '71.5607', 'DKK', '丹麦克朗', '101.0374', 'NOK', '挪威克朗', '11.3617', 'SEK', '瑞典克朗', '11.8017', 'CHF', '瑞士法郎', '14.5482', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9888', 'RUB', '卢布', '12.5346', 'PHP', '菲律宾比索', '70.3791', 'MYR', '林吉特', '8.0412', 'MOP', '澳门元', '22.7628', 'KRW', '韩国元', '1.7499', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('25', '1490584502', '', '', '1.0000', 'EUR', '欧元', '108.3242', 'HKD', '港币', '12.8717', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0718', 'AUD', '澳大利亚元', '76.1930', 'CAD', '加拿大元', '74.9341', 'THB', '泰国铢', '2.8923', 'SGD', '新加坡元', '71.5653', 'DKK', '丹麦克朗', '101.0374', 'NOK', '挪威克朗', '11.3637', 'SEK', '瑞典克朗', '11.8022', 'CHF', '瑞士法郎', '14.5488', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9889', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0416', 'MOP', '澳门元', '22.7623', 'KRW', '韩国元', '1.7499', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('26', '1490584802', '', '', '1.0000', 'EUR', '欧元', '108.3242', 'HKD', '港币', '12.8717', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0718', 'AUD', '澳大利亚元', '76.1930', 'CAD', '加拿大元', '74.9341', 'THB', '泰国铢', '2.8923', 'SGD', '新加坡元', '71.5653', 'DKK', '丹麦克朗', '101.0374', 'NOK', '挪威克朗', '11.3637', 'SEK', '瑞典克朗', '11.8022', 'CHF', '瑞士法郎', '14.5488', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9889', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0416', 'MOP', '澳门元', '22.7623', 'KRW', '韩国元', '1.7499', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('27', '1490585101', '', '', '1.0000', 'EUR', '欧元', '108.3242', 'HKD', '港币', '12.8717', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0718', 'AUD', '澳大利亚元', '76.1930', 'CAD', '加拿大元', '74.9341', 'THB', '泰国铢', '2.8923', 'SGD', '新加坡元', '71.5653', 'DKK', '丹麦克朗', '101.0374', 'NOK', '挪威克朗', '11.3637', 'SEK', '瑞典克朗', '11.8022', 'CHF', '瑞士法郎', '14.5488', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9889', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0416', 'MOP', '澳门元', '22.7623', 'KRW', '韩国元', '1.7499', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('28', '1490585403', '', '', '1.0000', 'EUR', '欧元', '108.3242', 'HKD', '港币', '12.8717', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.0718', 'AUD', '澳大利亚元', '76.1930', 'CAD', '加拿大元', '74.9341', 'THB', '泰国铢', '2.8923', 'SGD', '新加坡元', '71.5653', 'DKK', '丹麦克朗', '101.0374', 'NOK', '挪威克朗', '11.3637', 'SEK', '瑞典克朗', '11.8022', 'CHF', '瑞士法郎', '14.5488', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9889', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.3880', 'MYR', '林吉特', '8.0416', 'MOP', '澳门元', '22.7623', 'KRW', '韩国元', '1.7499', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('29', '1490592001', '', '', '1.0000', 'EUR', '欧元', '108.3339', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9051', 'GBP', '英镑', '125.1126', 'AUD', '澳大利亚元', '76.2021', 'CAD', '加拿大元', '74.9559', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5862', 'DKK', '丹麦克朗', '101.0581', 'NOK', '挪威克朗', '11.3655', 'SEK', '瑞典克朗', '11.8013', 'CHF', '瑞士法郎', '14.5516', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3779', 'MYR', '林吉特', '8.0454', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7490', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('30', '1490592302', '', '', '1.0000', 'EUR', '欧元', '108.3339', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9051', 'GBP', '英镑', '125.1126', 'AUD', '澳大利亚元', '76.2021', 'CAD', '加拿大元', '74.9559', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5862', 'DKK', '丹麦克朗', '101.0581', 'NOK', '挪威克朗', '11.3655', 'SEK', '瑞典克朗', '11.8013', 'CHF', '瑞士法郎', '14.5516', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3779', 'MYR', '林吉特', '8.0454', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7490', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('31', '1490592603', '', '', '1.0000', 'EUR', '欧元', '108.3339', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9051', 'GBP', '英镑', '125.1126', 'AUD', '澳大利亚元', '76.2021', 'CAD', '加拿大元', '74.9559', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5862', 'DKK', '丹麦克朗', '101.0581', 'NOK', '挪威克朗', '11.3655', 'SEK', '瑞典克朗', '11.8013', 'CHF', '瑞士法郎', '14.5516', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3779', 'MYR', '林吉特', '8.0454', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7490', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('32', '1490593502', '', '', '1.0000', 'EUR', '欧元', '108.3339', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9051', 'GBP', '英镑', '125.1126', 'AUD', '澳大利亚元', '76.2021', 'CAD', '加拿大元', '74.9559', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.5862', 'DKK', '丹麦克朗', '101.0581', 'NOK', '挪威克朗', '11.3655', 'SEK', '瑞典克朗', '11.8013', 'CHF', '瑞士法郎', '14.5516', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.3779', 'MYR', '林吉特', '8.0454', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7490', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('33', '1490593804', '', '', '1.0000', 'EUR', '欧元', '108.3331', 'HKD', '港币', '12.8721', 'JPY', '日元', '0.9052', 'GBP', '英镑', '125.1523', 'AUD', '澳大利亚元', '76.2630', 'CAD', '加拿大元', '74.9453', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.6264', 'DKK', '丹麦克朗', '101.0582', 'NOK', '挪威克朗', '11.3620', 'SEK', '瑞典克朗', '11.7963', 'CHF', '瑞士法郎', '14.5497', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9911', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.4384', 'MYR', '林吉特', '8.0663', 'MOP', '澳门元', '22.7633', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('34', '1490594103', '', '', '1.0000', 'EUR', '欧元', '108.3331', 'HKD', '港币', '12.8721', 'JPY', '日元', '0.9052', 'GBP', '英镑', '125.1523', 'AUD', '澳大利亚元', '76.2630', 'CAD', '加拿大元', '74.9453', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.6264', 'DKK', '丹麦克朗', '101.0582', 'NOK', '挪威克朗', '11.3620', 'SEK', '瑞典克朗', '11.7963', 'CHF', '瑞士法郎', '14.5497', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9911', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.4384', 'MYR', '林吉特', '8.0663', 'MOP', '澳门元', '22.7633', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('35', '1490595302', '', '', '1.0000', 'EUR', '欧元', '108.3337', 'HKD', '港币', '12.8715', 'JPY', '日元', '0.9053', 'GBP', '英镑', '125.1323', 'AUD', '澳大利亚元', '76.2423', 'CAD', '加拿大元', '74.9391', 'THB', '泰国铢', '2.8921', 'SGD', '新加坡元', '71.6418', 'DKK', '丹麦克朗', '101.0495', 'NOK', '挪威克朗', '11.3614', 'SEK', '瑞典克朗', '11.7972', 'CHF', '瑞士法郎', '14.5508', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9912', 'RUB', '卢布', '12.5333', 'PHP', '菲律宾比索', '70.4086', 'MYR', '林吉特', '8.0757', 'MOP', '澳门元', '22.7621', 'KRW', '韩国元', '1.7507', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('36', '1490595602', '', '', '1.0000', 'EUR', '欧元', '108.3739', 'HKD', '港币', '12.8706', 'JPY', '日元', '0.9060', 'GBP', '英镑', '125.1727', 'AUD', '澳大利亚元', '76.2120', 'CAD', '加拿大元', '74.9278', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.6322', 'DKK', '丹麦克朗', '101.0888', 'NOK', '挪威克朗', '11.3649', 'SEK', '瑞典克朗', '11.7978', 'CHF', '瑞士法郎', '14.5556', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9911', 'RUB', '卢布', '12.5339', 'PHP', '菲律宾比索', '70.4282', 'MYR', '林吉特', '8.0693', 'MOP', '澳门元', '22.7633', 'KRW', '韩国元', '1.7506', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('37', '1490596802', '', '', '1.0000', 'EUR', '欧元', '108.4345', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9064', 'GBP', '英镑', '125.2817', 'AUD', '澳大利亚元', '76.1919', 'CAD', '加拿大元', '74.9443', 'THB', '泰国铢', '2.8917', 'SGD', '新加坡元', '71.6372', 'DKK', '丹麦克朗', '101.1500', 'NOK', '挪威克朗', '11.3714', 'SEK', '瑞典克朗', '11.8028', 'CHF', '瑞士法郎', '14.5633', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9909', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.4289', 'MYR', '林吉特', '8.0745', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7461', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('38', '1490597703', '', '', '1.0000', 'EUR', '欧元', '108.5038', 'HKD', '港币', '12.8716', 'JPY', '日元', '0.9060', 'GBP', '英镑', '125.2915', 'AUD', '澳大利亚元', '76.1630', 'CAD', '加拿大元', '74.8659', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6684', 'DKK', '丹麦克朗', '101.3670', 'NOK', '挪威克朗', '11.3734', 'SEK', '瑞典克朗', '11.8194', 'CHF', '瑞士法郎', '14.5739', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9922', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3888', 'MYR', '林吉特', '8.0987', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7489', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('39', '1490602501', '', '', '1.0000', 'EUR', '欧元', '108.5538', 'HKD', '港币', '12.8715', 'JPY', '日元', '0.9067', 'GBP', '英镑', '125.5419', 'AUD', '澳大利亚元', '76.2525', 'CAD', '加拿大元', '74.9391', 'THB', '泰国铢', '2.8921', 'SGD', '新加坡元', '71.6943', 'DKK', '丹麦克朗', '101.3571', 'NOK', '挪威克朗', '11.3759', 'SEK', '瑞典克朗', '11.8278', 'CHF', '瑞士法郎', '14.5756', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9927', 'RUB', '卢布', '12.5333', 'PHP', '菲律宾比索', '70.4392', 'MYR', '林吉特', '8.0873', 'MOP', '澳门元', '22.7621', 'KRW', '韩国元', '1.7507', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('40', '1490605501', '', '', '1.0000', 'EUR', '欧元', '108.4541', 'HKD', '港币', '12.8699', 'JPY', '日元', '0.9052', 'GBP', '英镑', '125.5314', 'AUD', '澳大利亚元', '76.2125', 'CAD', '加拿大元', '74.9173', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.6627', 'DKK', '丹麦克朗', '101.2849', 'NOK', '挪威克朗', '11.3635', 'SEK', '瑞典克朗', '11.8238', 'CHF', '瑞士法郎', '14.5627', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9915', 'RUB', '卢布', '12.5348', 'PHP', '菲律宾比索', '70.3982', 'MYR', '林吉特', '8.0652', 'MOP', '澳门元', '22.7634', 'KRW', '韩国元', '1.7570', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('41', '1490607001', '', '', '1.0000', 'EUR', '欧元', '108.4252', 'HKD', '港币', '12.8693', 'JPY', '日元', '0.9045', 'GBP', '英镑', '125.4532', 'AUD', '澳大利亚元', '76.2344', 'CAD', '加拿大元', '74.9006', 'THB', '泰国铢', '2.8919', 'SGD', '新加坡元', '71.6636', 'DKK', '丹麦克朗', '101.2654', 'NOK', '挪威克朗', '11.3549', 'SEK', '瑞典克朗', '11.8194', 'CHF', '瑞士法郎', '14.5584', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9905', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.4390', 'MYR', '林吉特', '7.9054', 'MOP', '澳门元', '22.7637', 'KRW', '韩国元', '1.7532', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('42', '1490613001', '', '', '1.0000', 'EUR', '欧元', '108.4859', 'HKD', '港币', '12.8687', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.7825', 'AUD', '澳大利亚元', '76.2537', 'CAD', '加拿大元', '74.8336', 'THB', '泰国铢', '2.8913', 'SGD', '新加坡元', '71.6903', 'DKK', '丹麦克朗', '101.3065', 'NOK', '挪威克朗', '11.3626', 'SEK', '瑞典克朗', '11.8054', 'CHF', '瑞士法郎', '14.5656', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9926', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.4290', 'MYR', '林吉特', '7.9280', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7552', 'NZD', '新西兰元', '0.0899');
INSERT INTO `fx_forex0` VALUES ('43', '1490613101', '', '', '1.0000', 'EUR', '欧元', '108.4859', 'HKD', '港币', '12.8687', 'JPY', '日元', '0.9047', 'GBP', '英镑', '125.7825', 'AUD', '澳大利亚元', '76.2537', 'CAD', '加拿大元', '74.8336', 'THB', '泰国铢', '2.8913', 'SGD', '新加坡元', '71.6903', 'DKK', '丹麦克朗', '101.3065', 'NOK', '挪威克朗', '11.3626', 'SEK', '瑞典克朗', '11.8054', 'CHF', '瑞士法郎', '14.5656', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9926', 'RUB', '卢布', '12.5337', 'PHP', '菲律宾比索', '70.4290', 'MYR', '林吉特', '7.9280', 'MOP', '澳门元', '22.7631', 'KRW', '韩国元', '1.7552', 'NZD', '新西兰元', '0.0899');
INSERT INTO `fx_forex0` VALUES ('44', '1490659802', '', '', '0.0000', 'EUR', '欧元', '108.4834', 'HKD', '港币', '12.8702', 'JPY', '日元', '0.9016', 'GBP', '英镑', '125.4314', 'AUD', '澳大利亚元', '76.2227', 'CAD', '加拿大元', '74.6255', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6174', 'DKK', '丹麦克朗', '101.2636', 'NOK', '挪威克朗', '11.3574', 'SEK', '瑞典克朗', '11.7538', 'CHF', '瑞士法郎', '14.5695', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9908', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3786', 'MYR', '林吉特', '7.8291', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7518', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('45', '2017-03-28 08:35:02', '', '', '0.0000', 'EUR', '欧元', '108.4834', 'HKD', '港币', '12.8702', 'JPY', '日元', '0.9016', 'GBP', '英镑', '125.4314', 'AUD', '澳大利亚元', '76.2227', 'CAD', '加拿大元', '74.6255', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6174', 'DKK', '丹麦克朗', '101.2636', 'NOK', '挪威克朗', '11.3574', 'SEK', '瑞典克朗', '11.7538', 'CHF', '瑞士法郎', '14.5695', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9908', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3786', 'MYR', '林吉特', '7.8291', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7518', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('46', '2017-03-28 08:50:03', '', '', '6.8616', 'EUR', '欧元', '108.4834', 'HKD', '港币', '12.8702', 'JPY', '日元', '0.9016', 'GBP', '英镑', '125.4314', 'AUD', '澳大利亚元', '76.2227', 'CAD', '加拿大元', '74.6255', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6174', 'DKK', '丹麦克朗', '101.2636', 'NOK', '挪威克朗', '11.3574', 'SEK', '瑞典克朗', '11.7538', 'CHF', '瑞士法郎', '14.5695', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9908', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3786', 'MYR', '林吉特', '7.8291', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7518', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('47', '2017-03-28 09:20:02', '', '', '6.8616', 'EUR', '欧元', '108.4237', 'HKD', '港币', '12.8702', 'JPY', '日元', '0.9023', 'GBP', '英镑', '125.4605', 'AUD', '澳大利亚元', '76.2432', 'CAD', '加拿大元', '74.6357', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6174', 'DKK', '丹麦克朗', '101.2023', 'NOK', '挪威克朗', '11.3530', 'SEK', '瑞典克朗', '11.7494', 'CHF', '瑞士法郎', '14.5593', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9922', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3582', 'MYR', '林吉特', '7.8305', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7576', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('48', '2017-03-28 09:20:02', '', '', '6.8616', 'EUR', '欧元', '108.4237', 'HKD', '港币', '12.8702', 'JPY', '日元', '0.9023', 'GBP', '英镑', '125.4605', 'AUD', '澳大利亚元', '76.2432', 'CAD', '加拿大元', '74.6357', 'THB', '泰国铢', '2.8915', 'SGD', '新加坡元', '71.6174', 'DKK', '丹麦克朗', '101.2023', 'NOK', '挪威克朗', '11.3530', 'SEK', '瑞典克朗', '11.7494', 'CHF', '瑞士法郎', '14.5593', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9922', 'RUB', '卢布', '12.5335', 'PHP', '菲律宾比索', '70.3582', 'MYR', '林吉特', '7.8305', 'MOP', '澳门元', '22.7629', 'KRW', '韩国元', '1.7576', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('49', '2017-03-28 17:00:01', '', '', '6.8720', 'EUR', '欧元', '108.3964', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9021', 'GBP', '英镑', '125.7320', 'AUD', '澳大利亚元', '75.9430', 'CAD', '加拿大元', '74.5198', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6225', 'DKK', '丹麦克朗', '101.2238', 'NOK', '挪威克朗', '11.3650', 'SEK', '瑞典克朗', '11.7491', 'CHF', '瑞士法郎', '14.5562', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1091', 'MYR', '林吉特', '7.7474', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7520', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('50', '2017-03-28 17:00:01', '', '', '6.8720', 'EUR', '欧元', '108.3964', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9021', 'GBP', '英镑', '125.7320', 'AUD', '澳大利亚元', '75.9430', 'CAD', '加拿大元', '74.5198', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6225', 'DKK', '丹麦克朗', '101.2238', 'NOK', '挪威克朗', '11.3650', 'SEK', '瑞典克朗', '11.7491', 'CHF', '瑞士法郎', '14.5562', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1091', 'MYR', '林吉特', '7.7474', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7520', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('51', '2017-03-28 17:10:01', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('52', '2017-03-28 17:15:03', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('53', '2017-03-28 17:15:03', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('54', '2017-03-28 17:15:03', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('55', '2017-03-28 17:20:03', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('56', '2017-03-28 17:25:01', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('57', '2017-03-28 17:30:03', '', '', '6.8720', 'EUR', '欧元', '108.4662', 'HKD', '港币', '12.8711', 'JPY', '日元', '0.9027', 'GBP', '英镑', '125.7727', 'AUD', '澳大利亚元', '75.9735', 'CAD', '加拿大元', '74.5373', 'THB', '泰国铢', '2.9002', 'SGD', '新加坡元', '71.6123', 'DKK', '丹麦克朗', '101.2762', 'NOK', '挪威克朗', '11.3693', 'SEK', '瑞典克朗', '11.7477', 'CHF', '瑞士法郎', '14.5649', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9907', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.7328', 'MOP', '澳门元', '22.7314', 'KRW', '韩国元', '1.7491', 'NZD', '新西兰元', '0.0897');
INSERT INTO `fx_forex0` VALUES ('58', '2017-03-30 09:30:03', '', '', '6.8785', 'EUR', '欧元', '107.3970', 'HKD', '港币', '12.8676', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2248', 'AUD', '澳大利亚元', '76.6432', 'CAD', '加拿大元', '74.9160', 'THB', '泰国铢', '2.8945', 'SGD', '新加坡元', '71.5505', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2336', 'SEK', '瑞典克朗', '11.7220', 'CHF', '瑞士法郎', '14.4174', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9888', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.1592', 'MYR', '林吉特', '7.6397', 'MOP', '澳门元', '22.7113', 'KRW', '韩国元', '1.7606', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('59', '2017-03-30 09:35:01', '', '', '6.8810', 'EUR', '欧元', '107.4175', 'HKD', '港币', '12.8673', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3046', 'AUD', '澳大利亚元', '76.6531', 'CAD', '加拿大元', '74.9281', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5506', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2353', 'SEK', '瑞典克朗', '11.7221', 'CHF', '瑞士法郎', '14.4209', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1788', 'MYR', '林吉特', '7.6384', 'MOP', '澳门元', '22.7118', 'KRW', '韩国元', '1.7599', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('60', '2017-03-30 09:35:01', '', '', '6.8810', 'EUR', '欧元', '107.4175', 'HKD', '港币', '12.8673', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3046', 'AUD', '澳大利亚元', '76.6531', 'CAD', '加拿大元', '74.9281', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5506', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2353', 'SEK', '瑞典克朗', '11.7221', 'CHF', '瑞士法郎', '14.4209', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1788', 'MYR', '林吉特', '7.6384', 'MOP', '澳门元', '22.7118', 'KRW', '韩国元', '1.7599', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('61', '2017-03-30 09:40:03', '', '', '6.8810', 'EUR', '欧元', '107.4175', 'HKD', '港币', '12.8673', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3046', 'AUD', '澳大利亚元', '76.6531', 'CAD', '加拿大元', '74.9281', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5506', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2353', 'SEK', '瑞典克朗', '11.7221', 'CHF', '瑞士法郎', '14.4209', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9895', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1788', 'MYR', '林吉特', '7.6384', 'MOP', '澳门元', '22.7118', 'KRW', '韩国元', '1.7599', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('62', '2017-03-30 09:45:01', '', '', '6.8805', 'EUR', '欧元', '107.4064', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3340', 'AUD', '澳大利亚元', '76.6238', 'CAD', '加拿大元', '74.9161', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2332', 'SEK', '瑞典克朗', '11.7215', 'CHF', '瑞士法郎', '14.4190', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6390', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('63', '2017-03-30 09:45:01', '', '', '6.8805', 'EUR', '欧元', '107.4064', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3340', 'AUD', '澳大利亚元', '76.6238', 'CAD', '加拿大元', '74.9161', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2332', 'SEK', '瑞典克朗', '11.7215', 'CHF', '瑞士法郎', '14.4190', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6390', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('64', '2017-03-30 09:45:01', '', '', '6.8805', 'EUR', '欧元', '107.4064', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.3340', 'AUD', '澳大利亚元', '76.6238', 'CAD', '加拿大元', '74.9161', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2332', 'SEK', '瑞典克朗', '11.7215', 'CHF', '瑞士法郎', '14.4190', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6390', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0896');
INSERT INTO `fx_forex0` VALUES ('65', '2017-03-30 09:55:02', '', '', '6.8805', 'EUR', '欧元', '107.3788', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2657', 'AUD', '澳大利亚元', '76.5976', 'CAD', '加拿大元', '74.8885', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0494', 'NOK', '挪威克朗', '11.2317', 'SEK', '瑞典克朗', '11.7143', 'CHF', '瑞士法郎', '14.4147', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6361', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('66', '2017-03-30 09:55:02', '', '', '6.8805', 'EUR', '欧元', '107.3788', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2657', 'AUD', '澳大利亚元', '76.5976', 'CAD', '加拿大元', '74.8885', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0494', 'NOK', '挪威克朗', '11.2317', 'SEK', '瑞典克朗', '11.7143', 'CHF', '瑞士法郎', '14.4147', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6361', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('67', '2017-03-30 09:55:02', '', '', '6.8805', 'EUR', '欧元', '107.3788', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2657', 'AUD', '澳大利亚元', '76.5976', 'CAD', '加拿大元', '74.8885', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0494', 'NOK', '挪威克朗', '11.2317', 'SEK', '瑞典克朗', '11.7143', 'CHF', '瑞士法郎', '14.4147', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6361', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('68', '2017-03-30 10:00:02', '', '', '6.8805', 'EUR', '欧元', '107.3875', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2947', 'AUD', '澳大利亚元', '76.6238', 'CAD', '加拿大元', '74.9059', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0669', 'NOK', '挪威克朗', '11.2317', 'SEK', '瑞典克朗', '11.7143', 'CHF', '瑞士法郎', '14.4161', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6361', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('69', '2017-03-30 10:05:01', '', '', '6.8805', 'EUR', '欧元', '107.3875', 'HKD', '港币', '12.8668', 'JPY', '日元', '0.8965', 'GBP', '英镑', '124.2947', 'AUD', '澳大利亚元', '76.6238', 'CAD', '加拿大元', '74.9059', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5457', 'DKK', '丹麦克朗', '100.0669', 'NOK', '挪威克朗', '11.2317', 'SEK', '瑞典克朗', '11.7143', 'CHF', '瑞士法郎', '14.4161', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1795', 'MYR', '林吉特', '7.6361', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('70', '2017-03-30 10:10:03', '', '', '6.8809', 'EUR', '欧元', '107.3871', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8967', 'GBP', '英镑', '124.2846', 'AUD', '澳大利亚元', '76.5932', 'CAD', '加拿大元', '74.9161', 'THB', '泰国铢', '2.8950', 'SGD', '新加坡元', '71.5357', 'DKK', '丹麦克朗', '100.0770', 'NOK', '挪威克朗', '11.2325', 'SEK', '瑞典克朗', '11.7165', 'CHF', '瑞士法郎', '14.4153', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9881', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.1391', 'MYR', '林吉特', '7.6342', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7599', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('71', '2017-03-30 10:15:02', '', '', '6.8809', 'EUR', '欧元', '107.3871', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8967', 'GBP', '英镑', '124.2846', 'AUD', '澳大利亚元', '76.5932', 'CAD', '加拿大元', '74.9161', 'THB', '泰国铢', '2.8950', 'SGD', '新加坡元', '71.5357', 'DKK', '丹麦克朗', '100.0770', 'NOK', '挪威克朗', '11.2325', 'SEK', '瑞典克朗', '11.7165', 'CHF', '瑞士法郎', '14.4153', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9881', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.1391', 'MYR', '林吉特', '7.6342', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7599', 'NZD', '新西兰元', '0.0895');
INSERT INTO `fx_forex0` VALUES ('72', '2017-03-30 10:20:01', '', '', '6.8807', 'EUR', '欧元', '107.3670', 'HKD', '港币', '12.8664', 'JPY', '日元', '0.8966', 'GBP', '英镑', '124.2650', 'AUD', '澳大利亚元', '76.5736', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5363', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2314', 'SEK', '瑞典克朗', '11.7154', 'CHF', '瑞士法郎', '14.4128', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.6344', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('73', '2017-03-30 10:20:01', '', '', '6.8807', 'EUR', '欧元', '107.3670', 'HKD', '港币', '12.8664', 'JPY', '日元', '0.8966', 'GBP', '英镑', '124.2650', 'AUD', '澳大利亚元', '76.5736', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5363', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2314', 'SEK', '瑞典克朗', '11.7154', 'CHF', '瑞士法郎', '14.4128', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.6344', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('74', '2017-03-30 10:35:13', '', '', '6.8807', 'EUR', '欧元', '107.3670', 'HKD', '港币', '12.8664', 'JPY', '日元', '0.8966', 'GBP', '英镑', '124.2650', 'AUD', '澳大利亚元', '76.5736', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5363', 'DKK', '丹麦克朗', '100.0974', 'NOK', '挪威克朗', '11.2314', 'SEK', '瑞典克朗', '11.7154', 'CHF', '瑞士法郎', '14.4128', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1295', 'MYR', '林吉特', '7.6344', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('75', '2017-03-30 10:40:02', '', '', '6.8807', 'EUR', '欧元', '107.3466', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8972', 'GBP', '英镑', '124.2548', 'AUD', '澳大利亚元', '76.5634', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5305', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2300', 'SEK', '瑞典克朗', '11.7139', 'CHF', '瑞士法郎', '14.4113', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1498', 'MYR', '林吉特', '7.6271', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('76', '2017-03-30 10:40:02', '', '', '6.8807', 'EUR', '欧元', '107.3466', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8972', 'GBP', '英镑', '124.2548', 'AUD', '澳大利亚元', '76.5634', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5305', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2300', 'SEK', '瑞典克朗', '11.7139', 'CHF', '瑞士法郎', '14.4113', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1498', 'MYR', '林吉特', '7.6271', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('77', '2017-03-30 10:45:03', '', '', '6.8807', 'EUR', '欧元', '107.3466', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8972', 'GBP', '英镑', '124.2548', 'AUD', '澳大利亚元', '76.5634', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8936', 'SGD', '新加坡元', '71.5305', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2300', 'SEK', '瑞典克朗', '11.7139', 'CHF', '瑞士法郎', '14.4113', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9882', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1498', 'MYR', '林吉特', '7.6271', 'MOP', '澳门元', '22.7114', 'KRW', '韩国元', '1.7600', 'NZD', '新西兰元', '0.0894');
INSERT INTO `fx_forex0` VALUES ('78', '2017-03-30 14:00:01', '', '', '6.8785', 'EUR', '欧元', '107.3970', 'HKD', '港币', '12.8647', 'JPY', '日元', '0.8984', 'GBP', '英镑', '124.2349', 'AUD', '澳大利亚元', '76.5327', 'CAD', '加拿大元', '74.9102', 'THB', '泰国铢', '2.8945', 'SGD', '新加坡元', '71.5505', 'DKK', '丹麦克朗', '100.0960', 'NOK', '挪威克朗', '11.2306', 'SEK', '瑞典克朗', '11.7148', 'CHF', '瑞士法郎', '14.4188', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9888', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.1388', 'MYR', '林吉特', '7.6499', 'MOP', '澳门元', '22.7113', 'KRW', '韩国元', '1.7591', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('79', '2017-03-30 14:00:01', '', '', '6.8785', 'EUR', '欧元', '107.3970', 'HKD', '港币', '12.8647', 'JPY', '日元', '0.8984', 'GBP', '英镑', '124.2349', 'AUD', '澳大利亚元', '76.5327', 'CAD', '加拿大元', '74.9102', 'THB', '泰国铢', '2.8945', 'SGD', '新加坡元', '71.5505', 'DKK', '丹麦克朗', '100.0960', 'NOK', '挪威克朗', '11.2306', 'SEK', '瑞典克朗', '11.7148', 'CHF', '瑞士法郎', '14.4188', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9888', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.1388', 'MYR', '林吉特', '7.6499', 'MOP', '澳门元', '22.7113', 'KRW', '韩国元', '1.7591', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('80', '2017-03-30 14:05:02', '', '', '6.8775', 'EUR', '欧元', '107.4475', 'HKD', '港币', '12.8637', 'JPY', '日元', '0.8986', 'GBP', '英镑', '124.2341', 'AUD', '澳大利亚元', '76.4827', 'CAD', '加拿大元', '74.9051', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5304', 'DKK', '丹麦克朗', '100.1061', 'NOK', '挪威克朗', '11.2366', 'SEK', '瑞典克朗', '11.7252', 'CHF', '瑞士法郎', '14.4238', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.1098', 'MYR', '林吉特', '7.6787', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7594', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('81', '2017-03-30 14:35:03', '', '', '6.8770', 'EUR', '欧元', '107.4364', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8985', 'GBP', '英镑', '124.1937', 'AUD', '澳大利亚元', '76.4621', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5559', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7275', 'CHF', '瑞士法郎', '14.4249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1091', 'MYR', '林吉特', '7.6632', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7580', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('82', '2017-03-30 14:40:02', '', '', '6.8770', 'EUR', '欧元', '107.4364', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8985', 'GBP', '英镑', '124.1937', 'AUD', '澳大利亚元', '76.4621', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5559', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7275', 'CHF', '瑞士法郎', '14.4249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1091', 'MYR', '林吉特', '7.6632', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7580', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('83', '2017-03-30 14:45:02', '', '', '6.8765', 'EUR', '欧元', '107.4776', 'HKD', '港币', '12.8656', 'JPY', '日元', '0.8991', 'GBP', '英镑', '124.1838', 'AUD', '澳大利亚元', '76.4822', 'CAD', '加拿大元', '74.9058', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.5669', 'DKK', '丹麦克朗', '100.1978', 'NOK', '挪威克朗', '11.2455', 'SEK', '瑞典克朗', '11.7254', 'CHF', '瑞士法郎', '14.4289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9894', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1200', 'MYR', '林吉特', '7.6929', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7596', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('84', '2017-03-30 14:45:02', '', '', '6.8765', 'EUR', '欧元', '107.4776', 'HKD', '港币', '12.8656', 'JPY', '日元', '0.8991', 'GBP', '英镑', '124.1838', 'AUD', '澳大利亚元', '76.4822', 'CAD', '加拿大元', '74.9058', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.5669', 'DKK', '丹麦克朗', '100.1978', 'NOK', '挪威克朗', '11.2455', 'SEK', '瑞典克朗', '11.7254', 'CHF', '瑞士法郎', '14.4289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9894', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '70.1200', 'MYR', '林吉特', '7.6929', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7596', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('85', '2017-03-30 14:50:03', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('86', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('87', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('88', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('89', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('90', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('91', '2017-03-30 14:55:01', '', '', '6.8770', 'EUR', '欧元', '107.4567', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.1442', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9048', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5617', 'DKK', '丹麦克朗', '100.1672', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7231', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1192', 'MYR', '林吉特', '7.6996', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('92', '2017-03-30 15:00:03', '', '', '6.8770', 'EUR', '欧元', '107.5076', 'HKD', '港币', '12.8661', 'JPY', '日元', '0.8991', 'GBP', '英镑', '124.2140', 'AUD', '澳大利亚元', '76.5028', 'CAD', '加拿大元', '74.9164', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5763', 'DKK', '丹麦克朗', '100.2385', 'NOK', '挪威克朗', '11.2462', 'SEK', '瑞典克朗', '11.7246', 'CHF', '瑞士法郎', '14.4336', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.1294', 'MYR', '林吉特', '7.7054', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7595', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('93', '2017-03-30 15:05:02', '', '', '6.8770', 'EUR', '欧元', '107.4466', 'HKD', '港币', '12.8646', 'JPY', '日元', '0.8992', 'GBP', '英镑', '124.1035', 'AUD', '澳大利亚元', '76.4825', 'CAD', '加拿大元', '74.9222', 'THB', '泰国铢', '2.8937', 'SGD', '新加坡元', '71.5661', 'DKK', '丹麦克朗', '100.1774', 'NOK', '挪威克朗', '11.2418', 'SEK', '瑞典克朗', '11.7159', 'CHF', '瑞士法郎', '14.4263', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9892', 'RUB', '卢布', '12.5345', 'PHP', '菲律宾比索', '70.0887', 'MYR', '林吉特', '7.7083', 'MOP', '澳门元', '22.7105', 'KRW', '韩国元', '1.7624', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('94', '2017-03-30 15:10:02', '', '', '6.8775', 'EUR', '欧元', '107.4169', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8992', 'GBP', '英镑', '124.0742', 'AUD', '澳大利亚元', '76.4726', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5667', 'DKK', '丹麦克朗', '100.1367', 'NOK', '挪威克朗', '11.2410', 'SEK', '瑞典克朗', '11.7237', 'CHF', '瑞士法郎', '14.4238', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7223', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('95', '2017-03-30 15:10:02', '', '', '6.8775', 'EUR', '欧元', '107.4169', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8992', 'GBP', '英镑', '124.0742', 'AUD', '澳大利亚元', '76.4726', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5667', 'DKK', '丹麦克朗', '100.1367', 'NOK', '挪威克朗', '11.2410', 'SEK', '瑞典克朗', '11.7237', 'CHF', '瑞士法郎', '14.4238', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7223', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('96', '2017-03-30 15:15:03', '', '', '6.8775', 'EUR', '欧元', '107.4169', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8992', 'GBP', '英镑', '124.0742', 'AUD', '澳大利亚元', '76.4726', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5667', 'DKK', '丹麦克朗', '100.1367', 'NOK', '挪威克朗', '11.2410', 'SEK', '瑞典克朗', '11.7237', 'CHF', '瑞士法郎', '14.4238', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7223', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('97', '2017-03-30 15:20:03', '', '', '6.8775', 'EUR', '欧元', '107.4373', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8996', 'GBP', '英镑', '124.1047', 'AUD', '澳大利亚元', '76.4522', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5711', 'DKK', '丹麦克朗', '100.1570', 'NOK', '挪威克朗', '11.2381', 'SEK', '瑞典克朗', '11.7252', 'CHF', '瑞士法郎', '14.4253', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7296', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('98', '2017-03-30 15:20:03', '', '', '6.8775', 'EUR', '欧元', '107.4373', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8996', 'GBP', '英镑', '124.1047', 'AUD', '澳大利亚元', '76.4522', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5711', 'DKK', '丹麦克朗', '100.1570', 'NOK', '挪威克朗', '11.2381', 'SEK', '瑞典克朗', '11.7252', 'CHF', '瑞士法郎', '14.4253', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7296', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('99', '2017-03-30 15:20:03', '', '', '6.8775', 'EUR', '欧元', '107.4373', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8996', 'GBP', '英镑', '124.1047', 'AUD', '澳大利亚元', '76.4522', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5711', 'DKK', '丹麦克朗', '100.1570', 'NOK', '挪威克朗', '11.2381', 'SEK', '瑞典克朗', '11.7252', 'CHF', '瑞士法郎', '14.4253', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7296', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('100', '2017-03-30 15:20:03', '', '', '6.8775', 'EUR', '欧元', '107.4373', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8996', 'GBP', '英镑', '124.1047', 'AUD', '澳大利亚元', '76.4522', 'CAD', '加拿大元', '74.9109', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5711', 'DKK', '丹麦克朗', '100.1570', 'NOK', '挪威克朗', '11.2381', 'SEK', '瑞典克朗', '11.7252', 'CHF', '瑞士法郎', '14.4253', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7296', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7695', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('101', '2017-03-30 15:30:01', '', '', '6.8795', 'EUR', '欧元', '107.4075', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8998', 'GBP', '英镑', '124.0541', 'AUD', '澳大利亚元', '76.4431', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5822', 'DKK', '丹麦克朗', '100.1468', 'NOK', '挪威克朗', '11.2334', 'SEK', '瑞典克朗', '11.7203', 'CHF', '瑞士法郎', '14.4226', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7171', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7690', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('102', '2017-03-30 15:30:01', '', '', '6.8795', 'EUR', '欧元', '107.4075', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8998', 'GBP', '英镑', '124.0541', 'AUD', '澳大利亚元', '76.4431', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5822', 'DKK', '丹麦克朗', '100.1468', 'NOK', '挪威克朗', '11.2334', 'SEK', '瑞典克朗', '11.7203', 'CHF', '瑞士法郎', '14.4226', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7171', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7690', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('103', '2017-03-30 15:30:01', '', '', '6.8795', 'EUR', '欧元', '107.4075', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8998', 'GBP', '英镑', '124.0541', 'AUD', '澳大利亚元', '76.4431', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5822', 'DKK', '丹麦克朗', '100.1468', 'NOK', '挪威克朗', '11.2334', 'SEK', '瑞典克朗', '11.7203', 'CHF', '瑞士法郎', '14.4226', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.0792', 'MYR', '林吉特', '7.7171', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7690', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('104', '2017-03-30 15:35:04', '', '', '6.8790', 'EUR', '欧元', '107.3964', 'HKD', '港币', '12.8652', 'JPY', '日元', '0.8994', 'GBP', '英镑', '124.0442', 'AUD', '澳大利亚元', '76.4922', 'CAD', '加拿大元', '74.9222', 'THB', '泰国铢', '2.8943', 'SGD', '新加坡元', '71.5816', 'DKK', '丹麦克朗', '100.1163', 'NOK', '挪威克朗', '11.2298', 'SEK', '瑞典克朗', '11.7212', 'CHF', '瑞士法郎', '14.4207', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9887', 'RUB', '卢布', '12.5338', 'PHP', '菲律宾比索', '70.0291', 'MYR', '林吉特', '7.7221', 'MOP', '澳门元', '22.7111', 'KRW', '韩国元', '1.7692', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('105', '2017-03-30 15:40:01', '', '', '6.8800', 'EUR', '欧元', '107.2762', 'HKD', '港币', '12.8663', 'JPY', '日元', '0.8992', 'GBP', '英镑', '123.9346', 'AUD', '澳大利亚元', '76.4331', 'CAD', '加拿大元', '74.8663', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.5567', 'DKK', '丹麦克朗', '100.0262', 'NOK', '挪威克朗', '11.2209', 'SEK', '瑞典克朗', '11.7108', 'CHF', '瑞士法郎', '14.4055', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9884', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '69.9695', 'MYR', '林吉特', '7.7180', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7703', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('106', '2017-03-30 15:40:01', '', '', '6.8800', 'EUR', '欧元', '107.2762', 'HKD', '港币', '12.8663', 'JPY', '日元', '0.8992', 'GBP', '英镑', '123.9346', 'AUD', '澳大利亚元', '76.4331', 'CAD', '加拿大元', '74.8663', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.5567', 'DKK', '丹麦克朗', '100.0262', 'NOK', '挪威克朗', '11.2209', 'SEK', '瑞典克朗', '11.7108', 'CHF', '瑞士法郎', '14.4055', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9884', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '69.9695', 'MYR', '林吉特', '7.7180', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7703', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('107', '2017-03-30 15:45:03', '', '', '6.8795', 'EUR', '欧元', '107.3276', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8995', 'GBP', '英镑', '123.9741', 'AUD', '澳大利亚元', '76.4721', 'CAD', '加拿大元', '74.8833', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5764', 'DKK', '丹麦克朗', '100.0567', 'NOK', '挪威克朗', '11.2217', 'SEK', '瑞典克朗', '11.7160', 'CHF', '瑞士法郎', '14.4109', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.0196', 'MYR', '林吉特', '7.7128', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7705', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('108', '2017-03-30 15:50:03', '', '', '6.8795', 'EUR', '欧元', '107.2374', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8991', 'GBP', '英镑', '123.9945', 'AUD', '澳大利亚元', '76.4532', 'CAD', '加拿大元', '74.8775', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5619', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2145', 'SEK', '瑞典克朗', '11.7043', 'CHF', '瑞士法郎', '14.3978', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.9993', 'MYR', '林吉特', '7.7128', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7705', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('109', '2017-03-30 15:55:01', '', '', '6.8795', 'EUR', '欧元', '107.2374', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8991', 'GBP', '英镑', '123.9945', 'AUD', '澳大利亚元', '76.4532', 'CAD', '加拿大元', '74.8775', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5619', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2145', 'SEK', '瑞典克朗', '11.7043', 'CHF', '瑞士法郎', '14.3978', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.9993', 'MYR', '林吉特', '7.7128', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7705', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('110', '2017-03-30 16:00:01', '', '', '6.8795', 'EUR', '欧元', '107.2374', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8991', 'GBP', '英镑', '123.9945', 'AUD', '澳大利亚元', '76.4532', 'CAD', '加拿大元', '74.8775', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5619', 'DKK', '丹麦克朗', '100.0465', 'NOK', '挪威克朗', '11.2145', 'SEK', '瑞典克朗', '11.7043', 'CHF', '瑞士法郎', '14.3978', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.9993', 'MYR', '林吉特', '7.7128', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7705', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('111', '2017-03-30 16:20:04', '', '', '6.8795', 'EUR', '欧元', '107.2069', 'HKD', '港币', '12.8658', 'JPY', '日元', '0.8989', 'GBP', '英镑', '123.8651', 'AUD', '澳大利亚元', '76.4721', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8941', 'SGD', '新加坡元', '71.5662', 'DKK', '丹麦克朗', '100.1366', 'NOK', '挪威克朗', '11.2087', 'SEK', '瑞典克朗', '11.6956', 'CHF', '瑞士法郎', '14.3964', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9885', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '70.0690', 'MYR', '林吉特', '7.7070', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7690', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('112', '2017-03-30 16:25:01', '', '', '6.8785', 'EUR', '欧元', '107.2370', 'HKD', '港币', '12.8662', 'JPY', '日元', '0.8988', 'GBP', '英镑', '123.9834', 'AUD', '澳大利亚元', '76.5036', 'CAD', '加拿大元', '74.9102', 'THB', '泰国铢', '2.8945', 'SGD', '新加坡元', '71.5825', 'DKK', '丹麦克朗', '100.1367', 'NOK', '挪威克朗', '11.2147', 'SEK', '瑞典克朗', '11.7017', 'CHF', '瑞士法郎', '14.3985', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9888', 'RUB', '卢布', '12.5347', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7110', 'MOP', '澳门元', '22.7113', 'KRW', '韩国元', '1.7707', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('113', '2017-03-30 16:30:03', '', '', '6.8775', 'EUR', '欧元', '107.2265', 'HKD', '港币', '12.8651', 'JPY', '日元', '0.8986', 'GBP', '英镑', '124.0044', 'AUD', '澳大利亚元', '76.5234', 'CAD', '加拿大元', '74.9168', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.5827', 'DKK', '丹麦克朗', '100.1469', 'NOK', '挪威克朗', '11.2148', 'SEK', '瑞典克朗', '11.7005', 'CHF', '瑞士法郎', '14.3991', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9891', 'RUB', '卢布', '12.5336', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7150', 'MOP', '澳门元', '22.7117', 'KRW', '韩国元', '1.7710', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('114', '2017-03-30 16:35:03', '', '', '6.8755', 'EUR', '欧元', '107.2460', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8989', 'GBP', '英镑', '124.0143', 'AUD', '澳大利亚元', '76.5530', 'CAD', '加拿大元', '74.9284', 'THB', '泰国铢', '2.8943', 'SGD', '新加坡元', '71.5773', 'DKK', '丹麦克朗', '100.1774', 'NOK', '挪威克朗', '11.2152', 'SEK', '瑞典克朗', '11.6995', 'CHF', '瑞士法郎', '14.4004', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9897', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.0487', 'MYR', '林吉特', '7.7187', 'MOP', '澳门元', '22.7111', 'KRW', '韩国元', '1.7730', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('115', '2017-03-30 16:55:01', '', '', '6.8755', 'EUR', '欧元', '107.2562', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8990', 'GBP', '英镑', '123.9648', 'AUD', '澳大利亚元', '76.5326', 'CAD', '加拿大元', '74.8833', 'THB', '泰国铢', '2.8943', 'SGD', '新加坡元', '71.5555', 'DKK', '丹麦克朗', '100.2182', 'NOK', '挪威克朗', '11.2152', 'SEK', '瑞典克朗', '11.7024', 'CHF', '瑞士法郎', '14.4004', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9897', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7129', 'MOP', '澳门元', '22.7111', 'KRW', '韩国元', '1.7715', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('116', '2017-03-30 16:55:01', '', '', '6.8755', 'EUR', '欧元', '107.2562', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8990', 'GBP', '英镑', '123.9648', 'AUD', '澳大利亚元', '76.5326', 'CAD', '加拿大元', '74.8833', 'THB', '泰国铢', '2.8943', 'SGD', '新加坡元', '71.5555', 'DKK', '丹麦克朗', '100.2182', 'NOK', '挪威克朗', '11.2152', 'SEK', '瑞典克朗', '11.7024', 'CHF', '瑞士法郎', '14.4004', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9897', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7129', 'MOP', '澳门元', '22.7111', 'KRW', '韩国元', '1.7715', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('117', '2017-03-30 16:55:01', '', '', '6.8755', 'EUR', '欧元', '107.2562', 'HKD', '港币', '12.8660', 'JPY', '日元', '0.8990', 'GBP', '英镑', '123.9648', 'AUD', '澳大利亚元', '76.5326', 'CAD', '加拿大元', '74.8833', 'THB', '泰国铢', '2.8943', 'SGD', '新加坡元', '71.5555', 'DKK', '丹麦克朗', '100.2182', 'NOK', '挪威克朗', '11.2152', 'SEK', '瑞典克朗', '11.7024', 'CHF', '瑞士法郎', '14.4004', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9897', 'RUB', '卢布', '12.5344', 'PHP', '菲律宾比索', '70.0589', 'MYR', '林吉特', '7.7129', 'MOP', '澳门元', '22.7111', 'KRW', '韩国元', '1.7715', 'NZD', '新西兰元', '0.0893');
INSERT INTO `fx_forex0` VALUES ('118', '2017-03-31 07:55:03', '', '', '6.8835', 'EUR', '欧元', '106.7175', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8931', 'GBP', '英镑', '124.6038', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4535', 'DKK', '丹麦克朗', '99.7574', 'NOK', '挪威克朗', '11.1658', 'SEK', '瑞典克朗', '11.6525', 'CHF', '瑞士法郎', '14.3314', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4294', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7811', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('119', '2017-03-31 08:00:01', '', '', '6.8835', 'EUR', '欧元', '106.7175', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8931', 'GBP', '英镑', '124.6038', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.9052', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4535', 'DKK', '丹麦克朗', '99.7574', 'NOK', '挪威克朗', '11.1658', 'SEK', '瑞典克朗', '11.6525', 'CHF', '瑞士法郎', '14.3314', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4294', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7811', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('120', '2017-03-31 08:05:02', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('121', '2017-03-31 08:10:02', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('122', '2017-03-31 08:15:01', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('123', '2017-03-31 08:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('124', '2017-03-31 08:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('125', '2017-03-31 08:30:02', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('126', '2017-03-31 08:35:03', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('127', '2017-03-31 08:35:03', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('128', '2017-03-31 08:35:03', '', '', '6.8835', 'EUR', '欧元', '106.6870', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8933', 'GBP', '英镑', '124.6139', 'AUD', '澳大利亚元', '76.4132', 'CAD', '加拿大元', '74.8878', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4593', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1644', 'SEK', '瑞典克朗', '11.6481', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8990', 'MYR', '林吉特', '7.4192', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('129', '2017-03-31 08:40:03', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8922', 'GBP', '英镑', '124.7839', 'AUD', '澳大利亚元', '76.3827', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4273', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1629', 'SEK', '瑞典克朗', '11.6380', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8206', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('130', '2017-03-31 08:45:02', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8922', 'GBP', '英镑', '124.7839', 'AUD', '澳大利亚元', '76.3827', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4273', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1629', 'SEK', '瑞典克朗', '11.6380', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8206', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('131', '2017-03-31 08:50:01', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8922', 'GBP', '英镑', '124.7839', 'AUD', '澳大利亚元', '76.3827', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4273', 'DKK', '丹麦克朗', '99.7472', 'NOK', '挪威克朗', '11.1629', 'SEK', '瑞典克朗', '11.6380', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8206', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('132', '2017-03-31 09:05:03', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('133', '2017-03-31 09:05:03', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('134', '2017-03-31 09:05:03', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('135', '2017-03-31 09:10:01', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('136', '2017-03-31 09:10:01', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('137', '2017-03-31 09:10:01', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('138', '2017-03-31 09:15:03', '', '', '6.8835', 'EUR', '欧元', '106.6972', 'HKD', '港币', '12.8641', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.6532', 'AUD', '澳大利亚元', '76.4030', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8939', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7371', 'NOK', '挪威克朗', '11.1615', 'SEK', '瑞典克朗', '11.6438', 'CHF', '瑞士法郎', '14.3285', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8104', 'MYR', '林吉特', '7.4366', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('139', '2017-03-31 09:35:02', '', '', '6.8875', 'EUR', '欧元', '106.6976', 'HKD', '港币', '12.8639', 'JPY', '日元', '0.8915', 'GBP', '英镑', '124.7826', 'AUD', '澳大利亚元', '76.4632', 'CAD', '加拿大元', '74.9169', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4642', 'DKK', '丹麦克朗', '99.7372', 'NOK', '挪威克朗', '11.1608', 'SEK', '瑞典克朗', '11.6399', 'CHF', '瑞士法郎', '14.3289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9862', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8497', 'MYR', '林吉特', '7.4410', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7786', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('140', '2017-03-31 09:35:02', '', '', '6.8875', 'EUR', '欧元', '106.6976', 'HKD', '港币', '12.8639', 'JPY', '日元', '0.8915', 'GBP', '英镑', '124.7826', 'AUD', '澳大利亚元', '76.4632', 'CAD', '加拿大元', '74.9169', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4642', 'DKK', '丹麦克朗', '99.7372', 'NOK', '挪威克朗', '11.1608', 'SEK', '瑞典克朗', '11.6399', 'CHF', '瑞士法郎', '14.3289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9862', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8497', 'MYR', '林吉特', '7.4410', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7786', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('141', '2017-03-31 09:35:02', '', '', '6.8875', 'EUR', '欧元', '106.6976', 'HKD', '港币', '12.8639', 'JPY', '日元', '0.8915', 'GBP', '英镑', '124.7826', 'AUD', '澳大利亚元', '76.4632', 'CAD', '加拿大元', '74.9169', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4642', 'DKK', '丹麦克朗', '99.7372', 'NOK', '挪威克朗', '11.1608', 'SEK', '瑞典克朗', '11.6399', 'CHF', '瑞士法郎', '14.3289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9862', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8497', 'MYR', '林吉特', '7.4410', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7786', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('142', '2017-03-31 09:40:01', '', '', '6.8875', 'EUR', '欧元', '106.6976', 'HKD', '港币', '12.8639', 'JPY', '日元', '0.8915', 'GBP', '英镑', '124.7826', 'AUD', '澳大利亚元', '76.4632', 'CAD', '加拿大元', '74.9169', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4642', 'DKK', '丹麦克朗', '99.7372', 'NOK', '挪威克朗', '11.1608', 'SEK', '瑞典克朗', '11.6399', 'CHF', '瑞士法郎', '14.3289', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9862', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8497', 'MYR', '林吉特', '7.4410', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7786', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('143', '2017-03-31 09:55:03', '', '', '6.8875', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8653', 'JPY', '日元', '0.8916', 'GBP', '英镑', '124.7724', 'AUD', '澳大利亚元', '76.4530', 'CAD', '加拿大元', '74.9053', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4744', 'DKK', '丹麦克朗', '99.7169', 'NOK', '挪威克朗', '11.1579', 'SEK', '瑞典克朗', '11.6385', 'CHF', '瑞士法郎', '14.3245', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9862', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.8396', 'MYR', '林吉特', '7.4468', 'MOP', '澳门元', '22.7107', 'KRW', '韩国元', '1.7786', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('144', '2017-03-31 10:00:01', '', '', '6.8860', 'EUR', '欧元', '106.6773', 'HKD', '港币', '12.8652', 'JPY', '日元', '0.8914', 'GBP', '英镑', '124.7546', 'AUD', '澳大利亚元', '76.4130', 'CAD', '加拿大元', '74.8998', 'THB', '泰国铢', '2.8957', 'SGD', '新加坡元', '71.4595', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1574', 'SEK', '瑞典克朗', '11.6381', 'CHF', '瑞士法郎', '14.3262', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9866', 'RUB', '卢布', '12.5341', 'PHP', '菲律宾比索', '69.8185', 'MYR', '林吉特', '7.4455', 'MOP', '澳门元', '22.7113', 'KRW', '韩国元', '1.7775', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('145', '2017-03-31 10:45:04', '', '', '6.8840', 'EUR', '欧元', '106.6778', 'HKD', '港币', '12.8661', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.8126', 'AUD', '澳大利亚元', '76.3727', 'CAD', '加拿大元', '74.8664', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4018', 'DKK', '丹麦克朗', '99.7269', 'NOK', '挪威克朗', '11.1592', 'SEK', '瑞典克朗', '11.6328', 'CHF', '瑞士法郎', '14.3260', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9858', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '69.7807', 'MYR', '林吉特', '7.4230', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7780', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('146', '2017-03-31 10:50:01', '', '', '6.8840', 'EUR', '欧元', '106.6778', 'HKD', '港币', '12.8661', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.8126', 'AUD', '澳大利亚元', '76.3727', 'CAD', '加拿大元', '74.8664', 'THB', '泰国铢', '2.8951', 'SGD', '新加坡元', '71.4018', 'DKK', '丹麦克朗', '99.7269', 'NOK', '挪威克朗', '11.1592', 'SEK', '瑞典克朗', '11.6328', 'CHF', '瑞士法郎', '14.3260', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9858', 'RUB', '卢布', '12.5349', 'PHP', '菲律宾比索', '69.7807', 'MYR', '林吉特', '7.4230', 'MOP', '澳门元', '22.7106', 'KRW', '韩国元', '1.7780', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('147', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('148', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('149', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('150', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('151', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('152', '2017-03-31 10:55:02', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('153', '2017-03-31 11:00:04', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('154', '2017-03-31 11:05:03', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('155', '2017-03-31 11:05:03', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('156', '2017-03-31 11:05:03', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('157', '2017-03-31 11:05:03', '', '', '6.8845', 'EUR', '欧元', '106.6672', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8911', 'GBP', '英镑', '124.7643', 'AUD', '澳大利亚元', '76.3527', 'CAD', '加拿大元', '74.8653', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4184', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1584', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3249', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9856', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7698', 'MYR', '林吉特', '7.4225', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('158', '2017-03-31 11:10:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('159', '2017-03-31 11:15:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('160', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('161', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('162', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('163', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('164', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('165', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('166', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('167', '2017-03-31 11:20:01', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('168', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('169', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('170', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('171', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('172', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('173', '2017-03-31 11:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6667', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.7345', 'AUD', '澳大利亚元', '76.3725', 'CAD', '加拿大元', '74.8776', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4331', 'DKK', '丹麦克朗', '99.7167', 'NOK', '挪威克朗', '11.1571', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3256', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4337', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('174', '2017-03-31 11:30:02', '', '', '6.8845', 'EUR', '欧元', '106.6570', 'HKD', '港币', '12.8666', 'JPY', '日元', '0.8909', 'GBP', '英镑', '124.7440', 'AUD', '澳大利亚元', '76.3832', 'CAD', '加拿大元', '74.8827', 'THB', '泰国铢', '2.8949', 'SGD', '新加坡元', '71.4431', 'DKK', '丹麦克朗', '99.7168', 'NOK', '挪威克朗', '11.1569', 'SEK', '瑞典克朗', '11.6319', 'CHF', '瑞士法郎', '14.3235', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9871', 'RUB', '卢布', '12.5340', 'PHP', '菲律宾比索', '69.7799', 'MYR', '林吉特', '7.4370', 'MOP', '澳门元', '22.7119', 'KRW', '韩国元', '1.7779', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('175', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('176', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('177', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('178', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('179', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('180', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('181', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('182', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('183', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('184', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('185', '2017-03-31 12:55:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('186', '2017-03-31 13:00:01', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('187', '2017-03-31 13:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('188', '2017-03-31 13:25:02', '', '', '6.8835', 'EUR', '欧元', '106.6274', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8913', 'GBP', '英镑', '124.6938', 'AUD', '澳大利亚元', '76.3420', 'CAD', '加拿大元', '74.8936', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4491', 'DKK', '丹麦克朗', '99.6964', 'NOK', '挪威克朗', '11.1542', 'SEK', '瑞典克朗', '11.6336', 'CHF', '瑞士法郎', '14.3198', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9859', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7596', 'MYR', '林吉特', '7.4308', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('189', '2017-03-31 13:40:02', '', '', '6.8835', 'EUR', '欧元', '106.6173', 'HKD', '港币', '12.8655', 'JPY', '日元', '0.8925', 'GBP', '英镑', '124.6837', 'AUD', '澳大利亚元', '76.3333', 'CAD', '加拿大元', '74.8602', 'THB', '泰国铢', '2.8953', 'SGD', '新加坡元', '71.4433', 'DKK', '丹麦克朗', '99.7065', 'NOK', '挪威克朗', '11.1513', 'SEK', '瑞典克朗', '11.6278', 'CHF', '瑞士法郎', '14.3183', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9874', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.7697', 'MYR', '林吉特', '7.3683', 'MOP', '澳门元', '22.7108', 'KRW', '韩国元', '1.7782', 'NZD', '新西兰元', '0.0892');
INSERT INTO `fx_forex0` VALUES ('190', '2017-03-31 13:45:01', '', '', '6.8830', 'EUR', '欧元', '106.6279', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8928', 'GBP', '英镑', '124.6840', 'AUD', '澳大利亚元', '76.3432', 'CAD', '加拿大元', '74.8714', 'THB', '泰国铢', '2.8955', 'SGD', '新加坡元', '71.4543', 'DKK', '丹麦克朗', '99.7065', 'NOK', '挪威克朗', '11.1550', 'SEK', '瑞典克朗', '11.6287', 'CHF', '瑞士法郎', '14.3208', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9875', 'RUB', '卢布', '12.5338', 'PHP', '菲律宾比索', '69.7908', 'MYR', '林吉特', '7.3645', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7783', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('191', '2017-03-31 13:50:03', '', '', '6.8830', 'EUR', '欧元', '106.6279', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8928', 'GBP', '英镑', '124.6840', 'AUD', '澳大利亚元', '76.3432', 'CAD', '加拿大元', '74.8714', 'THB', '泰国铢', '2.8955', 'SGD', '新加坡元', '71.4543', 'DKK', '丹麦克朗', '99.7065', 'NOK', '挪威克朗', '11.1550', 'SEK', '瑞典克朗', '11.6287', 'CHF', '瑞士法郎', '14.3208', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9875', 'RUB', '卢布', '12.5338', 'PHP', '菲律宾比索', '69.7908', 'MYR', '林吉特', '7.3645', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7783', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('192', '2017-03-31 13:50:03', '', '', '6.8830', 'EUR', '欧元', '106.6279', 'HKD', '港币', '12.8650', 'JPY', '日元', '0.8928', 'GBP', '英镑', '124.6840', 'AUD', '澳大利亚元', '76.3432', 'CAD', '加拿大元', '74.8714', 'THB', '泰国铢', '2.8955', 'SGD', '新加坡元', '71.4543', 'DKK', '丹麦克朗', '99.7065', 'NOK', '挪威克朗', '11.1550', 'SEK', '瑞典克朗', '11.6287', 'CHF', '瑞士法郎', '14.3208', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '1.9875', 'RUB', '卢布', '12.5338', 'PHP', '菲律宾比索', '69.7908', 'MYR', '林吉特', '7.3645', 'MOP', '澳门元', '22.7110', 'KRW', '韩国元', '1.7783', 'NZD', '新西兰元', '0.0891');
INSERT INTO `fx_forex0` VALUES ('193', '2017-04-10 11:25:01', '', '', '6.8955', 'EUR', '欧元', '105.6385', 'HKD', '港币', '12.8664', 'JPY', '日元', '0.8959', 'GBP', '英镑', '123.6444', 'AUD', '澳大利亚元', '74.7546', 'CAD', '加拿大元', '74.4137', 'THB', '泰国铢', '2.8801', 'SGD', '新加坡元', '70.9405', 'DKK', '丹麦克朗', '98.8384', 'NOK', '挪威克朗', '10.9738', 'SEK', '瑞典克朗', '11.5046', 'CHF', '瑞士法郎', '14.1933', 'TWD', '新台币', '0.0000', 'ZAR', '南非兰特', '2.0013', 'RUB', '卢布', '12.5343', 'PHP', '菲律宾比索', '69.2104', 'MYR', '林吉特', '7.2250', 'MOP', '澳门元', '22.6858', 'KRW', '韩国元', '1.7359', 'NZD', '新西兰元', '0.0891');

-- ----------------------------
-- Table structure for fx_forex_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_forex_record`;
CREATE TABLE `fx_forex_record` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `f_time` varchar(32) NOT NULL,
  `f_open1` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close1` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest1` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest1` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open2` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close2` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest2` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest2` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open3` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close3` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest3` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest3` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open4` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close4` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest4` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest4` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open5` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close5` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest5` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest5` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open6` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close6` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest6` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest6` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open7` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close7` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest7` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest7` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open8` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close8` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest8` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest8` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open9` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close9` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest9` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest9` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open10` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close10` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest10` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest10` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open11` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close11` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest11` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest11` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open12` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close12` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest12` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest12` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open13` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close13` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest13` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest13` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open14` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close14` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest14` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest14` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open15` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close15` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest15` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest15` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open16` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close16` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest16` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest16` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open17` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close17` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest17` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest17` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open18` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close18` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest18` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest18` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open19` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close19` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest19` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest19` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open20` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close20` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest20` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest20` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_open21` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_close21` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_lowest21` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `f_highest21` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_forex_record
-- ----------------------------
INSERT INTO `fx_forex_record` VALUES ('42', '2017-04-14 10:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0560', '1.0659', '1.0342', '1.0793', '0.1305', '0.1273', '0.1248', '0.1305', '0.0092', '0.0091', '0.0089', '0.0094', '1.2755', '1.2739', '1.2453', '1.2755', '0.7535', '0.7598', '0.7348', '0.7750', '0.7353', '0.7482', '0.7353', '0.7705', '0.0293', '0.0285', '0.0281', '0.0294', '0.7015', '0.7004', '0.6960', '0.7320', '1.0017', '1.0080', '0.9687', '1.0080', '0.1088', '0.1107', '0.1088', '0.1138', '0.1156', '0.1131', '0.1131', '0.1196', '0.1400', '0.1412', '0.1400', '0.1469', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0201', '0.0205', '0.0195', '0.0205', '0.1259', '0.1250', '0.1241', '0.1277', '0.7144', '0.6821', '0.6810', '0.7144', '0.0762', '0.0762', '0.0749', '0.0763', '0.2326', '0.2207', '0.2207', '0.2329', '0.0171', '0.0171', '0.0170', '0.0179', '0.0008', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('43', '2017-04-14 10:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0455', '1.0822', '1.0455', '1.0898', '0.1324', '0.1280', '0.1248', '0.1324', '0.0091', '0.0094', '0.0090', '0.0094', '1.2791', '1.2530', '1.2223', '1.2894', '0.7598', '0.7582', '0.7396', '0.7598', '0.7642', '0.7744', '0.7538', '0.7744', '0.0294', '0.0289', '0.0283', '0.0297', '0.7302', '0.7177', '0.6986', '0.7311', '1.0028', '1.0111', '0.9727', '1.0111', '0.1091', '0.1103', '0.1091', '0.1128', '0.1149', '0.1148', '0.1132', '0.1193', '0.1394', '0.1409', '0.1394', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0197', '0.0207', '0.0197', '0.0208', '0.1240', '0.1222', '0.1222', '0.1279', '0.7175', '0.6983', '0.6931', '0.7183', '0.0739', '0.0732', '0.0732', '0.0758', '0.2313', '0.2249', '0.2217', '0.2313', '0.0180', '0.0175', '0.0174', '0.0181', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('44', '2017-04-14 10:19:39', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0380', '1.0380', '1.0924', '0.1283', '0.1294', '0.1259', '0.1302', '0.0094', '0.0092', '0.0090', '0.0094', '1.2698', '1.2499', '1.2463', '1.2751', '0.7615', '0.7707', '0.7338', '0.7707', '0.7599', '0.7547', '0.7463', '0.7715', '0.0287', '0.0291', '0.0287', '0.0298', '0.7035', '0.7155', '0.7035', '0.7334', '0.9879', '1.0237', '0.9879', '1.0237', '0.1133', '0.1140', '0.1101', '0.1140', '0.1184', '0.1172', '0.1139', '0.1200', '0.1429', '0.1433', '0.1399', '0.1468', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0202', '0.0196', '0.0208', '0.1277', '0.1281', '0.1219', '0.1281', '0.6955', '0.7176', '0.6864', '0.7176', '0.0758', '0.0731', '0.0731', '0.0758', '0.2295', '0.2287', '0.2203', '0.2312', '0.0170', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('45', '2017-04-14 10:35:03', '0.0000', '0.0000', '0.0000', '0.0000', '1.0647', '1.0793', '1.0526', '1.0895', '0.1288', '0.1323', '0.1247', '0.1323', '0.0092', '0.0093', '0.0089', '0.0093', '1.2228', '1.2578', '1.2228', '1.2818', '0.7364', '0.7552', '0.7364', '0.7762', '0.7444', '0.7754', '0.7335', '0.7754', '0.0291', '0.0285', '0.0283', '0.0292', '0.7055', '0.7075', '0.6933', '0.7187', '1.0041', '1.0082', '0.9850', '1.0181', '0.1085', '0.1085', '0.1085', '0.1115', '0.1188', '0.1141', '0.1135', '0.1188', '0.1414', '0.1455', '0.1389', '0.1455', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0205', '0.0196', '0.0207', '0.1223', '0.1281', '0.1213', '0.1281', '0.7088', '0.6772', '0.6772', '0.7184', '0.0723', '0.0759', '0.0723', '0.0759', '0.2323', '0.2312', '0.2219', '0.2323', '0.0171', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('46', '2017-04-14 10:36:40', '0.0000', '0.0000', '0.0000', '0.0000', '1.0895', '1.0337', '1.0337', '1.0895', '0.1319', '0.1288', '0.1255', '0.1319', '0.0090', '0.0094', '0.0089', '0.0094', '1.2591', '1.2919', '1.2304', '1.2919', '0.7558', '0.7659', '0.7504', '0.7732', '0.7388', '0.7663', '0.7388', '0.7663', '0.0292', '0.0298', '0.0281', '0.0298', '0.7014', '0.7036', '0.6948', '0.7151', '0.9818', '0.9986', '0.9698', '1.0243', '0.1111', '0.1125', '0.1081', '0.1125', '0.1170', '0.1149', '0.1149', '0.1176', '0.1466', '0.1467', '0.1425', '0.1467', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0197', '0.0196', '0.0208', '0.1251', '0.1272', '0.1226', '0.1272', '0.7129', '0.7050', '0.7050', '0.7163', '0.0746', '0.0760', '0.0732', '0.0760', '0.2251', '0.2276', '0.2210', '0.2325', '0.0175', '0.0170', '0.0170', '0.0178', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('47', '2017-04-14 10:36:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0441', '1.0420', '1.0420', '1.0965', '0.1317', '0.1307', '0.1265', '0.1317', '0.0094', '0.0092', '0.0091', '0.0094', '1.2711', '1.2501', '1.2321', '1.2914', '0.7695', '0.7696', '0.7436', '0.7727', '0.7406', '0.7359', '0.7359', '0.7768', '0.0286', '0.0287', '0.0283', '0.0287', '0.6983', '0.7196', '0.6970', '0.7312', '0.9798', '1.0226', '0.9737', '1.0226', '0.1086', '0.1087', '0.1086', '0.1142', '0.1144', '0.1202', '0.1144', '0.1202', '0.1421', '0.1446', '0.1398', '0.1446', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0202', '0.0196', '0.0196', '0.0208', '0.1249', '0.1234', '0.1221', '0.1270', '0.6838', '0.7044', '0.6838', '0.7132', '0.0758', '0.0744', '0.0737', '0.0763', '0.2309', '0.2308', '0.2251', '0.2309', '0.0178', '0.0177', '0.0173', '0.0180', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('48', '2017-04-14 10:37:10', '0.0000', '0.0000', '0.0000', '0.0000', '1.0731', '1.0464', '1.0403', '1.0731', '0.1273', '0.1311', '0.1247', '0.1319', '0.0093', '0.0091', '0.0089', '0.0094', '1.2598', '1.2916', '1.2235', '1.2916', '0.7604', '0.7436', '0.7333', '0.7776', '0.7544', '0.7463', '0.7433', '0.7709', '0.0284', '0.0296', '0.0284', '0.0296', '0.7341', '0.7023', '0.6939', '0.7358', '0.9972', '0.9950', '0.9702', '1.0196', '0.1111', '0.1097', '0.1085', '0.1143', '0.1179', '0.1202', '0.1149', '0.1202', '0.1394', '0.1394', '0.1390', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0195', '0.0208', '0.0195', '0.0208', '0.1251', '0.1252', '0.1223', '0.1285', '0.6954', '0.7019', '0.6819', '0.7133', '0.0723', '0.0744', '0.0723', '0.0758', '0.2242', '0.2204', '0.2204', '0.2322', '0.0177', '0.0180', '0.0170', '0.0180', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('49', '2017-04-14 11:03:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0380', '1.0938', '1.0380', '1.0966', '0.1267', '0.1279', '0.1265', '0.1316', '0.0089', '0.0093', '0.0089', '0.0094', '1.2731', '1.2747', '1.2344', '1.2884', '0.7747', '0.7448', '0.7366', '0.7758', '0.7651', '0.7767', '0.7351', '0.7767', '0.0286', '0.0284', '0.0282', '0.0298', '0.7248', '0.7190', '0.6946', '0.7248', '0.9688', '0.9874', '0.9688', '1.0173', '0.1112', '0.1102', '0.1083', '0.1145', '0.1181', '0.1153', '0.1144', '0.1201', '0.1446', '0.1464', '0.1397', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0204', '0.0195', '0.0208', '0.1219', '0.1281', '0.1215', '0.1281', '0.7020', '0.7042', '0.6781', '0.7046', '0.0721', '0.0756', '0.0721', '0.0765', '0.2239', '0.2313', '0.2239', '0.2329', '0.0179', '0.0174', '0.0172', '0.0181', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('50', '2017-04-14 11:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0907', '1.1347', '1.0907', '1.1425', '0.1324', '0.1218', '0.1218', '0.1351', '0.0090', '0.0092', '0.0086', '0.0092', '1.2715', '1.1747', '1.1747', '1.2715', '0.7726', '0.8141', '0.7418', '0.8141', '0.7556', '0.7776', '0.7103', '0.7776', '0.0281', '0.0291', '0.0281', '0.0295', '0.6952', '0.6831', '0.6639', '0.6952', '0.9775', '0.9134', '0.9031', '1.0105', '0.1088', '0.1206', '0.1088', '0.1220', '0.1169', '0.1095', '0.1095', '0.1169', '0.1443', '0.1206', '0.1206', '0.1443', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0196', '0.0185', '0.0181', '0.0199', '0.1256', '0.1229', '0.1215', '0.1266', '0.6982', '0.6909', '0.6879', '0.7136', '0.0754', '0.0813', '0.0751', '0.0813', '0.2214', '0.2018', '0.1943', '0.2214', '0.0176', '0.0166', '0.0166', '0.0180', '0.0008', '0.0002', '0.0002', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('51', '2017-04-14 11:15:16', '0.0000', '0.0000', '0.0000', '0.0000', '1.0622', '1.0390', '1.0270', '1.0932', '0.1260', '0.1255', '0.1225', '0.1280', '0.0089', '0.0086', '0.0086', '0.0094', '1.2774', '1.2594', '1.2486', '1.3478', '0.7490', '0.7659', '0.7106', '0.7864', '0.7504', '0.7022', '0.7022', '0.7516', '0.0287', '0.0288', '0.0285', '0.0298', '0.7052', '0.7178', '0.6669', '0.7244', '0.9836', '1.0379', '0.9713', '1.0534', '0.1115', '0.1127', '0.1091', '0.1127', '0.1156', '0.1135', '0.1126', '0.1184', '0.1463', '0.1426', '0.1390', '0.1463', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0200', '0.0216', '0.0198', '0.0216', '0.1215', '0.1202', '0.1202', '0.1266', '0.6866', '0.6982', '0.6853', '0.7167', '0.0751', '0.0701', '0.0701', '0.0797', '0.2250', '0.2250', '0.2169', '0.2335', '0.0180', '0.0181', '0.0178', '0.0185', '0.0008', '0.0006', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('52', '2017-04-14 11:28:06', '0.0000', '0.0000', '0.0000', '0.0000', '1.0505', '1.0981', '1.0332', '1.0981', '0.1283', '0.1320', '0.1258', '0.1348', '0.0087', '0.0091', '0.0087', '0.0097', '1.2553', '1.2090', '1.2090', '1.2893', '0.7607', '0.7579', '0.7528', '0.7976', '0.7177', '0.7650', '0.7076', '0.7650', '0.0279', '0.0288', '0.0273', '0.0307', '0.7136', '0.6888', '0.6888', '0.7691', '1.0225', '0.9727', '0.9727', '1.0802', '0.1129', '0.1112', '0.1076', '0.1129', '0.1126', '0.1148', '0.1126', '0.1198', '0.1443', '0.1373', '0.1373', '0.1487', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0210', '0.0193', '0.0183', '0.0210', '0.1206', '0.1276', '0.1206', '0.1332', '0.6902', '0.7166', '0.6717', '0.7173', '0.0694', '0.0768', '0.0685', '0.0819', '0.2214', '0.2301', '0.2164', '0.2301', '0.0186', '0.0172', '0.0172', '0.0188', '0.0006', '0.0008', '0.0004', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('53', '2017-04-15 08:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0799', '1.0808', '1.0283', '1.0808', '0.1299', '0.1303', '0.1275', '0.1377', '0.0091', '0.0088', '0.0077', '0.0091', '1.2083', '1.2370', '1.1901', '1.2657', '0.7599', '0.7595', '0.7220', '0.7777', '0.7565', '0.7492', '0.7103', '0.7685', '0.0296', '0.0290', '0.0286', '0.0304', '0.6990', '0.7135', '0.6372', '0.7254', '0.9894', '0.9625', '0.9562', '1.0262', '0.1122', '0.1085', '0.1082', '0.1243', '0.1180', '0.1214', '0.1145', '0.1214', '0.1373', '0.1428', '0.1344', '0.1428', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0188', '0.0196', '0.0188', '0.0205', '0.1278', '0.1313', '0.1183', '0.1313', '0.7110', '0.6763', '0.6763', '0.7440', '0.0763', '0.0713', '0.0713', '0.0764', '0.2235', '0.2270', '0.2188', '0.2328', '0.0167', '0.0174', '0.0165', '0.0180', '0.0007', '0.0008', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('54', '2017-04-15 10:37:23', '0.0000', '0.0000', '0.0000', '0.0000', '1.0746', '1.1239', '1.0424', '1.1239', '0.1283', '0.1206', '0.1163', '0.1283', '0.0093', '0.0084', '0.0081', '0.0093', '1.2733', '1.3600', '1.2733', '1.4113', '0.7387', '0.6613', '0.6613', '0.7387', '0.7469', '0.7171', '0.7036', '0.7683', '0.0287', '0.0272', '0.0270', '0.0288', '0.6950', '0.7276', '0.6867', '0.7468', '1.0056', '1.0330', '0.9675', '1.0330', '0.1132', '0.1184', '0.1093', '0.1184', '0.1154', '0.1156', '0.1154', '0.1216', '0.1412', '0.1367', '0.1301', '0.1412', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0208', '0.0215', '0.0201', '0.0215', '0.1277', '0.1265', '0.1200', '0.1301', '0.6922', '0.6507', '0.6310', '0.6967', '0.0733', '0.0783', '0.0717', '0.0783', '0.2251', '0.2040', '0.2040', '0.2310', '0.0178', '0.0167', '0.0163', '0.0180', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('55', '2017-04-15 10:38:08', '0.0000', '0.0000', '0.0000', '0.0000', '1.0945', '1.0938', '1.0402', '1.1075', '0.1226', '0.1282', '0.1180', '0.1282', '0.0084', '0.0089', '0.0083', '0.0089', '1.3934', '1.2623', '1.2623', '1.3962', '0.6561', '0.7491', '0.5965', '0.7491', '0.7187', '0.7614', '0.7056', '0.7618', '0.0275', '0.0285', '0.0258', '0.0285', '0.7126', '0.7005', '0.7005', '0.7565', '1.0379', '1.0076', '0.9865', '1.0530', '0.1210', '0.1134', '0.1134', '0.1240', '0.1178', '0.1182', '0.1145', '0.1202', '0.1332', '0.1393', '0.1182', '0.1393', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0212', '0.0195', '0.0195', '0.0223', '0.1272', '0.1258', '0.1244', '0.1338', '0.6326', '0.6837', '0.6326', '0.6837', '0.0763', '0.0745', '0.0745', '0.0811', '0.1990', '0.2331', '0.1990', '0.2331', '0.0164', '0.0178', '0.0151', '0.0178', '0.0005', '0.0009', '0.0000', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('56', '2017-04-15 10:39:02', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0790', '1.0330', '1.1024', '0.1314', '0.1258', '0.1246', '0.1314', '0.0089', '0.0081', '0.0081', '0.0090', '1.2358', '1.2896', '1.2090', '1.3402', '0.7552', '0.7451', '0.7261', '0.7634', '0.7522', '0.7403', '0.7063', '0.7627', '0.0284', '0.0295', '0.0259', '0.0300', '0.6846', '0.7548', '0.6674', '0.7548', '0.9897', '1.0359', '0.9783', '1.0427', '0.1141', '0.1070', '0.1061', '0.1141', '0.1192', '0.1141', '0.1125', '0.1192', '0.1408', '0.1426', '0.1385', '0.1438', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0189', '0.0207', '0.0178', '0.0207', '0.1289', '0.1309', '0.1240', '0.1336', '0.6965', '0.6620', '0.6620', '0.7034', '0.0742', '0.0708', '0.0708', '0.0759', '0.2309', '0.2313', '0.2214', '0.2514', '0.0179', '0.0179', '0.0170', '0.0185', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('57', '2017-04-15 10:39:38', '0.0000', '0.0000', '0.0000', '0.0000', '1.0875', '1.0773', '1.0704', '1.1295', '0.1267', '0.1260', '0.1114', '0.1273', '0.0083', '0.0092', '0.0071', '0.0093', '1.3229', '1.3075', '1.2711', '1.3337', '0.7354', '0.7741', '0.6533', '0.7741', '0.7214', '0.7771', '0.7091', '0.7771', '0.0302', '0.0296', '0.0274', '0.0302', '0.7637', '0.7124', '0.7124', '0.7709', '1.0226', '0.9869', '0.9490', '1.0226', '0.1079', '0.1121', '0.1073', '0.1172', '0.1148', '0.1135', '0.1135', '0.1202', '0.1446', '0.1495', '0.1342', '0.1495', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0198', '0.0195', '0.0211', '0.1336', '0.1244', '0.1244', '0.1361', '0.6434', '0.6893', '0.6252', '0.6893', '0.0695', '0.0753', '0.0656', '0.0766', '0.2308', '0.2356', '0.2131', '0.2356', '0.0184', '0.0175', '0.0174', '0.0192', '0.0004', '0.0008', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('58', '2017-04-15 10:40:09', '0.0000', '0.0000', '0.0000', '0.0000', '1.0580', '1.0973', '1.0580', '1.1184', '0.1288', '0.1369', '0.1274', '0.1402', '0.0092', '0.0088', '0.0087', '0.0092', '1.2733', '1.2537', '1.2149', '1.2809', '0.7886', '0.8492', '0.7596', '0.8492', '0.7933', '0.7250', '0.7250', '0.8078', '0.0300', '0.0319', '0.0300', '0.0325', '0.7109', '0.7573', '0.6997', '0.7642', '0.9691', '0.9580', '0.9580', '1.0099', '0.1138', '0.1180', '0.1138', '0.1193', '0.1150', '0.1180', '0.1125', '0.1216', '0.1532', '0.1491', '0.1465', '0.1532', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0194', '0.0179', '0.0179', '0.0194', '0.1225', '0.1322', '0.1225', '0.1322', '0.7003', '0.7099', '0.6840', '0.7542', '0.0761', '0.0819', '0.0740', '0.0819', '0.2326', '0.2082', '0.2064', '0.2326', '0.0175', '0.0156', '0.0156', '0.0177', '0.0008', '0.0003', '0.0003', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('59', '2017-04-15 10:40:41', '0.0000', '0.0000', '0.0000', '0.0000', '1.1280', '1.1413', '1.0870', '1.2011', '0.1380', '0.1250', '0.1246', '0.1416', '0.0086', '0.0086', '0.0086', '0.0091', '1.2805', '1.2362', '1.2109', '1.3245', '0.8468', '0.7706', '0.7501', '0.8717', '0.7038', '0.7401', '0.6923', '0.7401', '0.0314', '0.0293', '0.0293', '0.0314', '0.7579', '0.7472', '0.7278', '0.8230', '0.9609', '1.0003', '0.9369', '1.0162', '0.1187', '0.1110', '0.1105', '0.1187', '0.1151', '0.1178', '0.1131', '0.1205', '0.1456', '0.1424', '0.1360', '0.1456', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0175', '0.0201', '0.0175', '0.0204', '0.1336', '0.1248', '0.1213', '0.1405', '0.6995', '0.6990', '0.6326', '0.7202', '0.0841', '0.0731', '0.0725', '0.0841', '0.2054', '0.2337', '0.2014', '0.2376', '0.0155', '0.0174', '0.0141', '0.0176', '0.0002', '0.0007', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('60', '2017-04-15 10:41:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.1375', '1.0467', '1.0467', '1.1506', '0.1271', '0.1322', '0.1247', '0.1322', '0.0088', '0.0090', '0.0084', '0.0090', '1.2117', '1.2454', '1.1846', '1.3008', '0.7874', '0.7490', '0.7490', '0.8351', '0.7490', '0.7593', '0.7063', '0.7720', '0.0288', '0.0281', '0.0234', '0.0288', '0.7478', '0.7229', '0.7006', '0.7478', '1.0232', '0.9906', '0.9906', '1.0681', '0.1141', '0.1113', '0.1095', '0.1141', '0.1181', '0.1156', '0.1073', '0.1181', '0.1414', '0.1431', '0.1328', '0.1457', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0202', '0.0200', '0.0220', '0.1261', '0.1229', '0.1211', '0.1271', '0.7098', '0.6953', '0.6437', '0.7219', '0.0735', '0.0750', '0.0695', '0.0750', '0.2401', '0.2201', '0.2201', '0.2524', '0.0179', '0.0171', '0.0171', '0.0192', '0.0006', '0.0009', '0.0001', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('61', '2017-04-14 10:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0560', '1.0659', '1.0342', '1.0793', '0.1305', '0.1273', '0.1248', '0.1305', '0.0092', '0.0091', '0.0089', '0.0094', '1.2755', '1.2739', '1.2453', '1.2755', '0.7535', '0.7598', '0.7348', '0.7750', '0.7353', '0.7482', '0.7353', '0.7705', '0.0293', '0.0285', '0.0281', '0.0294', '0.7015', '0.7004', '0.6960', '0.7320', '1.0017', '1.0080', '0.9687', '1.0080', '0.1088', '0.1107', '0.1088', '0.1138', '0.1156', '0.1131', '0.1131', '0.1196', '0.1400', '0.1412', '0.1400', '0.1469', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0201', '0.0205', '0.0195', '0.0205', '0.1259', '0.1250', '0.1241', '0.1277', '0.7144', '0.6821', '0.6810', '0.7144', '0.0762', '0.0762', '0.0749', '0.0763', '0.2326', '0.2207', '0.2207', '0.2329', '0.0171', '0.0171', '0.0170', '0.0179', '0.0008', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('62', '2017-04-14 10:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0455', '1.0822', '1.0455', '1.0898', '0.1324', '0.1280', '0.1248', '0.1324', '0.0091', '0.0094', '0.0090', '0.0094', '1.2791', '1.2530', '1.2223', '1.2894', '0.7598', '0.7582', '0.7396', '0.7598', '0.7642', '0.7744', '0.7538', '0.7744', '0.0294', '0.0289', '0.0283', '0.0297', '0.7302', '0.7177', '0.6986', '0.7311', '1.0028', '1.0111', '0.9727', '1.0111', '0.1091', '0.1103', '0.1091', '0.1128', '0.1149', '0.1148', '0.1132', '0.1193', '0.1394', '0.1409', '0.1394', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0197', '0.0207', '0.0197', '0.0208', '0.1240', '0.1222', '0.1222', '0.1279', '0.7175', '0.6983', '0.6931', '0.7183', '0.0739', '0.0732', '0.0732', '0.0758', '0.2313', '0.2249', '0.2217', '0.2313', '0.0180', '0.0175', '0.0174', '0.0181', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('63', '2017-04-14 10:19:39', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0380', '1.0380', '1.0924', '0.1283', '0.1294', '0.1259', '0.1302', '0.0094', '0.0092', '0.0090', '0.0094', '1.2698', '1.2499', '1.2463', '1.2751', '0.7615', '0.7707', '0.7338', '0.7707', '0.7599', '0.7547', '0.7463', '0.7715', '0.0287', '0.0291', '0.0287', '0.0298', '0.7035', '0.7155', '0.7035', '0.7334', '0.9879', '1.0237', '0.9879', '1.0237', '0.1133', '0.1140', '0.1101', '0.1140', '0.1184', '0.1172', '0.1139', '0.1200', '0.1429', '0.1433', '0.1399', '0.1468', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0202', '0.0196', '0.0208', '0.1277', '0.1281', '0.1219', '0.1281', '0.6955', '0.7176', '0.6864', '0.7176', '0.0758', '0.0731', '0.0731', '0.0758', '0.2295', '0.2287', '0.2203', '0.2312', '0.0170', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('64', '2017-04-14 10:35:03', '0.0000', '0.0000', '0.0000', '0.0000', '1.0647', '1.0793', '1.0526', '1.0895', '0.1288', '0.1323', '0.1247', '0.1323', '0.0092', '0.0093', '0.0089', '0.0093', '1.2228', '1.2578', '1.2228', '1.2818', '0.7364', '0.7552', '0.7364', '0.7762', '0.7444', '0.7754', '0.7335', '0.7754', '0.0291', '0.0285', '0.0283', '0.0292', '0.7055', '0.7075', '0.6933', '0.7187', '1.0041', '1.0082', '0.9850', '1.0181', '0.1085', '0.1085', '0.1085', '0.1115', '0.1188', '0.1141', '0.1135', '0.1188', '0.1414', '0.1455', '0.1389', '0.1455', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0205', '0.0196', '0.0207', '0.1223', '0.1281', '0.1213', '0.1281', '0.7088', '0.6772', '0.6772', '0.7184', '0.0723', '0.0759', '0.0723', '0.0759', '0.2323', '0.2312', '0.2219', '0.2323', '0.0171', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('65', '2017-04-14 10:36:40', '0.0000', '0.0000', '0.0000', '0.0000', '1.0895', '1.0337', '1.0337', '1.0895', '0.1319', '0.1288', '0.1255', '0.1319', '0.0090', '0.0094', '0.0089', '0.0094', '1.2591', '1.2919', '1.2304', '1.2919', '0.7558', '0.7659', '0.7504', '0.7732', '0.7388', '0.7663', '0.7388', '0.7663', '0.0292', '0.0298', '0.0281', '0.0298', '0.7014', '0.7036', '0.6948', '0.7151', '0.9818', '0.9986', '0.9698', '1.0243', '0.1111', '0.1125', '0.1081', '0.1125', '0.1170', '0.1149', '0.1149', '0.1176', '0.1466', '0.1467', '0.1425', '0.1467', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0197', '0.0196', '0.0208', '0.1251', '0.1272', '0.1226', '0.1272', '0.7129', '0.7050', '0.7050', '0.7163', '0.0746', '0.0760', '0.0732', '0.0760', '0.2251', '0.2276', '0.2210', '0.2325', '0.0175', '0.0170', '0.0170', '0.0178', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('66', '2017-04-14 10:36:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0441', '1.0420', '1.0420', '1.0965', '0.1317', '0.1307', '0.1265', '0.1317', '0.0094', '0.0092', '0.0091', '0.0094', '1.2711', '1.2501', '1.2321', '1.2914', '0.7695', '0.7696', '0.7436', '0.7727', '0.7406', '0.7359', '0.7359', '0.7768', '0.0286', '0.0287', '0.0283', '0.0287', '0.6983', '0.7196', '0.6970', '0.7312', '0.9798', '1.0226', '0.9737', '1.0226', '0.1086', '0.1087', '0.1086', '0.1142', '0.1144', '0.1202', '0.1144', '0.1202', '0.1421', '0.1446', '0.1398', '0.1446', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0202', '0.0196', '0.0196', '0.0208', '0.1249', '0.1234', '0.1221', '0.1270', '0.6838', '0.7044', '0.6838', '0.7132', '0.0758', '0.0744', '0.0737', '0.0763', '0.2309', '0.2308', '0.2251', '0.2309', '0.0178', '0.0177', '0.0173', '0.0180', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('67', '2017-04-14 10:37:10', '0.0000', '0.0000', '0.0000', '0.0000', '1.0731', '1.0464', '1.0403', '1.0731', '0.1273', '0.1311', '0.1247', '0.1319', '0.0093', '0.0091', '0.0089', '0.0094', '1.2598', '1.2916', '1.2235', '1.2916', '0.7604', '0.7436', '0.7333', '0.7776', '0.7544', '0.7463', '0.7433', '0.7709', '0.0284', '0.0296', '0.0284', '0.0296', '0.7341', '0.7023', '0.6939', '0.7358', '0.9972', '0.9950', '0.9702', '1.0196', '0.1111', '0.1097', '0.1085', '0.1143', '0.1179', '0.1202', '0.1149', '0.1202', '0.1394', '0.1394', '0.1390', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0195', '0.0208', '0.0195', '0.0208', '0.1251', '0.1252', '0.1223', '0.1285', '0.6954', '0.7019', '0.6819', '0.7133', '0.0723', '0.0744', '0.0723', '0.0758', '0.2242', '0.2204', '0.2204', '0.2322', '0.0177', '0.0180', '0.0170', '0.0180', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('68', '2017-04-14 11:03:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0380', '1.0938', '1.0380', '1.0966', '0.1267', '0.1279', '0.1265', '0.1316', '0.0089', '0.0093', '0.0089', '0.0094', '1.2731', '1.2747', '1.2344', '1.2884', '0.7747', '0.7448', '0.7366', '0.7758', '0.7651', '0.7767', '0.7351', '0.7767', '0.0286', '0.0284', '0.0282', '0.0298', '0.7248', '0.7190', '0.6946', '0.7248', '0.9688', '0.9874', '0.9688', '1.0173', '0.1112', '0.1102', '0.1083', '0.1145', '0.1181', '0.1153', '0.1144', '0.1201', '0.1446', '0.1464', '0.1397', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0204', '0.0195', '0.0208', '0.1219', '0.1281', '0.1215', '0.1281', '0.7020', '0.7042', '0.6781', '0.7046', '0.0721', '0.0756', '0.0721', '0.0765', '0.2239', '0.2313', '0.2239', '0.2329', '0.0179', '0.0174', '0.0172', '0.0181', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('69', '2017-04-14 11:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0907', '1.1347', '1.0907', '1.1425', '0.1324', '0.1218', '0.1218', '0.1351', '0.0090', '0.0092', '0.0086', '0.0092', '1.2715', '1.1747', '1.1747', '1.2715', '0.7726', '0.8141', '0.7418', '0.8141', '0.7556', '0.7776', '0.7103', '0.7776', '0.0281', '0.0291', '0.0281', '0.0295', '0.6952', '0.6831', '0.6639', '0.6952', '0.9775', '0.9134', '0.9031', '1.0105', '0.1088', '0.1206', '0.1088', '0.1220', '0.1169', '0.1095', '0.1095', '0.1169', '0.1443', '0.1206', '0.1206', '0.1443', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0196', '0.0185', '0.0181', '0.0199', '0.1256', '0.1229', '0.1215', '0.1266', '0.6982', '0.6909', '0.6879', '0.7136', '0.0754', '0.0813', '0.0751', '0.0813', '0.2214', '0.2018', '0.1943', '0.2214', '0.0176', '0.0166', '0.0166', '0.0180', '0.0008', '0.0002', '0.0002', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('70', '2017-04-14 11:15:16', '0.0000', '0.0000', '0.0000', '0.0000', '1.0622', '1.0390', '1.0270', '1.0932', '0.1260', '0.1255', '0.1225', '0.1280', '0.0089', '0.0086', '0.0086', '0.0094', '1.2774', '1.2594', '1.2486', '1.3478', '0.7490', '0.7659', '0.7106', '0.7864', '0.7504', '0.7022', '0.7022', '0.7516', '0.0287', '0.0288', '0.0285', '0.0298', '0.7052', '0.7178', '0.6669', '0.7244', '0.9836', '1.0379', '0.9713', '1.0534', '0.1115', '0.1127', '0.1091', '0.1127', '0.1156', '0.1135', '0.1126', '0.1184', '0.1463', '0.1426', '0.1390', '0.1463', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0200', '0.0216', '0.0198', '0.0216', '0.1215', '0.1202', '0.1202', '0.1266', '0.6866', '0.6982', '0.6853', '0.7167', '0.0751', '0.0701', '0.0701', '0.0797', '0.2250', '0.2250', '0.2169', '0.2335', '0.0180', '0.0181', '0.0178', '0.0185', '0.0008', '0.0006', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('71', '2017-04-14 11:28:06', '0.0000', '0.0000', '0.0000', '0.0000', '1.0505', '1.0981', '1.0332', '1.0981', '0.1283', '0.1320', '0.1258', '0.1348', '0.0087', '0.0091', '0.0087', '0.0097', '1.2553', '1.2090', '1.2090', '1.2893', '0.7607', '0.7579', '0.7528', '0.7976', '0.7177', '0.7650', '0.7076', '0.7650', '0.0279', '0.0288', '0.0273', '0.0307', '0.7136', '0.6888', '0.6888', '0.7691', '1.0225', '0.9727', '0.9727', '1.0802', '0.1129', '0.1112', '0.1076', '0.1129', '0.1126', '0.1148', '0.1126', '0.1198', '0.1443', '0.1373', '0.1373', '0.1487', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0210', '0.0193', '0.0183', '0.0210', '0.1206', '0.1276', '0.1206', '0.1332', '0.6902', '0.7166', '0.6717', '0.7173', '0.0694', '0.0768', '0.0685', '0.0819', '0.2214', '0.2301', '0.2164', '0.2301', '0.0186', '0.0172', '0.0172', '0.0188', '0.0006', '0.0008', '0.0004', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('72', '2017-04-15 08:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0799', '1.0808', '1.0283', '1.0808', '0.1299', '0.1303', '0.1275', '0.1377', '0.0091', '0.0088', '0.0077', '0.0091', '1.2083', '1.2370', '1.1901', '1.2657', '0.7599', '0.7595', '0.7220', '0.7777', '0.7565', '0.7492', '0.7103', '0.7685', '0.0296', '0.0290', '0.0286', '0.0304', '0.6990', '0.7135', '0.6372', '0.7254', '0.9894', '0.9625', '0.9562', '1.0262', '0.1122', '0.1085', '0.1082', '0.1243', '0.1180', '0.1214', '0.1145', '0.1214', '0.1373', '0.1428', '0.1344', '0.1428', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0188', '0.0196', '0.0188', '0.0205', '0.1278', '0.1313', '0.1183', '0.1313', '0.7110', '0.6763', '0.6763', '0.7440', '0.0763', '0.0713', '0.0713', '0.0764', '0.2235', '0.2270', '0.2188', '0.2328', '0.0167', '0.0174', '0.0165', '0.0180', '0.0007', '0.0008', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('73', '2017-04-15 10:37:23', '0.0000', '0.0000', '0.0000', '0.0000', '1.0746', '1.1239', '1.0424', '1.1239', '0.1283', '0.1206', '0.1163', '0.1283', '0.0093', '0.0084', '0.0081', '0.0093', '1.2733', '1.3600', '1.2733', '1.4113', '0.7387', '0.6613', '0.6613', '0.7387', '0.7469', '0.7171', '0.7036', '0.7683', '0.0287', '0.0272', '0.0270', '0.0288', '0.6950', '0.7276', '0.6867', '0.7468', '1.0056', '1.0330', '0.9675', '1.0330', '0.1132', '0.1184', '0.1093', '0.1184', '0.1154', '0.1156', '0.1154', '0.1216', '0.1412', '0.1367', '0.1301', '0.1412', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0208', '0.0215', '0.0201', '0.0215', '0.1277', '0.1265', '0.1200', '0.1301', '0.6922', '0.6507', '0.6310', '0.6967', '0.0733', '0.0783', '0.0717', '0.0783', '0.2251', '0.2040', '0.2040', '0.2310', '0.0178', '0.0167', '0.0163', '0.0180', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('74', '2017-04-15 10:38:08', '0.0000', '0.0000', '0.0000', '0.0000', '1.0945', '1.0938', '1.0402', '1.1075', '0.1226', '0.1282', '0.1180', '0.1282', '0.0084', '0.0089', '0.0083', '0.0089', '1.3934', '1.2623', '1.2623', '1.3962', '0.6561', '0.7491', '0.5965', '0.7491', '0.7187', '0.7614', '0.7056', '0.7618', '0.0275', '0.0285', '0.0258', '0.0285', '0.7126', '0.7005', '0.7005', '0.7565', '1.0379', '1.0076', '0.9865', '1.0530', '0.1210', '0.1134', '0.1134', '0.1240', '0.1178', '0.1182', '0.1145', '0.1202', '0.1332', '0.1393', '0.1182', '0.1393', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0212', '0.0195', '0.0195', '0.0223', '0.1272', '0.1258', '0.1244', '0.1338', '0.6326', '0.6837', '0.6326', '0.6837', '0.0763', '0.0745', '0.0745', '0.0811', '0.1990', '0.2331', '0.1990', '0.2331', '0.0164', '0.0178', '0.0151', '0.0178', '0.0005', '0.0009', '0.0000', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('75', '2017-04-15 10:39:02', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0790', '1.0330', '1.1024', '0.1314', '0.1258', '0.1246', '0.1314', '0.0089', '0.0081', '0.0081', '0.0090', '1.2358', '1.2896', '1.2090', '1.3402', '0.7552', '0.7451', '0.7261', '0.7634', '0.7522', '0.7403', '0.7063', '0.7627', '0.0284', '0.0295', '0.0259', '0.0300', '0.6846', '0.7548', '0.6674', '0.7548', '0.9897', '1.0359', '0.9783', '1.0427', '0.1141', '0.1070', '0.1061', '0.1141', '0.1192', '0.1141', '0.1125', '0.1192', '0.1408', '0.1426', '0.1385', '0.1438', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0189', '0.0207', '0.0178', '0.0207', '0.1289', '0.1309', '0.1240', '0.1336', '0.6965', '0.6620', '0.6620', '0.7034', '0.0742', '0.0708', '0.0708', '0.0759', '0.2309', '0.2313', '0.2214', '0.2514', '0.0179', '0.0179', '0.0170', '0.0185', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('76', '2017-04-15 10:39:38', '0.0000', '0.0000', '0.0000', '0.0000', '1.0875', '1.0773', '1.0704', '1.1295', '0.1267', '0.1260', '0.1114', '0.1273', '0.0083', '0.0092', '0.0071', '0.0093', '1.3229', '1.3075', '1.2711', '1.3337', '0.7354', '0.7741', '0.6533', '0.7741', '0.7214', '0.7771', '0.7091', '0.7771', '0.0302', '0.0296', '0.0274', '0.0302', '0.7637', '0.7124', '0.7124', '0.7709', '1.0226', '0.9869', '0.9490', '1.0226', '0.1079', '0.1121', '0.1073', '0.1172', '0.1148', '0.1135', '0.1135', '0.1202', '0.1446', '0.1495', '0.1342', '0.1495', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0198', '0.0195', '0.0211', '0.1336', '0.1244', '0.1244', '0.1361', '0.6434', '0.6893', '0.6252', '0.6893', '0.0695', '0.0753', '0.0656', '0.0766', '0.2308', '0.2356', '0.2131', '0.2356', '0.0184', '0.0175', '0.0174', '0.0192', '0.0004', '0.0008', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('77', '2017-04-15 10:40:09', '0.0000', '0.0000', '0.0000', '0.0000', '1.0580', '1.0973', '1.0580', '1.1184', '0.1288', '0.1369', '0.1274', '0.1402', '0.0092', '0.0088', '0.0087', '0.0092', '1.2733', '1.2537', '1.2149', '1.2809', '0.7886', '0.8492', '0.7596', '0.8492', '0.7933', '0.7250', '0.7250', '0.8078', '0.0300', '0.0319', '0.0300', '0.0325', '0.7109', '0.7573', '0.6997', '0.7642', '0.9691', '0.9580', '0.9580', '1.0099', '0.1138', '0.1180', '0.1138', '0.1193', '0.1150', '0.1180', '0.1125', '0.1216', '0.1532', '0.1491', '0.1465', '0.1532', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0194', '0.0179', '0.0179', '0.0194', '0.1225', '0.1322', '0.1225', '0.1322', '0.7003', '0.7099', '0.6840', '0.7542', '0.0761', '0.0819', '0.0740', '0.0819', '0.2326', '0.2082', '0.2064', '0.2326', '0.0175', '0.0156', '0.0156', '0.0177', '0.0008', '0.0003', '0.0003', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('78', '2017-04-15 10:40:41', '0.0000', '0.0000', '0.0000', '0.0000', '1.1280', '1.1413', '1.0870', '1.2011', '0.1380', '0.1250', '0.1246', '0.1416', '0.0086', '0.0086', '0.0086', '0.0091', '1.2805', '1.2362', '1.2109', '1.3245', '0.8468', '0.7706', '0.7501', '0.8717', '0.7038', '0.7401', '0.6923', '0.7401', '0.0314', '0.0293', '0.0293', '0.0314', '0.7579', '0.7472', '0.7278', '0.8230', '0.9609', '1.0003', '0.9369', '1.0162', '0.1187', '0.1110', '0.1105', '0.1187', '0.1151', '0.1178', '0.1131', '0.1205', '0.1456', '0.1424', '0.1360', '0.1456', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0175', '0.0201', '0.0175', '0.0204', '0.1336', '0.1248', '0.1213', '0.1405', '0.6995', '0.6990', '0.6326', '0.7202', '0.0841', '0.0731', '0.0725', '0.0841', '0.2054', '0.2337', '0.2014', '0.2376', '0.0155', '0.0174', '0.0141', '0.0176', '0.0002', '0.0007', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('79', '2017-04-15 10:41:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.1375', '1.0467', '1.0467', '1.1506', '0.1271', '0.1322', '0.1247', '0.1322', '0.0088', '0.0090', '0.0084', '0.0090', '1.2117', '1.2454', '1.1846', '1.3008', '0.7874', '0.7490', '0.7490', '0.8351', '0.7490', '0.7593', '0.7063', '0.7720', '0.0288', '0.0281', '0.0234', '0.0288', '0.7478', '0.7229', '0.7006', '0.7478', '1.0232', '0.9906', '0.9906', '1.0681', '0.1141', '0.1113', '0.1095', '0.1141', '0.1181', '0.1156', '0.1073', '0.1181', '0.1414', '0.1431', '0.1328', '0.1457', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0202', '0.0200', '0.0220', '0.1261', '0.1229', '0.1211', '0.1271', '0.7098', '0.6953', '0.6437', '0.7219', '0.0735', '0.0750', '0.0695', '0.0750', '0.2401', '0.2201', '0.2201', '0.2524', '0.0179', '0.0171', '0.0171', '0.0192', '0.0006', '0.0009', '0.0001', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('80', '2017-04-14 10:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0560', '1.0659', '1.0342', '1.0793', '0.1305', '0.1273', '0.1248', '0.1305', '0.0092', '0.0091', '0.0089', '0.0094', '1.2755', '1.2739', '1.2453', '1.2755', '0.7535', '0.7598', '0.7348', '0.7750', '0.7353', '0.7482', '0.7353', '0.7705', '0.0293', '0.0285', '0.0281', '0.0294', '0.7015', '0.7004', '0.6960', '0.7320', '1.0017', '1.0080', '0.9687', '1.0080', '0.1088', '0.1107', '0.1088', '0.1138', '0.1156', '0.1131', '0.1131', '0.1196', '0.1400', '0.1412', '0.1400', '0.1469', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0201', '0.0205', '0.0195', '0.0205', '0.1259', '0.1250', '0.1241', '0.1277', '0.7144', '0.6821', '0.6810', '0.7144', '0.0762', '0.0762', '0.0749', '0.0763', '0.2326', '0.2207', '0.2207', '0.2329', '0.0171', '0.0171', '0.0170', '0.0179', '0.0008', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('81', '2017-04-14 10:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0455', '1.0822', '1.0455', '1.0898', '0.1324', '0.1280', '0.1248', '0.1324', '0.0091', '0.0094', '0.0090', '0.0094', '1.2791', '1.2530', '1.2223', '1.2894', '0.7598', '0.7582', '0.7396', '0.7598', '0.7642', '0.7744', '0.7538', '0.7744', '0.0294', '0.0289', '0.0283', '0.0297', '0.7302', '0.7177', '0.6986', '0.7311', '1.0028', '1.0111', '0.9727', '1.0111', '0.1091', '0.1103', '0.1091', '0.1128', '0.1149', '0.1148', '0.1132', '0.1193', '0.1394', '0.1409', '0.1394', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0197', '0.0207', '0.0197', '0.0208', '0.1240', '0.1222', '0.1222', '0.1279', '0.7175', '0.6983', '0.6931', '0.7183', '0.0739', '0.0732', '0.0732', '0.0758', '0.2313', '0.2249', '0.2217', '0.2313', '0.0180', '0.0175', '0.0174', '0.0181', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('82', '2017-04-14 10:19:39', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0380', '1.0380', '1.0924', '0.1283', '0.1294', '0.1259', '0.1302', '0.0094', '0.0092', '0.0090', '0.0094', '1.2698', '1.2499', '1.2463', '1.2751', '0.7615', '0.7707', '0.7338', '0.7707', '0.7599', '0.7547', '0.7463', '0.7715', '0.0287', '0.0291', '0.0287', '0.0298', '0.7035', '0.7155', '0.7035', '0.7334', '0.9879', '1.0237', '0.9879', '1.0237', '0.1133', '0.1140', '0.1101', '0.1140', '0.1184', '0.1172', '0.1139', '0.1200', '0.1429', '0.1433', '0.1399', '0.1468', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0202', '0.0196', '0.0208', '0.1277', '0.1281', '0.1219', '0.1281', '0.6955', '0.7176', '0.6864', '0.7176', '0.0758', '0.0731', '0.0731', '0.0758', '0.2295', '0.2287', '0.2203', '0.2312', '0.0170', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('83', '2017-04-14 10:35:03', '0.0000', '0.0000', '0.0000', '0.0000', '1.0647', '1.0793', '1.0526', '1.0895', '0.1288', '0.1323', '0.1247', '0.1323', '0.0092', '0.0093', '0.0089', '0.0093', '1.2228', '1.2578', '1.2228', '1.2818', '0.7364', '0.7552', '0.7364', '0.7762', '0.7444', '0.7754', '0.7335', '0.7754', '0.0291', '0.0285', '0.0283', '0.0292', '0.7055', '0.7075', '0.6933', '0.7187', '1.0041', '1.0082', '0.9850', '1.0181', '0.1085', '0.1085', '0.1085', '0.1115', '0.1188', '0.1141', '0.1135', '0.1188', '0.1414', '0.1455', '0.1389', '0.1455', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0205', '0.0196', '0.0207', '0.1223', '0.1281', '0.1213', '0.1281', '0.7088', '0.6772', '0.6772', '0.7184', '0.0723', '0.0759', '0.0723', '0.0759', '0.2323', '0.2312', '0.2219', '0.2323', '0.0171', '0.0175', '0.0170', '0.0181', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('84', '2017-04-14 10:36:40', '0.0000', '0.0000', '0.0000', '0.0000', '1.0895', '1.0337', '1.0337', '1.0895', '0.1319', '0.1288', '0.1255', '0.1319', '0.0090', '0.0094', '0.0089', '0.0094', '1.2591', '1.2919', '1.2304', '1.2919', '0.7558', '0.7659', '0.7504', '0.7732', '0.7388', '0.7663', '0.7388', '0.7663', '0.0292', '0.0298', '0.0281', '0.0298', '0.7014', '0.7036', '0.6948', '0.7151', '0.9818', '0.9986', '0.9698', '1.0243', '0.1111', '0.1125', '0.1081', '0.1125', '0.1170', '0.1149', '0.1149', '0.1176', '0.1466', '0.1467', '0.1425', '0.1467', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0198', '0.0197', '0.0196', '0.0208', '0.1251', '0.1272', '0.1226', '0.1272', '0.7129', '0.7050', '0.7050', '0.7163', '0.0746', '0.0760', '0.0732', '0.0760', '0.2251', '0.2276', '0.2210', '0.2325', '0.0175', '0.0170', '0.0170', '0.0178', '0.0009', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('85', '2017-04-14 10:36:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0441', '1.0420', '1.0420', '1.0965', '0.1317', '0.1307', '0.1265', '0.1317', '0.0094', '0.0092', '0.0091', '0.0094', '1.2711', '1.2501', '1.2321', '1.2914', '0.7695', '0.7696', '0.7436', '0.7727', '0.7406', '0.7359', '0.7359', '0.7768', '0.0286', '0.0287', '0.0283', '0.0287', '0.6983', '0.7196', '0.6970', '0.7312', '0.9798', '1.0226', '0.9737', '1.0226', '0.1086', '0.1087', '0.1086', '0.1142', '0.1144', '0.1202', '0.1144', '0.1202', '0.1421', '0.1446', '0.1398', '0.1446', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0202', '0.0196', '0.0196', '0.0208', '0.1249', '0.1234', '0.1221', '0.1270', '0.6838', '0.7044', '0.6838', '0.7132', '0.0758', '0.0744', '0.0737', '0.0763', '0.2309', '0.2308', '0.2251', '0.2309', '0.0178', '0.0177', '0.0173', '0.0180', '0.0008', '0.0009', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('86', '2017-04-14 10:37:10', '0.0000', '0.0000', '0.0000', '0.0000', '1.0731', '1.0464', '1.0403', '1.0731', '0.1273', '0.1311', '0.1247', '0.1319', '0.0093', '0.0091', '0.0089', '0.0094', '1.2598', '1.2916', '1.2235', '1.2916', '0.7604', '0.7436', '0.7333', '0.7776', '0.7544', '0.7463', '0.7433', '0.7709', '0.0284', '0.0296', '0.0284', '0.0296', '0.7341', '0.7023', '0.6939', '0.7358', '0.9972', '0.9950', '0.9702', '1.0196', '0.1111', '0.1097', '0.1085', '0.1143', '0.1179', '0.1202', '0.1149', '0.1202', '0.1394', '0.1394', '0.1390', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0195', '0.0208', '0.0195', '0.0208', '0.1251', '0.1252', '0.1223', '0.1285', '0.6954', '0.7019', '0.6819', '0.7133', '0.0723', '0.0744', '0.0723', '0.0758', '0.2242', '0.2204', '0.2204', '0.2322', '0.0177', '0.0180', '0.0170', '0.0180', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('87', '2017-04-14 11:03:55', '0.0000', '0.0000', '0.0000', '0.0000', '1.0380', '1.0938', '1.0380', '1.0966', '0.1267', '0.1279', '0.1265', '0.1316', '0.0089', '0.0093', '0.0089', '0.0094', '1.2731', '1.2747', '1.2344', '1.2884', '0.7747', '0.7448', '0.7366', '0.7758', '0.7651', '0.7767', '0.7351', '0.7767', '0.0286', '0.0284', '0.0282', '0.0298', '0.7248', '0.7190', '0.6946', '0.7248', '0.9688', '0.9874', '0.9688', '1.0173', '0.1112', '0.1102', '0.1083', '0.1145', '0.1181', '0.1153', '0.1144', '0.1201', '0.1446', '0.1464', '0.1397', '0.1464', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0204', '0.0195', '0.0208', '0.1219', '0.1281', '0.1215', '0.1281', '0.7020', '0.7042', '0.6781', '0.7046', '0.0721', '0.0756', '0.0721', '0.0765', '0.2239', '0.2313', '0.2239', '0.2329', '0.0179', '0.0174', '0.0172', '0.0181', '0.0009', '0.0008', '0.0008', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('88', '2017-04-14 11:11:29', '0.0000', '0.0000', '0.0000', '0.0000', '1.0907', '1.1347', '1.0907', '1.1425', '0.1324', '0.1218', '0.1218', '0.1351', '0.0090', '0.0092', '0.0086', '0.0092', '1.2715', '1.1747', '1.1747', '1.2715', '0.7726', '0.8141', '0.7418', '0.8141', '0.7556', '0.7776', '0.7103', '0.7776', '0.0281', '0.0291', '0.0281', '0.0295', '0.6952', '0.6831', '0.6639', '0.6952', '0.9775', '0.9134', '0.9031', '1.0105', '0.1088', '0.1206', '0.1088', '0.1220', '0.1169', '0.1095', '0.1095', '0.1169', '0.1443', '0.1206', '0.1206', '0.1443', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0196', '0.0185', '0.0181', '0.0199', '0.1256', '0.1229', '0.1215', '0.1266', '0.6982', '0.6909', '0.6879', '0.7136', '0.0754', '0.0813', '0.0751', '0.0813', '0.2214', '0.2018', '0.1943', '0.2214', '0.0176', '0.0166', '0.0166', '0.0180', '0.0008', '0.0002', '0.0002', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('89', '2017-04-14 11:15:16', '0.0000', '0.0000', '0.0000', '0.0000', '1.0622', '1.0390', '1.0270', '1.0932', '0.1260', '0.1255', '0.1225', '0.1280', '0.0089', '0.0086', '0.0086', '0.0094', '1.2774', '1.2594', '1.2486', '1.3478', '0.7490', '0.7659', '0.7106', '0.7864', '0.7504', '0.7022', '0.7022', '0.7516', '0.0287', '0.0288', '0.0285', '0.0298', '0.7052', '0.7178', '0.6669', '0.7244', '0.9836', '1.0379', '0.9713', '1.0534', '0.1115', '0.1127', '0.1091', '0.1127', '0.1156', '0.1135', '0.1126', '0.1184', '0.1463', '0.1426', '0.1390', '0.1463', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0200', '0.0216', '0.0198', '0.0216', '0.1215', '0.1202', '0.1202', '0.1266', '0.6866', '0.6982', '0.6853', '0.7167', '0.0751', '0.0701', '0.0701', '0.0797', '0.2250', '0.2250', '0.2169', '0.2335', '0.0180', '0.0181', '0.0178', '0.0185', '0.0008', '0.0006', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('90', '2017-04-14 11:28:06', '0.0000', '0.0000', '0.0000', '0.0000', '1.0505', '1.0981', '1.0332', '1.0981', '0.1283', '0.1320', '0.1258', '0.1348', '0.0087', '0.0091', '0.0087', '0.0097', '1.2553', '1.2090', '1.2090', '1.2893', '0.7607', '0.7579', '0.7528', '0.7976', '0.7177', '0.7650', '0.7076', '0.7650', '0.0279', '0.0288', '0.0273', '0.0307', '0.7136', '0.6888', '0.6888', '0.7691', '1.0225', '0.9727', '0.9727', '1.0802', '0.1129', '0.1112', '0.1076', '0.1129', '0.1126', '0.1148', '0.1126', '0.1198', '0.1443', '0.1373', '0.1373', '0.1487', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0210', '0.0193', '0.0183', '0.0210', '0.1206', '0.1276', '0.1206', '0.1332', '0.6902', '0.7166', '0.6717', '0.7173', '0.0694', '0.0768', '0.0685', '0.0819', '0.2214', '0.2301', '0.2164', '0.2301', '0.0186', '0.0172', '0.0172', '0.0188', '0.0006', '0.0008', '0.0004', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('91', '2017-04-15 08:15:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0799', '1.0808', '1.0283', '1.0808', '0.1299', '0.1303', '0.1275', '0.1377', '0.0091', '0.0088', '0.0077', '0.0091', '1.2083', '1.2370', '1.1901', '1.2657', '0.7599', '0.7595', '0.7220', '0.7777', '0.7565', '0.7492', '0.7103', '0.7685', '0.0296', '0.0290', '0.0286', '0.0304', '0.6990', '0.7135', '0.6372', '0.7254', '0.9894', '0.9625', '0.9562', '1.0262', '0.1122', '0.1085', '0.1082', '0.1243', '0.1180', '0.1214', '0.1145', '0.1214', '0.1373', '0.1428', '0.1344', '0.1428', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0188', '0.0196', '0.0188', '0.0205', '0.1278', '0.1313', '0.1183', '0.1313', '0.7110', '0.6763', '0.6763', '0.7440', '0.0763', '0.0713', '0.0713', '0.0764', '0.2235', '0.2270', '0.2188', '0.2328', '0.0167', '0.0174', '0.0165', '0.0180', '0.0007', '0.0008', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('92', '2017-04-15 10:37:23', '0.0000', '0.0000', '0.0000', '0.0000', '1.0746', '1.1239', '1.0424', '1.1239', '0.1283', '0.1206', '0.1163', '0.1283', '0.0093', '0.0084', '0.0081', '0.0093', '1.2733', '1.3600', '1.2733', '1.4113', '0.7387', '0.6613', '0.6613', '0.7387', '0.7469', '0.7171', '0.7036', '0.7683', '0.0287', '0.0272', '0.0270', '0.0288', '0.6950', '0.7276', '0.6867', '0.7468', '1.0056', '1.0330', '0.9675', '1.0330', '0.1132', '0.1184', '0.1093', '0.1184', '0.1154', '0.1156', '0.1154', '0.1216', '0.1412', '0.1367', '0.1301', '0.1412', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0208', '0.0215', '0.0201', '0.0215', '0.1277', '0.1265', '0.1200', '0.1301', '0.6922', '0.6507', '0.6310', '0.6967', '0.0733', '0.0783', '0.0717', '0.0783', '0.2251', '0.2040', '0.2040', '0.2310', '0.0178', '0.0167', '0.0163', '0.0180', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('93', '2017-04-15 10:38:08', '0.0000', '0.0000', '0.0000', '0.0000', '1.0945', '1.0938', '1.0402', '1.1075', '0.1226', '0.1282', '0.1180', '0.1282', '0.0084', '0.0089', '0.0083', '0.0089', '1.3934', '1.2623', '1.2623', '1.3962', '0.6561', '0.7491', '0.5965', '0.7491', '0.7187', '0.7614', '0.7056', '0.7618', '0.0275', '0.0285', '0.0258', '0.0285', '0.7126', '0.7005', '0.7005', '0.7565', '1.0379', '1.0076', '0.9865', '1.0530', '0.1210', '0.1134', '0.1134', '0.1240', '0.1178', '0.1182', '0.1145', '0.1202', '0.1332', '0.1393', '0.1182', '0.1393', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0212', '0.0195', '0.0195', '0.0223', '0.1272', '0.1258', '0.1244', '0.1338', '0.6326', '0.6837', '0.6326', '0.6837', '0.0763', '0.0745', '0.0745', '0.0811', '0.1990', '0.2331', '0.1990', '0.2331', '0.0164', '0.0178', '0.0151', '0.0178', '0.0005', '0.0009', '0.0000', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('94', '2017-04-15 10:39:02', '0.0000', '0.0000', '0.0000', '0.0000', '1.0924', '1.0790', '1.0330', '1.1024', '0.1314', '0.1258', '0.1246', '0.1314', '0.0089', '0.0081', '0.0081', '0.0090', '1.2358', '1.2896', '1.2090', '1.3402', '0.7552', '0.7451', '0.7261', '0.7634', '0.7522', '0.7403', '0.7063', '0.7627', '0.0284', '0.0295', '0.0259', '0.0300', '0.6846', '0.7548', '0.6674', '0.7548', '0.9897', '1.0359', '0.9783', '1.0427', '0.1141', '0.1070', '0.1061', '0.1141', '0.1192', '0.1141', '0.1125', '0.1192', '0.1408', '0.1426', '0.1385', '0.1438', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0189', '0.0207', '0.0178', '0.0207', '0.1289', '0.1309', '0.1240', '0.1336', '0.6965', '0.6620', '0.6620', '0.7034', '0.0742', '0.0708', '0.0708', '0.0759', '0.2309', '0.2313', '0.2214', '0.2514', '0.0179', '0.0179', '0.0170', '0.0185', '0.0009', '0.0005', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('95', '2017-04-15 10:39:38', '0.0000', '0.0000', '0.0000', '0.0000', '1.0875', '1.0773', '1.0704', '1.1295', '0.1267', '0.1260', '0.1114', '0.1273', '0.0083', '0.0092', '0.0071', '0.0093', '1.3229', '1.3075', '1.2711', '1.3337', '0.7354', '0.7741', '0.6533', '0.7741', '0.7214', '0.7771', '0.7091', '0.7771', '0.0302', '0.0296', '0.0274', '0.0302', '0.7637', '0.7124', '0.7124', '0.7709', '1.0226', '0.9869', '0.9490', '1.0226', '0.1079', '0.1121', '0.1073', '0.1172', '0.1148', '0.1135', '0.1135', '0.1202', '0.1446', '0.1495', '0.1342', '0.1495', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0207', '0.0198', '0.0195', '0.0211', '0.1336', '0.1244', '0.1244', '0.1361', '0.6434', '0.6893', '0.6252', '0.6893', '0.0695', '0.0753', '0.0656', '0.0766', '0.2308', '0.2356', '0.2131', '0.2356', '0.0184', '0.0175', '0.0174', '0.0192', '0.0004', '0.0008', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('96', '2017-04-15 10:40:09', '0.0000', '0.0000', '0.0000', '0.0000', '1.0580', '1.0973', '1.0580', '1.1184', '0.1288', '0.1369', '0.1274', '0.1402', '0.0092', '0.0088', '0.0087', '0.0092', '1.2733', '1.2537', '1.2149', '1.2809', '0.7886', '0.8492', '0.7596', '0.8492', '0.7933', '0.7250', '0.7250', '0.8078', '0.0300', '0.0319', '0.0300', '0.0325', '0.7109', '0.7573', '0.6997', '0.7642', '0.9691', '0.9580', '0.9580', '1.0099', '0.1138', '0.1180', '0.1138', '0.1193', '0.1150', '0.1180', '0.1125', '0.1216', '0.1532', '0.1491', '0.1465', '0.1532', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0194', '0.0179', '0.0179', '0.0194', '0.1225', '0.1322', '0.1225', '0.1322', '0.7003', '0.7099', '0.6840', '0.7542', '0.0761', '0.0819', '0.0740', '0.0819', '0.2326', '0.2082', '0.2064', '0.2326', '0.0175', '0.0156', '0.0156', '0.0177', '0.0008', '0.0003', '0.0003', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('97', '2017-04-15 10:40:41', '0.0000', '0.0000', '0.0000', '0.0000', '1.1280', '1.1413', '1.0870', '1.2011', '0.1380', '0.1250', '0.1246', '0.1416', '0.0086', '0.0086', '0.0086', '0.0091', '1.2805', '1.2362', '1.2109', '1.3245', '0.8468', '0.7706', '0.7501', '0.8717', '0.7038', '0.7401', '0.6923', '0.7401', '0.0314', '0.0293', '0.0293', '0.0314', '0.7579', '0.7472', '0.7278', '0.8230', '0.9609', '1.0003', '0.9369', '1.0162', '0.1187', '0.1110', '0.1105', '0.1187', '0.1151', '0.1178', '0.1131', '0.1205', '0.1456', '0.1424', '0.1360', '0.1456', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0175', '0.0201', '0.0175', '0.0204', '0.1336', '0.1248', '0.1213', '0.1405', '0.6995', '0.6990', '0.6326', '0.7202', '0.0841', '0.0731', '0.0725', '0.0841', '0.2054', '0.2337', '0.2014', '0.2376', '0.0155', '0.0174', '0.0141', '0.0176', '0.0002', '0.0007', '0.0000', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('98', '2017-04-15 10:41:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.1375', '1.0467', '1.0467', '1.1506', '0.1271', '0.1322', '0.1247', '0.1322', '0.0088', '0.0090', '0.0084', '0.0090', '1.2117', '1.2454', '1.1846', '1.3008', '0.7874', '0.7490', '0.7490', '0.8351', '0.7490', '0.7593', '0.7063', '0.7720', '0.0288', '0.0281', '0.0234', '0.0288', '0.7478', '0.7229', '0.7006', '0.7478', '1.0232', '0.9906', '0.9906', '1.0681', '0.1141', '0.1113', '0.1095', '0.1141', '0.1181', '0.1156', '0.1073', '0.1181', '0.1414', '0.1431', '0.1328', '0.1457', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0202', '0.0200', '0.0220', '0.1261', '0.1229', '0.1211', '0.1271', '0.7098', '0.6953', '0.6437', '0.7219', '0.0735', '0.0750', '0.0695', '0.0750', '0.2401', '0.2201', '0.2201', '0.2524', '0.0179', '0.0171', '0.0171', '0.0192', '0.0006', '0.0009', '0.0001', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('99', '2017-04-15 14:35:31', '0.0000', '0.0000', '0.0000', '0.0000', '1.0633', '1.0313', '0.9925', '1.0697', '0.1287', '0.1279', '0.1220', '0.1324', '0.0088', '0.0089', '0.0082', '0.0089', '1.2404', '1.2258', '1.2175', '1.3041', '0.7568', '0.7594', '0.7323', '0.8021', '0.7374', '0.7422', '0.7374', '0.8458', '0.0283', '0.0292', '0.0253', '0.0292', '0.7309', '0.6959', '0.6959', '0.7627', '0.9781', '0.9663', '0.9563', '1.0328', '0.1096', '0.1094', '0.1045', '0.1114', '0.1156', '0.1149', '0.1110', '0.1162', '0.1410', '0.1448', '0.1303', '0.1448', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0205', '0.0198', '0.0198', '0.0209', '0.1223', '0.1220', '0.1162', '0.1226', '0.7115', '0.7166', '0.6898', '0.7193', '0.0751', '0.0738', '0.0738', '0.0838', '0.2258', '0.2281', '0.2171', '0.2281', '0.0170', '0.0176', '0.0154', '0.0176', '0.0009', '0.0009', '0.0002', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('100', '2017-04-15 14:45:58', '0.0000', '0.0000', '0.0000', '0.0000', '1.0562', '1.0530', '1.0361', '1.1074', '0.1261', '0.1277', '0.1180', '0.1334', '0.0090', '0.0088', '0.0088', '0.0099', '1.2873', '1.2152', '1.2062', '1.2873', '0.7381', '0.7852', '0.7091', '0.8017', '0.7554', '0.7304', '0.7304', '0.7889', '0.0285', '0.0278', '0.0276', '0.0292', '0.7252', '0.6570', '0.6570', '0.7423', '0.9686', '0.9855', '0.9587', '1.0026', '0.1083', '0.1132', '0.1083', '0.1139', '0.1191', '0.1109', '0.1109', '0.1191', '0.1449', '0.1424', '0.1391', '0.1461', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0195', '0.0209', '0.0195', '0.0221', '0.1223', '0.1209', '0.1209', '0.1279', '0.6817', '0.7008', '0.6710', '0.7104', '0.0722', '0.0738', '0.0722', '0.0768', '0.2213', '0.2384', '0.2143', '0.2397', '0.0174', '0.0179', '0.0174', '0.0186', '0.0008', '0.0009', '0.0007', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('101', '2017-04-15 14:48:21', '0.0000', '0.0000', '0.0000', '0.0000', '1.0758', '1.1254', '1.0579', '1.1254', '0.1273', '0.1262', '0.1261', '0.1318', '0.0089', '0.0093', '0.0087', '0.0093', '1.2438', '1.2268', '1.1825', '1.2731', '0.7566', '0.7579', '0.7375', '0.7702', '0.7287', '0.7896', '0.7287', '0.7896', '0.0298', '0.0298', '0.0290', '0.0305', '0.6940', '0.7177', '0.6750', '0.7439', '1.0182', '1.0045', '0.8894', '1.0350', '0.1112', '0.1198', '0.1036', '0.1198', '0.1193', '0.1188', '0.1133', '0.1241', '0.1407', '0.1419', '0.1364', '0.1475', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0201', '0.0192', '0.0192', '0.0204', '0.1226', '0.1190', '0.1190', '0.1286', '0.6986', '0.7218', '0.6930', '0.7218', '0.0753', '0.0741', '0.0709', '0.0771', '0.2317', '0.2186', '0.2186', '0.2320', '0.0174', '0.0167', '0.0165', '0.0174', '0.0008', '0.0007', '0.0006', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('102', '2017-04-15 15:32:31', '0.0000', '0.0000', '0.0000', '0.0000', '1.0966', '1.0814', '1.0325', '1.0985', '0.1291', '0.1306', '0.1260', '0.1350', '0.0092', '0.0094', '0.0086', '0.0094', '1.2495', '1.2687', '1.2134', '1.3124', '0.7514', '0.7553', '0.7157', '0.7813', '0.7801', '0.7312', '0.6923', '0.7801', '0.0295', '0.0288', '0.0276', '0.0303', '0.7034', '0.7320', '0.6965', '0.7328', '1.0166', '0.9962', '0.9200', '1.0166', '0.1184', '0.1112', '0.1058', '0.1184', '0.1199', '0.1141', '0.1067', '0.1221', '0.1418', '0.1444', '0.1383', '0.1514', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0186', '0.0203', '0.0186', '0.0206', '0.1190', '0.1276', '0.1187', '0.1282', '0.7268', '0.6920', '0.6231', '0.7268', '0.0761', '0.0742', '0.0725', '0.0805', '0.2123', '0.2219', '0.2123', '0.2382', '0.0168', '0.0174', '0.0166', '0.0181', '0.0007', '0.0008', '0.0004', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('103', '2017-04-15 15:48:06', '0.0000', '0.0000', '0.0000', '0.0000', '1.0452', '1.0683', '1.0347', '1.0892', '0.1315', '0.1239', '0.1239', '0.1371', '0.0094', '0.0087', '0.0087', '0.0095', '1.2533', '1.2286', '1.1973', '1.3016', '0.7566', '0.7484', '0.7130', '0.7738', '0.7607', '0.7544', '0.6907', '0.7859', '0.0290', '0.0275', '0.0274', '0.0303', '0.7232', '0.7300', '0.6705', '0.7805', '1.0213', '0.9679', '0.9181', '1.0361', '0.1116', '0.1104', '0.1052', '0.1181', '0.1136', '0.1085', '0.1085', '0.1208', '0.1447', '0.1340', '0.1305', '0.1475', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0204', '0.0198', '0.0186', '0.0212', '0.1214', '0.1254', '0.1189', '0.1270', '0.7024', '0.7434', '0.6501', '0.7962', '0.0723', '0.0721', '0.0699', '0.0766', '0.2278', '0.2124', '0.2124', '0.2514', '0.0181', '0.0166', '0.0166', '0.0183', '0.0008', '0.0007', '0.0005', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('104', '2017-04-15 15:51:56', '0.0000', '0.0000', '0.0000', '0.0000', '1.0815', '1.0560', '1.0352', '1.1257', '0.1266', '0.1308', '0.1249', '0.1357', '0.0087', '0.0092', '0.0078', '0.0092', '1.2392', '1.2745', '1.0894', '1.2745', '0.7412', '0.7746', '0.7327', '0.7746', '0.7501', '0.7518', '0.6862', '0.7750', '0.0277', '0.0292', '0.0264', '0.0292', '0.7181', '0.7104', '0.6240', '0.7181', '0.9705', '0.9834', '0.9628', '1.0903', '0.1131', '0.1088', '0.1088', '0.1268', '0.1082', '0.1174', '0.1060', '0.1187', '0.1355', '0.1400', '0.1204', '0.1427', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0192', '0.0199', '0.0156', '0.0199', '0.1237', '0.1271', '0.1136', '0.1322', '0.7426', '0.6991', '0.6939', '0.7426', '0.0722', '0.0725', '0.0659', '0.0766', '0.2074', '0.2329', '0.1940', '0.2329', '0.0170', '0.0177', '0.0169', '0.0182', '0.0007', '0.0009', '0.0000', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('105', '2017-04-15 16:23:38', '0.0000', '0.0000', '0.0000', '0.0000', '1.0548', '1.0127', '1.0127', '1.1219', '0.1280', '0.1392', '0.1272', '0.1392', '0.0092', '0.0085', '0.0084', '0.0094', '1.2393', '1.1038', '1.1038', '1.2795', '0.7530', '0.8543', '0.7499', '0.8543', '0.7552', '0.7559', '0.7160', '0.7559', '0.0298', '0.0283', '0.0279', '0.0306', '0.7021', '0.7171', '0.6723', '0.7171', '0.9624', '0.9137', '0.8884', '0.9668', '0.1071', '0.1128', '0.1051', '0.1194', '0.1152', '0.1106', '0.1061', '0.1156', '0.1410', '0.1525', '0.1367', '0.1525', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0200', '0.0157', '0.0157', '0.0209', '0.1286', '0.1210', '0.1151', '0.1286', '0.6862', '0.6406', '0.6406', '0.7386', '0.0742', '0.0741', '0.0668', '0.0742', '0.2356', '0.2068', '0.2009', '0.2356', '0.0181', '0.0166', '0.0163', '0.0182', '0.0009', '0.0001', '0.0001', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('106', '2017-04-15 16:35:36', '0.0000', '0.0000', '0.0000', '0.0000', '1.0365', '1.0225', '1.0225', '1.0848', '0.1392', '0.1283', '0.1230', '0.1461', '0.0085', '0.0076', '0.0076', '0.0091', '1.0899', '1.1946', '1.0899', '1.2635', '0.8734', '0.7839', '0.7164', '0.8734', '0.7477', '0.7232', '0.7054', '0.7717', '0.0274', '0.0295', '0.0271', '0.0300', '0.7249', '0.7748', '0.6941', '0.7827', '0.9303', '0.9639', '0.9303', '0.9850', '0.1149', '0.1199', '0.1094', '0.1212', '0.1101', '0.1103', '0.1099', '0.1177', '0.1500', '0.1384', '0.1308', '0.1595', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0155', '0.0190', '0.0155', '0.0208', '0.1185', '0.1298', '0.1185', '0.1330', '0.6229', '0.7285', '0.6229', '0.7456', '0.0759', '0.0700', '0.0695', '0.0767', '0.2093', '0.2520', '0.2093', '0.2543', '0.0163', '0.0170', '0.0163', '0.0180', '0.0001', '0.0003', '0.0001', '0.0008');
INSERT INTO `fx_forex_record` VALUES ('107', '2017-04-15 16:43:33', '0.0000', '0.0000', '0.0000', '0.0000', '1.0283', '1.0067', '0.9970', '1.0731', '0.1318', '0.1289', '0.1257', '0.1386', '0.0074', '0.0090', '0.0062', '0.0094', '1.1904', '1.3128', '1.1720', '1.3216', '0.8044', '0.6821', '0.6821', '0.8629', '0.7338', '0.7073', '0.7073', '0.8120', '0.0300', '0.0273', '0.0273', '0.0361', '0.7733', '0.7305', '0.7006', '0.8441', '0.9846', '1.0446', '0.9521', '1.0446', '0.1176', '0.1089', '0.1077', '0.1195', '0.1115', '0.1179', '0.1059', '0.1198', '0.1358', '0.1398', '0.1317', '0.1445', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0187', '0.0182', '0.0181', '0.0209', '0.1295', '0.1121', '0.1121', '0.1366', '0.7216', '0.7081', '0.6812', '0.7484', '0.0693', '0.0827', '0.0616', '0.0827', '0.2506', '0.2196', '0.2196', '0.2666', '0.0167', '0.0185', '0.0159', '0.0187', '0.0002', '0.0006', '0.0000', '0.0009');
INSERT INTO `fx_forex_record` VALUES ('108', '2017-04-15 18:06:11', '0.0000', '0.0000', '0.0000', '0.0000', '1.0526', '1.0563', '1.0154', '1.0854', '0.1265', '0.1372', '0.1232', '0.1372', '0.0093', '0.0081', '0.0080', '0.0095', '1.2644', '1.1704', '1.1140', '1.2644', '0.7619', '0.7698', '0.7145', '0.7698', '0.7407', '0.7412', '0.7157', '0.7646', '0.0281', '0.0265', '0.0265', '0.0299', '0.7043', '0.7568', '0.6936', '0.7642', '0.9755', '1.1013', '0.9755', '1.1265', '0.1083', '0.1108', '0.1054', '0.1149', '0.1171', '0.1089', '0.1089', '0.1191', '0.1462', '0.1401', '0.1376', '0.1473', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0199', '0.0208', '0.0193', '0.0208', '0.1265', '0.1388', '0.1253', '0.1403', '0.7188', '0.6529', '0.6447', '0.7188', '0.0738', '0.0753', '0.0723', '0.0765', '0.2318', '0.2095', '0.2071', '0.2412', '0.0180', '0.0187', '0.0168', '0.0187', '0.0008', '0.0000', '0.0000', '0.0009');

-- ----------------------------
-- Table structure for fx_get_position
-- ----------------------------
DROP TABLE IF EXISTS `fx_get_position`;
CREATE TABLE `fx_get_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `curr_id` int(4) unsigned NOT NULL,
  `curr_position` varchar(8) NOT NULL,
  `get_id` int(4) unsigned NOT NULL,
  `get_position` varchar(8) NOT NULL,
  `get_time` varchar(64) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_get_position
-- ----------------------------
INSERT INTO `fx_get_position` VALUES ('1', '905819701', '冯建文', '1', 'CO', '2', 'IB', '2017-03-31 14:20:29', '我申请成为IB', '0');

-- ----------------------------
-- Table structure for fx_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `fx_guestbook`;
CREATE TABLE `fx_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text,
  `reply` text,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for fx_itemgroup
-- ----------------------------
DROP TABLE IF EXISTS `fx_itemgroup`;
CREATE TABLE `fx_itemgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_itemgroup
-- ----------------------------
INSERT INTO `fx_itemgroup` VALUES ('1', 'flagtype', '文档属性', '0');
INSERT INTO `fx_itemgroup` VALUES ('2', 'blocktype', '自由块类别', '0');
INSERT INTO `fx_itemgroup` VALUES ('3', 'softtype', '软件类型', '0');
INSERT INTO `fx_itemgroup` VALUES ('4', 'softlanguage', '软件语言', '0');
INSERT INTO `fx_itemgroup` VALUES ('5', 'star', '星座', '0');
INSERT INTO `fx_itemgroup` VALUES ('6', 'animal', '生肖', '0');
INSERT INTO `fx_itemgroup` VALUES ('7', 'education', '教育程度', '0');
INSERT INTO `fx_itemgroup` VALUES ('8', 'configgroup', '配置分组', '0');
INSERT INTO `fx_itemgroup` VALUES ('9', 'configtype', '配置变量类型', '0');

-- ----------------------------
-- Table structure for fx_iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `fx_iteminfo`;
CREATE TABLE `fx_iteminfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_iteminfo
-- ----------------------------
INSERT INTO `fx_iteminfo` VALUES ('1', '图片', 'flagtype', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('2', '头条', 'flagtype', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('3', '推荐', 'flagtype', '4', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('4', '特荐', 'flagtype', '8', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('5', '幻灯', 'flagtype', '16', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('6', '跳转', 'flagtype', '32', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('7', '其他', 'flagtype', '64', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('8', '文字', 'blocktype', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('9', '图片', 'blocktype', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('10', '丰富', 'blocktype', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('11', '国产', 'softtype', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('12', '中文版', 'softlanguage', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('13', '英文版', 'softlanguage', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('14', '多语言版', 'softlanguage', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('15', '白羊座', 'star', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('16', '金牛座', 'star', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('17', '双子座', 'star', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('18', '巨蟹座', 'star', '4', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('19', '狮子座', 'star', '5', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('20', '处女座', 'star', '6', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('21', '天枰座', 'star', '7', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('22', '天蝎座', 'star', '8', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('23', '射手座', 'star', '9', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('24', '摩羯座', 'star', '10', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('25', '水瓶座', 'star', '11', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('26', '双鱼座', 'star', '12', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('27', '鼠', 'animal', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('28', '牛', 'animal', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('29', '虎', 'animal', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('30', '兔', 'animal', '4', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('31', '龙', 'animal', '5', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('32', '蛇', 'animal', '6', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('33', '马', 'animal', '7', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('34', '羊', 'animal', '8', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('35', '猴', 'animal', '9', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('36', '鸡', 'animal', '10', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('37', '狗', 'animal', '11', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('38', '猪', 'animal', '12', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('39', '小学', 'education', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('40', '初中', 'education', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('41', '高中/中专', 'education', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('42', '大学专科', 'education', '4', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('43', '大学本科', 'education', '5', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('44', '硕士', 'education', '6', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('45', '博士以上', 'education', '7', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('46', '站点配置', 'configgroup', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('47', '核心配置', 'configgroup', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('48', '邮箱配置', 'configgroup', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('49', '上传配置', 'configgroup', '4', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('50', '会员配置', 'configgroup', '5', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('51', '其他配置', 'configgroup', '6', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('52', '数字', 'configtype', '1', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('53', '字符', 'configtype', '2', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('54', '文本', 'configtype', '3', '0', '0');
INSERT INTO `fx_iteminfo` VALUES ('55', '布尔(真假)', 'configtype', '4', '0', '0');

-- ----------------------------
-- Table structure for fx_kind
-- ----------------------------
DROP TABLE IF EXISTS `fx_kind`;
CREATE TABLE `fx_kind` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `keywords` varchar(64) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_kind
-- ----------------------------
INSERT INTO `fx_kind` VALUES ('1', 'USD', '美元', null, '0', 'USD-USD');
INSERT INTO `fx_kind` VALUES ('2', 'EUR', '欧元', null, '0', 'USD-EUR');
INSERT INTO `fx_kind` VALUES ('3', 'HKD', '港币', null, '0', 'USD-HKD');
INSERT INTO `fx_kind` VALUES ('4', 'JPY', '日元', null, '0', 'USD-JPY');
INSERT INTO `fx_kind` VALUES ('5', 'GBP', '英镑', null, '0', 'USD-GBP');
INSERT INTO `fx_kind` VALUES ('6', 'AUD', '澳大利亚元', null, '0', 'USD-AUD');
INSERT INTO `fx_kind` VALUES ('7', 'CAD', '加拿大元', null, '0', 'USD-CAD');
INSERT INTO `fx_kind` VALUES ('8', 'THB', '泰国铢', null, '0', 'USD-THB');
INSERT INTO `fx_kind` VALUES ('9', 'SGD', '新加坡元', null, '0', 'USD-SGD');
INSERT INTO `fx_kind` VALUES ('10', 'DKK', '丹麦克朗', null, '0', 'USD-DKK');
INSERT INTO `fx_kind` VALUES ('11', 'NOK', '挪威克朗', null, '0', 'USD-NOK');
INSERT INTO `fx_kind` VALUES ('12', 'SEK', '瑞典克朗', null, '0', 'USD-SEK');
INSERT INTO `fx_kind` VALUES ('13', 'CHF', '瑞士法郎', null, '0', 'USD-CHF');
INSERT INTO `fx_kind` VALUES ('14', 'TWD', '新台币', null, '0', 'USD-TWD');
INSERT INTO `fx_kind` VALUES ('15', 'ZAR', '南非兰特', null, '0', 'USD-ZAR');
INSERT INTO `fx_kind` VALUES ('16', 'RUB', '卢布', null, '0', 'USD-RUB');
INSERT INTO `fx_kind` VALUES ('17', 'PHP', '菲律宾比索', null, '0', 'USD-PHP');
INSERT INTO `fx_kind` VALUES ('18', 'MYR', '林吉特', null, '0', 'USD-MYR');
INSERT INTO `fx_kind` VALUES ('19', 'MOP', '澳门元', null, '0', 'USD-MOP');
INSERT INTO `fx_kind` VALUES ('20', 'KRW', '韩国元', null, '0', 'USD-KRW');
INSERT INTO `fx_kind` VALUES ('21', 'NZD', '新西兰元', null, '0', 'USD-NZD');

-- ----------------------------
-- Table structure for fx_link
-- ----------------------------
DROP TABLE IF EXISTS `fx_link`;
CREATE TABLE `fx_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `ischeck` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `posttime` int(10) unsigned NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_link
-- ----------------------------
INSERT INTO `fx_link` VALUES ('1', '行云海CMS', 'http://www.xyhcms.com', '', '', '0', '1396255203', '1');
INSERT INTO `fx_link` VALUES ('2', '行云海软件', 'http://www.0871k.com', '', '', '0', '1396255203', '1');
INSERT INTO `fx_link` VALUES ('3', '许愿网', 'http://www.yuanabc.com', '', '', '0', '1396255203', '1');
INSERT INTO `fx_link` VALUES ('4', '百度', 'https://www.baidu.com', '', '', '1', '1491959218', '1');
INSERT INTO `fx_link` VALUES ('5', '百度', 'https://www.baidu.com', '', '', '1', '1491965172', '1');
INSERT INTO `fx_link` VALUES ('6', '百度', 'https://www.baidu.com', '', '', '1', '1491965420', '1');
INSERT INTO `fx_link` VALUES ('7', '百度', 'https://www.baidu.com', '', '', '1', '1491965761', '1');

-- ----------------------------
-- Table structure for fx_member
-- ----------------------------
DROP TABLE IF EXISTS `fx_member`;
CREATE TABLE `fx_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '系统编号',
  `accountid` varchar(20) NOT NULL DEFAULT '' COMMENT '注册账号',
  `nickname` varchar(20) DEFAULT '',
  `password` char(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `headimg` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `logintime` int(10) unsigned DEFAULT '0',
  `loginip` varchar(20) DEFAULT '',
  `loginnum` mediumint(8) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `islock` tinyint(1) unsigned DEFAULT '0' COMMENT '是否封号',
  `position` varchar(32) NOT NULL DEFAULT '' COMMENT '职位',
  `position_id` int(1) NOT NULL,
  `mobile` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '手机号',
  `introduction` int(16) unsigned NOT NULL DEFAULT '0' COMMENT '推荐人',
  `id_front` varchar(64) NOT NULL DEFAULT '' COMMENT '身份证正面',
  `id_reverse` varchar(64) NOT NULL DEFAULT '' COMMENT '身份证反面',
  `encrypt` varchar(6) NOT NULL DEFAULT '' COMMENT '加密方式',
  `idcard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证图片信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_member
-- ----------------------------

-- ----------------------------
-- Table structure for fx_memberdetail
-- ----------------------------
DROP TABLE IF EXISTS `fx_memberdetail`;
CREATE TABLE `fx_memberdetail` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `animal` int(10) unsigned NOT NULL DEFAULT '0',
  `star` int(10) unsigned NOT NULL DEFAULT '0',
  `blood` int(10) unsigned NOT NULL DEFAULT '0',
  `marital` int(10) unsigned NOT NULL DEFAULT '0',
  `education` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `income` int(10) unsigned NOT NULL DEFAULT '0',
  `maxim` varchar(100) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_memberdetail
-- ----------------------------

-- ----------------------------
-- Table structure for fx_membergroup
-- ----------------------------
DROP TABLE IF EXISTS `fx_membergroup`;
CREATE TABLE `fx_membergroup` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `sort` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_membergroup
-- ----------------------------
INSERT INTO `fx_membergroup` VALUES ('1', '游客', '', '0', '0', '0');
INSERT INTO `fx_membergroup` VALUES ('2', '注册会员', '', '10', '0', '0');
INSERT INTO `fx_membergroup` VALUES ('3', '中级会员', '', '30', '0', '0');

-- ----------------------------
-- Table structure for fx_menu
-- ----------------------------
DROP TABLE IF EXISTS `fx_menu`;
CREATE TABLE `fx_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(20) DEFAULT '',
  `parameter` varchar(100) DEFAULT '',
  `quick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_menu
-- ----------------------------
INSERT INTO `fx_menu` VALUES ('1', '常规管理', '0', '', '', '', '0', '1', '1');
INSERT INTO `fx_menu` VALUES ('2', '模块管理', '0', '', '', '', '0', '0', '2');
INSERT INTO `fx_menu` VALUES ('3', '系统设置', '0', '', '', '', '0', '1', '3');
INSERT INTO `fx_menu` VALUES ('4', '扩展管理', '0', '', '', '', '0', '1', '4');
INSERT INTO `fx_menu` VALUES ('5', '栏目管理', '1', '', '', '', '0', '0', '11');
INSERT INTO `fx_menu` VALUES ('6', '内容管理', '1', '', '', '', '0', '1', '12');
INSERT INTO `fx_menu` VALUES ('7', '快捷面板', '1', '', '', '', '0', '1', '13');
INSERT INTO `fx_menu` VALUES ('8', '栏目管理', '5', 'Category', 'index', '', '0', '1', '111');
INSERT INTO `fx_menu` VALUES ('9', '内置模块', '2', '', '', '', '0', '1', '21');
INSERT INTO `fx_menu` VALUES ('10', '自由块管理', '9', 'Block', 'index', '', '0', '1', '211');
INSERT INTO `fx_menu` VALUES ('11', '广告管理', '9', 'Abc', 'index', '', '1', '1', '212');
INSERT INTO `fx_menu` VALUES ('12', '专题管理', '9', 'Special', 'index', '', '0', '1', '213');
INSERT INTO `fx_menu` VALUES ('13', '公告管理', '9', 'Announce', 'index', '', '1', '1', '214');
INSERT INTO `fx_menu` VALUES ('14', '友情链接', '9', 'Link', 'index', '', '1', '1', '215');
INSERT INTO `fx_menu` VALUES ('15', '留言本管理', '9', 'Guestbook', 'index', '', '1', '1', '216');
INSERT INTO `fx_menu` VALUES ('16', '评论管理', '9', 'Comment', 'index', '', '1', '1', '217');
INSERT INTO `fx_menu` VALUES ('17', '系统设置', '3', '', '', '', '0', '1', '31');
INSERT INTO `fx_menu` VALUES ('18', '会员管理', '3', '', '', '', '0', '1', '33');
INSERT INTO `fx_menu` VALUES ('19', '管理员管理', '3', '', '', '', '0', '1', '34');
INSERT INTO `fx_menu` VALUES ('20', '网站设置', '17', 'System', 'site', '', '0', '1', '311');
INSERT INTO `fx_menu` VALUES ('21', '伪静态|缓存设置', '17', 'System', 'url', '', '0', '1', '312');
INSERT INTO `fx_menu` VALUES ('22', '清除系统缓存', '17', 'System', 'clearCache', '', '1', '1', '316');
INSERT INTO `fx_menu` VALUES ('23', '在线客服设置', '17', 'System', 'online', '', '0', '1', '313');
INSERT INTO `fx_menu` VALUES ('24', '静态缓存', '3', '', '', '', '0', '1', '32');
INSERT INTO `fx_menu` VALUES ('25', '一键更新全站', '24', 'ClearHtml', 'all', '', '0', '1', '321');
INSERT INTO `fx_menu` VALUES ('26', '更新首页', '24', 'ClearHtml', 'home', '', '0', '1', '322');
INSERT INTO `fx_menu` VALUES ('27', '更新栏目', '24', 'ClearHtml', 'lists', '', '0', '1', '323');
INSERT INTO `fx_menu` VALUES ('28', '更新文档', '24', 'ClearHtml', 'shows', '', '0', '1', '324');
INSERT INTO `fx_menu` VALUES ('29', '更新专题', '24', 'ClearHtml', 'special', '', '0', '1', '325');
INSERT INTO `fx_menu` VALUES ('30', '会员管理', '18', 'Member', 'index', '', '0', '1', '331');
INSERT INTO `fx_menu` VALUES ('31', '会员组管理', '18', 'Membergroup', 'index', '', '0', '1', '332');
INSERT INTO `fx_menu` VALUES ('32', '系统用户管理', '19', 'Rbac', 'index', '', '0', '1', '341');
INSERT INTO `fx_menu` VALUES ('33', '用户组设置', '19', 'Rbac', 'role', '', '0', '1', '342');
INSERT INTO `fx_menu` VALUES ('34', '节点列表', '19', 'Rbac', 'node', '', '0', '1', '343');
INSERT INTO `fx_menu` VALUES ('35', '扩展管理', '4', '', '', '', '0', '1', '41');
INSERT INTO `fx_menu` VALUES ('36', '我的账户', '4', '', '', '', '0', '1', '42');
INSERT INTO `fx_menu` VALUES ('37', '模型管理', '35', 'Model', 'index', '', '0', '1', '411');
INSERT INTO `fx_menu` VALUES ('38', '菜单管理', '35', 'Menu', 'index', '', '0', '1', '412');
INSERT INTO `fx_menu` VALUES ('39', '数据库管理', '35', 'Database', 'index', '', '0', '1', '413');
INSERT INTO `fx_menu` VALUES ('40', '联动管理', '35', 'Itemgroup', 'index', '', '0', '1', '414');
INSERT INTO `fx_menu` VALUES ('41', '区域管理', '35', 'Area', 'index', '', '0', '1', '415');
INSERT INTO `fx_menu` VALUES ('42', '修改我的信息', '36', 'Personal', 'index', '', '0', '1', '421');
INSERT INTO `fx_menu` VALUES ('43', '修改密码', '36', 'Personal', 'pwd', '', '0', '1', '422');
INSERT INTO `fx_menu` VALUES ('44', '其他模块', '2', '', '', '', '0', '1', '22');
INSERT INTO `fx_menu` VALUES ('45', '已传文件管理', '35', 'Attachment', 'index', '', '0', '1', '416');
INSERT INTO `fx_menu` VALUES ('46', '数据元管理', '35', 'Meta', 'index', '', '0', '1', '416');
INSERT INTO `fx_menu` VALUES ('47', '模板管理', '35', 'Templets', 'index', '', '0', '1', '428');
INSERT INTO `fx_menu` VALUES ('48', 'DM管理', '0', '', '', '', '0', '1', '5');
INSERT INTO `fx_menu` VALUES ('49', '用户管理', '48', '', '', '', '0', '1', '51');
INSERT INTO `fx_menu` VALUES ('50', '注册审核', '49', 'Regist', 'index', '', '0', '1', '511');
INSERT INTO `fx_menu` VALUES ('51', '宏观调控', '48', '', '', '', '0', '1', '52');
INSERT INTO `fx_menu` VALUES ('52', '宏观调控', '51', 'Maxcontrol', 'index', '', '0', '1', '521');
INSERT INTO `fx_menu` VALUES ('53', '职位申请', '49', 'Position', 'index', '', '0', '1', '512');
INSERT INTO `fx_menu` VALUES ('54', '用户提现', '49', 'Uncharge', 'index', '', '0', '1', '513');
INSERT INTO `fx_menu` VALUES ('55', '用户列表', '49', 'User', 'index', '', '0', '1', '514');

-- ----------------------------
-- Table structure for fx_meta
-- ----------------------------
DROP TABLE IF EXISTS `fx_meta`;
CREATE TABLE `fx_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT 'key',
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_meta
-- ----------------------------
INSERT INTO `fx_meta` VALUES ('1', '1', 'HOME_URL_MODEL', '3');
INSERT INTO `fx_meta` VALUES ('2', '1', 'HOME_URL_PATHINFO_DEPR', '/');
INSERT INTO `fx_meta` VALUES ('3', '1', 'HOME_URL_ROUTER_ON', '0');
INSERT INTO `fx_meta` VALUES ('4', '1', 'HOME_URL_ROUTE_RULES', 'Mobile$=>Mobile/Index/index\r\nSpecial/:id\\d=>Special/shows\r\n:e/p/:p\\d=>List/index\r\n:e/:id\\d=>Show/index\r\n/^(\\w+)$/=>List/index?e=:1');
INSERT INTO `fx_meta` VALUES ('5', '1', 'HOME_HTML_CACHE_ON', '0');
INSERT INTO `fx_meta` VALUES ('6', '1', 'MOBILE_HTML_CACHE_ON', '0');
INSERT INTO `fx_meta` VALUES ('7', '1', 'HTML_CACHE_INDEX_ON', '1');
INSERT INTO `fx_meta` VALUES ('8', '1', 'HTML_CACHE_INDEX_TIME', '1200');
INSERT INTO `fx_meta` VALUES ('9', '1', 'HTML_CACHE_LIST_ON', '1');
INSERT INTO `fx_meta` VALUES ('10', '1', 'HTML_CACHE_LIST_TIME', '0');
INSERT INTO `fx_meta` VALUES ('11', '1', 'HTML_CACHE_SHOW_ON', '1');
INSERT INTO `fx_meta` VALUES ('12', '1', 'HTML_CACHE_SHOW_TIME', '0');
INSERT INTO `fx_meta` VALUES ('15', '9', 'ONLINE_CFG_MODE', '1');
INSERT INTO `fx_meta` VALUES ('13', '1', 'HTML_CACHE_SPECIAL_ON', '0');
INSERT INTO `fx_meta` VALUES ('14', '1', 'HTML_CACHE_SPECIAL_TIME', '0');
INSERT INTO `fx_meta` VALUES ('16', '9', 'ONLINE_CFG_STYLE', 'blue');
INSERT INTO `fx_meta` VALUES ('17', '9', 'ONLINE_CFG_H', '1');
INSERT INTO `fx_meta` VALUES ('18', '9', 'ONLINE_CFG_H_MARGIN', '0');
INSERT INTO `fx_meta` VALUES ('19', '9', 'ONLINE_CFG_V', '2');
INSERT INTO `fx_meta` VALUES ('20', '9', 'ONLINE_CFG_V_MARGIN', '0');
INSERT INTO `fx_meta` VALUES ('21', '9', 'ONLINE_CFG_QQ', '307299635$$$点击咨询\r\n307299635$$$点击留言');
INSERT INTO `fx_meta` VALUES ('22', '9', 'ONLINE_CFG_WANGWANG', '7bucn$$$在线旺旺...');
INSERT INTO `fx_meta` VALUES ('23', '9', 'ONLINE_CFG_PHONE_ON', '1');
INSERT INTO `fx_meta` VALUES ('24', '9', 'ONLINE_CFG_PHONE', '0871665441');
INSERT INTO `fx_meta` VALUES ('25', '9', 'ONLINE_CFG_GUESTBOOK_ON', '1');
INSERT INTO `fx_meta` VALUES ('26', '9', 'ONLINE_CFG_QQ_PARAM', '<a target=\'_blank\' href=\"http://wpa.qq.com/msgrd?v=3&uin=[客服号]&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:[客服号]:51\" alt=\"[客服说明]\" title=\"[客服说明]\"/></a>');
INSERT INTO `fx_meta` VALUES ('27', '9', 'ONLINE_CFG_WANGWANG_PARAM', '<a target=\"_blank\" href=\"http://www.taobao.com/webww/ww.php?ver=3&touid=[客服号]&siteid=cntaobao&status=1&charset=utf-8\" ><img border=\"0\" src=\"http://amos.alicdn.com/online.aw?v=2&uid=[客服号]&site=cntaobao&s=10&charset=UTF-8\" alt=\"[客服说明]\" /></a>');

-- ----------------------------
-- Table structure for fx_model
-- ----------------------------
DROP TABLE IF EXISTS `fx_model`;
CREATE TABLE `fx_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `tablename` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_model
-- ----------------------------
INSERT INTO `fx_model` VALUES ('1', '文章模型', '', 'article', '1', '', 'List_article.html', 'Show_article.html', '1');
INSERT INTO `fx_model` VALUES ('2', '单页模型', '', 'page', '1', '', 'List_page.html', 'Show_page.html', '2');
INSERT INTO `fx_model` VALUES ('3', '产品模型', '', 'product', '1', '', 'List_product.html', 'Show_product.html', '3');
INSERT INTO `fx_model` VALUES ('4', '图片模型', '', 'picture', '1', '', 'List_picture.html', 'Show_picture.html', '4');
INSERT INTO `fx_model` VALUES ('5', '软件下载模型', '', 'soft', '1', '', 'List_soft.html', 'Show_soft.html', '5');

-- ----------------------------
-- Table structure for fx_money_kind
-- ----------------------------
DROP TABLE IF EXISTS `fx_money_kind`;
CREATE TABLE `fx_money_kind` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `money` int(10) NOT NULL,
  `type` int(2) unsigned DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_money_kind
-- ----------------------------
INSERT INTO `fx_money_kind` VALUES ('1', '$10', '10美元', '10', '1', '1', null);
INSERT INTO `fx_money_kind` VALUES ('2', '$20', '20美元', '20', '2', '1', null);
INSERT INTO `fx_money_kind` VALUES ('3', '$30', '30美元', '30', '3', '1', null);
INSERT INTO `fx_money_kind` VALUES ('4', '$40', '40美元', '40', '4', '1', null);
INSERT INTO `fx_money_kind` VALUES ('5', '$50', '50美元', '50', '5', '1', null);

-- ----------------------------
-- Table structure for fx_node
-- ----------------------------
DROP TABLE IF EXISTS `fx_node`;
CREATE TABLE `fx_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_node
-- ----------------------------
INSERT INTO `fx_node` VALUES ('1', 'Manage', '后台应用', '1', null, '1', '0', '1');
INSERT INTO `fx_node` VALUES ('2', 'Rbac', '用户权限管理', '1', null, '1', '1', '2');
INSERT INTO `fx_node` VALUES ('3', 'index', '用户列表', '1', null, '1', '2', '3');
INSERT INTO `fx_node` VALUES ('4', 'addUser', '添加用户', '1', null, '2', '2', '3');
INSERT INTO `fx_node` VALUES ('5', 'editUser', '编辑用户', '1', null, '3', '2', '3');
INSERT INTO `fx_node` VALUES ('6', 'delUser', '删除用户', '1', null, '4', '2', '3');
INSERT INTO `fx_node` VALUES ('7', 'Index', '前台应用', '1', null, '2', '0', '1');
INSERT INTO `fx_node` VALUES ('8', 'role', '用户组列表', '1', null, '5', '2', '3');
INSERT INTO `fx_node` VALUES ('9', 'addRole', '添加用户组', '1', null, '6', '2', '3');
INSERT INTO `fx_node` VALUES ('10', 'editRole', '编辑用户组', '1', null, '7', '2', '3');
INSERT INTO `fx_node` VALUES ('11', 'delRole', '删除用户组', '1', null, '8', '2', '3');
INSERT INTO `fx_node` VALUES ('12', 'access', '权限管理', '1', null, '9', '2', '3');
INSERT INTO `fx_node` VALUES ('13', 'node', '节点列表', '0', null, '10', '2', '3');
INSERT INTO `fx_node` VALUES ('14', 'addNode', '添加节点', '0', null, '11', '2', '3');
INSERT INTO `fx_node` VALUES ('15', 'editNode', '编辑节点', '0', null, '12', '2', '3');
INSERT INTO `fx_node` VALUES ('16', 'delNode', '删除节点', '0', null, '13', '2', '3');
INSERT INTO `fx_node` VALUES ('17', 'System', '系统设置', '1', null, '2', '1', '2');
INSERT INTO `fx_node` VALUES ('18', 'site', '网站设置', '1', null, '1', '17', '3');
INSERT INTO `fx_node` VALUES ('19', 'Model', '模型管理', '1', null, '3', '1', '2');
INSERT INTO `fx_node` VALUES ('20', 'index', '模型列表', '1', null, '1', '19', '3');
INSERT INTO `fx_node` VALUES ('21', 'add', '添加模型', '1', null, '2', '19', '3');
INSERT INTO `fx_node` VALUES ('22', 'edit', '模型修改', '1', null, '3', '19', '3');
INSERT INTO `fx_node` VALUES ('23', 'del', '删除模型', '1', null, '4', '19', '3');
INSERT INTO `fx_node` VALUES ('24', 'sort', '更新排序', '1', null, '5', '19', '3');
INSERT INTO `fx_node` VALUES ('25', 'Category', '栏目管理', '1', null, '4', '1', '2');
INSERT INTO `fx_node` VALUES ('26', 'index', '栏目列表', '1', null, '1', '25', '3');
INSERT INTO `fx_node` VALUES ('27', 'add', '添加栏目', '1', null, '2', '25', '3');
INSERT INTO `fx_node` VALUES ('28', 'edit', '修改栏目', '1', null, '3', '25', '3');
INSERT INTO `fx_node` VALUES ('29', 'del', '删除栏目', '1', null, '4', '25', '3');
INSERT INTO `fx_node` VALUES ('30', 'sort', '更新栏目排序', '1', null, '5', '25', '3');
INSERT INTO `fx_node` VALUES ('31', 'Member', '会员管理', '1', null, '5', '1', '2');
INSERT INTO `fx_node` VALUES ('32', 'index', '会员列表', '1', null, '1', '31', '3');
INSERT INTO `fx_node` VALUES ('33', 'add', '添加会员', '1', null, '2', '31', '3');
INSERT INTO `fx_node` VALUES ('34', 'edit', '编辑会员', '1', null, '3', '31', '3');
INSERT INTO `fx_node` VALUES ('35', 'del', '删除会员', '1', null, '4', '31', '3');
INSERT INTO `fx_node` VALUES ('36', 'Membergroup', '会员组管理', '1', null, '6', '1', '2');
INSERT INTO `fx_node` VALUES ('37', 'index', '会员组列表', '1', null, '1', '36', '3');
INSERT INTO `fx_node` VALUES ('38', 'add', '添加会员组', '1', null, '2', '36', '3');
INSERT INTO `fx_node` VALUES ('39', 'edit', '编辑会员组', '1', null, '3', '36', '3');
INSERT INTO `fx_node` VALUES ('40', 'del', '删除会员组', '1', null, '4', '36', '3');
INSERT INTO `fx_node` VALUES ('41', 'Announce', '公告管理', '1', null, '7', '1', '2');
INSERT INTO `fx_node` VALUES ('42', 'index', '公告列表', '1', null, '1', '41', '3');
INSERT INTO `fx_node` VALUES ('43', 'add', '添加公告', '1', null, '2', '41', '3');
INSERT INTO `fx_node` VALUES ('44', 'edit', '编辑公告', '1', null, '3', '41', '3');
INSERT INTO `fx_node` VALUES ('45', 'del', '删除公告', '1', null, '4', '41', '3');
INSERT INTO `fx_node` VALUES ('46', 'Link', '友情链接', '1', null, '8', '1', '2');
INSERT INTO `fx_node` VALUES ('47', 'index', '友情列表', '1', null, '1', '46', '3');
INSERT INTO `fx_node` VALUES ('48', 'add', '添加友情', '1', null, '2', '46', '3');
INSERT INTO `fx_node` VALUES ('49', 'edit', '编辑友情', '1', null, '3', '46', '3');
INSERT INTO `fx_node` VALUES ('50', 'del', '删除友情', '1', null, '4', '46', '3');
INSERT INTO `fx_node` VALUES ('51', 'Guestbook', '留言本管理', '1', null, '9', '1', '2');
INSERT INTO `fx_node` VALUES ('52', 'index', '留言本列表', '1', null, '1', '51', '3');
INSERT INTO `fx_node` VALUES ('53', 'reply', '回复留言', '1', null, '2', '51', '3');
INSERT INTO `fx_node` VALUES ('54', 'del', '删除留言', '1', null, '3', '51', '3');
INSERT INTO `fx_node` VALUES ('55', 'clearCache', '清除缓存', '1', null, '2', '17', '3');
INSERT INTO `fx_node` VALUES ('56', 'Personal', '我的账户', '1', null, '10', '1', '2');
INSERT INTO `fx_node` VALUES ('57', 'index', '修改资料', '1', null, '1', '56', '3');
INSERT INTO `fx_node` VALUES ('58', 'pwd', '修改密码', '1', null, '2', '56', '3');
INSERT INTO `fx_node` VALUES ('59', 'Comment', '评论管理', '1', null, '10', '1', '2');
INSERT INTO `fx_node` VALUES ('60', 'index', '评论列表', '1', null, '1', '59', '3');
INSERT INTO `fx_node` VALUES ('61', 'edit', '编辑评论', '1', null, '2', '59', '3');
INSERT INTO `fx_node` VALUES ('62', 'del', '删除评论', '1', null, '3', '59', '3');
INSERT INTO `fx_node` VALUES ('63', 'Area', '区域管理', '1', null, '12', '1', '2');
INSERT INTO `fx_node` VALUES ('64', 'index', '区域列表', '1', null, '1', '63', '3');
INSERT INTO `fx_node` VALUES ('65', 'add', '添加区域', '1', null, '2', '63', '3');
INSERT INTO `fx_node` VALUES ('66', 'edit', '编辑区域', '1', null, '3', '63', '3');
INSERT INTO `fx_node` VALUES ('67', 'del', '删除区域', '1', null, '4', '63', '3');
INSERT INTO `fx_node` VALUES ('68', 'Itemgroup', '联动组管理', '1', null, '13', '1', '2');
INSERT INTO `fx_node` VALUES ('69', 'index', '联动组列表', '1', null, '1', '68', '3');
INSERT INTO `fx_node` VALUES ('70', 'add', '添加联动组', '1', null, '2', '68', '3');
INSERT INTO `fx_node` VALUES ('71', 'edit', '编辑联动组', '1', null, '3', '68', '3');
INSERT INTO `fx_node` VALUES ('72', 'del', '删除联动组', '1', null, '4', '68', '3');
INSERT INTO `fx_node` VALUES ('73', 'Iteminfo', '联动管理', '1', null, '14', '1', '2');
INSERT INTO `fx_node` VALUES ('74', 'index', '联动列表', '1', null, '1', '73', '3');
INSERT INTO `fx_node` VALUES ('75', 'add', '添加联动', '1', null, '2', '73', '3');
INSERT INTO `fx_node` VALUES ('76', 'edit', '编辑联动', '1', null, '3', '73', '3');
INSERT INTO `fx_node` VALUES ('77', 'del', '删除联动', '1', null, '4', '73', '3');
INSERT INTO `fx_node` VALUES ('78', 'sort', '更新排序', '1', null, '5', '73', '3');
INSERT INTO `fx_node` VALUES ('79', 'Special', '专题管理', '1', null, '15', '1', '2');
INSERT INTO `fx_node` VALUES ('80', 'index', '专题列表', '1', null, '1', '79', '3');
INSERT INTO `fx_node` VALUES ('81', 'add', '添加专题', '1', null, '2', '79', '3');
INSERT INTO `fx_node` VALUES ('82', 'edit', '编辑专题', '1', null, '3', '79', '3');
INSERT INTO `fx_node` VALUES ('83', 'del', '删除专题', '1', null, '4', '79', '3');
INSERT INTO `fx_node` VALUES ('84', 'trach', '回收站', '1', null, '5', '79', '3');
INSERT INTO `fx_node` VALUES ('85', 'restore', '还原专题', '1', null, '6', '79', '3');
INSERT INTO `fx_node` VALUES ('86', 'clear', '彻底删除', '1', null, '7', '79', '3');
INSERT INTO `fx_node` VALUES ('87', 'Block', '自由块管理', '1', null, '16', '1', '2');
INSERT INTO `fx_node` VALUES ('88', 'index', '自由块列表', '1', null, '1', '87', '3');
INSERT INTO `fx_node` VALUES ('89', 'add', '添加自由块', '1', null, '2', '87', '3');
INSERT INTO `fx_node` VALUES ('90', 'edit', '编辑自由块', '1', null, '3', '87', '3');
INSERT INTO `fx_node` VALUES ('91', 'del', '删除自由块', '1', null, '4', '87', '3');
INSERT INTO `fx_node` VALUES ('92', 'Database', '数据库管理', '1', null, '17', '1', '2');
INSERT INTO `fx_node` VALUES ('93', 'index', '数据表列表', '1', null, '1', '92', '3');
INSERT INTO `fx_node` VALUES ('94', 'backup', '数据库备份', '1', null, '2', '92', '3');
INSERT INTO `fx_node` VALUES ('95', 'optimize', '数据表优化', '1', null, '3', '92', '3');
INSERT INTO `fx_node` VALUES ('96', 'repair', '数据表修复', '1', null, '4', '92', '3');
INSERT INTO `fx_node` VALUES ('97', 'restore', '还原管理', '1', null, '5', '92', '3');
INSERT INTO `fx_node` VALUES ('98', 'restoreData', '数据恢复', '1', null, '6', '92', '3');
INSERT INTO `fx_node` VALUES ('99', 'delSqlFiles', '删除文件', '1', null, '7', '92', '3');
INSERT INTO `fx_node` VALUES ('100', 'url', '伪静态缓存设置', '1', null, '3', '17', '3');
INSERT INTO `fx_node` VALUES ('101', 'ClearHtml', '静态缓存管理', '1', null, '18', '1', '2');
INSERT INTO `fx_node` VALUES ('102', 'all', '一键更新全站', '1', null, '1', '101', '3');
INSERT INTO `fx_node` VALUES ('103', 'home', '更新首页', '1', null, '2', '101', '3');
INSERT INTO `fx_node` VALUES ('104', 'lists', '更新栏目', '1', null, '3', '101', '3');
INSERT INTO `fx_node` VALUES ('105', 'shows', '更新文档', '1', null, '4', '101', '3');
INSERT INTO `fx_node` VALUES ('106', 'special', '更新专题', '1', null, '5', '101', '3');
INSERT INTO `fx_node` VALUES ('107', 'Menu', '菜单管理', '1', null, '19', '1', '2');
INSERT INTO `fx_node` VALUES ('108', 'index', '菜单列表', '1', null, '1', '107', '3');
INSERT INTO `fx_node` VALUES ('109', 'add', '添加菜单', '1', null, '2', '107', '3');
INSERT INTO `fx_node` VALUES ('110', 'edit', '修改菜单', '1', null, '3', '107', '3');
INSERT INTO `fx_node` VALUES ('111', 'sort', '排序更新', '1', null, '4', '107', '3');
INSERT INTO `fx_node` VALUES ('112', 'qk', '快捷更新', '1', null, '5', '107', '3');
INSERT INTO `fx_node` VALUES ('113', 'del', '删除菜单', '1', null, '6', '107', '3');
INSERT INTO `fx_node` VALUES ('114', 'Attachment', '已上传文件管理', '1', null, '20', '1', '2');
INSERT INTO `fx_node` VALUES ('115', 'index', '文件列表', '1', null, '1', '114', '3');
INSERT INTO `fx_node` VALUES ('116', 'del', '删除文件', '1', null, '4', '114', '3');
INSERT INTO `fx_node` VALUES ('117', 'Abc', '广告管理', '1', null, '21', '1', '2');
INSERT INTO `fx_node` VALUES ('118', 'index', '广告位列表', '1', null, '1', '117', '3');
INSERT INTO `fx_node` VALUES ('119', 'add', '添加广告位', '1', null, '2', '117', '3');
INSERT INTO `fx_node` VALUES ('120', 'edit', '修改广告位', '1', null, '3', '117', '3');
INSERT INTO `fx_node` VALUES ('121', 'del', '删除广告位', '1', null, '4', '117', '3');
INSERT INTO `fx_node` VALUES ('122', 'detail', '广告列表', '1', null, '5', '117', '3');
INSERT INTO `fx_node` VALUES ('123', 'addDetail', '添加广告', '1', null, '6', '117', '3');
INSERT INTO `fx_node` VALUES ('124', 'editDetail', '修改广告', '1', null, '7', '117', '3');
INSERT INTO `fx_node` VALUES ('125', 'sort', '更新广告排序', '1', null, '7', '117', '3');
INSERT INTO `fx_node` VALUES ('126', 'getcode', '获取广告代码', '1', null, '8', '117', '3');
INSERT INTO `fx_node` VALUES ('127', 'delDetail', '删除广告', '1', null, '9', '117', '3');
INSERT INTO `fx_node` VALUES ('128', 'Templets', '模板管理', '1', null, '22', '1', '2');
INSERT INTO `fx_node` VALUES ('129', 'index', '模板列表', '1', null, '1', '128', '3');
INSERT INTO `fx_node` VALUES ('130', 'add', '添加模板', '1', null, '2', '128', '3');
INSERT INTO `fx_node` VALUES ('131', 'edit', '修改模板', '1', null, '3', '128', '3');
INSERT INTO `fx_node` VALUES ('132', 'del', '删除模板', '1', null, '4', '128', '3');

-- ----------------------------
-- Table structure for fx_operate
-- ----------------------------
DROP TABLE IF EXISTS `fx_operate`;
CREATE TABLE `fx_operate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(4) unsigned NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '',
  `ftype` int(4) unsigned NOT NULL DEFAULT '0',
  `type` int(2) unsigned NOT NULL DEFAULT '0',
  `description` varchar(128) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `link` varchar(64) NOT NULL DEFAULT '' COMMENT '链接url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_operate
-- ----------------------------
INSERT INTO `fx_operate` VALUES ('1', '', 'USER_CENTER', '1', '用户中心', '0', '1', '用户中心', '1', '');
INSERT INTO `fx_operate` VALUES ('2', '', 'ACCOUNT_MANAGE', '1', '账户管理', '0', '2', '账户管理', '1', '');
INSERT INTO `fx_operate` VALUES ('3', '', 'INFERIOR_MEMBER', '1', '伙伴管理', '0', '3', '管理伙伴', '1', '');
INSERT INTO `fx_operate` VALUES ('4', 'USER_CENTER', 'USER_INFO', '2', '个人资料', '1', '1', '个人资料', '1', 'User');
INSERT INTO `fx_operate` VALUES ('5', 'ACCOUNT_MANAGE', 'ACCOUNT_POSITION', '2', '职位申请', '2', '1', '职位申请', '1', 'Aposition');
INSERT INTO `fx_operate` VALUES ('6', 'ACCOUNT_MANAGE', 'ACCOUNT_CHARGE', '2', '账户入金', '2', '2', '账户入金', '1', 'Acharge');
INSERT INTO `fx_operate` VALUES ('7', 'ACCOUNT_MANAGE', 'ACCOUNT_UNCHARGE', '2', '账户出金', '2', '3', '账户出金', '1', 'Auncharge');
INSERT INTO `fx_operate` VALUES ('8', 'ACCOUNT_MANAGE', 'ACCOUNT_RECORD', '2', '历史记录', '2', '4', '历史记录', '1', 'Arecord');
INSERT INTO `fx_operate` VALUES ('9', 'INFERIOR_MEMBER', 'INFERIOR_INFO', '2', '客户一览', '3', '1', '客户一览', '1', 'Iinfo');
INSERT INTO `fx_operate` VALUES ('10', 'INFERIOR_MEMBER', 'INFERIOR_BROKERAGE', '2', '佣金查询', '3', '2', '佣金查询', '0', 'Ibrokerage');
INSERT INTO `fx_operate` VALUES ('11', 'INFERIOR_MEMBER', 'INFERIOR_TRADE', '2', '交易明细', '3', '3', '交易明细', '1', 'Itrade');
INSERT INTO `fx_operate` VALUES ('12', 'INFERIOR_MEMBER', 'INFERIOR_CHARGE', '2', '伙伴入金', '3', '4', '伙伴入金', '1', 'Icharge');
INSERT INTO `fx_operate` VALUES ('13', 'INFERIOR_MEMBER', 'INFERIOR_UNCHARGE', '2', '伙伴出金', '3', '5', '伙伴出金', '1', 'Iuncharge');
INSERT INTO `fx_operate` VALUES ('14', 'INFERIOR_MEMBER', 'INFERIOR_COLLECT', '2', '交易汇总', '3', '6', '交易汇总', '0', 'Icollect');

-- ----------------------------
-- Table structure for fx_orderaction
-- ----------------------------
DROP TABLE IF EXISTS `fx_orderaction`;
CREATE TABLE `fx_orderaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `orderid` varchar(30) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `aid` int(10) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `publishtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_orderaction
-- ----------------------------

-- ----------------------------
-- Table structure for fx_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `fx_orderdetail`;
CREATE TABLE `fx_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(30) DEFAULT NULL COMMENT '订单ID',
  `productid` int(11) DEFAULT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `marketprice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for fx_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `fx_orderinfo`;
CREATE TABLE `fx_orderinfo` (
  `orderid` varchar(30) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `payid` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `expressprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '邮费/运费',
  `prdouctprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '产品总价格',
  `totalprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `consignee` varchar(30) DEFAULT NULL COMMENT '收件人',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '确认时间',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `distribution_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送时间',
  PRIMARY KEY (`orderid`),
  KEY `stime` (`stime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for fx_picture
-- ----------------------------
DROP TABLE IF EXISTS `fx_picture`;
CREATE TABLE `fx_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `copyfrom` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_picture
-- ----------------------------

-- ----------------------------
-- Table structure for fx_position
-- ----------------------------
DROP TABLE IF EXISTS `fx_position`;
CREATE TABLE `fx_position` (
  `id` int(4) NOT NULL,
  `name` varchar(3) NOT NULL,
  `title` varchar(16) NOT NULL,
  `persent` float(3,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_position
-- ----------------------------
INSERT INTO `fx_position` VALUES ('1', 'CO', '顾问', '0.10');
INSERT INTO `fx_position` VALUES ('2', 'IB', '经纪人', '0.15');
INSERT INTO `fx_position` VALUES ('3', 'MIB', '高级经纪人', '0.20');
INSERT INTO `fx_position` VALUES ('4', 'PIB', '铂金经纪人', '0.25');

-- ----------------------------
-- Table structure for fx_product
-- ----------------------------
DROP TABLE IF EXISTS `fx_product`;
CREATE TABLE `fx_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `marketprice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `units` varchar(50) NOT NULL DEFAULT '' COMMENT '单位',
  `specification` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_product
-- ----------------------------

-- ----------------------------
-- Table structure for fx_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_record`;
CREATE TABLE `fx_record` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL COMMENT '交易单号',
  `userid` int(20) unsigned NOT NULL COMMENT '用户id',
  `accountid` varchar(20) NOT NULL COMMENT '用户标识',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `f_type` int(2) unsigned NOT NULL COMMENT '汇率类型',
  `up_down` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '买入的涨跌',
  `f_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '本次买入的金额',
  `f_time` varchar(32) NOT NULL COMMENT '开始时间',
  `f_open` float(8,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '开盘',
  `f_close` float(8,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '收盘',
  `f_lowest` float(8,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '最低值',
  `f_highest` float(8,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '最高值',
  `result` int(1) unsigned DEFAULT '0' COMMENT '结果',
  `money_change` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '交易完毕后是否更改金额',
  `s_time` int(3) unsigned NOT NULL DEFAULT '1',
  `admin` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'admin control',
  `f_remark` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_record
-- ----------------------------
INSERT INTO `fx_record` VALUES ('3', '2147483647', '1', 'fjwinter', '冯建文', '2', '0', '1.00', '2017-03-23 08:33:51', '1.0803', '1.0810', '0.0000', '1.0819', '1', '2', '1', '0', '');
INSERT INTO `fx_record` VALUES ('19', '9058197011490924484', '1', 'fjwinter', '冯建文', '2', '0', '10.00', '2017-03-31 09:41:24', '1.0982', '1.0690', '1.0310', '1.1025', null, '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('20', '9058197011490924507', '1', 'fjwinter', '冯建文', '2', '0', '10.00', '2017-03-31 09:41:47', '1.0457', '1.0851', '1.0306', '1.1171', null, '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('21', '9058197011490925435', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 09:57:15', '1.0827', '1.0418', '1.0418', '1.0971', '2', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('22', '9058197011490925560', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 09:59:20', '1.1167', '1.0222', '1.0222', '1.1167', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('23', '9058197011490925758', '1', 'fjwinter', '冯建文', '3', '2', '10.00', '2017-03-31 10:02:38', '0.1317', '0.1314', '0.1253', '0.1317', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('24', '9058197011490928545', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 10:49:05', '1.0565', '1.0359', '1.0359', '1.0896', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('25', '9058197011490928814', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 10:53:34', '1.0910', '1.0550', '1.0538', '1.0970', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('26', '9058197011490929043', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 10:57:23', '1.0683', '1.0434', '1.0369', '1.0954', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('27', '9058197011490929648', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:07:28', '1.1166', '1.0583', '1.0170', '1.1166', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('28', '9058197011490929680', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:08:00', '1.0687', '1.0290', '1.0227', '1.1063', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('29', '9058197011490929769', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:09:29', '1.0512', '1.0839', '1.0364', '1.0902', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('30', '9058197011490929816', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:10:16', '1.0767', '1.0463', '1.0381', '1.0948', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('31', '9058197011490929929', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:12:09', '1.0568', '1.0426', '1.0375', '1.0893', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('32', '9058197011490929952', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:12:32', '1.0302', '1.0791', '1.0164', '1.1179', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('33', '9058197011490929961', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:12:41', '1.0748', '1.0992', '1.0354', '1.1129', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('34', '9058197011490930042', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:14:02', '1.0566', '1.0753', '1.0365', '1.0935', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('35', '9058197011490930236', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:17:16', '1.1177', '1.1079', '1.0594', '1.1180', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('36', '9058197011490930293', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:18:13', '1.0652', '1.0507', '1.0163', '1.0967', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('37', '9058197011490930507', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:21:47', '1.0533', '1.0876', '1.0387', '1.0905', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('38', '9058197011490930594', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:23:14', '1.0761', '1.0455', '1.0382', '1.0960', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('39', '9058197011490930643', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:24:03', '1.0444', '1.0928', '1.0375', '1.0976', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('40', '9058197011490930728', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:25:28', '1.0625', '1.0644', '1.0382', '1.0953', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('41', '9058197011490930738', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:25:38', '1.0725', '1.1066', '1.0138', '1.1155', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('42', '9058197011490930743', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:25:43', '1.0930', '1.0176', '1.0176', '1.0993', '2', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('43', '9058197011490930760', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:26:00', '1.0513', '1.0406', '1.0361', '1.0964', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('44', '9058197011490931004', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 11:30:04', '1.1100', '1.1135', '1.0165', '1.1135', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('45', '9058197011490931025', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:30:25', '1.0935', '1.0141', '1.0141', '1.1135', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('46', '9058197011490931038', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:30:38', '1.0987', '1.0163', '1.0163', '1.1199', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('47', '9058197011490931052', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:30:52', '1.0901', '1.0898', '1.0394', '1.0975', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('48', '9058197011490931064', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:31:04', '1.0221', '1.0766', '1.0160', '1.1016', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('49', '9058197011490931077', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:31:17', '1.0684', '1.0887', '1.0350', '1.0887', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('50', '9058197011490931162', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:32:42', '1.0621', '1.0622', '1.0397', '1.0979', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('51', '9058197011490931171', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 11:32:51', '1.0188', '1.0729', '1.0188', '1.1191', '1', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('52', '9058197011490936414', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:00:14', '1.0560', '1.0352', '1.0184', '1.1077', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('53', '9058197011490936441', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:00:41', '1.1118', '1.0890', '1.0247', '1.1118', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('54', '9058197011490936461', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:01:01', '1.0886', '1.0837', '1.0131', '1.0886', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('55', '9058197011490936473', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:01:13', '1.0838', '1.0509', '1.0509', '1.0973', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('56', '9058197011490936482', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:01:22', '1.0945', '1.0728', '1.0344', '1.0945', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('57', '9058197011490936492', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:01:32', '1.0711', '1.0841', '1.0346', '1.0942', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('58', '9058197011490936503', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:01:43', '1.0729', '1.0890', '1.0361', '1.0960', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('59', '9058197011490936512', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:01:52', '1.0872', '1.0289', '1.0286', '1.1136', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('60', '9058197011490936522', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:02:02', '1.1175', '1.0835', '1.0244', '1.1175', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('61', '9058197011490936531', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:02:11', '1.0297', '1.0165', '1.0165', '1.0934', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('62', '9058197011490936541', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:02:21', '1.0593', '1.0928', '1.0422', '1.0972', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('63', '9058197011490938934', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-03-31 13:42:14', '1.0710', '1.0492', '1.0456', '1.0977', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('64', '9058197011490939777', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-03-31 13:56:17', '1.0429', '1.1039', '1.0259', '1.1039', '2', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('65', '9058197011492155856', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 15:44:16', '1.0816', '1.0816', '1.0816', '1.0816', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('66', '9058197011492158001', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:20:01', '1.0651', '1.0651', '1.0651', '1.0651', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('67', '9058197011492158308', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:25:08', '1.0703', '1.0703', '1.0703', '1.0703', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('68', '9058197011492158424', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:27:04', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('69', '9058197011492158477', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:27:57', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('70', '9058197011492158477', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:27:57', '1.0802', '1.0802', '1.0802', '1.0802', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('71', '9058197011492159229', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:40:29', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('72', '9058197011492159725', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:48:45', '1.0670', '1.0670', '1.0670', '1.0670', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('73', '9058197011492159783', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:49:43', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('74', '9058197011492159848', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:50:48', '1.0625', '1.0625', '1.0625', '1.0625', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('75', '9058197011492159854', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 16:50:54', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('76', '9058197011492159960', '1', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 16:52:40', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('77', '9058197011492159963', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:52:43', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('78', '9058197011492160001', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:53:21', '1.1041', '1.1041', '1.1041', '1.1041', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('79', '9058197011492160251', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 16:57:31', '1.0563', '1.0563', '1.0563', '1.0563', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('80', '9058197011492163346', '1', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 17:49:06', '1.0707', '1.0707', '1.0707', '1.0707', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('81', '9058197011492171365', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:02:45', '1.0745', '1.0745', '1.0745', '1.0745', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('82', '9058197011492171925', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:12:05', '1.0740', '1.0740', '1.0740', '1.0740', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('83', '9058197011492171977', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:12:57', '1.0753', '0.0000', '0.0000', '0.0000', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('84', '9058197011492173289', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:34:49', '1.0768', '1.0768', '1.0768', '1.0768', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('85', '9058197011492173391', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:36:31', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('86', '9058197011492173397', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 20:36:37', '1.0768', '1.0768', '1.0768', '1.0768', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('87', '9058197011492173584', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:39:44', '1.0706', '1.0706', '1.0706', '1.0706', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('88', '9058197011492173640', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 20:40:40', '1.0860', '1.0860', '1.0860', '1.0860', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('89', '9058197011492173717', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:41:57', '1.0508', '1.0508', '1.0508', '1.0508', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('90', '9058197011492173732', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 20:42:12', '1.0857', '1.0857', '1.0857', '1.0857', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('91', '9058197011492174170', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:49:30', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('92', '9058197011492174421', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:53:41', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('93', '9058197011492174665', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:57:45', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('94', '9058197011492174769', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 20:59:29', '1.1388', '1.1388', '1.1388', '1.1388', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('95', '9058197011492174973', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 21:02:53', '1.1575', '1.1575', '1.1575', '1.1575', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('96', '9058197011492175022', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-14 21:03:42', '1.1587', '1.1587', '1.1587', '1.1587', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('97', '9058197011492175154', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 21:05:54', '1.0753', '1.0753', '1.0753', '1.0753', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('98', '9058197011492175257', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-14 21:07:37', '1.0772', '1.0772', '1.0772', '1.0772', '0', '0', '0', '0', '');
INSERT INTO `fx_record` VALUES ('99', '9058197011492215849', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 08:24:09', '1.0701', '0.0000', '0.0000', '0.0000', '1', '1', '0', '0', '');
INSERT INTO `fx_record` VALUES ('100', '9058197011492218013', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 09:00:13', '1.0787', '1.0787', '1.0787', '1.0787', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('101', '9058197011492218080', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 09:01:20', '1.1030', '1.1030', '1.1030', '1.1030', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('102', '9058197011492218120', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 09:02:00', '1.0808', '1.0808', '1.0808', '1.0808', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('103', '9058197011492218654', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:10:54', '1.0709', '1.0709', '1.0709', '1.0709', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('104', '9058197011492219032', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:17:12', '1.0759', '1.0759', '1.0759', '1.0759', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('105', '9058197011492219084', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:18:04', '1.0889', '1.0889', '1.0889', '1.0889', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('106', '9058197011492219206', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:20:06', '1.0602', '1.0602', '1.0602', '1.0602', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('107', '9058197011492219299', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:21:39', '1.0173', '1.0173', '1.0173', '1.0173', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('108', '9058197011492219346', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 09:22:26', '1.0886', '1.0886', '1.0886', '1.0886', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('109', '9058197011492219361', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:22:41', '1.0818', '1.0818', '1.0818', '1.0818', '0', '0', '1', '0', '');
INSERT INTO `fx_record` VALUES ('110', '9058197011492219409', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 09:23:29', '1.0808', '1.0842', '0.0000', '1.0904', '2', '1', '1', '0', '');
INSERT INTO `fx_record` VALUES ('111', '9058197011492219599', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 09:26:39', '1.0719', '1.0895', '1.0591', '1.1142', '1', '1', '1', '0', '');
INSERT INTO `fx_record` VALUES ('112', '9058197011492223486', '905819701', 'fjwinter', '冯建文', '2', '1', '10.00', '2017-04-15 10:31:26', '1.0808', '1.1043', '1.0574', '1.1043', '1', '1', '1', '0', '');
INSERT INTO `fx_record` VALUES ('113', '9058197011492223621', '905819701', 'fjwinter', '冯建文', '2', '2', '10.00', '2017-04-15 10:33:41', '1.0717', '1.1158', '1.0717', '1.1374', '2', '1', '1', '0', '');
INSERT INTO `fx_record` VALUES ('114', '9058197011492250714', '905819701', 'fjwinter', '冯建文', '4', '2', '10.00', '2017-04-15 18:05:14', '0.0094', '0.0079', '0.0079', '0.0095', '1', '1', '1', '0', '');

-- ----------------------------
-- Table structure for fx_role
-- ----------------------------
DROP TABLE IF EXISTS `fx_role`;
CREATE TABLE `fx_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_role
-- ----------------------------
INSERT INTO `fx_role` VALUES ('1', '管理员', '0', '1', '管理员');

-- ----------------------------
-- Table structure for fx_role_user
-- ----------------------------
DROP TABLE IF EXISTS `fx_role_user`;
CREATE TABLE `fx_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for fx_soft
-- ----------------------------
DROP TABLE IF EXISTS `fx_soft`;
CREATE TABLE `fx_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text,
  `content` text COMMENT '内容',
  `updatelog` text COMMENT '更新日志',
  `downlink` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `softtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '软件类型',
  `copytype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '语言',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '运行环境',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `officialurl` varchar(100) NOT NULL DEFAULT '' COMMENT '官方网站',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_soft
-- ----------------------------

-- ----------------------------
-- Table structure for fx_special
-- ----------------------------
DROP TABLE IF EXISTS `fx_special`;
CREATE TABLE `fx_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `shorttitle` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `filename` varchar(60) DEFAULT '',
  `template` varchar(60) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_special
-- ----------------------------

-- ----------------------------
-- Table structure for fx_temp_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_temp_record`;
CREATE TABLE `fx_temp_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_time` varchar(32) NOT NULL,
  `fbuypri2` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri3` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri4` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri5` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri6` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri7` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri8` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri9` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri10` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri11` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri12` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri13` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri14` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri15` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri16` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri17` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri18` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri19` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri20` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  `fbuypri21` float(8,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_temp_record
-- ----------------------------
INSERT INTO `fx_temp_record` VALUES ('1', '2017-04-15 18:06:13', '1.0278', '0.1341', '0.0079', '1.1460', '0.7856', '0.7590', '0.0265', '0.7536', '1.1224', '0.1134', '0.1073', '0.1383', '0.0000', '0.0203', '0.1402', '0.6560', '0.0762', '0.2086', '0.0187', '0.0000');
INSERT INTO `fx_temp_record` VALUES ('2', '2017-04-15 18:06:16', '1.0348', '0.1305', '0.0077', '1.1623', '0.7914', '0.7490', '0.0272', '0.7665', '1.0944', '0.1146', '0.1051', '0.1382', '0.0000', '0.0204', '0.1374', '0.6741', '0.0772', '0.2134', '0.0181', '0.0000');
INSERT INTO `fx_temp_record` VALUES ('3', '2017-04-15 18:06:18', '1.0582', '0.1274', '0.0074', '1.1497', '0.7877', '0.7479', '0.0268', '0.7811', '1.1185', '0.1149', '0.1067', '0.1388', '0.0000', '0.0201', '0.1408', '0.6670', '0.0763', '0.2097', '0.0185', '0.0000');
INSERT INTO `fx_temp_record` VALUES ('4', '2017-04-15 18:07:59', '1.0440', '0.1266', '0.0089', '1.2861', '0.7737', '0.7330', '0.0283', '0.7166', '0.9666', '0.1078', '0.1127', '0.1431', '0.0000', '0.0198', '0.1283', '0.7172', '0.0743', '0.2247', '0.0179', '0.0009');
INSERT INTO `fx_temp_record` VALUES ('5', '2017-04-15 18:08:01', '1.0238', '0.1237', '0.0088', '1.2793', '0.7642', '0.7306', '0.0290', '0.7263', '0.9560', '0.1067', '0.1115', '0.1449', '0.0000', '0.0196', '0.1277', '0.7271', '0.0740', '0.2274', '0.0178', '0.0009');
INSERT INTO `fx_temp_record` VALUES ('6', '2017-04-15 18:08:04', '1.0459', '0.1200', '0.0089', '1.2655', '0.7853', '0.7280', '0.0296', '0.7217', '0.9617', '0.1061', '0.1106', '0.1465', '0.0000', '0.0191', '0.1249', '0.7123', '0.0733', '0.2254', '0.0178', '0.0008');
INSERT INTO `fx_temp_record` VALUES ('7', '2017-04-15 18:08:06', '1.0314', '0.1185', '0.0086', '1.2960', '0.7902', '0.7437', '0.0303', '0.7274', '0.9662', '0.1031', '0.1126', '0.1505', '0.0000', '0.0187', '0.1228', '0.7331', '0.0746', '0.2200', '0.0174', '0.0007');
INSERT INTO `fx_temp_record` VALUES ('8', '2017-04-15 18:08:09', '1.0120', '0.1153', '0.0088', '1.3142', '0.7788', '0.7618', '0.0306', '0.7353', '0.9760', '0.1008', '0.1118', '0.1466', '0.0000', '0.0190', '0.1249', '0.7397', '0.0739', '0.2162', '0.0179', '0.0007');
INSERT INTO `fx_temp_record` VALUES ('9', '2017-04-15 18:08:12', '1.0106', '0.1148', '0.0089', '1.2758', '0.7564', '0.7566', '0.0297', '0.7462', '0.9944', '0.1000', '0.1118', '0.1455', '0.0000', '0.0189', '0.1226', '0.7507', '0.0739', '0.2139', '0.0183', '0.0006');
INSERT INTO `fx_temp_record` VALUES ('10', '2017-04-15 18:08:14', '1.0397', '0.1166', '0.0089', '1.2637', '0.7359', '0.7598', '0.0292', '0.7420', '1.0017', '0.1001', '0.1084', '0.1413', '0.0000', '0.0186', '0.1206', '0.7590', '0.0723', '0.2098', '0.0186', '0.0005');
INSERT INTO `fx_temp_record` VALUES ('11', '2017-04-15 18:11:01', '1.0827', '0.1320', '0.0091', '1.2392', '0.7585', '0.7541', '0.0281', '0.7083', '1.0200', '0.1077', '0.1159', '0.1461', '0.0000', '0.0198', '0.1272', '0.7064', '0.0737', '0.2276', '0.0176', '0.0009');
INSERT INTO `fx_temp_record` VALUES ('12', '2017-04-15 18:11:03', '1.0693', '0.1324', '0.0090', '1.2411', '0.7734', '0.7692', '0.0276', '0.7004', '1.0009', '0.1054', '0.1175', '0.1473', '0.0000', '0.0202', '0.1269', '0.7106', '0.0749', '0.2324', '0.0174', '0.0009');
INSERT INTO `fx_temp_record` VALUES ('13', '2017-04-15 18:11:08', '1.0626', '0.1359', '0.0088', '1.2609', '0.7674', '0.7524', '0.0279', '0.6809', '0.9780', '0.1048', '0.1147', '0.1513', '0.0000', '0.0205', '0.1240', '0.6985', '0.0763', '0.2343', '0.0178', '0.0008');

-- ----------------------------
-- Table structure for fx_time_kind
-- ----------------------------
DROP TABLE IF EXISTS `fx_time_kind`;
CREATE TABLE `fx_time_kind` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `minutes` int(4) unsigned NOT NULL,
  `percent` float(2,2) unsigned NOT NULL DEFAULT '0.00',
  `type` int(2) unsigned DEFAULT NULL,
  `status` int(1) unsigned DEFAULT '0',
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_time_kind
-- ----------------------------
INSERT INTO `fx_time_kind` VALUES ('1', 'M_1', '1min', '1', '0.76', '1', '1', '');
INSERT INTO `fx_time_kind` VALUES ('2', 'M_2', '2min', '2', '0.76', '2', '0', '');
INSERT INTO `fx_time_kind` VALUES ('3', 'M_3', '3min', '3', '0.76', '3', '1', null);
INSERT INTO `fx_time_kind` VALUES ('4', 'M_4', '4min', '4', '0.76', '4', '0', null);
INSERT INTO `fx_time_kind` VALUES ('5', 'M_5', '5min', '5', '0.76', '5', '1', null);
INSERT INTO `fx_time_kind` VALUES ('6', 'M_10', '10min', '10', '0.76', '6', '1', null);
INSERT INTO `fx_time_kind` VALUES ('7', 'M_15', '15min', '15', '0.76', '7', '1', null);
INSERT INTO `fx_time_kind` VALUES ('8', 'M_30', '30min', '30', '0.76', '8', '1', null);

-- ----------------------------
-- Table structure for fx_uncharge_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_uncharge_record`;
CREATE TABLE `fx_uncharge_record` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `accountid` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `uncharge_usd` float(10,2) unsigned NOT NULL COMMENT '出金金额',
  `forex` float(10,4) unsigned NOT NULL COMMENT '当前汇率',
  `uncharge_rmb` float(10,2) unsigned NOT NULL COMMENT '出金人民币',
  `id_card_no` int(32) unsigned NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_uncharge_record
-- ----------------------------

-- ----------------------------
-- Table structure for fx_user
-- ----------------------------
DROP TABLE IF EXISTS `fx_user`;
CREATE TABLE `fx_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '系统编号',
  `accountid` varchar(20) NOT NULL DEFAULT '' COMMENT '注册账号',
  `nickname` varchar(20) DEFAULT '',
  `password` char(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `headimg` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `regdate` varchar(32) NOT NULL,
  `regtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `logintime` int(10) unsigned DEFAULT '0',
  `loginip` varchar(20) DEFAULT '',
  `loginnum` mediumint(8) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `islock` tinyint(1) unsigned DEFAULT '0' COMMENT '是否封号',
  `position_id` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '职位编号',
  `position` varchar(32) NOT NULL DEFAULT '' COMMENT '职位',
  `percent` float(3,2) NOT NULL DEFAULT '0.10' COMMENT '佣金收取比例',
  `new_position_id` int(1) unsigned DEFAULT NULL COMMENT '申请职位的ID',
  `mobile` varchar(11) NOT NULL DEFAULT '0' COMMENT '手机号',
  `introduction` varchar(20) NOT NULL DEFAULT '0' COMMENT '推荐人',
  `id_number` varchar(18) NOT NULL,
  `id_front` varchar(128) NOT NULL DEFAULT '' COMMENT '身份证正面',
  `id_reverse` varchar(128) NOT NULL DEFAULT '' COMMENT '身份证反面',
  `encrypt` varchar(6) NOT NULL DEFAULT '' COMMENT '加密方式',
  `idcard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证图片信息',
  `remark` varchar(500) DEFAULT NULL COMMENT '各种备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_user
-- ----------------------------
INSERT INTO `fx_user` VALUES ('1', '905819701', 'fjwinter', '冯建文', 'b16520bb051f13a1a2dc57a3c4165491', null, '1008.60', '0', '', '', '1489372352', '0', '127.0.0.1', '12', '3', '1', '1', 'CO', '0.10', '0', '15689460315', '905819701', '', '/Public/Uploads/IDcard/fjwinter.jpg', '', '', '', '');
INSERT INTO `fx_user` VALUES ('2', '979043572', 'fjwcoder', '冯建文', 'b16520bb051f13a1a2dc57a3c4165491', null, '0.00', '0', '', '2017-03-21 17:13:49', '1490087629', '0', '', '0', '0', '0', '1', 'CO', '0.10', null, '15689460315', '905819701', '370781199201040019', '/Public/Uploads/IDcard/fjwcoder0.jpg', '/Public/Uploads/IDcard/fjwcoder0.jpg', '', '', null);
INSERT INTO `fx_user` VALUES ('3', '909143063', 'test1', '冯建文', 'b16520bb051f13a1a2dc57a3c4165491', null, '0.00', '0', '', '2017-03-21 17:19:17', '1490087957', '0', '', '0', '0', '0', '1', 'CO', '0.10', null, '15689460315', '905819701', '3707', '/Public/Uploads/IDcard/test10.jpg', '/Public/Uploads/IDcard/test10.jpg', '', '', null);
INSERT INTO `fx_user` VALUES ('4', '894256594', 'test2', '冯', 'd5c186983b52c4551ee00f72316c6eaa', null, '0.00', '0', '', '2017-03-21 17:21:17', '1490088077', '0', '', '0', '0', '0', '1', 'CO', '0.10', null, '15689460315', '905819701', '321', '/Public/Uploads/IDcard/test20.jpg', '/Public/Uploads/IDcard/test20.jpg', '', '', null);
INSERT INTO `fx_user` VALUES ('5', '885824585', 'test', '冯', 'd5c186983b52c4551ee00f72316c6eaa', null, '0.00', '0', '', '2017-03-22 08:53:28', '1490144008', '0', '', '0', '0', '0', '1', 'CO', '0.10', null, '15689460315', '905819701', '3707', '/Public/Uploads/IDcard/test0.jpg', '/Public/Uploads/IDcard/test1.jpg', '', '', null);
INSERT INTO `fx_user` VALUES ('6', '482901006', 'test4', '冯', 'd5c186983b52c4551ee00f72316c6eaa', null, '0.00', '0', '', '2017-03-22 08:55:54', '1490144154', '0', '', '0', '0', '0', '1', 'CO', '0.10', null, '15689460315', '905819701', '3707', '/Public/Uploads/IDcard/test40.jpg', '/Public/Uploads/IDcard/test41.jpg', '', '', null);
