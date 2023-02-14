/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : yii2advanced

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 14/02/2023 11:10:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ym_admin
-- ----------------------------
DROP TABLE IF EXISTS `ym_admin`;
CREATE TABLE `ym_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '认证token',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码哈希',
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '重置哈希',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `status` smallint(6) NOT NULL DEFAULT 10 COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_admin
-- ----------------------------
INSERT INTO `ym_admin` VALUES (1, 'admin', 'Iz6otklwwgZniAE8EXSZKVj1BPNwrg8A', '$2y$13$WD5tqVxLI7rUhJpkg8EWwOAB5pt0eFaHyO4shX5BFGb7KAcSVjQQi', '8Bc21gUHMJB846Q2XBJXButPUdX00ToC_1674985114', '2580496402@qq.com', 10, 1674031628, 1674985114);
INSERT INTO `ym_admin` VALUES (3, 'wangyang', 'ezCmApq5GuffPEmJWL61XFK6IZ9XvzRP', '$2y$13$.T3dQwbmUmhPc6JyMhBsQuevrnW.XWW/OYmhdajcpm.NwIn2mnjDW', 'Mb_9rWW4tfXZjqcdgpidjM_ABi5yZtJI_1675593050', '2780496402@qq.com', 10, 1675593049, 1675593049);

-- ----------------------------
-- Table structure for ym_admin_login_history
-- ----------------------------
DROP TABLE IF EXISTS `ym_admin_login_history`;
CREATE TABLE `ym_admin_login_history`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `login_at` int(10) NOT NULL DEFAULT 0 COMMENT '登录时间',
  `login_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_admin_login_history
-- ----------------------------
INSERT INTO `ym_admin_login_history` VALUES (1, 1, 'xstnet', 1540284277, '127.0.0.1', 1540284277, 1540284277);
INSERT INTO `ym_admin_login_history` VALUES (2, 1, 'xstnet', 1540298921, '127.0.0.1', 1540298921, 1540298921);
INSERT INTO `ym_admin_login_history` VALUES (3, 1, 'xstnet12', 1540308822, '127.0.0.1', 1540308822, 1540308822);
INSERT INTO `ym_admin_login_history` VALUES (4, 1, 'xstnet12', 1540351712, '127.0.0.1', 1540351712, 1540351712);
INSERT INTO `ym_admin_login_history` VALUES (5, 1, '醉丶春风', 1540358191, '127.0.0.1', 1540358191, 1540358191);
INSERT INTO `ym_admin_login_history` VALUES (6, 20, 'guest', 1540370707, '127.0.0.1', 1540370707, 1540370707);
INSERT INTO `ym_admin_login_history` VALUES (7, 1, '醉丶春风', 1540372346, '127.0.0.1', 1540372346, 1540372346);
INSERT INTO `ym_admin_login_history` VALUES (8, 1, '醉丶春风', 1540434271, '127.0.0.1', 1540434271, 1540434271);
INSERT INTO `ym_admin_login_history` VALUES (9, 1, '醉丶春风', 1540460721, '127.0.0.1', 1540460721, 1540460721);
INSERT INTO `ym_admin_login_history` VALUES (10, 1, '醉丶春风', 1540537334, '127.0.0.1', 1540537334, 1540537334);
INSERT INTO `ym_admin_login_history` VALUES (11, 1, '醉丶春风', 1540879384, '127.0.0.1', 1540879384, 1540879384);
INSERT INTO `ym_admin_login_history` VALUES (12, 1, '醉丶春风', 1540889948, '127.0.0.1', 1540889948, 1540889948);
INSERT INTO `ym_admin_login_history` VALUES (13, 1, '醉丶春风', 1540953128, '127.0.0.1', 1540953128, 1540953128);
INSERT INTO `ym_admin_login_history` VALUES (14, 1, '醉丶春风', 1540956322, '127.0.0.1', 1540956322, 1540956322);
INSERT INTO `ym_admin_login_history` VALUES (15, 1, '醉丶春风', 1540966153, '127.0.0.1', 1540966153, 1540966153);
INSERT INTO `ym_admin_login_history` VALUES (16, 1, '醉丶春风', 1540968248, '127.0.0.1', 1540968248, 1540968248);
INSERT INTO `ym_admin_login_history` VALUES (17, 1, '醉丶春风', 1540977861, '127.0.0.1', 1540977861, 1540977861);
INSERT INTO `ym_admin_login_history` VALUES (18, 1, '醉丶春风', 1540992787, '127.0.0.1', 1540992787, 1540992787);
INSERT INTO `ym_admin_login_history` VALUES (19, 1, '醉丶春风', 1541043684, '127.0.0.1', 1541043684, 1541043684);
INSERT INTO `ym_admin_login_history` VALUES (20, 1, '醉丶春风', 1541046264, '127.0.0.1', 1541046264, 1541046264);
INSERT INTO `ym_admin_login_history` VALUES (21, 1, '醉丶春风', 1541051402, '127.0.0.1', 1541051402, 1541051402);
INSERT INTO `ym_admin_login_history` VALUES (22, 1, '醉丶春风', 1541067888, '49.90.140.79', 1541067888, 1541067888);
INSERT INTO `ym_admin_login_history` VALUES (23, 1, '醉丶春风', 1541081241, '101.224.40.239', 1541081241, 1541081241);
INSERT INTO `ym_admin_login_history` VALUES (24, 20, 'guest', 1541082882, '101.224.40.239', 1541082882, 1541082882);
INSERT INTO `ym_admin_login_history` VALUES (25, 20, 'guest', 1675424316, '127.0.0.1', 1675424316, 1675424316);
INSERT INTO `ym_admin_login_history` VALUES (26, 20, 'guest', 1675433839, '127.0.0.1', 1675433839, 1675433839);
INSERT INTO `ym_admin_login_history` VALUES (27, 20, 'guest', 1675434577, '127.0.0.1', 1675434577, 1675434577);
INSERT INTO `ym_admin_login_history` VALUES (28, 20, 'guest', 1675435100, '127.0.0.1', 1675435100, 1675435100);
INSERT INTO `ym_admin_login_history` VALUES (29, 20, 'guest', 1675435896, '127.0.0.1', 1675435896, 1675435896);
INSERT INTO `ym_admin_login_history` VALUES (30, 20, 'guest', 1675436103, '127.0.0.1', 1675436103, 1675436103);
INSERT INTO `ym_admin_login_history` VALUES (31, 20, 'guest', 1675438541, '127.0.0.1', 1675438541, 1675438541);

-- ----------------------------
-- Table structure for ym_article
-- ----------------------------
DROP TABLE IF EXISTS `ym_article`;
CREATE TABLE `ym_article`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL DEFAULT 0 COMMENT '发布人用户id',
  `category_id` int(5) NOT NULL DEFAULT 0 COMMENT '分类id,关联分类表article_category  id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题样式，简单样式',
  `title_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题图片',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `hits` int(10) NOT NULL DEFAULT 0 COMMENT '点击数',
  `comment_count` int(5) NOT NULL DEFAULT 0 COMMENT '评论数',
  `is_allow_comment` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许评论，1：是，0：否',
  `top` int(5) NOT NULL DEFAULT 0 COMMENT '赞，顶数量',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否展示，1：是，0否',
  `bad` int(5) NOT NULL DEFAULT 0 COMMENT '踩一下，不好，数量',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:逻辑删除，0，正常',
  `is_hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:是热门，0：不是',
  `sort_value` int(5) NOT NULL DEFAULT 100 COMMENT '排序，越小越靠前',
  `keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字 以英文, 分割',
  `source` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `from_platform` enum('其他','安卓','IOS','微信端','手机端','PC端') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PC端' COMMENT '发布平台来源',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '发布时间',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_article
-- ----------------------------
INSERT INTO `ym_article` VALUES (3, 0, 6, '第一篇文章', 'color:#ff7800;font-weight:bold;font-size:14px;text-decoration:underline;', 'uploads/images/2018-11/4a53834802485f59d8fe6adf6959f2c1.gif', '醉丶春风', '文章内容1', 0, 0, 0, 0, 0, 0, 0, 0, 100, '44', '本站', 'PC端', 1541059376, 1541081319, '乌克兰危机的爆发，“非一朝一夕之故，其所由来者渐矣”。这场危机是各种因素综合作用的结果，也是多年积累矛盾的爆发，但要论这场危机的“始作俑者”，美国难逃其咎。\r\n\r\n　　引发俄乌冲突最直接的原因，是美国主导的北约不断东扩，无视俄罗斯在安全问题上的合理关切，一再挑战俄战略底线。由于自身特殊的地理位置以及与俄罗斯的历史文化渊源，乌克兰成为美国遏制俄罗斯的有力“抓手”，掌控了乌克兰无异于遏制住了俄罗斯的“咽喉”。对俄罗斯而言，如果乌克兰被完全纳入西方阵营，将直接威胁到俄地缘政治安全，这是俄无论如何都不能接受的。俄罗斯一直寻求北约以法律形式保证不再东扩，然而始终被以美国为首的北约无视。俄罗斯总统普京说，30年来俄罗斯一直试图就北约不东扩达成协议，但却受到欺骗、施压和讹诈。');
INSERT INTO `ym_article` VALUES (5, 0, 0, '俄乌冲突爆发即将一周年，油价因为这些因素又涨了', '', '', 'admin', '在市场预期中国需求复苏，西方对俄石油(3, 0.00, 0.00%)进行制裁，以及俄罗斯减产等因素影响下，近期国际油价攀升。', 0, 0, 1, 0, 1, 0, 0, 0, 100, '油价,俄乌冲突', '外部', 'PC端', 0, 0, '2月8日，美国能源信息署（EIA）发布2月份《短期能源展望》，调高了2023年布伦特原油价格的预测值至83.63美元/桶，此前为83.1美元/桶。EIA也将1月预测的2023年中国的石油消费均值，从1570万桶/日上调至1580万桶/日。\r\n\r\n　　2月5日，欧盟对俄罗斯成品油的进口禁令，以及G7集团与欧盟等国家对俄罗斯成品油出口设置价格上限的政策同时生效。\r\n\r\n　　据彭博社当日报道，高盛(374.02, 2.74, 0.74%)集团在最新的报告中表示，由于制裁可能导致俄罗斯石油出口下降，叠加中国需求恢复，油价将从目前的80美元/桶左右升至100美元/桶以上。\r\n\r\n　　作为对西方实施石油制裁的回应，俄罗斯在2月10日宣布，3月将削减50万桶/日的石油产量。据央视新闻报道，欧佩克+不打算采取行动来弥补俄罗斯的减产。\r\n\r\n　　尽管全球经济仍存在很大不确定性，但在上述多重利多因素下，市场对油价将大幅反弹的预期也在增强。\r\n\r\n　　据《金融时报》2月10日报道，顶尖原油交易员、对冲基金经理PierreAndurand认为，目前市场太过短视，中国的开放将导致石油需求增长远超预期。国际油价将有可能在2023年接下去的时间里达140美元/桶。\r\n\r\n　　下周也将迎来俄乌冲突爆发一周年。\r\n\r\n　　去年2月24日，俄罗斯正式对乌克兰发起特别军事行动。随后，西方国家对俄罗斯的石油进行了多轮制裁。\r\n\r\n　　对俄罗斯石油供应中断的担忧，以及经济前景的不确定性等因素，导致国际油价呈现大起大落的过山车行情。\r\n\r\n　　去年3月2日，布伦特原油价盘中突破110美元/桶；3月7日，布伦特原油5月期货盘中一度升至139美元/桶，WTI原油5月期货接近130美元/桶，均创下2008年以来新高。\r\n\r\n　　伴随着西方国家开始讨论并落地对俄经济制裁政策，国际油价波动剧烈，在去年6月再次突破120美元/桶。\r\n\r\n　　随着市场对经济衰退的担忧，超过了对供应短缺的预期，国际原油开始进入下行通道，并于7月初跌破100美元/桶。\r\n\r\n　　去年12月5日，欧盟针对俄罗斯海运原油的进口禁令，以及G7集团、欧盟与澳大利亚对俄罗斯石油设置60美元/桶的价格上限的政策同时生效。\r\n\r\n　　但上述政策当时暂未导致市场预期中的原油供应短缺，叠加欧佩克减产落空，推动了油价下跌。\r\n\r\n　　当地时间12月6日，WTI即月原油期货结算价在回吐了俄乌冲突的所有涨幅后，跌至年内最低。\r\n\r\n　　截至北京时间2月13日下午18:00，布伦特原油跌1.28%，报85.28美元/桶；WTI 原油跌1.38%，报78.62美元/桶。');
INSERT INTO `ym_article` VALUES (6, 0, 0, '美恢复在乌“绝密项目” 俄乌冲突或还要两年结束', '', '', 'admin', ' “俄罗斯向乌克兰阐述和谈立场”，今日俄罗斯电视台12日以此为题报道称，俄罗斯副外长韦尔希宁11日表示，俄罗斯已准备好与乌克兰进行无条件谈判。俄媒认为，韦尔希宁此番表态字里行间透露出非常重要的表述和潜台词，准确传达俄方实质立场。', 0, 0, 1, 0, 1, 0, 0, 0, 100, '美国,俄乌冲突', '外部', 'PC端', 0, 0, '韦尔希宁在俄红星电视台11日播出的一档采访节目中表示，所有军事行动都是以谈判结束的，俄罗斯对此也作好了准备，但谈判需要建立在现实情况之上。“俄罗斯准备好通过对话结束冲突，但前提是乌方不能有预设条件，谈判要在既定的现实基础上进行，并考虑到俄方此前提出的目标。”韦尔希宁称，此前在白俄罗斯和土耳其举行的俄乌谈判均因乌方原因中断。他强调，是否与俄方进行谈判并非由乌方决定，而“首先是由华盛顿和布鲁塞尔决定”。\r\n\r\n    据乌克兰国家通讯社11日报道，乌总统办公室顾问波多利亚克当天表示，俄方声明表明，与克里姆林宫的谈判是不可能的。波多利亚克称，只有乌克兰的胜利才能结束“欧洲战争”。他指责俄罗斯“不愿离开它占领的领土，也不愿为这场几乎长达一年的冲突承担责任”。白宫国家安全委员会发言人约翰·柯比同日重申，要由乌总统泽连斯基来决定谈判是否合适，以及何时合适。“华盛顿将继续支持乌克兰，以便他们能够在战场上成功对抗俄罗斯，因为这将使泽连斯基在谈判时‘顺风顺水’”。');
INSERT INTO `ym_article` VALUES (7, 0, 0, '俄乌冲突清晰地显示 美国操控欧洲木偶大获成功', '', '', 'admin', '俄乌军事冲突到现在已经延宕了将近一年的时间，可以说这场军事冲突很大程度上也改变了世界格局，首当其冲的除了俄乌双方之外就是欧洲。欧洲到底何去何从？在2月13日播出的《这就是中国》节目中，复旦大学中国研究院院长张维为和上海社科院宗教研究所宗教学研究室主任邱文平再次就此展开演讲与讨论。', 0, 0, 1, 0, 1, 0, 0, 0, 100, '美国,俄乌冲突', '外部', 'PC端', 0, 0, '邱文平认为，美国操控欧洲是大获成功的，现在是开始收割胜利果实的时候。我们一直用美西方来指代美欧等发达国家，假设它们是异常团结的，但是俄乌冲突让大家清晰地认识到，美国对欧洲的渗透和控制之深，欧洲几乎成了美国的提线木偶。美国通过冯德莱恩等代理人控制了欧盟委员会和议会，用绿党等各色政治“网红”控制了诸多国家的政局，从政治上绑架、军事上控制、经济上吸血欧洲，操控欧洲的战略目的大获成功。\r\n\r\n面对美国的趁火打劫，老欧洲的反应异常的软弱无力，实在是让人有点出乎意料。法国、德国、西班牙、意大利这些历史上都曾经建立过叱咤风云的世界帝国，被战后长期的太平岁月削弱了意志。在美国的羽翼下日子过得太久，合伙劫掠发展中国家的日子过得太舒服，它们居然忘记了美英这些盎格鲁-撒克逊人的血腥本性。美国的财政赤字已经面临爆点，只有巨量的资本才能填补这个空缺，欧盟实在是再合适不过的收割对象。');
INSERT INTO `ym_article` VALUES (8, 0, 0, '俄乌冲突终于要结束了？俄方给出最新时间节点，联合国惶恐不安', '', '', 'admin', '据媒体2月8日消息，德国国防部日前在其官方社交媒体账号上宣布，计划在3月底将德国“豹2A6”坦克交付给乌武装部队。据报道，乌克兰国防部长列兹尼科夫当地时间7日在其社交媒体账号上宣布，德国政府已经决定向乌克兰提供“豹-1”坦克。', 0, 0, 1, 0, 1, 0, 0, 0, 100, '俄乌冲突,联合国', '外部', 'PC端', 0, 0, '到今年夏天，乌克兰将有20至25辆这种坦克。到今年年底，大约有80辆。到2024年，将有超过100。此外，乌克兰还将收到14辆“豹2A6”主战坦克。针对西方国家不断拱火搅局，俄罗斯国防部长绍伊古7日表示，西方国家向乌克兰运送武器，实际上是在把北约拖入冲突。\r\n\r\n他警告称，这可能会导致不可预测的升级。此外，车臣共和国领导人卡德罗夫7日表示，到今年年底，特别军事行动将结束。欧洲国家会认识到自己行为的错误，西方会跪地求饶，并且像往常一样，欧洲国家将不得不在所有领域与俄罗斯合作。\r\n\r\n值得一提的是联合国秘书长古特雷斯6日在联大发言谈到俄乌冲突时表示，俄乌冲突和平前景越来越渺茫，我担心世界会陷入更大范围的战争。古特雷斯称，局势进一步升级和流血的可能性不断增加，世界需要遵守联合国宪章和国际法的和平。\r\n\r\n古特雷斯同时指出，拥核国家应避免首先使用核武器。他强调，“我们处于几十年来核战争爆发风险最严重的时刻，不管爆发是有意还是意外，我们都需要结束世界各地所存放的1.3万件核武器所带来的威胁”。');
INSERT INTO `ym_article` VALUES (9, 0, 0, '俄乌冲突第354天：俄提出准备进行无条件谈判，俄称将从3月减产石油', '', '', 'admin', '俄乌冲突第354天：俄提出准备进行无条件谈判，俄称将从3月减产石油', 0, 0, 1, 0, 1, 0, 0, 0, 100, '俄乌冲突,战争', '外部', 'PC端', 0, 0, '在红利曼方向，中央集群在卢甘斯克地区对乌军造成重创。24小时内，多达120名乌军被消灭，一辆步兵战车、四辆装甲车、1辆‘冰雹’多管火箭炮以及两门D-20榴弹炮被摧毁。\r\n\r\n在顿涅茨克方向，乌军24小时内损失了140多人，另有2辆步兵战车、6辆汽车、2门美国M777火炮、“螃蟹”自行榴弹炮、“风信子-B”、D-30榴弹炮和美制AN/TPQ-50反炮兵雷达以及三个弹药库被摧毁。\r\n\r\n在顿涅茨克南部方向，乌军损失95人，4辆坦克、2辆步兵战车、2辆汽车，以及M109自行火炮，3门D-20榴弹炮、一门“风信子-B”榴弹炮和三座弹药库被摧毁。\r\n\r\n在赫尔松方向，两门“MSTA-B”和D-30榴弹炮被摧毁，乌军弹药库被击中。\r\n\r\n俄陆军航空兵、导弹部队和炮兵对乌军116个人员和军事装备集中区以及92个炮兵阵地进行了火力打击。\r\n\r\n在尼古拉耶夫州，乌军的一套S-300防空导弹系统雷达制导站被摧毁。\r\n\r\n俄防空系统在24小时内摧毁了卢甘斯克、顿涅茨克、扎波罗热和赫尔松地区的19架乌军无人机。\r\n\r\n乌克兰国防部战报：在过去的24小时里，俄军共损失9辆坦克、3辆装甲车、19门身管火炮与火箭炮、61枚巡航导弹、1套防空系统、3套特种装备、27架无人机、8辆各型车辆、以及超过1140名军人。\r\n乌克兰危机的爆发，“非一朝一夕之故，其所由来者渐矣”。这场危机是各种因素综合作用的结果，也是多年积累矛盾的爆发，但要论这场危机的“始作俑者”，美国难逃其咎。\r\n\r\n　　引发俄乌冲突最直接的原因，是美国主导的北约不断东扩，无视俄罗斯在安全问题上的合理关切，一再挑战俄战略底线。由于自身特殊的地理位置以及与俄罗斯的历史文化渊源，乌克兰成为美国遏制俄罗斯的有力“抓手”，掌控了乌克兰无异于遏制住了俄罗斯的“咽喉”。对俄罗斯而言，如果乌克兰被完全纳入西方阵营，将直接威胁到俄地缘政治安全，这是俄无论如何都不能接受的。俄罗斯一直寻求北约以法律形式保证不再东扩，然而始终被以美国为首的北约无视。俄罗斯总统普京说，30年来俄罗斯一直试图就北约不东扩达成协议，但却受到欺骗、施压和讹诈。');

-- ----------------------------
-- Table structure for ym_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ym_article_category`;
CREATE TABLE `ym_article_category`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0：正常，1：禁用',
  `parent_id` int(5) NOT NULL DEFAULT 0,
  `parents` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所有的父级ID，包含自身',
  `sort_value` mediumint(5) NOT NULL DEFAULT 100 COMMENT '排序值，升序',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_article_category
