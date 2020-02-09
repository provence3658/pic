/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/02/2020 16:49:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `category_id` int(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(255) DEFAULT 'noimage.jpg',
  `description` varchar(500) DEFAULT NULL,
  `stock` int(10) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '1-在售 2-下架',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES (1, 10007, '解忧杂货店', '东野圭吾', 39.00, 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', '现代人内心流失的东西，这家杂货店能帮你找回——\r\n\r\n僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。\r\n\r\n因男友身患绝症，年轻女孩静子在爱情与梦想间徘徊；克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩介面临家庭巨变，挣扎在亲情与未来的迷茫中……\r\n\r\n他们将困惑写成信投进杂货店，随即奇妙的事情竟不断发生。\r\n\r\n生命中的一次偶然交会，将如何演绎出截然不同的人生？\r\n\r\n如今回顾写作过程，我发现自己始终在思考一个问题：站在人生的岔路口，人究竟应该怎么做？我希望读者能在掩卷时喃喃自语：我从未读过这样的小说。——东野圭吾', 93, 1);
INSERT INTO `book` VALUES (2, 10007, '白夜行', '东野圭吾', 29.80, 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', '', 76, 1);
INSERT INTO `book` VALUES (3, 10007, '嫌疑人X的献身', '东野圭吾', 28.00, 'https://img3.doubanio.com/view/subject/m/public/s3254244.jpg', '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。\r\n\r\n靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由他料理善后。石神设了一个匪夷所思的局，令警方始终只能在外围敲敲打打，根本无法与案子沾边。石神究竟使用了什么手法？', 94, 1);
INSERT INTO `book` VALUES (4, 10011, '房思琪的初恋乐园', '林奕含', 45.00, 'https://img3.doubanio.com/view/subject/m/public/s29651121.jpg', '', 90, 1);
INSERT INTO `book` VALUES (5, 10011, '活着', '余华', 20.00, 'https://img3.doubanio.com/view/subject/m/public/s29053580.jpg', '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', 56, 1);
INSERT INTO `book` VALUES (6, 10007, '追风筝的人', '卡勒德·胡塞尼', 29.00, 'https://img3.doubanio.com/view/subject/m/public/s1727290.jpg', '', 100, 1);
INSERT INTO `book` VALUES (7, 10017, '你今天真好看', '莉兹•克里莫', 39.00, 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', NULL, 77, 1);
INSERT INTO `book` VALUES (8, 10022, '人类简史 : 从动物到上帝', '尤瓦尔·赫拉利', 68.00, 'https://img3.doubanio.com/view/subject/m/public/s27814883.jpg', NULL, 99, 1);
INSERT INTO `book` VALUES (9, 10019, '乌合之众 : 大众心理研究', '勒庞', 16.00, 'https://img3.doubanio.com/view/subject/m/public/s1988393.jpg', NULL, 98, 1);
INSERT INTO `book` VALUES (10, 10019, '非暴力沟通', '马歇尔·卢森堡', 29.00, 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', NULL, 90, 1);
INSERT INTO `book` VALUES (11, 10030, '薛兆丰经济学讲义', '薛兆丰', 98.00, 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', NULL, 77, 1);
INSERT INTO `book` VALUES (12, 10033, 'Python深度学习', '弗朗索瓦•肖莱', 119.00, 'https://img1.doubanio.com/view/subject/m/public/s29839337.jpg', NULL, 100, 0);
INSERT INTO `book` VALUES (13, 10034, 'JavaScript高级程序设计（第3版）', ' Nicholas C. Zakas', 99.00, 'https://img3.doubanio.com/view/subject/m/public/s8958650.jpg', NULL, 92, 1);
INSERT INTO `book` VALUES (14, 10033, '深度学习', '[美] 伊恩·古德费洛、[加] 约书亚·本吉奥、[加] 亚伦·库维尔', 168.00, 'https://img1.doubanio.com/view/subject/m/public/s29518349.jpg', NULL, 100, 1);
INSERT INTO `book` VALUES (15, 10010, '料理的1000个魔法', '日本辰巳出版株式会社', 65.00, 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', NULL, 78, 1);
INSERT INTO `book` VALUES (16, 10011, '三体 : “地球往事”三部曲之一', '刘慈欣', 23.00, 'https://img1.doubanio.com/view/subject/l/public/s2768378.jpg', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。\r\n\r\n文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。', 100, 1);
INSERT INTO `book` VALUES (17, 10011, '月亮与六便士', ' 威廉·萨默塞特·毛姆', 39.80, 'https://img1.doubanio.com/view/subject/l/public/s29634528.jpg', NULL, 99, 1);
INSERT INTO `book` VALUES (18, 10011, '围城', '钱锺书', 19.00, 'https://img3.doubanio.com/view/subject/l/public/s1070222.jpg', '《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出现过盗印本。1980年由作者重新修订之后，在中国大陆地区由人民文学出版社刊印。此后作者又曾小幅修改过几次。《围城》 自从出版以来，就受到许多人的推崇。由于1949年后长期无法重印，这本书逐渐淡出人们的视野。1960年代，旅美汉学家夏志清在《中国现代小说史》(A History of Modern Chinese Fiction)中对本书作出很高的评价，这才重新引起人们对它的关注。人们对它的评价一般集中在两方面，幽默的语言和对生活深刻的观察。从1990年代开始，也有人提出对本书的不同看法，认为这是一部被“拔高”的小说，并不是一部出色的作品。很多人认为这是一部幽默作品。除了各具特色的人物语言之外，作者夹叙其间的文字也显着机智与幽默。这是本书的一大特色。也有人认为这是作者卖弄文字，语言显得尖酸刻薄。但这一说法并不为大多数人接受。', 100, 1);
INSERT INTO `book` VALUES (19, 10011, '百年孤独', '加西亚·马尔克斯', 39.50, 'https://img3.doubanio.com/view/subject/l/public/s6384944.jpg', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', 100, 1);
INSERT INTO `book` VALUES (20, 10011, '平凡的世界（全三部）', '路遥', 64.00, 'https://img3.doubanio.com/view/subject/l/public/s1144911.jpg', '《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广阔背景下，通过复杂的矛盾纠葛，刻划社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', 90, 1);
INSERT INTO `book` VALUES (23, 10013, '撒哈拉沙漠', '三毛', 29.80, 'https://img3.doubanio.com/view/subject/l/public/s3563113.jpg', '三毛作品中最膾炙人口的《撒哈拉的故事》﹐\n\n由１２篇精采動人的散文結合而成﹐\n\n其中＜沙漠中的飯店＞﹐\n\n是三毛適應荒涼單調的沙漠生活後﹐\n\n重新拾筆的第一篇文字﹐\n\n自此之後﹐三毛便寫出一系列以沙漠為背景的故事﹐\n\n風靡了全世界的中文讀者。', 100, 1);
INSERT INTO `book` VALUES (24, 10013, '梦里花落知多少', '三毛', 28.00, 'https://img3.doubanio.com/view/subject/l/public/s2393243.jpg', '《梦里花落知多少》记录了荷西过世后三毛的生活，共23篇。内容均为台湾皇冠出版社81年至88年的初版。\n\n荷西的死对三毛又是一场劫难，因此由《背影》到这本书，在文学、心情上都与早期大不相同，说情叙事极其内敛，但在曲折的空间之余，读者当能感受到三毛哀而不伤的笔调里，更多的其实是三毛对人生的坚定。', 99, 1);
INSERT INTO `book` VALUES (25, 10013, '雨季不再来', '三毛', 28.00, 'https://img1.doubanio.com/view/subject/l/public/s2563279.jpg', '《雨季不再来》以三毛的生命历程为主题，记录了三毛17岁到22岁的成长过程，真实呈现出三毛少女时代的成长感受，辍学、自闭、叛逆，游学西班牙、德国、美国后，渐渐成长为独立自信的青年，这本书中透露的纯真情怀和异质美感，可以清楚地印证她传奇性格的痕迹。', 100, 1);
INSERT INTO `book` VALUES (27, 10021, '建筑师', '大卫·马祖凯利', 198.00, 'http://127.0.0.1:8089/5ccd491f-ed20-4216-8628-195705f3603e.jpg', '如果人生是一张建筑图纸\n\n属于你的那栋房屋会是什么模样？\n\n哈维奖、艾斯纳奖、洛杉矶时报图像小说获奖作品\n\n融叙事象征主义，色彩和视觉隐喻于一体的史诗级作品\n\n大火过后，深陷中年危机的建筑师要如何重建他的生活？', 97, 1);
INSERT INTO `book` VALUES (30, 10019, '社会心理学', '戴维·迈尔斯', 68.00, 'http://127.0.0.1:8089/2da5a014-db1f-46f4-9e30-efc6d20247e4.jpg', '《社会心理学》这本书被美国700多所大学或学院的心理系所采用，是这一领域的主导教材，已经成为评价其他教材的标准。\n\n这本书将基础研究与实践应用完美地结合在一起，以富有逻辑性的组织结构引领学生了解人们是如何思索、影响他人并与他人建立联系的。是人们了解自身、了解社会、了解自己与社会之间关系的最佳的指导性书籍。', 100, 1);
INSERT INTO `book` VALUES (31, 10007, '解忧杂货店2', '东野圭吾', 39.00, 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', '‘’', 100, 1);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `checked` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` VALUES (32, 8, 10, 2, 1);
INSERT INTO `cart` VALUES (71, 1, 1, 1, 1);
INSERT INTO `cart` VALUES (82, 12, 8, 1, 0);
INSERT INTO `cart` VALUES (90, 3, 2, 1, 1);
INSERT INTO `cart` VALUES (91, 3, 3, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10053 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (10001, '文学', 0);
INSERT INTO `category` VALUES (10002, '流行', 0);
INSERT INTO `category` VALUES (10003, '文化', 0);
INSERT INTO `category` VALUES (10004, '生活', 0);
INSERT INTO `category` VALUES (10005, '经管', 0);
INSERT INTO `category` VALUES (10006, '科技', 0);
INSERT INTO `category` VALUES (10007, '外国小说', 10001);
INSERT INTO `category` VALUES (10008, '经典', 10001);
INSERT INTO `category` VALUES (10009, '儿童文学', 10001);
INSERT INTO `category` VALUES (10010, '美食', 10004);
INSERT INTO `category` VALUES (10011, '小说1', 10001);
INSERT INTO `category` VALUES (10012, '随笔', 10001);
INSERT INTO `category` VALUES (10013, '散文', 10001);
INSERT INTO `category` VALUES (10014, '诗歌', 10001);
INSERT INTO `category` VALUES (10015, '童话', 10001);
INSERT INTO `category` VALUES (10016, '杂文', 10001);
INSERT INTO `category` VALUES (10017, '漫画', 10002);
INSERT INTO `category` VALUES (10018, '推理', 10002);
INSERT INTO `category` VALUES (10019, '心理学', 10003);
INSERT INTO `category` VALUES (10020, '艺术', 10003);
INSERT INTO `category` VALUES (10021, '建筑', 10003);
INSERT INTO `category` VALUES (10022, '社会学', 10003);
INSERT INTO `category` VALUES (10023, '电影', 10003);
INSERT INTO `category` VALUES (10024, '爱情', 10004);
INSERT INTO `category` VALUES (10025, '旅行', 10004);
INSERT INTO `category` VALUES (10026, '职场', 10004);
INSERT INTO `category` VALUES (10027, '教育', 10004);
INSERT INTO `category` VALUES (10028, '摄影', 10004);
INSERT INTO `category` VALUES (10029, '管理', 10005);
INSERT INTO `category` VALUES (10030, '经济', 10005);
INSERT INTO `category` VALUES (10031, '创业', 10005);
INSERT INTO `category` VALUES (10032, ' 投资', 10005);
INSERT INTO `category` VALUES (10033, '互联网', 10006);
INSERT INTO `category` VALUES (10034, '编程', 10006);
INSERT INTO `category` VALUES (10035, ' 交互设计', 10006);
INSERT INTO `category` VALUES (10036, ' 算法', 10006);
INSERT INTO `category` VALUES (10043, '神经网络', 10006);
INSERT INTO `category` VALUES (10042, '养生', 10004);
INSERT INTO `category` VALUES (10044, '名著', 10001);
INSERT INTO `category` VALUES (10045, '绘本', 10002);
INSERT INTO `category` VALUES (10046, '青春', 10002);
INSERT INTO `category` VALUES (10047, '言情', 10002);
INSERT INTO `category` VALUES (10051, '欧克', 10001);
INSERT INTO `category` VALUES (10052, '嗯嗯', 0);
COMMIT;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `book_image` varchar(500) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `one_price` decimal(20,2) DEFAULT NULL COMMENT '单价',
  `total_price` decimal(20,2) DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
BEGIN;
INSERT INTO `orderitem` VALUES (1, 2, 1, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.50, 39.50);
INSERT INTO `orderitem` VALUES (2, 2, 2, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 2, 39.50, 79.00);
INSERT INTO `orderitem` VALUES (3, 2, 3, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.50, 39.50);
INSERT INTO `orderitem` VALUES (4, 2, 4, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.50, 39.50);
INSERT INTO `orderitem` VALUES (5, 2, 1559288945456, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 2, 39.50, 79.00);
INSERT INTO `orderitem` VALUES (6, 2, 1559288945456, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
INSERT INTO `orderitem` VALUES (7, 2, 1559290068964, 4, '房思琪的初恋乐园', 'https://img3.doubanio.com/view/subject/m/public/s29651121.jpg', 1, 45.00, 45.00);
INSERT INTO `orderitem` VALUES (8, 2, 1559290767023, 5, '活着', 'https://img3.doubanio.com/view/subject/m/public/s29053580.jpg', 3, 20.00, 60.00);
INSERT INTO `orderitem` VALUES (9, 2, 1559369110778, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.50, 39.50);
INSERT INTO `orderitem` VALUES (10, 2, 1559369686056, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
INSERT INTO `orderitem` VALUES (11, 2, 1559373282438, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (12, 2, 1559373469011, 11, '薛兆丰经济学讲义', 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', 1, 98.00, 98.00);
INSERT INTO `orderitem` VALUES (13, 2, 1559375372027, 20, '平凡的世界（全三部）', 'https://img3.doubanio.com/view/subject/l/public/s1144911.jpg', 1, 64.00, 64.00);
INSERT INTO `orderitem` VALUES (14, 2, 1559376283976, 10, '非暴力沟通', 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', 1, 29.00, 29.00);
INSERT INTO `orderitem` VALUES (15, 2, 1559376421188, 5, '活着', 'https://img3.doubanio.com/view/subject/m/public/s29053580.jpg', 1, 20.00, 20.00);
INSERT INTO `orderitem` VALUES (16, 2, 1559379517017, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 1, 65.00, 65.00);
INSERT INTO `orderitem` VALUES (17, 2, 1559381750930, 11, '薛兆丰经济学讲义', 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', 1, 98.00, 98.00);
INSERT INTO `orderitem` VALUES (18, 2, 1559382153789, 14, '深度学习', 'https://img1.doubanio.com/view/subject/m/public/s29518349.jpg', 80, 168.00, 13440.00);
INSERT INTO `orderitem` VALUES (19, 2, 1559382153789, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 9, 39.00, 351.00);
INSERT INTO `orderitem` VALUES (20, 2, 1559382547180, 13, 'JavaScript高级程序设计（第3版）', 'https://img3.doubanio.com/view/subject/m/public/s8958650.jpg', 8, 99.00, 792.00);
INSERT INTO `orderitem` VALUES (21, 2, 1559384066648, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.50, 39.50);
INSERT INTO `orderitem` VALUES (22, 2, 1559386934723, 11, '薛兆丰经济学讲义', 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', 1, 98.00, 98.00);
INSERT INTO `orderitem` VALUES (23, 2, 1559386991667, 9, '乌合之众 : 大众心理研究', 'https://img3.doubanio.com/view/subject/m/public/s1988393.jpg', 1, 16.00, 16.00);
INSERT INTO `orderitem` VALUES (24, 2, 1559442700729, 17, '月亮与六便士', 'https://img1.doubanio.com/view/subject/l/public/s29634528.jpg', 1, 39.80, 39.80);
INSERT INTO `orderitem` VALUES (25, 3, 1559443388253, 3, '嫌疑人X的献身', 'https://img3.doubanio.com/view/subject/m/public/s3254244.jpg', 1, 28.00, 28.00);
INSERT INTO `orderitem` VALUES (26, 3, 1559445157512, 5, '活着', 'https://img3.doubanio.com/view/subject/m/public/s29053580.jpg', 1, 20.00, 20.00);
INSERT INTO `orderitem` VALUES (27, 3, 1559445406120, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 1, 65.00, 65.00);
INSERT INTO `orderitem` VALUES (28, 3, 1559445406120, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (29, 3, 1559448100889, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (30, 2, 1559448524637, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (31, 2, 1559449789906, 11, '薛兆丰经济学讲义', 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', 1, 98.00, 98.00);
INSERT INTO `orderitem` VALUES (32, 2, 1559450020331, 5, '活着', 'https://img3.doubanio.com/view/subject/m/public/s29053580.jpg', 3, 20.00, 60.00);
INSERT INTO `orderitem` VALUES (33, 2, 1559450316571, 11, '薛兆丰经济学讲义', 'https://img1.doubanio.com/view/subject/m/public/s29787408.jpg', 1, 98.00, 98.00);
INSERT INTO `orderitem` VALUES (34, 3, 1559797136154, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
INSERT INTO `orderitem` VALUES (35, 3, 1559797136154, 27, '建筑师', 'http://127.0.0.1:8089/5ccd491f-ed20-4216-8628-195705f3603e.jpg', 1, 198.00, 198.00);
INSERT INTO `orderitem` VALUES (36, 2, 1559804634714, 8, '人类简史 : 从动物到上帝', 'https://img3.doubanio.com/view/subject/m/public/s27814883.jpg', 1, 68.00, 68.00);
INSERT INTO `orderitem` VALUES (37, 2, 1559804634714, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 1, 65.00, 65.00);
INSERT INTO `orderitem` VALUES (38, 12, 1560001348335, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (39, 12, 1560001861242, 7, '你今天真好看', 'https://img3.doubanio.com/view/subject/m/public/s28369176.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (40, 12, 1560001875544, 9, '乌合之众 : 大众心理研究', 'https://img3.doubanio.com/view/subject/m/public/s1988393.jpg', 1, 16.00, 16.00);
INSERT INTO `orderitem` VALUES (41, 12, 1560001970851, 27, '建筑师', 'http://127.0.0.1:8089/5ccd491f-ed20-4216-8628-195705f3603e.jpg', 1, 198.00, 198.00);
INSERT INTO `orderitem` VALUES (42, 12, 1560002444522, 27, '建筑师', 'http://127.0.0.1:8089/5ccd491f-ed20-4216-8628-195705f3603e.jpg', 1, 198.00, 198.00);
INSERT INTO `orderitem` VALUES (43, 2, 1560003590452, 3, '嫌疑人X的献身', 'https://img3.doubanio.com/view/subject/m/public/s3254244.jpg', 1, 28.00, 28.00);
INSERT INTO `orderitem` VALUES (44, 2, 1560009601858, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 1, 65.00, 65.00);
INSERT INTO `orderitem` VALUES (45, 3, 1560011176916, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 2, 65.00, 130.00);
INSERT INTO `orderitem` VALUES (46, 3, 1560011625117, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 2, 65.00, 130.00);
INSERT INTO `orderitem` VALUES (47, 3, 1560042266305, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 1, 65.00, 65.00);
INSERT INTO `orderitem` VALUES (48, 3, 1560042312087, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 2, 65.00, 130.00);
INSERT INTO `orderitem` VALUES (49, 3, 1560042700898, 15, '料理的1000个魔法', 'https://img1.doubanio.com/view/subject/l/public/s29979849.jpg', 2, 65.00, 130.00);
INSERT INTO `orderitem` VALUES (50, 3, 1560062595813, 24, '梦里花落知多少', 'https://img3.doubanio.com/view/subject/l/public/s2393243.jpg', 1, 28.00, 28.00);
INSERT INTO `orderitem` VALUES (51, 2, 1579007853206, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
INSERT INTO `orderitem` VALUES (52, 2, 1579007853206, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (53, 2, 1580978648110, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
INSERT INTO `orderitem` VALUES (54, 2, 1580978648110, 1, '解忧杂货店', 'https://img3.doubanio.com/view/subject/m/public/s27264181.jpg', 1, 39.00, 39.00);
INSERT INTO `orderitem` VALUES (55, 2, 1580980775491, 3, '嫌疑人X的献身', 'https://img3.doubanio.com/view/subject/m/public/s3254244.jpg', 1, 28.00, 28.00);
INSERT INTO `orderitem` VALUES (56, 2, 1580980775491, 2, '白夜行', 'https://img3.doubanio.com/view/subject/m/public/s4610502.jpg', 1, 29.80, 29.80);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `user_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `payment` decimal(20,2) DEFAULT NULL COMMENT '实付金额',
  `status` int(11) DEFAULT NULL COMMENT '0-已取消 10-未付款 20-已付款 30-已发货 40-交易成功 50-交易关闭',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, 1, 2, 1, 39.50, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (2, 2, 2, 1, 78.00, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (3, 3, 2, 1, 39.50, 40, '2019-05-31 09:36:02', '2019-06-03 19:14:29', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (4, 4, 2, 1, 39.50, 40, '2019-05-31 09:42:35', '2019-05-31 16:12:44', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (5, 1559287655971, NULL, 1, 108.80, 10, NULL, NULL, NULL, NULL, '2019-05-31 15:27:35');
INSERT INTO `orders` VALUES (6, 1559287907853, 2, 1, 108.80, 10, NULL, NULL, NULL, NULL, '2019-05-31 15:31:47');
INSERT INTO `orders` VALUES (7, 1559288453900, 2, 1, 108.80, 10, NULL, NULL, NULL, NULL, '2019-05-31 15:40:53');
INSERT INTO `orders` VALUES (8, 1559288945456, 2, 1, 108.80, 0, NULL, NULL, NULL, NULL, '2019-05-31 15:49:05');
INSERT INTO `orders` VALUES (9, 1559290068964, 2, 1, 45.00, 10, NULL, NULL, NULL, NULL, '2019-05-31 16:07:48');
INSERT INTO `orders` VALUES (10, 1559290767023, 2, 1, 60.00, 40, '2019-05-31 16:20:03', '2019-05-31 16:20:45', NULL, NULL, '2019-05-31 16:19:26');
INSERT INTO `orders` VALUES (11, 1559369110778, 2, NULL, 39.50, 10, NULL, NULL, NULL, NULL, '2019-06-01 14:05:11');
INSERT INTO `orders` VALUES (12, 1559369686056, 2, 1, 29.80, 10, NULL, NULL, NULL, NULL, '2019-06-01 14:14:46');
INSERT INTO `orders` VALUES (13, 1559373282438, 2, NULL, 39.00, 10, NULL, NULL, NULL, NULL, '2019-06-01 15:14:42');
INSERT INTO `orders` VALUES (14, 1559373469011, 2, 1, 98.00, 40, '2019-06-01 15:35:27', '2019-06-03 19:12:07', NULL, NULL, '2019-06-01 15:17:48');
INSERT INTO `orders` VALUES (15, 1559375372027, 2, 3, 64.00, 10, NULL, NULL, NULL, NULL, '2019-06-01 15:49:31');
INSERT INTO `orders` VALUES (16, 1559376283976, 2, 1, 29.00, 10, NULL, NULL, NULL, NULL, '2019-06-01 16:04:43');
INSERT INTO `orders` VALUES (17, 1559376421188, 2, 1, 20.00, 20, '2019-06-01 16:09:54', NULL, NULL, NULL, '2019-06-01 16:07:01');
INSERT INTO `orders` VALUES (18, 1559379517017, 2, 1, 65.00, 10, NULL, NULL, NULL, NULL, '2019-06-01 16:58:36');
INSERT INTO `orders` VALUES (19, 1559381750930, 2, 1, 98.00, 40, '2019-06-01 17:37:27', '2019-06-04 10:42:21', NULL, NULL, '2019-06-01 17:35:50');
INSERT INTO `orders` VALUES (20, 1559382153789, 2, 1, 13791.00, 40, '2019-06-01 17:43:30', '2019-06-07 16:12:27', NULL, NULL, '2019-06-01 17:42:33');
INSERT INTO `orders` VALUES (21, 1559382547180, 2, 1, 792.00, 20, '2019-06-01 17:49:26', NULL, NULL, NULL, '2019-06-01 17:49:07');
INSERT INTO `orders` VALUES (22, 1559384066648, 2, 3, 39.50, 40, '2019-06-01 18:16:06', '2019-06-03 19:16:52', NULL, NULL, '2019-06-01 18:14:26');
INSERT INTO `orders` VALUES (23, 1559386934723, 2, 3, 98.00, 40, '2019-06-01 19:02:34', '2019-06-03 19:12:41', NULL, NULL, '2019-06-01 19:02:14');
INSERT INTO `orders` VALUES (24, 1559386991667, 2, 1, 16.00, 10, NULL, NULL, NULL, NULL, '2019-06-01 19:03:11');
INSERT INTO `orders` VALUES (25, 1559442700729, 2, 1, 39.80, 10, NULL, NULL, NULL, NULL, '2019-06-02 10:31:40');
INSERT INTO `orders` VALUES (26, 1559443388253, 3, 1, 28.00, 40, '2019-06-02 10:44:14', '2019-06-03 19:11:48', NULL, NULL, '2019-06-02 10:43:08');
INSERT INTO `orders` VALUES (27, 1559445157512, 3, 8, 20.00, 40, '2019-06-02 11:13:34', '2019-06-03 19:11:11', NULL, NULL, '2019-06-02 11:12:37');
INSERT INTO `orders` VALUES (28, 1559445406120, 3, 1, 104.00, 0, NULL, NULL, NULL, NULL, '2019-06-02 11:16:46');
INSERT INTO `orders` VALUES (29, 1559448100889, 3, 1, 39.00, 50, '2019-06-06 13:36:03', '2019-06-07 16:14:39', NULL, NULL, '2019-06-02 12:01:40');
INSERT INTO `orders` VALUES (30, 1559448524637, 2, 1, 39.00, 10, NULL, NULL, NULL, NULL, '2019-06-02 12:08:44');
INSERT INTO `orders` VALUES (31, 1559449789906, 2, 1, 98.00, 0, NULL, NULL, NULL, NULL, '2019-06-02 12:29:49');
INSERT INTO `orders` VALUES (32, 1559450020331, 2, 1, 60.00, 0, NULL, NULL, NULL, NULL, '2019-06-02 12:33:40');
INSERT INTO `orders` VALUES (33, 1559450316571, 2, 1, 98.00, 50, '2019-06-02 12:38:53', '2019-06-03 19:10:31', NULL, NULL, '2019-06-02 12:38:36');
INSERT INTO `orders` VALUES (34, 1559797136154, 3, 9, 227.80, 0, NULL, NULL, NULL, NULL, '2019-06-06 12:58:56');
INSERT INTO `orders` VALUES (35, 1559804634714, 2, 1, 133.00, 50, '2019-06-06 15:04:47', '2019-06-07 19:21:36', NULL, NULL, '2019-06-06 15:03:54');
INSERT INTO `orders` VALUES (36, 1560001348335, 12, 1, 39.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 21:42:28');
INSERT INTO `orders` VALUES (37, 1560001776309, 12, 15, 0.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 21:49:36');
INSERT INTO `orders` VALUES (38, 1560001861242, 12, 15, 39.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 21:51:01');
INSERT INTO `orders` VALUES (39, 1560001875544, 12, 1, 16.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 21:51:15');
INSERT INTO `orders` VALUES (40, 1560001970851, 12, 1, 198.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 21:52:50');
INSERT INTO `orders` VALUES (41, 1560002444522, 12, 15, 198.00, 10, NULL, NULL, NULL, NULL, '2019-06-08 22:00:44');
INSERT INTO `orders` VALUES (42, 1560003590452, 2, 1, 28.00, 20, '2019-06-08 22:21:06', NULL, NULL, NULL, '2019-06-08 22:19:50');
INSERT INTO `orders` VALUES (43, 1560009601858, 2, 1, 65.00, 20, '2020-02-06 15:11:52', NULL, NULL, NULL, '2019-06-09 00:00:01');
INSERT INTO `orders` VALUES (44, 1560011176916, 3, 9, 130.00, 10, NULL, NULL, NULL, NULL, '2019-06-09 00:26:16');
INSERT INTO `orders` VALUES (45, 1560011625117, 3, 9, 130.00, 10, NULL, NULL, NULL, NULL, '2019-06-09 00:33:45');
INSERT INTO `orders` VALUES (46, 1560042266305, 3, 9, 65.00, 10, NULL, NULL, NULL, NULL, '2019-06-09 09:04:26');
INSERT INTO `orders` VALUES (47, 1560042312087, 3, 9, 130.00, 20, '2019-06-09 09:05:38', NULL, NULL, NULL, '2019-06-09 09:05:12');
INSERT INTO `orders` VALUES (48, 1560042700898, 3, 9, 130.00, 20, '2019-06-09 09:12:07', NULL, NULL, NULL, '2019-06-09 09:11:40');
INSERT INTO `orders` VALUES (49, 1560062595813, 3, 9, 28.00, 20, '2019-06-09 14:44:16', NULL, NULL, NULL, '2019-06-09 14:43:15');
INSERT INTO `orders` VALUES (50, 1579007853206, 2, 1, 68.80, 10, NULL, NULL, NULL, NULL, '2020-01-14 21:17:33');
INSERT INTO `orders` VALUES (51, 1580978648110, 2, 20, 68.80, 0, NULL, NULL, NULL, NULL, '2020-02-06 16:44:08');
INSERT INTO `orders` VALUES (52, 1580980775491, 2, 1, 57.80, 40, '2020-02-06 17:21:44', '2020-02-08 16:22:25', NULL, NULL, '2020-02-06 17:19:35');
COMMIT;

-- ----------------------------
-- Table structure for pay_info
-- ----------------------------
DROP TABLE IF EXISTS `pay_info`;
CREATE TABLE `pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `pay_platform` int(11) DEFAULT NULL,
  `platform_number` varchar(200) DEFAULT NULL,
  `platform_status` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_info
-- ----------------------------
BEGIN;
INSERT INTO `pay_info` VALUES (1, 2, 4, 1, '2019053122001468051000017662', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (2, 2, 4, 1, '2019053122001468051000017662', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (3, 2, 1559290767023, 1, '2019053122001468051000017663', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (4, 2, 1559290767023, 1, '2019053122001468051000017663', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (5, 2, 1559373469011, 1, '2019060122001468051000019865', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (6, 2, 1559373469011, 1, '2019060122001468051000019865', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (7, 2, 1559376421188, 1, '2019060122001468051000019866', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (8, 2, 1559376421188, 1, '2019060122001468051000019866', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (9, 2, 1559375372027, 1, '2019060122001468051000022861', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (10, 2, 1559381750930, 1, '2019060122001468051000022862', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (11, 2, 1559381750930, 1, '2019060122001468051000022862', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (12, 2, 1559382153789, 1, '2019060122001468051000019867', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (13, 2, 1559382153789, 1, '2019060122001468051000019867', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (14, 2, 1559382547180, 1, '2019060122001468051000021803', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (15, 2, 1559382547180, 1, '2019060122001468051000021803', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (16, 2, 1559384066648, 1, '2019060122001468051000021805', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (17, 2, 1559384066648, 1, '2019060122001468051000021805', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (18, 2, 1559386934723, 1, '2019060122001468051000021806', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (19, 2, 1559386934723, 1, '2019060122001468051000021806', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (20, 3, 1559443388253, 1, '2019060222001468051000021807', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (21, 3, 1559443388253, 1, '2019060222001468051000021807', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (22, 3, 1559445157512, 1, '2019060222001468051000022863', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (23, 3, 1559445157512, 1, '2019060222001468051000022863', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (24, 2, 1559450316571, 1, '2019060222001468051000022864', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (25, 2, 1559450316571, 1, '2019060222001468051000022864', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (26, 3, 1559448100889, 1, '2019060622001468051000024858', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (27, 3, 1559448100889, 1, '2019060622001468051000024858', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (28, 2, 1559804634714, 1, '2019060622001468051000026774', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (29, 2, 1559804634714, 1, '2019060622001468051000026774', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (30, 2, 1560003590452, 1, '2019060822001468051000029995', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (31, 2, 1560003590452, 1, '2019060822001468051000029995', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (32, 3, 1560042266305, 1, '2019060922001468051000029998', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (33, 3, 1560042312087, 1, '2019060922001468051000029999', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (34, 3, 1560042312087, 1, '2019060922001468051000029999', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (35, 3, 1560042700898, 1, '2019060922001468051000033238', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (36, 3, 1560042700898, 1, '2019060922001468051000033238', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (37, 3, 1560062595813, 1, '2019060922001468051000030000', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (38, 3, 1560062595813, 1, '2019060922001468051000030000', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (39, 2, 1560009601858, 1, '2020020622001468051000064568', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (40, 2, 1560009601858, 1, '2020020622001468051000064568', 'TRADE_SUCCESS', NULL, NULL);
INSERT INTO `pay_info` VALUES (41, 2, 1580980775491, 1, '2020020622001468051000064569', 'WAIT_BUYER_PAY', NULL, NULL);
INSERT INTO `pay_info` VALUES (42, 2, 1580980775491, 1, '2020020622001468051000064569', 'TRADE_SUCCESS', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for shipping
-- ----------------------------
DROP TABLE IF EXISTS `shipping`;
CREATE TABLE `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(20) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `receiver_province` varchar(20) DEFAULT NULL,
  `receiver_city` varchar(20) DEFAULT NULL,
  `receiver_district` varchar(20) DEFAULT NULL,
  `receiver_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shipping
-- ----------------------------
BEGIN;
INSERT INTO `shipping` VALUES (1, 2, 'hugoo', '15990184251', '浙江省', '杭州市', '余杭区', '杭州师范大学仓前校区');
INSERT INTO `shipping` VALUES (3, 2, '梦想：富婆', '15990184251', '浙江省', '杭州市', '余杭区', '杭州师范大学仓前校区');
INSERT INTO `shipping` VALUES (4, 2, '穷苦学生', '15990184251', '浙江省', '杭州市', '余杭区', '杭州师范大学仓前校区');
INSERT INTO `shipping` VALUES (5, 2, '梦想：富婆', '15990184251', '浙江省', '杭州市', '余杭区', '杭州师范大学仓前校区');
INSERT INTO `shipping` VALUES (7, 2, 'xxx', '13386528836', '浙江省', '杭州', '余杭区', '杭州师范大学');
INSERT INTO `shipping` VALUES (9, 3, '江爸爸', '12234234225', '浙江省', '包头市', '石拐矿区', '不知道什么地方');
INSERT INTO `shipping` VALUES (10, 3, '江霸霸', '13665891524', '浙江省', '包头市', '石拐矿区', '不知道什么地方');
INSERT INTO `shipping` VALUES (11, 3, '江流儿', '13386528836', '浙江省', '包头市', '石拐矿区', '不知道什么地方');
INSERT INTO `shipping` VALUES (12, 2, '刘二狗', '13386528836', '内蒙古', '包头市', '石拐矿区', '不知道什么地方');
INSERT INTO `shipping` VALUES (13, 2, '张三丰', '13386528836', '河北省', '邯郸市', '峰峰矿区', '不知道什么地方');
INSERT INTO `shipping` VALUES (14, 2, '易烊千玺', '13386528836', '天津市', '天津市', '南开区', '不知道什么地方');
INSERT INTO `shipping` VALUES (8, 3, '小可爱', '13398762537', '浙江省', '杭州市', '余杭区', '杭州师范大学仓前校区');
INSERT INTO `shipping` VALUES (15, 12, '江', '13386528836', '北京市', '北京市', '西城区', '最高的楼');
INSERT INTO `shipping` VALUES (16, 12, '艺', '13386528836', '江苏省', '南京市', '玄武区', '玄武湖中央');
INSERT INTO `shipping` VALUES (17, 3, 'hello', '12345678901', '河北省', '石家庄市', '长安区', '啊哈哈哈');
INSERT INTO `shipping` VALUES (18, 3, 'emm', '12232123364', '内蒙古', '赤峰市', '元宝山区', '不知道');
INSERT INTO `shipping` VALUES (20, 2, 'provence', '13386528836', '浙江省', '杭州', '余杭区', '杭州师范大学');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL COMMENT '0-管理员 1-普通',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (2, 'hugoo', '51446EB0517E749EA67571CF344513A4', '13665891524', '123456@163.com', 0);
INSERT INTO `user` VALUES (7, 'provence3658', 'A9E1682B788DC5D4B0FD9331000D895B', '13386528836', '455952945@qq.com', 0);
INSERT INTO `user` VALUES (9, 'test', '098F6BCD4621D373CADE4E832627B4F6', '11111111111', '111@11.com', 0);
INSERT INTO `user` VALUES (8, 'provence36', 'A9E1682B788DC5D4B0FD9331000D895B', '13386528836', '455952945@qq.com', 0);
INSERT INTO `user` VALUES (11, 'test1', '698D51A19D8A121CE581499D7B701668', '12345678901', '11@1.com', 0);
INSERT INTO `user` VALUES (1, 'admin', '21232F297A57A5A743894A0E4A801FC3', '', '', 1);
INSERT INTO `user` VALUES (12, 'test2', '698D51A19D8A121CE581499D7B701668', '12232123346', '11@11.com', 0);
INSERT INTO `user` VALUES (13, 'test4', '098F6BCD4621D373CADE4E832627B4F6', '12345678901', '11@11.com', 0);
INSERT INTO `user` VALUES (14, 'test7', 'B04083E53E242626595E2B8EA327E525', '111122223333', '11@qq.com', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
