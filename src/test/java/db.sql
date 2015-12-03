/*
Navicat MySQL Data Transfer

Source Server         : appadmin--server
Source Server Version : 50622
Source Host           : appmgr.cyueuynavgb6.rds.cn-north-1.amazonaws.com.cn:3306
Source Database       : appmgr

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-06-08 17:06:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ad`
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id` varchar(32) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `png_path` varchar(150) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `up_time` datetime DEFAULT NULL,
  `off_time` datetime DEFAULT NULL,
  `show_time` int(11) DEFAULT '0',
  `show_count` int(11) DEFAULT '0',
  `click` int(11) DEFAULT NULL,
  `link_type` varchar(1) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('093f2f97d1f24348a7771cfdef1e1daa', 'b962df59-c2af-4f23-8140-2d851347f250', 'asdf', 's', 'ss', 'ddd', 'http://7xir60.com1.z0.glb.clouddn.com/0adce248-98b2-4470-81fd-16801e51b2f2', '0', null, null, '0', '0', '0', '0', 'http://www.csdn.net/');
INSERT INTO `ad` VALUES ('1', '1', '金立智能手机广告', '金立手机', 'china', 'zh', 'http://7xir60.com1.z0.glb.clouddn.com/64d3324d-1dec-445c-b918-659c84bdf7e8', '2', '2015-05-31 00:00:00', '2015-06-04 00:00:00', '0', '0', '100', null, null);
INSERT INTO `ad` VALUES ('111fb32858aa467b99dca648e7abb2a0', '38f7ec76-e91f-4d39-a5ff-5f730e560497', 'a', '', 'cn', 'zh_TW', 'http://7xjh9n.com1.z0.glb.clouddn.com/1488782e-1828-473e-8387-877fd023fcc8', '2', '2015-06-08 00:00:00', '2015-06-08 00:00:00', '0', '0', '0', '0', 'http://baidu.com');
INSERT INTO `ad` VALUES ('1ac324a4a50b47efbef08e4d31f5c6dc', 'bc00639f-4bbf-40a5-9ea0-8e67d639860c', '1234567', '0123456', 'aa', 'dd', 'http://7xir60.com1.z0.glb.clouddn.com/f52c3e58-7bb9-417c-85a2-b3679db744b8', '0', null, null, '0', '0', null, '0', 'http://www.9991.com');
INSERT INTO `ad` VALUES ('2', '2', '联想笔记本广告', '联想', 'china', 'zh', 'http://7xir60.com1.z0.glb.clouddn.com/64d3324d-1dec-445c-b918-659c84bdf7e8', '2', '2015-05-31 00:00:00', '2015-06-01 00:00:00', '0', '0', '111', null, null);
INSERT INTO `ad` VALUES ('30d07783192549d3bffda8c4d37b8f21', '05cebeb1-0120-43cb-bc5e-c754a738f861', 's', 'f', 'cn', 'en', 'http://7xjh9n.com1.z0.glb.clouddn.com/ef159cb0-0835-46f3-b3e3-82cc4f858217', '0', null, null, '0', '0', '0', '0', 'd');
INSERT INTO `ad` VALUES ('35683497fd6648e4b7da95e70652596a', '94c35869-6185-49d2-95c0-063b1618d467', '3', '2', 'china', 'zh', 'http://7xir60.com1.z0.glb.clouddn.com/64d3324d-1dec-445c-b918-659c84bdf7e8', '2', '2015-06-02 00:00:00', '2015-06-04 00:00:00', '0', '0', '111', '0', '2');
INSERT INTO `ad` VALUES ('421965266bb6433e9980319c5eb364d3', 'f6342d12-c21a-419a-bbd9-7dbb9aaa347f', 'tcl手机广告', 'tcl手机', 'china', 'zh', 'http://7xir60.com1.z0.glb.clouddn.com/64d3324d-1dec-445c-b918-659c84bdf7e8', '1', '2015-05-31 00:00:00', '2015-06-01 00:00:00', '0', '0', '111', '1', 'http://test.com');
INSERT INTO `ad` VALUES ('58844b0b9bfe4a348741e3ef71475965', '2eeb76b8-1a00-40bb-ab96-3181d1a265ed', 's', 'f', 'cn&us', 'pt', 'http://7xjh9n.com1.z0.glb.clouddn.com/d9df832f-063f-485e-886d-fe9a12bf7fbd', '0', null, null, '0', '0', '0', '0', 'd');
INSERT INTO `ad` VALUES ('6e6e9d4aac604928b007bff8843b34f3', '8302e950-7a62-4f44-a42e-e5e886d3b273', 'test', 'test', 'cn', 'cn', 'http://7xir60.com1.z0.glb.clouddn.com/64d3324d-1dec-445c-b918-659c84bdf7e8', '2', null, null, '0', '0', '111', '1', 'http://test.com');
INSERT INTO `ad` VALUES ('735ab2d4005a449ba4fd4a5f175f4405', '8062edbd-81c8-45ef-bb2a-10738db52046', 's', 'f', 'cn&us', 'fr', 'http://7xjh9n.com1.z0.glb.clouddn.com/f5b07a68-cf53-4dc6-8c7b-8682f92e181c', '0', null, null, '0', '0', '0', '0', 'd');
INSERT INTO `ad` VALUES ('7fe1dc19e1824ff8ac9989b52444ccf1', '0e9bc07c-1ae0-47f5-a723-365873544fbe', 'asdf', 's', '', '', 'http://7xir60.com1.z0.glb.clouddn.com/f2c8c971-e0d9-495c-a47b-69d76177718f', '1', '2015-06-04 00:00:00', null, '0', '0', '0', '0', 'http://www.codeceo.com/article/javascript-performance-tips.html');
INSERT INTO `ad` VALUES ('b2de511518ac460aae144934b2963538', '37e13e20-45a9-4893-a429-3b491024374d', 'dd', 'fds', 'aaa', 'ddd', 'http://7xir60.com1.z0.glb.clouddn.com/fd7c7faf-fe5f-4f75-9b8d-2b4c4822a035', '2', '2015-06-02 00:00:00', '2015-06-04 00:00:00', '0', '0', null, '0', 'ff');
INSERT INTO `ad` VALUES ('baa9b0b9b1da4d2f80c1cd34bc22e59d', '4a43581f-742e-45b2-9732-cf79be9d375f', '1', '222', 'cn', 'zh', 'http://7xjh9n.com1.z0.glb.clouddn.com/96d2dd1d-3d9f-4432-abaf-dbe2f1980987', '0', null, null, '0', '0', '0', '0', '111');
INSERT INTO `ad` VALUES ('cf06f4fff0b3436faf8403903214d2c6', '8065d7c1-701c-4cc7-8626-ce10a388c8ad', 'asdf', 's', 'ss', 'ddd', 'http://7xir60.com1.z0.glb.clouddn.com/d09813a5-648f-402a-b360-6fba17dc2ca5', '1', '2015-06-04 00:00:00', null, '0', '0', '0', '0', 'http://www.csdn.net/');
INSERT INTO `ad` VALUES ('edcdb64d53354475adb5a437a314263d', '2899012c-7d0b-4302-befc-4499caf96857', '1', '1', 'sssss', '1', 'http://7xir60.com1.z0.glb.clouddn.com/b547dd1b-daab-4313-9e33-3d14f41b5da6', '0', null, null, '0', '0', '111', 'n', '1');

-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` varchar(32) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `developer` varchar(30) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `icon_path` varchar(150) DEFAULT NULL,
  `apk_path` varchar(150) DEFAULT NULL,
  `up_time` datetime DEFAULT NULL,
  `off_time` datetime DEFAULT NULL,
  `down` int(11) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `stars` decimal(2,1) DEFAULT NULL,
  `reserve1` varchar(30) DEFAULT NULL,
  `reserve2` varchar(30) DEFAULT NULL,
  `package` varchar(50) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('031952b6d1c0419bbb57e3e2f0e4dd93', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', 'MuPDF', '工具', '0.00', '5105111', '2', 'zh', '', 'google', '', 'x', '67', 'http://7xir60.com1.z0.glb.clouddn.com/aff407ea-f9eb-41ce-9b86-719600bdd411', 'http://7xir60.com1.z0.glb.clouddn.com/dd3afaee-cef9-44a8-be7f-b7999ab61882', '2015-05-18 00:00:00', '2015-05-25 00:00:00', '0', '', null, null, null, 'com.artifex.mupdfdemo', '61');
INSERT INTO `app` VALUES ('05579477f07743189647de41db7b89b4', '7fe05ba2-ceca-3001-1f52-ee71-632ba013', '写字板v1.5', 'app', '0.00', '30700', '0', 'en', '', 'test', '', 'lava', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/5a4dc4ea-8426-47a4-a245-0dd7f4df2a86', 'http://7xir60.com1.z0.glb.clouddn.com/7c4a18ff-9f54-4b9a-aa9b-b3cf5e23b24e', null, null, '0', '', null, null, null, 'textpad.andriod', '6');
INSERT INTO `app` VALUES ('07065927ef7e40cab930e6b6790dcfd8', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '京东', '应用', '0.00', '17254425', '1', 'en', '', '京东', '', 'haocheng', '11', 'http://7xir60.com1.z0.glb.clouddn.com/0f4622fb-dff2-46b8-8ae1-c34491063d3b', 'http://7xir60.com1.z0.glb.clouddn.com/6579e6a8-7e1f-4629-9dbd-7c79c35cfe2d', '2015-04-29 00:00:00', null, '2', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('0e8ddf33179243b7a4d1037e57860be6', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', 'Tencent Video', '视频', '0.00', '12993537', '1', 'zh', '', '腾讯', '', 'tcl', '128', 'http://7xir60.com1.z0.glb.clouddn.com/3241c9de-9805-4c5f-bae4-17beb8596053', 'http://7xir60.com1.z0.glb.clouddn.com/60f8a487-5dd1-42a1-b7bb-c15fe3846236', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'com.tencent.qqlive', '5906');
INSERT INTO `app` VALUES ('153b1433021d45d9bfdb61363879ca81', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', 'WIFI万能钥匙', '应用', '1.00', '6549447', '1', 'zh', '', 'WIFI', '', 'x', '92', 'http://7xir60.com1.z0.glb.clouddn.com/27cc9ac0-fc4d-40e8-a614-caf0a936902d', 'http://7xir60.com1.z0.glb.clouddn.com/cd3d7d04-1ebe-43db-82bb-655f28d7fa54', '2015-05-22 00:00:00', '2015-05-22 00:00:00', '3', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('1edb52c886774ac2ba9e736424c98ff9', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', 'xiaotui_xender', '', '0.00', '7229190', '1', 'en', '', '', '', 'xiaotui', '32', 'http://7xir60.com1.z0.glb.clouddn.com/05882987-86f5-4daf-ae97-9733f071d735', 'http://7xir60.com1.z0.glb.clouddn.com/6dfb8434-8652-475b-8809-ad251bb02d5b', '2015-05-07 00:00:00', '2015-04-30 00:00:00', '0', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('215f8b125f72472ca21c8569dff79179', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', 'Xender', 'app', '0.00', '7327812', '1', 'zh', '', 'Anmobi', '', 'konka', '111', 'http://7xir60.com1.z0.glb.clouddn.com/abe0a6d3-a15d-4994-a01c-cd9ca226c735', 'http://7xir60.com1.z0.glb.clouddn.com/9c765a23-ea0c-419b-aedd-2d9754073818', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('218664eecbe74f57819967ec01171dcc', '77497da1-21ff-7822-f3f6-38c0-259e6d81', 'Xender', 'app', '0.00', '7592261', '1', 'en', '', 'Anmobile', '', 'tecno', '82', 'http://7xir60.com1.z0.glb.clouddn.com/c83d9a24-b620-4046-82f3-784ed19c88f5', 'http://7xir60.com1.z0.glb.clouddn.com/8a485a81-f392-4fcb-9b9e-ecec1eaff7ee', '2015-05-19 00:00:00', null, '0', '', null, null, null, 'cn.xender', '62');
INSERT INTO `app` VALUES ('2c5324a6acbf4f1eba77ed53ed854e8d', '40a1d034-c01f-4099-cc99-d183-10938ace', '微連', 'tool', '0.00', '4018040', '2', 'en', '', 'anqizhilian', '', 'x', '96', 'http://7xir60.com1.z0.glb.clouddn.com/658a4fcb-bd9a-4137-8f3c-64efb2590754', 'http://7xir60.com1.z0.glb.clouddn.com/f5871498-aa5d-48f4-ae1c-3c5206157f2f', '2015-05-27 00:00:00', '2015-05-27 00:00:00', '0', '', null, null, null, 'cc.weline', '1502070001');
INSERT INTO `app` VALUES ('3283e69ec79c4a1980853eaf81557971', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', 'Xender', 'app', '0.00', '7592261', '1', 'zh', '', 'Anmobile', '', 'tecno', '83', 'http://7xir60.com1.z0.glb.clouddn.com/47a7427a-1ea1-4125-9151-ac70b11c0c45', 'http://7xir60.com1.z0.glb.clouddn.com/3704b9b6-6d1d-4d53-9e1c-c465210b0a3c', '2015-05-19 00:00:00', null, '0', '', null, null, null, 'cn.xender', '62');
INSERT INTO `app` VALUES ('35dc6c67f1554a0faab96f2b07287898', 'c80d8410-55e9-c473-f30c-ed33-20c7c0c4', '微連', '社交', '1121.00', '4023808', '0', 'zh', '', '闪传', '', 'xender', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/a0f542ec-76b4-4674-a371-bc263dbbacfe', 'http://7xir60.com1.z0.glb.clouddn.com/f83e4344-799f-4b2a-8a22-92bd9df0093c', null, null, '0', '111', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('393c73fd0d514fa8860987abe085a13c', '9d128152-2872-b090-4900-8e93-893f5a4b', 'Gionee Xender', 'app', '0.00', '8399307', '2', 'en', '', 'Anmobi', '', 'gionee', '141', 'http://7xir60.com1.z0.glb.clouddn.com/503240cb-31b7-4b2e-b3dc-8c6cc5dc2724', 'http://7xir60.com1.z0.glb.clouddn.com/c3510547-62ac-4ffd-9712-ee5699450638', '2015-05-29 00:00:00', '2015-06-08 00:00:00', '0', '', null, null, null, 'cn.andouya', '72');
INSERT INTO `app` VALUES ('3b6d6701201045dcb779fb2d6419f344', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', 'Xender', 'app', '0.00', '8278188', '1', 'en', '', 'Anmobi', '', 'inew', '107', 'http://7xir60.com1.z0.glb.clouddn.com/aea71332-f70f-443a-a531-fcb2d491fdcf', 'http://7xir60.com1.z0.glb.clouddn.com/fda43797-361b-4d33-9114-18c6ebfb726b', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('3df8f2be344d46d79743b816ead4c2fc', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', 'Xender', 'app', '0.00', '8007793', '1', 'zh', '', 'Anmobi', '', 'dingding', '134', 'http://7xir60.com1.z0.glb.clouddn.com/c08d0603-6176-4f20-a049-1b21324c9473', 'http://7xir60.com1.z0.glb.clouddn.com/ec3cf3c7-07b3-4b8e-91b7-d2ed883c620d', '2015-06-02 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('3e660ad77162497583f6456e4d995526', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '记事本', 'app', '0.00', '665524', '1', 'zh', '', 'test', '', 'lava', '139', 'http://7xir60.com1.z0.glb.clouddn.com/f655dacb-a734-4dc7-8f9a-7395f97d6c68', 'http://7xir60.com1.z0.glb.clouddn.com/acc9155b-e8d6-4499-a6f3-9d2125ec7595', '2015-06-03 00:00:00', null, '0', '', null, null, null, 'hq.notepad', '1');
INSERT INTO `app` VALUES ('40a0d4043b234029a06405ebb154d9e2', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '饭本', '', '0.00', '13633494', '1', 'zh', '', '', '', 'xiaotui', '72', 'http://7xir60.com1.z0.glb.clouddn.com/573beb80-a7a7-46f3-a335-760ab4226a91', 'http://7xir60.com1.z0.glb.clouddn.com/69063433-e50e-48e2-b2e4-6ab54378ea72', '2015-05-18 00:00:00', '2015-05-04 00:00:00', '0', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('40c27e7e86c7471689484da1c5d1143d', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', 'Xender', 'app', '0.00', '7706485', '1', 'en', '', 'AnMobi', '', 'wiko', '102', 'http://7xir60.com1.z0.glb.clouddn.com/51efe4bf-4e6d-4faf-a330-9990413f56b5', 'http://7xir60.com1.z0.glb.clouddn.com/ab4b04d2-45f5-47c1-99d3-5a726d59d230', '2015-05-26 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('5292acfed43841dc973e2371d3da39d4', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', 'Cherry Xender', 'app', '0.00', '8399517', '1', 'en', '', 'Anmobi', '', 'cherry', '125', 'http://7xir60.com1.z0.glb.clouddn.com/c4768cce-8610-4af1-9619-dc1dbc38d54b', 'http://7xir60.com1.z0.glb.clouddn.com/864db8b2-3501-4499-8dd8-e02c6e108739', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('54a39090a6b54193b69ac7a28243e2d6', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', 'Cherry Xender', 'app', '0.00', '8399517', '1', 'zh', '', 'Anmobi', '', 'cherry', '126', 'http://7xir60.com1.z0.glb.clouddn.com/4b4ac763-29d0-4501-af12-18ac2d12c50f', 'http://7xir60.com1.z0.glb.clouddn.com/779162fe-c74f-41b0-be1c-d2acf1facf94', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('580afe983a3d4e68bf92fccf0ce2aa21', '7c3d780f-8270-47cf-8e80-eb56906717d9', 'LavaCalculator', 'tool', '0.00', '0', '0', 'zh', '', 'elaine', '', 'lava', '1000', 'null', 'null', null, null, '0', 'good calculator', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('5e89189ecdfb4785802d40b1e7513093', 'd141d2a4-9409-4bd1-e288-9b4b-7a8c1ae1', '百度地图', '应用', '0.00', '33242726', '2', 'zh', '', '百度', '', 'x', '40', 'http://7xir60.com1.z0.glb.clouddn.com/d88bfa0e-d145-4d02-9b56-afce25a6e264', 'http://7xir60.com1.z0.glb.clouddn.com/993e9b06-c06f-4c4f-b4d3-be5e1fdc138b', '2015-05-14 00:00:00', '2015-05-15 00:00:00', '0', '', null, null, null, 'com.baidu.BaiduMap', '630');
INSERT INTO `app` VALUES ('6730d02ec47d4f64a0bba01619041a4c', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', 'Xender', 'app', '0.00', '7327812', '1', 'en', '', 'Anmobi', '', 'konka', '112', 'http://7xir60.com1.z0.glb.clouddn.com/58ab3a96-a7d7-4426-ba16-d1e2e49ee0de', 'http://7xir60.com1.z0.glb.clouddn.com/7cdcdaac-01c9-4a12-9410-531607c5d426', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('6a69ffff1c464655a8b772fb16a4905f', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '智能键盘专业版', '输入法', '0.00', '701338', '1', 'zh', '', 'android', '', 'x', '81', 'http://7xir60.com1.z0.glb.clouddn.com/66199814-2e9e-4dd1-b7f0-69a2a06a3a05', 'http://7xir60.com1.z0.glb.clouddn.com/7921f02a-435f-443a-b4bb-023a2cc4f52e', '2015-05-13 00:00:00', null, '0', '', null, null, null, 'net.cdeguet.smartkeyboardpro', '133');
INSERT INTO `app` VALUES ('6c6f069ad03f468483bb32d72028437e', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', 'QQ', 'QQ', '10.00', '22848275', '1', 'en', '', 'QQ', '', 'xiaotui', '12', 'http://7xir60.com1.z0.glb.clouddn.com/13267415-3d83-4ef8-933d-d0143c65c137', 'http://7xir60.com1.z0.glb.clouddn.com/7074980d-6301-4aaf-b9a3-9701fe20c167', '2015-04-29 00:00:00', '2015-04-29 00:00:00', '0', 'QQ', null, null, null, null, null);
INSERT INTO `app` VALUES ('6fc87b69ce2743ab831cd468a5e988fc', '021d1324-120d-54da-16a3-6362-8656584b', '抱抱', 'tools', '0.00', '51774373', '1', 'en', '', 'd', '', 'x', '99', 'http://7xir60.com1.z0.glb.clouddn.com/58026ca5-a813-4978-9132-dd981cdd5609', 'http://7xir60.com1.z0.glb.clouddn.com/d3cda80b-5e3a-4a77-b257-94fdfdf1df2f', '2015-05-25 00:00:00', null, '0', '', null, null, null, 'cn.myhug.baobao', '3110');
INSERT INTO `app` VALUES ('739d529865fa46259e522ddf5d7079e7', 'e7f73a96-7045-2bc4-851b-9fa4-95163f5f', 'Xender', 'tool', '0.00', '3926829', '2', 'en', '', 'anqizhilian', '', 'x', '98', 'http://7xir60.com1.z0.glb.clouddn.com/ef301b9a-947c-4a81-aaff-dd1d20d51b7c', 'http://7xir60.com1.z0.glb.clouddn.com/6d8612f5-4870-45db-a419-643bf0c6ce67', '2015-05-25 00:00:00', '2015-05-27 00:00:00', '0', '', null, null, null, 'cn.xender', '53');
INSERT INTO `app` VALUES ('73fbee19bf3d4410a39c0fa842a08992', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', 'QQ', 'QQ', '10.00', '22848275', '1', 'en', '', 'QQ', '', 'jpmob', '7', 'http://7xir60.com1.z0.glb.clouddn.com/431c4e35-d40d-40ba-8766-972a89a760eb', 'http://7xir60.com1.z0.glb.clouddn.com/be2ac96e-ac4c-4621-869d-c4fa84d826a8', '2015-04-29 00:00:00', null, '0', 'QQ', null, null, null, null, null);
INSERT INTO `app` VALUES ('74d1d296f3ff46c7a2fccae602349f4e', 'f3bff758-9ade-8370-44bb-ce83-a132284c', 'Xender', 'app', '0.00', '7354039', '1', 'en', '', 'Anmobi', '', 'tcl', '122', 'http://7xir60.com1.z0.glb.clouddn.com/a7bfab70-faef-457b-b28f-6356f819e89b', 'http://7xir60.com1.z0.glb.clouddn.com/767c229a-07c5-4841-b795-76b0585d4744', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('766229f11d28438dafced3e2ab3a92ff', 'a062f789-fefd-02cf-1519-e784-988526d7', '58', '应用', '0.00', '14378973', '1', 'zh', '', '58', '', 'haocheng', '10', 'http://7xir60.com1.z0.glb.clouddn.com/48a72f72-0149-4eac-86bc-156d3029508c', 'http://7xir60.com1.z0.glb.clouddn.com/08630fb3-9a5d-4a9f-a584-4d49e0e4b5a1', '2015-04-29 00:00:00', null, '2', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('76ec6c3914e8418593fb526add08b8b0', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '微博', '应用', '0.00', '36783923', '1', 'zh', '', '新浪', '', 'x', '65', 'http://7xir60.com1.z0.glb.clouddn.com/e98013a5-e583-4d4f-a5d7-519713ef97d2', 'http://7xir60.com1.z0.glb.clouddn.com/1d040b08-a8d8-4124-953d-a3297c553c32', '2015-05-13 00:00:00', '2015-05-12 00:00:00', '1', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('776842f38ca44e739645319d45aae866', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', 'Xender', 'app', '0.00', '8278188', '1', 'zh', '', 'Anmobi', '', 'inew', '108', 'http://7xir60.com1.z0.glb.clouddn.com/5a96c67a-cbe5-486d-85b7-e71cf18af11d', 'http://7xir60.com1.z0.glb.clouddn.com/5a4674c8-c43b-423c-bbd1-51f4bb6233bb', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('7889533bdb004dea86ccb3e677fc95cb', 'cfda11c3-2cf9-6de1-c90d-0fd0-e2b08bf9', '微連', 'd', '12.00', '4023808', '2', 'zh', '', 'd', '', 'x', '107', 'http://7xir60.com1.z0.glb.clouddn.com/c0d14aee-7cb6-4028-ac1c-74c328b74103', 'http://7xir60.com1.z0.glb.clouddn.com/abbf8333-32d5-4a55-8551-4c7f6b631b4f', '2015-05-28 00:00:00', '2015-05-28 00:00:00', '0', 'fd', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('789906f47107479fbf723579940a6615', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '58', 'app', '0.00', '14378973', '1', 'zh', '', '58', '', 'x', '22', 'http://7xir60.com1.z0.glb.clouddn.com/3a63160e-dfd0-4ed0-875d-330b86aaa011', 'http://7xir60.com1.z0.glb.clouddn.com/2916aca8-9df0-43be-aa1b-26457b244256', '2015-05-07 00:00:00', '2015-05-06 00:00:00', '1', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('791f4eeb904343bc8421ef05b950588c', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', 'Xender', 'app', '0.00', '7592261', '1', 'zh', '', 'Anmobile', '', 'tcl_alcatel', '85', 'http://7xir60.com1.z0.glb.clouddn.com/40bc0bf3-a205-4ec7-9de2-db4b6ec8e8a1', 'http://7xir60.com1.z0.glb.clouddn.com/9de7bcf1-2494-4677-a5e1-efdd5a7c3452', '2015-05-20 00:00:00', null, '0', '', null, null, null, 'cn.xender', '62');
INSERT INTO `app` VALUES ('79a4885d5f9b4230a0d35e9d5f163665', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '微連', '1', '0.00', '4023808', '1', 'zh', '', '2', '', 'xender', '68', 'http://7xir60.com1.z0.glb.clouddn.com/9b742d6f-f7ee-48c5-961d-960322ca78fb', 'http://7xir60.com1.z0.glb.clouddn.com/dda048b7-b640-4f2a-856a-92b486366886', '2015-05-14 00:00:00', null, '0', '3', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('7ab2e7c50251478798017d63fc6dfdab', 'ccd32c45-2241-0df9-63e6-a80b-d50548bf', 'Teen Patti Klub ♠ Lucky', 'Game', '0.00', '6715835', '1', 'en', '', 'Teen', '', 'gionee', '115', 'http://7xir60.com1.z0.glb.clouddn.com/aeb51209-f516-4c00-a4fb-c38f4993e3fa', 'http://7xir60.com1.z0.glb.clouddn.com/4ee04055-1fd4-4ab4-8b6f-d8699f340af7', '2015-06-08 00:00:00', null, '0', '', null, null, null, 'com.coconuttec.teenpatti.klub', '9');
INSERT INTO `app` VALUES ('7c14ef73c98248ef89b0b036ab7b5865', '97dc8992-3283-ac23-96ef-640d-b51c958e', 'WeChat', 'app', '0.00', '35814529', '1', 'zh', '', 'te', '', 'x', '70', 'http://7xir60.com1.z0.glb.clouddn.com/253351f6-94b2-49c4-b4fd-e1c2e77b4a22', 'http://7xir60.com1.z0.glb.clouddn.com/ca889915-5393-4960-b946-d08d39321348', '2015-05-19 00:00:00', null, '0', '', null, null, null, 'com.tencent.mm', '543');
INSERT INTO `app` VALUES ('7e9ab401adf74674a708680ffccfb321', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', 'LavaCalculator', 'tool', '0.00', '0', '1', 'zh', '', 'ss', '', 'lava', '136', 'null', 'null', '2015-06-02 00:00:00', null, '0', 'ss', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('7f3e59fcde4c4c5a80a1ba9b488349d1', '7687dd51-5f69-f201-5cad-62ea-960b95f0', 'Xender', 'app', '0.00', '7706485', '1', 'en', '', 'Anmobi', '', 'x', '16', 'http://7xir60.com1.z0.glb.clouddn.com/1d0a79f5-340d-4bea-bd87-b1bbfe08be71', 'http://7xir60.com1.z0.glb.clouddn.com/ce30fad8-d55f-420b-92ff-86c94af2c3e7', '2015-06-03 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('82d600dd7cc74276b6370065ca687740', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', 'Xender', 'app', '0.00', '7354047', '1', 'cn', '', 'Anmobi', '', 'mmd', '123', 'http://7xir60.com1.z0.glb.clouddn.com/17a27939-ad70-4322-bfee-79e745135449', 'http://7xir60.com1.z0.glb.clouddn.com/ce2df1e0-9247-4f98-97af-682eea496dbb', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('87369f813d5a4e239aebb393920a8b9e', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '微連', '社交', '1.00', '4023808', '1', 'zh', '', '闪传', '', 'x', '61', 'http://7xir60.com1.z0.glb.clouddn.com/90e2d33a-18bc-4eb7-a436-cfe589282d45', 'http://7xir60.com1.z0.glb.clouddn.com/d71c279d-fd6d-40bb-bb8c-2b1d4b7785a0', '2015-05-13 00:00:00', null, '1', '工具', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('88afc6e0c8074bad8e21587d2f017ee5', 'f659448e-8cca-cda8-74eb-b78e-d32e8443', '微連', '123', '12.00', '4023808', '0', 'zh', '', '12', '', 'x', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/3e018481-decc-4ab4-8551-160fc22f2cfe', 'http://7xir60.com1.z0.glb.clouddn.com/e57d3961-cdc5-439e-9109-471b7861cf1f', null, null, '0', '1222', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('895d4d297d0d45bb9aa618192646beff', 'f979656b-1a9c-32ef-4404-5fbb-5710e336', '微連', 'sd', '0.00', '4023808', '2', 'zh', '', 'ffd', '', 'x', '101', 'http://7xir60.com1.z0.glb.clouddn.com/b61b9d4d-a89f-4f2f-b947-83c40dae1c9b', 'http://7xir60.com1.z0.glb.clouddn.com/9ba7ec36-f205-4a44-a84f-63dc2eb4a994', '2015-05-25 00:00:00', '2015-05-28 00:00:00', '0', 'dfs', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('8a50c6684c5a486ab55100d78833005e', '6ee00e43-914b-f426-744c-03d3-76a933ab', 'Xender', 'app', '0.00', '7327900', '1', 'zh', '', 'Anmobi', '', 'zhys', '118', 'http://7xir60.com1.z0.glb.clouddn.com/80e337ad-1b16-439b-9846-26ea8fd8d3c4', 'http://7xir60.com1.z0.glb.clouddn.com/9c61879c-e600-45e0-865e-3dc3f892b510', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('8ca927c02e714c558e2d943b71bb9ec4', 'dabeaba5-3c15-40c0-9952-0c65506ea5e9', 's', 'd', '1.00', '0', '2', 'en', '', 'd', '', 'xender', '142', 'null', 'null', '2015-06-08 00:00:00', '2015-06-08 00:00:00', '0', 'd', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('8e1909dabfdb4e25afa2f95826a6c45e', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '记事本', 'app', '0.00', '665524', '1', 'en', '', 'test', '', 'lava', '138', 'http://7xir60.com1.z0.glb.clouddn.com/967d05b3-aa01-4a17-8fac-1987a65de45b', 'http://7xir60.com1.z0.glb.clouddn.com/7191ae55-971a-49ea-ae4b-3e5004d42891', '2015-06-03 00:00:00', null, '0', '', null, null, null, 'hq.notepad', '1');
INSERT INTO `app` VALUES ('935857dc67fc4896b9d4d96b68d4f935', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '闪传', '应用', '0.00', '7104440', '2', 'zh', '', '安奇智联', '', 'x', '66', 'http://7xir60.com1.z0.glb.clouddn.com/c5db5c10-8bed-4e14-9280-abaf763e0bf6', 'http://7xir60.com1.z0.glb.clouddn.com/e946d19f-b950-4842-97af-acbe92b50172', '2015-05-11 00:00:00', '2015-05-25 00:00:00', '0', '', null, null, null, 'cn.xender', '68');
INSERT INTO `app` VALUES ('9797d8f9aa4b47db9041a0156575a301', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', 'Xender for alcatel', 'tool', '0.00', '7592147', '1', 'en', '', 'anqizhilian', '', 'tcl_alcatel', '87', 'http://7xir60.com1.z0.glb.clouddn.com/5c6cb815-f6f5-4ba2-8409-88fed2ac3cb5', 'http://7xir60.com1.z0.glb.clouddn.com/e04e8d58-a4e8-4d1f-82e2-b098b7c05f91', '2015-05-20 00:00:00', null, '0', '', null, null, null, 'cn.xender', '71');
INSERT INTO `app` VALUES ('99613ab6cc364bc49de7267d0a0ddc42', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', 'Xender', 'app', '0.00', '7354047', '1', 'en', '', 'Anmobi', '', 'mmd', '124', 'http://7xir60.com1.z0.glb.clouddn.com/c2f66e9b-d4d3-4b85-a854-526d4e875ae5', 'http://7xir60.com1.z0.glb.clouddn.com/18f074b9-7e59-4aaf-a5ff-12a241e3a6ce', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('9a1e0d62e1e54871b15b87b4753c9dc0', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', 'Xender', 'app', '0.00', '8399395', '1', 'zh', '', 'Anmobi', '', 'lava', '135', 'http://7xir60.com1.z0.glb.clouddn.com/163f40fd-003c-49d0-82f9-5f85cfb67200', 'http://7xir60.com1.z0.glb.clouddn.com/75bfaa32-57b5-4305-9cb9-1369c7ca960c', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('9b32316813004615adff3903565f6f5c', 'fdde15d7-91a6-49ce-a10a-62779902c422', 's', 'd', '1.00', '0', '1', 'en', '', 'd', '', 'xender', '141', 'null', 'null', '2015-06-08 00:00:00', null, '0', 'd', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('a18bafd45b8346cbac34a30d2f9d088f', 'f6eb83ab-9968-7ee9-6852-6226-ad075e02', '微連', 'tool', '0.00', '4018040', '2', 'en', '', 'anqizhilian', '', 'tset', '120', 'http://7xir60.com1.z0.glb.clouddn.com/8357b678-a5ec-4a7b-bc35-8258765107cf', 'http://7xir60.com1.z0.glb.clouddn.com/37105d4f-366d-4866-aaba-906179d1d40e', '2015-05-29 00:00:00', '2015-05-29 00:00:00', '0', '', null, null, null, 'cc.weline', '1502070001');
INSERT INTO `app` VALUES ('a496156fd54a4f299aebd2b3a4c2a205', '799146af-1860-410f-886e-e11a056309f7', 'Calculator', 'tool', '0.00', '0', '1', 'zh', '', 'ss', '', 'lava', '114', 'null', 'null', '2015-06-02 00:00:00', null, '0', 'ss', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('a8e51ec67a5f454db4623d26af8b11e0', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', 'UIL Sample App', 'tools', '0.00', '852435', '1', 'en', '', 'd', '', 'x', '106', 'http://7xir60.com1.z0.glb.clouddn.com/e3a452e2-93a1-44fd-9b7a-64fc649bef23', 'http://7xir60.com1.z0.glb.clouddn.com/52ff41d9-1f93-44bf-92c3-7125a03f142c', '2015-05-25 00:00:00', null, '0', '', null, null, null, 'com.nostra13.example.universalimageloader', '38');
INSERT INTO `app` VALUES ('aab0d427e5ea4663b095ed199bed9ea2', '1c73bb6b-d1cd-67a5-e09e-d467-ac0db605', 'Android PDF Viewer', 'tool', '0.00', '1433355', '2', 'en', '', 'ss', '', 'tcl_alcatel', '89', 'http://7xir60.com1.z0.glb.clouddn.com/f9c23d0c-4518-475f-a8e7-bc559faf6b0f', 'http://7xir60.com1.z0.glb.clouddn.com/515eb810-3643-4066-89ad-e615e1d4f39f', '2015-05-20 00:00:00', '2015-05-20 00:00:00', '1', '', null, null, null, 'net.sf.andpdf.pdfviewer', '102');
INSERT INTO `app` VALUES ('b17493626f204fa7a533020e2fedfd1a', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', 'Xender', 'app', '0.00', '8399395', '1', 'en', '', 'Anmobi', '', 'lava', '113', 'http://7xir60.com1.z0.glb.clouddn.com/eeecbafd-9d00-47b3-ab82-59dc1d722bd6', 'http://7xir60.com1.z0.glb.clouddn.com/b20ff0a9-1efe-4a60-8819-0d052da70155', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('b76d714233c74cf3b7468188bea7895e', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', 'Xender', 'app', '0.00', '8278260', '1', 'en', '', 'Anmobi', '', 'zte_abroad', '109', 'http://7xir60.com1.z0.glb.clouddn.com/dac50a93-b5fd-4ecf-8d17-a644f2d2012d', 'http://7xir60.com1.z0.glb.clouddn.com/59b702d3-1f38-4a9d-a779-005c5c0fb2a3', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('bd6b118c365744f9be2945f579fba19f', 'aac66cc6-2faa-467d-b6d2-d5936d1fc440', 'lavaca', 'app', '0.00', '0', '0', 'en', '', 'Anmobi', '', 'lava', '1000', 'null', 'null', null, null, '0', '', null, null, null, 'null', 'null');
INSERT INTO `app` VALUES ('bf11bf513bc34ef1913df860f2d387c8', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', 'Xender', 'app', '0.00', '7327900', '1', 'en', '', 'Anmobi', '', 'zhys', '117', 'http://7xir60.com1.z0.glb.clouddn.com/98a41d04-be1f-492d-8cde-e153185e6ff0', 'http://7xir60.com1.z0.glb.clouddn.com/0b597272-048b-4278-ae0b-50599c902b4a', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('c51dd47e64014ea69813112a37ee3484', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', 'Xender', 'app', '0.00', '8278260', '1', 'zh', '', 'Anmobi', '', 'zte_abroad', '110', 'http://7xir60.com1.z0.glb.clouddn.com/e496c2b4-c363-4f53-b0c2-b5be76bd05c7', 'http://7xir60.com1.z0.glb.clouddn.com/92d63ac7-0b64-428b-a481-1c7cc23ec1b5', '2015-05-28 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('c5c386da748b47ef8ea4a91090c21c7e', '57ae608f-af91-30de-e3b1-497f-8d36856c', 'IQIYI Video', '视频', '0.00', '15288570', '1', 'zh', '', '爱奇艺', '', 'tcl', '132', 'http://7xir60.com1.z0.glb.clouddn.com/e7666868-cb60-412c-be96-d1e91cb2dd8b', 'http://7xir60.com1.z0.glb.clouddn.com/466c6f05-556a-4299-9751-d6e45496b26b', '2015-05-29 00:00:00', null, '0', '', null, null, null, 'com.qiyi.video', '88');
INSERT INTO `app` VALUES ('c63ea74470a34c7390b475e13540d754', 'ffc64fb8-d76e-bb32-56c0-fa00-83dd5bbd', '微連', '1', '1.00', '4023808', '0', 'zh', '', '1', '', 'x', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/eaeab984-eb31-46d0-82d9-ef58fc6f4825', 'http://7xir60.com1.z0.glb.clouddn.com/62437183-b9f5-48e1-8500-0b03f08013a8', null, null, '0', '1', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('c73d972c92294306b077acd8906f99b8', 'c37bd2ed-a59d-517d-5f46-2a7f-16c885a1', 'MuPDF', 'tool', '0.00', '5385088', '2', 'en', '', 'ss', '', 'tcl_alcatel', '92', 'http://7xir60.com1.z0.glb.clouddn.com/6f16ba60-9abd-4cf7-8a26-6a95380f4941', 'http://7xir60.com1.z0.glb.clouddn.com/55cd941c-6cef-4c95-926f-0cad5558cd79', '2015-05-20 00:00:00', '2015-05-20 00:00:00', '1', '', null, null, null, 'com.artifex.mupdfdemo', '62');
INSERT INTO `app` VALUES ('d53f3e33afef47cbad70123a97710604', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', 'Xender', 'app', '0.00', '7354039', '1', 'zh', '', 'Anmobi', '', 'tcl', '129', 'http://7xir60.com1.z0.glb.clouddn.com/bad61035-acc2-483b-84c6-6336143b45d2', 'http://7xir60.com1.z0.glb.clouddn.com/553344c4-2cb6-4181-ad84-d662136ded98', '2015-05-29 00:00:00', '2015-05-29 00:00:00', '0', '', null, null, null, 'cn.andouya', '73');
INSERT INTO `app` VALUES ('d66daf742238414dbdabf544b43dbe04', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', 'Xender', 'app', '0.00', '8007793', '1', 'en', '', 'Anmobi', '', 'dingding', '133', 'http://7xir60.com1.z0.glb.clouddn.com/87324686-9a48-4f27-95ed-44a15bf65c33', 'http://7xir60.com1.z0.glb.clouddn.com/908c9acc-6499-4936-9252-d6d644cc48ed', '2015-06-02 00:00:00', null, '0', '', null, null, null, 'cn.xender', '72');
INSERT INTO `app` VALUES ('daa38875feb14698b0572675065dc806', 'db925de1-1916-e548-3bd6-7908-41e65620', '微信', '应用', '3.00', '35814529', '1', 'zh', '', '腾讯', '', 'x', '18', 'http://7xir60.com1.z0.glb.clouddn.com/3d630f21-b53d-42f0-b989-54123dbb7942', 'http://7xir60.com1.z0.glb.clouddn.com/6b475c5b-2880-424f-9794-cfe38c1c78ec', '2015-05-13 00:00:00', '2015-05-12 00:00:00', '1', '', null, null, null, null, null);
INSERT INTO `app` VALUES ('e8d646761ebf44e38a73557478760a63', '45d444a5-d8fd-7600-f280-8366-5743ca06', '炎龙', '游戏', '10.00', '3874029', '2', 'zh', '', '校推科技', '', 'xiaotui', '16', 'http://7xir60.com1.z0.glb.clouddn.com/bcbd55aa-7905-4bb7-bdf9-9f23cff17b7e', 'http://7xir60.com1.z0.glb.clouddn.com/a487b573-a0e1-467c-abe2-b33e73c3c54a', '2015-04-29 00:00:00', '2015-05-18 00:00:00', '3', 'very good', null, null, null, null, null);
INSERT INTO `app` VALUES ('ead79e9a8a254aacb88a0a493eebbe1d', 'd271785f-ecb7-e1bf-7b31-9329-93821658', 'The Fabulous', 'tools', '0.00', '18771213', '1', 'en', '', 'd', '', 'x', '137', 'http://7xir60.com1.z0.glb.clouddn.com/ec7d5d5a-f05d-4ef1-9b06-572ab74cf100', 'http://7xir60.com1.z0.glb.clouddn.com/a3132809-48c8-40bc-ad0b-e9619bee9266', '2015-05-27 00:00:00', '2015-05-27 00:00:00', '0', '', null, null, null, 'co.thefabulous.app', '26600');
INSERT INTO `app` VALUES ('ec7b0c5491764fb1b4134dba309d1c75', '3510653c-f661-7f87-f9ca-b3e1-15664751', '微連', '工具', '12.00', '4023808', '2', 'zh', '', '闪传', '', 'xender', '70', 'http://7xir60.com1.z0.glb.clouddn.com/c2f275d3-7984-4a1b-8d86-2cb2a3d8cfc8', 'http://7xir60.com1.z0.glb.clouddn.com/e240af4c-b28c-45da-9b83-1d51930e76ce', '2015-05-14 00:00:00', '2015-05-14 00:00:00', '0', '1', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('f519783c6a1b407d97e261c5301955bb', '00422ad9-952b-281b-4a12-2791-4fc54e76', '手電筒', 'test', '5.00', '1925254', '1', 'cn', '', 'yanlong', '', 'xiaotui', '79', 'http://7xir60.com1.z0.glb.clouddn.com/3af2d447-f55e-487c-b3c0-b47bec64a262', 'http://7xir60.com1.z0.glb.clouddn.com/c14756fc-e2e3-4985-b59a-831c9954af18', '2015-05-19 00:00:00', null, '0', '', null, null, null, 'com.devuni.flashlight', '221121');
INSERT INTO `app` VALUES ('f693e00d368c4e0496f0518d09d8380c', '611b553c-227f-a405-e1a3-b329-6fb19558', '微連', 's', '12.00', '4023808', '0', 'zh', '', 'd', '', 'x', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/0ca09ef5-d621-46ec-900b-70667b087c35', 'http://7xir60.com1.z0.glb.clouddn.com/13d49cf4-8311-4e6d-aa0c-ea0814a88112', null, null, '0', 'f', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('f6e708e249d4443bbb9985b6b691a6b8', '2b1c675b-56f6-be23-5cf6-6a03-78dd7a20', '微連', '1', '1.00', '4023808', '0', 'pt', '', '1', '', 'xender', '1000', 'http://7xir60.com1.z0.glb.clouddn.com/9cc1eddd-311c-494a-809e-513458009a6e', 'http://7xir60.com1.z0.glb.clouddn.com/ff65c592-b728-4433-9de8-e54ce7dcde58', null, null, '0', '1', null, null, null, 'cc.weline', '1502070002');
INSERT INTO `app` VALUES ('fe97c1140aba4b41b1b33ce95257cbee', '73fcd71f-093a-0e1b-7424-c359-663184cc', 'Gionee Xender', 'app', '0.00', '8399307', '2', 'zh', '', 'Anmobi', '', 'gionee', '116', 'http://7xir60.com1.z0.glb.clouddn.com/68b0c2af-7470-4f33-83ec-d1a06fba62ae', 'http://7xir60.com1.z0.glb.clouddn.com/560efe75-1b0a-4e3f-8023-bd605966898f', '2015-05-29 00:00:00', '2015-06-08 00:00:00', '0', '', null, null, null, 'cn.andouya', '72');
INSERT INTO `app` VALUES ('ff36a46042054d8586cde43ed50bd0c3', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', 'Opera Mini', 'tool', '0.00', '1079786', '1', 'zh', '', 'elaine', '', 'lava', '140', 'http://7xir60.com1.z0.glb.clouddn.com/f17ecb31-1d4d-4ddc-a303-4776aee35171', 'http://7xir60.com1.z0.glb.clouddn.com/296fcb44-b7e6-4647-a780-c34b8633dc94', '2015-06-03 00:00:00', null, '0', '', null, null, null, 'com.opera.mini.android', '27');

-- ----------------------------
-- Table structure for `click`
-- ----------------------------
DROP TABLE IF EXISTS `click`;
CREATE TABLE `click` (
  `id` varchar(32) NOT NULL,
  `ad_code` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `imei` varchar(20) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of click
-- ----------------------------

-- ----------------------------
-- Table structure for `clickstatistic`
-- ----------------------------
DROP TABLE IF EXISTS `clickstatistic`;
CREATE TABLE `clickstatistic` (
  `id` varchar(32) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clickstatistic
-- ----------------------------

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` varchar(32) NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `cn_name` varchar(30) DEFAULT NULL,
  `en_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------

-- ----------------------------
-- Table structure for `download`
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` varchar(32) NOT NULL,
  `app_code` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `imei` varchar(20) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('03d7ea48383a4dc0a31850293511533e', '113365ce-173f-5314-30fd-5191-bfc82e60', '2015-04-30 04:15:00', '123456760000840', '192.168.1.81');
INSERT INTO `download` VALUES ('0ff815a3e95045229015be6379693aa9', '9002aa6d-3074-b8bb-8fae-8396-b5fbf80d', '2015-04-30 03:53:00', '123456760000840', '192.168.1.81');
INSERT INTO `download` VALUES ('12035099e8094fafb5d79e6216b2c8d0', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-04-29 17:28:00', '352136061861502', '192.168.1.43');
INSERT INTO `download` VALUES ('20db04e56b82406cb76b7a7e3bab0ccb', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-04-29 16:31:00', '352136061861502', '192.168.1.43');
INSERT INTO `download` VALUES ('243494375f8b4841bfe833e1208c5ade', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-04-12 17:28:00', '352136061861502', '192.168.1.43');
INSERT INTO `download` VALUES ('3913a3f8160f431d83ce162649655582', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-13 14:04:00', '355666052277257', '192.168.0.33');
INSERT INTO `download` VALUES ('3aacb75be08d422aa156efc6d77014eb', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-04-29 17:31:00', '352136061861502', '192.168.1.43');
INSERT INTO `download` VALUES ('450e072b621a4c4bbd33ccca57ed5cc5', 'c37bd2ed-a59d-517d-5f46-2a7f-16c885a1', '2015-05-20 10:07:00', '358584052162436', '192.168.1.29');
INSERT INTO `download` VALUES ('5618181b51ee4455bbcc8044a52974fc', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-06 09:16:00', '864572011295352', '192.168.1.77');
INSERT INTO `download` VALUES ('600dc5daaa144be1a4a91c6006928c2d', '7772a3bf-b6ee-db50-4eb3-ff40-4326848d', '2015-05-20 10:07:00', '358584052162436', '192.168.1.29');
INSERT INTO `download` VALUES ('69b4b91ee5fe4fbf80a784b80bf7a8dc', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-07 14:26:00', '869611010293227', '192.168.1.98');
INSERT INTO `download` VALUES ('6caed55cda7c48e092b24f523cd122f3', '113365ce-173f-5314-30fd-5191-bfc82e60', '2015-04-30 04:14:00', '123456760000840', '192.168.1.81');
INSERT INTO `download` VALUES ('72ccd7854f1749d18ccf1ad3eab048d2', 'acd72e17-476f-1860-cce7-3bf6-4013caa9', '2015-05-06 09:16:00', '864572011295352', '192.168.1.77');
INSERT INTO `download` VALUES ('8d46cab4e2f04dd49934d597c5428c7b', 'dce067f0-85e4-fc90-0ab5-5d42-214ebd2c', '2015-05-05 14:08:00', '355666052277257', '192.168.0.33');
INSERT INTO `download` VALUES ('8ecb55983f3047ed820c5fb652875835', '113365ce-173f-5314-30fd-5191-bfc82e60', '2015-04-30 04:05:00', '123456760000840', '192.168.1.81');
INSERT INTO `download` VALUES ('90a44831af4a4265b7c92cf193a4feb4', '4443c6ef-e779-c2b8-3abe-6736-2d5d085b', '2015-05-08 08:49:00', '869611010293227', '192.168.1.25');
INSERT INTO `download` VALUES ('917b365d73e54054a0ec6dc775e7ccef', 'e24d6108-1fb2-652e-167c-ad1e-9d13dfca', '2015-04-30 03:55:00', '123456760000840', '192.168.1.81');
INSERT INTO `download` VALUES ('95f1738306ca48a1b2a6e0aa6781d615', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-04-29 17:30:00', '352136061861502', '192.168.1.43');
INSERT INTO `download` VALUES ('9733fc4bd72c44049018efa899459b65', '7772a3bf-b6ee-db50-4eb3-ff40-4326848d', '2015-05-20 10:07:00', '358584052162436', '192.168.1.29');
INSERT INTO `download` VALUES ('9af5a0c7582140eaa544eb2bba240497', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-13 17:39:00', '864572011295352', '172.20.10.14');
INSERT INTO `download` VALUES ('9ba4e83fdcc24937936bb2088ddb10f7', '4443c6ef-e779-c2b8-3abe-6736-2d5d085b', '2015-05-05 11:08:00', '864181023765871', '192.168.1.88');
INSERT INTO `download` VALUES ('a15be45a58e04da6a30be5d3a5c05176', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-04-29 16:59:00', 'A000004F641586', '192.168.100.212');
INSERT INTO `download` VALUES ('a15be45a58e04da6a30be5d3a5c05177', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-04-30 16:59:00', 'A000004F641586', '192.168.100.212');
INSERT INTO `download` VALUES ('a15be45a58e04da6a30be5d3a5c05178', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-01 16:59:00', 'A000004F641586', '192.168.100.212');
INSERT INTO `download` VALUES ('af161bdf7fe14d56819ca772f3b1316c', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-05 17:53:00', '864181023765871', '192.168.1.88');
INSERT INTO `download` VALUES ('d1647cafa6d243e2b916e535b33938a8', '1c73bb6b-d1cd-67a5-e09e-d467-ac0db605', '2015-05-20 10:02:00', '358584052162436', '192.168.1.29');
INSERT INTO `download` VALUES ('d4e71b40147746f2a584b02f55249fa5', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-13 10:39:00', '864572011295352', '172.20.10.14');
INSERT INTO `download` VALUES ('d8cc28711cda4b6c8decf0ac971a8d62', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-15 07:25:00', '868366011435951', '192.168.1.102');
INSERT INTO `download` VALUES ('e6f45f38b4ec4c56ba1b335674c46100', '4443c6ef-e779-c2b8-3abe-6736-2d5d085b', '2015-05-06 09:16:00', '864572011295352', '192.168.1.77');
INSERT INTO `download` VALUES ('f012de2a9b6e45738b0fa68c43e71da4', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-04-30 10:17:00', '864587029869634', '192.168.1.52');
INSERT INTO `download` VALUES ('f8e2e996a404464499f1a695d213e364', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-08 08:50:00', '869611010293227', '192.168.1.25');
INSERT INTO `download` VALUES ('ffce2cb37d6249b4b42467db74bd122d', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-04-30 10:17:00', '864587029869634', '192.168.1.52');

-- ----------------------------
-- Table structure for `downstatistic`
-- ----------------------------
DROP TABLE IF EXISTS `downstatistic`;
CREATE TABLE `downstatistic` (
  `id` varchar(32) NOT NULL,
  `app_code` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of downstatistic
-- ----------------------------
INSERT INTO `downstatistic` VALUES ('004cb337ee6b4cd6bbe37745030362dc', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('00675ff5dc434bfa8afd4fc8ab68dcd9', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('00c6015517cd430c990991695c1cda91', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('01de5019ec494db7901eda9e68a9627d', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('01f14c35de114227999d887d86f7fbc7', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('021f248aac6f411898b3999b07e81265', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('024b1b1d8b91426e9353a044f08efa76', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('02efe9bac3ba46ba9dd91732a140a6db', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('02f2ce5ca18141598671754b26659e8c', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('030c29a2f0d84ba8b7e7a236019cdae5', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('03374967f7034c8a9e065424e743427e', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('037af8296a964b7da18c1741d1cbef9f', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('03c5689039cb406894a705bbb024411f', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('03edb4ae3680481d9e2121363a1fa899', 'd141d2a4-9409-4bd1-e288-9b4b-7a8c1ae1', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('03fa00a906af4b9ba6a2ade965aa8c4d', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('045114dc1db54c50aa4d47e48af3f0ac', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0480935304fe4d67ab038972063e9080', 'b81facd1-e51c-41b7-97a2-0c9c14725518', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('05297df1c5fb4d33a423cf16faa453da', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('052cb395fac44e6dbf83e3b976516280', '7d27af44-09a6-b98c-04cf-ddfe-d87683c6', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('052d1ae553ac42e18027ab54397d9a85', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('057a9a07e3894b86ba9549037e9eeb3e', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('05cc4101dfeb4d86a4312a760d3c620a', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('05e336fda6b24b00a216620e59e927c2', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('06169f7550c9465880dd04b8e2587e7b', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('06bbac991d7f430c94568e5280ea899d', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('06f16d9193514093a4d0a9e3fb77855c', '2dd51e9e-6880-ef6c-8527-22a0-c562a5a2', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('06f257a470294ac881c157e939342df4', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0737c0c036f7470eb255713bb0dc8898', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('07aa754ebaca49668aa0eacefbc56d0e', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('07bac265a26146bb917a37a36650aff8', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('082e55e52cd74a3db06fa61e8be8c598', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('095fa1168228437ea590f0c33db3fbb7', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('098071b59353422189ac5fa99e3056ae', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0983e6aecf6b4bf19d9d642a46a8da51', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('099b133bd855476bac60cbd07e47c09e', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0a9866632af747069244469ccd47c8ec', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0b0650c5c9bc415493acb677e699a379', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0b764002c9cd450cb2f9ae666bbb0179', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0b8a33d18e104985a52619307c935331', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0cad3404e24e45609c39866346b861cb', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0d908b42656d4de89c9c2558e0e5f3fc', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0d96f1c8fb6d4ad587fe7a397da23225', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0ddea85540b14fd989fd72fd398c0987', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0e19a170e5724566a642ca9978ba33d2', '0f0089ad-7a76-0894-4949-75ba-86157b69', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0e9060d8a3c64276aae9d634d759701d', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-12 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('0e96e491a16a4543bf8f974b5d5d3d80', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0ecdde80c8144322ab6964775d9cad67', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0f2c5640b64c45e386302433b07dd1b8', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('0f7579f3685444febf87a9ab648b8908', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('104ee26025954e77a06eb76ec03a02ae', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('10717ca5e85a467aa450387f037e5e06', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('108353c544574c21b3cda50695648bcb', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('10efca7fb5344dd1b374249dbd98f8b8', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1127ca021f5e4a049a9b4b289ffa0e66', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('11421cc5c7e94d5680c6601251375992', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1185ada8e50c47e8a187f9f3d423daa1', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('11932966411d4341bd1ca85b1f3b62d8', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('119754878b894f44b66116c815f92ee7', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('119b03a12c054caf9d48e43524636eb4', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('11f7903034d14e27ad0b06c8d41a7447', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('12652789e1394acda107f675e65c1819', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1266652d01124096b222e294a0af5652', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('12c57b61104b40cd9a52adb3a53d2af4', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('12ffc6342eb64b1382786696e68009e1', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('130f90ffb8914ab68a9802cd31a6b3d5', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('13351c395294477598f6fee2d0d51fdd', '0f0089ad-7a76-0894-4949-75ba-86157b69', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('136369a8fa004651a57b94b1bac5ec1d', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('138e1a1055c84873a84d313e28ea2f8d', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('13ab2f4079cb4a5590ea17e59a626653', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('13d9969c287b43608076094bab44dcc4', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('13f583f5db6e4363ac3088f580e25490', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('14d4ce67a79a4bf78aaad3aaf06389c4', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1550b847a9b54faebe9e7de2baf5b856', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('156e98eeab1a415a86f2456cdc1c12bb', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('15c1547cc6b143a992c275e912cb9859', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('164a08515646406b8042c6d2423feba3', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('166940c4295443e88bffff3cc5954dc8', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('16f91216dae543f88cebdc4afd4db9e1', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('17578198235b475493265f5d66471bf7', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1789f90a7a8f4e9580a4b4a7563f4db8', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('17d1f164d19449f79145d72470a79dda', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('17f2dcfcd25a4b8889552f76f1672122', 'e7f73a96-7045-2bc4-851b-9fa4-95163f5f', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1839c57cdef54c21aaea7859201fe21b', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('185f9fc024684e75a24e8082d7b917e6', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1917b93da996429283a72a5e4c24bbae', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1917d48a84c045899f63751468854d44', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('19331d545d9f47b1b1efcbabbb4d4843', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1999f3b0be014cfdb3050d88aff3c4d3', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('19a6a4398d334c2abef312aae1da7b42', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1a0bcfc2a6534a04b993243bb358b79d', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1a19faf76b3c4dd3ae5ad40d5727e069', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1a25c936037c4c5db601fe72c018e78e', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1a3194a25e5c4e80bc2b85376fb973ed', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1abf3004e81440c0a9519ee5ae4837bc', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1b7562d2e58841328acbea5227caf27b', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1bac8126799e4305aa44d19aeededd6c', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1bcb94590c5c4d0a87f3634dfe73d376', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1c60da913e0c4aaf87a9ebe465973102', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1c92bb0695dd426596b64b41ddf5a1c3', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1cbd353dee144899b45db0c1beb8c429', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1cd26083b2544868a06f7f98634a238d', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1cf6c0e1209b4c8ca10eb7ab52e6b499', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1df6884e7c1545cd924d6875a56740c1', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1e1aa705710b46df80f948482520028c', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1e758c2b07fe42b898d81280ba23cef4', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1e8d0e829c944783874c9c995244154b', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1e8d82f9bcc4408097a4d88524a1944f', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1e9a0afdcf194ad084643d98f5dfbb62', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1ebb92c7f7244e06b8cf532061be719f', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1eca6e75cbed4bbca65b6c5753a32c42', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1f3dc3375cae4fe6b0b24f8fb9c8e400', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('1f5122d6eb90421a93096edf88fe39b2', '831b2172-7f8a-4e54-a71c-540e9300e626', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('202319258cfa42eca144ab9aaca6d3dd', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('20fc5b5380954161a13e2033474761ff', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('211f8e5cb1de43bb974d416c523dca1b', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('21accbf2f70e4b91aec4efb28933262c', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('21ae8651628d452db12a42a05e016a6e', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('21b99d98401542b18aa17f9826eeb2c2', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('21ee56d1e9f246bbae09c4cee4a9b703', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('21f91c64b14c4170a9b298d2fe71b404', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2204344006ec4cf187d8f6fa320d397f', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('223188b3dae141c7aef2f8de4c0fa5be', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('22643df2069043e69e42424c86c92fb8', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('234f7e8771f04640af8ec0c21ca163fe', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('237fba6d25044c40b9696dd39cd31035', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('24200a3cb88a4dabb3d1f747039ef104', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('242955808ec642029952d43ea289a6a7', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('242f38eb486b4265952aa512c1949acf', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('24a363b6920b4939b3cd9767286b7435', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('24e501b079a648ea86c90ec730e5bf3d', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2529d0c983cd452b88f77abcc913c012', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('252f546373994460ae146ff9c4918f11', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('25d3838a9530475388d9da3bc212000c', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('25fe8d560eed43d3a876478fd47ec590', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('260012bbd3a64656892871f2c74a4f5e', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('263236bea3ed449a9fb093f8d215b909', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('265b97bfce4648b8acc5f600a31ca869', 'f979656b-1a9c-32ef-4404-5fbb-5710e336', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('26a072372cb94ce085cd6809519d4150', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('26cb0aa6c6724acca92e18116f6900e4', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('270d60fd61b14d63b9722263ba6fc5d3', 'c33f568f-8129-cd6e-7ccc-a02c-fd3daa46', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('273ee9b3e99241299e319ba3faf5dd13', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('275fc88afce04bfbadb597376f8dda21', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('278c97f141da4a44be3b220dc5c9c83b', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('27e121285f9f4650aff9be030561ae7f', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('285c92a7db4c440593e383f6f3c41ec2', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('28685912f6a34a07b15a8089b9d55c93', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2898341000c243bd90995e834ffae1e9', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('28a450d1551041699323534aa20acb01', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('28d9f5f9937f4f71b7303b21c8f2cea3', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('292658cf208b4f2ca0c26f6a6493c5b1', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2985e279a0fe4cc1920b76569e405c85', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('29e1d91acaac4e819d84a0985254ef40', '3bc3373c-3439-15b0-7ffe-791b-8ed05eb1', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2adfe85024874bb1b6c961377c7a25a3', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2aef72c083c04969a33cf4fcf7abd48e', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2b6fb8e7d66343c3820c5ee4c4d8c7a3', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2c7240aa13664a80a7164bc152829c18', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2c7fd917b34445a8a05bb2e1a908b767', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d04b6b7f2cf42a8b0010d03a800ee4b', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d09daf0fce0437bb022e4351e3b1e82', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d2eccb7b38e432aa5a5a839324a3a18', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d5b7c3cf210499aa859f2b00e74832e', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d665b39d87d49168f3ebae51f111af3', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d731579048e4cee979ae3e7eaa56add', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2d88c5b7dbbc4b70aa4ad3560c4d6eb0', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2da77e5a442e40adab67f10135c1f5c7', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2e1a2039fbf344aa8d86207a1c8bd37e', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2e6b1195c5ce43a1a00e9f718ed482a7', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2f0127d5f3524fd0947b20f784a6f1dd', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2f29623ae8d6429cba224018e23e7611', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2fb9f1349ccd490996e6d5804468bef7', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('2fbc2c852cf04fb48c8c4b0018a76815', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3062a5567b614167a777faad42c171f4', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3123faa411784af0aeede5b9b3c1450a', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3157af5f415d4ba5bb729d6c9e5825f9', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('31944c181b1747a4b63d4ba2f66e48c8', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('31b45ab091ca412280879e68fb27c8fa', '21a48c06-d7d5-220b-de1b-daf7-dd3cb405', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3248031a793d4bac8452dd9916699058', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('32d07808fd5c485889ea8c945d558c36', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('337627b9b67b48edbd61f70da14197b2', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('33abe59ce8bf429388146c57f016c3ea', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('33eafcb1a06241d6b5b993d451154132', 'c5ccca09-7c48-4e85-3d57-3afc-5128df6a', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('349a5f7ac1f34f47a347b55d44622a0a', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('34b4153199cb46f8a3bc8be2df350a2c', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('34cdcbd70ec14e21b3be116b09a4f4f7', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('34d0645495cd4dd79c62f64cd5311838', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3512a9a089414102b2c87d19ee4ecc2d', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3614599aa5a14a47b0b6f3d6ee482891', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3618ca1c906b42358d52e29c34f3a255', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('36d5a16e76dd4610a9c2784ffdc8c1a6', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('37240edafb4e48f8a6b34f073f72d479', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3806d2390c624047b1f87d7d176827ed', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('386e7974272c45f1b7b7d4ac096638a8', 'ae6df525-a3e2-7a8d-63ac-fd9f-8fbdb6fc', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3896d57ae262426b93e5cc2903f529c8', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('398a2d6c42ef434aaf38110f4a3f17f1', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('398b435621e240fe94663c87538e5351', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3a69b81c09e84bd4859267ae0188a1d6', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3aa27c89fad24ddd910aec56a6181c96', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3adcc00f907046f1b0a1a692db3c6843', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3b742e8946214d909bba079db74bcf8f', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3bba6afc7cc14d99bab8211ad64e6068', '58cfc029-cdad-4162-880b-461c25379f95', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3c3485b9c4a54206b191e556cf5533b9', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3c5ef23509b74646bc00599c354425e8', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3cdceb51356d4d6db77e54cf3a720031', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3d05451212304f33811fc950ffdaf3c9', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3d8c29d5ea6d4484af20bfc5c405a45b', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3dba75d91a4e40a29d09f703c66f457c', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3de2cb8acdce4d1e947de818c32df54c', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3df1728696a74adea2f8d83b879993f5', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3ecabd50031d424aae02401aa1374d9f', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('3ee7b282908748129c3427e930d9fc4f', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('407f38ecb81d409290795c667d480dc6', '0f0089ad-7a76-0894-4949-75ba-86157b69', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('412222fdb31941a2b48a5ccbc7872d43', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('413edc30cc664cbe96ccb0a645a97ca8', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('414c44400226487fa3290d863b54d8e7', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('417ee3f141dd463484e620f9ffd81975', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('41ad7f42924b4784ac391066d734770d', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('41c070b99b55429e90b68561a92a235c', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4245df8c45e743fba078276a175c0063', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('42ba6b702fa14dd2bc20680a2da5a20e', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('432bf80d33334be1ad7fa6594d688bff', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('435f84d9a2e14e7ba3547811edc241a0', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('440d1f18a7a2490dab073a3b2bc14f54', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4446f3fb523443df96b72a36db0fe83d', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('44492de1d7f442658ccc6411390f316f', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('44753aafc4b94a69a114286e0808b545', '7d27af44-09a6-b98c-04cf-ddfe-d87683c6', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('44dcc86decbc4a2b8f6e9c4dc11e6cbd', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('450aa9ec570a41a299233b91292d3e6c', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('45a14435f16d4545832997d47fb486a6', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('45cd6fae32354360a2fa45ef28c4fbc4', '633ea3ee-9f91-6367-0c28-4489-ec36560e', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('45d089706068411facb7729e4e429aea', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-12 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('45de9a090971430793f7cf0a87c59ca7', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4658a2ceb3394783b0f5c151aced6de9', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('46b9f0ab45fa41bf9cf12eb9b4449cc0', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('475615b6d0e349bd926145e7d0b997de', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('475a84a7a4e54cbb91195b85c186bfa7', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('47fac149fb22438db58a92ae1a3500b7', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('48d97e3bb6054732ab7340fa9073247e', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('48f58ddd94974860b0d1f9bf13770526', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('49393c79db64443db496091490d62710', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4b08988f1c62471ba88998005c3845f7', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4b15bd9d6b834c4aaa25885cc050643e', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4b585d0dcb2f4848afdd802e2775866e', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4c009b7c15114be39c647c27d0ce0916', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4cf0afc417534d879aafb91ce7868014', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-13 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('4d044ea5e990478a8d694cfa4252532c', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4d24ddf6b9044b5cb9d13b1b1e48517c', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4d8aa082255340ad9d48db171dbda430', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4de0321e9da44ee883c82b4d0600c089', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4e00c8f7c81c4fedbaa5f68753527382', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4e18cefc52094c85a62ed8752b98ac3a', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4e5c1c8b75cc4bd8abc37f4377edf975', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4ebc261360fe44e492da7bd3b68bd3b3', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4f058c827f8546ffa1071b903e05b62f', '21a48c06-d7d5-220b-de1b-daf7-dd3cb405', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4f662f74e43c41648bbdab9079505501', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('4f6b003116a545f29cbac6ea4242d3e2', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('50513163e6c441daad18046dd589f965', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('50526db05c464e638cdffbab5ecca5cc', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5095344cf9cf427d820b819086f7a3b7', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('50d3be6d3e6d4d468a5c015b4f393c15', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('50e777103f304a3497bbc3865236bb2b', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('50ec4e05b7b0421687c157d944e0d471', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('517fc34408284bea92f55d5be99f18e4', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5206615e87d34fe0a3d3396c9b08fac7', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('529dc866c3064d75974a74f9e6ca0451', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('52b695c059e444709489986486611c5a', '8c6a88bd-95d7-5200-6539-2b0d-296f338a', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('53359023378242d49f970ff5d1eec726', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5371842642f446c695d4ce51e1379c25', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('540e8eae8a4e450a9379ec96f1055053', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5411d629026a4e2083e7a69ad6ee61b3', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('544530b8bec24a5fb6460737a78a57e1', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5545e6a4b4754911b36b08e3df223a22', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('554d0566644f431eb0088e61d65ca1de', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('55e0f162862f404b892399e5a5f50d75', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('566909e1d505476ba1e2086980e747a9', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('568599bfd08243418ba0f197a9daa4a9', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('56a84b8a13454d83b99b7e18a9466645', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('56f8b703f17a4d95851c98169a89b2f7', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('576121656a4f47568549d363501397a8', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('57c3fd5881ce4784b2cff6554b33acd2', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('57fe0c186a5e4c9daf25da6a5365141d', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('57ffe9ce079b42a0a7c3ccbc3008a62a', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('58055ea6645947f2a566136bdc5c0823', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5839a72a94fc4b75a8b734f2e46f3cc1', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('584a61aa43264d1d93ed515d7e74905c', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('58a9a0c8d2b449c3b7792c85902aac90', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('58cfa8ed42a94d209934dc2dd38e5744', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('58ecddc55e8b400690d50998817fda57', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('58fa9c2f7b774e86bb6bb5da8b98bced', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5903d5294ea84622aec50ff359579340', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5a536180139b48ac803879f66b22a17d', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5a7bfc3106fc4eb4b5cd521fc8d3d6cb', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5aad814a402946b4880b0ed6167b82f1', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5b0936f6d6624314868c1c12e7cf6c56', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5b163c15b4964bc887323762aa905bd5', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5b41da6685844c31b950f36c422cf8b6', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5b4dbe6b19244c19a4a680fde9f63dc0', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5bdfadf04b124d828453bf238c802956', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5bfa6fdbac4b431c815bb713e4c68266', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5c4b8f5d3b2d4da6bb618f382963cfcb', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5d00d43cec6844028b3c284f05443e9a', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5d6c4920fe6e45e2886007dc6bbb36f2', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5d70e610158c4d498c8037676d9e0b88', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5d96c1898f054b0681729f6d81039c60', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5e216451c86f484483bbdc419faf19a4', '23bfda86-9369-493c-0856-2d1a-7f775b8a', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5f7c8343e3514e30992b4417e02c0c5f', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5fc932d0cfc643a2b0b041aee11d867a', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('5fe90c533ebf427fbfdecb34be7bae02', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('60459f7417d0435f9b824a58ecd73866', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6055aa1420e44906ab32f221dd68ace9', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('60619ceb760d4339bcc7e0853f202cd6', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6083c14bf3c94e4babfd075b9a745b3f', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('608a0911361040c2b4a9f821785726dd', '799146af-1860-410f-886e-e11a056309f7', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('61037f7e021a4beb9159b5aad46c3ea1', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6120f0859d784180a254e4834a3cd9a9', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('622f1553cc82430fb33a1d414eb3e612', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('62384403859040158b84944f041b467d', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('623fe726d87c4f50a5f6f1f54abbbc14', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('627f1c83bfba425bb3d387a4c60797d0', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('62921295ccaf4fb09566b0cc6fc8de70', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('629922758c5b4eeba99dd639a17eeec3', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('62a83a59f99a4f1a96090bfa1ef88160', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('62ca5b4179b644879fdc618b6a398443', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('632729daa33d4b6eb4676c811da8199b', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6367cf52e759468b99cf1a34414d8fcb', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('639d29da460a470b905ba2ace78b5ad8', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('63c9c048300b4c2a93e4725b8cff85e8', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('63d5f5e5bfff4dfb942fbc0f5c72a46f', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('63f63599a4504989ae37dd4a8438b354', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('63fd07fed9a54d7c80c38f88e9ce4805', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('64230da57eac463193fecf9146ff6b88', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6580d14bc971460fbd51d068d83bf73b', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('65869315bb5541e2a25169430922e502', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('658fa7c5d5cf44d495cabd9bee59edcc', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('65fee99ffc4b47a8a4c6e7e486687911', 'f979656b-1a9c-32ef-4404-5fbb-5710e336', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('662df2a60e014d6da4098f83cf801b36', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6657e9ce193742b9b7ccd6b7be85539e', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('66895739727d4b5ab19962529b05bbc4', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6700a6fd7a43407b84d4c1fb4cfd703d', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('67bed3f8ea0245de99fffe5d273f262b', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('67c520c3fe814c0589acf88c6e23aa79', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('68723817b0d943c2a4e493d3af2079ae', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('68981a8fa9284d61be697cc9a29a8350', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('68ce8088187248459fe5a8b926997ce8', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('69416c099cea4a47aaf3f3c550083502', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6980ef2c06e94fa3a49b0076723c2916', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('698448e937bb471394fdb2178bf6a2ea', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('69abab4e56024362bc20329f871f9187', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6a018bf12dab4ff1abc68fadf1f8895d', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6ad5f3352b4d4f7bb936dd6714899bb3', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6b084f45ce814ebeb01d9d4dc73d3cff', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6b43b26622984f2d8fbb61bcafa96a03', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6b64ab98b2934e2081070aa958576771', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6b7413b86a5c4b87b496dcc016535c77', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6cc3bc3439ee4eb2a907dde7558fc2b5', 'ae6df525-a3e2-7a8d-63ac-fd9f-8fbdb6fc', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6cc9394a09f241f896a9dad73f92abc0', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6cf89679c0af4a73b04cfa4487b53db9', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6d39df8cb50d4f61a0a992595fff345c', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6d4cfe30d93b49e4803121853bfbe740', '21a48c06-d7d5-220b-de1b-daf7-dd3cb405', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6da25e85f6a140938e3c8f0b670038da', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6e2969ff23f9401fae87eca56b5ddb3c', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6e40a6d996fe4a929f73ad2ef49a8f6b', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6e81a1260b4543f8afe2af4f6c03ee75', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6e9886e336004a27a8a3f2e913f61ded', '53aa7040-d284-ab99-cba8-a165-2f6d5b3d', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6ebf7e0d5dd746b688e047b24afd5451', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6ef17887d94b477da77f290836ab5acc', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6f39e9546bc0406ca0a6e705de9a1aae', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6f6490f779894fa3beae8e93e8a0cc1d', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6f9077efb1eb48448891e10220fe1cd3', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6fa67cb4692f4cadba9fe09c4561dd41', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('6fcbcf4eefa54bb988ac86098c0208d6', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('701c0bf5466b4f048c20755b5c4c82c2', '53aa7040-d284-ab99-cba8-a165-2f6d5b3d', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('70594d3127d346c8a0b5e3171ab09e58', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('70b7b284497a45e9a0622ee8da3ffc44', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('70f8e11a8c5a4d21b9ff7b75fbefa93e', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('70fb7996170d44429478096a91d4e1e4', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('70fd7ace30964c86872bec57d03d6ea3', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('71190c68d5db4511aee87a2f7f57ac21', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('71d3acdcbac847fa8d0fc11a2bc65108', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('729e12bb9b0d421a974fbdf35c746517', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('72eafd14ec5948f993837e235303fc94', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('730db5f67f9e4de3b0edb54010ba5472', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('733361da336a4c658195d1dc373b4087', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7342c3bdf28a40e38ee21825fe9a06a9', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('73a469fe1c874f1fb226d90ddb023c91', '23bfda86-9369-493c-0856-2d1a-7f775b8a', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7468d1e1fbff442a9c6a023fadb94a96', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('747d88a5ffea4dadaa568bfa0191d56e', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75091803b8304740b7ed4502c612cff7', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7512b1d889b54aa2b03b52a086828ea5', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75151c8803834eaf94bfe4006f6ebd2f', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('752ae16f63694a87afc214f6bd23757a', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7538954c39f940f48033b32e57bb7062', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75897553eba14f3eb5a280642d2c74a7', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75be50d9983844fda00d2e27a67fea2d', 'c5ccca09-7c48-4e85-3d57-3afc-5128df6a', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75d2b7f10ff343bf83db28122e07c70e', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('75f495dc80294059a0234315a471b4fe', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('761fea53d7a04a2291e63744dd122506', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('76219354f869460baf962b8484d8f967', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('762415148a8d427ab08b2276a13f2c92', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('76ee616cabba4647b28ab1867e736c9e', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('770d8152828a436ebf63c905c32d0198', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7743d814c7e24ec985e5b3a20ff17064', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('776101e974f14c57ab0f95daff8d4671', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7769b3ffea144c51a656bc52d2b7ff0f', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('77b48c5c0ee24be28b22da483aa1cdfb', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7819b61f30624b4199397bf930b5d914', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('78733f47ef1b462189791e9e2baffd90', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('78b0ac7c05324f9b9283ff7c48f95c28', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('78e65bd06e7840e4a01f18dea2c552b9', '7687dd51-5f69-f201-5cad-62ea-960b95f0', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('797f3b5e525143c385c0aa9bc86a6321', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('79bca405545a4077a6ff6595919d6f37', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('79d0c29f06104287bc9a0332791f9579', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7a5d51bc980149d78216c0f837cdca1c', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7a5df803395f4c3dab7b52c5bcb77508', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7aa65c94d0954cdcb8fc386abf27d893', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7aa917cb7213493db945e52dd8c4bd37', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7afc97354e054af896d31ce8ae5d608a', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7b1e371e2b0a4843ab0100a3ea261c30', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7b379c405c414b209cb6fa7b7cba2c0b', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7bc5d55048f044f98aab85da15b217e4', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7c1a7ea894a14bd79de669defe200e0a', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7c2b0eb0fe494a42bc9283663736d9d8', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7e2ed33a61ae469eac3c6d3b357eaddf', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7e4a6389974649c992c4bc5b8c075e27', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7e8c58929746489f9209e2939b168aa1', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7ec9fd589fdd46bc978f9a31ee6255ec', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7edba737d17145de9065f844d434a50e', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7eea6bc9412e41d581b742782898983f', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7efe5f88ad994c6ebe345a3ddb0f02e8', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7f1abe212965427d96acc38278018800', '53aa7040-d284-ab99-cba8-a165-2f6d5b3d', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7f3cd0983a86468ebb64f8ac6e6fb678', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7f75b6311f154e718f54c77b56f7b6da', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7fe9e291f2614fcca462dfa000997af6', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7ff28539f46840019408e3e3df390fdf', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('7ffe63560d96433cb8fc71dea0a9c5fc', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('80a40ecc1062458ea4de2cde854586e2', '53aa7040-d284-ab99-cba8-a165-2f6d5b3d', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('80f4cf42b3fd4ca0a0f30c5b88733fb4', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('80f81181157b4ff5b13ff4b0f438cf0b', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('81153bdda70b40d09aad35017d77eb22', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8182c746767a486a915dc259a9ceee48', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('818d65418977441bb0d2b9bfd5735cda', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8274fc70fa5d443f98fc097bc52f935b', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('82898081e59147c2b165f3e9c2281260', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('82baed6dfcef46a19caf0dd02799456f', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('82dd12a29ae74a2db5108d462ff791f7', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('82e759e8336c44a48a754295a5fbe443', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('832d1786f102483ebdf74bec952c2b6f', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('83332c1a7d754a3e97fd98f59e0371d3', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8380babfc6e14f9a96a333f269ab59b0', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('83a3f544309540019a00f40ecb104a43', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-12 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('84059647841440f48820420bf69e21fa', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('840ef01384e14dff83e9db0b8b5b5686', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('84138354f2894420b028b25803df6e8b', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('843cb10af2124d38ba6e31abeae95373', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('847acaaca616485283a59df7b078d36b', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('851a8ebd97324dc1aec94c9fe0dd982e', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('851c99f211204623ae902dadf5b70879', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8527f50ca50345e19c71733497a11aad', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('85d79cec53974fcab765b8989feef195', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('85f49208b7b0419a97671009f43445c1', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8602bbfe2cf146c3baf5764e1aae7cb0', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8611ea93d3134391a1ce1b29853ae988', '633ea3ee-9f91-6367-0c28-4489-ec36560e', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('86203f61669b44ab86db61bb1fa10ec5', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('86605f0aa2cc4c2ea2a0028ed964b9ec', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('868a9506983e438dbd34f65995619a9b', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('86f67a52b4654909bf9c1df076de4280', '7d27af44-09a6-b98c-04cf-ddfe-d87683c6', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('86f6ac719ed54062a68596c4702b2638', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8725e9f9edf94b8c996ffcc2ab899931', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('872a1001627841bf93e15b6ec97fc563', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('87c1cb7b7a064d15b53d48c9f59af7b0', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('87d2f8cddc4244cba77390b32e3d99d8', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('880b59b06c7e45558f08ab054ad48f48', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8881aa0de1c54e26a6638dfe395775db', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('88899c334e784a5c8d3d4e9f575a2178', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('88d0360ff0da4ead8f2e2000ac410f38', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('88d07d8552c346e28183ee50eb60328a', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('88defda250b74a90a0b91c97b509ede9', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('89662b723b0946148d7f00454666590b', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('896a2c91cb714fa3a132b91455d30843', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('89a7fcbdb67b46d482e50ce92a9e5152', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('89f28bce6f274177987c75e137a8521d', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8a2219c6124a466a822644741f5145bb', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8a574d328b514377b9dd31b351a1f085', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8a927121447f43ad8795954171b7e6c0', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8abf7b2a453a488dbe3ef910d0a46d1b', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8af6c4e556d645ec892191a961b0629c', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8b6d9fe4298443df9ed461c947a71ff7', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8b6dccdc40aa4f23b697569c1c99c5ab', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8ba3ac6c0aa14c189400d62d62dc3dbe', '49cca882-0829-e5fa-2faa-3651-89eb93eb', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8bc35bcf857940fa967bd741f70b2d2b', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8c091b8e2d14452c8f3ed5f6fa667160', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8c24ea56701d4ec79cc5cacce2dfe14f', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8c30fe2da9a84c3a8448dcea61aae84e', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8c48cf0d95f541f3b390ed1f59166b71', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8ca720fceede4ca28a7dd2b9ef923e0b', '23bfda86-9369-493c-0856-2d1a-7f775b8a', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8caf50a8069c4e7aabe42344e7a7e9b7', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8ce570257c6e47f7aa975dad014b0f2d', '39430861-2f6f-be00-b10c-8f6d-9f8bb72f', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8d7cab03551c44a3b82177d8b4b5e73c', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8da8e54c0a0a411988484c1254ded1f3', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8dc4d0f68fdd4f80a0cb472f23e3af08', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8e3794f74f9f42bb987fa45f77f24b76', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8e6ce77f2469416fb2b289b57f7cafc4', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8e7f7631f0b54e3aa0807924a8854081', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8ea1b0e6a6e841668a816e0ee9d73601', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8f451521509648f799c7d1fba5242625', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8f7fe2abcdf44a31a95827472134b9a2', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('8f9cc881d2c94b54856c5d1975f88dc1', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-15 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('8fb9b952bd414ef4907936ac9969738c', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('90255027932e4dbdbfbd90bd4dee7a31', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('902d0f91389b402e975d9196b12d5c67', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('90363d8f50f34f9d93b8757331b01bd5', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('90562391393441149835ef6dae10f0ce', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9074d1457f8345659453db9a92395d02', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9088d42944b948249dc621a80faffca2', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('90b56e72eed94b2ba194fdb174641dcd', '633ea3ee-9f91-6367-0c28-4489-ec36560e', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('90d786b0cbd14f6b8ee11b71f46bf59b', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('913c1f90604346588af0cdadb591a84f', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('915b15d4ef074c259d7cd7ef91e16d44', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('915bea6c569349088c10c05e1b136e9a', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9167a071248744f2b8010b11b18493e5', '49cca882-0829-e5fa-2faa-3651-89eb93eb', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('916cb1089b694f9f873e070316a57dc6', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('917ed17a32024beebcf5f8e912013098', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('91c4139d05ee4a3fbae95d2ad2d5bf1f', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('92086ea5a6744b7ead3828656e29e8a5', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('92191b01104c4753bfb1be6a6c1a98a2', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('92a7ae7ff76e44bb928f66f2c76777c5', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('92d8d63a55184ee0a4bb2b1d4f8397ca', 'd7a4adb5-5d19-0688-180d-e562-62b94099', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('92fb2c13be144c72b7a8ed08b82278a7', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('931d0ff70e394d0f8d4e4fb903f16963', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9333be2e67a549e79500dd43099b5685', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9379d7f7c01540f596ef781101b62599', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('93a5ef4c4e38481f82a56d3536637fd1', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('93d63d42589e40a9981db10f0eeb3063', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('93ecc32931864706841bb0d5c19c67e6', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('943c23c5c28844a8a9d635af599f5ae8', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('94c14a8056ce4cb09834bc2ef65ed8ae', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('95060c5da6f5420bbc4297b106519267', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('950eed7a610e42748008fbc316ca18aa', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('95431271582c4cb0ad9c87e9a1e2ca2d', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9558920dcc3440939619a91b576087c0', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('956de6cc426c45d89408914af2446cfc', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('95823a4d405d44469fb7a4925a17c72f', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('95cfadc9edff4282b5f6486cec03af3f', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('95d87761d06d4acb841316641ab0e53c', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9608dbc1e1034d22b818893a4dfa8ab1', '53aa7040-d284-ab99-cba8-a165-2f6d5b3d', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('960b82bc4f004ab8a3c03ccf40d662fa', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('965da130fe854472bf45130cd64c1a87', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('96a0f838db2a4959ac2623eda50175a1', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('96a2f5cf38b141b6b7fae8907fb86a2f', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('97784b679f95440dbf9debb8fad2074a', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('978a1fb50db243cb9ae04d0d03a20901', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('97e19742ac464951a74c368e598b39c3', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('983fd3924421496ba6744ce74d29d8f7', '2dd51e9e-6880-ef6c-8527-22a0-c562a5a2', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9874250413b147c59188335cc4ed2b6e', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9899619edfc640928f9f678edf5768aa', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('98d08fdf6e4046928429dca5c7873506', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('994236a25f92453cab188d9db04a6f9f', 'c5ccca09-7c48-4e85-3d57-3afc-5128df6a', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9946c183b208497d812f20b1f865d7b8', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('994fd885cc8b41ae955e432013ed701a', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('99a7f115c204447ab89f5a45eb3cf961', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9a27cb762f454df78df7f6c216083833', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9a42c915ecc34ac68e3307be03843d7b', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9a9fcda7d9aa4a80a2326e69b4afbde1', '41b4ffe1-cbb9-441f-b5af-6e45451b333c', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9ab1974a5087434e992f638bdf59ac0c', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9ac2f1b1f6cc4f899aeb912b36bf9a39', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9ad6e63b8e6c4d8b9b05f0bac71471dc', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9ade29c488ba461c8ab8873ee59ad8a6', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9af5f68999a94754a92140370607c80f', 'c5ccca09-7c48-4e85-3d57-3afc-5128df6a', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9b58afb5831c4b9096e5bc7af21c6091', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9bc804552352446490392d4d1cbcf8e7', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9bed5f84423e40cea1bfeb679f730f5e', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9c26a3a370864cb8bb42faf4c3837244', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9d057a11a85c40579cbc35a9ebad6c17', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9d124a770b774ef88c96ae003a24a16c', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9d36a1aa665f43d9acf4ae07f1c4bd7f', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9d43e860d04d4f128670a18bc0479e1e', 'da8542e4-3252-4bbd-bed3-f273a39d70a4', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9d738b2525414151b89141a203cfde3f', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9dacb7c1e9e649d39203d6afbeec78e9', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9dd36503cd424d2e9e5e27d410955d31', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9e71769d3cd54f3fbd8cd33612579de8', '2dd51e9e-6880-ef6c-8527-22a0-c562a5a2', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9e971a79b5b74373b679ba0cef075320', '21a48c06-d7d5-220b-de1b-daf7-dd3cb405', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9eaa1506e45d42ae9f9c84de9d0d4da6', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9f4d92d6f4d142ba96c665bcbb0add64', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9f82780f85b743fb82933bdc04a929c4', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('9fdd28bb2baf4ee1b1cae18c68ed3eb2', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a013d77c68a94c7d9aba30fcea935a57', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0173e71bd1247999eacbf932339b1eb', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0526c351ba74f55a7861be31fd5292c', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a08d0e0ebbe842ef8248158e20aefa52', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a08f2a271363456c91066b5590aa90ce', '7687dd51-5f69-f201-5cad-62ea-960b95f0', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0aeb79247134b1d871e98c6d1356b4f', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0bfb7bce6064caa8454627e9ff4d31f', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0e07339bbc848d5b0ef5c6f0a9b3929', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a0f1cdad0d2f43f68c808e447a4d65ff', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a10dc3ad8c3d446fb423754e675eead5', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a1699ec9c32441e6a542b53c7ed89e87', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a183850ad2854d58b358fb60347d426f', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a20dad0221444c5f920ab3efac31b99b', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a2245eb106514eb7b9586d8066c403de', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a280d067ef884f12b95a1dbb9376d65b', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a2f87d4e6071409dac2431a7459cfc83', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a363514df99245918581fb0ece2374c2', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a37bc07a176240b7aa9bbca0703f4e26', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a402ee15728b43e69f859d619fc0c3f5', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a45f652a7184473b901f16c85910c425', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a4858c8a563c4949875abc6048cfb59c', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a4f765af172546f8978fcc426bef9f5a', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a526c56bf23a4c63ab2050e1f6ff74ff', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a53de6940787441fb252a0a0cd8853e5', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a572b10773a8456ea6b27b7c3279773c', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a5776e44434348c0b678e78b0c22fda2', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a5a6de7418d9411c86f0446fb3a734c6', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a5c7a5960aea4a66a72b374d58dced43', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a610d4dd4f944dee9b91d55b4e21626e', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a6478003a1084ad092ba470d00e0d724', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a6e2aede1e4e4cad9166616f2e7da533', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a6f18b3b7d6c4ee698d285a14b2d5d5e', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a74c6d97ca644ba1aa469b2cd108c72e', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a7691e787b27418cbd76294ea8e6f3fc', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a77fbfb8c92c404e8646d2bf732a7f78', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a78e990ac4354b2cbe09f5718bbcc2b3', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a7c84822953246559357509da1f842e9', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a7d30c1b366e439facbd3b52c06359e6', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a7e3ca2ac3504881a83e55552609e564', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a86855819997473c8eaf3d91e926effe', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a8a61a177dd94f17a665c20c3943e9f5', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a961d0eacb6d48d983a452b57934f83b', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('a991617118d943bd80bf014740095a32', '57ae608f-af91-30de-e3b1-497f-8d36856c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aae66794c2b6454eb43b4da565b1fa87', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aae8e6721f834853b431ffa44759a1cc', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ab189762897f4a9e8cc151d98888d886', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ab764b51981a4a248b97715a7e98f33f', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aba95a72f4a94cca9157cb688bd0d942', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-13 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('ac8fcba6b31f43c5b21bdd3573c71f26', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('acb5328bd44946ac97be55f2f924c425', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ad964d0cda9240109b5ab909bbccab73', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('adedb3b9889446feb6b46f072b6b11c1', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ae18ee47d99b400b910690b23a7f0b3b', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ae1b46e85e384a0b811d591ccbd3570a', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ae3139b35f6f4eb89f14647296a6e998', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aea441641b834a81a558b5e4fb211e11', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aeab8cad4c204ef4b8099a089f7267bf', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('aeca9d5e5be94ff0ad5bd3c3e023937a', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('af03ec967b214b4ca37e8dbc274f481a', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('af03f7b7aa884b9bad888038db31e47e', 'ae6df525-a3e2-7a8d-63ac-fd9f-8fbdb6fc', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b03e4a4f54c442998063d30fbb620b1b', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b0518a7dcc304725878ba507924a93e1', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b07d223f3ad646d2b3d51be3de6bfb86', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b0d2b822186c49ed9f72ec4d9ebee9e2', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b10078c54ff24ca3aa868ab452d64ff9', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b11f71f6a3b84ce997c6b190c6418b00', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b13f166cbdea4a5ab7a8b1860b894102', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b1583b7c454f4fc881a94612338b82e7', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b1787d46177c4a2e96d8aeb59e4e227d', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b2061015a81e4db3ba0ff95952493f1d', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b23f63e0a0044bc4abb43cfa5a3f9936', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b2705f8ba0a2495eb3a40ea556d7595e', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b284138701514b9c85b4b521a78248cc', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b2b7f0272f5842db9301f52391fb38ab', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b2e4052343974a67a6c0b6ff588bf9fb', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b3544f93169d4a19be68734f226506be', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b42a618b43334a7496c39bca6da1ed8b', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b5269e51b1b645a0af3cd16243f563aa', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b53109ac06bd42c8acefb904028d71bb', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b598bf41fd1f4d14839e87f03bec2fae', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b6002d3a5d764f3cba4e54083f4bba6a', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b6107ccb6ced43f48e120de4b33eb307', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b6b1039de1a446db93b4876449208279', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b6c38e7606de4709b5681c321e36adde', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b6f45e18e8a845378faf8397b4136f58', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b7059fdc7c0b4302b7d2c4fb52ea9387', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b76a3f41a24b438db30c0492d8af999f', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b79b0dfddbe646c1a6f5e61a9523a198', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b7c39d926c3a49f4bd7d1bffa44dcd79', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b7f34f80e7014b73833d2c560f2284f9', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b8015a883d454e07b35ba50b202367a1', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b8921a574ff04e1aad6bd193baf7d1c5', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b8dd9dfd92064e37af76b8b7cca4f239', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b96548210baf4cb7bf10f0e5ee558021', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b978c4fc767348f589bef51e2f7e03bf', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b9852a7a1d804e61944fd96f97707d51', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('b9bd0596152b4286935cbda869b15d22', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ba6e5b4c4cae415daf53813b57a5b29c', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-12 00:00:00', '2');
INSERT INTO `downstatistic` VALUES ('bad1d5d66477494393d481cff681047f', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bb2fd575d869442c9fde36295bd45527', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bb54a273bfe84b2c9c6430f693053e11', '799146af-1860-410f-886e-e11a056309f7', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bb6e62b38d1c483fb1bc740a77110446', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bb8d3d48d8ab4f2eaca7bd31c5723c0a', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bbc1c12ff28242cab6be1d82326e8060', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bc2ecf6f6e8c4a3eb518309dc277a38a', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bc38909a19634c0b8efdfa17780d81c0', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bc4ae4e9afa44bae989e43ec7e35e8be', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bc5be5e251d74075bcd5bb27b094620c', '21a48c06-d7d5-220b-de1b-daf7-dd3cb405', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bc619abcc0ea4c91badf5cf5a97e8f41', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bca2765b794648c58f10956125ddec60', '34f4bcfc-2ad9-f33c-f791-4938-0a2c7b0d', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bcec774645864a918a185c3497a4ad1d', '6e8643ee-62ac-8098-ec75-bba6-4661f74e', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bd2e3ea2b0664370a9418fef8520a18a', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bd8b5c2d3ce343a3975c7020e7a62496', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bddf359d859443adb10607fc6aa2ffec', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('be4d83edffdd484cb1d390dc49b40cfa', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('beb1f7d5c4b147358e01862a1e8a6bc4', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('beb4843503f14d6e89953f7afff6d14d', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('beb621cf62df47709553fbdb7a42e1a3', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bed2941011ac4784b5a17c61834168ca', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bf8c0f5d01a04821b0cd1cec6e28bb3f', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bfabdd83858b4c7f85cc788a0262c9f3', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('bfec3d93d6654b8b9bb75b92098b5562', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c045482856e44564926ab1d1a78d2ef2', 'f6eb83ab-9968-7ee9-6852-6226-ad075e02', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c0499a1a8ddc43148a64567702a47aeb', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c0570fd590a74f3c8a605602e382c2b1', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c07adbe606e64ee79e59118a6d52808a', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c10013bbc0ed491eba79102cb9117e46', '23bfda86-9369-493c-0856-2d1a-7f775b8a', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c16c21d12bf542a4b1ea161a58fb64b6', '799146af-1860-410f-886e-e11a056309f7', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c225acbbcf624bda887d8452ab95484c', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c3184624968446f0a0ccebacd6d47211', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c32097e6aed74ae1865357e42791e976', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c390d6376f0c459da36aeb78a777a8c4', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c394ec9643e841d6ab56717b800b2906', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c3a9cd7beb6c4b719f57e0ac81320387', '7687dd51-5f69-f201-5cad-62ea-960b95f0', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c3cec0318c3b436ab36968afb5176690', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c43441a185c04dd9ada134093d063f42', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-12 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('c44fbe5683c34e7a8e7f99b72b9ee6bd', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c472fbc1654041e985934c093bde028a', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c4f7501180dd4323bff840d9e49ef4ef', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c57389a8d70443f086c70afbe43fb301', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c5a00abf98874fef89368cdcf8dbea0a', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c6939b4a88ca4d9696f82fd78fe1a1e3', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c6cdfbc7ac6c4a7abac7316766e0effc', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c6d009638dcd41a08deebfd5d5b0c693', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c70ea9fd92b14ca0b65d77d7838cc9b2', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c72b39966805437e9cbad871b3f36135', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c7d4fb2433644bfcb94d195f1e4e70e8', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c8960f00ee9c4ab698adccb9a3989925', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c9241b59b6794277bbfe3009b31b3c5d', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c94dc898953149b4a02395bbde454dd5', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c95a6f36610647fc9445a59d7887766a', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('c9feff95c9e24e299c347a7b882d662b', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ca3c9396f7c2478d8fe4e7f19de76841', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ca44802d36ab498fa62d9b8d45c5b4c5', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('caa708234c28458ea76735df1eff9acf', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cab43423fcb84f88900f3f39232b3f03', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cb4a6defb11b46f5a19292442d4c6ac0', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cb4bb7b59a774def9a2195db64dda7c0', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cb913a79124f4c9f84af5473d3e078fa', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cb96451f605346bea1ae3a4016b7ca1c', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cbbe85c1fcf14ca1a9d102fae5d9f422', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cbc0d82ca8eb4de8adf743de86aa82a4', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cbde2fa871e949afbbd636a9b1c0717d', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cc1f1c7c364d457c95f6d49c5ec1fe86', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cc3472d0673a4b04bf6925f4dcab3ac3', '7687dd51-5f69-f201-5cad-62ea-960b95f0', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cc6d8ef2e90e454bad9804f2ddb35c04', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cc78c631d4a847dabca23d245ec60093', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cd0fd49547a14e3ca097fde8cedd98ce', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cd2d2c4b48f54b09a2a858a929148ad3', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cd3211c45a774de48662a2d61af68b6f', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cdda36c6666e4fc89c2ae63b80a4c27e', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cdedafc9c26c4d7796f5e67a394b6f93', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ce07ddb488be4fcc9ca1aab4ac7e98c7', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cecd5db9509b49b69bae4325bae5eaf6', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cecddcf7d5084dc38fd2b1c976b449c7', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cefde0995a4e4b71a04e4e1d557f7717', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cf3b2074000149dab5ae3678f4ed3117', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('cfc701588ac34864ad89383806ff23bc', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d0a72ab6060141968d35adc29fad6440', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d0c09f37aaa54c5fb5112ddc8d373472', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d111c29bf3a5433d9334291413d1dba7', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d112c0d4f07e43e9b2ab65af6f34d870', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d1e9e2f27541439881044adbc41ca0c7', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d1fc67c94c8041e5806a5b7660ca537a', '034150a3-38ef-e6e1-ca57-fae6-ea7e7b2a', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d235956871cd4ed2a801b58542ddb83f', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d256913d1cd94f76bb405df1b44ff14f', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d2eaf2e1d2204be9896be4c2675e95fe', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3209954b3c7455d9e8e0c6bac2aa18e', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d359ad8d253f4948bf71176e9d4971b3', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3675e0be66f4f759717f01534a74b91', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3a1588e2846473691aa0548ef9b1479', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3d95b1d844b42a3a29515a2c6ff8630', '6befed7c-10f9-a254-bcc3-9a72-bcea5309', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3f72a506b1947a285695da46c747fd4', '2dd51e9e-6880-ef6c-8527-22a0-c562a5a2', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d3fb290624744fce84618fb9e8e70cc9', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d469d47f839c4aed8c6c1399ed5ed12e', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d4a304c4456e43d781b0d7b38dca5c89', '4c0d65b2-7368-22aa-80cc-2931-3c7d370b', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d4b138d58f04450d9353681d8a0aa7f1', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d543cb8d131044ea9ac4bb13d43354fd', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d5da1409dad445298bc58a9a9fd20280', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d5e76d29ed5c44a0ae3f8adbaff36023', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d5f13ef279944c37a1fff164f9183c5d', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d60718ecf0fa45e68c7f0b4293f1596c', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d618fc17c2304cf7a1d1b45753821847', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d6283677e6584ee6bde1ca7e54611ec1', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d67e5c57be18475b9ddac26533c3250c', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d69ac7c27c004c55880acbec23868c0b', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d6bce1c02366439a9b184921d4d27d1d', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d6fd359b238e40fda12b01b2a89c81c1', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d760a82864bd42cc969f82c81192bd65', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d7e19b184b4d4ef280a955abc80db231', '9a26c2bc-3f30-7c33-614c-b8d3-376e181d', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d81ab97f6a734cd99b0f26e40246dbd4', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d8242230a93f417ca614e65718faca4b', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d82ff7cbf3ea435dad523339dc757d4b', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d85b7490c2ec46328c49f3785290fe5c', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d874a1a8366246ff95d29862694b9306', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d906cba3782e4ad4827f195b31ef2c83', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d9282d0d302e479faf68f88f0edcd434', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d99b7a66adec4c2bac4d9fa4405ecb16', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('d9d7ff90df0a42fba9b20f8a78bf5302', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('da10721099da442f841be73220651b0f', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('da637ae5d873479c9d6c64fd14d098e5', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dac5c99c15ef4aae86d1ea8851d9d3ec', 'd9a9109a-f6c2-4ba8-b375-2407842c81f1', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dad89320811d4534a21abc4c08925f7b', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('db26e5f6b16e45b6b87cf5f2f6b4d275', 'ae6df525-a3e2-7a8d-63ac-fd9f-8fbdb6fc', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('db72163320684d329c8b8dbfe4138403', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('db99187a6d624c7cbe7151a83b11d8ae', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dbed84c4f4eb44618aeba36ff22c5e03', '23bfda86-9369-493c-0856-2d1a-7f775b8a', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dc7b3c3693634d0980bae392ea6790fd', '9d128152-2872-b090-4900-8e93-893f5a4b', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dc829f56112740e4b95976fe42c7a1a7', 'd7a4adb5-5d19-0688-180d-e562-62b94099', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dc9086c7a5c74877a883e0808bc376b4', '38adbc58-0d67-2013-fdda-b87e-fffa8c2d', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dca41f0d9f2f4adc9ee505d2e2818be8', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dce58c7869fe4df08a3e496c18cf7408', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dd31e58a5ec5462b806710075a0dc4f4', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('de1bc00a387541f9acea69289a9b2360', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('df6b7d7efb1d49d2994ac451d8e4ed4e', '00422ad9-952b-281b-4a12-2791-4fc54e76', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('df7f9227e6904c56892b076d877451aa', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dfb3d8305f734abf9b0d541f5b30b992', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('dfbc1d0d8e534647bca4c604d89e420f', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e00c1fe3fae040cfa3172a1a31f2ef59', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e01ec7deeb664828866e4e2663b5950f', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e037b189e1da462d81292f5d267937d8', 'd2650b8b-319c-fc35-ea6b-415c-7e06dc8f', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e056569f05cb49eca6836b22feca30da', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e08b145fb65b489d9dde4865c5fac5e7', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e0a10075a90e4e28bedc4fc0af5b65d4', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e0f394f241bb47e297393ba3051e7742', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e137dbb2f4c14eab8505e7b5b6a86e84', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e14269d1f9b74f6b94968257620f65fa', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e1f9d1665e664e45bff539518cd2c3d5', '69cdb625-7f01-0a8a-663d-9f1c-2228c8f6', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e25953fff47a4371b668368a30ff891f', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e288448c161148739ee8444b29b29e24', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e2b664c901dd4a94854e61ed18b1a3ab', '487a99d8-3ec0-a0d3-dded-5614-b1a6d102', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e2f35a9546224e97a4fecc87d64ee47b', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e358337d67c442c0a7ee11b72e736950', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e3723a8d5ecd4b8597ae3404004a79bf', 'e4c1540e-fb16-54c5-07a7-4eea-cecc054c', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e397b8dfc33149e8b21ecfbaa56ad6b3', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e3bf7133205b4c199e9ca37b9d232207', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e451996c979e49dbb8d6192d8a824e2c', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-16 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e591b17f232f4302ac603dc015abd9d3', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e5c76655993347309fce9b6df370fed5', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e5ec590a7a5548e5a3d3f9fc5569424f', '97dc8992-3283-ac23-96ef-640d-b51c958e', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e6068cea3cf94793b1d80716db376cb9', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e62f3159b67c4a8ea2720023d3866442', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e679c3d206d340fe91d03b576e70f971', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e67d95eba3b248b5bea9cf785e839e34', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e6a0750594bd4df0af191aed7c98da5e', '4501f784-85b3-a902-4fa4-3ef7-ae0bdc0c', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e6cbb7adf5404c1eac5519d34c89453e', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e6feffde593941bba7d513ed77cfe207', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e720f6b14e18487e808dea0075f25d7c', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e738dc3aad774690884f4c4a6f7ea65d', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e7dc90a43c5e402ea32628197857ca41', 'ac8e3ae6-624d-5b4a-90d7-1f7f-6a6b04a4', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e7e17aa5df0c49e492bd7212b3fca372', '799146af-1860-410f-886e-e11a056309f7', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e7fbc82d76e8460ea6532f4d231d01a9', 'f05e1c82-0dfd-388e-24dd-5485-b94af10c', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e940693d6a9b42af893ff0e32d8728c2', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e9c3883b16c84c5a9f26ff7772a0f9f0', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e9d4ca0a1d37483993f3012eed75769c', 'a458b87f-2dc8-8eb2-0914-85da-222b954d', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('e9f77d232e404c7a8fac82a94ac66866', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eab8c18a73e4468482d348636bd36da6', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eae0331e1f67422e9e46b31fa3819dd8', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eaf0a3a3e4bd4abfb4741a9e61d37a9a', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eaf685c08902450ab8ab5b62a1f27c74', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eb3f2fe11b3a4283afc256e7d0eb4ccd', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eb47a606f674460b914699b13624f776', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ebad6b89ec044925b9bf2f2952789e37', 'bb9c5867-59df-b024-a031-6b83-305c0d1c', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ebb503aa921140e08b4c1d6923a3954c', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ebccfd6a528347eb846d858aff305ea6', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-13 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('ec0c382c49f4400f86e17fa15bb10a1e', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ec42ce0ed3d74f5fa625ff0ebf6a3120', '4b7afe7e-e2e7-ef45-ec12-9d8f-0e64b251', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ec4f7d6bd6fc44a5985873db778d3767', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ec8c7658086a4024a763ac0f2b3d4eb7', '021d1324-120d-54da-16a3-6362-8656584b', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ed1c819354de44c08eb698fdbcdeac80', 'e08630a2-6f61-6f0f-f116-ba01-74c1241a', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ed4074fa2be249b3a865f67b354cd566', '98e40a7f-66a2-687f-bcce-9143-f0bbba50', '2015-05-28 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('edab7ee60b10416ab9d60b500d8e04be', '45d444a5-d8fd-7600-f280-8366-5743ca06', '2015-05-13 00:00:00', '1');
INSERT INTO `downstatistic` VALUES ('ee3810e2cd514d53bc7a9801af56d627', '799146af-1860-410f-886e-e11a056309f7', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eee6639c12e240229ad8ddde56ff9d93', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-18 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ef0c53f3325e469c890a8c21a623f50a', 'c197b971-c9d0-ca64-867d-2f64-d9f88599', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ef31712884204a44a157cfcfb21960eb', 'a062f789-fefd-02cf-1519-e784-988526d7', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('ef6ae6053a624cec85b8e8c6f493cc48', '54ec38b0-92fd-664e-71f4-cafd-860fec4a', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('efc458ae512a468391b012dc510d8cc9', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('efd25450114f4f8489a9a519a12434f2', 'd271785f-ecb7-e1bf-7b31-9329-93821658', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('eff2c341e4694523be5005c41739abe7', '15393017-6c9d-40e8-bc80-de831d5fbb30', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f0b16badc04444559285e10c2445019b', '73fcd71f-093a-0e1b-7424-c359-663184cc', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f0d6b444c9d840259c6310ce477547a7', '283bb052-3a4d-4b98-1b5a-7178-9916eaab', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f0e74ca096cd4c2bb779dc3b6e204f35', '041c8ba0-bfe1-1f17-daac-0675-006f8b79', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f17f2fae9e1b462688cb231b54f37eb7', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f1c031932eab4ac9b1f547046f4fb2ef', '021d1324-120d-54da-16a3-6362-8656584b', '2015-06-04 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f261be264fa4488a8b0d937833f87269', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f2886ea93aac4908a29e76b86e483b12', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f2b205e94a7f4d4080fad2b66aeaf3f4', 'aae0f049-6460-a35b-2eb7-4993-dc04b5f5', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f2bb9f666efd41c584992fabfddd9d45', '0fe09edd-676c-43ee-8138-125490430f06', '2015-05-20 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f38daa5aab3a4895b0ae99e8f6fb932d', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f40f4a11895b42948300a8a78c52e2c6', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f42515d705694b518901614d59f917cb', '6f7ce15f-ef7d-53b6-fe17-8ee9-64057f77', '2015-06-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f4321d2c572348d880a99d2a989ce308', 'b09ca62d-e5ec-811f-3493-ecb0-e2166a91', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f47436002abe4f10916065149c09900c', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f4754face3624440b24aaf857e2a8875', '3ee05cdc-1fd4-bea4-cb39-1cf0-470903d4', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f4c836888640493faa211cb8845ab481', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-17 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f51259110c3f4861bb7060cf4b017e01', '270d707d-8e74-0cca-e1fd-4c3a-db18c948', '2015-05-19 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f51326fcf8a1489489e404b4ad65ac9f', '6ee00e43-914b-f426-744c-03d3-76a933ab', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f59d52d59cfc4af383cb3152e6d55deb', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-06-01 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f5f08ece81134df1932329aba5de7f58', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-06-02 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f66ab62d5d984f7e8b969f90f1887143', '799146af-1860-410f-886e-e11a056309f7', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f67bf0139793426ab08cf479df0383a1', 'f3bff758-9ade-8370-44bb-ce83-a132284c', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f77e968562bd4920b63405566818310f', '59b656d6-eca2-117f-7fac-e8b8-722f2a38', '2015-06-05 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f80b1e4de04442659b044b6f8be18f79', 'c0bc4591-bf54-413b-5dfd-a2a8-ee0b7779', '2015-05-30 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f842a9bdb73b4659bfa332db8ade4b3f', 'efcf5939-e076-df96-906b-a3e2-eee67cd7', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f865bc44aa34417f9035bf7120fda7f7', 'ad7b4db8-e4ca-a02d-6047-f493-63a6789d', '2015-05-29 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f86fa2cd608342c6a14e12f32d01609a', 'e7f73a96-7045-2bc4-851b-9fa4-95163f5f', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('f94fd9572feb43a69420fdfc2e2b4a8a', 'db925de1-1916-e548-3bd6-7908-41e65620', '2015-05-25 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21e710', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21e711', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-15 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee71', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-14 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee72', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee73', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-12 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee74', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-11 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee75', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-10 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee76', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-09 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee77', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee78', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-07 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa5619c0285447238301300ede21ee79', '64ff5650-1229-1b5d-34f5-c6cd-88a79873', '2015-05-06 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa782163e69e44329909999188b17c12', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fa7a92dc59de422b83f93c4032081654', 'b2402667-db4c-0d38-3a65-b909-07eeaf2c', '2015-05-23 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fab254edc66242f8ac291cbd655a2786', '5ab9a6cf-5fe7-8d26-24b6-b109-91f772d6', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fac0bc5356534531a8dd4bfaba8b3f91', 'd47f3a92-5132-9f99-8014-ac80-423c0d3d', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fb64b2fae417472dba9dfe3736163885', '5dc7d3a2-5568-5ce9-b99d-c905-f136a081', '2015-06-03 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fbef867b562b48edb1bf479a42feecf6', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-13 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fbfa096f917146fabe9eaf1e871a8e97', '15728f06-1e7a-9bc5-d508-e44a-8e679910', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fc4093992f564c94808a8175c08ee871', 'c4e6858c-e053-3a67-7ff9-230f-4da71167', '2015-05-21 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fc436c78d93e4ed9bccba090859f7bd7', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-26 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fc43f5776a874257bbc7fd37b7f8becb', '7687dd51-5f69-f201-5cad-62ea-960b95f0', '2015-06-08 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fceb1fad486243f1a6946ff79eec2385', '79269e26-79a8-61b2-c7f4-bdb8-0c124fee', '2015-05-24 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fd2f5bdc43b8406085f2855224974bb0', 'ae815ebf-2014-5aa9-3371-197f-bcb9b481', '2015-05-31 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fd948ee0f4cf4b13a426450fda015255', 'f979656b-1a9c-32ef-4404-5fbb-5710e336', '2015-05-27 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fe694d9eb15b4aafb4048e590cd64f9e', '77497da1-21ff-7822-f3f6-38c0-259e6d81', '2015-05-22 00:00:00', '0');
INSERT INTO `downstatistic` VALUES ('fef23feef191422ebb67cb08c68742a6', 'f3c5c12e-d8d4-583d-d3dd-8f3c-2e1198b6', '2015-06-03 00:00:00', '0');

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` varchar(32) NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `cn_name` varchar(12) DEFAULT NULL,
  `native_name` varchar(20) DEFAULT NULL,
  `en_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of language
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `org` varchar(100) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', 'anqizhilian', 'xender');
INSERT INTO `user` VALUES ('11833b786ac14fc1bd8cc9c8b58eaf81', 'mmd', 'mmd', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'tcl', 'mmd');
INSERT INTO `user` VALUES ('233416aa7cd240bab54a385a8e4a762f', 'zhys', 'zhys', '202cb962ac59075b964b07152d234b70', '1', '2', 'zhys', 'zhys');
INSERT INTO `user` VALUES ('26c6863e94d3457995a6d90cf5ed0aec', 'inew', 'inew', '61b956437b3140207e57b9bb0a174863', '1', '2', 'inew', 'inew');
INSERT INTO `user` VALUES ('27c7ca1323e34829bd79ec001ead8ad3', 'konka', 'konka', '61b956437b3140207e57b9bb0a174863', '1', '2', 'konka', 'konka');
INSERT INTO `user` VALUES ('341a834056da439a85efd589ef59406f', 'cherry', 'cherry', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'cherry', 'cherry');
INSERT INTO `user` VALUES ('59ce47cc4de14cc6bc106ca28bf66fa5', 'wiko', 'wiko', '61b956437b3140207e57b9bb0a174863', '1', '2', 'wiko', 'wiko');
INSERT INTO `user` VALUES ('61910847238e44508ce9a55118b6109d', 'xiaotui', 'xiaotui', '202cb962ac59075b964b07152d234b70', '1', '2', 'xiaotui', 'xiaotui');
INSERT INTO `user` VALUES ('83ddd51940bd4d9aaa4ffddc02f7c32e', 'gionee', 'gionee', '61b956437b3140207e57b9bb0a174863', '1', '2', 'gionee', 'gionee');
INSERT INTO `user` VALUES ('85101e3ed08e464dbe6d85bc61239d27', 'alcatel', 'alcatel', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'alcatel', 'tcl_alcatel');
INSERT INTO `user` VALUES ('8af9c03a2c4b404e89c994c59345744c', 'jpmob', 'jpmob', '202cb962ac59075b964b07152d234b70', '1', '2', 'jpmob', 'jpmob');
INSERT INTO `user` VALUES ('8c7e29431fdd402797f82aa1db6027bc', 'tecno', 'tecno', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'tecno', 'tecno');
INSERT INTO `user` VALUES ('97f6daa5268a4ddaa33a8fa075a3d363', 'zte', 'zte', '61b956437b3140207e57b9bb0a174863', '1', '2', 'zte', 'zte_abroad');
INSERT INTO `user` VALUES ('9f5f1cc6cca94b289fbaa4f2b7e039d8', 'x', 'x', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2', 'x', 'x');
INSERT INTO `user` VALUES ('a9d59d61ec7b4f188d59727d9bb3c43c', 'xender', 'xender', '202cb962ac59075b964b07152d234b70', '1', '2', 'anqizhilian', 'xender');
INSERT INTO `user` VALUES ('a9db808205894c4ea84b2ad554ab8d6b', 'parbattech', 'parbattech', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2', 'parbattech', 'parbattech');
INSERT INTO `user` VALUES ('ab805ce68c094263b12421d6b8062155', 'lava', 'lava', 'cf5bf2ab230c9740415984b28b23661e', '1', '2', 'lava', 'lava');
INSERT INTO `user` VALUES ('ac1af111ee8b4b2c8de62ba5a6324e4a', 'haocheng', 'haocheng', '202cb962ac59075b964b07152d234b70', '1', '2', 'haocheng', 'haocheng');
INSERT INTO `user` VALUES ('ac9eef530e994f49818272b3e8e30fcf', 'dingding', 'dingding', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'qiangzhuo', 'dingding');
INSERT INTO `user` VALUES ('b617f7383e744809af311f7ad25f9bb8', 'y', 'y', '202cb962ac59075b964b07152d234b70', '1', '2', 'y', 'y');
INSERT INTO `user` VALUES ('cb9b5c727f56475d9ed7213ed6145e28', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', '1', '2', 'test', 'tset');
INSERT INTO `user` VALUES ('eaa635ede17a407d865a2e4f9409ec98', 'tcl', 'tcl', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', 'tcl', 'tcl');
INSERT INTO `user` VALUES ('ec75cb7535b34750a8777e39090544d3', 'advan', 'advan', '61b956437b3140207e57b9bb0a174863', '1', '2', 'advan', 'advan_gfive');
