-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        5.7.19-log - MySQL Community Server (GPL)
-- 伺服器操作系統:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 傾印 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

-- 傾印  表格 internetbookstore.account_profile 結構
CREATE TABLE IF NOT EXISTS `account_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(60) DEFAULT NULL,
  `cellphone` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `credit_card` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Account_profile_user_id_7cdd8c19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.account_profile 的資料：~3 rows (大約)
/*!40000 ALTER TABLE `account_profile` DISABLE KEYS */;
INSERT INTO `account_profile` (`id`, `address`, `cellphone`, `birthday`, `photo`, `credit_card`, `user_id`) VALUES
	(1, NULL, NULL, NULL, '', NULL, 3),
	(2, NULL, NULL, NULL, '', NULL, 4),
	(3, NULL, NULL, NULL, '', NULL, 5);
/*!40000 ALTER TABLE `account_profile` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_group 結構
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_group 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_group_permissions 結構
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_group_permissions 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_permission 結構
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_permission 的資料：~39 rows (大約)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add group', 2, 'add_group'),
	(5, 'Can change group', 2, 'change_group'),
	(6, 'Can delete group', 2, 'delete_group'),
	(7, 'Can add permission', 3, 'add_permission'),
	(8, 'Can change permission', 3, 'change_permission'),
	(9, 'Can delete permission', 3, 'delete_permission'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add book', 7, 'add_book'),
	(20, 'Can change book', 7, 'change_book'),
	(21, 'Can delete book', 7, 'delete_book'),
	(22, 'Can add comment', 8, 'add_comment'),
	(23, 'Can change comment', 8, 'change_comment'),
	(24, 'Can delete comment', 8, 'delete_comment'),
	(25, 'Can add discount policy', 9, 'add_discountpolicy'),
	(26, 'Can change discount policy', 9, 'change_discountpolicy'),
	(27, 'Can delete discount policy', 9, 'delete_discountpolicy'),
	(28, 'Can add category', 10, 'add_category'),
	(29, 'Can change category', 10, 'change_category'),
	(30, 'Can delete category', 10, 'delete_category'),
	(31, 'Can add order list', 11, 'add_orderlist'),
	(32, 'Can change order list', 11, 'change_orderlist'),
	(33, 'Can delete order list', 11, 'delete_orderlist'),
	(34, 'Can add order', 12, 'add_order'),
	(35, 'Can change order', 12, 'change_order'),
	(36, 'Can delete order', 12, 'delete_order'),
	(37, 'Can add profile', 13, 'add_profile'),
	(38, 'Can change profile', 13, 'change_profile'),
	(39, 'Can delete profile', 13, 'delete_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_user 結構
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_user 的資料：~3 rows (大約)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(3, 'pbkdf2_sha256$36000$ISrL9kWElUkL$NdGNpclwlMqUdBzUu5lahm0RZiVR5rAg/hRoJ8J5O4Y=', '2017-12-20 19:34:39.398965', 1, 'adm', '', '', 'wto2005716@yahoo.com.tw', 1, 1, '2017-12-20 18:33:52.885241'),
	(4, 'pbkdf2_sha256$36000$OnX9rNufXkxf$p/5wTw5s26IcD2yq6O/tFsu8A8YypqWr3ON4B/FOdDA=', '2017-12-20 19:24:05.318736', 0, 'asd', 'QQQ', '', 'asd@aaaaaa.aaa.aa', 0, 1, '2017-12-20 19:23:52.750212'),
	(5, 'pbkdf2_sha256$100000$YufaEcS88JJq$CBaPmpG5zPPlE2cwCcKhA7l+LErNg2NAZgHnIXs42j8=', '2017-12-23 02:39:10.724388', 1, 'admin', '', '', 'admin@yahoo.com.tw', 1, 1, '2017-12-21 09:27:38.106101');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_user_groups 結構
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_user_groups 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.auth_user_user_permissions 結構
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.auth_user_user_permissions 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.django_admin_log 結構
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.django_admin_log 的資料：~22 rows (大約)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2017-12-25 03:40:56.026047', '5', '鋼之鍊金術師15週年紀念版 (27冊合售)', 1, '[{"added": {}}]', 7, 5),
	(2, '2017-12-25 03:42:33.839117', '6', '同一個月亮', 1, '[{"added": {}}]', 7, 5),
	(3, '2017-12-25 03:43:16.721832', '5', '鋼之鍊金術師15週年紀念版 (27冊合售)', 2, '[{"changed": {"fields": ["description"]}}]', 7, 5),
	(4, '2017-12-25 03:45:07.946064', '7', '150CM LIFE', 1, '[{"added": {}}]', 7, 5),
	(5, '2017-12-25 03:46:45.773923', '8', '神風怪盜貞德 1-6 (完全版/6冊合售)', 1, '[{"added": {}}]', 7, 5),
	(6, '2017-12-25 03:48:25.369415', '9', '大正聯覺綺譚 (全)', 1, '[{"added": {}}]', 7, 5),
	(7, '2017-12-25 03:49:23.626622', '10', '偶像夢幻祭公式DEBUT BOOK (全)', 1, '[{"added": {}}]', 7, 5),
	(8, '2017-12-25 03:50:29.462235', '11', '深夜食堂 1', 1, '[{"added": {}}]', 7, 5),
	(9, '2017-12-25 03:51:45.109758', '12', '流星花園Next Season 1', 1, '[{"added": {}}]', 7, 5),
	(10, '2017-12-25 03:54:27.240832', '13', '彩雲國物語', 1, '[{"added": {}}]', 7, 5),
	(11, '2017-12-25 03:55:52.149070', '14', '名偵探柯南角色美術集', 1, '[{"added": {}}]', 7, 5),
	(12, '2017-12-25 03:57:10.635028', '15', '奇幻世界藝術&RPG地圖繪製講座', 1, '[{"added": {}}]', 7, 5),
	(13, '2017-12-25 03:58:27.822896', '16', '妖精森林的小不點 1', 1, '[{"added": {}}]', 7, 5),
	(14, '2017-12-25 04:00:18.335867', '17', '給他貓下去', 1, '[{"added": {}}]', 7, 5),
	(15, '2017-12-25 04:01:19.790230', '18', '抵達快樂, 請叫我', 1, '[{"added": {}}]', 7, 5),
	(16, '2017-12-25 04:02:35.468053', '19', '來貘新定義: Cherng出道五週年依舊一事無成特輯 (完全保存版)', 1, '[{"added": {}}]', 7, 5),
	(17, '2017-12-25 04:03:55.741910', '20', '蛋黃哥女子', 1, '[{"added": {}}]', 7, 5),
	(18, '2017-12-25 04:05:08.583059', '21', '她最近不在家喔! Anini的寄宿之旅', 1, '[{"added": {}}]', 7, 5),
	(19, '2017-12-25 04:06:47.854641', '22', '拉拉熊的生活: 推薦懶懶的每一天', 1, '[{"added": {}}]', 7, 5),
	(20, '2017-12-25 04:07:57.935886', '23', '忽遠忽近', 1, '[{"added": {}}]', 7, 5),
	(21, '2017-12-25 04:09:11.055508', '24', '花都之中 (全)', 1, '[{"added": {}}]', 7, 5),
	(22, '2017-12-25 04:09:46.186132', '6', '同一個月亮', 2, '[{"changed": {"fields": ["description"]}}]', 7, 5),
	(23, '2017-12-25 06:48:17.267628', '25', '相對論百年故事 (第2版)', 1, '[{"added": {}}]', 7, 5),
	(24, '2017-12-25 06:49:21.386527', '26', '詩性的宇宙: 一位物理學家尋找生命起源、宇宙與意義的旅程', 1, '[{"added": {}}]', 7, 5),
	(25, '2017-12-25 06:51:44.874110', '27', '圖解時間簡史', 1, '[{"added": {}}]', 7, 5),
	(26, '2017-12-25 06:53:48.377666', '28', '宇宙的寂寞心靈', 1, '[{"added": {}}]', 7, 5),
	(27, '2017-12-25 06:55:21.714357', '29', '火星上的人類學家 (新版)', 1, '[{"added": {}}]', 7, 5),
	(28, '2017-12-25 06:56:37.668369', '30', '宇宙必修課: 給大忙人的天文物理學入門攻略', 1, '[{"added": {}}]', 7, 5),
	(29, '2017-12-25 06:58:19.751975', '31', '太平洋天文學會天文觀測完全指南: 275+最實用的天文知識、觀星技巧、工具大全', 1, '[{"added": {}}]', 7, 5),
	(30, '2017-12-25 06:59:55.322197', '32', '太空旅行指南: 從宇宙現象、天體環境、生理準備到心理調適', 1, '[{"added": {}}]', 7, 5),
	(31, '2017-12-25 07:01:30.323808', '33', '台灣這裡有貓 (2018增修版)', 1, '[{"added": {}}]', 7, 5),
	(32, '2017-12-25 07:02:46.962454', '34', '生命解碼: 從量子物理、數學演算, 探索人類意識創造宇宙的生命真相', 1, '[{"added": {}}]', 7, 5),
	(33, '2017-12-25 07:04:09.172714', '35', '從解題著手懂配位化學', 1, '[{"added": {}}]', 7, 5),
	(34, '2017-12-25 07:08:29.721360', '36', '樂高機器人Mindstorms EV3創作坊', 1, '[{"added": {}}]', 7, 5),
	(35, '2017-12-25 07:12:16.581049', '37', 'Python x Arduino物聯網整合開發實戰', 1, '[{"added": {}}]', 7, 5),
	(36, '2017-12-25 07:15:58.543344', '38', '核電關鍵報告: 從福島事故細說能源、環保與工安', 1, '[{"added": {}}]', 7, 5),
	(37, '2017-12-25 07:17:09.896076', '39', '台灣的國家公園 (新版)', 1, '[{"added": {}}]', 7, 5),
	(38, '2017-12-25 07:18:13.232038', '40', '死亡與來世: 從火化到量子復活的編年史', 1, '[{"added": {}}]', 7, 5),
	(39, '2017-12-25 07:19:28.126263', '41', '像山一樣思考', 1, '[{"added": {}}]', 7, 5),
	(40, '2017-12-25 07:20:32.265854', '42', '最強貓咪讀心術: 教你完全掌握貓咪的心情!', 1, '[{"added": {}}]', 7, 5),
	(41, '2017-12-25 07:21:38.696445', '43', '早田文藏: 臺灣植物大命名時代', 1, '[{"added": {}}]', 7, 5),
	(42, '2017-12-25 07:22:27.039196', '44', '愛的萬物論: 史蒂芬．霍金與潔恩的真實故事', 1, '[{"added": {}}]', 7, 5),
	(43, '2017-12-25 07:30:15.030617', '45', '小さな家で楽しむスタイルのある暮らし', 1, '[{"added": {}}]', 7, 5),
	(44, '2017-12-25 07:31:44.093682', '46', 'Living with Pattern: Color, Texture, and Print at', 1, '[{"added": {}}]', 7, 5),
	(45, '2017-12-25 07:34:29.935367', '47', 'In the Mood for Colour', 1, '[{"added": {}}]', 7, 5),
	(46, '2017-12-25 07:35:47.662201', '48', 'Simple Home: Calm Spaces for Comfortable Living', 1, '[{"added": {}}]', 7, 5),
	(47, '2017-12-25 07:36:47.054703', '49', 'The English Country House', 1, '[{"added": {}}]', 7, 5),
	(48, '2017-12-25 07:37:37.887087', '50', 'At Home with Plants', 1, '[{"added": {}}]', 7, 5),
	(49, '2017-12-25 07:38:23.877809', '51', 'The Finer Things: Timeless Furniture, Textiles, an', 1, '[{"added": {}}]', 7, 5),
	(50, '2017-12-25 07:39:21.219683', '52', '美しい建築の写真集: 喫茶編', 1, '[{"added": {}}]', 7, 5),
	(51, '2017-12-25 07:40:42.603273', '53', 'Black + Architecture', 1, '[{"added": {}}]', 7, 5),
	(52, '2017-12-25 07:41:40.355141', '54', 'New Thai Style', 1, '[{"added": {}}]', 7, 5),
	(53, '2017-12-25 07:42:33.765918', '55', 'Re:Crafted: Interpretations of Craft in Contempora', 1, '[{"added": {}}]', 7, 5),
	(54, '2017-12-25 07:43:36.037008', '56', '50 Habitations Extraordinaires Pour Budget Ordinai', 1, '[{"added": {}}]', 7, 5),
	(55, '2017-12-25 07:44:19.375155', '57', 'Inside Prefab: The Ready-Made Interior', 1, '[{"added": {}}]', 7, 5),
	(56, '2017-12-25 07:45:43.941386', '58', 'Mies van der Rohe (New Ed.)', 1, '[{"added": {}}]', 7, 5),
	(57, '2017-12-25 07:46:57.744244', '59', 'Happy Home', 1, '[{"added": {}}]', 7, 5),
	(58, '2017-12-25 07:47:51.476868', '60', 'Stijlvol Wonen V (荷蘭文版)', 1, '[{"added": {}}]', 7, 5),
	(59, '2017-12-25 07:49:13.835463', '61', 'Living Homes', 1, '[{"added": {}}]', 7, 5),
	(60, '2017-12-25 07:50:26.924627', '62', 'インテリアトレンドビジョン 2016', 1, '[{"added": {}}]', 7, 5),
	(61, '2017-12-25 07:52:12.574878', '63', 'Sommeliers\' Heaven: The Greatest Wine Cellars of t', 1, '[{"added": {}}]', 7, 5),
	(62, '2017-12-25 07:55:02.540225', '64', 'Massive, Expressive, Sculptural', 1, '[{"added": {}}]', 7, 5),
	(63, '2017-12-25 07:56:01.670103', '63', 'Sommeliers\' Heaven', 2, '[{"changed": {"fields": ["bookname"]}}]', 7, 5),
	(64, '2017-12-25 07:56:13.774973', '46', 'Living with Pattern', 2, '[{"changed": {"fields": ["bookname"]}}]', 7, 5),
	(65, '2017-12-25 07:56:24.072066', '55', 'Re:Crafted', 2, '[{"changed": {"fields": ["bookname"]}}]', 7, 5),
	(66, '2017-12-25 07:58:59.868376', '51', 'The Finer Things', 2, '[{"changed": {"fields": ["bookname"]}}]', 7, 5),
	(67, '2017-12-25 08:00:54.316335', '56', '50Habitations Extraordinaires Pour BudgetOrdinaire', 2, '[{"changed": {"fields": ["bookname"]}}]', 7, 5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.django_content_type 結構
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.django_content_type 的資料：~13 rows (大約)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(13, 'Account', 'profile'),
	(1, 'admin', 'logentry'),
	(2, 'auth', 'group'),
	(3, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'IB', 'book'),
	(10, 'IB', 'category'),
	(8, 'IB', 'comment'),
	(9, 'IB', 'discountpolicy'),
	(12, 'orders', 'order'),
	(11, 'orders', 'orderlist'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.django_migrations 結構
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.django_migrations 的資料：~17 rows (大約)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2017-12-18 18:51:52.731539'),
	(2, 'auth', '0001_initial', '2017-12-18 18:52:02.720525'),
	(3, 'Account', '0001_initial', '2017-12-18 18:52:04.116698'),
	(4, 'IB', '0001_initial', '2017-12-18 18:52:10.457593'),
	(5, 'admin', '0001_initial', '2017-12-18 18:52:12.573570'),
	(6, 'admin', '0002_logentry_remove_auto_add', '2017-12-18 18:52:12.611955'),
	(7, 'contenttypes', '0002_remove_content_type_name', '2017-12-18 18:52:25.654566'),
	(8, 'auth', '0002_alter_permission_name_max_length', '2017-12-18 18:52:26.432081'),
	(9, 'auth', '0003_alter_user_email_max_length', '2017-12-18 18:52:27.474875'),
	(10, 'auth', '0004_alter_user_username_opts', '2017-12-18 18:52:27.516342'),
	(11, 'auth', '0005_alter_user_last_login_null', '2017-12-18 18:52:28.174343'),
	(12, 'auth', '0006_require_contenttypes_0002', '2017-12-18 18:52:28.202009'),
	(13, 'auth', '0007_alter_validators_add_error_messages', '2017-12-18 18:52:28.275518'),
	(14, 'auth', '0008_alter_user_username_max_length', '2017-12-18 18:52:28.908439'),
	(15, 'orders', '0001_initial', '2017-12-18 18:52:32.841793'),
	(16, 'sessions', '0001_initial', '2017-12-18 18:52:33.554787'),
	(17, 'Account', '0002_auto_20171221_0230', '2017-12-20 18:30:16.971786');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.django_session 結構
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.django_session 的資料：~13 rows (大約)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('2ipu5pxokl5gud81nkol52aogxprrnup', 'NWQzYjQ5ZTJjYTc0NjVlMjA0NTYyNWRkNmM1OTNkMGNjOTYyYWFhNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiY2FydCI6e30sIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTM0YWM1NzNhNjFlN2I3MThiNWRhNjkxZTM4N2ZhNjRmYzI2YmM4MyJ9', '2018-01-04 09:28:52.224730'),
	('3s7htbfzjgg891atqtdggxyhaioivjvn', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-04 09:24:51.850222'),
	('bo2w89iri4sqdshxopv3lnzuguohrcrq', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 19:01:50.672938'),
	('i5ifgsxkuzqe8v2eo5jgy3062o7c64zw', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:46:16.158966'),
	('idut2wh8trmwkhhhn43co0g5s7ke0gzx', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:56:06.739855'),
	('m4ddngbwsuyvoh700ux7v4mlw8wfko0y', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:45:28.190842'),
	('nqi2ggf5wgesew03buy9h62gutspp5u6', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:52:19.531525'),
	('qy501miqlrmdczjgbo9c9yqsyp9qgf35', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:45:50.206837'),
	('qyyk2sbjchuu4l1ex6em2t0tsrxtf5rv', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:40:03.020130'),
	('wx8c31poi0r9k0r0vqdyzj7snq3mkaib', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:51:36.030047'),
	('xfs8etntzta8i2fbrh84aoo9q59o5prb', 'YzEzNjRkMDBhMmNlOGVhY2VkMDNhM2NhYmU5NzUzNDFlNTM0ZTA2MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlOThmNzJlYjE0ZGZjNWFjYWE0MWM1YjcyOWE4NWYwNTI1MDQxZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiNSJ9', '2018-01-08 08:00:54.585051'),
	('zlzvfx40ol88bil88taf8qfijelkk52a', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:45:13.832967'),
	('zm1mtdyx73wdvj85ig16nlbej6lrjz47', 'ZTkyYzNiMjg1MjdjZmQwNmM4MjhmZjY3ZjMyZGYxYjc0NDA4M2ZmMzp7ImNhcnQiOnt9fQ==', '2018-01-03 18:37:39.468085');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.ib_book 結構
CREATE TABLE IF NOT EXISTS `ib_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(30) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `publish_date` date NOT NULL,
  `description` longtext,
  `photo` varchar(200) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `IB_book_id_slug_91e16f65_idx` (`id`,`slug`),
  KEY `IB_book_bookname_5bce66ec` (`bookname`),
  KEY `IB_book_slug_09347f60` (`slug`),
  KEY `IB_book_category_id_81003bf1` (`category_id`),
  CONSTRAINT `IB_book_category_id_81003bf1_fk_IB_category_id` FOREIGN KEY (`category_id`) REFERENCES `ib_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.ib_book 的資料：~24 rows (大約)
/*!40000 ALTER TABLE `ib_book` DISABLE KEYS */;
INSERT INTO `ib_book` (`id`, `isbn`, `bookname`, `slug`, `author`, `publisher`, `publish_date`, `description`, `photo`, `state`, `price`, `stock`, `language`, `category_id`) VALUES
	(1, '9869539327', '傾我所有去生活', 'literature', '蘇美', '避風港文化有限公司', '2017-12-13', '「在這個兵荒馬亂、朝不保夕的世界裡，人人都在留後路。想到還能離婚，才敢結婚；想到共同財產能夠瓜分，才敢買房……其實，一切都沒你想像的那麼重要，給點娛樂精神好不好！」\r\n──大齡文藝女青年、人母、人妻、人師／蘇美\r\n\r\n人生況味千千萬，酸甜苦辣都必須和血吞\r\n不必非得積極，卻得用心體會\r\n向生活，致敬！', 'http://pic.eslite.com/Upload/Product/201712/m/636478003119395644.jpg', 1, 300, 10, 'CH', 1),
	(2, '9869390978', '第二個家 見', 'art', '謝佳見', '凱特文化創意股份有限公司', '2017-12-20', '台北生活是一則說不完的故事， \r\n每天有新的敘事風格，結局永遠未定； \r\n而他決定為你停留，相約在每一個溫暖之處。 \r\n\r\n◎演技派優雅男神—謝佳見的寫真首部作，與你共享在台北的零距離生活。 \r\n◎完整陳述演藝工作與生活的心緒歷程，屬於謝佳見的絕對真實面。 \r\n\r\n由馬來西亞到台北，從零開始，全然陌生的台北生活像一場豁出一切的冒險，詮釋戲劇角色的過程中，同樣在現實的異鄉，形塑全新可能。如劇情瞬變的小說，謝佳見以文字與影像同步傳遞在城市裡的經驗與探索，轉場換景之間，與所有人一起重返最初。', 'http://pic.eslite.com/Upload/Product/201712/m/636477144202908750.jpg', 1, 450, 20, 'CH', 2),
	(3, '9863124842', '我在SOU．SOU的設計工作: 京都傳統風的時尚新美學  伝統の続きをデザインする: SOU．SOU', 'life', '若林剛之', '旗標科技股份有限公司', '2017-12-29', '「SOU‧SOU」是來自京都的在地品牌，目前已成功行銷全球，在台灣全聯、Uniqlo、誠品書店文具館也曾造成搶購風潮，更有許多粉絲直接殺到京都和東京的專賣店購買。這就是「SOU‧SOU」的迷人魅力，以充滿現代感、時尚可愛的設計產品，將在地品牌行銷到全世界。 \r\n\r\n「SOU‧SOU」創立的目標並非為了賺錢，而是希望藉由精美的設計，扶植和復興日本傳統工藝。經過十多年的努力，隨著「SOU‧SOU」行銷世界各地，包含分趾鞋、伊勢木棉、染布工廠等許多老工廠與老師傅，都隨著「SOU‧SOU」的成功而找到重生的力量。 \r\n\r\n「SOU‧SOU」這個品牌的成立，其實來自偶然的緣分。身為服裝設計師的若林剛之先生 (本書作者) 為了裝潢自宅，認識了辻村久信建築師，又透過辻村先生的案子認識了布料紋樣設計師––脇阪克二先生。三人越聊越投機，決定共同創立這個在地品牌。剛起步時其實遭逢許多困難，完全賣不出去，直到一雙「足袋」(分趾鞋) 奇蹟似地拯救了一間公司……。 \r\n\r\n如果你喜愛「SOU‧SOU」的設計產品，絕對不可錯過這本書！創辦人之一的若林剛之先生將親自告訴你「SOU‧SOU」的故事。', 'http://pic.eslite.com/Upload/Product/201712/m/636481458184106250.jpg', 1, 350, 20, 'CH', 3),
	(4, '9864773720', '看漫畫了解人體感官  The Senses', 'science', '馬泰歐．法瑞內拉 Matteo Farinella', '商周出版', '2017-12-14', '◎入圍第八屆吳大猷科學普及著作獎青少年特別獎 \r\n\r\n透過撫觸能增加早產兒的體重？舌頭其實沒有味覺分區？何以美味的馬德蓮蛋糕會使得普魯斯特想起過去的回憶？我們的耳朵如何接收空氣中的振動？什麼情況會讓我們「視而不見」？ \r\n\r\n跟著畫中人物走進感官的世界，造訪四種觸覺受器，近距離檢視我們的味蕾，探索氣味如何連結到記憶，還有視錯覺如何誘使眼睛看到根本不存在之物…… \r\n\r\n在這本幽默、充滿細節且同樣易於親近的書中，神經科學家馬泰歐．法瑞內拉將再次透過就連最少接觸科學的讀者也會喜歡的插畫與圖像，帶領大家踏上狂野的科學之旅，認識關於五感的重要學者與迷人事實，並解釋最先端的科學研究。', 'http://pic.eslite.com/Upload/Product/201712/m/636481460310981250.jpg', 1, 300, 20, 'CH', 5),
	(5, '0945553374', '鋼之鍊金術師15週年紀念版 (27冊合售)', 'comics', '荒川弘', '東立出版社有限公司', '2017-12-21', '隨著日本即將上映《鋼之鍊金術師》的真人電影版，\r\n這次的全套再版上市，加上精美典藏書盒，邀請您再次收藏這份感動！\r\n\r\n以鍊金術為背景的經典作品《鋼之鍊金術師》，自2002年於日本發行第一本單行本以來，已經經過了15年的時間，卻絲毫沒有削減《鋼之鍊金術師》在讀者心中的地位與熱情！愛德華與阿爾的旅程與戰鬥，持續風靡於全世界！\r\n\r\n愛德華與阿爾馮斯兩兄弟，為了讓死去的母親復活而使用鍊金術，但是鍊金失敗使愛德華失去了左腳，讓阿爾馮斯失去了肉體。於是愛德華用自己的右手作為鍊金的代價，讓阿爾馮斯的魂魄成功附在盔甲上。經歷巨變的兩人為了取回一切，踏上了尋找「賢者之石」的旅程！', 'http://pic.eslite.com/Upload/Product/201711/m/636470227439368750.jpg', 1, 270, 10, 'CH', 4),
	(6, '9862138289', '同一個月亮', 'comics', '幾米', '大塊文化出版股份有限公司', '2017-10-03', '◎ 簡潔。優美。溫柔。深沉。\r\n幾米繪本創作20週年力作！\r\n◎ 幾米獻給世界的溫柔純真作品，渾然優美又極度凌厲。\r\n◎ 面對變動的世界，得靠溫柔與堅定的信念，幾米透過動人的圖畫故事傳遞人與人之間的親密感，在故事裡表現出對生命的恆久信念。\r\n◎ 台灣當代創作中難得一見的觸及戰爭議題的作品，面對世界性的共同困境，以舉世皆然的同理情感去包容。\r\n\r\n翰翰在窗邊等待，像是在期待誰到家裡來。\r\n翰翰看到獅子向家裡走來，翰翰開門讓獅子進來，幫牠把腳上的鐵釘拔掉，溫柔地替牠包紮，獅子感謝翰翰。\r\n之後大象以及鶴都陸續來找翰翰，希望翰翰幫牠們的傷口包紮。\r\n但翰翰還是很緊張、很期待地在窗前等候，他在等很久不見的爸爸回來⋯⋯\r\n\r\n《同一個月亮》是幾米獻給世界的溫暖純真作品，渾然優美又極度凌厲，以兒童純真盼望的角度出發，觸及了所有人心中對於和平安好的深深期盼。', 'http://pic.eslite.com/Upload/Product/201710/m/636425542526108750.jpg', 1, 350, 20, 'CH', 4),
	(7, '9574556867', '150CM LIFE', 'comics', '高木直子', '大田出版有限公司', '2004-06-01', '身高過了15歲就一直停留在150公分的作者，覺得世界上的東西多半都大了點兒，和別人講話總是要抬起脖子、衣服袖子太長、拿高處東西總得踮起腳尖、走路總是不自覺的加快腳步，這些對作者而言都是日常生活中理所當然的事情。雖不喜歡因為個子矮小所帶來的諸多不便，但若是有人因為我個子矮對我特別好的話，我也會因為這樣覺得「其實小個子也蠻好的！」\r\n作者利用圖配文的方式描繪出由150cm的高度所看到的種種，及感受到的心情。希望這本書可以得到現在跟作者同樣身高的你我產生共鳴，個子高的人也可想起曾經逝去的那段150cm時光。', 'http://pic.eslite.com/Upload/Product/200810/m/633598477084375000.JPG', 1, 200, 5, 'CH', 4),
	(8, '2966353163', '神風怪盜貞德 1-6 (完全版/6冊合售)', 'comics', '種村有菜', '尖端出版', '2017-12-01', '◎種村有菜20周年豪華完全版，一次擁有最完整的感動回憶！ \r\n◎套書加碼：附贈全新繪製A5收藏卡5張 \r\n\r\n◎不得不收藏的4大理由 \r\n(1)完全版封面6集全新繪製，燙金高質感呈現！\r\n(2)製作祕辛短漫、番外篇16P全新繪製\r\n(3)內彩6集全新繪製 \r\n(4)連載時期的88P彩圖完整收錄 \r\n\r\n小栗表面上是一個普通的女孩， 但實際上卻是令大家為之騷動的怪盜貞德。 為了收服躲藏在圖畫裡的惡魔， 貞德今夜也將飛躍在月光之中。', 'http://pic.eslite.com/Upload/Product/201711/m/636465042961200000.jpg', 1, 1680, 10, 'CH', 4),
	(9, '9864745271', '大正聯覺綺譚 (全)', 'comics', '梶井祐', '長鴻出版社股份有限公司', '2017-12-06', '時值大正。\r\n能藉由聲音的顏色看穿他人真心的響。\r\n以及她所邂逅的一名少年・昴。\r\n這名少年竟有一個天大的秘密…!?\r\n\r\n有個願意相信自己的人存在。\r\n有個需要自己的人存在。\r\n描繪孤獨與牽絆的人性奇幻故事。', 'http://pic.eslite.com/Upload/Product/201710/m/636439367278201250.jpg', 1, 100, 30, 'CH', 4),
	(10, '9864862863', '偶像夢幻祭公式DEBUT BOOK (全)', 'comics', 'ムック', '東立出版社有限公司', '2017-08-25', '◎書本體有序號卡\r\n\r\n最夢幻的手機遊戲「偶像夢幻祭」的第一本導讀書出爐了！轉入這所坐落在面朝大海的山丘上，專門培育偶像的夢之咲學院的製作人科的您，是有著特殊立場的轉學生。在此您得學習如何訓練偶像，讓他們閃亮登台！本書中除了有偶像們的詳細基本資料外，還歸納了讓您更樂於遊戲中的七大重點！想更接近偶像，了解遊戲秘訣就不能錯過！', 'http://pic.eslite.com/Upload/Product/201707/m/636367413075761250.jpg', 1, 240, 20, 'CH', 4),
	(11, '9868703670', '深夜食堂 1', 'comics', '安倍夜郎', '新經典圖文傳播有限公司', '2011-10-26', '下班後的深夜，\r\n總有個地方等著你光臨……\r\n吃飽了，心暖了，\r\n明天再繼續加油！\r\n\r\n療癒日本百萬讀者的日常酒飯事，暖心開張！\r\n\r\n工頭堅、王宣一、吳念真、青木由香、馬家輝、張大春、\r\n葉怡蘭、黎智英、歐陽應霽──感動推薦（按筆劃排列）\r\n\r\n◎第55回小學館漫畫大賞得獎之作\r\n◎二度改編日劇播映，觀眾一致好評推薦\r\n◎全系列銷量突破百萬冊！\r\n\r\n「一天又結束了，當人們趕路回家的時候，我的一天才正式開始。菜單只有牆上寫的這些，你也可以點你想吃的，我做得出來就幫你做，這就是我的經營方針。營業時間從午夜十二點到早上七點，人們稱這兒叫『深夜食堂』。你問會不會有客人來？喔，還不少喔！」\r\n\r\n安倍夜郎的作品《深夜食堂》以都會區巷弄裡從深夜開始營業的食堂為舞台，將老闆做出的平民料理，與形形色色的客人的故事融合，時而溫馨時而憂愁，不僅散發料理的香氣，也洋溢最質樸的人情味。\r\n\r\n不管是黑道大哥的純情回憶、半紅不黑演歌女歌手奮鬥史，或是AV男優與家庭的羈絆，都在食堂老闆做出一道道平凡但美味的料理後，故事就展開了。每一集劇情把主軸放在各個階層、不同身份的客人身上，用人與人的關係將故事連結，用料理帶著故事前進，看著看著甚至覺得闔上書本，拿著錢包下樓，走到巷口轉角，深夜食堂就在那裡亮著暖暖的黃光，等著你光臨。', 'http://pic.eslite.com/Upload/Product/201110/m/634546995175137500.jpg', 1, 200, 10, 'CH', 4),
	(12, '9864626175', '流星花園Next Season 1', 'comics', '神尾葉子', '東立出版社有限公司', '2015-12-31', 'F4從英德學園畢業之後過了2年，由於競爭學校的出現，使英德學園的頂尖地位岌岌可危，憧憬道明寺司的神樂木晴成立了「Correct5」，為維護學園的水準而開始狩獵平民。江戶川音雖然身為隱性平民，卻基於某些理由就讀英德學園。某天她在便利商店打工時，撞見來拿怪異郵購商品的神樂木。兩人知道了彼此的秘密後，將會擦出怎樣的火花？英德學園掀起全新的戀愛喜劇。', 'http://pic.eslite.com/Upload/Product/201602/m/635913293783100000.jpg', 1, 100, 30, 'CH', 4),
	(13, '9861741968', '彩雲國物語', 'comics', '由羅カイリ', '台灣角川股份有限公司', '2006-11-28', '由《彩雲國物語》系列原作小說改編繪製而成的作品。由知名插畫家由羅カイリ擔任繪製工作，將多采多姿的《彩雲國物語》世界以流暢的畫風和充滿中國風味的場景呈獻給各位讀者，書中對於服裝、擺設等皆有細緻的描繪。不僅將文字化為鮮活的圖像，更將在小說中出現的俊男美女和高潮迭起的劇情完整呈現。喜愛《彩雲國物語》小說作品，以及對時下流行的中國風與歷史奇幻作品有興趣的讀者，千萬不能錯過！\r\n紅秀麗是「彩雲國」的名門貴族‧紅家的千金小姐，然而紅家家計拮据，因此秀麗每天都拚命地工作！就在此時，出價五百兩黃金來教育「年輕昏君」的工作找上了秀麗。秀麗馬上就被優渥的條件所吸引，不過在這段期間中她必須以貴妃的身分進入後宮……事情到底會變成怎麼樣？絢爛豪華的貧窮（？）千金小姐力爭上游的故事第1集！', 'http://pic.eslite.com/Upload/Product/200611/m/2680213810009m.jpg', 1, 110, 5, 'CH', 4),
	(14, '801601612X', '名偵探柯南角色美術集', 'comics', '青山剛昌', '青文出版社股份有限公司', '2015-12-25', '◎總共收錄111位名偵探柯南主要角色之詳盡介紹!!\r\n◎故事導覽以分門別類的方式整理出特別重要的劇情讓讀者更了解柯南的世界!!\r\n◎還有首度公開的動畫版設定資料喔!!\r\n◎隨書附贈B3雙面海報唷!!\r\n\r\n「真相永遠只有一個！」\r\n令大人小孩都著迷的《名偵探柯南》\r\n在原作迎接20週年的同時，電視動畫含劇場版在內也堂堂邁入第19週年。\r\n長年以來一直吸引大小粉絲熱愛的《名偵探柯南》。\r\n接連不斷發生的案件、抽絲剝繭解開圈套、眾多登場人物交織的複雜人際關係。\r\n鋪設層層伏筆，逐一撥雲見日的故事──\r\n本書要將《名偵探柯南》獨一無二的世界觀，毫無保留地呈現在大家面前，\r\n以各個深具魅力的主要人為主軸向大家全面公開\r\n電視動畫版《名偵探柯南》故事劇情及設定草稿等20年來的軌跡！', 'http://pic.eslite.com/Upload/Product/201512/m/635860242844240000.jpg', 1, 299, 10, 'CH', 4),
	(15, '9863771716', '奇幻世界藝術&RPG地圖繪製講座', 'comics', 'Jared Blando', '楓書坊文化出版社', '2016-04-01', '～創造冒險世界中的虛擬實境場景～ \r\n疆域、城堡、戰場、山脈、森林與海怪等， \r\n全數由你掌握！ \r\n\r\n◎30堂實用RPG地圖繪製講座！ \r\n\r\n◎全景構圖：為各種地形添加層次和整體布局，參差的海岸線、雄壯的山脈、濃密的森林，以及遼闊的原野的超逼真繪製技巧教學。 \r\n\r\n◎圖示造型：描繪符號與圖案，為城鎮、都市、堡壘以及橋樑等重要地點設計出簡單明瞭的形象。 \r\n\r\n◎字型設計：如何書寫「標準體」字型，也介紹「裝飾體」的風格，創造出屬於半獸人、精靈族、維京人以及龍族的字型。 \r\n\r\n◎徽章與盾徽設計：為奇幻世界裡的各種文明與勢力設計徽章，以及說明如何運用色彩來表達疆界。 \r\n\r\n◎進階製圖技巧：描繪各種地標、王國邊界與行政疆界；畫出各種道路，供商人與軍隊使用，另外還有巨人洞窟與龍穴。另有別緻的背景邊飾、精美的羅盤，以及詳細的圖例框。 \r\n\r\n奇幻世界中， \r\n充滿了許多華麗的人物、城堡以及史詩般的戰爭場景， \r\n這些動人的創作，需要藉由精心描繪的地圖襯托， \r\n才能在遊戲裡活靈活現。 \r\n\r\n地圖的魔力就是這麼神奇， \r\n不用文字，只靠畫筆就能創造出所有的疆界領域、城邦以及王國， \r\n讓讀者與故事的旋律產生共鳴， \r\n仿佛進入了創作者的想像空間，親眼目睹故事裡的人物和世界。 \r\n\r\n奇幻世界地圖的種類形形色色， \r\n從全覽圖、地域圖、城市圖到巨細靡遺的特定房舍描繪，項目繁多； \r\n本書採用淺顯易懂的方式，從基礎開始，慢慢地帶著你掌握製圖技巧， \r\n畫出自己的地圖， \r\n無論是雄偉的高山、遼闊的大地、磅礴的海洋，都難不倒你。 \r\n\r\n在這趟充滿驚喜的旅程中， \r\nRPG奇幻地圖的創作名家Jared Blando會親自擔任嚮導， \r\n協助讀者取得豐碩的成果。', 'http://pic.eslite.com/Upload/Product/201604/m/635950962469576250.jpg', 1, 350, 20, 'CH', 4),
	(16, '9863651907', '妖精森林的小不點 1', 'comics', '樫木祐人', '東立出版社有限公司', '2014-12-08', '本書的主角是個身高９公分的小小女孩御子地跟白明，原本不相識的兩人誤打誤撞而住在同一個屋簷下。白明是個行動派，某天看到報紙上有人目擊到夕陽鷹出沒，馬上就準備好東西拉著御子地上山去等，後來才發現原來夕陽鷹曾經是御子地在１０年前曾經短暫飼養過的白鳥。御子地歌聲還不錯，還被票選為今年的歌姬，使得原本以為只有自己才有資格的吟遊詩人‧康居相當不滿，不過後來也成了朋友。', 'http://pic.eslite.com/Upload/Product/201412/m/635536468711357500.jpg', 1, 130, 5, 'CH', 4),
	(17, '986935274X', '給他貓下去', 'comics', '蔡有利', '一起來出版', '2016-10-05', '連載十年，排行冠軍！\r\n\r\n \r\n\r\n「每看兩頁，心就融化一次；看完整本書，心就被偷走了！」──百萬鏟屎官共同見證\r\n\r\n \r\n\r\n自從被喵星人撿到的那一刻起，\r\n\r\n我的心就像被貓了一拳，從此痛（？）並快樂著（！）\r\n\r\n \r\n\r\n與這些浪浪相識的第一天，至今為止十多年的同居生活。\r\n\r\n有笑，有淚；有療癒，有崩潰（哭～）\r\n\r\n　「初次見面時，心跳加快的那一瞬間還記憶猶新，如今已經一起生活超過十個年頭。原本連自己都照顧不好，自從和這些毛孩生活以後，我才學會了如何去愛，如何負責，並且看見了小生命裡的大宇宙。」\r\n\r\n　　這是一個發生在女孩與四隻小貓之間的奇妙而真實的故事。她從茫然無知、只會口口聲聲說喜歡貓，卻不懂如何為喜歡的小生物負責，逐漸開始熟悉貓咪這種奇妙而有趣的小生物。在困惑窘迫的日子裡，因為有了小貓的陪伴，心情變得明朗，也更加有鬥志；因為有了他們，所以更懂得珍惜眼前的生活和身邊的生命。\r\n\r\n　　時而吵鬧，時而歡笑，時而離別，時而重逢，時而悲傷，時而溫暖……\r\n\r\n　　即使生活有點窘迫、未來有些迷茫，有喵相伴，天天都是好時光！\r\n\r\n鏟屎官簡介\r\n\r\n這部漫畫整整花了十年，才有今日的成品。作者原本從事設計、插畫工作，最初只是因為好玩，順手將流浪貓博多和查古的故事畫下來，刊登在自己的網頁和經常拜訪的網站上，沒想到讀者們反應熱烈，很快便受邀在知名網站「Daum漫畫世界」刊登連載，一路持續到現在。作者表示：「當我想要停筆的時候，剛好有了正式連載的機會，未來希望自己可以一直這樣畫下去。」\r\n\r\n　這十年也為作者的人生帶來了許多改變。自從正式連載以後，「網路漫畫作家」就成了她的職業。原本強烈反對養貓的父母，現在也因為家中有貓而笑口常開。\r\n\r\n　　「我自己也是自從養了貓以後，才深刻領悟到其他動物的生命其實也像他們一樣珍貴的事實，並且打破了許多自己過去的偏見。我希望藉由這部漫畫作品，多少可以讓一些人對這世上的萬物不再抱有偏見。」作者對《給他貓下去》只有一個期許：「讓讀者感受到生命的珍貴，並成為讀者日常生活中的小小安慰。」', 'http://pic.eslite.com/Upload/Product/201610/m/636109078673740524.jpg', 1, 320, 25, 'CH', 4),
	(18, '9864402080', '抵達快樂, 請叫我', 'comics', '鄧九雲/ Josef Lee', '維京國際股份有限公司', '2017-12-01', '◎網路競相傳播分享，獨立出版募資30天迅速達標\r\n◎感動上萬網友，熱淚認同：「這是屬於每一個人的故事。」\r\n去蕪存菁，沉澱後再洗鍊；這次，作品將因嶄新詮釋而更深刻，復生又似重生 \r\n關於那些──「初衷與快樂、旅行與流浪、起點與回家、自己與自己的記憶」 \r\n◎【正式臺灣版】隨書附贈新創作雙面海報～ \r\n\r\n●Josef Lee全新繪製臺灣版代表景致圖像 \r\n●演員、作家雙棲──鄧九雲，為故事感動而寫下的極具渲染之作 \r\n●不只限量，僅此番機會可一次珍藏兩種藝術碰撞的火花！ \r\n\r\n一個老人，一邊回憶著從前一邊尋找心中的樂土（Happy Land）而踏上旅程。在搭上火車的同時，他拿出一張紙，寫上：抵達快樂，請叫我。 \r\n老人帶著這張紙、打著瞌睡走過許多地方：紐約、日本、歐洲；經歷許多特別的活動：搭熱汽球、放天燈……但這趟旅程裡，老人未曾張開眼睛過，也沒有人試圖叫醒他。 \r\n直到一位小女孩突然主動拉了拉他的衣袖，這時才發現，原來心中汲汲尋求的樂土，就在這裡…… \r\n\r\n◎兩種藝術碰撞的火花──鄧九雲v.s. Josef Lee \r\n以真澄無垢的文字朗讀出圖畫如午後灑在窗臺邊的溫煦陽光 \r\n給大人的故事書，沒有過多的修飾、引導，只有淬煉過的文字，如同人生。窮極一生，我們汲汲營營的尋找樂土，如同老人。我們也都拿著一張看得見或是隱形的紙，如同老人。 \r\n\r\n◎圖文書創作者Josef Lee與作家鄧九雲跨界合作，隨書附贈【正式臺灣版　雙面海報】，除書籍本身充滿隱喻、想像、深刻的圖像外，透過書外紙上對話，用最精簡的文字淬鍊出最濃郁而力道十足的閱讀風景。重新瀏覽此書，就這麼一次機會。所有驚喜在圖與文的對話間，缺一不可！ \r\n\r\nWake me up at Happy Land. \r\n抵達快樂，請叫我。 \r\n\r\n你在快樂裡了嗎？', 'http://pic.eslite.com/Upload/Product/201711/m/636468499395306250.jpg', 1, 450, 20, 'CH', 4),
	(19, '9571370096', '來貘新定義: Cherng出道五週年依舊一事無成特輯 (完全保存版)', 'comics', 'Cherng', '時報文化出版企業股份有限公司', '2017-06-20', '國際知名插畫家Cherng\r\n出道以來創作精華\r\n（四面楚歌、嘔心瀝血、氣數已盡）\r\n錯過這一本，請再等五十年！\r\n圖文作家史上最厚400頁創作精選，精美線裝銀色書衣完全保存版\r\n『全新長篇漫畫創作＋五週年最強企畫內容』\r\n\r\n●最正宗來貘進化史，絕對機密大公開！\r\n●新創圖文長篇漫畫，綠豆湯女孩、來貘、牙齒三姐妹……經典角色同台共舞\r\n●森永來貘子、西武鐵道、大同電鍋……十大跨界文創幕後暗黑祕辛\r\n●犀利開講人際關係圖文指南，生活‧網路‧愛情‧穿搭面面俱到\r\n●一針見血垃圾話生活分析，絕無僅有文情並茂12篇\r\n●爭奇鬥艷，你應該知道的15大插畫家祝賀圖真情網羅！！！\r\n●親朋好友的赤裸告白，最被TOUCH到的那個摸門\r\n『一個成功的角色最少需要維持五年熱度』\r\n\r\n什麼才五年啊？五年算什麼啦！來貘、圓仔、黑仔、牙齒三姐妹、綠豆湯女孩、美珍……真沒想到這些每一個你我耳熟能詳的經典角色，辛辣又一針見血的圖文已經問世五年了！《來貘新定義》Cherng將歷年作品中的角色（嘔心瀝血的新創長篇漫畫）、經典十大跨界文創案例、犀利開講人生道理圖文指南、鮮少曝光的垃圾話寫作才華……精選集結成冊，其中還有很多是從未公開講過的故事和創作過程（甚至黑暗祕辛？），包山包海、耗盡畢生（短短27年？）元氣、排山倒海全部吐出來……，展現各種不同面向的創作才華（真是一名千面男子），讓端出來的東西都讓人有耳目一新的感覺，重新自我定義！', 'http://pic.eslite.com/Upload/Product/201706/m/636319891142581250.jpg', 1, 380, 35, 'CH', 4),
	(20, '9571067180', '蛋黃哥女子', 'comics', 'Sanrio', '尖端出版', '2016-09-27', '反應出現在女性同胞們最真實的日常生活\r\n「蛋黃哥女子」持續發懶增殖中……\r\n\r\n「水煮也好吃，油煎也美味，生吃還是很涮嘴。雖然料理方法有千百種，但就是渾身提不起勁的蛋黃哥。你正準備要入口的這顆蛋，是不是也這麼軟趴趴沒力呢？「蛋黃哥」對於自己只能被吃下肚的命運感到絕望，因此對於周遭的事物完全不放在眼裡，只會我行我素，想到什麼就給它有話直直說。\r\n\r\n而生活在現代社會中的女生們，工作、戀愛、人際關係……每天都有各種煩惱在發生，即使我有話要說也不敢說出來，有些人只能在內心深處偷偷地與「蛋黃哥」共鳴；還有一到假日就全面懶散，做什麼事都無精打采嫌麻煩，一整天下來只能渾渾噩噩度過，簡直就像是「蛋黃哥」的翻版。以上這些與「蛋黃哥」共感的「蛋黃哥女子」，一天比一天急速增加中……\r\n\r\n針對現今女生們的真實煩惱，本書分成「公司‧工作篇」、「戀愛‧結婚篇」、「美容‧生活‧其他篇」三個主題，由「蛋黃哥」老師以最真誠的心、慵慵懶懶為妳哼起「蛋黃哥唬爛之歌～♪」。', 'http://pic.eslite.com/Upload/Product/201609/m/636095251657600000.jpg', 1, 250, 15, 'CH', 4),
	(21, '9869369340', '她最近不在家喔! Anini的寄宿之旅', 'comics', '周瑞萍 (Rae)', '字畝文化創意有限公司', '2016-12-21', '●威尼斯雙年展及波隆納插畫獎入選藝術家周瑞萍（Rae）\r\n最新插畫及雕塑藝術新作\r\n\r\n●本書收錄藝術家Rae精心繪製Anini寄宿之家十四張絕富特色畫作，展現她充滿豐富生命經驗和獨特價值的精采創作力。\r\n\r\n你在別人家寄宿過嗎？是什麼經驗？\r\n\r\n透過將孩子送到別人家寄宿，Rae用心分享了許多新的生命價值：\r\n勇氣、自由、樂觀與客觀、耐心、支持、自在、信任、保持敏銳……\r\n\r\n在藝術創作者周瑞萍（Rae）心中，Anini是她重要的孩子。從平面繪畫到立體雕塑，Anini長成了一百公分高的小屁孩，她們更幻化為二十四隻，各具有不同性格及與生俱來的使命。\r\n\r\n身為Anini的媽媽，Rae為了讓孩子體驗獨自一人在外生活的感受，她把其中十四隻Anini送去寄宿家庭，由此展開屬於妮妮們「追尋愛與信任的生命之旅」。', 'http://pic.eslite.com/Upload/Product/201612/m/636185108424743750.jpg', 1, 300, 25, 'CH', 4),
	(22, '9866278239', '拉拉熊的生活: 推薦懶懶的每一天', 'comics', 'Aki Kondo', '布克文化出版事業部', '2011-05-21', '努力過頭的時候...每天都在發生一樣的事的時候…已經不想再繼續的時候... 　　\r\n拉拉熊推薦~~~懶懶的每一天~「這樣不是很好嗎？」　　\r\n喀滋！喀滋！（熊）吃了又睡　睡了又吃（鳥）　　\r\n雖然說有多懶就有多懶，卻是照著自己的步調在過生活，拉拉熊就是貫徹「懶」的信念，最喜歡吃東西跟睡覺，專長是趴著和躺著，沒有其他的興趣，就是「懶」到底啦！　　\r\n本書收錄了，拉拉熊慵懶且自言自語的生活語錄。一頁一頁看很有趣，閉上眼睛，選一個自己喜歡的頁面翻開，看看拉拉熊做了什麼懶事情也很有趣唷。　　\r\n今天可以做的事，明天也可以做呦！那麼今天來睡覺吧！ 關於拉拉熊：突然造訪小薰的公寓，而且老是添麻煩的熊。他背上有拉鍊，感覺像是有人穿著拉拉熊裝。每天喋喋不休滾來滾去的說著：「放輕鬆吧！」喜歡吃的東西是鬆餅、丸子、蛋包飯、布丁。最喜歡小薰的黃色懶骨頭坐墊。最喜歡的事是聽音樂、看電視、泡溫泉。 關於小薰：在市中心上班的女生。加班到累癱了的每一天，常常不自覺的走到便利商店。看看新出品的零食，卻又覺得該減肥了。有一天回到一個人生活的公寓，拉拉熊就坐在裡面。他拿走我最愛的懶骨頭坐墊，而且只會製造麻煩，雖然這隻熊老是添麻煩，但卻想好好照顧他。 關於小黃雞：小薰好像沒有幫她取名字…？就叫這黃色的鳥為「小黃雞」吧！總是住在鳥籠裡，但常隨意出來罵拉拉熊。最近的衝擊是，竟看到拉拉熊背上的拉鍊開了，裡面有水滴狀的布。 這本畫冊小書裡，無論從頭閱讀到最後，或是隨手翻開任一頁，相信都會接收到拉拉熊給您，對於生活智慧的提示哦！', 'http://pic.eslite.com/Upload/Product/201106/m/634427731965818750.jpg', 1, 250, 10, 'CH', 4),
	(23, '9862137525', '忽遠忽近', 'comics', '幾米', '大塊文化出版股份有限公司', '2016-12-02', '●幾米長篇愛情成長故事繪本，畫出當代人們情感面貌。 \r\n●在《向左走・向右走》十五年後，《忽遠忽近》創造了一對更令人牽掛的戀人，他們的故事就是當代人們情感的縮影。 \r\n\r\n他們是如此地靠近，卻又如此地遙遠⋯⋯ \r\n\r\n每個人心裡面都有那樣一個人，朋友以上、戀人未滿。跟朋友相比，他總是更加知道你的痛處，很願意隨時戳戳你；跟戀人相比，他陪伴你更久，更知道你的喜好，共同分享大大小小好的壞的各種記憶，願意隨時在你身邊而沒有壓力。 \r\n但是，當別人問起，你們都會不好意思地說：「我們只是朋友！」 \r\n\r\n明明在一起那麼合拍，但卻擔心一跨界就打壞了默契。總是覺得自己的心印對方應該知道，但又常常提醒自己不要自作多情。你不確定他的心思，他也不敢跟你談這件事，總想著也許某天他會知道，或者覺得也許有天會遇到更合適的人，或者⋯⋯我應該還有其他更好的機會。有時不免想，他/她是對的那個人嗎？為何我們總是在不對的時候向對方表露自我？明明那麼熟悉，明明跟他/她在一起感到最舒適，但也許我們總覺得自己值得更好的，就把自己的心跡潦草地帶過。只在某次醉後裝傻說：「到三十五歲那一天，如果我們都還單身，那就在一起吧！」 \r\n然後，三十五歲飛快到來⋯⋯ \r\n\r\n在描繪《向左走・向右走》裡那一對被命運擺弄一直碰不到面的戀人之後，幾米心裡一直掛念著另一對戀人的故事，他們從小相識、要好，但卻一直無法確定彼此。見得著面可能比碰不到對方更令人揪心，你不知道這麼接近的兩個人，是不是有著最遙遠的距離，是不是開口就毀了一切，因此懸著，懸著⋯⋯他們是如此地靠近，卻又如此地遙遠。 \r\n\r\n幾米的《忽遠忽近》畫出了我們當下這時代，在變動中渴求平穩、充滿選擇卻又難以確定、千瘡百孔但不想再受傷的人們的共同縮影。', 'http://pic.eslite.com/Upload/Product/201611/m/636155731599376250.jpg', 1, 400, 20, 'CH', 4),
	(24, '7702261455', '花都之中 (全)', 'comics', '寶井理人', '尖端出版', '2014-08-05', '●2014年漫畫博覽會來台作者\r\n●年度熱賣破萬暢銷BL作品《只有花知道》衍生新作！\r\n\r\n以過村醫院次男的身份誕生的過村基晴，一直單戀著小時候相遇的朋友．蓮見晶。雖然曾經告白卻不被接納，彼此的距離也因此漸漸疏遠。即使如此，基晴還是與晶進入相同大學、加入相同的研究室。雖感到掙扎，卻還是為了忘懷一切，而每天與藝妓遊戲作樂。某天，晶卻詢問他要不要一起回家，兩人感覺就像是回到了過去。雖然基晴原本想著，只要能以朋友的身份待在他身邊－－…', 'http://pic.eslite.com/Upload/Product/201407/m/635423059894036250.jpg', 1, 130, 30, 'CH', 4),
	(25, '9862138319', '相對論百年故事 (第2版)', 'science', '中華民國重力學會', '大塊文化出版股份有限公司', '2017-10-13', '關於宇宙最不可理解之事，就是它竟然可被理解。本書帶你不斷在已知的邊界上，往未知探索。開啟你對宇宙學的全新視角，深度認識廣義相對論，以及重力波天文學的未來。為紀念相對論誕生百年，中央研究院余海禮教授召集國內多位相對論學者，共同完成了《相對論百年故事》。這次新版內容增訂了最近重力波觀測結果與未來發展，試圖呈現自廣義相對論提出以來的一個世紀，科學家從不確定、到懷抱希望地尋找及最終肯定重力波的崎嶇過程。', 'http://pic.eslite.com/Upload/Product/201710/m/636433215247448750.jpg', 1, 350, 10, 'CH', 5),
	(26, '9869541895', '詩性的宇宙: 一位物理學家尋找生命起源、宇宙與意義的旅程', 'science', '蕭恩．卡羅爾', '八旗文化', '2017-11-01', '一個人很渺小，生命短暫如蜉蝣，與宇宙相較，我們的身量甚至不如一顆原子和地球的相對尺寸。任何一個人的存在，真的有那麼重要嗎？在一次高速公路瀕死經驗中，作者與生命的有限性面對面交鋒。他瞬間深刻感受人類生命的渺小與短暫。不禁問出：任何一個人的存在，相對於整個宇宙，真有那麼重要嗎？蕭恩．卡羅爾身為世界知名物理學家，提出了自達爾文以來科學典範轉移之後，幾乎沒有人可以迴避的重要問題。在本書中，他不單以卓絕智慧處理希格斯玻色子和額外維度的問題，還探討所有人類面臨的最深邃問題，面對世界的基底現實，我們該如何處理以下問題：我們身處何方？我們是誰？我們的生命是否有意義？面對這道哲學問題，作者引導我們看見過去幾百年來接連不斷的發現，如何改變我們的世界，對我們產生深遠的影響。這本書以極大的企圖心，試圖將人類的目標和意義，安置在科學的新世界觀中。', 'http://pic.eslite.com/Upload/Product/201710/m/636446038933791250.jpg', 1, 600, 20, 'CH', 5),
	(27, '9862133465', '圖解時間簡史', 'science', '史蒂芬．霍金', '大塊文化出版股份有限公司', '2012-06-27', '霍金的《時間簡史》於一九八八年出版，至今被譯成四十餘種語言，銷售上千萬冊，取得科學史寫作史無前例的成功，不僅樹立里程碑，也在國際出版上造成一股風潮。《時間簡史》介紹最先端的宇宙學知識，由於微觀世界與巨觀世界的觀測技術進步神速，讓霍金教授在第一版書中的諸多理論預測獲得證實。其中包括宇宙背景探索衛星（COBE）最新的發現，深入探索宇宙開始三十萬年之內的現象，並揭露霍金預測在時空構造上的皺紋起伏。\r\n\r\n霍金熱切想將這些觀測所帶來的最新知識，與自己最新的研究加到本書裡。在這個擴充修訂版的《圖解時間簡史》中，除了對原有的章節更新刪修，他也添加一篇導論與一章全新的內容，探討蟲洞和時間旅行等令人著迷的主題。\r\n\r\n此外，雖然霍金教授的文字清晰睿智，但為了讓讀者更能掌握複雜難懂的部分，本書增添超過240張的全彩插圖，包括衛星影像、尖端科技（如哈伯望遠鏡）所獲得的珍貴照片，還有電腦繪製的3D與4D真實影像。配合詳細清楚的圖文說明，使讀者彷彿親歷其境，體驗浩瀚無垠的星際，直探黑洞的本質，深入物質與反物質碰撞的微觀世界。\r\n\r\n◎聯合推薦\r\n行政院前國科會主委．中研院院士／李羅權\r\n清華大學生命科學系教授．《科學人》雜誌總編輯／李家維\r\n東華大學校長．中研院院士．美國國家科學院海外院士／吳茂昆\r\n台大物理系暨天文物理研究所教授／吳俊輝\r\nDiscovery亞太電視網北亞區總經理／林東民\r\n國立自然科學博物館館長．台灣大學物理系及天文所教授／孫維新\r\n《圖解時間簡史》是經典之作，帶給讀者最新的宇宙學知識。這篇故事是現在進行式，帶領我們直探時間和空間的核心，追尋那最扣人心弦的祕密。', 'http://pic.eslite.com/Upload/Product/201206/m/634758643145785000.jpg', 1, 450, 15, 'CH', 5),
	(28, '9573270846', '宇宙的寂寞心靈', 'science', '奧弗拜', '遠流出版事業股份有限公司', '2012-11-15', '精彩的人物，動人的文字，帶來全然的閱讀感動與深邃想像！ \r\n愛因斯坦、哈伯、惠勒、桑德志、霍金等人，全世界最頂尖的一群科學家，\r\n在黑暗的宇宙舞台綻放出燦爛的智慧火花。\r\n他們站立在渺小的地球上，亦身為渺小的人類，\r\n竟膽敢思索浩瀚宇宙的起源、演化歷程與未來的命運。\r\n這是他們的愛與憎，狂喜與傷悲，他們的瘋狂奇想與研究勇氣，\r\n同時也是他們最精彩奔放的生命故事。\r\n我們所居住的宇宙究竟有多大？有多老？它未來的命運又是如何？ \r\n\r\n二十世紀後半期，研究這些問題的「宇宙學」臻於顛峰，百花齊放，熱鬧非凡，愛因斯坦、哈伯、桑德志、霍耶、皮伯斯、沙多維契、霍金、惠勒、潘洛斯、施賴姆、谷史等眾家英雄好漢，帶著各自的獨門功夫相繼登場，包括廣義相對論、哈伯常數、大霹靂、黑洞、奇異點、暴脹理論等等，且看他們如何從籍籍無名的小子，逐漸蛻變成萬人景仰的科學大師！他們等於是科學時代的宣教士，創造神話的人，也是馳騁宇宙的太空騎士。他們有人嚴肅、有人熱情，或率性，或害羞，或富於隱喻想像，乃至粗魯草莽，大言不慚，但都無損對宇宙的狂熱與專注。 \r\n\r\n作者奧弗拜也承繼這些好漢的拚命三郎精神，長年近身觀察這群最頂尖的宇宙研究者，與他們一同追南逐北，上天下地，分享挫折也一同興奮，成就了這些動人的篇章，讓讀者時而開懷大笑，時而沉思默想，時而又感動得難以自己，同時在這一波波奮鬥與探問當中，看到近一個世紀以來，最綿密完整的宇宙學研究面貌。', 'http://pic.eslite.com/Upload/Product/201210/m/634872690808328750.jpg', 1, 480, 10, 'CH', 5),
	(29, '9862161795', '火星上的人類學家 (新版)', 'science', '奧立佛．薩克斯', '遠見天下文化出版股份有限公司', '2008-08-29', '掉了色彩的世界，會是何模樣？健忘到不行，最後連煩惱也沒了，又是何光景？大半輩子瞎眼，再開眼，會看到什麼？兒時景致突然鮮活迸發腦海，縈繞不去，又代表著什麼？情感短路，會處於什麼樣的世界？\r\n\r\n本書呈現七個腦神經異常者的生命故事。他們或有視覺、記憶、認知、感知等方面的問題。腦神經如此精密，只要稍有閃失，就會讓人置身於想像之外的國度，變成一個「外星人」。他們或許正怪異地活在我們周遭，但透過神經科醫師薩克斯的筆，我們卻看到他們的生活，他們深刻而人性的一面；其生命厚度早就超越病症名稱所能界定的單薄範疇。\r\n\r\n作者帶領我們經歷一場知性感性兼具、有如希臘悲劇似的精神洗禮。從一開始的驚愕，到後來因理解而見怪不怪，甚至彷彿看到自己的影子，再到主客易位，變成自閉症者眼中的怪ㄎㄚ，我們正逐步跨越「正常」與「異常」的分際；在走出對「病」的狹隘視野時，深刻體驗生命神奇的再造力量和其個別的獨特價值。\r\n\r\n透過七個腦神經病患的真實故事，神經科醫師薩克斯引領讀者走向超乎人類經驗所能想像的國度，看見人類如何擁有重建與再生的可貴力量；並讓讀者從一個嶄新的角度，了解大腦如何建構出我們的世界，因而對自己有一番新的體認。', 'http://pic.eslite.com/Upload/Product/200808/m/633552682207645000.jpg', 1, 350, 10, 'CH', 5),
	(30, '986479311X', '宇宙必修課: 給大忙人的天文物理學入門攻略', 'science', '泰森', '遠見天下文化出版股份有限公司', '2017-09-30', '《紐約時報》暢銷總榜第一名 \r\n\r\n全球知名宇宙學網紅泰森，為忙碌的你開講宇宙必修課！ \r\n把天文知識化整為零，去除艱澀計算，沒有難懂圖表。 \r\n\r\n全世界大概沒有幾個人能像泰森一樣， \r\n能把宇宙天文講得扣人心弦又引人入勝， \r\n你可能沒有時間看長篇大論， \r\n泰森的這堂必修課輕薄短小，攜帶方便， \r\n你在捷運上翻一下，喝咖啡的時候讀一點， \r\n每天花上兩三分鐘， \r\n就能快速吸收夠用的天文知識， \r\n不再被暗物質、暗能量弄得昏天暗地， \r\n不再遭大霹靂、重力波震得頭昏眼花。', 'http://pic.eslite.com/Upload/Product/201709/m/636420980614747500.jpg', 1, 300, 20, 'CH', 5),
	(31, '9869320325', '太平洋天文學會天文觀測完全指南: 275+最實用的天文知識、觀星技巧、工具大全', 'science', '太平洋天文學會', '大石國際文化有限公司', '2016-06-02', '●美國亞馬遜網路書店讀者五顆星好評推薦 \r\n●三大章節循序漸進，不管你是觀星新手還是天文老手，都能輕鬆上手 \r\n●收錄超過275個觀星關鍵技巧，詳細圖解好記易學 \r\n\r\n歡迎來到浩瀚的觀星實驗室！ \r\n自古以來，人類總是對夜空充滿好奇，從星座、小行星、已知的行星，到太陽系之外的天體。\r\n不管你是正要接觸觀星這塊領域，或者是天文老手，你都可能有過以下疑問，例如︰ \r\n\r\nQ：出門觀星前該做哪些準備？ \r\nQ：如何使用四隻手指去推估離日落還有多少時間？ \r\nQ：如何辨認各種星座、行星、彗星與流星？ \r\nQ：如何挑選、使用、清潔保養望遠鏡與其他器材？ \r\nQ：怎麼運用望遠鏡投影觀日全蝕？ \r\nQ：如何連接望遠鏡與單眼相機 (DSLR)？ \r\nQ：如何拍攝星軌？如何拍攝極光？ \r\nQ：專業天文學家進行觀測的世界級天文台分布在哪裡？ \r\nQ：認識各式衛星與空間望遠鏡。 \r\nQ：如何高空氣象探測氣球拍攝太空照片？ \r\n\r\n這本由全球最大天文學會「太平洋天文學會」精心編撰的《天文觀測完全指南》，網羅了所有天文愛好者都需要知道的實用知識，帶你充分享受迷人的宇宙。 \r\n\r\n肉眼觀測技巧 收錄全天星圖和各種實用圖表，提供讀者花費低廉、簡單易行的有趣方法，用來探索星空，包括如何準備觀測工具包，如何藉由亮星導引來辨認星座。 \r\n\r\n望遠鏡與觀測儀器 了解如何選擇一副好的雙筒望遠鏡，如何調整望遠鏡焦距，如何用望遠鏡觀看動人的月球、雙星、行星和遙遠的星雲。另外還有觀看日食的相關事項、如何透過模型的製作了解太陽系等。 \r\n\r\n進階觀測技巧與資訊 介紹尖端設備和觀測策略、進階實作項目、觀星同好社群、防止光害行動，以及人類目前正透過太空望遠鏡和先進的觀測計畫，努力解開哪些宇宙之謎，提升你對星空的了解。 \r\n\r\n本書收錄超過275個觀星訣竅，輔以詳細的圖文插畫與照片，引導讀者們輕鬆吸收所有觀測星空與天體的方法、工具和技巧，讓您更好地理解和欣賞天空中的奇觀。 \r\n\r\n◎ 全球知名天文學會引領探索宇宙天文奧秘，輕鬆建立正確的天文觀念 \r\n本書由成立長達125年的國際知名天文組織──太平洋天文學會（ASP）編撰，將複雜的天文知識以淺顯易懂的方式說明，一窺宇宙的奧秘。 \r\n\r\n◎三大章節循序漸進，不管你是觀星新手還是天文老手，都能輕鬆上手 \r\n從肉眼觀測、使用天文儀器或其他工具，到更進階的觀測技巧；不僅提供讀者花費低廉、簡單易行的有趣方法，更介紹尖端設備和觀測策略、進階實作項目、觀星同好社群，提升你對星空的了解。 \r\n\r\n◎ 收錄超過275個觀星關鍵技巧，詳細圖解好記易學！ \r\n本書提供目錄檢索的方式，讓讀者可以快速找到想要知道的技巧，同時在內文的實用觀念上面，附上簡明易懂的圖解說明，不論初學者或進階天文愛好者都能快速上手！', 'http://pic.eslite.com/Upload/Product/201606/m/636003668618140000.jpg', 1, 560, 25, 'CH', 5),
	(32, '9867885937', '太空旅行指南: 從宇宙現象、天體環境、生理準備到心理調適', 'science', '尼爾．F．科明斯', '紅樹林文化出版事業部', '2017-11-11', '◎NASA科學家，為探險者而寫：無論移民還是觀光，都該知道的大小事\r\n\r\n進入太空甚至移民到鄰近星球很可能是人類不久後的共同經驗， \r\n科學家、工程師和企業家正努力讓它成真。 \r\n曾經上過太空的人都同意，這是一趟驚心動魄的旅程， \r\n為了能夠好好體驗，從飲食到親密行為都需要非常嚴謹的身體和心理適應。 \r\n起飛後，你對地球與生命會有截然不同的觀點。 \r\n\r\n作者為所有對太空探險感興趣的人寫了這本指南，描述太空旅人會遇到的各種情境：無重力、絕美景致，以及在另一個世界漫步的機會；當然也有風險：宇宙輻射、撞上運行天體、對人體有害的大氣，以及潛在的載具設備等問題。作者同時討論了太空站、月球、小行星、彗星和火星（首要太空移民地），以淺白有條理的方式，讓讀者領略深太空挑戰需要的專業知識與技術。他綜合了關鍵議題，以及最新的太空、物理、生物、心理及社會學研究，提供讀者一本太空旅行終極手冊。 \r\n\r\n在目前或不久的未來，人類可抵達的地點如下： \r\n●基本款：次軌道飛行。這是最便宜、最短程的太空旅行，帶你體驗火箭上升時的G力並感受身處太空無重力。 \r\n●升級款：地球軌道之旅。上升至地球軌道，然後再前往太空軌道度假村，不但可一覽地球美景，還有機會在太空中漫步，和可能存在的外星生命來場充滿異地風情的豔遇。 \r\n●經典款：登陸月球。在這趟數天至數個月不等的旅程中，你可以在月球上觀賞日蝕和星象、學習在低重力環境下行走、進行太空研究、採集月岩、運動、騎車造訪眾多獨特的地景，還有機會體驗神祕的月球瞬變現象。 \r\n●進階款：探索小行星與彗星。長途太空旅程的日常生活跟在地球沒什麼兩樣，舉凡吃喝玩樂、社交、工作、與地球的親朋好友視訊、寫部落格、發即時動態，還可以利用時間進修或協助科學家做研究。只是在微重力環境下，你可能會發現自己的動作有些古怪。（由於小行星及彗星軌道難以捉摸，本行程須提前預訂） \r\n●終極款：移民火星。火星擁有許多值得造訪的特殊地景，還能體驗沙塵風暴，探勘火星生命跡象。若你是首批移民者，建立永久居住地與開發資源是首要任務，隨後還得發展社群、開創具有生產性的工作，並設置各項娛樂設施，試圖讓火星「地球化」。 \r\n\r\n關於旅程的法律與保險問題、行前訓練、身體與心理調適須知等等，詳見本書。', 'http://pic.eslite.com/Upload/Product/201711/m/636452084306261250.jpg', 1, 420, 15, 'CH', 5),
	(33, '986763795X', '台灣這裡有貓 (2018增修版)', 'science', '貓夫人', '腳丫文化出版事業有限公司', '2017-12-01', '我不知該如何不愛貓！ \r\n2018最狂、最暖心、最在地的貓咪寫真特輯， \r\n牠們迷人的萌樣，才是台灣最美好風景。 \r\n\r\n◎隨書限量贈送 \r\n2018年霸氣街貓年曆  \r\n\r\n要拍出貓咪的細緻的動作，總是要懂得把握黃金一瞬間才能抓得住牠。在田裡翻滾、跟雞群打架、到路邊堵人；從眷村巷弄到東北角海岸，從農舍到漁村；在貓夫人的鏡頭下，一張張睡覺、翻身、跳舞、偷吃、窺視……等生動的照片與輕暖的文字，就像說故事般，觸動著你的心，讓你感動、讓你歡笑。 \r\n\r\n老眷村改建之後，當地街貓該去哪裡生活？廟宇裡的貓咪，是在乖乖拜拜還是偷偷搗蛋？ \r\n讓人措手不及的貓咪迎賓禮會是什麼樣子？阿杯如何用信任「釣」到一串貓咪？ \r\n\r\n故事，從這裡有貓繼續延續。 \r\n\r\n在田裡翻滾、跟雞群打架、到路邊堵人，舉手投足萌到逼死人。 \r\n農村瓦磚、黃色稻穗、廟宇殘垣，每張都是最正港的台灣地景。 \r\n樸實的文字、細膩的畫面補捉，不用解釋也能讓人會心一笑。 \r\n\r\n1.全年日期超展開。 \r\n2.連續紅字請假攻略超明瞭。 \r\n3.反骨可愛主視覺超上心。 \r\n4.超殺眼神逼退小人超霸氣。', 'http://pic.eslite.com/Upload/Product/201711/m/636463316534637500.jpg', 1, 380, 10, 'CH', 5),
	(34, '9863811718', '生命解碼: 從量子物理、數學演算, 探索人類意識創造宇宙的生命真相', 'science', '林文欣', '八方出版股份有限公司', '2017-11-27', '當AI機器人比人類聰明能幹時，\r\n生命的真相是什麼？\r\n靈魂存在嗎？\r\n\r\n科學家隱而不談的祕密，\r\n量子力學的發展歷史，\r\n其實是一本追尋生命真相的歷史教科書。\r\n量子力學應該是靈魂的最佳見證者。\r\n\r\n當人工智慧席捲人類未來生活時，人類會越來越依賴人工智慧，最後乾脆把決策權交給電腦。那麼，人類存在的意義是什麼？\r\n\r\n本書內容整合量子力學、電腦程序、數學演算及哲學探討，了解生命經過造物主的大設計，其實人生也是依據生命大數據進行，意識創造宇宙的生命真相，追尋生命意義！\r\n\r\n◎生命的本質，來自於一個科學無法驗證的空間。\r\n物理學家計算出我們這個世界只占整個宇宙的4%，我們看不到的世界占96%，稱為暗物質、暗能量或真空能量。\r\n人類能測量的真相只有4%，其他96%是我們無法驗證的。\r\n\r\n物理學的幾個重要理論，如反物質世界、全像宇宙投影、平行宇宙及弦理論等，均證實宇宙還存在另外一個空間。\r\n\r\n生命的意識資訊，也就是靈魂，就是儲存在那裡！ \r\n\r\n這個涵蓋一切人類所有相關資訊的宇宙數據庫 ，它是天才的泉源、靈感的源頭及預知的根源。\r\n\r\n◎生命本身就是一種演算法，人類是活在全像宇宙投影之中。\r\n在物理學中，越來越熱門的「全像宇宙投影」理論就直接表明：我們的物質世界，實際上只是從另一空間的「二維資訊碼」投影到我們這個物質世界的一幅「三維全像投影圖」而已。\r\n\r\n生命本身就是一種演算法，也是一種不斷處理數據的過程，人類的數據庫就是另一個空間的宇宙數據庫。就好比人工智慧，它必須依據全球網路資料庫才能產生指令動作。\r\n\r\n◎量子力學是靈魂（意識）的最佳見證者。\r\n從量子力學的角度，不管是全像宇宙投影理論的靈魂空間（高維度空間的宇宙數據庫），還是狄拉克之海的靈魂粒子（虛擬粒子），或是弦理論蜷縮在六維空間的弦，甚至平行宇宙，都可以證明靈魂的存在，也就是說：靈魂存在的科學證據就是量子力學。', 'http://pic.eslite.com/Upload/Product/201711/m/636468562022092500.jpg', 1, 320, 20, 'CH', 5),
	(35, '9860490309', '從解題著手懂配位化學', 'science', '洪豐裕', '國立中興大學', '2016-07-01', '初學配位化學對於配位化合物的特殊構型、顏色及磁性現象會感到困惑，不容易抓住課文內容重點。本書乃針對配位化學課文內容以解題的方式帶入，期盼讀者能由解題的過程中迅速了解章節主要內容和重點。', 'http://pic.eslite.com/Upload/Product/201701/m/636198068496527500.jpg', 1, 480, 25, 'CH', 5),
	(36, '9863472239', '樂高機器人Mindstorms EV3創作坊', 'science', '藍子軒', '碁峰資訊股份有限公司', '2014-09-10', '從腦力激盪中享受無窮樂趣\r\n\r\n樂高機器人LEGO MINDSTORM EV3套件組提供了許多令人激賞的嶄新功能，但一般人可能不知道要從哪裡開始玩起。在沒有專家協助的情況下，如果想要善用那些比較高級的機構件，活用各式各樣的程式功能，可能要花費好幾個月的時間去嘗試、學習。\r\n\r\n透過樂高機器人創作達人的經驗分享，你可以從本書中學會如何使用齒輪、長桿、馬達、感測器及各種程式指令塊，創造出各種相當具有複雜度的機器人。這些機器人懂得迴避障礙、能用兩條腿走路、甚至還能做出某些自主性行為。透過這些學習的過程，你還可以深入其中與數學、工程、機器人相關的概念，而這些都將有助於你創造出屬於自己的神奇機器人。書中一些與程式相關的實驗，對你來說無疑將是一連串的挑戰，而一系列的漫畫及無數的討論示範，更能為你的學習過程增添許多樂趣。\r\n\r\n只要跟著本書一起動手做，就會做出以下五種逐一製作出五種超酷的機器人，包括： \r\n●漫遊者（ROV3R；綽號「滷肉」）：這是一部車子，你可以讓它循著一條線前進、迴避障礙、甚至可以用它來打掃房間。\r\n\r\n●看門鵝（WATCHGOOZ3）：這是一部有兩隻腳的機器人，你可以在完全不使用電腦的情況下，單獨使用主機上的積木程式App，就能為它編寫出程式、讓它能在房間裡到處走動、巡邏。\r\n\r\n●超級跑車（SUP3R CAR）：一部後輪驅動的超級跑車，它的遙控器有兩支搖桿，相當符合人體工學設計。\r\n\r\n●小哨兵（SENTIN3L）：這是一部可用三隻腳行走、可根據顏色記錄並執行一連串指令的機器人。\r\n\r\n●暴龍（T-R3X）：這是一部有兩隻腳、相當嚇人的機器恐龍，它會搜索、追逐、獵取獵物。\r\n\r\n在本書的引導之下，你很快就能成為EV3專家！', 'http://pic.eslite.com/Upload/Product/201409/m/635466260838983750.jpg', 1, 550, 10, 'CH', 5),
	(37, '9864760181', 'Python x Arduino物聯網整合開發實戰', 'science', 'Pratik Desai', '碁峰資訊股份有限公司', '2016-07-04', '使用Pyhton搭配開發版進入物聯網\r\n未來是物聯網的時代。\r\n\r\n需要實體元件能與網路層級的應用程式進行通訊。Arduino結合Python，就能用來開發物聯網專題，以及搭配圖形化使用者介面與連結網際網路的應用程式。\r\n\r\n從使用Arduino來設計硬體專題開始，本書會告訴您用來開發複雜雲端應用所有需要的東西。您會以循序漸進的複雜度來深入探索不同領域的主題，最後做出可應用於真實世界中的專題。您很快就能學會如何開發使用者介面、圖表、遠端存取、訊息通訊協定與雲端連結。每個成功的主題都會搭配多個範例，能幫您開發出劃時代的硬體應用喔！\r\n\r\n本書為誰而寫？ \r\n如果您是學生、業餘玩家、開發者或是設計師，在程式設計與硬體原型開發的經驗比較不足或是完全零基礎的話，本書就是為您而寫。\r\n如果您是軟體開發者或硬體設計師，想要製作互連裝置的各種應用，本書可以幫您入門。\r\n\r\n本書可以幫您：\r\n．使用Arduino來設計並開發您專屬的硬體原型\r\n．使用Firmata通訊協定和Python讓Arduino能與電腦互動\r\n．藉由開發各種熱門感測器的應用上獲得動手做的經驗\r\n．開發圖形化使用者介面來控制您的元件與圖表，實現感測器資料視覺化\r\n．從網際網路來存取您的Arduino原型\r\n．實作用於Arduino通訊的傳訊通訊協定\r\n．將您的硬體專題與雲端服務結合\r\n．透過本書專題來製作進階物聯網應用', 'http://pic.eslite.com/Upload/Product/201606/m/636027862192100000.jpg', 1, 490, 10, 'CH', 5),
	(38, '9863201960', '核電關鍵報告: 從福島事故細說能源、環保與工安', 'science', '郭位', '遠見天下文化出版股份有限公司', '2013-05-22', '關於核電，你了解多少？能源政策與你我息息相關，\r\n影響層面包含與國安、環保、民生需求、經濟發展、社會心理及永續發展。\r\n值此時刻，我們需要專業知識、理性分析與客觀態度，\r\n共同為未來造一條安全、美好的路。\r\n\r\n2011年3月，日本發生九級大地震和海嘯，引發福島核電廠事故。這是繼1979年美國三哩島事件、1986年前蘇聯車諾比事件以來，最為嚴重的核災事故，引發世界各國矚目，並紛紛檢討其能源政策。\r\n郭位教授是福島核事故後第一位應邀訪問日本福島近鄰的外國安全可靠度專家。他特別走訪仙台了解最新情況，以專業知識和理性態度，分析福島事故發生原因，並提出能源政策的願景。 \r\n\r\n本書分為兩部分，第一部分以福島事故為鑑，剖析造成事故的各個環節與成因，包括設備老化、管理不透明、人為疏失、品管問題等。第二部分則探討能源政策與環保未來走向，評比各種能源的可行性，希望找到能源供應、經濟福祉及可靠度與可持續性之間的平衡點。\r\n\r\n \r\n\r\n聆聽書籍導讀https://sites.google.com/site/henengzixuntupu\r\n\r\n1. 點選右上角放大/縮小圖示，可調整頁面尺寸\r\n2. 點選喇叭圖示，即可播放郭位教授原音導讀，幫助您更了解本書內容\r\n3. 此連結網頁最佳瀏覽環境為：Firefox、IE 10以上版本瀏覽器\r\n4. 此連結網頁僅供《核電關鍵報告》書籍推廣使用', 'http://pic.eslite.com/Upload/Product/201305/m/635041170508050494.jpg', 1, 280, 15, 'CH', 5),
	(39, '9866731553', '台灣的國家公園 (新版)', 'science', '魏宏晉', '遠足文化事業股份有限公司', '2010-05-10', '◎推薦人：台灣大學地理環境資源學系教授／王鑫\r\n\r\n東沙環礁國家公園、台江國家公園　搶先收錄！\r\n全新18開版本、視覺大驚豔！\r\n全新版面、全彩印刷、全心編製！\r\n\r\n《台灣的國家公園》先從歷史面切入，在〈國家公園概論〉中帶領讀者瞭解世界保育觀念覺醒的過程，進而認識國家公園的意義與選定標準，並敘述台灣成立國家公園的始末；繼而詳述〈陽明山國家公園〉、〈雪霸國家公園〉、〈太魯閣國家公園〉、〈玉山國家公園〉、〈墾丁國家公園〉、〈金門國家公園〉、〈東沙環礁國家公園〉的地理環境、歷史人文與自然生態，並搭配精心繪製的國家公園區域圖。', 'http://pic.eslite.com/Upload/Product/201004/m/634079554021832500.jpg', 1, 280, 25, 'CH', 5),
	(40, '9866385922', '死亡與來世: 從火化到量子復活的編年史', 'science', '柯利弗德．皮寇弗', '天培出版社', '2017-04-01', '◎這本怪誕的編年史橫跨心理學、文化學、生物學及物理學的疆界，探索了史上人類對死亡與來世稀奇古怪的真知灼見。從馬雅死神、泥人、降靈會、殭屍到量子復活，題材廣泛、五花八門。每翻閱一頁，精美的藝術作品便躍入眼前，內文亦展現令人意想不到的對死亡與來世的獨特見解。\r\n◎台北城市科技大學榮譽教授、宗教史家江燦騰、銘傳大學通識教育中心副教授駱芬美 推薦\r\n◎美國亞馬遜網絡書店死亡和科普類暢銷書\r\n◎暢銷書《數學之書》和《物理之書》的作者柯利弗德．皮寇弗最新力作\r\n◎每則條目章皆附珍貴的精美圖像\r\n\r\n「死亡並非撲滅光明，是因天已破曉，而將燈滅熄。」\r\n－－泰戈爾，節錄自《東方的訊息》（Message of the East），一九四七年\r\n\r\n死亡的本質及神祕，自古以來令藝術家、科學家、哲學家、醫師、神學家醉心不已。歷代偉大的藝術、建築、文學作品層出不窮，其中與死亡相關的符號和傳說無所不在，催生了我們的喪葬習俗，影響了我們對身後事的安排。人類對死亡與來世的熱衷，也反映在大眾文化。電影和書籍中，瀕死經驗、來世、死而復生的怪物等令人毛骨悚然的超自然題材時而可見。不少題材歷史悠久，可溯及夙昔，當時人們篤信奇蹟，與大自然關係緊密，認為身旁圍繞著肉眼看不見的靈體。\r\n\r\n我們的大腦可能天生就渴求魔法及看不見的力量，亟需掌控乾坤、實現夢想。或許幾經大腦演化、文明發展至今，我們為了凝聚社群向心力，在親人和自己臨終時從容面對，才會如此輕易相信靈魂、幽靈及來世。我們對死亡著迷不已，祭出儀式來理解死亡，乃出於天性使然。死亡、宗教、神話、來世介於已知與未知邊緣，橫跨心理學、歷史學、哲學、生物學等多種科學領域。人類必須了解這個世界，也會一直以邏輯思維或玄學角度鑽研下去。隨著二十一世紀持續進展，我們能否抽絲剝繭、找出一點蛛絲馬跡來解謎？未來將又如何處理死亡，或逃避死亡？\r\n\r\n本書主題琳琅滿目，這頁講述陰森可怕或傷感催淚的故事，下一頁可能就探討起宇宙萬千、轉瞬即逝的話題。每篇都只有寥寥幾段，讀者能迅速浸淫其中。想了解馬雅死神和他們的眼球項鍊嗎？那就翻到令人心驚膽跳的席巴巴篇一睹為快吧。泥人和兵馬俑是否會出現意識，與生者互動呢？趕緊展頁一覽這些謎樣「生物」的簡介吧。', 'http://pic.eslite.com/Upload/Product/201703/m/636257687865437500.jpg', 1, 450, 10, 'CH', 5),
	(41, '9869114822', '像山一樣思考', 'science', '約翰．席德', '紅桌文化', '2015-04-15', '人類啊！我是山，我要給你們深深的平安。\r\n只要你們需要力量，需要堅定，都歡迎你們前來。\r\n\r\n你是否覺得生活庸庸碌碌，不知為何而忙？\r\n你是否早已對周遭的人事物，失去熱忱？\r\n你問了許多人、上過許多課、鬱鬱度過一些日子或許也傷過一些人的心，\r\n不斷追尋這一切所為何來的解答。或許——\r\n\r\n答案就在你自己。一個與萬物同心的自己。\r\n\r\n◎重現「眾生大會」30年經典，暢銷翻譯15國語言\r\n◎收錄精緻森林繪圖，值得反覆捧讀的療癒之書　\r\n◎燙銀書衣，如夏日夜空的熠熠繁星；鑲嵌英文書名，讓思想紋理織入大地。\r\n\r\n《像山一樣思考》是一場場眾生與天地的對話練習，由世界知名推動深層生態學的環境運動人士、哲學家、詩人、作家，透過散文、詩作與論述的形式，以吶喊、冥想與想像，喚醒人類具有愛自己、愛其他生物與自然的能力，帶我們拋開舊意識，展開全新世界觀。\r\n\r\n雖然大多數的人能理解到「人與自然不可分割」這件事，卻少有人真正經驗到那親密的連結。當我們能同理地球的遭遇，以它的痛苦為我們的痛苦，視它的命運為我們的命運，我們的思維就會重新變得透徹清晰，並能重新找到感動和委身。\r\n\r\n書中栩栩如生的塔斯馬尼亞森林繪圖，引領讀者走進森林密徑，與大地親密的連結；穿插於書中的冥想練習，提供讀者習作與植物、動物、岩石與山的對話，透過眾生大會的儀式，理解地球上眾生萬物的遭遇並感同身受，並進一步為保護生態大我而採取行動。\r\n\r\n《像山一樣思考》收錄了許多文章、冥想、詩文、引導式想像、工作坊紀錄，幫助我們想起與自然的深層連結，重新發現親密和扶持的重要，並決定行動的優先順序。\r\n\r\n與山回聲與鳥同鳴\r\n天與地即是我心中的曼荼羅\r\n樹與花原是我身體的一部分\r\n雙手展開就長出森林\r\n\r\n讓哲學家、詩人、作家、環境運動者，\r\n帶你走進眾生大會的現場，體驗與萬物一體的全新本我！', 'http://pic.eslite.com/Upload/Product/201504/m/635648701435841250.jpg', 1, 280, 20, 'CH', 5),
	(42, '9863701246', '最強貓咪讀心術: 教你完全掌握貓咪的心情!', 'science', '愛貓之友會', '楓葉社文化事業有限公司', '2016-11-01', '應該有很多人覺得， \r\n喵星人的脾氣反覆無常、任性妄為。 \r\n正以為撫摸會讓牠感到舒服時，卻突然被狠咬了一口； \r\n在外面發現牠的身影時，呼喊名字卻沒得到回應； \r\n特地跑來索食，給了食物卻一口也不吃⋯⋯ \r\n可能有人會因為「實在猜不透貓咪的心」而感到失望， \r\n但事實上，牠們會透過表情和舉止，以各式各樣的方式確實表達出自己的感情。 \r\n只要能清楚解讀貓咪的舉動和叫聲， \r\n肯定就能了解至今從未察覺的貓咪心情。 \r\n\r\n本書以淺顯易懂的方式， \r\n解釋貓如何以形形色色的表情和舉止來表達牠的心情， \r\n以及牠究竟想要告訴你什麼。 \r\n希望大家都能因此和心愛的貓咪順利交流，過著更幸福快樂的日子。', 'http://pic.eslite.com/Upload/Product/201610/m/636126360018155000.jpg', 1, 280, 15, 'CH', 5),
	(43, '9863501700', '早田文藏: 臺灣植物大命名時代', 'science', '吳永華', '國立臺灣大學出版中心', '2016-08-29', '◎補足日治時代臺灣自然史的一塊重要拼圖。 \r\n◎臺灣第一本早田文藏詳實傳記，呈現早田文藏一生的成就事蹟。 \r\n◎整理早田文藏一生著作目錄及命名一覽表，是研究臺灣植物史不可或缺的參考資料。\r\n\r\n早田文藏， \r\n他是享譽國際的「臺灣杉」的命名者， \r\n也為臺灣建立8個新屬、1,636筆新學名， \r\n他的一生，成就出近代臺灣植物學的輝煌年代。 \r\n\r\n早田文藏（1874～1934），日本新潟縣加茂町人，16歲矢志於植物學，1892年19歲加入東京植物學會。1903年師從東京帝國大学理学部松村任三教授後，接手臺灣植物研究。1905年受聘為臺灣總督府植物調查囑託，直到1924年為止，十九年間致力於臺灣植物的研究與分類，完成《臺灣植物圖譜》十卷。由早田文藏命名發表的臺灣植物多達1,636筆，被譽為「臺灣植物界的奠基之父」。 \r\n\r\n本書透過早田文藏的生平歷程，闡述他身處的大時代環境，是如何引發他對植物學的喜好，並在因緣際會下進入臺灣植物研究的領域，成為建構臺灣植物誌的重大功臣。他一生關注分類學、形態學、解剖學、細胞學等植物學議題；晚年更涉獵宗教、哲學等層次，進而提出新的「動態分類系統」，影響無數後世學者。一部早田文藏的傳記，講的不只是一位先驅者的生命歷程，更是臺灣自然史中不可或缺的一頁。', 'http://pic.eslite.com/Upload/Product/201608/m/636072786977177006.jpg', 1, 460, 15, 'CH', 5),
	(44, '9571188646', '愛的萬物論: 史蒂芬．霍金與潔恩的真實故事', 'science', '潔恩．霍金', '五南圖書出版股份有限公司', '2016-10-25', '這本書是史蒂芬‧霍金的前妻潔恩‧霍金的回憶錄，從一個女人，一名妻子的角度看待這段25年的婚姻生活，也讓我們了解照顧一個有運動神經元疾病的天才，要面臨什麼樣揪心的現實——對抗官僚主義、獨自努力維護自尊、疲憊、挫折和沮喪的痛苦叫聲。', 'http://pic.eslite.com/Upload/Product/201610/m/636129811774548750.jpg', 1, 500, 20, 'CH', 5),
	(45, '4767820847', '小さな家で楽しむスタイルのある暮らし', 'architecture', '太田彩', 'エクスナレッジ', '2015-12-02', '"對於個人來說，一個能夠好好休息、以個人喜好佈置的溫暖小窩是現代的忙碌生活中最重要的場所，本書收集了將老家重新改造的16.5坪二樓住宅、雖然很小但有中庭的迷你住宅、充滿療癒氛圍的15.7坪小住家、即使只有14.5坪也能蓋成地上三樓加上地下一樓的多樣化住家。由於日本的土地利用也非常緊繃，因此常常有建地僅有不到10坪的迷你住宅，這些房子的每層樓也是非常狹小。但在這樣的狀況下還是能設計出不讓人感到緊繃、機能完備的舒適住宅。\r\n書中收錄13個迷你住宅的設計圖以及完工案例，提供狹窄空間的設計參考！"', 'http://pic.eslite.com/Upload/Product/201512/m/635852604596058750.jpg', 1, 720, 10, 'FR', 9),
	(46, '0553459449', 'Living with Pattern', 'architecture', 'Rebecca Atwood', 'POTTER', '2016-08-30', 'Pattern is the strongest element in any room. In Living with Pattern, Rebecca Atwood demystifies how to use that element, a design concept that often confounds and confuses, demonstrating how to seamlessly mix and layer prints throughout a house. She covers pattern usage you probably already have, such as on your duvet cover or in the living room rug, and she also reveals the unexpected places you might not have thought to add it: bathroom tiles, an arrangement of book spines in a reading nook, or windowpane gridding in your entryway. In this stunning book, beautiful photography showcases distinct uses of pattern in homes all over the country to inspire you to realize that an injection of pattern can enliven any space, helping to make it uniquely yours.', 'http://pic.eslite.com/Upload/Product/201606/m/636008129533856250.jpg', 1, 1050, 10, 'FR', 9),
	(47, '1849757550', 'In the Mood for Colour', 'architecture', 'Hans Blomquist', 'RYLAND PETERS & SMALL USE', '2016-10-13', '"顏色的力量強大，它可以改變我們的心情或提振我們的精神，可以正面地提升生命力，但我們許多人寧願躺在安全卻毫無冒險性格、乏味且黯淡的顏色中，而不願意為我們的家尋找適合的色彩。著名的室內風格專家，Hans Blomquist在這本書中，展現了他對顏色畢生的熱情，以及顏色影響我們情緒的方式。它可以讓人平靜、使人著迷或是提振人心。如同作者所指出的，不同顏色的房間，可以讓人覺得涼爽又冷靜，充滿活力與刺激，或是感傷而迷人。\r\n作者從自然界的寶藏中擷取靈感，探索新落的雪帶著炫目的白，剛開的罌粟花有著如火一般緋紅的心，午夜的天空則是如墨一般的華蓋。本書的五大部分：暗、淡、軟、自然與明亮，將使你從全新的角度，看見完全不同的顏色。"', 'http://pic.eslite.com/Upload/Product/201607/m/636051539188746250.jpg', 1, 1100, 10, 'FR', 9),
	(48, '1849758034', 'Simple Home: Calm Spaces for Comfortable Living', 'architecture', 'Sally Bailey/ Mark Bailey', 'RYLAND PETERS & SMALL USE', '2017-03-07', 'The simple home is calm and uncluttered, with each item carefully chosen. It’s in tune with the current desire to buy well-made, well-designed items that will grow old gracefully, and to create homes that are sustainable and stylish. This doesn’t mean a minimalist home—it’s about living in comfort in a carefully considered space. The Philosophy of the simple home explores Mark and Sally Bailey’s design ethos. Their Colour scheme is inspired by nature to create a feeling of tranquillity. Materials are reclaimed or reused, and ethically sourced. Calm reigns in the simple home—a haven from the stresses of life. Craft embraces the artisan’s skill and the pleasure of owning items that will last. Recycling furniture and materials will give your home an air of individuality, with old and new objects living happily alongside each other. Comfort is paramount, with cosy textiles and warm wood. A rediscovery of old-fashioned Natural Cleaning methods will nurture your home—try the Baileys’ own recipes for cleaning products without harsh chemicals. Furniture is sustainable, with clever storage to hide necessities. Finally, Curating Your Home looks at ways to make your space into your very own museum of cherished possessions. The Baileys then turn to simple Spaces, showing you how to create welcoming yet practical Entrances and Hallways, versatile, convivial Cooking and Eating spaces and supremely comfortable Living spaces. Bedrooms are soothing places with possessions tucked neatly away, while Bathrooms are functional yet warm. Workrooms are a joy to furnish with rescued desks and fittings from old offices or former factories. Above all, the Baileys urge you to surround yourself solely with the objects that you really love and to enjoy the beautiful calm of an uncluttered home.', 'http://pic.eslite.com/Upload/Product/201612/m/636177557964328750.jpg', 1, 1100, 10, 'FR', 9),
	(49, '0500293074', 'The English Country House', 'architecture', 'James Peill', 'THAMES & HUDSON LTD.', '2017-02-01', 'James Peill recounts the ups and downs of such deep-rooted clans as the Cracrofts, landowners in Lincolnshire since the 12th century, whose late 18th-century Hackthorn Hall is a perfect example of the kind of house Jane Austen describes in her novels (indeed, she appears on their family tree), as well as the relatively newly arrived Biddulphs, who constructed Rodmarton, an Arts & Crafts masterpiece, in the first decades of the last century. James Fennell has once again provided superb photographs of a wealth of gardens, charming interiors, bygone sporting trophies, fine art collections and fanciful family memorabilia, making The English Country House a delicious treat for Anglophiles and lovers of old houses.', 'http://pic.eslite.com/Upload/Product/201703/m/636239653862766250.jpg', 1, 1045, 20, 'FR', 9),
	(50, '1784721948', 'At Home with Plants', 'architecture', 'Ian Drummond/ Kara O\'Reilly', 'MITCHELL BEAZLEY', '2017-04-01', 'In this much-needed book, Ian and Kara show you how to transform your home with plants and tells you which plants will work best where and how to care for them. From strikingly geometric terrariums to pretty hanging baskets, practical herb pots and colourful window displays, this book is packed full of exciting and gorgeous ideas. Specially commissioned photography by Nick Pope throughout proves that bringing the outdoors in really is the best form of interior design.', 'http://pic.eslite.com/Upload/Product/201704/m/636276034480527500.jpg', 1, 1100, 10, 'FR', 9),
	(51, '0770434290', 'The Finer Things', 'architecture', 'Christiane Lemieux', 'POTTER', '2016-09-06', 'Quality matters. Just as a home’s foundation should be built to stand the test of time, so, too, should the furniture, objects, and elements of our rooms speak to an enduring sense of beauty and comfort. They should outlast trends and our loving day-to-day use. But how does one recognize quality and judge whether something is well made? Christiane Lemieux set out to answer this question by interviewing the world’s greatest experts. Weaving together the insights and guidance of dozens of wallpaper and paint specialists, textile fabricators, accessories artisans, and interior designers, Lemieux has curated an unparalleled education in recognizing the hallmarks of timeless, heirloom-quality pieces. Hundreds of elegant home interiors—both iconic examples from the past and stunning residences today--represent the range of luxurious and customized environments that can be created with fine décor.', 'http://pic.eslite.com/Upload/Product/201708/m/636383898327261250.jpg', 1, 2100, 5, 'FR', 9),
	(52, '4756247342', '美しい建築の写真集: 喫茶編', 'architecture', '竹内厚', 'PIE International Inc.', '2016-01-16', '美不勝收的照片紀錄下日本各地近代建築的優美身姿，令人開心的是這些建築都是可以入內參觀咖啡店或是旅館大廳！足跡遍佈日本全國：北至北海道、南至長崎，收錄31棟向大眾開放的明治、大正時期的近代建築以及60、70年代的摩登建築，從建築物的立面、窗戶、梁柱、外牆到內部的照明、家具等全都詳細紀錄下來。在美麗優雅的咖啡店裡啜飲香醇的飲料，沉浸在時光倒流的美好氣氛中，本書是最佳指南！', 'http://pic.eslite.com/Upload/Product/201601/m/635882952441632500.jpg', 1, 810, 15, 'FR', 9),
	(53, '3037681993', 'Black + Architecture', 'architecture', 'Sibylle Kramer', 'Verlagshaus Braun', '2016-01-07', '物理上，黑色被定義為所有頻率的光; （幾乎） 完全吸收缺少視覺刺激時，它描述了顏色的印象。黑色的建築物看起來雄偉，充滿特別的靈氣和占主導地位，本書提出的專案顯示各種各樣的當代建築文化接近這迷人的身體和文化現象。', 'http://pic.eslite.com/Upload/Product/201604/m/635967382336710000.jpg', 1, 1925, 10, 'FR', 9),
	(54, '1780678339', 'New Thai Style', 'architecture', 'Kim Inglis', 'LAURENCE KING PUBLISHING', '2016-05-31', '泰式設計風一直以雅緻及鮮豔濃烈的色彩反映出泰國獨特的文化風情，不論是樓閣式的建築、高雅的室內設計、大膽創新運用各種材質及紡織品，全新風格的泰式設計以結合傳統的工藝技術及現代簡約風格為主要特色。不斷演變的泰式設計已成為21世紀最受歡迎的設計風格，這些有著典型東南亞風情的泰式風格設計，遍布時尚大都曼谷的飯店及小島渡假村，本書蒐羅當代許多成功的泰式設計範例，包括建築、設計家具、藝術品、室內設計及庭園等。木製家具與留白的牆面搭配，讓人感覺溫暖且明亮；妥善的運用金色則為空間增添了一絲嫵媚的神秘色彩；或是精美細緻的圖紋搭配歐式花邊，則帶有淡淡的歷史感卻不失質感。近來泰國設計人才的出色表現，更讓人開始驚豔於泰國所蘊含的極致美學。', 'http://pic.eslite.com/Upload/Product/201601/m/635894044570783750.jpg', 1, 1650, 15, 'FR', 9),
	(55, '1580932762', 'Re:Crafted', 'architecture', 'Kristal, Marc', 'MONACELLI PRESS', '2010-04-20', '本書以25件作品為例，橫跨住宅與商業性質的建築，不論是否具有國際名聲或只是默默無名的新秀，這些案例都漸漸地改變當代的建築的結構及設計。不管是富麗堂皇的裝飾或是簡單樸實的居家生活，走在主流尖端或是位居邊緣、規模小正在發跡的階段，每一種都能讓人感受到建築所蘊含的強大能量。本書將帶給您對於建築和設計全新的思維，是一種出其不意的驚喜、充滿巧思的佈置、華美的擺設，更是充滿詩意的空間，這些作品各有各的特色，每一件都讓您對現今的建築設計有更深入、廣泛的認識！', 'http://pic.eslite.com/Upload/Product/201104/m/634394383985781250.jpg', 1, 1750, 10, 'FR', 9),
	(56, '940140769X', '50Habitations Extraordinaires Pour BudgetOrdinaire', 'architecture', 'Peter Slaets/ Gregory Mees', 'Uitgeverij Terra Lannoo', '2013-03-01', '本書案例由不同的專業評論50多個建設專案。你將找到所有必要的資訊都為建造新的建築物翻修50個單戶住宅的選擇。一切都考慮在內：用戶端的意願，視覺的建築師、切實可行的解決辦法、預算和其按勞分配的結合，更不用提材料的選擇和各項措施以節約能源。', 'http://pic.eslite.com/Upload/Product/201503/m/635616594612421250.jpg', 1, 2600, 10, 'FR', 9),
	(57, '1568989873', 'Inside Prefab: The Ready-Made Interior', 'architecture', 'Deborah Schneiderman', 'PRINCETON ARCHITECTURAL PRESS', '2012-01-01', '有別於傳統建築方法將所有材料集中在工地施作，「預鑄建築」是一種系統化建築工法，透過將建築物拆解為各個單元於工廠製造完成，而工地部分只要完成倒灌基礎再把預製好的單元組裝架設完成即可。預鑄建築的涵蓋層面包括內部裝修、水電設備、廚房及浴廁器具等部分。由於建造成本較低且施作速度快，近來預鑄式技法獲得越來越多當代室內設計師的青睞。本書首先介紹預鑄式室內設計的歷史背景，接著以豐富圖說從24件優秀的室設作品（包括來自知名建築師阪茂、Greg Lynn的作品），探討預鑄式住屋內裝的 各項細節運用（如牆壁、廚房、浴室到家具等）。', 'http://pic.eslite.com/Upload/Product/201112/m/634599100377303750.jpg', 1, 875, 20, 'FR', 9),
	(58, '3836560429', 'Mies van der Rohe (New Ed.)', 'architecture', 'Claire Zimmerman', 'TASCHEN UK', '2015-10-29', 'Famed for his motto less is more, Ludwig Mies van der Rohe (1886 1969) was one of the founding fathers of modern architecture and a hotly-debated tastemaker of twentieth-century aesthetics and urban experience.Van der Rohe s philosophy was one of underlying truth in pure forms and proportions. With the help of contemporary technological and material developments, he sought a stripped-down purity to architecture, showcased by the likes of the Seagram Building and Farnsworth House. Some spoke out against this stark approach as the precursor to bland, generic cityscapes. Others cite van der Rohe as the ultimate master of an abidingly elegant essence. This book presents more than 20 of van der Rohe s projects from the period 1906 1967 to introduce his groundbreaking practise and influence in both America and Europe.', 'http://pic.eslite.com/Upload/Product/201511/m/635827597640310000.jpg', 1, 525, 25, 'FR', 9),
	(59, '1906417903', 'Happy Home', 'architecture', 'Charlotte Hedeman Gueniau', 'Jacqui Small LLP', '2013-11-25', '來自丹麥的RICE，以其販售繽紛鮮豔的生活用品與雜貨聞名。取名為RICE，因為米對大說數人來說，是生活中不可或缺的食物。他們想告訴世人，日常中再怎麼平凡瑣碎卻必要的事物，都能變得有趣討喜。而要如何妝點出一個明亮溫馨的家呢？丹麥設計不只有簡約低調的作風，RICE風格充滿五顏六色、歡樂與享受，旗下眾多的創新家居用品不只適合哥本哈根的公寓，從超現代工作室到鄉間小屋都能布置得溫馨宜人。Happy Home 是RICE精神的最佳寫照，翻開這本書，無論是要佈置客廳、廚房、浴室、臥房或兒童房，都能在其中找到相應的布置靈感，與伴隨而生的生活美學。', 'http://pic.eslite.com/Upload/Product/201312/m/635235627930281250.jpg', 1, 1590, 10, 'FR', 9),
	(60, '9020991876', 'Stijlvol Wonen V (荷蘭文版)', 'architecture', 'Tim Torfs', 'Uitgeverij Terra Lannoo', '2010-11-30', '本書透露現代歐洲極為細緻的鄉村風格,是本系列出版的第五輯,甘為設計師推敲歐洲生活品味德參考指南.', 'http://pic.eslite.com/Upload/Product/201512/m/635854196120016250.jpg', 1, 2100, 15, 'FR', 9),
	(61, '0811862852', 'Living Homes', 'architecture', 'McGregor, Suzi Moore/ Trulsson', 'CHRONICLE BOOKS', '2008-03-01', '本書以二十二個居家設計的實際案例說明永續建築設計的基本觀念和常用素材，本書中介紹的案例遍佈美國科羅拉多、亞歷桑納、新墨西哥等地，將利用不同建材的屋舍分成泥磚（Adobe）、壓實硬土（Rammed Earth）、麥桿（Straw Bale）和再發明、回收及高科技（Reinvented, Recycled, and high-tech Materials）四類，然後針對每則個案詳細介紹該棟建築的特色、內外環境與建造歷史。看著書中寬敞舒朗的屋舍景致，運用天然建材的樸實溫暖，卻又不失現代感的舒適設計，讓人對於綠建築更加心生嚮往，本書也讓讀者對於綠建築設計的可行性及實用性有更深的認識與了解。', 'http://pic.eslite.com/Upload/Product/200903/m/633734199131250000.jpg', 1, 1050, 5, 'FR', 9),
	(62, '4904403142', 'インテリアトレンドビジョン 2016', 'architecture', '佐戸川和久', 'ト－ソ－出版', '2016-01-30', '由業界知名的Zero First Design公司副社長佐戸川和久走訪世界各地的主要家具家飾展，包含德國科隆國際家具展、巴黎家具家飾展等等，收集歐美各國的最新資訊，整合為最新潮流的簡介。豐富的照片以及展覽報告，除了欣賞最新流行的家具設計、配色與花紋的主流以外，也能認識世界最尖端的家具製造商、居家裝飾的生活器具、織品、室內裝潢運用的各種素材：地板、門窗、飾板等，只要是人們居住空間所必備的要素都在本書收集的資訊中！', 'http://pic.eslite.com/Upload/Product/201602/m/635900894096853750.jpg', 1, 1080, 10, 'FR', 9),
	(63, '3037681837', 'Sommeliers\' Heaven', 'architecture', 'Paolo Basso', 'Verlagshaus Braun', '2015-12-07', '酒窖是一個理想的功能和風格融合的地方。這些空間不僅有完美地控制溫度、 濕度和空調，但經常也迷人設計在同一時間。本書說明了夢幻般的葡萄酒值得奇特空間用於存儲、 顯示、 喝，和分享靈感的來源。', 'http://pic.eslite.com/Upload/Product/201604/m/635967382691553750.jpg', 1, 2750, 5, 'FR', 9),
	(64, '3037682248', 'Massive, Expressive, Sculptural', 'architecture', 'Chris van Uffelen', 'Verlagshaus Braun', '2017-11-09', 'Buildings designated brutalist in style were largely built in the 1960s and 1970s, exuding an aura of daring, uncompromising design today. It is the French term "brut,“ meaning raw or unrefined, that lent its name to this particular architectural phenomenon. Vilified for decades as the step-child of modernism, brutalist architecture is now enjoying an astonishing comeback as the latest discovery among digital trendsetters. As well as fascinating users across social networks, brutalism is also inspiring contemporary architecture. Large-scale sculptural forms, coarsely finished materials and floor plans that defy convention merge with contemporary design to generate enthralling new creations. This book offers a sophisticated overview of post-war and contemporary brutalist buildings and of the relationship – in appearance and design, in the grand concepts and the smallest details – between brutalism today and its ancestors.', 'http://pic.eslite.com/Upload/Product/201711/m/636452306512122500.jpg', 1, 1699, 5, 'FR', 9);
/*!40000 ALTER TABLE `ib_book` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.ib_category 結構
CREATE TABLE IF NOT EXISTS `ib_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `IB_category_name_21f2ecfc` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.ib_category 的資料：~9 rows (大約)
/*!40000 ALTER TABLE `ib_category` DISABLE KEYS */;
INSERT INTO `ib_category` (`id`, `name`, `slug`) VALUES
	(1, 'literature', 'literature'),
	(2, 'art', 'art'),
	(3, 'life', 'life'),
	(4, 'comics', 'comics'),
	(5, 'science', 'science'),
	(6, 'society', 'society'),
	(7, 'language', 'language'),
	(8, 'computer', 'computer'),
	(9, 'else', 'else');