-- ----------------------------
INSERT INTO `ym_article_category` VALUES (3, '第一个分类', 0, 0, '3', 100, 1540883284, 1540883284);
INSERT INTO `ym_article_category` VALUES (4, '第二个分类', 0, 0, '4', 100, 1540883415, 1540883415);
INSERT INTO `ym_article_category` VALUES (5, '第三个分类', 0, 0, '5', 100, 1540883422, 1540883422);
INSERT INTO `ym_article_category` VALUES (6, '第四个分类', 0, 0, '6', 100, 1540883432, 1540886624);
INSERT INTO `ym_article_category` VALUES (7, '二级分类1', 0, 4, '7,4', 100, 1540883442, 1540883768);
INSERT INTO `ym_article_category` VALUES (8, '二级分类2', 0, 3, '8,3', 100, 1540883455, 1540883455);
INSERT INTO `ym_article_category` VALUES (9, '三级分类1', 0, 7, '9,7,3', 100, 1540883469, 1540883469);

-- ----------------------------
-- Table structure for ym_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ym_article_comment`;
CREATE TABLE `ym_article_comment`  (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `article_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '留言人昵称',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ip',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言内容',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否被删除, 1:是, 0:否',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_article_comment
-- ----------------------------
INSERT INTO `ym_article_comment` VALUES (1, 0, 'admin', '12345@qq.com', '127.0.0.1', '1234', 0, 12131313);
INSERT INTO `ym_article_comment` VALUES (2, 3, 'admin', '2580496403@qq.com', '127.0.0.1', '这么好的一篇文章！', 0, 1676307032);
INSERT INTO `ym_article_comment` VALUES (3, 9, 'admin', '2580496403@qq.com', '127.0.0.1', '我觉得俄乌冲突的原因绝大部分归结于没有很好的谈判机制。', 0, 1676309131);
INSERT INTO `ym_article_comment` VALUES (4, 5, 'admin', '2580496403@qq.com', '127.0.0.1', '希望双方和平解决冲突！', 0, 1676344093);
INSERT INTO `ym_article_comment` VALUES (5, 5, 'YangXin', '885114349@qq.com', '127.0.0.1', '希望互相克制，避免矛盾升级！', 0, 1676344161);
INSERT INTO `ym_article_comment` VALUES (6, 6, 'YangXin', '885114349@qq.com', '127.0.0.1', '希望美国能够不干涉他国内政！', 0, 1676344185);

-- ----------------------------
-- Table structure for ym_article_contents
-- ----------------------------
DROP TABLE IF EXISTS `ym_article_contents`;
CREATE TABLE `ym_article_contents`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT 'id，关联article表id',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_article_contents
-- ----------------------------
INSERT INTO `ym_article_contents` VALUES (3, '<p><em><strong>文章内容22</strong></em></p>', 1541059376, 1541063498);
INSERT INTO `ym_article_contents` VALUES (4, '<p>asdfasfsadf</p><pre class=\"brush:php;toolbar:false\">public&nbsp;function&nbsp;actionSaveArticle()\n{\n&nbsp;&nbsp;&nbsp;$params&nbsp;=&nbsp;self::postParams();\n&nbsp;&nbsp;&nbsp;ArticleService::instance()-&gt;saveArtice($params);\n&nbsp;&nbsp;&nbsp;return&nbsp;self::ajaxSuccess(&#39;更新成功&#39;);\n}</pre><p><br/></p>', 1541063536, 1541063536);

