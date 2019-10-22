/*
 Navicat Premium Data Transfer

 Source Server         : WYH
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : 127.0.0.1:3306
 Source Schema         : miui

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 20/10/2019 15:45:00
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `data1` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data2` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data3` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data4` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data5` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data6` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data7` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('[{\"href\":\"https://www.mi.com/redmik20pro-prime\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec551f3400072a2009ea4ee56db8a973.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"https://www.mi.com/a/h/9819.html\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/3e63ab43e7c32296f18f34c8efb41534.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"//item.mi.com/10025.html\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/59e8fc8ba9718c266882719fb4bbcedd.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"//www.mi.com/a/h/12065.html\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cc31874e38ff756bee7060695109571a.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"https://www.mi.com/airenergy/\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/89c2a209b742fce9b10d9d196149d634.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"//item.mi.com/10327.html\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/10fb0086cb21120c53248a3d8cc56dc5.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]', '[{\"href\":\"//item.mi.com/9836.html\",\"src\":\"//cdn.cnbj1.fds.api.mi-img.com/mi-mall/88e35cffc82cd98cd53172460067af17.jpg?thumb:1&w:1226&h:120&f:webp&q:90\"}]');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) NULL DEFAULT NULL,
  `num` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (6, 2, 5);
INSERT INTO `cart` VALUES (8, 1, 17);

-- ----------------------------
-- Table structure for data1
-- ----------------------------
DROP TABLE IF EXISTS `data1`;
CREATE TABLE `data1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data1
-- ----------------------------
INSERT INTO `data1` VALUES (13, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/82abdba456e8caaea5848a0cddce03db.png?w=48&h=48', '小米秒杀', 'https://www.mi.com/seckill/');
INSERT INTO `data1` VALUES (14, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/806f2dfb2d27978e33fe3815d3851fa3.png?w=48&h=48', '企业团购', 'https://qiye.mi.com/');
INSERT INTO `data1` VALUES (15, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eded6fa3b897a058163e2485532c4f10.png?w=48&h=48', 'F码通道', 'https://www.mi.com/order/fcode');
INSERT INTO `data1` VALUES (16, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/43a3195efa6a3cc7662efed8e7abe8bf.png?w=48&h=48', '米粉卡', 'https://www.mi.com/mimobile/');
INSERT INTO `data1` VALUES (17, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f4846bca6010a0deb9f85464409862af.png?w=48&h=48', '以旧换新', 'https://huanxin.mi.com/');
INSERT INTO `data1` VALUES (18, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a76d7636b08e0988efb4fc384ae497b.png?w=48&h=48', '话费充值', 'https://recharge.10046.mi.com/');
INSERT INTO `data1` VALUES (19, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b7e3eb789b2050d0975fda0474a1c79f.jpg?w=632&h=340', 'banner-nav', '');
INSERT INTO `data1` VALUES (20, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7b51b721c3319e9c2916cc41cd9c695.jpg?w=632&h=340', 'banner-nav', '');
INSERT INTO `data1` VALUES (21, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/816a66edef10673b4768128b41804cae.jpg?w=632&h=340', 'banner-nav', '');

-- ----------------------------
-- Table structure for data2
-- ----------------------------
DROP TABLE IF EXISTS `data2`;
CREATE TABLE `data2`  (
  `data1` varchar(2550) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data2` varchar(2550) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data2
-- ----------------------------
INSERT INTO `data2` VALUES ('[{\"name\":\"小米秒杀\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/82abdba456e8caaea5848a0cddce03db.png?w=48&h=48\",\"href\":\"https://www.mi.com/seckill/\"},{\"name\":\"企业团购\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/806f2dfb2d27978e33fe3815d3851fa3.png?w=48&h=48\",\"href\":\"https://qiye.mi.com/\"},{\"name\":\"F码通道\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eded6fa3b897a058163e2485532c4f10.png?w=48&h=48\",\"href\":\"https://www.mi.com/order/fcode\"},{\"name\":\"米粉卡\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/43a3195efa6a3cc7662efed8e7abe8bf.png?w=48&h=48\",\"href\":\"https://www.mi.com/mimobile/\"},{\"name\":\"以旧换新\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f4846bca6010a0deb9f85464409862af.png?w=48&h=48\",\"href\":\"https://huanxin.mi.com/\"},{\"name\":\"话费充值\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a76d7636b08e0988efb4fc384ae497b.png?w=48&h=48\",\"href\":\"https://recharge.10046.mi.com/\"}]', '[{\"name\":\"banner-nav\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b7e3eb789b2050d0975fda0474a1c79f.jpg?w=632&h=340\"},{\"name\":\"banner-nav\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7b51b721c3319e9c2916cc41cd9c695.jpg?w=632&h=340\"},{\"name\":\"banner-nav\",\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/816a66edef10673b4768128b41804cae.jpg?w=632&h=340\"}]');

-- ----------------------------
-- Table structure for data_classify
-- ----------------------------
DROP TABLE IF EXISTS `data_classify`;
CREATE TABLE `data_classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_classify
-- ----------------------------
INSERT INTO `data_classify` VALUES (1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/41c566d825a3ae3b5751a78d4c7cffdb.png?thumb=1&w=160&h=110&f=webp&q=90', '小米9 Pro 5G', '3699元起', '小米手机');
INSERT INTO `data_classify` VALUES (2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5d19da60f9f62eb2aa5dcdbd7df19f0f.png?thumb=1&w=160&h=110&f=webp&q=90', '小米MIX Alpha', '19999元', '小米手机');
INSERT INTO `data_classify` VALUES (3, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f515ab05232ed14ccd78ec67e024495a.png?thumb=1&w=160&h=110', '小米CC9', '1799元起', '小米手机');
INSERT INTO `data_classify` VALUES (4, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/df9b3e7a562e02a33eb069b3f0119815.png?thumb=1&w=160&h=110', '小米CC9e', '1199元起', '小米手机');
INSERT INTO `data_classify` VALUES (5, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/b02f50c9dd2e01c139a06a12502755ef.png?thumb=1&w=160&h=110', '小米CC9 美图定制版', '2599元', '小米手机');
INSERT INTO `data_classify` VALUES (6, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2c9307e9690dfbca39d8de770a7a8664.png?thumb=1&w=160&h=110', '小米9', '2799元起', '小米手机');
INSERT INTO `data_classify` VALUES (7, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/398311b2e6f47ac324ba0421a0ac1b80.png?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi 8A', '699元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (8, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a9734e0314fec470ff6912a8a92da5e6.png?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi 8', '799元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (9, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c1937ecb7e9b8e1aee11d6936e19d53c.png?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi K20 Pro 尊享版', '2699元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (10, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8ee0af37bbd2f5a83c799e87dd791037.png?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi Note 8 Pro', '1399元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (11, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/dacd6a3d8440b7a038e9778702bd6db6.png?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi Note 8', '999元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (12, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f69828396fcd1e05b932778f4fca4409.jpg?thumb=1&w=160&h=110', 'Redmi K20 Pro ', '2299元起', 'Redmi手机');
INSERT INTO `data_classify` VALUES (13, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6917267948c54c647d2009a98637aac6.jpg?thumb=1&w=160&h=110&f=webp&q=90', 'Redmi 红米电视 70英寸 R70A', '3799元', '电视');
INSERT INTO `data_classify` VALUES (14, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/00f597a8725eee9245e383c35cd4f7b6.jpg?thumb=1&w=160&h=110', '小米壁画电视 65英寸', '6999元', '电视');
INSERT INTO `data_classify` VALUES (15, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/a40904b6a053b73b631a152334388d0e.jpg?thumb=1&w=160&h=110', '小米全面屏电视E55A', '1799元', '电视');
INSERT INTO `data_classify` VALUES (16, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/e8f4e22f6d591825f8f150b3309c750b.png?thumb=1&w=160&h=110', '小米电视4A 32英寸', '699元', '电视');
INSERT INTO `data_classify` VALUES (17, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bf72a3e9a6e799cb71ecfa7d80465351.jpg?thumb=1&w=160&h=110', '小米电视4A 55英寸', '1699元', '电视');
INSERT INTO `data_classify` VALUES (18, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bd922870295a97a0972eaba5af92129e.jpg?thumb=1&w=160&h=110', '小米电视4A 65英寸', '2699元', '电视');
INSERT INTO `data_classify` VALUES (19, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6a25f895ad6019c3fae32fd1f48a2c7c.png?thumb=1&w=160&h=110&f=webp&q=90', 'RedmiBook 14 增强版 ', '3999元起', '笔记本');
INSERT INTO `data_classify` VALUES (20, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/33c6a31aaee90164ce963801bec48e64.png?thumb=1&w=160&h=110&f=webp&q=90', '游戏本2019款', '7499元起', '笔记本');
INSERT INTO `data_classify` VALUES (21, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/95c4329ce2c454e2a5fa1e0931528a46.png?thumb=1&w=160&h=110', '小米笔记本Air 12.5\"', '3499元起', '笔记本');
INSERT INTO `data_classify` VALUES (22, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/96108a8feee8e790389b09b8b949fa7d.png?thumb=1&w=160&h=110', '小米笔记本 Air 13.3\"', '4499元起', '笔记本');
INSERT INTO `data_classify` VALUES (23, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bb159dbe860ee434b52d8eed9e9fd424.png?thumb=1&w=160&h=110', '小米笔记本 15.6\"', '3899元起', '笔记本');
INSERT INTO `data_classify` VALUES (24, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/d712f71b3c4a3b562601c2b956a660ad.png?thumb=1&w=160&h=110', '小米笔记本Pro 15.6\"', '5499元起', '笔记本');
INSERT INTO `data_classify` VALUES (25, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03dc85cd792904ddc8027b2d781beed8.png?thumb=1&w=160&h=110&f=webp&q=90', '米家互联网空调C1（一级能效）', '2599元', '家电');
INSERT INTO `data_classify` VALUES (26, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/e06b219c5bced9256467b17738a943c6.png?thumb=1&w=160&h=110', '米家互联网空调（一级能效）', '2399元', '家电');
INSERT INTO `data_classify` VALUES (27, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/c5d772b7c2a159c3ed7d4e31bd293f18.jpg?thumb=1&w=160&h=110', 'Redmi全自动波轮洗衣机1A', '699元', '家电');
INSERT INTO `data_classify` VALUES (28, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/11b8bca444aba2994fe852993eac9203.png?thumb=1&w=160&h=110', '米家互联网洗烘一体机10kg', '1899元', '家电');
INSERT INTO `data_classify` VALUES (29, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/486a2a7359b6bda95b3dbd4e45b9c50a.jpg?thumb=1&w=160&h=110', '小米净水器', '1599元', '家电');
INSERT INTO `data_classify` VALUES (30, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/4ae019eebf10a55f8df2fee8d19b4e1f.jpg?thumb=1&w=160&h=110', '米家扫地机器人', '1499元', '家电');
INSERT INTO `data_classify` VALUES (31, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5dd23c09b7eb6471968537fdce629194.png?thumb=1&w=160&h=110&f=webp&q=90', '小米路由器AC2100', '229元', '路由器');
INSERT INTO `data_classify` VALUES (32, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/ec5be5f93ac0118aeec27b8df4337fc9.jpg?thumb=1&w=160&h=110', '小米路由器 Mesh', '999元', '路由器');
INSERT INTO `data_classify` VALUES (33, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/026a28fc18eff2cfa4d26a799a2da9cc.jpg?thumb=1&w=160&h=110', '小米路由器4A 千兆版', '149元', '路由器');
INSERT INTO `data_classify` VALUES (34, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/28efac56ef4c4942077dac7e30e8c624.jpg?thumb=1&w=160&h=110', '小米路由器 4C', '59元', '路由器');
INSERT INTO `data_classify` VALUES (35, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/3c3e9f61cc72ccd2a37fc90fed215b66.jpg?thumb=1&w=160&h=110', '小米路由器 4A', '99元', '路由器');
INSERT INTO `data_classify` VALUES (36, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/5fc5ee374e5306aa5513be4f3b560531.png?thumb=1&w=160&h=110', '小米路由器 HD/Pro', '399元起', '路由器');
INSERT INTO `data_classify` VALUES (37, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2a500be4264c692899b25d86c16403f7.jpg?thumb=1&w=160&h=110', '小米米家智能摄像机云台版', '179元', '智能硬件');
INSERT INTO `data_classify` VALUES (38, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/e3fb0886fdb13e5ae784b9713b9a0038.jpg?thumb=1&w=160&h=110', '小米小爱老师', '479元起', '智能硬件');
INSERT INTO `data_classify` VALUES (39, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/5630aa997c82409ee33b2814c7eb2244.jpg?thumb=1&w=160&h=110', '小米米家智能门锁', '1249元起', '智能硬件');
INSERT INTO `data_classify` VALUES (40, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f6e585a4bf5c0f744ca60f19ecd6fadf.jpg?thumb=1&w=160&h=110', '小米小爱触屏音箱', '249元', '智能硬件');
INSERT INTO `data_classify` VALUES (41, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/df136199221a23299bc5348f37230a86.jpg?thumb=1&w=160&h=110', '小爱万能遥控版', '149元', '智能硬件');

-- ----------------------------
-- Table structure for data_list1
-- ----------------------------
DROP TABLE IF EXISTS `data_list1`;
CREATE TABLE `data_list1`  (
  `href` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `p` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `del` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_list1
-- ----------------------------
INSERT INTO `data_list1` VALUES ('https://www.mi.com/mi9pro/', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ca9b4f81af709935556bef9aa21a90e8.jpg?thumb=1&w=200&h=200&f=webp&q=90', '小米9 Pro 5G', '5G双卡全网通，骁龙855Plus', '3699', '');
INSERT INTO `data_list1` VALUES ('https://www.mi.com/redmi8', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d295c4fb500d163a7045dc715b47f808.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi 8', '5000mAh超长续航', '799', '');
INSERT INTO `data_list1` VALUES ('http://www.mi.com/redminote8pro', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6f2493e6c6fe8e2485c407e5d75e3651.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi Note 8 Pro', '6400万全场景四摄', '1399', '');
INSERT INTO `data_list1` VALUES ('http://www.mi.com/redminote8', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4c87947d104ee5833913e4c520108f16.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi Note 8', '千元4800万四摄', '999', '');
INSERT INTO `data_list1` VALUES ('https://www.mi.com/redmik20pro-prime', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8737a33c78a94bc36afb860ab23b3939.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi K20 Pro 尊享版', '骁龙855 Plus， 弹出全面屏', '2699', '');
INSERT INTO `data_list1` VALUES ('https://www.mi.com/redminote7/', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ce61b71e2f81df62bd0c05aaa901d22.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi Note 7', '4800万拍照千元机', '1099', '1399元');
INSERT INTO `data_list1` VALUES ('https://www.mi.com/redmi7/', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9aab8a7fa9005ef918c9aa2d5f17c806.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi 7', '4000mAh超长续航', '699', '799元');
INSERT INTO `data_list1` VALUES ('https://www.mi.com/redmi7a/', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3c1af9783bdc53ed843af5655ca92009.jpg?thumb=1&w=200&h=200&f=webp&q=90', 'Redmi 7A', '小巧大电量 持久流畅', '579', '599元');

-- ----------------------------
-- Table structure for datalist
-- ----------------------------
DROP TABLE IF EXISTS `datalist`;
CREATE TABLE `datalist`  (
  `src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Span` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `del` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of datalist
-- ----------------------------
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1555902841.82517552.jpg?thumb=1&w=200&h=200', 'MIJOY 胶带座套装 白色', '结实耐用 轻松便捷', '9.9', '19.9元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/9085cddd-530a-0bf0-8b09-74e96fa97cc9.jpg?thumb=1&w=200&h=200', '小米WiFi放大器Pro 黑色', '轻松扩展WiFi信号', '59', '79元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560230039.28979252.jpg?thumb=1&w=200&h=200', '小米小爱音箱 Play（白色）量产版 白色', '听音乐、语音遥控家电', '99', '169元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1551343984.14546114.jpg?thumb=1&w=200&h=200', '高品质多功能头戴耳机', '我的私人KTV', '199', '249元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1567393585.49577260.jpg?thumb=1&w=200&h=200', '小米米家智能摄像机云台版 白', '高清画质，守护家的每一面', '179', '199元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8ecfb7d29b51371785de8b83d05b6428.jpg?thumb=1&w=200&h=200&f=webp&q=90', '米兔点读笔 蓝色', '一点即读，让美好发声', '189', '199元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1550719656.70567332.jpg?thumb=1&w=200&h=200', '小米小爱触屏音箱 白色', '好听，更好看', '249', '299元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1545886063.61333170.jpg?thumb=1&w=200&h=200', '米家电暖器 白色', '整屋均匀升温', '339', '349元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1553768749.5774078.jpg?thumb=1&w=200&h=200', '小米旅行箱 青春款 20英寸 黄色 20寸', '环保材料，轻便重量', '199', '249元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1522071421.29489244.jpg?thumb=1&w=200&h=200', '米兔遥控小飞机 白色', '迷你酷玩具，溜到飞起', '389', '399元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1566614515.33746420.png?thumb=1&w=200&h=200', '米家无线除螨仪 白色', '每个家庭都需要一台除螨仪', '499', '549元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1541382619.46034561.png?thumb=1&w=200&h=200', '米兔折叠婴儿推车 灰色', '出发去向往的地方', '669', '699元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/T1X7V_BsJv1RXrhCrK.jpg?thumb=1&w=200&h=200', '米家压力IH电饭煲', '智能烹饪', '799', '999元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560222640.90428593.jpg?thumb=1&w=200&h=200', '小米小爱老师 4G版 白色', '口袋里的英语外教', '979', '999元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1555581865.08163569.jpg?thumb=1&w=200&h=200', '米家走步机 银灰色', '不足半平米 走出好身材', '1699', '1799元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560232653.29021311.jpg?thumb=1&w=200&h=200', '烟灶套装（天然气）', '点火排烟，风随火动', '1999', '2298元', 'https://www.mi.com/seckill/');
INSERT INTO `datalist` VALUES ('https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cd2aa2dcad6440b469c22e27db9b6236.jpg?thumb=1&w=200&h=200&f=webp&q=90', '小米笔记本电脑 15.6\" i3 4G 128G 深空灰', '全面均衡的国民轻薄本', '2799', '3399元', 'https://www.mi.com/seckill/');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `good_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `disCount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `shopName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/0b67d91286e8c893c612474c80eb2b36.jpg?w=1212&h=716', '小米移动电源3 20000mAh 高配版', '大容量， 一个就够用 ', '199', '20万+评论', '小米自营');
INSERT INTO `goods` VALUES ('4', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f7c0b23adb17136e864f4fd53fd66107.jpg?w=1212&h=716', '小米移动电源3 10000mAh', '双向18W快充 / 输入输出双接口 / 可上飞机， 安全贴心 ', '129', '20万+评论', '小米自营');
INSERT INTO `goods` VALUES ('5', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/cba128c2bd5a257ebacfa8a3f5abce45.jpg?w=1212&h=716', '小米USB充电器30W快充版（1A1C）', '多一种接口，多一种选择  ', '59', '20万+评论', '小米自营');
INSERT INTO `goods` VALUES ('1', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e1e64dcb69a2f8fdc95d8399c23ce400.jpg?w=1212&h=716', '小米无线充电宝 10000mAh', '迄今为止小米最强充电宝 ', '149', '20万+评论', '皮皮虾');
INSERT INTO `goods` VALUES ('6', 'https://i8.mifile.cn/b2c-mimall-media/69c6ee62aea1913137273f242231a413.jpg?w=1212&h=716', '小米 Type C USB数据线', '快速充电，稳定传输 ', '16.9', '20万+评论', '小米自营');
INSERT INTO `goods` VALUES ('6', 'https://i8.mifile.cn/b2c-mimall-media/69c6ee62aea1913137273f242231a413.jpg?w=1212&h=716', '小米 Type C USB数据线', '快速充电，稳定传输 ', '16.9', '20万+评论', '小米自营');
INSERT INTO `goods` VALUES ('2', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f5cb09cab3df90b4bff5bd44c128bc26.jpg?w=1212&h=716', '20W 小米无线充电器', 'Qi 充电标准，兼容更多 ', '99', '20万+评论', '王老五');

-- ----------------------------
-- Table structure for main
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main`  (
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tabs` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `list_left` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `list_right` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES ('家电', '[\"热门\",\"影音\"]', '[{\"src\":\"https: //cdn.cnbj1.fds.api.mi-img.com/mi-mall/b56fd90a60e3d9e5d87dae9fbd427ea8.jpg?thumb=1&w=234&h=300&f=webp&q=90\"},{\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a55e311192b618d0c3c243a310fb6648.jpg?thumb=1&w=234&h=300&f=webp&q=90\"}]', '{\"\":[{\"src\":\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8ce424d6fe93dfb74733b5838140b7ee.jpg?thumb=1&w=200&h=200&f=webp&q=90\",\"h3\":\"米家互联网空调C1（一级能效）\",\"desc\":\"变频节能省电，自清洁\",\"priceA\":\"2599元\",\"priceB\":\"2799元\"}');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES (1, '15507792236');
INSERT INTO `phone` VALUES (20, '13978059484');
INSERT INTO `phone` VALUES (21, '15078077966');
INSERT INTO `phone` VALUES (22, '18278886018');
INSERT INTO `phone` VALUES (23, '16999993366');
INSERT INTO `phone` VALUES (24, '13345678911');

SET FOREIGN_KEY_CHECKS = 1;
