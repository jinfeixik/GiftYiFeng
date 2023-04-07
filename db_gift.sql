/*
Navicat MySQL Data Transfer

Source Server         : students
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : db_gift

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-10-15 11:43:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_goods_detail_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_detail_info`;
CREATE TABLE `tb_goods_detail_info` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_price` double(20,1) DEFAULT NULL,
  `goods_discreable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_specifiction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsType_id` int(11) DEFAULT NULL,
  `goods_status` int(11) DEFAULT '0',
  `goods_time` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '2019-08-08',
  `goods_sales` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3947 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_detail_info
-- ----------------------------
INSERT INTO `tb_goods_detail_info` VALUES ('1', '鹿角小风扇', '69.0', '风扇多人享受，手持摇头二合一。5片羽叶型扇叶，风源不失柔和更强劲。强动力无刷电机，诠释静音出风的秘密。90°摇头送风，清凉每一个角落。内置2000mAh大容量电池，12小时持久续航。充电三小时，清凉一整天。逛街神器，随时随地享受清凉~', '货号：LWY003942名称：鹿角小风扇包装配件：手持风扇x1、旋转底座x1、USB充电线x1、说明书x1、彩盒x1额定电压：DC 5V-1A（MAX）充电时长：2-3小时可用时长：最高风速2小时-最低风速12小时', '1', '1', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('2', '天使之爱', '168.0', '天使的爱是纯洁的，天使的眼泪是璀璨的，像那几光年传来的光线，踏破艰险让我们看到它的耀眼，像我们之间的爱情，经得起时间和距离的考验', '名称：天使之爱内容：银饰项链一条材质：925银饰规格：链长40cm,尾链5cm,吊坠直径18mm包装：精美礼盒装定制提示：吊坠背面刻字定制，最多一个汉字或者两个字母，当天下午5点前的订单当天发货', '2', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('3', 'BeeFo小唱机', '399.0', '前卫唱机设计，小巧优雅，方正的调性，尽显品味；小体积也有好音乐，内置双3W全频喇叭，爆发每个音符的能量，全方位诠释立体音，实力演绎千百种曲风，尽享HiFi音质。多种功能于一身小唱机，唱响你的生活~', '货号：MLPW000001\r\n名称：小唱机内容：小唱机蓝牙音响、数据线、音频线、说明书、保修卡\r\n材质：ABS、PC、铝合金产品尺寸：128mm x128mm x42.8mm重量：432g', '3', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('4', '爱恋云端', '88.0', '幸福的云朵，无忧无虑的岁月，青春的爱恋，那么简单和单纯，就像这个闹钟，简约却实在。曾经的初恋的美好，就像飘在云端的感觉，空气中都充满棉花糖的味道。', '名称：爱恋云端内容：声控闹钟一个规格：122*79*35mm供电模式：锂电池usb充电材料：ABS塑料颜色：薄荷绿', '4', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('5', '一鹿有你', '158.0', '感谢有你，一鹿陪伴。', '名称：一鹿有你货号：LWY003910\r\n内容：银饰项链材质：925银、锆钻款式：项链款手链规格：36x13.5mm', '5', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('6', '时光沙漏', '699.0', '溯流而上，水中漫步的时光；光与影的结合，如梦似幻。时光沙漏为你开启颠覆想象的视觉盛宴。', '货号：LWY003920\r\n名称：时光沙漏额定功率：3W电压：220V\r\n产品尺寸：158mm x158mm x268mm', '6', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('7', '音乐枕趴趴熊（蓝牙版）', '158.0', '各位朋友好，我还是你们的好朋友趴趴熊~不过我是升级版本哦，蓝牙版趴趴熊，还是原来的的材质，还是超有爱的设计！但是每一次的改变都会让我的小主人您越来越开心，连接蓝牙，爱就开始传递在您耳边，白天、傍晚、夜里，我都十分愿意陪在您的身边给您带来最愉悦的享受哦！', '名称：趴趴熊音乐枕内容：蓝牙款趴趴熊一个功能：听歌充电时间：充电需2.5小时，充满可使用5小时以上哦材质：棉规格：70*36*23cm', '7', '1', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('8', '酷玩音乐台灯', '92.0', '可充电USB节能灯，触摸台灯音箱。新颖的外形及吊灯的设计，使得整个产品不管是家居还是办公，都会增添不少亮色气氛。全封闭灯罩及灯体设计，防尘，易清洁； 迷你音响，使得整个优雅环境增添音乐氛围~~在每个黑黑的夜晚里，TA都愿意陪伴着你，为你点亮一盏不灭的灯，为你献上一曲动听的音乐，伴你进入甜美的梦乡。', '名称：酷玩音乐台灯内容：USB台灯音响（附送3.5mm双向音源线）规格：25*9cm材质：塑料颜色：白色包装：礼盒装', '8', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('9', '爱的旋律', '88.0', '设计巧妙，每个零部件都经过精细车工制作。白色钢琴音乐盒清新淡雅，诗情画意。暗藏首饰格，在绒布台里面放上戒指，给TA一份意想不到的惊喜', '名称：爱的旋律内容：木质钢琴音乐盒一个机芯：精致韵升18音机芯材质：桦木音乐：天空之城尺寸：长14*宽12.3*高9.8cm包装盒尺寸:15.4*10.5*13cm', '9', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('10', '花儿朵朵开', '178.0', '转呀转，就真的遇见Mr.right ~花朵的旋转木马音乐盒，打开还有闪闪渐变的LED灯光~让黑夜瞬间从喧哗转成了宁静，在静谧的夜晚，与心爱的人一起漫步田间小道该是多么美好呢！', '名称：花儿朵朵开内容：旋转木马音乐盒材质：环保树脂 镀金工艺规格：大12*19cm   小 9*15.5cm机芯：韵声音乐：天空之城灯光：LED渐变颜色：粉色、米白包装：精美包装', '10', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('11', '四叶草之恋', '128.0', '幸运四叶草，幸运的你，送给心爱的她。', '名称：四叶草之恋货号：LWY003914\r\n内容：银饰项手链材质：925银款式：项链款手链规格：约20cm包装：精美彩纸包装', '11', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('12', '旋转潮戒', '128.0', '初见惊艳，再见倾心，我一生最美好的时光，就是遇见你。旋转戒指，承诺指尖，承接着关于爱情美好的意愿。', '名称：旋转潮戒货号：LWY003916\r\n材质：925银包装：精美彩纸包装', '12', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('13', '紧箍咒对戒', '128.0', '一生所爱，为一人；一万年太久，只争朝夕。', '名称：紧箍咒对戒货号：LWY003912\r\n内容：对戒一对材质：925银镀白金包装：精美彩纸包装', '13', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('14', '\r\n神烦狗', '98.0', '高品质神烦狗doge狗头抱枕，个性3D仿真设计，让你觉得这就是活生生的一头狗啊！在光棍节愚人节拿出来估计会让很多小伙伴都惊呆了哦~它不仅仅是外形创意独特，也是超级实用的靠枕呢，上班时间，看电视坐沙发时候，抱着我们家的神烦狗狗，舒适感又增添不少呀！数码印刷效果，毛绒外套还可拆洗抱枕清洁和长久使用，您，值得拥有~', '名称：神烦狗内容：3D狗头抱枕一个（平面印刷)材质：毛绒规格：宽50高60cm款式：秋田狗、哈士奇狗包装：麦克布收纳袋', '14', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('15', '猪年吉祥', '128.0', '可爱闪耀的萌猪生肖，为你闪耀开运，给你带来好运连连，事业步步高升！猪年行大运 ，萌猪守吉祥~', '名称：猪年吉祥\r\n内容：银饰手链/项链材质：925银、锆钻款式：手链款手链规格：周长约18cm包装：精美彩纸包装', '15', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('16', '车载净化小卫士', '169.0', '拥有灵动跑车的曲线机身，优美性感的尾部设计，清洁太阳能省电节能，智能操作模式随心换，双核负离子发生器，强效活性炭甲醛过滤层。', '商品货号：LWY003515名称：车载净化小卫士 内容：车载净化盒子一个（锂电池）材质：太阳能硅板和亚克力规格：15*18*4.5cm颜色：简约黑白附件：防滑垫、双口车载电源、毛刷、电源线、香片*2、说明书保修卡维护和保养：独创可清洁设计，定时除灰，可确保负氧离子的发射稳定长效。一星期内请至少连接电源使用一天以保护电池的寿命。包装：精美包装', '16', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('17', '猴爱你', '148.0', '萨诺猴音乐枕，是一款吉祥音乐枕。它戴着耳机，神情放松地聆听音乐，造型非常时尚。萨诺猴音乐枕配有高品质扬声器，面料摸起来柔软舒服。抱着它，感受它的柔软、聆听音乐的畅快吧！', '名称：猴爱你内容：猴子音乐枕一个规格：65*36*25cm、连接线长1.2m颜色：粉色、卡其色材料：三维中空PP棉重量：850g包装：麦克布收纳袋', '17', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('18', '爱的陪伴', '158.0', '智能只有能时时刻刻为人的需要而服务，那才有智能的意义，用智慧来陪伴您更好的家居生活，这就是伴睡灯的无限使命，让家因为这灯光而更加温馨美好', '名称：爱的陪伴内容:智能伴睡灯一个规格：直径170mm，高170mm功率：3W材质：ABS和硅胶亮度：0lm-500lm电池容量：2000mAh灯光颜色：多模式暖光包装：精美彩纸包装', '18', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('19', '生命能量', '198.0', '生命的能量从清晨开始，上班啦上课啦，轻轻开启开关，身边的空气转动起来，负离子不断传送给我们健康气息！办公室可以用上，在汽车上也可以用上，在家里睡觉时候更可以用上咯，健康的生活状态走起！而且还有4500毫安的移动电源功能哦，还有比这更方便的麽？赶紧拿一个回家吧', '名称：生命能量内容：净化空气充电器一个规格：高16.2cm、直径5.8cm充电时间：USB充4H、底座充约5H移动电源容量：4500毫安包装：精美包装', '19', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('20', '高清日光镜', '269.0', '小巧轻身材，化妆好光源，时尚设计，旅行出差，方便携带。', '货号：LWY003950\r\n名称：高清日光镜电池容量：2000mAH \r\n产品尺寸：201mm x77mm x320mm产品重量：约600g', '20', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('21', '檬檬的心情', '42.0', '想要清凉的夏季，就要檬檬的心情，这是个柠檬的加湿器，隔着屏幕都似乎闻到了柠檬酸酸的香气~~只要一颗柠檬，就能发现生活有多美！', '名称：檬檬的心情内容：加湿器一个规格：8x8x11.2CM颜色：湖蓝色、柠檬黄、青柠檬和活力橙水瓶容量：180ML喷雾量：30ML/小时功率：2W实用时间：7小时左右', '21', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('22', '小棉花洁面仪', '349.0', '棉花般的裸感净护，四大洁净模式，适合不同肌肤需求。匠心打造，用得起的黑科技，每个女生都值得拥有美好的自己~', '货号：LWY003949\r\n名称：小棉花洁面仪材质：主机：硅胶、ABS、PC 底座：ABS、PC\r\n电池容量：250mAH \r\n充电时长：2H待机时长：180天\r\n产品尺寸：201mm x77mm x320mm产品重量：约110g', '22', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('23', '小黄鸭液晶手绘板', '199.0', '整机圆润设计，保护宝宝娇嫩皮肤。随算随画让宝宝爱上涂鸦，奇思妙想源源不断~', '货号：LWY003948\r\n名称：小黄鸭液晶手绘板材质：柔性液晶屏幕、ABS外壳\r\n产品尺寸：8.5寸：231mm x144mm x5mm；10.5寸：266mm x184mm x9.8mm', '23', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('24', 'BeeFo停机坪', '399.0', '产自中国瓷都德化，每一只水杯都经由当地匠人手工烧制，品质如一。原创停机坪设计，精研细节，一坪多用，既是恒温杯垫，也是无线充电底座~水杯，也可以成为风景；充电，也要充满仪式感！', '货号：CHWA000001\r\n名称：停机坪内容：停机坪（含24w电源适配器），恒温水杯，杯盖，说明书，保修卡\r\n材质：德化白瓷、ABS、PC、铝合金产品尺寸：停机坪尺寸：Φ124mm H13mm;恒温水杯尺寸：Φ80-87mm H102mm水杯容积：430ml', '24', '0', '2019-8-15', '5');
INSERT INTO `tb_goods_detail_info` VALUES ('26', '天使之爱', '158.0', '天使的爱是纯洁的，天使的眼泪是璀璨的，像那几光年传来的光线，踏破艰险让我们看到它的耀眼，像我们之间的爱情，经得起时间和距离的考验', '名称：天使之爱内容：银饰项链一条材质：925银饰规格：链长40cm,尾链5cm,吊坠直径18mm包装：精美礼盒装定制提示：吊坠背面刻字定制，最多一个汉字或者两个字母，当天下午5点前的订单当天发货', '26', '0', '2019-08-16', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('27', 'BeeFo小唱机', '399.0', '前卫唱机设计，小巧优雅，方正的调性，尽显品味；小体积也有好音乐，内置双3W全频喇叭，爆发每个音符的能量，全方位诠释立体音，实力演绎千百种曲风，尽享HiFi音质。多种功能于一身小唱机，唱响你的生活~', '货号：MLPW000001\r\n名称：小唱机内容：小唱机蓝牙音响、数据线、音频线、说明书、保修卡\r\n材质：ABS、PC、铝合金产品尺寸：128mm x128mm x42.8mm重量：432g喇叭单元：双喇叭\r\n蓝牙版本：4.2连接方式：3.5MM音频插口，蓝牙连接\r\n电池容量：2000mAh输入电压：5V 1A输出功率：3W x2充电时间：约3h\r\n播放时间：约6h', '27', '0', '2019-08-15', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('28', '一鹿有你', '158.0', '感谢有你，一鹿陪伴。', '名称：一鹿有你货号：LWY003910\r\n内容：银饰项链材质：925银、锆钻款式：项链款手链规格：36x13.5mm包装：精美彩纸包装', '28', '0', '2019-08-15', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('29', '酷玩音乐台灯', '49.0', '可充电USB节能灯，触摸台灯音箱。新颖的外形及吊灯的设计，使得整个产品不管是家居还是办公，都会增添不少亮色气氛。全封闭灯罩及灯体设计，防尘，易清洁； 迷你音响，使得整个优雅环境增添音乐氛围~~在每个黑黑的夜晚里，TA都愿意陪伴着你，为你点亮一盏不灭的灯，为你献上一曲动听的音乐，伴你进入甜美的梦乡。', '名称：酷玩音乐台灯内容：USB台灯音响（附送3.5mm双向音源线）规格：25*9cm材质：塑料颜色：白色包装：礼盒装', '29', '0', '2019-08-15', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('106', '鹿角小风扇', '35.9', '一台风扇多人享受，手持摇头二合一。5片羽叶型扇叶，风源不失柔和更强劲。强动力无刷电机，诠释静音出风的秘密。90°摇头送风，清凉每一个角落。内置2000mAh大容量电池，12小时持久续航。充电三小时，清凉一整天。逛街神器，随时随地享受清凉~', '货号：LWY003961 名称：孕妇舒睡枕 面料材质：聚酯纤维 枕头重量：1.45KG 尺寸：140*60*13cm', '88', '0', '2019-08-12', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('107', '孕妇舒睡枕', '66.0', '孕妇专用睡枕，保证充足睡眠', '货号：LWY003961 名称：孕妇舒睡枕 面料材质：聚酯纤维 枕头重量：1.45KG 尺寸：140*60*13cm', '89', '0', '2019-08-12', '4');
INSERT INTO `tb_goods_detail_info` VALUES ('108', '孕妇舒睡枕', '39.9', '孕妇专用睡枕，保证充足睡眠', '货号：LWY003961 名称：孕妇舒睡枕 面料材质：聚酯纤维 枕头重量：1.45KG 尺寸：140*60*13cm', '90', '0', '2019-08-12', '2');
INSERT INTO `tb_goods_detail_info` VALUES ('109', '孕妇舒睡枕', '66.0', '孕妇专用睡枕，保证充足睡眠', '货号：LWY003961 名称：孕妇舒睡枕 面料材质：聚酯纤维 枕头重量：1.45KG 尺寸：140*60*13cm', '91', '1', '2019-08-12', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('110', 'BeeFo小唱机', '399.0', '前卫唱机设计，小巧优雅，方正的调性，尽显品味；小体积也有好音乐，内置双3W全频喇叭，爆发每个音符的能量，全方位诠释立体音，实力演绎千百种曲风，尽享HiFi音质。多种功能于一身小唱机，唱响你的生活~ ', '货号：MLPW000001 名称：小唱机 内容：小唱机蓝牙音响、数据线、音频线、说明书、保修卡 材质：ABS、PC、铝合金 产品尺寸：128mm x128mm x42.8mm 重量：432g 喇叭单元：双喇叭 蓝牙版本：4.2 连接方式：3.5MM音频插口，蓝牙连接 电池容量：2000mAh 输入电压：5V 1A 输出功率：3W x2 充电时间：约3h 播放时间：约6h', '92', '0', '2019-08-12', '2');
INSERT INTO `tb_goods_detail_info` VALUES ('127', '宝宝专用被子', '69.0', '宝宝专用杯子', '货号：LWY003942 名称：鹿角小风扇包装配件：手持风扇x1、旋转底座x1、USB充电线x1、说明书x1、彩盒x1 额定电压：DC 5V-1A（MAX）充电时长：2-3小时 可用时长：最高风速2小时-最低风速12小时 产品尺寸：105mm x273mm x70mm重量：248g 	1	0	2019-08-03	251', '99', '0', '2019-08-13', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('133', '鹿角风扇', '39.9', '一台风扇多人享受，手持摇头二合一。5片羽叶型扇叶，风源不失柔和更强劲。强动力无刷电机，诠释静音出风的秘密。90°摇头送风，清凉每一个角落。内置2000mAh大容量电池，12小时持久续航。充电三小时，清凉一整天。逛街神器，随时随地享受清凉~', '货号：LWY003942 名称：鹿角小风扇包装配件：手持风扇x1、旋转底座x1、USB充电线x1、说明书x1、彩盒x1 额定电压：DC 5V-1A（MAX）充电时长：2-3小时 可用时长：最高风速2小时-最低风速12小时 产品尺寸：105mm x273mm x70mm重量：248g 	1	0	2019-08-03	251', '146', '1', '2019-08-13', '6');
INSERT INTO `tb_goods_detail_info` VALUES ('154', 'BeeFo停机坪', '399.0', '产自中国瓷都德化，每一只水杯都经由当地匠人手工烧制，品质如一。原创停机坪设计，精研细节，一坪多用，既是恒温杯垫，也是无线充电底座~水杯，也可以成为风景；充电，也要充满仪式感！', '货号：CHWA000001 名称：停机坪 内容：停机坪（含24w电源适配器），恒温水杯，杯盖，说明书，保修卡 材质：德化白瓷、ABS、PC、铝合金 产品尺寸：停机坪尺寸：Φ124mm H13mm;恒温水杯尺寸：Φ80-87mm H102mm 水杯容积：430ml 重量：280g 输入电压：12V 2A 输出功率：10W(max) 加热功率：24W', '158', '0', '2019-08-15', '2');
INSERT INTO `tb_goods_detail_info` VALUES ('3943', '鹿角小风扇', '299.0', '一台风扇多人享受，手持摇头二合一。5片羽叶型扇叶，风源不失柔和更强劲。强动力无刷电机，诠释静音出风的秘密。90°摇头送风，清凉每一个角落。内置2000mAh大容量电池，12小时持久续航。充电三小时，清凉一整天。逛街神器，随时随地享受清凉~', '货号：LWY003942 名称：鹿角小风扇包装配件：手持风扇x1、旋转底座x1、USB充电线x1、说明书x1、彩盒x1 额定电压：DC 5V-1A（MAX）充电时长：2-3小时 可用时长：最高风速2小时-最低风速12小时 产品尺寸：105mm x273mm x70mm重量：248g 	1	0	2019-08-03	251', '163', '0', '2019-08-16', '0');
INSERT INTO `tb_goods_detail_info` VALUES ('3946', '萌宠化妆镜', '138.0', ' 每个女孩的心中都住着一个没有长大的自己，她会和童话里的小狐狸对话，养着自己的小兔子，遇到自己的小王子，过上幸福的日子 ', '名称：萌宠化妆镜  内容：多功能收纳化妆镜一个  材质：ABS/玻璃  规格：狐狸款 192*244*129mm,兔子款192*219*146mm  使用时长：充电2.5小时，使用约5小时  产品配件：USB充电线、三倍放大镜（豪华版专有）、使用说明书', '165', '0', '2019-08-16', '0');

-- ----------------------------
-- Table structure for tb_goods_image_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_image_info`;
CREATE TABLE `tb_goods_image_info` (
  `goodsImage_id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsImage_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`goodsImage_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品图片表';

-- ----------------------------
-- Records of tb_goods_image_info
-- ----------------------------
INSERT INTO `tb_goods_image_info` VALUES ('1', 'http://img4.liwuyou.com/images/201904/source_img/3942_P_1555062175248.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('2', 'http://img2.liwuyou.com/images/201904/source_img/3942_P_1555062173731.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('3', 'http://img4.liwuyou.com/images/201611/source_img/3761_P_1479115731458.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('4', 'http://img2.liwuyou.com/images/201611/source_img/3761_P_1479716447331.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('5', 'http://img3.liwuyou.com/images/201811/source_img/3888_P_1541475290472.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('6', 'http://img2.liwuyou.com/images/201904/source_img/3888_P_1554203290271.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('7', 'http://img4.liwuyou.com/images/201704/source_img/3805_P_1492160170683.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('8', 'http://img4.liwuyou.com/images/201901/source_img/3910_P_1547522788683.png!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('9', 'http://img4.liwuyou.com/images/201901/source_img/3910_P_1547522806573.png!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('10', 'http://img2.liwuyou.com/images/201908/source_img/3920_P_1564736269621.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('11', 'http://img2.liwuyou.com/images/201901/source_img/3920_P_1548127516986.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('12', 'http://img5.liwuyou.com/images/201611/source_img/3417_P_1479905467784.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('13', 'http://img5.liwuyou.com/images/201611/source_img/3417_P_1479905467224.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('14', 'http://img1.liwuyou.com/images/201611/source_img/2729_P_1479887651700.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('15', 'http://img1.liwuyou.com/images/201608/source_img/2729_P_1472623252980.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('16', 'http://img5.liwuyou.com/images/201609/source_img/436_P_1473070850374.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('17', 'http://img1.liwuyou.com/images/201609/source_img/436_P_1475207321125.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('18', 'http://img2.liwuyou.com/images/201609/source_img/3367_P_1473748689466.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('19', 'http://img1.liwuyou.com/images/201901/source_img/3914_P_1547619785120.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('20', 'http://img1.liwuyou.com/images/201901/source_img/3914_P_1547619767180.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('21', 'http://img2.liwuyou.com/images/201901/source_img/3912_P_1547609152951.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('22', 'http://img3.liwuyou.com/images/201901/source_img/3912_P_1547609173097.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('23', 'http://img4.liwuyou.com/images/201901/source_img/3912_P_1547609173718.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('24', 'http://img3.liwuyou.com/images/201901/source_img/3912_P_1547609173097.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('25', 'http://img4.liwuyou.com/images/201502/source_img/3579_P_1423449559023.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('26', 'http://img2.liwuyou.com/images/201704/source_img/3579_P_1491985160561.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('27', 'http://img1.liwuyou.com/images/201901/source_img/3909_P_1547435239880.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('28', 'http://img4.liwuyou.com/images/201901/source_img/3909_P_1547435239743.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('29', 'http://img2.liwuyou.com/images/201411/source_img/3515_P_1415932792231.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('30', 'http://img3.liwuyou.com/images/201709/source_img/3515_P_1506765752387.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('31', 'http://img3.liwuyou.com/images/201803/source_img/3743_P_1521190457432.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('32', 'http://img5.liwuyou.com/images/201803/source_img/3743_P_1521190459299.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('33', 'http://img5.liwuyou.com/images/201701/source_img/3795_P_1484801780514.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('34', 'http://img2.liwuyou.com/images/201701/source_img/3795_P_1484800562556.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('35', 'http://img3.liwuyou.com/images/201608/source_img/3475_P_1472611704602.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('36', 'http://img5.liwuyou.com/images/201905/source_img/3950_P_1558577567134.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('37', 'http://img4.liwuyou.com/images/201905/source_img/3950_P_1558577538598.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('38', 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880590345.JPG!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('39', 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880529370.JPG!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('40', 'http://img3.liwuyou.com/images/201905/source_img/3949_P_1558594332487.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('41', 'http://img5.liwuyou.com/images/201905/source_img/3949_P_1558594329829.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('42', 'http://img1.liwuyou.com/images/201905/source_img/3948_P_1558511338605.png!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('43', 'http://img3.liwuyou.com/images/201812/source_img/3889_P_1545890468782.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('46', 'http://img4.liwuyou.com/images/201611/source_img/3761_P_1479115731458.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('47', 'http://img2.liwuyou.com/images/201611/source_img/3761_P_1479716447331.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('48', 'http://img3.liwuyou.com/images/201811/source_img/3888_P_1541475290472.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('49', 'http://img2.liwuyou.com/images/201904/source_img/3888_P_1554203290271.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('50', 'http://img4.liwuyou.com/images/201901/source_img/3910_P_1547522788683.png!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('51', 'http://img4.liwuyou.com/images/201901/source_img/3910_P_1547522806573.png!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('52', 'http://img1.liwuyou.com/images/201611/source_img/2729_P_1479887651700.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('53', 'http://img4.liwuyou.com/images/201611/source_img/2729_P_1479887666288.jpg!pro500.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('350', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/12/1565594110669.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('351', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/12/1565594110717.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('352', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/12/1565594110699.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('354', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('355', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('365', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('366', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('367', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('368', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('369', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('370', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('371', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('376', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('377', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('381', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('382', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('383', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('387', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('388', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('389', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('390', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('391', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('392', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('393', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('394', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('395', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('396', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('397', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('398', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('399', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('401', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('405', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('407', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('408', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('419', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/13/1565667223638.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('420', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/13/1565667223670.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('421', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('422', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('423', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('424', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png');
INSERT INTO `tb_goods_image_info` VALUES ('431', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/15/1565832081163.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('432', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/15/1565832081197.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('451', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/15/1565871340676.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('452', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/15/1565871338755.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('455', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/16/1565920114698.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('456', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/16/1565920114658.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('459', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/16/1565946408431.jpg');
INSERT INTO `tb_goods_image_info` VALUES ('460', 'http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/16/1565946408407.jpg');

-- ----------------------------
-- Table structure for tb_goods_style_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_style_info`;
CREATE TABLE `tb_goods_style_info` (
  `goodsStyle_id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsStyle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsStyle_stock` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goodsImage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goodsStyle_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品样式表';

-- ----------------------------
-- Records of tb_goods_style_info
-- ----------------------------
INSERT INTO `tb_goods_style_info` VALUES ('1', '小麋鹿款', '234', '1', '1');
INSERT INTO `tb_goods_style_info` VALUES ('2', '小白熊款', '500', '1', '2');
INSERT INTO `tb_goods_style_info` VALUES ('3', '普通款', '600', '2', '3');
INSERT INTO `tb_goods_style_info` VALUES ('4', '创意款', '23', '2', '4');
INSERT INTO `tb_goods_style_info` VALUES ('5', '奶酪白', '300', '3', '5');
INSERT INTO `tb_goods_style_info` VALUES ('6', '薄樱粉', '300', '4', '6');
INSERT INTO `tb_goods_style_info` VALUES ('7', '薄荷绿', '100', '4', '7');
INSERT INTO `tb_goods_style_info` VALUES ('8', '白色款', '50', '5', '8');
INSERT INTO `tb_goods_style_info` VALUES ('9', '粉色款', '50', '5', '9');
INSERT INTO `tb_goods_style_info` VALUES ('10', '风水版', '100', '6', '10');
INSERT INTO `tb_goods_style_info` VALUES ('11', '豪华版', '100', '6', '11');
INSERT INTO `tb_goods_style_info` VALUES ('12', '蓝牙波波熊', '200', '7', '12');
INSERT INTO `tb_goods_style_info` VALUES ('13', '蓝牙心动熊', '200', '7', '13');
INSERT INTO `tb_goods_style_info` VALUES ('14', '普通款', '900', '8', '14');
INSERT INTO `tb_goods_style_info` VALUES ('15', '蓝牙款', '600', '8', '15');
INSERT INTO `tb_goods_style_info` VALUES ('16', '普通款', '900', '9', '16');
INSERT INTO `tb_goods_style_info` VALUES ('17', '高定款', '800', '9', '17');
INSERT INTO `tb_goods_style_info` VALUES ('18', '粉色镀银款', '300', '10', '18');
INSERT INTO `tb_goods_style_info` VALUES ('19', '普通款', '300', '11', '19');
INSERT INTO `tb_goods_style_info` VALUES ('20', '高定款', '230', '11', '20');
INSERT INTO `tb_goods_style_info` VALUES ('21', '普通款', '240', '12', '21');
INSERT INTO `tb_goods_style_info` VALUES ('22', '高定款', '520', '12', '22');
INSERT INTO `tb_goods_style_info` VALUES ('23', '普通款', '120', '13', '23');
INSERT INTO `tb_goods_style_info` VALUES ('24', '高定款', '340', '13', '24');
INSERT INTO `tb_goods_style_info` VALUES ('25', '秋田款', '230', '14', '25');
INSERT INTO `tb_goods_style_info` VALUES ('26', '哈士奇款', '380', '14', '26');
INSERT INTO `tb_goods_style_info` VALUES ('27', '招财猪', '450', '15', '27');
INSERT INTO `tb_goods_style_info` VALUES ('28', '进宝猪', '670', '15', '28');
INSERT INTO `tb_goods_style_info` VALUES ('29', '普通款', '230', '16', '29');
INSERT INTO `tb_goods_style_info` VALUES ('30', '高定款', '450', '16', '30');
INSERT INTO `tb_goods_style_info` VALUES ('31', '棕色款', '230', '17', '31');
INSERT INTO `tb_goods_style_info` VALUES ('32', '粉色款', '340', '17', '32');
INSERT INTO `tb_goods_style_info` VALUES ('33', '普通款', '670', '18', '33');
INSERT INTO `tb_goods_style_info` VALUES ('34', '高定款', '560', '18', '34');
INSERT INTO `tb_goods_style_info` VALUES ('35', '白色款', '100', '19', '35');
INSERT INTO `tb_goods_style_info` VALUES ('36', '少女粉', '200', '20', '36');
INSERT INTO `tb_goods_style_info` VALUES ('37', '极简白', '200', '20', '37');
INSERT INTO `tb_goods_style_info` VALUES ('38', '柠檬黄', '100', '21', '38');
INSERT INTO `tb_goods_style_info` VALUES ('39', '青柠色', '100', '21', '39');
INSERT INTO `tb_goods_style_info` VALUES ('40', '棉花白', '200', '22', '40');
INSERT INTO `tb_goods_style_info` VALUES ('41', '蜜桃粉', '200', '22', '41');
INSERT INTO `tb_goods_style_info` VALUES ('42', '8.5寸', '100', '23', '42');
INSERT INTO `tb_goods_style_info` VALUES ('43', '停机坪', '100', '24', '43');
INSERT INTO `tb_goods_style_info` VALUES ('46', '普通款', '430', '26', '46');
INSERT INTO `tb_goods_style_info` VALUES ('47', '高定款', '908', '26', '47');
INSERT INTO `tb_goods_style_info` VALUES ('48', '奶酪白', '768', '27', '48');
INSERT INTO `tb_goods_style_info` VALUES ('49', '薄樱粉', '430', '27', '49');
INSERT INTO `tb_goods_style_info` VALUES ('50', '白色款', '320', '28', '50');
INSERT INTO `tb_goods_style_info` VALUES ('51', '粉色款', '90', '28', '51');
INSERT INTO `tb_goods_style_info` VALUES ('52', '普通款', '450', '29', '52');
INSERT INTO `tb_goods_style_info` VALUES ('53', '蓝牙款', '430', '29', '53');
INSERT INTO `tb_goods_style_info` VALUES ('340', '小白熊款', '300', '106', '350');
INSERT INTO `tb_goods_style_info` VALUES ('341', '小粉红款', '300', '106', '351');
INSERT INTO `tb_goods_style_info` VALUES ('342', '小恶魔款', '300', '106', '352');
INSERT INTO `tb_goods_style_info` VALUES ('351', '梦幻粉紫', '296', '107', '354');
INSERT INTO `tb_goods_style_info` VALUES ('352', '蓝白格', '300', '107', '355');
INSERT INTO `tb_goods_style_info` VALUES ('364', '梦幻粉紫', '298', '108', '405');
INSERT INTO `tb_goods_style_info` VALUES ('365', '蓝白格', '300', '108', '366');
INSERT INTO `tb_goods_style_info` VALUES ('366', '梦幻粉紫', '300', '109', '367');
INSERT INTO `tb_goods_style_info` VALUES ('367', '蓝白格', '300', '109', '368');
INSERT INTO `tb_goods_style_info` VALUES ('369', '奶酪白', '300', '110', '369');
INSERT INTO `tb_goods_style_info` VALUES ('370', '薄樱粉', '298', '110', '370');
INSERT INTO `tb_goods_style_info` VALUES ('371', '天真蓝', '547', '110', '371');
INSERT INTO `tb_goods_style_info` VALUES ('399', '直接购买', '234', '127', '407');
INSERT INTO `tb_goods_style_info` VALUES ('400', '个性定制', '235', '127', '408');
INSERT INTO `tb_goods_style_info` VALUES ('412', '小白熊款', '234', '133', '419');
INSERT INTO `tb_goods_style_info` VALUES ('413', '小恶魔款', '666', '133', '424');
INSERT INTO `tb_goods_style_info` VALUES ('429', '小白熊款', '666', '141', '431');
INSERT INTO `tb_goods_style_info` VALUES ('430', '小恶魔款', '666', '141', '432');
INSERT INTO `tb_goods_style_info` VALUES ('457', 'beefo停机坪 个性定制', '454', '154', '451');
INSERT INTO `tb_goods_style_info` VALUES ('458', 'beefo 停机坪 直接购买', '345', '154', '452');
INSERT INTO `tb_goods_style_info` VALUES ('461', '小恶魔款', '235', '3943', '455');
INSERT INTO `tb_goods_style_info` VALUES ('462', '小白熊款', '234', '3943', '456');
INSERT INTO `tb_goods_style_info` VALUES ('465', '狐狸蓝', '200', '3946', '459');
INSERT INTO `tb_goods_style_info` VALUES ('466', '兔子粉', '200', '3946', '460');

-- ----------------------------
-- Table structure for tb_goods_type_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_type_info`;
CREATE TABLE `tb_goods_type_info` (
  `goodsType_id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType_occation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsType_price` varchar(255) DEFAULT NULL,
  `goodsType_object` varchar(255) DEFAULT NULL,
  `goodsType_classify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsType_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_type_info
-- ----------------------------
INSERT INTO `tb_goods_type_info` VALUES ('1', '纪念日', '1', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('2', '生日', '2', '父亲', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('3', '表白', '4', '母亲', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('4', '表白', '1', '闺蜜', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('5', '生日', '2', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('6', '纪念日', '5', '朋友', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('7', '纪念日', '2', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('8', '生日', '1', '闺蜜', '潮人');
INSERT INTO `tb_goods_type_info` VALUES ('9', '生日', '1', '老师', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('10', '晋升', '2', '朋友', '运动');
INSERT INTO `tb_goods_type_info` VALUES ('11', '生日', '2', '闺蜜', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('12', '其他', '2', '长辈', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('13', '毕业', '2', '其他', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('14', '生日', '1', '闺蜜', '其他');
INSERT INTO `tb_goods_type_info` VALUES ('15', '毕业', '2', '老师', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('16', '生日', '2', '闺蜜', '潮人');
INSERT INTO `tb_goods_type_info` VALUES ('17', '表白', '2', '其他', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('18', '其他', '2', '朋友', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('19', '晋升', '2', '老师', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('20', '表白', '3', '朋友', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('21', '生日', '1', '长辈', '运动');
INSERT INTO `tb_goods_type_info` VALUES ('22', '毕业', '4', '长辈', '其他');
INSERT INTO `tb_goods_type_info` VALUES ('23', '纪念日', '2', '朋友', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('24', '生日', '4', '闺蜜', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('26', '纪念日', '2                 ', '晚辈', '运动');
INSERT INTO `tb_goods_type_info` VALUES ('27', '表白', '4', '闺密', '养生');
INSERT INTO `tb_goods_type_info` VALUES ('28', '纪念日', '2', '朋友', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('29', '表白', '1', '晚辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('88', '其他', '1', '晚辈', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('89', '其他', '1', '晚辈', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('90', '表白', '1', '朋友', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('91', '生日', '1', '朋友', '其他');
INSERT INTO `tb_goods_type_info` VALUES ('92', '纪念日', '4', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('99', '纪念日', '1', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('146', '表白', '1', '晚辈', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('158', '纪念日', '4', '长辈', '浪漫');
INSERT INTO `tb_goods_type_info` VALUES ('163', '其他', '3', '晚辈', '创意');
INSERT INTO `tb_goods_type_info` VALUES ('165', '纪念日', '2', '长辈', '养生');

-- ----------------------------
-- Table structure for tb_my_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_collect`;
CREATE TABLE `tb_my_collect` (
  `myCollect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`myCollect_id`) USING BTREE,
  KEY `mc_ui_id` (`user_id`) USING BTREE,
  KEY `mc_gsi_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='我的收藏表';

-- ----------------------------
-- Records of tb_my_collect
-- ----------------------------
INSERT INTO `tb_my_collect` VALUES ('24', '1', '88');
INSERT INTO `tb_my_collect` VALUES ('25', '43', '88');
INSERT INTO `tb_my_collect` VALUES ('27', '45', '88');
INSERT INTO `tb_my_collect` VALUES ('36', '43', '88');
INSERT INTO `tb_my_collect` VALUES ('38', '34', '1');
INSERT INTO `tb_my_collect` VALUES ('39', '43', '25');
INSERT INTO `tb_my_collect` VALUES ('40', '1', '2');
INSERT INTO `tb_my_collect` VALUES ('43', '45', '26');
INSERT INTO `tb_my_collect` VALUES ('44', '45', '28');

-- ----------------------------
-- Table structure for tb_order_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_info`;
CREATE TABLE `tb_order_info` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_distrabutionMethod` int(255) DEFAULT NULL,
  `order_orderNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_payOrderNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_amount` double(20,2) DEFAULT NULL,
  `order_goodsNumber` int(11) DEFAULT NULL,
  `order_orderTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsStyle_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  KEY `oi_gsi_id` (`goodsStyle_id`) USING BTREE,
  KEY `oi_uai_id` (`address_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表\r\norder_distrabutionMethod:表示配送方式（0：表示同城配送；1：表示物流配送）\r\norder_status表示订单状态(0:表示未完成；1:表示已完成）';

-- ----------------------------
-- Records of tb_order_info
-- ----------------------------
INSERT INTO `tb_order_info` VALUES ('49', '0', '351565600041962', null, '119.70', '2', '2019-08-12 16:54:01', '351', '82', '34', '0');
INSERT INTO `tb_order_info` VALUES ('50', '0', '351565600041962', null, '119.70', '1', '2019-08-12 16:54:01', '337', '82', '34', '0');
INSERT INTO `tb_order_info` VALUES ('279', '0', '411565773025360', null, '120.00', '1', '2019-08-14 16:57:05', '338', '83', '43', '0');
INSERT INTO `tb_order_info` VALUES ('298', '0', '921565778076296', null, '155.90', '2', '2019-08-14 18:21:16', '338', '83', '43', '0');
INSERT INTO `tb_order_info` VALUES ('299', '0', '921565778076296', null, '155.90', '2', '2019-08-14 18:21:16', '340', '83', '43', '0');
INSERT INTO `tb_order_info` VALUES ('304', '0', '011565835387939', null, '429.00', '2', '2019-08-15 10:16:27', '370', '84', '43', '0');
INSERT INTO `tb_order_info` VALUES ('305', '0', '011565835387939', null, '429.00', '2', '2019-08-15 10:16:27', '338', '84', '43', '0');
INSERT INTO `tb_order_info` VALUES ('308', '0', '361565836246557', null, '429.00', '2', '2019-08-15 10:30:46', '370', '84', '43', '1');
INSERT INTO `tb_order_info` VALUES ('309', '0', '361565836246557', null, '429.00', '2', '2019-08-15 10:30:46', '338', '84', '43', '1');
INSERT INTO `tb_order_info` VALUES ('319', '0', '451565849812153', null, '39.80', '1', '2019-08-15 14:16:52', '405', '82', '34', '0');
INSERT INTO `tb_order_info` VALUES ('320', '0', '531565849791053', null, '39.80', '1', '2019-08-15 14:17:31', '405', '82', '34', '0');
INSERT INTO `tb_order_info` VALUES ('321', '0', '011565851539874', null, '429.00', '2', '2019-08-15 14:45:39', '370', '86', '43', '0');
INSERT INTO `tb_order_info` VALUES ('322', '0', '011565851539874', null, '429.00', '2', '2019-08-15 14:45:39', '338', '86', '43', '0');
INSERT INTO `tb_order_info` VALUES ('323', '0', '831565860127790', null, '39.80', '1', '2019-08-15 17:08:47', '405', '82', '34', '1');
INSERT INTO `tb_order_info` VALUES ('324', '0', '121565863769383', null, '429.00', '2', '2019-08-15 18:09:29', '370', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('325', '0', '121565863769383', null, '429.00', '2', '2019-08-15 18:09:29', '338', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('326', '0', '951565879242249', null, '459.00', '3', '2019-08-15 22:27:22', '370', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('327', '0', '951565879242249', null, '459.00', '3', '2019-08-15 22:27:22', '338', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('328', '0', '951565879242249', null, '459.00', '3', '2019-08-15 22:27:22', '337', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('329', '0', '811565920840640', null, '243.80', '4', '2019-08-16 10:00:40', '405', '102', '34', '0');
INSERT INTO `tb_order_info` VALUES ('330', '0', '811565920840640', null, '243.80', '4', '2019-08-16 10:00:40', '351', '102', '34', '0');
INSERT INTO `tb_order_info` VALUES ('331', '0', '811565920840640', null, '243.80', '4', '2019-08-16 10:00:40', '399', '102', '34', '0');
INSERT INTO `tb_order_info` VALUES ('332', '0', '811565920840640', null, '243.80', '4', '2019-08-16 10:00:40', '399', '102', '34', '0');
INSERT INTO `tb_order_info` VALUES ('333', '0', '971565922002967', null, '896.00', '4', '2019-08-16 10:20:02', '370', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('334', '0', '971565922002967', null, '896.00', '4', '2019-08-16 10:20:02', '338', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('335', '0', '971565922002967', null, '896.00', '4', '2019-08-16 10:20:02', '48', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('336', '0', '971565922002967', null, '896.00', '4', '2019-08-16 10:20:02', '44', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('337', '0', '781565922051254', null, '896.00', '4', '2019-08-16 10:20:51', '370', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('338', '0', '781565922051254', null, '896.00', '4', '2019-08-16 10:20:51', '338', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('339', '0', '781565922051254', null, '896.00', '4', '2019-08-16 10:20:51', '48', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('340', '0', '781565922051254', null, '896.00', '4', '2019-08-16 10:20:51', '44', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('341', '0', '931565922288380', null, '896.00', '4', '2019-08-16 10:24:48', '370', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('342', '0', '931565922288380', null, '896.00', '4', '2019-08-16 10:24:48', '338', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('343', '0', '931565922288380', null, '896.00', '4', '2019-08-16 10:24:48', '48', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('344', '0', '931565922288380', null, '896.00', '4', '2019-08-16 10:24:48', '44', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('345', '0', '481565935932490', null, '191.80', '3', '2019-08-16 14:12:12', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('346', '0', '481565935932490', null, '191.80', '3', '2019-08-16 14:12:12', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('347', '0', '481565935932490', null, '191.80', '3', '2019-08-16 14:12:12', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('348', '0', '961565935946829', null, '191.80', '3', '2019-08-16 14:12:26', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('349', '0', '961565935946829', null, '191.80', '3', '2019-08-16 14:12:26', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('350', '0', '961565935946829', null, '191.80', '3', '2019-08-16 14:12:26', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('351', '0', '341565936282578', null, '191.80', '3', '2019-08-16 14:18:02', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('352', '0', '341565936282578', null, '191.80', '3', '2019-08-16 14:18:02', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('353', '0', '341565936282578', null, '191.80', '3', '2019-08-16 14:18:02', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('354', '0', '251565936304175', null, '191.80', '3', '2019-08-16 14:18:24', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('355', '0', '251565936304175', null, '191.80', '3', '2019-08-16 14:18:24', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('356', '0', '251565936304175', null, '191.80', '3', '2019-08-16 14:18:24', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('357', '0', '151565936305752', null, '191.80', '3', '2019-08-16 14:18:25', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('358', '0', '151565936305752', null, '191.80', '3', '2019-08-16 14:18:25', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('359', '0', '151565936305752', null, '191.80', '3', '2019-08-16 14:18:25', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('360', '0', '981565936342825', null, '191.80', '3', '2019-08-16 14:19:02', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('361', '0', '981565936342825', null, '191.80', '3', '2019-08-16 14:19:02', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('362', '0', '981565936342825', null, '191.80', '3', '2019-08-16 14:19:02', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('363', '0', '061565936506922', null, '191.80', '3', '2019-08-16 14:21:46', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('364', '0', '061565936506922', null, '191.80', '3', '2019-08-16 14:21:46', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('365', '0', '061565936506922', null, '191.80', '3', '2019-08-16 14:21:46', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('366', '0', '421565936529380', null, '191.80', '3', '2019-08-16 14:22:09', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('367', '0', '421565936529380', null, '191.80', '3', '2019-08-16 14:22:09', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('368', '0', '421565936529380', null, '191.80', '3', '2019-08-16 14:22:09', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('369', '0', '341565936569668', null, '191.80', '3', '2019-08-16 14:22:49', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('370', '0', '341565936569668', null, '191.80', '3', '2019-08-16 14:22:49', '340', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('371', '0', '341565936569668', null, '191.80', '3', '2019-08-16 14:22:49', '337', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('372', '0', '621565938818700', null, '60.00', '1', '2019-08-16 15:00:18', '338', '104', '1', '0');
INSERT INTO `tb_order_info` VALUES ('373', '0', '221565939285495', null, '99.90', '2', '2019-08-16 15:08:05', '338', '104', '1', '1');
INSERT INTO `tb_order_info` VALUES ('374', '0', '221565939285495', null, '99.90', '2', '2019-08-16 15:08:05', '364', '104', '1', '1');
INSERT INTO `tb_order_info` VALUES ('375', '0', '431565939766615', null, '557.00', '2', '2019-08-16 15:16:06', '48', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('376', '0', '431565939766615', null, '557.00', '2', '2019-08-16 15:16:06', '50', '99', '43', '0');
INSERT INTO `tb_order_info` VALUES ('389', '0', '711565940288130', null, '557.00', '2', '2019-08-16 15:24:48', '48', '109', '43', '0');
INSERT INTO `tb_order_info` VALUES ('390', '0', '711565940288130', null, '557.00', '2', '2019-08-16 15:24:48', '50', '109', '45', '0');
INSERT INTO `tb_order_info` VALUES ('391', '0', '281565940493439', null, '1150.00', '5', '2019-08-16 15:28:13', '3', '110', '3', '0');
INSERT INTO `tb_order_info` VALUES ('392', '0', '281565940493439', null, '1150.00', '5', '2019-08-16 15:28:13', '10', '110', '3', '0');
INSERT INTO `tb_order_info` VALUES ('393', '0', '281565940493439', null, '1150.00', '5', '2019-08-16 15:28:13', '25', '110', '3', '0');
INSERT INTO `tb_order_info` VALUES ('394', '0', '281565940493439', null, '1150.00', '5', '2019-08-16 15:28:13', '52', '110', '3', '0');
INSERT INTO `tb_order_info` VALUES ('395', '0', '281565940493439', null, '1150.00', '5', '2019-08-16 15:28:13', '44', '110', '3', '0');
INSERT INTO `tb_order_info` VALUES ('396', '0', '671565940908405', null, '176.00', '1', '2019-08-16 15:35:08', '16', '116', '45', '0');
INSERT INTO `tb_order_info` VALUES ('397', '0', '531565941375858', null, '69.00', '1', '2019-08-16 15:42:55', '1', '104', '46', '0');
INSERT INTO `tb_order_info` VALUES ('398', '0', '331565941518713', null, '69.00', '1', '2019-08-16 15:45:18', '1', '104', '46', '0');
INSERT INTO `tb_order_info` VALUES ('402', '0', '231565943539987', null, '69.00', '1', '2019-08-16 16:18:59', '1', '120', '33', '0');
INSERT INTO `tb_order_info` VALUES ('403', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('404', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '10', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('405', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '25', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('406', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '52', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('407', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '44', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('408', '0', '341565944073061', null, '1486.00', '6', '2019-08-16 16:27:53', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('409', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('410', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '10', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('411', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '25', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('412', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '52', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('413', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '44', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('414', '0', '311565944087926', null, '1486.00', '6', '2019-08-16 16:28:07', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('415', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('416', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '10', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('417', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '25', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('418', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '52', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('419', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '44', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('420', '0', '531565944090417', null, '1486.00', '6', '2019-08-16 16:28:10', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('421', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('422', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '10', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('423', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '25', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('424', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '52', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('425', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '44', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('426', '0', '401565944108211', null, '1486.00', '6', '2019-08-16 16:28:28', '3', '115', '3', '0');
INSERT INTO `tb_order_info` VALUES ('427', '0', '781565946177852', null, '399.00', '1', '2019-08-16 17:02:57', '457', '119', '33', '1');

-- ----------------------------
-- Table structure for tb_shopping_car
-- ----------------------------
DROP TABLE IF EXISTS `tb_shopping_car`;
CREATE TABLE `tb_shopping_car` (
  `shoppingCar_id` int(11) NOT NULL AUTO_INCREMENT,
  `shoppingCar_amount` double(20,1) DEFAULT NULL,
  `shoppingCar_goodsNumber` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goodsStyle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shoppingCar_id`) USING BTREE,
  KEY `sc_ui_id` (`user_id`) USING BTREE,
  KEY `sc_gsi_id` (`goodsStyle_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

-- ----------------------------
-- Records of tb_shopping_car
-- ----------------------------
INSERT INTO `tb_shopping_car` VALUES ('44', '76.0', '2', '34', '405');
INSERT INTO `tb_shopping_car` VALUES ('66', '66.0', '1', '34', '351');
INSERT INTO `tb_shopping_car` VALUES ('67', '69.0', '1', '34', '399');
INSERT INTO `tb_shopping_car` VALUES ('68', '69.0', '1', '34', '399');
INSERT INTO `tb_shopping_car` VALUES ('69', '336.0', '2', '3', '3');
INSERT INTO `tb_shopping_car` VALUES ('70', '699.0', '1', '3', '10');
INSERT INTO `tb_shopping_car` VALUES ('71', '98.0', '1', '3', '25');
INSERT INTO `tb_shopping_car` VALUES ('72', '399.0', '1', '43', '48');
INSERT INTO `tb_shopping_car` VALUES ('73', '49.0', '1', '3', '52');
INSERT INTO `tb_shopping_car` VALUES ('77', '158.0', '1', '43', '50');
INSERT INTO `tb_shopping_car` VALUES ('78', '136.0', '2', '3', '44');
INSERT INTO `tb_shopping_car` VALUES ('79', '299.0', '1', '1', '463');
INSERT INTO `tb_shopping_car` VALUES ('80', '176.0', '2', '45', '16');
INSERT INTO `tb_shopping_car` VALUES ('81', '69.0', '1', '46', '1');
INSERT INTO `tb_shopping_car` VALUES ('82', '69.0', '1', '34', '1');
INSERT INTO `tb_shopping_car` VALUES ('83', '168.0', '1', '3', '3');
INSERT INTO `tb_shopping_car` VALUES ('86', '399.0', '1', '33', '457');

-- ----------------------------
-- Table structure for tb_user_address_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_address_info`;
CREATE TABLE `tb_user_address_info` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_defaultAddress` int(255) DEFAULT NULL,
  `address_reciverPhoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_reciverDetailAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_reciverName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_reciverAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_postalCode` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址信息表\r\naddress_defaultAddress:  （0：表示默认地址）';

-- ----------------------------
-- Records of tb_user_address_info
-- ----------------------------
INSERT INTO `tb_user_address_info` VALUES ('1', '1', '123354', '哈哈哈', '杨帅', '湖南省 岳阳市 番禺区', null, '1');
INSERT INTO `tb_user_address_info` VALUES ('77', '1', '12987656789', '怀化市', '梁山伯', '广东省 广州市 番禺区', null, '1');
INSERT INTO `tb_user_address_info` VALUES ('78', '1', '13467897654', '长沙', '祝英台', '河北省 唐山市 番禺区', null, '1');
INSERT INTO `tb_user_address_info` VALUES ('79', '1', '19876543456', '朝阳区', '唐伯虎', '广东省 广州市 番禺区', null, '1');
INSERT INTO `tb_user_address_info` VALUES ('81', '1', '12511118888', '27号', '李易峰', '浙江省 杭州市 番禺区', null, '37');
INSERT INTO `tb_user_address_info` VALUES ('83', '1', '16547869900', '碧桂园', '大话', '内蒙古省 呼和浩特市 番禺区', null, '43');
INSERT INTO `tb_user_address_info` VALUES ('84', '1', '13267626959', '德创智谷', '李云龙', '山西省 太原市 番禺区', null, '43');
INSERT INTO `tb_user_address_info` VALUES ('85', '1', '15973602535', '广州佑航电子有限公司', '大喜', '广东省 广州市 番禺区', null, '43');
INSERT INTO `tb_user_address_info` VALUES ('99', '1', '12571252363', '30号', '小户', '新疆省 乌鲁木齐市 番禺区', null, '43');
INSERT INTO `tb_user_address_info` VALUES ('102', '1', '15274455996', '中心花园A栋', '赵海庭', '北京市 北京市市辖区 东城区', null, '34');
INSERT INTO `tb_user_address_info` VALUES ('104', '1', '18397614712', '26路', '袁滢', '北京市 北京市市辖区 东城区', null, '1');
INSERT INTO `tb_user_address_info` VALUES ('109', '1', '12345678987', '的创智谷', '黄明仙', '北京市 北京市市辖区 东城区', null, '43');
INSERT INTO `tb_user_address_info` VALUES ('110', '1', '15274568923', '德创智谷', '袁滢', '吉林省 辽源市 西安区', null, '3');
INSERT INTO `tb_user_address_info` VALUES ('115', '1', '15274568923', '德创智谷', '周浩', '山西省 太原市 小店区', null, '3');
INSERT INTO `tb_user_address_info` VALUES ('116', '1', '15073601367', '恒大地产', '欧阳雨露', '北京市 北京市市辖区 东城区', null, '45');
INSERT INTO `tb_user_address_info` VALUES ('117', '1', '16545678435', '的智创谷', '阿雅', '湖北省 武汉市 江岸区', null, '45');
INSERT INTO `tb_user_address_info` VALUES ('119', '1', '15274455996', '中心花园A栋', '杨赵婷', '北京市 北京市市辖区 东城区', null, '33');
INSERT INTO `tb_user_address_info` VALUES ('122', '0', '15274455996', '中心花园A栋', '杨赵婷', '河北省 石家庄市 长安区', null, '33');

-- ----------------------------
-- Table structure for tb_user_comment_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_comment_info`;
CREATE TABLE `tb_user_comment_info` (
  `userComment_id` int(11) NOT NULL AUTO_INCREMENT,
  `userComment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userComment_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userComment_star` int(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`userComment_id`) USING BTREE,
  KEY `uci_gdi_id` (`goods_id`) USING BTREE,
  KEY `uci_ui_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3946 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户评论信息表\r\n注意：userComment_star表示用户评论星级(1-5：分别表示一星级到五星级）';

-- ----------------------------
-- Records of tb_user_comment_info
-- ----------------------------
INSERT INTO `tb_user_comment_info` VALUES ('1', '可以', '2019-07-10 18:52:55', '5', '1', '1');
INSERT INTO `tb_user_comment_info` VALUES ('2', '非常好 很高兴 还免费帮写贺卡 有了礼物忧 我都不会去其他的了', '2019-08-05 17:58:53', '5', '3', '7');
INSERT INTO `tb_user_comment_info` VALUES ('3', '非常喜欢这礼物', '2018-10-20 21:01:08', '5', '32', '8');
INSERT INTO `tb_user_comment_info` VALUES ('4', '礼物还不错 女孩比较喜欢', '2018-12-23 02:09:56', '5', '1', '9');
INSERT INTO `tb_user_comment_info` VALUES ('5', '送给小妹的生日礼物，很喜欢，音乐很美！', '2017-10-11 21:08:17', '4', '33', '10');
INSERT INTO `tb_user_comment_info` VALUES ('6', '礼物是满意了 但是没贺卡 害我白白浪费时间还要去百度搜了一会儿 唉 下次说清楚 好不好', '2019-08-06 21:36:29', '5', '3', '11');
INSERT INTO `tb_user_comment_info` VALUES ('7', '现在的心情就三个字☞想退货', '2017-09-06 22:01:32', '5', '41', '14');
INSERT INTO `tb_user_comment_info` VALUES ('8', '还行吧\r\n就是性价比低了点', '2018-05-09 23:17:52', '4', '41', '16');
INSERT INTO `tb_user_comment_info` VALUES ('9', '竟然没有刺绣，投诉', '2017-02-17 05:45:26', '5', '42', '17');
INSERT INTO `tb_user_comment_info` VALUES ('10', '喜欢', '2017-09-27 07:45:21', '5', '43', '18');
INSERT INTO `tb_user_comment_info` VALUES ('11', '不错 ，送朋友的 他很喜欢', '2016-12-17 00:45:20', '5', '3', '19');
INSERT INTO `tb_user_comment_info` VALUES ('12', '可以', ' 2019-07-10 18:52:55', '5', '41', '25');
INSERT INTO `tb_user_comment_info` VALUES ('13', '非常喜欢这礼物', '2018-10-20 21:01:08', '5', '3', '29');
INSERT INTO `tb_user_comment_info` VALUES ('19', '别删行吗？哭泣脸', '2019-08-12 16:29:52', '5', '3', '135');
INSERT INTO `tb_user_comment_info` VALUES ('20', '别删行吗？苦瓜脸', '2019-08-12 16:34:08', '5', '32', '135');
INSERT INTO `tb_user_comment_info` VALUES ('21', '别删行吗？委屈脸', '2019-08-12 16:34:31', '4', '3', '135');
INSERT INTO `tb_user_comment_info` VALUES ('22', '别删行吗？悲伤脸', '2019-08-12 16:35:09', '1', '3', '135');
INSERT INTO `tb_user_comment_info` VALUES ('23', '别删行吗？乞求脸', '2019-08-12 16:35:54', '2', '3', '135');
INSERT INTO `tb_user_comment_info` VALUES ('24', '别删行吗？可怜脸', '2019-08-12 16:36:26', '3', '43', '135');
INSERT INTO `tb_user_comment_info` VALUES ('25', '给弟弟买的,他很喜欢,下次还来', '2019-08-13 19:52:25', '5', '3', '133');
INSERT INTO `tb_user_comment_info` VALUES ('26', '非常喜欢这礼物', '2019-08-13 19:53:46', '5', '1', '88');
INSERT INTO `tb_user_comment_info` VALUES ('27', '过了半年了，才来评价，礼物很好，虽然不贵 ，但女朋友很开心，不，现在已经是老婆了，感谢感谢', '2019-08-13 19:54:47', '5', '42', '132');
INSERT INTO `tb_user_comment_info` VALUES ('28', '很有心意，同事收到礼物后很高兴~', '2019-08-13 19:56:17', '5', '1', '132');
INSERT INTO `tb_user_comment_info` VALUES ('29', '很有个性的一款台灯，放在电脑旁静静地听着音乐，很惬意。', '2019-08-13 19:57:16', '4', '1', '131');
INSERT INTO `tb_user_comment_info` VALUES ('30', '感觉礼物做得太粗糙了，都不是按着底座形状制作的，不是很愉快', '2019-08-13 19:58:01', '1', '33', '3945');
INSERT INTO `tb_user_comment_info` VALUES ('31', '还行', '2019-08-13 19:59:39', '3', '34', '3945');
INSERT INTO `tb_user_comment_info` VALUES ('32', '快递很快,卖方态度很好,及时帮我更换照片,是赶在母亲节之前发,卖家当天就发货了,感谢!已经是礼无忧的老顾客了,希望对老顾客有更多的优惠,期待!礼品也很漂亮哦!', '2019-08-13 20:00:39', '3', '3', '129');
INSERT INTO `tb_user_comment_info` VALUES ('33', '发货很快，包装也精美', '2019-08-13 20:01:42', '5', '45', '128');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_level` int(255) DEFAULT NULL,
  `user_sex` int(255) DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_phoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_status` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表\r\n注意：user_sex表示性别（1：表示男；0：表示女）\r\n         user_level表示用户等级（1：普通会员；2：青铜会员；3：白银会员；4.黄金会员；5：铂金会员；6：钻石会员）\r\nuser_status:0为可用账号 1为不可用账号\r\n';

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES ('1', '1WLbp1Us69I=', 'admin', '1989-12-31', '1', '2', '1989250942@qq.com', '18397614712', '0');
INSERT INTO `tb_user_info` VALUES ('3', '1WLbp1Us69I=', '小宝宝', '2000-01-01', '0', '0', '124443@qq.com', '12345678098', '0');
INSERT INTO `tb_user_info` VALUES ('32', '1WLbp1Us69I=', '李阳', '1969-12-31', '0', '1', 'liyang@qq.com', '15274453333', '0');
INSERT INTO `tb_user_info` VALUES ('33', 'KgFVIDaVZ6I=', '赵海庭', '1979-12-25', '798', '2', '15274455996@163.com', '15274455996', null);
INSERT INTO `tb_user_info` VALUES ('34', '1WLbp1Us69I=', '袁滢', '1999-08-22', '4', '2', '15274455997@163.com', '15274455997', '1');
INSERT INTO `tb_user_info` VALUES ('37', '1WLbp1Us69I=', '小暖宝', '1989-12-31', '0', '0', '1231123123@cc.com', '21311111111', '0');
INSERT INTO `tb_user_info` VALUES ('41', '1WLbp1Us69I=', 'yanzu', '2000-01-01', '0', '0', '15074233333@qq.com', '15074233333', '0');
INSERT INTO `tb_user_info` VALUES ('42', '1WLbp1Us69I=', 'Dianna', '2000-01-01', '0', '0', '45787899@qq.com', '19873601636', '0');
INSERT INTO `tb_user_info` VALUES ('43', 'wy4QYdafxrQ=', 'yhyyy', '2000-01-01', '3', '2', '15073601367@163.com', '15073601367', '0');
INSERT INTO `tb_user_info` VALUES ('45', 'wy4QYdafxrQ=', 'yang', '2000-01-01', '0', '0', '12356754356@qq.com', '12356754356', '0');
INSERT INTO `tb_user_info` VALUES ('46', '1WLbp1Us69I=', '赵海庭2', '2000-01-01', '0', '0', '15274455990@163.com', '15274455995', '0');