-- ----------------------------
-- Table structure for ym_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `ym_auth_assignment`;
CREATE TABLE `ym_auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  INDEX `idx-auth_assignment-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `ym_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `ym_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_auth_assignment
-- ----------------------------
INSERT INTO `ym_auth_assignment` VALUES ('admin', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/assign', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/create', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/destroy', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('admin/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('base/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('comment/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('comment/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('comment/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('editor', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('info/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('info/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('permission/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('permission/create', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('permission/destroy', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('permission/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('permission/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/error', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/iframe', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/index1', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/index2', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/index3', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/login', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('public/logout', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/assign', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/create', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/destroy', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('role/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('root', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('rule/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('rule/create', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('rule/destroy', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('rule/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('rule/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('system-log/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('system-log/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('tester', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('tester', '3', 1675781715);
INSERT INTO `ym_auth_assignment` VALUES ('user/*', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('user/create', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('user/index', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('user/update', '1', 1676343628);
INSERT INTO `ym_auth_assignment` VALUES ('ym-article/*', '1', 1676343628);

-- ----------------------------
-- Table structure for ym_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `ym_auth_item`;
CREATE TABLE `ym_auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE,
  CONSTRAINT `ym_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `ym_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_auth_item
-- ----------------------------
INSERT INTO `ym_auth_item` VALUES ('admin', 1, '管理员', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/*', 2, 'admin/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/assign', 2, 'admin/assign', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/create', 2, 'admin/create', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/destroy', 2, 'admin/destroy', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/index', 2, 'admin/index', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('admin/update', 2, 'admin/update', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('base/*', 2, 'base/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('comment/*', 2, 'comment/*', NULL, NULL, 1675532155, 1675532155);
INSERT INTO `ym_auth_item` VALUES ('comment/index', 2, 'comment/index', NULL, NULL, 1675532166, 1675532166);
INSERT INTO `ym_auth_item` VALUES ('comment/update', 2, 'comment/update', NULL, NULL, 1675532176, 1675532176);
INSERT INTO `ym_auth_item` VALUES ('editor', 1, '编辑', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('info/*', 2, 'info/*', NULL, NULL, 1675593707, 1675593707);
INSERT INTO `ym_auth_item` VALUES ('info/index', 2, 'info/index', NULL, NULL, 1675593714, 1675593714);
INSERT INTO `ym_auth_item` VALUES ('permission/*', 2, 'permission/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('permission/create', 2, 'permission/create', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('permission/destroy', 2, 'permission/destroy', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('permission/index', 2, 'permission/index', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('permission/update', 2, 'permission/update', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/*', 2, 'public/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/error', 2, 'public/error', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/iframe', 2, 'public/iframe', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/index1', 2, 'public/index1', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/index2', 2, 'public/index2', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/index3', 2, 'public/index3', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/login', 2, 'public/login', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('public/logout', 2, 'public/logout', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/*', 2, 'role/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/assign', 2, 'role/assign', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/create', 2, 'role/create', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/destroy', 2, 'role/destroy', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/index', 2, 'role/index', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('role/update', 2, 'role/update', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('root', 1, '超级管理员', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('rule/*', 2, 'rule/*', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('rule/create', 2, 'rule/create', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('rule/destroy', 2, 'rule/destroy', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('rule/index', 2, 'rule/index', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('rule/update', 2, 'rule/update', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('system-log/*', 2, 'system-log/*', NULL, NULL, 1675533831, 1675533831);
INSERT INTO `ym_auth_item` VALUES ('system-log/index', 2, 'system-log/index', NULL, NULL, 1675533837, 1675533837);
INSERT INTO `ym_auth_item` VALUES ('tester', 1, '测试人员', NULL, NULL, 1675513790, 1675513790);
INSERT INTO `ym_auth_item` VALUES ('user/*', 2, 'user/*', NULL, NULL, 1675527290, 1675527290);
INSERT INTO `ym_auth_item` VALUES ('user/create', 2, 'user/create', NULL, NULL, 1675527326, 1675527326);
INSERT INTO `ym_auth_item` VALUES ('user/index', 2, 'user/index', NULL, NULL, 1675527301, 1675527301);
INSERT INTO `ym_auth_item` VALUES ('user/update', 2, 'user/update', NULL, NULL, 1675527344, 1675527344);
INSERT INTO `ym_auth_item` VALUES ('ym-article/*', 2, 'ym-article/*', NULL, NULL, 1676343615, 1676343615);

-- ----------------------------
-- Table structure for ym_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `ym_auth_item_child`;
CREATE TABLE `ym_auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `ym_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `ym_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ym_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `ym_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_auth_item_child
-- ----------------------------
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/assign');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/create');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/destroy');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/index');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'admin/update');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'base/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'permission/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'permission/create');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'permission/destroy');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'permission/index');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'permission/update');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/error');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/iframe');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/index1');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/index2');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/index3');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/login');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'public/logout');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/assign');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/create');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/destroy');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/index');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'role/update');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'rule/*');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'rule/create');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'rule/destroy');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'rule/index');
INSERT INTO `ym_auth_item_child` VALUES ('root', 'rule/update');

-- ----------------------------
-- Table structure for ym_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ym_auth_rule`;
CREATE TABLE `ym_auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_auth_rule
-- ----------------------------
INSERT INTO `ym_auth_rule` VALUES ('Test', 0x4F3A31383A226261636B656E645C72756C65735C54657374223A333A7B733A343A226E616D65223B733A343A2254657374223B733A393A22637265617465644174223B693A313637363038353737313B733A393A22757064617465644174223B693A313637363038353737313B7D, 1676085771, 1676085771);

-- ----------------------------
-- Table structure for ym_config
-- ----------------------------
DROP TABLE IF EXISTS `ym_config`;
CREATE TABLE `ym_config`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `category_id` int(5) NOT NULL DEFAULT 0 COMMENT '配置分类ID,关联config_category表id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调用代码，程序中使用',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称，显示用',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置值，根据type的不同，存储不同的字符串',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1：启用，0：禁用',
  `type` enum('checkbox','imagefile','radio','textarea','text') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'text' COMMENT '属性类型',
  `attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性， json字符串，type为radio 和checkbox时用到',
  `sort_value` int(5) NOT NULL DEFAULT 100 COMMENT '排序值，升序，小的在前',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置，全局配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_config
-- ----------------------------
INSERT INTO `ym_config` VALUES (1, 1, 'name', '网站名称', ' yii-admin', '', 1, 'text', '', 100, 1540477138, 1540477138);
INSERT INTO `ym_config` VALUES (2, 1, 'host', '网站域名', 'http://yii-admin.com', ' 域名前请加上http或者https', 1, 'text', '', 100, 1540477138, 1540477138);
INSERT INTO `ym_config` VALUES (3, 1, 'logo', '网站logo', 'uploads/images/2018-10/b6f5e2461e684de09ffb6f81c84c3d0a.jpg', '', 1, 'imagefile', '', 100, 1540477138, 1540548858);
INSERT INTO `ym_config` VALUES (4, 3, 'defaultRole', '默认角色', '2', '填写的为角色ID', 1, 'text', '', 100, 1540477138, 1540547256);

-- ----------------------------
-- Table structure for ym_config_category
-- ----------------------------
DROP TABLE IF EXISTS `ym_config_category`;
CREATE TABLE `ym_config_category`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `sort_value` int(5) NOT NULL DEFAULT 100 COMMENT '排序值，升序，小的在前',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调用代码',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1：启用，0：禁用',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_config_category
-- ----------------------------
INSERT INTO `ym_config_category` VALUES (1, '网站设置', 100, 'site', 1, 1540477138, 1540477138);
INSERT INTO `ym_config_category` VALUES (2, '邮件设置', 100, 'mail', 1, 1540477138, 1540477138);
INSERT INTO `ym_config_category` VALUES (3, '后台用户设置', 101, 'adminUser', 1, 1540477138, 1540477138);
INSERT INTO `ym_config_category` VALUES (4, '其他', 1000, 'other', 1, 1540477138, 1540477138);

-- ----------------------------
-- Table structure for ym_migration
-- ----------------------------
DROP TABLE IF EXISTS `ym_migration`;
CREATE TABLE `ym_migration`  (
  `version` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_migration
-- ----------------------------
INSERT INTO `ym_migration` VALUES ('m000000_000000_base', 1674030104);
INSERT INTO `ym_migration` VALUES ('m130524_201442_init', 1674030109);
INSERT INTO `ym_migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1674030109);

-- ----------------------------
-- Table structure for ym_system_log
-- ----------------------------
DROP TABLE IF EXISTS `ym_system_log`;
CREATE TABLE `ym_system_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '操作用户ID',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作参数',
  `request_method` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求方式',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1282 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_system_log
-- ----------------------------
INSERT INTO `ym_system_log` VALUES (935, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (936, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (937, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (938, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":{\"_csrf-backend\":\"gJGu-kK2jdVam7nJq5SzMRQ-bmO2E4Tyu4flI6xSH9fM-d2vb-nKhQjNz4Ge4exFLQ4YPM8m_absv4xQmWRR5A==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"12345\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd712345\",\"password_hash\":\"123456\",\"re_password_hash\":\"123456\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (939, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (940, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (941, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (942, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=2', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (943, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=2', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"2\"},\"POST\":{\"_csrf-backend\":\"kBxzccx6lw1kBcXCJn64OIrVRk1whSdERXlrHqL7l1ncdAAk4SXQXTZTs4oTC-dMs-UwEgmwXhASQQJtl83Zag==\",\"username\":\"yangwang\",\"email\":\"2980496402@qq.com\",\"password_hash\":\"12345678\",\"re_password_hash\":\"12345678\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (944, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (945, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (946, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=1', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (947, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=1', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"1\"},\"POST\":{\"_csrf-backend\":\"bXc2zeKejyuozv_LcJILiVkq43vJR13HGHELOHigXRMhH0WYz8HIe_qYiYNF51T9YBqVJLByJJNPSWJLTZYTIA==\",\"username\":\"admin\",\"email\":\"2580496402@qq.com\",\"password_hash\":\"123456\",\"re_password_hash\":\"123456\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (948, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (949, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (950, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (951, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (952, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"5ZHCJEULdhzFl_BwJ4YrcFQQ8YdOZCJ8qcD1AHR7ZW2p-bFxaFQxTJfBhjgS83QEbSCH2DdRWyj--JxzQU0rXg==\",\"LoginForm\":{\"username\":\"yangwang\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (953, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (954, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"c6P4F1Uae88lt0SwKT8qPN6xn692nnRsRsSdfGOo_44_y4tCeEU8n3fhMvgcSnVI54Hp8A-rDTgR_PQPVp6xvQ==\",\"LoginForm\":{\"username\":\"wangyang\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (955, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"6tHSCAmLVLFAsNof-483ZWHwtKpXmEPWZ-k07JLgs2qmuaFdJNQT4RLmrFfO-mgRWMDC9S6tOoIw0V2fp9b9WQ==\",\"LoginForm\":{\"username\":\"yangwang\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (956, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (957, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"Z7LREDnkFdRG2v46NrFoIwFMOoWOVhZ5PAH2uUSlXA4r2qJFFLtShBSMiHIDxDdXOHxM2vdjby1rOZ_KcZMSPQ==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (958, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (959, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (960, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (961, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (962, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=2', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (963, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=2', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"2\"},\"POST\":{\"_csrf-backend\":\"GLA_EWapNhnCbWWqzMmAFuw3J4OUayqd1wSMLhXQN3B291tgDPl4LJVeM9ih8eomiUIRz9kvSdWlSuAaJpdAQQ==\",\"username\":\"yangwang\",\"email\":\"2980496402@qq.com\",\"password_hash\":\"12345678\",\"re_password_hash\":\"12345678\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (964, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (965, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (966, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (967, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":{\"_csrf-backend\":\"T7UhQT4SRsUjOgPmSQJzhCt9jzC2cWJjCA_t2EG2Ihoh8kUwVEII8HQJVZQkOhm0Tgi5fPs1ASt6QYHscvFVKw==\",\"role\":[\"admin\",\"editor\",\"root\",\"tester\"]}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (968, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (969, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (970, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":{\"_csrf-backend\":\"bqwQXfD7rbueFx9IQvtZrCV40uxq2IvAujOD0iCzXRoA63QsmqvjjskkSTovwzOcQA3koCec6IjIfe_mE_QqKw==\",\"role\":[\"admin\",\"editor\",\"root\",\"tester\"],\"permission\":[\"admin\\/*\",\"admin\\/assign\",\"admin\\/create\",\"admin\\/destroy\",\"admin\\/index\",\"admin\\/info\",\"admin\\/update\",\"base\\/*\",\"comment\\/*\",\"comment\\/index\",\"comment\\/update\",\"permission\\/*\",\"permission\\/create\",\"permission\\/destroy\",\"permission\\/index\",\"permission\\/update\",\"public\\/*\",\"public\\/error\",\"public\\/iframe\",\"public\\/index1\",\"public\\/index2\",\"public\\/index3\",\"public\\/login\",\"public\\/logout\",\"role\\/*\",\"role\\/assign\",\"role\\/create\",\"role\\/destroy\",\"role\\/index\",\"role\\/update\",\"rule\\/*\",\"rule\\/create\",\"rule\\/destroy\",\"rule\\/index\",\"rule\\/update\",\"system-log\\/*\",\"system-log\\/index\",\"user\\/*\",\"user\\/create\",\"user\\/index\",\"user\\/update\"]}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (971, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (972, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (973, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (974, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"RBpSO30vQt_jR5hUg6zcanocT3ABoUs2_oVsmdsGeuQqXTZKF38M6rR0zibulLZaH2l5PEzlKH6MywCt6EEN1Q==\",\"LoginForm\":{\"username\":\"yangwang\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (975, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (976, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"FPq9DbbQVmhDNhRKSiSFXv2lmShG4H34E02T0F51rdZ6vdl83IAYXRQFQjgnHO9umNCvZAukHrBhA__kbTLa5w==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (977, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"csoHO2Ff1VozVuuulhs6FokmYzDzCqsXZRGte8hPK_IcjWNKCw-bb2Rlvdz7I1Am7FNVfL5OyF8XX8FP-whcww==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (978, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (979, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (980, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (981, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (982, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (983, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (984, 'admin', 1, '127.0.0.1', 'admin/create', '/yii2/backend/web/index.php?r=admin%2Fcreate', '{\"GET\":{\"r\":\"admin\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (985, 'admin', 1, '127.0.0.1', 'admin/create', '/yii2/backend/web/index.php?r=admin%2Fcreate', '{\"GET\":{\"r\":\"admin\\/create\"},\"POST\":{\"_csrf-backend\":\"mYbdfTdUbRfsZ2S1qGeHksqvdkDmbpBmfIOSTA0l-GPa4rQIRgEJJbgTJ9TDCsnTjpYyCtEB-gIb7eEZVR3KJg==\",\"username\":\"yangwang\",\"email\":\"2980496402@qq.com\",\"password_hash\":\"12345678\",\"re_password_hash\":\"12345678\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (986, 'admin', 1, '127.0.0.1', 'admin/create', '/yii2/backend/web/index.php?r=admin%2Fcreate', '{\"GET\":{\"r\":\"admin\\/create\"},\"POST\":{\"_csrf-backend\":\"3Cys2TYOtdudcfCvtCsalPKclCUHdp-HPCdrXMLlYQqfSMWsR1vR6ckFs87fRlTVtqXQbzAZ9eNbSRgJmt1TTw==\",\"username\":\"wangyang\",\"email\":\"2780496402@qq.com\",\"password_hash\":\"12345678\",\"re_password_hash\":\"12345678\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (987, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (988, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (989, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (990, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (991, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"JEazR5UFDJAvg34fdJUBUiYg2RYxs_pR0Y66HzSODt5nItoy5FBoonv3PX4f-E8TYhmdXAbckDW24MlKbLY8mw==\",\"LoginForm\":{\"username\":\"wangyang\",\"password\":\"12345678\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (992, 'wangyang', 3, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (993, 'wangyang', 3, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (994, 'wangyang', 3, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (995, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (996, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"t4Pg29LXUIwNsxazr3L7fLqKLyhtccF1yPIGUMUxlKPy1NWut5gE-luLW9rqQJxI-_p9ZVUUozmktm0_8FrQ9A==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (997, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (998, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (999, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1000, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1001, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=2', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1002, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1003, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1004, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1005, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=2', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"2\"},\"POST\":{\"_csrf-backend\":\"F75jzrtLCFQpdYj-mvJmdvI7Sx_WP99QqKxyQ0kh_QhF2AWH0iRHDXYc2p2pm1Abv2JyS4Vwphrp5CsVfmTIYQ==\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1006, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1007, 'admin', 1, '127.0.0.1', 'admin/destroy', '/yii2/backend/web/index.php?r=admin%2Fdestroy&id=2', '{\"GET\":{\"r\":\"admin\\/destroy\",\"id\":\"2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1008, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1009, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":{\"_csrf-backend\":\"TGEr91CK3oXWK-lYHQIsBAaB3nbfu2ID2CPAfo2RGyEeB02-OeWR3IlCuzsuaxppS9jnIoz0G0mZa5koutQuSA==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd7\",\"password_hash\":\"12345678\",\"re_password_hash\":\"12345678\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1010, 'admin', 1, '127.0.0.1', 'admin/info', '/yii2/backend/web/index.php?r=admin%2Finfo', '{\"GET\":{\"r\":\"admin\\/info\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1011, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1012, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1013, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1014, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1015, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1016, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1017, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1018, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1019, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1020, 'admin', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1021, 'admin', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":{\"_csrf-backend\":\"FIX40E0R_W5TGVhVutXLggKWndVfkmHLCk2bQvzuLCZG456ZJH6yNwxwCjaJvP3vT8-kgQzdGIFLBcIUy6sZTw==\",\"name\":\"info\\/*\",\"description\":\"info\\/*\",\"rule_name\":\"\",\"data\":\"\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1022, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1023, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1024, 'admin', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1025, 'admin', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":{\"_csrf-backend\":\"NnvyCiuHaS88UrRxam5tOqfF9e997ADuEWHoMaF5Ha1kHZRDQugmdmM75hJZB1tX6pzMuy6jeaRQKbFnljwoxA==\",\"name\":\"info\\/index\",\"description\":\"info\\/index\",\"rule_name\":\"\",\"data\":\"\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1026, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1027, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1028, 'admin', 1, '127.0.0.1', 'permission/destroy', '/yii2/backend/web/index.php?r=permission%2Fdestroy&name=admin%2Finfo', '{\"GET\":{\"r\":\"permission\\/destroy\",\"name\":\"admin\\/info\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1029, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1030, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1031, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1032, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1033, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1034, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=1', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1035, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=1', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"1\"},\"POST\":{\"_csrf-backend\":\"wHOzMoTQhedhjeVaWvunzY-LN4Q66kDRAFKaOPsruAeSFdV77b_Kvj7ktzlpkpGgwtIO0GmlOZtBGsNuzG6Nbg==\",\"role\":[\"admin\",\"editor\",\"root\",\"tester\"],\"permission\":[\"admin\\/*\",\"admin\\/assign\",\"admin\\/create\",\"admin\\/destroy\",\"admin\\/index\",\"admin\\/update\",\"base\\/*\",\"comment\\/*\",\"comment\\/index\",\"comment\\/update\",\"info\\/*\",\"info\\/index\",\"permission\\/*\",\"permission\\/create\",\"permission\\/destroy\",\"permission\\/index\",\"permission\\/update\",\"public\\/*\",\"public\\/error\",\"public\\/iframe\",\"public\\/index1\",\"public\\/index2\",\"public\\/index3\",\"public\\/login\",\"public\\/logout\",\"role\\/*\",\"role\\/assign\",\"role\\/create\",\"role\\/destroy\",\"role\\/index\",\"role\\/update\",\"rule\\/*\",\"rule\\/create\",\"rule\\/destroy\",\"rule\\/index\",\"rule\\/update\",\"system-log\\/*\",\"system-log\\/index\",\"user\\/*\",\"user\\/create\",\"user\\/index\",\"user\\/update\"]}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1036, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1037, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1038, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1039, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1040, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":{\"_csrf-backend\":\"Wqhkm3fHBSZpA2GMGJWDKuSd_s-lgd0KPFSv4TeBvyMIzgLSHqhKfzZqM-8r_LVHqcTHm_bOpEB9HPa3AMSKSg==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"123456789\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd7\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1041, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1042, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":{\"_csrf-backend\":\"IpQ9lPQmLEdddW5n-0iVCnJyA65bLkGwoG1Xk9YkF4lw8lvdnUljHgIcPATIIaNnPys6-ghhOPrhJQ7F4WEi4A==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"123456789\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd7123456\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1043, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1044, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":{\"_csrf-backend\":\"5HNHK-zr3jaFtoTC8dPBs4XwGZnOLI8r27kM6y_gmeO2FSFihYSRb9rf1qHCuvfeyKkgzZ1j9mGa8VW9GKWsig==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u5973\",\"avatar\":\"12345566\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd712134567\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1045, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1046, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":{\"_csrf-backend\":\"T1WwKbYOKpfW6fi6eXlzz84cRnNHAmkqh9GLSuGxwiAdM9Zg32FlzomAqtlKEEWig0V_JxRNEGDGmdIc1vT3SQ==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd7waht\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1047, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1048, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1049, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1050, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1051, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":{\"_csrf-backend\":\"ek0cfm94V-vE4zaES1QiImAg4TCYkny-Tk36ieukgVMoK3o3BhcYspuKZOd4PRRPLXnYZMvdBfQPBaPf3OG0Og==\",\"username\":\"admin\",\"nickname\":\"\\u4e00\\u53ea\\u5c0f\\u80a5\\u7f8a\",\"sex\":\"\\u7537\",\"avatar\":\"123114\",\"email\":\"2580496402@qq.com\",\"signature\":\"\\u751f\\u6d3b\\u5c31\\u50cf\\u4e00\\u9996\\u8bd7213131\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1052, 'admin', 1, '127.0.0.1', 'info/index', '/yii2/backend/web/index.php?r=info%2Findex', '{\"GET\":{\"r\":\"info\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1053, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1054, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1055, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1056, 'admin', 1, '127.0.0.1', 'public/index1', '/yii2/backend/web/index.php?r=public%2Findex1', '{\"GET\":{\"r\":\"public\\/index1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1057, 'admin', 1, '127.0.0.1', 'public/index2', '/yii2/backend/web/index.php?r=public%2Findex2', '{\"GET\":{\"r\":\"public\\/index2\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1058, 'admin', 1, '127.0.0.1', 'public/index3', '/yii2/backend/web/index.php?r=public%2Findex3', '{\"GET\":{\"r\":\"public\\/index3\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1059, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1060, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1061, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1062, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1063, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1064, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1065, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1066, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"system-log\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1067, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1068, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1069, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1070, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1071, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1072, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1073, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1074, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1075, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1076, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1077, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1078, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1079, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1080, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1081, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1082, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1083, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1084, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"system-log\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1085, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1086, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1087, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1088, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1089, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1090, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1091, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1092, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1093, 'admin', 1, '127.0.0.1', 'rule/create', '/yii2/backend/web/index.php?r=rule%2Fcreate', '{\"GET\":{\"r\":\"rule\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1094, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1095, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1096, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1097, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1098, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1099, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcategory', '{\"GET\":{\"r\":\"article\\/category\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1100, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcomment', '{\"GET\":{\"r\":\"article\\/comment\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1101, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex', '{\"GET\":{\"r\":\"user\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1102, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"user\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1103, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex', '{\"GET\":{\"r\":\"comment\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1104, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"comment\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1105, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex&page=2&limit=10', '{\"GET\":{\"r\":\"comment\\/index\",\"page\":\"2\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1106, 'admin', 1, '127.0.0.1', 'comment/update', '/yii2/backend/web/index.php?r=comment%2Fupdate&cid=28', '{\"GET\":{\"r\":\"comment\\/update\",\"cid\":\"28\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1107, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex', '{\"GET\":{\"r\":\"comment\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1108, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"comment\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1109, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1110, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"system-log\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1111, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1112, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1113, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1114, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1115, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=3', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"3\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1116, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=3', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"3\"},\"POST\":{\"_csrf-backend\":\"BN3QbTSuj4RDgpyLL-kzzMgufd_F1v54I9p-SpB-VcNWu7YkXcHA3RzrzugcgAWhhXdEi5aZhzJikiccpztgqg==\",\"role\":{\"3\":\"tester\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1117, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1118, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1119, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1120, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1121, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1122, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1123, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1124, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1125, 'admin', 1, '127.0.0.1', 'role/assign', '/yii2/backend/web/index.php?r=role%2Fassign&name=root', '{\"GET\":{\"r\":\"role\\/assign\",\"name\":\"root\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1126, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1127, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1128, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1129, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1130, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1131, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1132, 'admin', 1, '127.0.0.1', 'rule/create', '/yii2/backend/web/index.php?r=rule%2Fcreate', '{\"GET\":{\"r\":\"rule\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1133, 'admin', 1, '127.0.0.1', 'rule/create', '/yii2/backend/web/index.php?r=rule%2Fcreate', '{\"GET\":{\"r\":\"rule\\/create\"},\"POST\":{\"_csrf-backend\":\"vmWSmWe5m0oMrmEFIfbAN85xN9gOVvGaJwWte2qUYmnrBvPAPvqiD17kBDJ3r4lyjRllkUZmnNdTcc8VAOxPUA==\",\"name\":\"test\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1134, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1135, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1136, 'admin', 1, '127.0.0.1', 'rule/update', '/yii2/backend/web/index.php?r=rule%2Fupdate&name=Test', '{\"GET\":{\"r\":\"rule\\/update\",\"name\":\"Test\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1137, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex', '{\"GET\":{\"r\":\"user\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1138, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"user\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1139, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex', '{\"GET\":{\"r\":\"comment\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1140, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"comment\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1141, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1142, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"system-log\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1143, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1144, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1145, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1146, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1147, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"G4P_ryCGdy0eMKA-r8vbum3CNsx54Y3avtgZoP9xjJBO4J72ecVOaEx6xQn5kpL_LqpkhTHR4JfKrHvOlQmhqQ==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1148, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1149, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1150, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1151, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1152, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1153, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1154, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1155, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1156, '', 0, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1157, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1158, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1159, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1160, '', 0, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1161, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1162, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"LyH3hWjlo97PllwamH9DWKUrG8p66XyIsI85my9wEPFdGLbdJqrIu77OE3zCTC9p_VJuryqlJtj_twnXRDlSuw==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1163, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1164, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1165, 'admin', 1, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1166, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1167, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1168, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1169, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1170, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1171, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1172, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcategory', '{\"GET\":{\"r\":\"article\\/category\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1173, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcomment', '{\"GET\":{\"r\":\"article\\/comment\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1174, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1175, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=user%2Findex', '{\"GET\":{\"r\":\"user\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1176, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=comment%2Findex', '{\"GET\":{\"r\":\"comment\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1177, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1178, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1179, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1180, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1181, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1182, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1183, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1184, '', 0, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1185, '', 0, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1186, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1187, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1188, '', 0, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1189, '', 0, '127.0.0.1', 'public/logout', '/yii2/backend/web/index.php?r=public%2Flogout', '{\"GET\":{\"r\":\"public\\/logout\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1190, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1191, '', 0, '127.0.0.1', 'public/login', '/yii2/backend/web/index.php?r=public%2Flogin', '{\"GET\":{\"r\":\"public\\/login\"},\"POST\":{\"_csrf-backend\":\"puJBGS00AOY7RNCCmLHWO_G9Zoi3noJTPyqiNhuIW__LrXIsSmJmiVF0oLfH6Lxqic0jwoTJwBpXQPdTVL42zg==\",\"LoginForm\":{\"username\":\"admin\",\"password\":\"123456\"}}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1192, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1193, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1194, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1195, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1196, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1197, 'admin', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1198, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex', '{\"GET\":{\"r\":\"rule\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1199, 'admin', 1, '127.0.0.1', 'rule/index', '/yii2/backend/web/index.php?r=rule%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"rule\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1200, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1201, 'admin', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1202, 'admin', 1, '127.0.0.1', 'admin/update', '/yii2/backend/web/index.php?r=admin%2Fupdate&id=1', '{\"GET\":{\"r\":\"admin\\/update\",\"id\":\"1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1203, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1204, 'admin', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1205, 'admin', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=1', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1206, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1207, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1208, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcategory', '{\"GET\":{\"r\":\"article\\/category\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1209, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1210, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcomment', '{\"GET\":{\"r\":\"article\\/comment\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1211, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex', '{\"GET\":{\"r\":\"system-log\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1212, 'admin', 1, '127.0.0.1', 'system-log/index', '/yii2/backend/web/index.php?r=system-log%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"system-log\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1213, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex', '{\"GET\":{\"r\":\"user\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1214, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex', '{\"GET\":{\"r\":\"comment\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1215, 'admin', 1, '127.0.0.1', 'comment/index', '/yii2/backend/web/index.php?r=comment%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"comment\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1216, 'admin', 1, '127.0.0.1', 'user/index', '/yii2/backend/web/index.php?r=user%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"user\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1217, 'admin', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1218, 'admin', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1219, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Findex', '{\"GET\":{\"r\":\"article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1220, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcategory', '{\"GET\":{\"r\":\"article\\/category\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1221, 'admin', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=article%2Fcomment', '{\"GET\":{\"r\":\"article\\/comment\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1222, '', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1223, '', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1224, '', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1225, '', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1226, '', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1227, '', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex', '{\"GET\":{\"r\":\"role\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1228, '', 1, '127.0.0.1', 'role/index', '/yii2/backend/web/index.php?r=role%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"role\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1229, '', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1230, '', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1231, '', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1232, '', 1, '127.0.0.1', 'permission/create', '/yii2/backend/web/index.php?r=permission%2Fcreate', '{\"GET\":{\"r\":\"permission\\/create\"},\"POST\":{\"_csrf-backend\":\"RHegDBeZmgZ9FHtQdVH-Rehrj2lDvVRE6HnT9I6C91x2POFnfPPwdg4lGT0iJIQtjgC9LgrKHzeOH7ekxOOSMA==\",\"name\":\"ym-article\\/*\",\"description\":\"ym-article\\/*\",\"rule_name\":\"\",\"data\":\"\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1233, '', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex', '{\"GET\":{\"r\":\"permission\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1234, '', 1, '127.0.0.1', 'permission/index', '/yii2/backend/web/index.php?r=permission%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"permission\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1235, '', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1236, '', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1237, '', 1, '127.0.0.1', 'public/error', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1238, '', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex', '{\"GET\":{\"r\":\"admin\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1239, '', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1240, '', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=1', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"1\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1241, '', 1, '127.0.0.1', 'admin/assign', '/yii2/backend/web/index.php?r=admin%2Fassign&id=1', '{\"GET\":{\"r\":\"admin\\/assign\",\"id\":\"1\"},\"POST\":{\"_csrf-backend\":\"4T2bkvMnBNG91pUgqks_gBQpEj4iJuTxhjAbnCLPHgTTdtr5mE1uoc7n9039PkXockIgeWtRr4LgVn_MaK57aA==\",\"role\":[\"admin\",\"editor\",\"root\",\"tester\"],\"permission\":[\"admin\\/*\",\"admin\\/assign\",\"admin\\/create\",\"admin\\/destroy\",\"admin\\/index\",\"admin\\/update\",\"base\\/*\",\"comment\\/*\",\"comment\\/index\",\"comment\\/update\",\"info\\/*\",\"info\\/index\",\"permission\\/*\",\"permission\\/create\",\"permission\\/destroy\",\"permission\\/index\",\"permission\\/update\",\"public\\/*\",\"public\\/error\",\"public\\/iframe\",\"public\\/index1\",\"public\\/index2\",\"public\\/index3\",\"public\\/login\",\"public\\/logout\",\"role\\/*\",\"role\\/assign\",\"role\\/create\",\"role\\/destroy\",\"role\\/index\",\"role\\/update\",\"rule\\/*\",\"rule\\/create\",\"rule\\/destroy\",\"rule\\/index\",\"rule\\/update\",\"system-log\\/*\",\"system-log\\/index\",\"user\\/*\",\"user\\/create\",\"user\\/index\",\"user\\/update\",\"ym-article\\/*\"]}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1242, '', 1, '127.0.0.1', 'admin/index', '/yii2/backend/web/index.php?r=admin%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"admin\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1243, '', 1, '127.0.0.1', 'public/iframe', '/yii2/backend/web/index.php', '{\"GET\":[],\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1244, '', 1, '127.0.0.1', 'public/console', '/yii2/backend/web/index.php?r=public%2Fconsole', '{\"GET\":{\"r\":\"public\\/console\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1245, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1246, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1247, '', 1, '127.0.0.1', 'ym-article/destroy', '/yii2/backend/web/index.php?r=ym-article%2Fdestroy&id=10', '{\"GET\":{\"r\":\"ym-article\\/destroy\",\"id\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1248, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=3', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"3\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1249, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1250, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1251, '', 1, '127.0.0.1', 'ym-article/destroy', '/yii2/backend/web/index.php?r=ym-article%2Fdestroy&id=4', '{\"GET\":{\"r\":\"ym-article\\/destroy\",\"id\":\"4\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1252, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=5', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"5\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1253, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=5', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"5\"},\"POST\":{\"_csrf-backend\":\"Xz2cKzSKuLgL0s_suH8aHB0sBJBXsFPiUz2xz51rFuVtdt1AX-DSyHjjrYHvCmB0e0c21x7HGJE1W9Wf1wpziQ==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7206\\u53d1\\u5373\\u5c06\\u4e00\\u5468\\u5e74\\uff0c\\u6cb9\\u4ef7\\u56e0\\u4e3a\\u8fd9\\u4e9b\\u56e0\\u7d20\\u53c8\\u6da8\\u4e86\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u6cb9\\u4ef7,\\u4fc4\\u4e4c\\u51b2\\u7a81\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\"\\u5728\\u5e02\\u573a\\u9884\\u671f\\u4e2d\\u56fd\\u9700\\u6c42\\u590d\\u82cf\\uff0c\\u897f\\u65b9\\u5bf9\\u4fc4\\u77f3\\u6cb9(3, 0.00, 0.00%)\\u8fdb\\u884c\\u5236\\u88c1\\uff0c\\u4ee5\\u53ca\\u4fc4\\u7f57\\u65af\\u51cf\\u4ea7\\u7b49\\u56e0\\u7d20\\u5f71\\u54cd\\u4e0b\\uff0c\\u8fd1\\u671f\\u56fd\\u9645\\u6cb9\\u4ef7\\u6500\\u5347\\u3002\",\"content\":\"2\\u67088\\u65e5\\uff0c\\u7f8e\\u56fd\\u80fd\\u6e90\\u4fe1\\u606f\\u7f72\\uff08EIA\\uff09\\u53d1\\u5e032\\u6708\\u4efd\\u300a\\u77ed\\u671f\\u80fd\\u6e90\\u5c55\\u671b\\u300b\\uff0c\\u8c03\\u9ad8\\u4e862023\\u5e74\\u5e03\\u4f26\\u7279\\u539f\\u6cb9\\u4ef7\\u683c\\u7684\\u9884\\u6d4b\\u503c\\u81f383.63\\u7f8e\\u5143\\/\\u6876\\uff0c\\u6b64\\u524d\\u4e3a83.1\\u7f8e\\u5143\\/\\u6876\\u3002EIA\\u4e5f\\u5c061\\u6708\\u9884\\u6d4b\\u76842023\\u5e74\\u4e2d\\u56fd\\u7684\\u77f3\\u6cb9\\u6d88\\u8d39\\u5747\\u503c\\uff0c\\u4ece1570\\u4e07\\u6876\\/\\u65e5\\u4e0a\\u8c03\\u81f31580\\u4e07\\u6876\\/\\u65e5\\u3002\\r\\n\\r\\n\\u3000\\u30002\\u67085\\u65e5\\uff0c\\u6b27\\u76df\\u5bf9\\u4fc4\\u7f57\\u65af\\u6210\\u54c1\\u6cb9\\u7684\\u8fdb\\u53e3\\u7981\\u4ee4\\uff0c\\u4ee5\\u53caG7\\u96c6\\u56e2\\u4e0e\\u6b27\\u76df\\u7b49\\u56fd\\u5bb6\\u5bf9\\u4fc4\\u7f57\\u65af\\u6210\\u54c1\\u6cb9\\u51fa\\u53e3\\u8bbe\\u7f6e\\u4ef7\\u683c\\u4e0a\\u9650\\u7684\\u653f\\u7b56\\u540c\\u65f6\\u751f\\u6548\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u636e\\u5f6d\\u535a\\u793e\\u5f53\\u65e5\\u62a5\\u9053\\uff0c\\u9ad8\\u76db(374.02, 2.74, 0.74%)\\u96c6\\u56e2\\u5728\\u6700\\u65b0\\u7684\\u62a5\\u544a\\u4e2d\\u8868\\u793a\\uff0c\\u7531\\u4e8e\\u5236\\u88c1\\u53ef\\u80fd\\u5bfc\\u81f4\\u4fc4\\u7f57\\u65af\\u77f3\\u6cb9\\u51fa\\u53e3\\u4e0b\\u964d\\uff0c\\u53e0\\u52a0\\u4e2d\\u56fd\\u9700\\u6c42\\u6062\\u590d\\uff0c\\u6cb9\\u4ef7\\u5c06\\u4ece\\u76ee\\u524d\\u768480\\u7f8e\\u5143\\/\\u6876\\u5de6\\u53f3\\u5347\\u81f3100\\u7f8e\\u5143\\/\\u6876\\u4ee5\\u4e0a\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u4f5c\\u4e3a\\u5bf9\\u897f\\u65b9\\u5b9e\\u65bd\\u77f3\\u6cb9\\u5236\\u88c1\\u7684\\u56de\\u5e94\\uff0c\\u4fc4\\u7f57\\u65af\\u57282\\u670810\\u65e5\\u5ba3\\u5e03\\uff0c3\\u6708\\u5c06\\u524a\\u51cf50\\u4e07\\u6876\\/\\u65e5\\u7684\\u77f3\\u6cb9\\u4ea7\\u91cf\\u3002\\u636e\\u592e\\u89c6\\u65b0\\u95fb\\u62a5\\u9053\\uff0c\\u6b27\\u4f69\\u514b+\\u4e0d\\u6253\\u7b97\\u91c7\\u53d6\\u884c\\u52a8\\u6765\\u5f25\\u8865\\u4fc4\\u7f57\\u65af\\u7684\\u51cf\\u4ea7\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u5c3d\\u7ba1\\u5168\\u7403\\u7ecf\\u6d4e\\u4ecd\\u5b58\\u5728\\u5f88\\u5927\\u4e0d\\u786e\\u5b9a\\u6027\\uff0c\\u4f46\\u5728\\u4e0a\\u8ff0\\u591a\\u91cd\\u5229\\u591a\\u56e0\\u7d20\\u4e0b\\uff0c\\u5e02\\u573a\\u5bf9\\u6cb9\\u4ef7\\u5c06\\u5927\\u5e45\\u53cd\\u5f39\\u7684\\u9884\\u671f\\u4e5f\\u5728\\u589e\\u5f3a\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u636e\\u300a\\u91d1\\u878d\\u65f6\\u62a5\\u300b2\\u670810\\u65e5\\u62a5\\u9053\\uff0c\\u9876\\u5c16\\u539f\\u6cb9\\u4ea4\\u6613\\u5458\\u3001\\u5bf9\\u51b2\\u57fa\\u91d1\\u7ecf\\u7406PierreAndurand\\u8ba4\\u4e3a\\uff0c\\u76ee\\u524d\\u5e02\\u573a\\u592a\\u8fc7\\u77ed\\u89c6\\uff0c\\u4e2d\\u56fd\\u7684\\u5f00\\u653e\\u5c06\\u5bfc\\u81f4\\u77f3\\u6cb9\\u9700\\u6c42\\u589e\\u957f\\u8fdc\\u8d85\\u9884\\u671f\\u3002\\u56fd\\u9645\\u6cb9\\u4ef7\\u5c06\\u6709\\u53ef\\u80fd\\u57282023\\u5e74\\u63a5\\u4e0b\\u53bb\\u7684\\u65f6\\u95f4\\u91cc\\u8fbe140\\u7f8e\\u5143\\/\\u6876\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u4e0b\\u5468\\u4e5f\\u5c06\\u8fce\\u6765\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7206\\u53d1\\u4e00\\u5468\\u5e74\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u53bb\\u5e742\\u670824\\u65e5\\uff0c\\u4fc4\\u7f57\\u65af\\u6b63\\u5f0f\\u5bf9\\u4e4c\\u514b\\u5170\\u53d1\\u8d77\\u7279\\u522b\\u519b\\u4e8b\\u884c\\u52a8\\u3002\\u968f\\u540e\\uff0c\\u897f\\u65b9\\u56fd\\u5bb6\\u5bf9\\u4fc4\\u7f57\\u65af\\u7684\\u77f3\\u6cb9\\u8fdb\\u884c\\u4e86\\u591a\\u8f6e\\u5236\\u88c1\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u5bf9\\u4fc4\\u7f57\\u65af\\u77f3\\u6cb9\\u4f9b\\u5e94\\u4e2d\\u65ad\\u7684\\u62c5\\u5fe7\\uff0c\\u4ee5\\u53ca\\u7ecf\\u6d4e\\u524d\\u666f\\u7684\\u4e0d\\u786e\\u5b9a\\u6027\\u7b49\\u56e0\\u7d20\\uff0c\\u5bfc\\u81f4\\u56fd\\u9645\\u6cb9\\u4ef7\\u5448\\u73b0\\u5927\\u8d77\\u5927\\u843d\\u7684\\u8fc7\\u5c71\\u8f66\\u884c\\u60c5\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u53bb\\u5e743\\u67082\\u65e5\\uff0c\\u5e03\\u4f26\\u7279\\u539f\\u6cb9\\u4ef7\\u76d8\\u4e2d\\u7a81\\u7834110\\u7f8e\\u5143\\/\\u6876\\uff1b3\\u67087\\u65e5\\uff0c\\u5e03\\u4f26\\u7279\\u539f\\u6cb95\\u6708\\u671f\\u8d27\\u76d8\\u4e2d\\u4e00\\u5ea6\\u5347\\u81f3139\\u7f8e\\u5143\\/\\u6876\\uff0cWTI\\u539f\\u6cb95\\u6708\\u671f\\u8d27\\u63a5\\u8fd1130\\u7f8e\\u5143\\/\\u6876\\uff0c\\u5747\\u521b\\u4e0b2008\\u5e74\\u4ee5\\u6765\\u65b0\\u9ad8\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u4f34\\u968f\\u7740\\u897f\\u65b9\\u56fd\\u5bb6\\u5f00\\u59cb\\u8ba8\\u8bba\\u5e76\\u843d\\u5730\\u5bf9\\u4fc4\\u7ecf\\u6d4e\\u5236\\u88c1\\u653f\\u7b56\\uff0c\\u56fd\\u9645\\u6cb9\\u4ef7\\u6ce2\\u52a8\\u5267\\u70c8\\uff0c\\u5728\\u53bb\\u5e746\\u6708\\u518d\\u6b21\\u7a81\\u7834120\\u7f8e\\u5143\\/\\u6876\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u968f\\u7740\\u5e02\\u573a\\u5bf9\\u7ecf\\u6d4e\\u8870\\u9000\\u7684\\u62c5\\u5fe7\\uff0c\\u8d85\\u8fc7\\u4e86\\u5bf9\\u4f9b\\u5e94\\u77ed\\u7f3a\\u7684\\u9884\\u671f\\uff0c\\u56fd\\u9645\\u539f\\u6cb9\\u5f00\\u59cb\\u8fdb\\u5165\\u4e0b\\u884c\\u901a\\u9053\\uff0c\\u5e76\\u4e8e7\\u6708\\u521d\\u8dcc\\u7834100\\u7f8e\\u5143\\/\\u6876\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u53bb\\u5e7412\\u67085\\u65e5\\uff0c\\u6b27\\u76df\\u9488\\u5bf9\\u4fc4\\u7f57\\u65af\\u6d77\\u8fd0\\u539f\\u6cb9\\u7684\\u8fdb\\u53e3\\u7981\\u4ee4\\uff0c\\u4ee5\\u53caG7\\u96c6\\u56e2\\u3001\\u6b27\\u76df\\u4e0e\\u6fb3\\u5927\\u5229\\u4e9a\\u5bf9\\u4fc4\\u7f57\\u65af\\u77f3\\u6cb9\\u8bbe\\u7f6e60\\u7f8e\\u5143\\/\\u6876\\u7684\\u4ef7\\u683c\\u4e0a\\u9650\\u7684\\u653f\\u7b56\\u540c\\u65f6\\u751f\\u6548\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u4f46\\u4e0a\\u8ff0\\u653f\\u7b56\\u5f53\\u65f6\\u6682\\u672a\\u5bfc\\u81f4\\u5e02\\u573a\\u9884\\u671f\\u4e2d\\u7684\\u539f\\u6cb9\\u4f9b\\u5e94\\u77ed\\u7f3a\\uff0c\\u53e0\\u52a0\\u6b27\\u4f69\\u514b\\u51cf\\u4ea7\\u843d\\u7a7a\\uff0c\\u63a8\\u52a8\\u4e86\\u6cb9\\u4ef7\\u4e0b\\u8dcc\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u5f53\\u5730\\u65f6\\u95f412\\u67086\\u65e5\\uff0cWTI\\u5373\\u6708\\u539f\\u6cb9\\u671f\\u8d27\\u7ed3\\u7b97\\u4ef7\\u5728\\u56de\\u5410\\u4e86\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7684\\u6240\\u6709\\u6da8\\u5e45\\u540e\\uff0c\\u8dcc\\u81f3\\u5e74\\u5185\\u6700\\u4f4e\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u622a\\u81f3\\u5317\\u4eac\\u65f6\\u95f42\\u670813\\u65e5\\u4e0b\\u534818:00\\uff0c\\u5e03\\u4f26\\u7279\\u539f\\u6cb9\\u8dcc1.28%\\uff0c\\u62a585.28\\u7f8e\\u5143\\/\\u6876\\uff1bWTI \\u539f\\u6cb9\\u8dcc1.38%\\uff0c\\u62a578.62\\u7f8e\\u5143\\/\\u6876\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1254, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1255, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1256, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=6', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"6\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1257, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=6', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"6\"},\"POST\":{\"_csrf-backend\":\"2Hc5k4Ck5MnwAW73zRBUEEkbUiBBBHqi6hLfPDyys33qPHj4686OuYMwDJqaZS54L3BgZwhzMdGMdLtsdtPWEQ==\",\"title\":\"\\u7f8e\\u6062\\u590d\\u5728\\u4e4c\\u201c\\u7edd\\u5bc6\\u9879\\u76ee\\u201d \\u4fc4\\u4e4c\\u51b2\\u7a81\\u6216\\u8fd8\\u8981\\u4e24\\u5e74\\u7ed3\\u675f\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u7f8e\\u56fd,\\u4fc4\\u4e4c\\u51b2\\u7a81\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\" \\u201c\\u4fc4\\u7f57\\u65af\\u5411\\u4e4c\\u514b\\u5170\\u9610\\u8ff0\\u548c\\u8c08\\u7acb\\u573a\\u201d\\uff0c\\u4eca\\u65e5\\u4fc4\\u7f57\\u65af\\u7535\\u89c6\\u53f012\\u65e5\\u4ee5\\u6b64\\u4e3a\\u9898\\u62a5\\u9053\\u79f0\\uff0c\\u4fc4\\u7f57\\u65af\\u526f\\u5916\\u957f\\u97e6\\u5c14\\u5e0c\\u5b8111\\u65e5\\u8868\\u793a\\uff0c\\u4fc4\\u7f57\\u65af\\u5df2\\u51c6\\u5907\\u597d\\u4e0e\\u4e4c\\u514b\\u5170\\u8fdb\\u884c\\u65e0\\u6761\\u4ef6\\u8c08\\u5224\\u3002\\u4fc4\\u5a92\\u8ba4\\u4e3a\\uff0c\\u97e6\\u5c14\\u5e0c\\u5b81\\u6b64\\u756a\\u8868\\u6001\\u5b57\\u91cc\\u884c\\u95f4\\u900f\\u9732\\u51fa\\u975e\\u5e38\\u91cd\\u8981\\u7684\\u8868\\u8ff0\\u548c\\u6f5c\\u53f0\\u8bcd\\uff0c\\u51c6\\u786e\\u4f20\\u8fbe\\u4fc4\\u65b9\\u5b9e\\u8d28\\u7acb\\u573a\\u3002\\u4e0d\\u8fc7\\uff0c\\u4e4c\\u65b9\\u5bf9\\u6b64\\u5e76\\u6ca1\\u6709\\u79ef\\u6781\\u56de\\u5e94\\uff0c\\u5e76\\u5ba3\\u79f0\\u53ea\\u6709\\u4e4c\\u514b\\u5170\\u7684\\u80dc\\u5229\\u624d\\u80fd\\u7ed3\\u675f\\u201c\\u6b27\\u6d32\\u6218\\u4e89\\u201d\\u3002\\u4ece\\u6218\\u573a\\u4e0a\\u7684\\u6001\\u52bf\\u6765\\u770b\\uff0c\\u4fc4\\u4e4c\\u53cc\\u65b9\\u4ecd\\u5c06\\u519b\\u4e8b\\u624b\\u6bb5\\u4f5c\\u4e3a\\u89e3\\u51b3\\u77db\\u76fe\\u7684\\u4e3b\\u8981\\u65b9\\u5f0f\\u3002\\u6709\\u5206\\u6790\\u8ba4\\u4e3a\\uff0c\\u4fc4\\u65b9\\u8981\\u6c42\\u628a\\u4e4c\\u4e1c\\u5730\\u533a\\u7684\\u8d6b\\u5c14\\u677e\\u7b49\\u5730\\u62ff\\u5728\\u624b\\u91cc\\u4f5c\\u4e3a\\u8c08\\u5224\\u7b79\\u7801\\uff0c\\u800c\\u4e4c\\u65b9\\u8868\\u6001\\u662f\\u8981\\u62ff\\u56de\\u5168\\u90e8\\u9886\\u571f\\uff0c\\u8fd9\\u5c31\\u5bfc\\u81f4\\u8c08\\u5224\\u6ca1\\u6709\\u57fa\\u7840\\u3002\\u6b64\\u5916\\uff0c\\u7f8e\\u897f\\u65b9\\u4e0d\\u65ad\\u6df1\\u5ea6\\u4ecb\\u5165\\u51b2\\u7a81\\uff0c\\u4e5f\\u8ba9\\u4fc4\\u4e4c\\u53cc\\u65b9\\u59a5\\u534f\\u548c\\u9000\\u8ba9\\u7684\\u7a7a\\u95f4\\u8d8a\\u6765\\u8d8a\\u5c0f\\u3002\",\"content\":\"\\u97e6\\u5c14\\u5e0c\\u5b81\\u5728\\u4fc4\\u7ea2\\u661f\\u7535\\u89c6\\u53f011\\u65e5\\u64ad\\u51fa\\u7684\\u4e00\\u6863\\u91c7\\u8bbf\\u8282\\u76ee\\u4e2d\\u8868\\u793a\\uff0c\\u6240\\u6709\\u519b\\u4e8b\\u884c\\u52a8\\u90fd\\u662f\\u4ee5\\u8c08\\u5224\\u7ed3\\u675f\\u7684\\uff0c\\u4fc4\\u7f57\\u65af\\u5bf9\\u6b64\\u4e5f\\u4f5c\\u597d\\u4e86\\u51c6\\u5907\\uff0c\\u4f46\\u8c08\\u5224\\u9700\\u8981\\u5efa\\u7acb\\u5728\\u73b0\\u5b9e\\u60c5\\u51b5\\u4e4b\\u4e0a\\u3002\\u201c\\u4fc4\\u7f57\\u65af\\u51c6\\u5907\\u597d\\u901a\\u8fc7\\u5bf9\\u8bdd\\u7ed3\\u675f\\u51b2\\u7a81\\uff0c\\u4f46\\u524d\\u63d0\\u662f\\u4e4c\\u65b9\\u4e0d\\u80fd\\u6709\\u9884\\u8bbe\\u6761\\u4ef6\\uff0c\\u8c08\\u5224\\u8981\\u5728\\u65e2\\u5b9a\\u7684\\u73b0\\u5b9e\\u57fa\\u7840\\u4e0a\\u8fdb\\u884c\\uff0c\\u5e76\\u8003\\u8651\\u5230\\u4fc4\\u65b9\\u6b64\\u524d\\u63d0\\u51fa\\u7684\\u76ee\\u6807\\u3002\\u201d\\u97e6\\u5c14\\u5e0c\\u5b81\\u79f0\\uff0c\\u6b64\\u524d\\u5728\\u767d\\u4fc4\\u7f57\\u65af\\u548c\\u571f\\u8033\\u5176\\u4e3e\\u884c\\u7684\\u4fc4\\u4e4c\\u8c08\\u5224\\u5747\\u56e0\\u4e4c\\u65b9\\u539f\\u56e0\\u4e2d\\u65ad\\u3002\\u4ed6\\u5f3a\\u8c03\\uff0c\\u662f\\u5426\\u4e0e\\u4fc4\\u65b9\\u8fdb\\u884c\\u8c08\\u5224\\u5e76\\u975e\\u7531\\u4e4c\\u65b9\\u51b3\\u5b9a\\uff0c\\u800c\\u201c\\u9996\\u5148\\u662f\\u7531\\u534e\\u76db\\u987f\\u548c\\u5e03\\u9c81\\u585e\\u5c14\\u51b3\\u5b9a\\u201d\\u3002\\r\\n\\r\\n    \\u636e\\u4e4c\\u514b\\u5170\\u56fd\\u5bb6\\u901a\\u8baf\\u793e11\\u65e5\\u62a5\\u9053\\uff0c\\u4e4c\\u603b\\u7edf\\u529e\\u516c\\u5ba4\\u987e\\u95ee\\u6ce2\\u591a\\u5229\\u4e9a\\u514b\\u5f53\\u5929\\u8868\\u793a\\uff0c\\u4fc4\\u65b9\\u58f0\\u660e\\u8868\\u660e\\uff0c\\u4e0e\\u514b\\u91cc\\u59c6\\u6797\\u5bab\\u7684\\u8c08\\u5224\\u662f\\u4e0d\\u53ef\\u80fd\\u7684\\u3002\\u6ce2\\u591a\\u5229\\u4e9a\\u514b\\u79f0\\uff0c\\u53ea\\u6709\\u4e4c\\u514b\\u5170\\u7684\\u80dc\\u5229\\u624d\\u80fd\\u7ed3\\u675f\\u201c\\u6b27\\u6d32\\u6218\\u4e89\\u201d\\u3002\\u4ed6\\u6307\\u8d23\\u4fc4\\u7f57\\u65af\\u201c\\u4e0d\\u613f\\u79bb\\u5f00\\u5b83\\u5360\\u9886\\u7684\\u9886\\u571f\\uff0c\\u4e5f\\u4e0d\\u613f\\u4e3a\\u8fd9\\u573a\\u51e0\\u4e4e\\u957f\\u8fbe\\u4e00\\u5e74\\u7684\\u51b2\\u7a81\\u627f\\u62c5\\u8d23\\u4efb\\u201d\\u3002\\u767d\\u5bab\\u56fd\\u5bb6\\u5b89\\u5168\\u59d4\\u5458\\u4f1a\\u53d1\\u8a00\\u4eba\\u7ea6\\u7ff0\\u00b7\\u67ef\\u6bd4\\u540c\\u65e5\\u91cd\\u7533\\uff0c\\u8981\\u7531\\u4e4c\\u603b\\u7edf\\u6cfd\\u8fde\\u65af\\u57fa\\u6765\\u51b3\\u5b9a\\u8c08\\u5224\\u662f\\u5426\\u5408\\u9002\\uff0c\\u4ee5\\u53ca\\u4f55\\u65f6\\u5408\\u9002\\u3002\\u201c\\u534e\\u76db\\u987f\\u5c06\\u7ee7\\u7eed\\u652f\\u6301\\u4e4c\\u514b\\u5170\\uff0c\\u4ee5\\u4fbf\\u4ed6\\u4eec\\u80fd\\u591f\\u5728\\u6218\\u573a\\u4e0a\\u6210\\u529f\\u5bf9\\u6297\\u4fc4\\u7f57\\u65af\\uff0c\\u56e0\\u4e3a\\u8fd9\\u5c06\\u4f7f\\u6cfd\\u8fde\\u65af\\u57fa\\u5728\\u8c08\\u5224\\u65f6\\u2018\\u987a\\u98ce\\u987a\\u6c34\\u2019\\u201d\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1258, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=6', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"6\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1259, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=6', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"6\"},\"POST\":{\"_csrf-backend\":\"mmeK6-WH2C7X0bsieiVH_LiyjWPOGvfC94y_8h8OB3yoLMuAju2yXqTg2U8tUD2U3tm_JIdtvLGR6tuiVW9iEA==\",\"title\":\"\\u7f8e\\u6062\\u590d\\u5728\\u4e4c\\u201c\\u7edd\\u5bc6\\u9879\\u76ee\\u201d \\u4fc4\\u4e4c\\u51b2\\u7a81\\u6216\\u8fd8\\u8981\\u4e24\\u5e74\\u7ed3\\u675f\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u7f8e\\u56fd,\\u4fc4\\u4e4c\\u51b2\\u7a81\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\" \\u201c\\u4fc4\\u7f57\\u65af\\u5411\\u4e4c\\u514b\\u5170\\u9610\\u8ff0\\u548c\\u8c08\\u7acb\\u573a\\u201d\\uff0c\\u4eca\\u65e5\\u4fc4\\u7f57\\u65af\\u7535\\u89c6\\u53f012\\u65e5\\u4ee5\\u6b64\\u4e3a\\u9898\\u62a5\\u9053\\u79f0\\uff0c\\u4fc4\\u7f57\\u65af\\u526f\\u5916\\u957f\\u97e6\\u5c14\\u5e0c\\u5b8111\\u65e5\\u8868\\u793a\\uff0c\\u4fc4\\u7f57\\u65af\\u5df2\\u51c6\\u5907\\u597d\\u4e0e\\u4e4c\\u514b\\u5170\\u8fdb\\u884c\\u65e0\\u6761\\u4ef6\\u8c08\\u5224\\u3002\\u4fc4\\u5a92\\u8ba4\\u4e3a\\uff0c\\u97e6\\u5c14\\u5e0c\\u5b81\\u6b64\\u756a\\u8868\\u6001\\u5b57\\u91cc\\u884c\\u95f4\\u900f\\u9732\\u51fa\\u975e\\u5e38\\u91cd\\u8981\\u7684\\u8868\\u8ff0\\u548c\\u6f5c\\u53f0\\u8bcd\\uff0c\\u51c6\\u786e\\u4f20\\u8fbe\\u4fc4\\u65b9\\u5b9e\\u8d28\\u7acb\\u573a\\u3002\",\"content\":\"\\u97e6\\u5c14\\u5e0c\\u5b81\\u5728\\u4fc4\\u7ea2\\u661f\\u7535\\u89c6\\u53f011\\u65e5\\u64ad\\u51fa\\u7684\\u4e00\\u6863\\u91c7\\u8bbf\\u8282\\u76ee\\u4e2d\\u8868\\u793a\\uff0c\\u6240\\u6709\\u519b\\u4e8b\\u884c\\u52a8\\u90fd\\u662f\\u4ee5\\u8c08\\u5224\\u7ed3\\u675f\\u7684\\uff0c\\u4fc4\\u7f57\\u65af\\u5bf9\\u6b64\\u4e5f\\u4f5c\\u597d\\u4e86\\u51c6\\u5907\\uff0c\\u4f46\\u8c08\\u5224\\u9700\\u8981\\u5efa\\u7acb\\u5728\\u73b0\\u5b9e\\u60c5\\u51b5\\u4e4b\\u4e0a\\u3002\\u201c\\u4fc4\\u7f57\\u65af\\u51c6\\u5907\\u597d\\u901a\\u8fc7\\u5bf9\\u8bdd\\u7ed3\\u675f\\u51b2\\u7a81\\uff0c\\u4f46\\u524d\\u63d0\\u662f\\u4e4c\\u65b9\\u4e0d\\u80fd\\u6709\\u9884\\u8bbe\\u6761\\u4ef6\\uff0c\\u8c08\\u5224\\u8981\\u5728\\u65e2\\u5b9a\\u7684\\u73b0\\u5b9e\\u57fa\\u7840\\u4e0a\\u8fdb\\u884c\\uff0c\\u5e76\\u8003\\u8651\\u5230\\u4fc4\\u65b9\\u6b64\\u524d\\u63d0\\u51fa\\u7684\\u76ee\\u6807\\u3002\\u201d\\u97e6\\u5c14\\u5e0c\\u5b81\\u79f0\\uff0c\\u6b64\\u524d\\u5728\\u767d\\u4fc4\\u7f57\\u65af\\u548c\\u571f\\u8033\\u5176\\u4e3e\\u884c\\u7684\\u4fc4\\u4e4c\\u8c08\\u5224\\u5747\\u56e0\\u4e4c\\u65b9\\u539f\\u56e0\\u4e2d\\u65ad\\u3002\\u4ed6\\u5f3a\\u8c03\\uff0c\\u662f\\u5426\\u4e0e\\u4fc4\\u65b9\\u8fdb\\u884c\\u8c08\\u5224\\u5e76\\u975e\\u7531\\u4e4c\\u65b9\\u51b3\\u5b9a\\uff0c\\u800c\\u201c\\u9996\\u5148\\u662f\\u7531\\u534e\\u76db\\u987f\\u548c\\u5e03\\u9c81\\u585e\\u5c14\\u51b3\\u5b9a\\u201d\\u3002\\r\\n\\r\\n    \\u636e\\u4e4c\\u514b\\u5170\\u56fd\\u5bb6\\u901a\\u8baf\\u793e11\\u65e5\\u62a5\\u9053\\uff0c\\u4e4c\\u603b\\u7edf\\u529e\\u516c\\u5ba4\\u987e\\u95ee\\u6ce2\\u591a\\u5229\\u4e9a\\u514b\\u5f53\\u5929\\u8868\\u793a\\uff0c\\u4fc4\\u65b9\\u58f0\\u660e\\u8868\\u660e\\uff0c\\u4e0e\\u514b\\u91cc\\u59c6\\u6797\\u5bab\\u7684\\u8c08\\u5224\\u662f\\u4e0d\\u53ef\\u80fd\\u7684\\u3002\\u6ce2\\u591a\\u5229\\u4e9a\\u514b\\u79f0\\uff0c\\u53ea\\u6709\\u4e4c\\u514b\\u5170\\u7684\\u80dc\\u5229\\u624d\\u80fd\\u7ed3\\u675f\\u201c\\u6b27\\u6d32\\u6218\\u4e89\\u201d\\u3002\\u4ed6\\u6307\\u8d23\\u4fc4\\u7f57\\u65af\\u201c\\u4e0d\\u613f\\u79bb\\u5f00\\u5b83\\u5360\\u9886\\u7684\\u9886\\u571f\\uff0c\\u4e5f\\u4e0d\\u613f\\u4e3a\\u8fd9\\u573a\\u51e0\\u4e4e\\u957f\\u8fbe\\u4e00\\u5e74\\u7684\\u51b2\\u7a81\\u627f\\u62c5\\u8d23\\u4efb\\u201d\\u3002\\u767d\\u5bab\\u56fd\\u5bb6\\u5b89\\u5168\\u59d4\\u5458\\u4f1a\\u53d1\\u8a00\\u4eba\\u7ea6\\u7ff0\\u00b7\\u67ef\\u6bd4\\u540c\\u65e5\\u91cd\\u7533\\uff0c\\u8981\\u7531\\u4e4c\\u603b\\u7edf\\u6cfd\\u8fde\\u65af\\u57fa\\u6765\\u51b3\\u5b9a\\u8c08\\u5224\\u662f\\u5426\\u5408\\u9002\\uff0c\\u4ee5\\u53ca\\u4f55\\u65f6\\u5408\\u9002\\u3002\\u201c\\u534e\\u76db\\u987f\\u5c06\\u7ee7\\u7eed\\u652f\\u6301\\u4e4c\\u514b\\u5170\\uff0c\\u4ee5\\u4fbf\\u4ed6\\u4eec\\u80fd\\u591f\\u5728\\u6218\\u573a\\u4e0a\\u6210\\u529f\\u5bf9\\u6297\\u4fc4\\u7f57\\u65af\\uff0c\\u56e0\\u4e3a\\u8fd9\\u5c06\\u4f7f\\u6cfd\\u8fde\\u65af\\u57fa\\u5728\\u8c08\\u5224\\u65f6\\u2018\\u987a\\u98ce\\u987a\\u6c34\\u2019\\u201d\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1260, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1261, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1262, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=7', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"7\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1263, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=7', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"7\"},\"POST\":{\"_csrf-backend\":\"2ZwNmxQnWf057fLryeXmBOmpXDKmDrKLbZkqbeMTjFPr10zwf00zjUrckIaekJxsj8Jude95-fgL_049qXLpPw==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u6e05\\u6670\\u5730\\u663e\\u793a \\u7f8e\\u56fd\\u64cd\\u63a7\\u6b27\\u6d32\\u6728\\u5076\\u5927\\u83b7\\u6210\\u529f\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u7f8e\\u56fd,\\u4fc4\\u4e4c\\u51b2\\u7a81\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\"\\u4fc4\\u4e4c\\u519b\\u4e8b\\u51b2\\u7a81\\u5230\\u73b0\\u5728\\u5df2\\u7ecf\\u5ef6\\u5b95\\u4e86\\u5c06\\u8fd1\\u4e00\\u5e74\\u7684\\u65f6\\u95f4\\uff0c\\u53ef\\u4ee5\\u8bf4\\u8fd9\\u573a\\u519b\\u4e8b\\u51b2\\u7a81\\u5f88\\u5927\\u7a0b\\u5ea6\\u4e0a\\u4e5f\\u6539\\u53d8\\u4e86\\u4e16\\u754c\\u683c\\u5c40\\uff0c\\u9996\\u5f53\\u5176\\u51b2\\u7684\\u9664\\u4e86\\u4fc4\\u4e4c\\u53cc\\u65b9\\u4e4b\\u5916\\u5c31\\u662f\\u6b27\\u6d32\\u3002\\u6b27\\u6d32\\u5230\\u5e95\\u4f55\\u53bb\\u4f55\\u4ece\\uff1f\\u57282\\u670813\\u65e5\\u64ad\\u51fa\\u7684\\u300a\\u8fd9\\u5c31\\u662f\\u4e2d\\u56fd\\u300b\\u8282\\u76ee\\u4e2d\\uff0c\\u590d\\u65e6\\u5927\\u5b66\\u4e2d\\u56fd\\u7814\\u7a76\\u9662\\u9662\\u957f\\u5f20\\u7ef4\\u4e3a\\u548c\\u4e0a\\u6d77\\u793e\\u79d1\\u9662\\u5b97\\u6559\\u7814\\u7a76\\u6240\\u5b97\\u6559\\u5b66\\u7814\\u7a76\\u5ba4\\u4e3b\\u4efb\\u90b1\\u6587\\u5e73\\u518d\\u6b21\\u5c31\\u6b64\\u5c55\\u5f00\\u6f14\\u8bb2\\u4e0e\\u8ba8\\u8bba\\u3002\",\"content\":\"\\u90b1\\u6587\\u5e73\\u8ba4\\u4e3a\\uff0c\\u7f8e\\u56fd\\u64cd\\u63a7\\u6b27\\u6d32\\u662f\\u5927\\u83b7\\u6210\\u529f\\u7684\\uff0c\\u73b0\\u5728\\u662f\\u5f00\\u59cb\\u6536\\u5272\\u80dc\\u5229\\u679c\\u5b9e\\u7684\\u65f6\\u5019\\u3002\\u6211\\u4eec\\u4e00\\u76f4\\u7528\\u7f8e\\u897f\\u65b9\\u6765\\u6307\\u4ee3\\u7f8e\\u6b27\\u7b49\\u53d1\\u8fbe\\u56fd\\u5bb6\\uff0c\\u5047\\u8bbe\\u5b83\\u4eec\\u662f\\u5f02\\u5e38\\u56e2\\u7ed3\\u7684\\uff0c\\u4f46\\u662f\\u4fc4\\u4e4c\\u51b2\\u7a81\\u8ba9\\u5927\\u5bb6\\u6e05\\u6670\\u5730\\u8ba4\\u8bc6\\u5230\\uff0c\\u7f8e\\u56fd\\u5bf9\\u6b27\\u6d32\\u7684\\u6e17\\u900f\\u548c\\u63a7\\u5236\\u4e4b\\u6df1\\uff0c\\u6b27\\u6d32\\u51e0\\u4e4e\\u6210\\u4e86\\u7f8e\\u56fd\\u7684\\u63d0\\u7ebf\\u6728\\u5076\\u3002\\u7f8e\\u56fd\\u901a\\u8fc7\\u51af\\u5fb7\\u83b1\\u6069\\u7b49\\u4ee3\\u7406\\u4eba\\u63a7\\u5236\\u4e86\\u6b27\\u76df\\u59d4\\u5458\\u4f1a\\u548c\\u8bae\\u4f1a\\uff0c\\u7528\\u7eff\\u515a\\u7b49\\u5404\\u8272\\u653f\\u6cbb\\u201c\\u7f51\\u7ea2\\u201d\\u63a7\\u5236\\u4e86\\u8bf8\\u591a\\u56fd\\u5bb6\\u7684\\u653f\\u5c40\\uff0c\\u4ece\\u653f\\u6cbb\\u4e0a\\u7ed1\\u67b6\\u3001\\u519b\\u4e8b\\u4e0a\\u63a7\\u5236\\u3001\\u7ecf\\u6d4e\\u4e0a\\u5438\\u8840\\u6b27\\u6d32\\uff0c\\u64cd\\u63a7\\u6b27\\u6d32\\u7684\\u6218\\u7565\\u76ee\\u7684\\u5927\\u83b7\\u6210\\u529f\\u3002\\r\\n\\r\\n\\u9762\\u5bf9\\u7f8e\\u56fd\\u7684\\u8d81\\u706b\\u6253\\u52ab\\uff0c\\u8001\\u6b27\\u6d32\\u7684\\u53cd\\u5e94\\u5f02\\u5e38\\u7684\\u8f6f\\u5f31\\u65e0\\u529b\\uff0c\\u5b9e\\u5728\\u662f\\u8ba9\\u4eba\\u6709\\u70b9\\u51fa\\u4e4e\\u610f\\u6599\\u3002\\u6cd5\\u56fd\\u3001\\u5fb7\\u56fd\\u3001\\u897f\\u73ed\\u7259\\u3001\\u610f\\u5927\\u5229\\u8fd9\\u4e9b\\u5386\\u53f2\\u4e0a\\u90fd\\u66fe\\u7ecf\\u5efa\\u7acb\\u8fc7\\u53f1\\u54a4\\u98ce\\u4e91\\u7684\\u4e16\\u754c\\u5e1d\\u56fd\\uff0c\\u88ab\\u6218\\u540e\\u957f\\u671f\\u7684\\u592a\\u5e73\\u5c81\\u6708\\u524a\\u5f31\\u4e86\\u610f\\u5fd7\\u3002\\u5728\\u7f8e\\u56fd\\u7684\\u7fbd\\u7ffc\\u4e0b\\u65e5\\u5b50\\u8fc7\\u5f97\\u592a\\u4e45\\uff0c\\u5408\\u4f19\\u52ab\\u63a0\\u53d1\\u5c55\\u4e2d\\u56fd\\u5bb6\\u7684\\u65e5\\u5b50\\u8fc7\\u5f97\\u592a\\u8212\\u670d\\uff0c\\u5b83\\u4eec\\u5c45\\u7136\\u5fd8\\u8bb0\\u4e86\\u7f8e\\u82f1\\u8fd9\\u4e9b\\u76ce\\u683c\\u9c81-\\u6492\\u514b\\u900a\\u4eba\\u7684\\u8840\\u8165\\u672c\\u6027\\u3002\\u7f8e\\u56fd\\u7684\\u8d22\\u653f\\u8d64\\u5b57\\u5df2\\u7ecf\\u9762\\u4e34\\u7206\\u70b9\\uff0c\\u53ea\\u6709\\u5de8\\u91cf\\u7684\\u8d44\\u672c\\u624d\\u80fd\\u586b\\u8865\\u8fd9\\u4e2a\\u7a7a\\u7f3a\\uff0c\\u6b27\\u76df\\u5b9e\\u5728\\u662f\\u518d\\u5408\\u9002\\u4e0d\\u8fc7\\u7684\\u6536\\u5272\\u5bf9\\u8c61\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1264, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1265, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1266, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1267, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":{\"_csrf-backend\":\"k9kcy-FEjzBBLn6Yp_WmNX0Ga3mIw_AdN8a8CAmh-qihkl2gii7lQDIfHPXwgNxdG21ZPsG0u25RoNhYQ8CfxA==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7ec8\\u4e8e\\u8981\\u7ed3\\u675f\\u4e86\\uff1f\\u4fc4\\u65b9\\u7ed9\\u51fa\\u6700\\u65b0\\u65f6\\u95f4\\u8282\\u70b9\\uff0c\\u8054\\u5408\\u56fd\\u60f6\\u6050\\u4e0d\\u5b89\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81,\\u8054\\u5408\\u56fd\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\"\\u636e\\u5a92\\u4f532\\u67088\\u65e5\\u6d88\\u606f\\uff0c\\u5fb7\\u56fd\\u56fd\\u9632\\u90e8\\u65e5\\u524d\\u5728\\u5176\\u5b98\\u65b9\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u8ba1\\u5212\\u57283\\u6708\\u5e95\\u5c06\\u5fb7\\u56fd\\u201c\\u8c792A6\\u201d\\u5766\\u514b\\u4ea4\\u4ed8\\u7ed9\\u4e4c\\u6b66\\u88c5\\u90e8\\u961f\\u3002\\u636e\\u62a5\\u9053\\uff0c\\u4e4c\\u514b\\u5170\\u56fd\\u9632\\u90e8\\u957f\\u5217\\u5179\\u5c3c\\u79d1\\u592b\\u5f53\\u5730\\u65f6\\u95f47\\u65e5\\u5728\\u5176\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u5fb7\\u56fd\\u653f\\u5e9c\\u5df2\\u7ecf\\u51b3\\u5b9a\\u5411\\u4e4c\\u514b\\u5170\\u63d0\\u4f9b\\u201c\\u8c79-1\\u201d\\u5766\\u514b\\u3002\",\"content\":\"\\u636e\\u5a92\\u4f532\\u67088\\u65e5\\u6d88\\u606f\\uff0c\\u5fb7\\u56fd\\u56fd\\u9632\\u90e8\\u65e5\\u524d\\u5728\\u5176\\u5b98\\u65b9\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u8ba1\\u5212\\u57283\\u6708\\u5e95\\u5c06\\u5fb7\\u56fd\\u201c\\u8c792A6\\u201d\\u5766\\u514b\\u4ea4\\u4ed8\\u7ed9\\u4e4c\\u6b66\\u88c5\\u90e8\\u961f\\u3002\\u636e\\u62a5\\u9053\\uff0c\\u4e4c\\u514b\\u5170\\u56fd\\u9632\\u90e8\\u957f\\u5217\\u5179\\u5c3c\\u79d1\\u592b\\u5f53\\u5730\\u65f6\\u95f47\\u65e5\\u5728\\u5176\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u5fb7\\u56fd\\u653f\\u5e9c\\u5df2\\u7ecf\\u51b3\\u5b9a\\u5411\\u4e4c\\u514b\\u5170\\u63d0\\u4f9b\\u201c\\u8c79-1\\u201d\\u5766\\u514b\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1268, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1269, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1270, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1271, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":{\"_csrf-backend\":\"ESGKL_V28PuXYuXUsd0KlxLQWP8CbhCOLNFTpLkv3BMjastEnhyai-RTh7nmqHD_dLtquEsZW_1Ktzf08065fw==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7ec8\\u4e8e\\u8981\\u7ed3\\u675f\\u4e86\\uff1f\\u4fc4\\u65b9\\u7ed9\\u51fa\\u6700\\u65b0\\u65f6\\u95f4\\u8282\\u70b9\\uff0c\\u8054\\u5408\\u56fd\\u60f6\\u6050\\u4e0d\\u5b89\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81,\\u8054\\u5408\\u56fd\",\"is_show\":\"0\",\"is_allow_comment\":\"0\",\"sort_value\":\"100\",\"description\":\"\\u636e\\u5a92\\u4f532\\u67088\\u65e5\\u6d88\\u606f\\uff0c\\u5fb7\\u56fd\\u56fd\\u9632\\u90e8\\u65e5\\u524d\\u5728\\u5176\\u5b98\\u65b9\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u8ba1\\u5212\\u57283\\u6708\\u5e95\\u5c06\\u5fb7\\u56fd\\u201c\\u8c792A6\\u201d\\u5766\\u514b\\u4ea4\\u4ed8\\u7ed9\\u4e4c\\u6b66\\u88c5\\u90e8\\u961f\\u3002\\u636e\\u62a5\\u9053\\uff0c\\u4e4c\\u514b\\u5170\\u56fd\\u9632\\u90e8\\u957f\\u5217\\u5179\\u5c3c\\u79d1\\u592b\\u5f53\\u5730\\u65f6\\u95f47\\u65e5\\u5728\\u5176\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u5fb7\\u56fd\\u653f\\u5e9c\\u5df2\\u7ecf\\u51b3\\u5b9a\\u5411\\u4e4c\\u514b\\u5170\\u63d0\\u4f9b\\u201c\\u8c79-1\\u201d\\u5766\\u514b\\u3002\",\"content\":\"\\u5230\\u4eca\\u5e74\\u590f\\u5929\\uff0c\\u4e4c\\u514b\\u5170\\u5c06\\u670920\\u81f325\\u8f86\\u8fd9\\u79cd\\u5766\\u514b\\u3002\\u5230\\u4eca\\u5e74\\u5e74\\u5e95\\uff0c\\u5927\\u7ea6\\u670980\\u8f86\\u3002\\u52302024\\u5e74\\uff0c\\u5c06\\u6709\\u8d85\\u8fc7100\\u3002\\u6b64\\u5916\\uff0c\\u4e4c\\u514b\\u5170\\u8fd8\\u5c06\\u6536\\u523014\\u8f86\\u201c\\u8c792A6\\u201d\\u4e3b\\u6218\\u5766\\u514b\\u3002\\u9488\\u5bf9\\u897f\\u65b9\\u56fd\\u5bb6\\u4e0d\\u65ad\\u62f1\\u706b\\u6405\\u5c40\\uff0c\\u4fc4\\u7f57\\u65af\\u56fd\\u9632\\u90e8\\u957f\\u7ecd\\u4f0a\\u53e47\\u65e5\\u8868\\u793a\\uff0c\\u897f\\u65b9\\u56fd\\u5bb6\\u5411\\u4e4c\\u514b\\u5170\\u8fd0\\u9001\\u6b66\\u5668\\uff0c\\u5b9e\\u9645\\u4e0a\\u662f\\u5728\\u628a\\u5317\\u7ea6\\u62d6\\u5165\\u51b2\\u7a81\\u3002\\r\\n\\r\\n\\u4ed6\\u8b66\\u544a\\u79f0\\uff0c\\u8fd9\\u53ef\\u80fd\\u4f1a\\u5bfc\\u81f4\\u4e0d\\u53ef\\u9884\\u6d4b\\u7684\\u5347\\u7ea7\\u3002\\u6b64\\u5916\\uff0c\\u8f66\\u81e3\\u5171\\u548c\\u56fd\\u9886\\u5bfc\\u4eba\\u5361\\u5fb7\\u7f57\\u592b7\\u65e5\\u8868\\u793a\\uff0c\\u5230\\u4eca\\u5e74\\u5e74\\u5e95\\uff0c\\u7279\\u522b\\u519b\\u4e8b\\u884c\\u52a8\\u5c06\\u7ed3\\u675f\\u3002\\u6b27\\u6d32\\u56fd\\u5bb6\\u4f1a\\u8ba4\\u8bc6\\u5230\\u81ea\\u5df1\\u884c\\u4e3a\\u7684\\u9519\\u8bef\\uff0c\\u897f\\u65b9\\u4f1a\\u8dea\\u5730\\u6c42\\u9976\\uff0c\\u5e76\\u4e14\\u50cf\\u5f80\\u5e38\\u4e00\\u6837\\uff0c\\u6b27\\u6d32\\u56fd\\u5bb6\\u5c06\\u4e0d\\u5f97\\u4e0d\\u5728\\u6240\\u6709\\u9886\\u57df\\u4e0e\\u4fc4\\u7f57\\u65af\\u5408\\u4f5c\\u3002\\r\\n\\r\\n\\u503c\\u5f97\\u4e00\\u63d0\\u7684\\u662f\\u8054\\u5408\\u56fd\\u79d8\\u4e66\\u957f\\u53e4\\u7279\\u96f7\\u65af6\\u65e5\\u5728\\u8054\\u5927\\u53d1\\u8a00\\u8c08\\u5230\\u4fc4\\u4e4c\\u51b2\\u7a81\\u65f6\\u8868\\u793a\\uff0c\\u4fc4\\u4e4c\\u51b2\\u7a81\\u548c\\u5e73\\u524d\\u666f\\u8d8a\\u6765\\u8d8a\\u6e3a\\u832b\\uff0c\\u6211\\u62c5\\u5fc3\\u4e16\\u754c\\u4f1a\\u9677\\u5165\\u66f4\\u5927\\u8303\\u56f4\\u7684\\u6218\\u4e89\\u3002\\u53e4\\u7279\\u96f7\\u65af\\u79f0\\uff0c\\u5c40\\u52bf\\u8fdb\\u4e00\\u6b65\\u5347\\u7ea7\\u548c\\u6d41\\u8840\\u7684\\u53ef\\u80fd\\u6027\\u4e0d\\u65ad\\u589e\\u52a0\\uff0c\\u4e16\\u754c\\u9700\\u8981\\u9075\\u5b88\\u8054\\u5408\\u56fd\\u5baa\\u7ae0\\u548c\\u56fd\\u9645\\u6cd5\\u7684\\u548c\\u5e73\\u3002\\r\\n\\r\\n\\u53e4\\u7279\\u96f7\\u65af\\u540c\\u65f6\\u6307\\u51fa\\uff0c\\u62e5\\u6838\\u56fd\\u5bb6\\u5e94\\u907f\\u514d\\u9996\\u5148\\u4f7f\\u7528\\u6838\\u6b66\\u5668\\u3002\\u4ed6\\u5f3a\\u8c03\\uff0c\\u201c\\u6211\\u4eec\\u5904\\u4e8e\\u51e0\\u5341\\u5e74\\u6765\\u6838\\u6218\\u4e89\\u7206\\u53d1\\u98ce\\u9669\\u6700\\u4e25\\u91cd\\u7684\\u65f6\\u523b\\uff0c\\u4e0d\\u7ba1\\u7206\\u53d1\\u662f\\u6709\\u610f\\u8fd8\\u662f\\u610f\\u5916\\uff0c\\u6211\\u4eec\\u90fd\\u9700\\u8981\\u7ed3\\u675f\\u4e16\\u754c\\u5404\\u5730\\u6240\\u5b58\\u653e\\u76841.3\\u4e07\\u4ef6\\u6838\\u6b66\\u5668\\u6240\\u5e26\\u6765\\u7684\\u5a01\\u80c1\\u201d\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1272, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1273, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1274, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=9', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"9\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1275, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=9', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"9\"},\"POST\":{\"_csrf-backend\":\"27Zh2M5TnIcA5SpTZPdvWOUAMxf-18x-R9Zw7APymKvp_SCzpTn293PUSD4zghUwg2sBULeghw0hsBS8SZP9xw==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7b2c354\\u5929\\uff1a\\u4fc4\\u63d0\\u51fa\\u51c6\\u5907\\u8fdb\\u884c\\u65e0\\u6761\\u4ef6\\u8c08\\u5224\\uff0c\\u4fc4\\u79f0\\u5c06\\u4ece3\\u6708\\u51cf\\u4ea7\\u77f3\\u6cb9\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81,\\u6218\\u4e89\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7b2c354\\u5929\\uff1a\\u4fc4\\u63d0\\u51fa\\u51c6\\u5907\\u8fdb\\u884c\\u65e0\\u6761\\u4ef6\\u8c08\\u5224\\uff0c\\u4fc4\\u79f0\\u5c06\\u4ece3\\u6708\\u51cf\\u4ea7\\u77f3\\u6cb9\",\"content\":\"\\u5728\\u7ea2\\u5229\\u66fc\\u65b9\\u5411\\uff0c\\u4e2d\\u592e\\u96c6\\u7fa4\\u5728\\u5362\\u7518\\u65af\\u514b\\u5730\\u533a\\u5bf9\\u4e4c\\u519b\\u9020\\u6210\\u91cd\\u521b\\u300224\\u5c0f\\u65f6\\u5185\\uff0c\\u591a\\u8fbe120\\u540d\\u4e4c\\u519b\\u88ab\\u6d88\\u706d\\uff0c\\u4e00\\u8f86\\u6b65\\u5175\\u6218\\u8f66\\u3001\\u56db\\u8f86\\u88c5\\u7532\\u8f66\\u30011\\u8f86\\u2018\\u51b0\\u96f9\\u2019\\u591a\\u7ba1\\u706b\\u7bad\\u70ae\\u4ee5\\u53ca\\u4e24\\u95e8D-20\\u69b4\\u5f39\\u70ae\\u88ab\\u6467\\u6bc1\\u3002\\r\\n\\r\\n\\u5728\\u987f\\u6d85\\u8328\\u514b\\u65b9\\u5411\\uff0c\\u4e4c\\u519b24\\u5c0f\\u65f6\\u5185\\u635f\\u5931\\u4e86140\\u591a\\u4eba\\uff0c\\u53e6\\u67092\\u8f86\\u6b65\\u5175\\u6218\\u8f66\\u30016\\u8f86\\u6c7d\\u8f66\\u30012\\u95e8\\u7f8e\\u56fdM777\\u706b\\u70ae\\u3001\\u201c\\u8783\\u87f9\\u201d\\u81ea\\u884c\\u69b4\\u5f39\\u70ae\\u3001\\u201c\\u98ce\\u4fe1\\u5b50-B\\u201d\\u3001D-30\\u69b4\\u5f39\\u70ae\\u548c\\u7f8e\\u5236AN\\/TPQ-50\\u53cd\\u70ae\\u5175\\u96f7\\u8fbe\\u4ee5\\u53ca\\u4e09\\u4e2a\\u5f39\\u836f\\u5e93\\u88ab\\u6467\\u6bc1\\u3002\\r\\n\\r\\n\\u5728\\u987f\\u6d85\\u8328\\u514b\\u5357\\u90e8\\u65b9\\u5411\\uff0c\\u4e4c\\u519b\\u635f\\u593195\\u4eba\\uff0c4\\u8f86\\u5766\\u514b\\u30012\\u8f86\\u6b65\\u5175\\u6218\\u8f66\\u30012\\u8f86\\u6c7d\\u8f66\\uff0c\\u4ee5\\u53caM109\\u81ea\\u884c\\u706b\\u70ae\\uff0c3\\u95e8D-20\\u69b4\\u5f39\\u70ae\\u3001\\u4e00\\u95e8\\u201c\\u98ce\\u4fe1\\u5b50-B\\u201d\\u69b4\\u5f39\\u70ae\\u548c\\u4e09\\u5ea7\\u5f39\\u836f\\u5e93\\u88ab\\u6467\\u6bc1\\u3002\\r\\n\\r\\n\\u5728\\u8d6b\\u5c14\\u677e\\u65b9\\u5411\\uff0c\\u4e24\\u95e8\\u201cMSTA-B\\u201d\\u548cD-30\\u69b4\\u5f39\\u70ae\\u88ab\\u6467\\u6bc1\\uff0c\\u4e4c\\u519b\\u5f39\\u836f\\u5e93\\u88ab\\u51fb\\u4e2d\\u3002\\r\\n\\r\\n\\u4fc4\\u9646\\u519b\\u822a\\u7a7a\\u5175\\u3001\\u5bfc\\u5f39\\u90e8\\u961f\\u548c\\u70ae\\u5175\\u5bf9\\u4e4c\\u519b116\\u4e2a\\u4eba\\u5458\\u548c\\u519b\\u4e8b\\u88c5\\u5907\\u96c6\\u4e2d\\u533a\\u4ee5\\u53ca92\\u4e2a\\u70ae\\u5175\\u9635\\u5730\\u8fdb\\u884c\\u4e86\\u706b\\u529b\\u6253\\u51fb\\u3002\\r\\n\\r\\n\\u5728\\u5c3c\\u53e4\\u62c9\\u8036\\u592b\\u5dde\\uff0c\\u4e4c\\u519b\\u7684\\u4e00\\u5957S-300\\u9632\\u7a7a\\u5bfc\\u5f39\\u7cfb\\u7edf\\u96f7\\u8fbe\\u5236\\u5bfc\\u7ad9\\u88ab\\u6467\\u6bc1\\u3002\\r\\n\\r\\n\\u4fc4\\u9632\\u7a7a\\u7cfb\\u7edf\\u572824\\u5c0f\\u65f6\\u5185\\u6467\\u6bc1\\u4e86\\u5362\\u7518\\u65af\\u514b\\u3001\\u987f\\u6d85\\u8328\\u514b\\u3001\\u624e\\u6ce2\\u7f57\\u70ed\\u548c\\u8d6b\\u5c14\\u677e\\u5730\\u533a\\u768419\\u67b6\\u4e4c\\u519b\\u65e0\\u4eba\\u673a\\u3002\\r\\n\\r\\n\\u4e4c\\u514b\\u5170\\u56fd\\u9632\\u90e8\\u6218\\u62a5\\uff1a\\u5728\\u8fc7\\u53bb\\u768424\\u5c0f\\u65f6\\u91cc\\uff0c\\u4fc4\\u519b\\u5171\\u635f\\u59319\\u8f86\\u5766\\u514b\\u30013\\u8f86\\u88c5\\u7532\\u8f66\\u300119\\u95e8\\u8eab\\u7ba1\\u706b\\u70ae\\u4e0e\\u706b\\u7bad\\u70ae\\u300161\\u679a\\u5de1\\u822a\\u5bfc\\u5f39\\u30011\\u5957\\u9632\\u7a7a\\u7cfb\\u7edf\\u30013\\u5957\\u7279\\u79cd\\u88c5\\u5907\\u300127\\u67b6\\u65e0\\u4eba\\u673a\\u30018\\u8f86\\u5404\\u578b\\u8f66\\u8f86\\u3001\\u4ee5\\u53ca\\u8d85\\u8fc71140\\u540d\\u519b\\u4eba\\u3002\\r\\n\\u4e4c\\u514b\\u5170\\u5371\\u673a\\u7684\\u7206\\u53d1\\uff0c\\u201c\\u975e\\u4e00\\u671d\\u4e00\\u5915\\u4e4b\\u6545\\uff0c\\u5176\\u6240\\u7531\\u6765\\u8005\\u6e10\\u77e3\\u201d\\u3002\\u8fd9\\u573a\\u5371\\u673a\\u662f\\u5404\\u79cd\\u56e0\\u7d20\\u7efc\\u5408\\u4f5c\\u7528\\u7684\\u7ed3\\u679c\\uff0c\\u4e5f\\u662f\\u591a\\u5e74\\u79ef\\u7d2f\\u77db\\u76fe\\u7684\\u7206\\u53d1\\uff0c\\u4f46\\u8981\\u8bba\\u8fd9\\u573a\\u5371\\u673a\\u7684\\u201c\\u59cb\\u4f5c\\u4fd1\\u8005\\u201d\\uff0c\\u7f8e\\u56fd\\u96be\\u9003\\u5176\\u548e\\u3002\\r\\n\\r\\n\\u3000\\u3000\\u5f15\\u53d1\\u4fc4\\u4e4c\\u51b2\\u7a81\\u6700\\u76f4\\u63a5\\u7684\\u539f\\u56e0\\uff0c\\u662f\\u7f8e\\u56fd\\u4e3b\\u5bfc\\u7684\\u5317\\u7ea6\\u4e0d\\u65ad\\u4e1c\\u6269\\uff0c\\u65e0\\u89c6\\u4fc4\\u7f57\\u65af\\u5728\\u5b89\\u5168\\u95ee\\u9898\\u4e0a\\u7684\\u5408\\u7406\\u5173\\u5207\\uff0c\\u4e00\\u518d\\u6311\\u6218\\u4fc4\\u6218\\u7565\\u5e95\\u7ebf\\u3002\\u7531\\u4e8e\\u81ea\\u8eab\\u7279\\u6b8a\\u7684\\u5730\\u7406\\u4f4d\\u7f6e\\u4ee5\\u53ca\\u4e0e\\u4fc4\\u7f57\\u65af\\u7684\\u5386\\u53f2\\u6587\\u5316\\u6e0a\\u6e90\\uff0c\\u4e4c\\u514b\\u5170\\u6210\\u4e3a\\u7f8e\\u56fd\\u904f\\u5236\\u4fc4\\u7f57\\u65af\\u7684\\u6709\\u529b\\u201c\\u6293\\u624b\\u201d\\uff0c\\u638c\\u63a7\\u4e86\\u4e4c\\u514b\\u5170\\u65e0\\u5f02\\u4e8e\\u904f\\u5236\\u4f4f\\u4e86\\u4fc4\\u7f57\\u65af\\u7684\\u201c\\u54bd\\u5589\\u201d\\u3002\\u5bf9\\u4fc4\\u7f57\\u65af\\u800c\\u8a00\\uff0c\\u5982\\u679c\\u4e4c\\u514b\\u5170\\u88ab\\u5b8c\\u5168\\u7eb3\\u5165\\u897f\\u65b9\\u9635\\u8425\\uff0c\\u5c06\\u76f4\\u63a5\\u5a01\\u80c1\\u5230\\u4fc4\\u5730\\u7f18\\u653f\\u6cbb\\u5b89\\u5168\\uff0c\\u8fd9\\u662f\\u4fc4\\u65e0\\u8bba\\u5982\\u4f55\\u90fd\\u4e0d\\u80fd\\u63a5\\u53d7\\u7684\\u3002\\u4fc4\\u7f57\\u65af\\u4e00\\u76f4\\u5bfb\\u6c42\\u5317\\u7ea6\\u4ee5\\u6cd5\\u5f8b\\u5f62\\u5f0f\\u4fdd\\u8bc1\\u4e0d\\u518d\\u4e1c\\u6269\\uff0c\\u7136\\u800c\\u59cb\\u7ec8\\u88ab\\u4ee5\\u7f8e\\u56fd\\u4e3a\\u9996\\u7684\\u5317\\u7ea6\\u65e0\\u89c6\\u3002\\u4fc4\\u7f57\\u65af\\u603b\\u7edf\\u666e\\u4eac\\u8bf4\\uff0c30\\u5e74\\u6765\\u4fc4\\u7f57\\u65af\\u4e00\\u76f4\\u8bd5\\u56fe\\u5c31\\u5317\\u7ea6\\u4e0d\\u4e1c\\u6269\\u8fbe\\u6210\\u534f\\u8bae\\uff0c\\u4f46\\u5374\\u53d7\\u5230\\u6b3a\\u9a97\\u3001\\u65bd\\u538b\\u548c\\u8bb9\\u8bc8\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1276, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1277, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1278, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1279, '', 1, '127.0.0.1', 'ym-article/update', '/yii2/backend/web/index.php?r=ym-article%2Fupdate&id=8', '{\"GET\":{\"r\":\"ym-article\\/update\",\"id\":\"8\"},\"POST\":{\"_csrf-backend\":\"6lkLaObWqc0IAtjPUhY26w5Tlo_KS5fl0A8ov9LAc7bYEkoDjbzDvXszuqIFY0yDaDikyIM83Ja2aUzvmKEW2g==\",\"title\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81\\u7ec8\\u4e8e\\u8981\\u7ed3\\u675f\\u4e86\\uff1f\\u4fc4\\u65b9\\u7ed9\\u51fa\\u6700\\u65b0\\u65f6\\u95f4\\u8282\\u70b9\\uff0c\\u8054\\u5408\\u56fd\\u60f6\\u6050\\u4e0d\\u5b89\",\"author\":\"admin\",\"source\":\"\\u5916\\u90e8\",\"keyword\":\"\\u4fc4\\u4e4c\\u51b2\\u7a81,\\u8054\\u5408\\u56fd\",\"is_show\":\"1\",\"is_allow_comment\":\"1\",\"sort_value\":\"100\",\"description\":\"\\u636e\\u5a92\\u4f532\\u67088\\u65e5\\u6d88\\u606f\\uff0c\\u5fb7\\u56fd\\u56fd\\u9632\\u90e8\\u65e5\\u524d\\u5728\\u5176\\u5b98\\u65b9\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u8ba1\\u5212\\u57283\\u6708\\u5e95\\u5c06\\u5fb7\\u56fd\\u201c\\u8c792A6\\u201d\\u5766\\u514b\\u4ea4\\u4ed8\\u7ed9\\u4e4c\\u6b66\\u88c5\\u90e8\\u961f\\u3002\\u636e\\u62a5\\u9053\\uff0c\\u4e4c\\u514b\\u5170\\u56fd\\u9632\\u90e8\\u957f\\u5217\\u5179\\u5c3c\\u79d1\\u592b\\u5f53\\u5730\\u65f6\\u95f47\\u65e5\\u5728\\u5176\\u793e\\u4ea4\\u5a92\\u4f53\\u8d26\\u53f7\\u4e0a\\u5ba3\\u5e03\\uff0c\\u5fb7\\u56fd\\u653f\\u5e9c\\u5df2\\u7ecf\\u51b3\\u5b9a\\u5411\\u4e4c\\u514b\\u5170\\u63d0\\u4f9b\\u201c\\u8c79-1\\u201d\\u5766\\u514b\\u3002\",\"content\":\"\\u5230\\u4eca\\u5e74\\u590f\\u5929\\uff0c\\u4e4c\\u514b\\u5170\\u5c06\\u670920\\u81f325\\u8f86\\u8fd9\\u79cd\\u5766\\u514b\\u3002\\u5230\\u4eca\\u5e74\\u5e74\\u5e95\\uff0c\\u5927\\u7ea6\\u670980\\u8f86\\u3002\\u52302024\\u5e74\\uff0c\\u5c06\\u6709\\u8d85\\u8fc7100\\u3002\\u6b64\\u5916\\uff0c\\u4e4c\\u514b\\u5170\\u8fd8\\u5c06\\u6536\\u523014\\u8f86\\u201c\\u8c792A6\\u201d\\u4e3b\\u6218\\u5766\\u514b\\u3002\\u9488\\u5bf9\\u897f\\u65b9\\u56fd\\u5bb6\\u4e0d\\u65ad\\u62f1\\u706b\\u6405\\u5c40\\uff0c\\u4fc4\\u7f57\\u65af\\u56fd\\u9632\\u90e8\\u957f\\u7ecd\\u4f0a\\u53e47\\u65e5\\u8868\\u793a\\uff0c\\u897f\\u65b9\\u56fd\\u5bb6\\u5411\\u4e4c\\u514b\\u5170\\u8fd0\\u9001\\u6b66\\u5668\\uff0c\\u5b9e\\u9645\\u4e0a\\u662f\\u5728\\u628a\\u5317\\u7ea6\\u62d6\\u5165\\u51b2\\u7a81\\u3002\\r\\n\\r\\n\\u4ed6\\u8b66\\u544a\\u79f0\\uff0c\\u8fd9\\u53ef\\u80fd\\u4f1a\\u5bfc\\u81f4\\u4e0d\\u53ef\\u9884\\u6d4b\\u7684\\u5347\\u7ea7\\u3002\\u6b64\\u5916\\uff0c\\u8f66\\u81e3\\u5171\\u548c\\u56fd\\u9886\\u5bfc\\u4eba\\u5361\\u5fb7\\u7f57\\u592b7\\u65e5\\u8868\\u793a\\uff0c\\u5230\\u4eca\\u5e74\\u5e74\\u5e95\\uff0c\\u7279\\u522b\\u519b\\u4e8b\\u884c\\u52a8\\u5c06\\u7ed3\\u675f\\u3002\\u6b27\\u6d32\\u56fd\\u5bb6\\u4f1a\\u8ba4\\u8bc6\\u5230\\u81ea\\u5df1\\u884c\\u4e3a\\u7684\\u9519\\u8bef\\uff0c\\u897f\\u65b9\\u4f1a\\u8dea\\u5730\\u6c42\\u9976\\uff0c\\u5e76\\u4e14\\u50cf\\u5f80\\u5e38\\u4e00\\u6837\\uff0c\\u6b27\\u6d32\\u56fd\\u5bb6\\u5c06\\u4e0d\\u5f97\\u4e0d\\u5728\\u6240\\u6709\\u9886\\u57df\\u4e0e\\u4fc4\\u7f57\\u65af\\u5408\\u4f5c\\u3002\\r\\n\\r\\n\\u503c\\u5f97\\u4e00\\u63d0\\u7684\\u662f\\u8054\\u5408\\u56fd\\u79d8\\u4e66\\u957f\\u53e4\\u7279\\u96f7\\u65af6\\u65e5\\u5728\\u8054\\u5927\\u53d1\\u8a00\\u8c08\\u5230\\u4fc4\\u4e4c\\u51b2\\u7a81\\u65f6\\u8868\\u793a\\uff0c\\u4fc4\\u4e4c\\u51b2\\u7a81\\u548c\\u5e73\\u524d\\u666f\\u8d8a\\u6765\\u8d8a\\u6e3a\\u832b\\uff0c\\u6211\\u62c5\\u5fc3\\u4e16\\u754c\\u4f1a\\u9677\\u5165\\u66f4\\u5927\\u8303\\u56f4\\u7684\\u6218\\u4e89\\u3002\\u53e4\\u7279\\u96f7\\u65af\\u79f0\\uff0c\\u5c40\\u52bf\\u8fdb\\u4e00\\u6b65\\u5347\\u7ea7\\u548c\\u6d41\\u8840\\u7684\\u53ef\\u80fd\\u6027\\u4e0d\\u65ad\\u589e\\u52a0\\uff0c\\u4e16\\u754c\\u9700\\u8981\\u9075\\u5b88\\u8054\\u5408\\u56fd\\u5baa\\u7ae0\\u548c\\u56fd\\u9645\\u6cd5\\u7684\\u548c\\u5e73\\u3002\\r\\n\\r\\n\\u53e4\\u7279\\u96f7\\u65af\\u540c\\u65f6\\u6307\\u51fa\\uff0c\\u62e5\\u6838\\u56fd\\u5bb6\\u5e94\\u907f\\u514d\\u9996\\u5148\\u4f7f\\u7528\\u6838\\u6b66\\u5668\\u3002\\u4ed6\\u5f3a\\u8c03\\uff0c\\u201c\\u6211\\u4eec\\u5904\\u4e8e\\u51e0\\u5341\\u5e74\\u6765\\u6838\\u6218\\u4e89\\u7206\\u53d1\\u98ce\\u9669\\u6700\\u4e25\\u91cd\\u7684\\u65f6\\u523b\\uff0c\\u4e0d\\u7ba1\\u7206\\u53d1\\u662f\\u6709\\u610f\\u8fd8\\u662f\\u610f\\u5916\\uff0c\\u6211\\u4eec\\u90fd\\u9700\\u8981\\u7ed3\\u675f\\u4e16\\u754c\\u5404\\u5730\\u6240\\u5b58\\u653e\\u76841.3\\u4e07\\u4ef6\\u6838\\u6b66\\u5668\\u6240\\u5e26\\u6765\\u7684\\u5a01\\u80c1\\u201d\\u3002\"}}', 'POST', 0);
INSERT INTO `ym_system_log` VALUES (1280, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex', '{\"GET\":{\"r\":\"ym-article\\/index\"},\"POST\":[]}', 'GET', 0);
INSERT INTO `ym_system_log` VALUES (1281, '', 1, '127.0.0.1', 'ym-article/index', '/yii2/backend/web/index.php?r=ym-article%2Findex&page=1&limit=10', '{\"GET\":{\"r\":\"ym-article\\/index\",\"page\":\"1\",\"limit\":\"10\"},\"POST\":[]}', 'GET', 0);

-- ----------------------------
-- Table structure for ym_todolist
-- ----------------------------
DROP TABLE IF EXISTS `ym_todolist`;
CREATE TABLE `ym_todolist`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL DEFAULT 0 COMMENT '创建人ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事项名称',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - 新建，1 - 已完成，2 - 已删除 ',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间，时间戳',
  `updated_at` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间，时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '待办事项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_todolist
-- ----------------------------
INSERT INTO `ym_todolist` VALUES (18, 20, 'layui升级到2.4.3', 1, 1540367333, 1540367380);
INSERT INTO `ym_todolist` VALUES (19, 20, '登录功能', 1, 1540367338, 1540367381);
INSERT INTO `ym_todolist` VALUES (20, 20, '权限管理功能', 1, 1540367342, 1540367382);
INSERT INTO `ym_todolist` VALUES (21, 20, '添加系统操作日志', 1, 1540367347, 1540367383);
INSERT INTO `ym_todolist` VALUES (22, 20, '菜单设置功能', 1, 1540367351, 1540367384);
INSERT INTO `ym_todolist` VALUES (23, 20, '系统设置功能', 1, 1540367356, 1541082972);
INSERT INTO `ym_todolist` VALUES (24, 20, '个人信息修改功能', 1, 1540367359, 1540367385);
INSERT INTO `ym_todolist` VALUES (25, 20, '权限节点验证功能', 1, 1540367363, 1540434292);
INSERT INTO `ym_todolist` VALUES (26, 20, '添加待办事项功能', 1, 1540367374, 1540367385);
INSERT INTO `ym_todolist` VALUES (27, 20, '文章管理功能', 1, 1541082993, 1541082994);
INSERT INTO `ym_todolist` VALUES (28, 20, '前台会员管理', 0, 1541083060, 1541083060);

-- ----------------------------
-- Table structure for ym_user_comment
-- ----------------------------
DROP TABLE IF EXISTS `ym_user_comment`;
CREATE TABLE `ym_user_comment`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论的ID索引',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者的名称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者的邮箱',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `created_at` int(11) NOT NULL COMMENT '评论时间',
  `status` smallint(6) NOT NULL COMMENT '评论状态是否可见',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_user_comment
-- ----------------------------
INSERT INTO `ym_user_comment` VALUES (1, 'admin', '2580496403@qq.com', '满江红真的不好看！！！！！！！！！！！！！！！！！！！！！！！！', 1674031628, 0);
INSERT INTO `ym_user_comment` VALUES (2, 'root', '1234567889@qq.com', '你在说些什么啊', 1674031628, 1);
INSERT INTO `ym_user_comment` VALUES (3, 'root', '1234567889@qq.com', '我是大聪明', 1674031700, 1);
INSERT INTO `ym_user_comment` VALUES (4, 'admin', '123456789@qq.com', '这是赋值的', 1674031628, 1);
INSERT INTO `ym_user_comment` VALUES (5, 'admin', '123456789@qq.com', '这是赋值的', 1674031628, 1);
INSERT INTO `ym_user_comment` VALUES (33, 'YangXin', '885114349@qq.com', 'adwadadadwawda', 1675259456, 1);
INSERT INTO `ym_user_comment` VALUES (32, 'YangXin', '885114349@qq.com', '我来看看你们在聊些什么', 1675232129, 1);
INSERT INTO `ym_user_comment` VALUES (31, 'admin', '2580496403@qq.com', '再看看不确定', 1675231942, 1);
INSERT INTO `ym_user_comment` VALUES (30, 'admin', '2580496403@qq.com', '我总感觉有问题', 1675231922, 1);
INSERT INTO `ym_user_comment` VALUES (29, 'admin', '2580496403@qq.com', '流浪地球是真的好看', 1675231883, 1);
INSERT INTO `ym_user_comment` VALUES (28, 'admin', '2580496403@qq.com', '流浪地球是真的好看', 1675231880, 1);
INSERT INTO `ym_user_comment` VALUES (27, 'admin', '2580496403@qq.com', '好怪啊', 1675231709, 1);
INSERT INTO `ym_user_comment` VALUES (26, 'admin', '2580496403@qq.com', '不会这么怪吧', 1675231694, 1);
INSERT INTO `ym_user_comment` VALUES (25, 'admin', '2580496403@qq.com', '让我再来看看吧', 1675231682, 1);
INSERT INTO `ym_user_comment` VALUES (23, 'admin', '123456789@qq.com', '不会吧，真有bug？', 1675231560, 1);
INSERT INTO `ym_user_comment` VALUES (24, 'admin', '2580496403@qq.com', '这下我再来看看', 1675231592, 1);
INSERT INTO `ym_user_comment` VALUES (34, 'admin', '2580496403@qq.com', '我觉得流浪地球2是真的好看，它极大地缩小了我们与全球顶尖科幻水平的距离，电影中有许多震撼人心的地方，是一部十分推荐看的电影。', 1675781508, 1);

-- ----------------------------
-- Table structure for ym_user_user
-- ----------------------------
DROP TABLE IF EXISTS `ym_user_user`;
CREATE TABLE `ym_user_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE,
  INDEX `username_2`(`username`, `email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ym_user_user
-- ----------------------------
INSERT INTO `ym_user_user` VALUES (1, 'admin', 'Iz6otklwwgZniAE8EXSZKVj1BPNwrg8A', '$2y$13$WD5tqVxLI7rUhJpkg8EWwOAB5pt0eFaHyO4shX5BFGb7KAcSVjQQi', '8Bc21gUHMJB846Q2XBJXButPUdX00ToC_1674985114', '2580496403@qq.com', 10, 1674031628, 1674985114, NULL);
INSERT INTO `ym_user_user` VALUES (12, 'YangXin', 'fEGuIvlREcQQv3Yo6rk-9sjIxA0j_a8I', '$2y$13$0x1yE27BvqV81f/Wk9j1n.q8AqbWZ33QCKw.OeGTBuOVJZMk.4i4y', NULL, '885114349@qq.com', 10, 1675232093, 1675232093, '2JwNE1C2-7VkCDfELGOnVIm8UbjczZN__1675232093');
INSERT INTO `ym_user_user` VALUES (13, 'guest', '5nLTj6UIfMCHGdo-t0Gcg34-luXHyt7u', '$2y$13$Jjh2imX9Nc2D721711qIu.nHle1LN74gA4MQ/Dr.6/3jdsmAUBqGu', NULL, '1233527890@qq.com', 10, 1675520598, 1675520598, '5am4krplgyPRp_7gCriWEH2Ir9ViO3To_1675520598');
INSERT INTO `ym_user_user` VALUES (14, 'wangyang', 'pDbPx_rQmxVu6mcdxeVJNcJxmjX-WYOL', '12345678', 'ojdWOsatFqH56hWPIJcwYCH2blX-Sx1n_1675530143', '2980496402@qq.com', 10, 1675530142, 1675587731, NULL);

SET FOREIGN_KEY_CHECKS = 1;