/*!40000 ALTER TABLE `ib_category` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.ib_comment 結構
CREATE TABLE IF NOT EXISTS `ib_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `account_id_id` int(11) DEFAULT NULL,
  `book_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IB_comment_account_id_id_38847eac_fk_auth_user_id` (`account_id_id`),
  KEY `IB_comment_book_id_id_78e75312_fk_IB_book_id` (`book_id_id`),
  CONSTRAINT `IB_comment_account_id_id_38847eac_fk_auth_user_id` FOREIGN KEY (`account_id_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `IB_comment_book_id_id_78e75312_fk_IB_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `ib_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.ib_comment 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_comment` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.ib_discountpolicy 結構
CREATE TABLE IF NOT EXISTS `ib_discountpolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_description` longtext NOT NULL,
  `policy_type` varchar(50) NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.ib_discountpolicy 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_discountpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_discountpolicy` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.orders_order 結構
CREATE TABLE IF NOT EXISTS `orders_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_cost` int(11) NOT NULL,
  `books_cost` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `shipment_date` datetime(6) DEFAULT NULL,
  `arrival_date` datetime(6) DEFAULT NULL,
  `account_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_account_id_id_ec951cae_fk_auth_user_id` (`account_id_id`),
  CONSTRAINT `orders_order_account_id_id_ec951cae_fk_auth_user_id` FOREIGN KEY (`account_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.orders_order 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;

-- 傾印  表格 internetbookstore.orders_orderlist 結構
CREATE TABLE IF NOT EXISTS `orders_orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_quantity` int(10) unsigned NOT NULL,
  `book_id_id` int(11) NOT NULL,
  `order_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderlist_book_id_id_4258dde4_fk_IB_book_id` (`book_id_id`),
  KEY `orders_orderlist_order_id_id_0caaf608_fk_orders_order_id` (`order_id_id`),
  CONSTRAINT `orders_orderlist_book_id_id_4258dde4_fk_IB_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `ib_book` (`id`),
  CONSTRAINT `orders_orderlist_order_id_id_0caaf608_fk_orders_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.orders_orderlist 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `orders_orderlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_orderlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
