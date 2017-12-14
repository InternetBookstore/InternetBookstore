-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 服務器版本:                        5.7.19-log - MySQL Community Server (GPL)
-- 服務器操作系統:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 導出 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

-- 導出  表 internetbookstore.auth_group 結構
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.auth_group 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 導出  表 internetbookstore.auth_group_permissions 結構
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

-- 正在導出表  internetbookstore.auth_group_permissions 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 導出  表 internetbookstore.auth_permission 結構
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.auth_permission 的資料：~36 rows (大約)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add group', 2, 'add_group'),
	(5, 'Can change group', 2, 'change_group'),
	(6, 'Can delete group', 2, 'delete_group'),
	(7, 'Can add user', 3, 'add_user'),
	(8, 'Can change user', 3, 'change_user'),
	(9, 'Can delete user', 3, 'delete_user'),
	(10, 'Can add permission', 4, 'add_permission'),
	(11, 'Can change permission', 4, 'change_permission'),
	(12, 'Can delete permission', 4, 'delete_permission'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add discount policy', 7, 'add_discountpolicy'),
	(20, 'Can change discount policy', 7, 'change_discountpolicy'),
	(21, 'Can delete discount policy', 7, 'delete_discountpolicy'),
	(22, 'Can add account', 8, 'add_account'),
	(23, 'Can change account', 8, 'change_account'),
	(24, 'Can delete account', 8, 'delete_account'),
	(25, 'Can add book', 9, 'add_book'),
	(26, 'Can change book', 9, 'change_book'),
	(27, 'Can delete book', 9, 'delete_book'),
	(28, 'Can add order list', 10, 'add_orderlist'),
	(29, 'Can change order list', 10, 'change_orderlist'),
	(30, 'Can delete order list', 10, 'delete_orderlist'),
	(31, 'Can add comment', 11, 'add_comment'),
	(32, 'Can change comment', 11, 'change_comment'),
	(33, 'Can delete comment', 11, 'delete_comment'),
	(34, 'Can add order', 12, 'add_order'),
	(35, 'Can change order', 12, 'change_order'),
	(36, 'Can delete order', 12, 'delete_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 導出  表 internetbookstore.auth_user 結構
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.auth_user 的資料：~2 rows (大約)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$36000$lPIXxXhVugS6$NiMwwKy/p0E7SfWl5+k3aDoMvnWxAzULFUhZ2tJBd70=', '2017-12-04 08:59:10.350135', 1, 'wto2005716', '', '', 'wto2005716@yahoo.com.tw', 1, 1, '2017-12-04 08:57:53.539028'),
	(2, 'pbkdf2_sha256$36000$JW5R6gjaDo5l$hsuxmiKiZygimWqDzELpavZHrjQr7O0DmJc36khdXHw=', '2017-12-04 14:54:59.534115', 0, 'staff1', '', '', '', 1, 1, '2017-12-04 09:02:32.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- 導出  表 internetbookstore.auth_user_groups 結構
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

-- 正在導出表  internetbookstore.auth_user_groups 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- 導出  表 internetbookstore.auth_user_user_permissions 結構
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.auth_user_user_permissions 的資料：~4 rows (大約)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 2, 1),
	(2, 2, 25),
	(3, 2, 26),
	(4, 2, 27);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- 導出  表 internetbookstore.django_admin_log 結構
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.django_admin_log 的資料：~2 rows (大約)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2017-12-04 09:02:32.700338', '2', 'staff1', 1, '[{"added": {}}]', 3, 1),
	(2, '2017-12-04 09:04:44.839720', '2', 'staff1', 2, '[{"changed": {"fields": ["is_staff", "user_permissions"]}}]', 3, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 導出  表 internetbookstore.django_content_type 結構
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.django_content_type 的資料：~12 rows (大約)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(2, 'auth', 'group'),
	(4, 'auth', 'permission'),
	(3, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(8, 'IB', 'account'),
	(9, 'IB', 'book'),
	(11, 'IB', 'comment'),
	(7, 'IB', 'discountpolicy'),
	(12, 'IB', 'order'),
	(10, 'IB', 'orderlist'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 導出  表 internetbookstore.django_migrations 結構
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.django_migrations 的資料：~19 rows (大約)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'IB', '0001_initial', '2017-11-27 07:24:04.690695'),
	(2, 'IB', '0002_book', '2017-11-27 07:24:05.179488'),
	(3, 'IB', '0003_auto_20171127_1523', '2017-11-27 07:24:19.617057'),
	(4, 'contenttypes', '0001_initial', '2017-11-27 07:24:20.410584'),
	(5, 'auth', '0001_initial', '2017-11-27 07:24:33.858022'),
	(6, 'admin', '0001_initial', '2017-11-27 07:24:36.854291'),
	(7, 'admin', '0002_logentry_remove_auto_add', '2017-11-27 07:24:36.992900'),
	(8, 'contenttypes', '0002_remove_content_type_name', '2017-11-27 07:24:39.469713'),
	(9, 'auth', '0002_alter_permission_name_max_length', '2017-11-27 07:24:40.604853'),
	(10, 'auth', '0003_alter_user_email_max_length', '2017-11-27 07:24:41.381026'),
	(11, 'auth', '0004_alter_user_username_opts', '2017-11-27 07:24:41.491328'),
	(12, 'auth', '0005_alter_user_last_login_null', '2017-11-27 07:24:42.181344'),
	(13, 'auth', '0006_require_contenttypes_0002', '2017-11-27 07:24:42.211217'),
	(14, 'auth', '0007_alter_validators_add_error_messages', '2017-11-27 07:24:42.285394'),
	(15, 'auth', '0008_alter_user_username_max_length', '2017-11-27 07:24:43.588522'),
	(16, 'sessions', '0001_initial', '2017-11-27 07:24:44.180617'),
	(17, 'IB', '0004_auto_20171128_2329', '2017-11-28 15:29:23.538727'),
	(18, 'IB', '0005_auto_20171129_1718', '2017-11-29 09:18:18.292239'),
	(19, 'IB', '0006_auto_20171129_2319', '2017-11-29 15:19:53.225996'),
	(20, 'IB', '0007_remove_account_photo', '2017-12-05 11:26:39.411478');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 導出  表 internetbookstore.django_session 結構
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.django_session 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_account 結構
CREATE TABLE IF NOT EXISTS `ib_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(60) NOT NULL,
  `cellphone` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_account 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_account` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_book 結構
CREATE TABLE IF NOT EXISTS `ib_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(30) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `publish_date` date NOT NULL,
  `description` longtext,
  `photo` varchar(200) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_book 的資料：~2 rows (大約)
/*!40000 ALTER TABLE `ib_book` DISABLE KEYS */;
INSERT INTO `ib_book` (`id`, `isbn`, `bookname`, `author`, `publisher`, `publish_date`, `description`, `photo`, `state`, `price`, `stock`, `language`, `category`) VALUES
	(1, '986954291', '曾經 世紀末抒情', '南方朔', '春天出版國際文化有限公司', '2017-11-13', '2132132', 'http://pic.eslite.com/Upload/Product/201711/m/636453810983977082.jpg', 1, 320, 10, 'Chinese', '文學'),
	(2, '9869542913', '再死一次  Die Again', '泰絲．格里森 Tess Gerritsen', '春天出版國際文化有限公司', '2017-10-06', '當波士頓兇殺組警探珍．瑞卓利和法醫莫拉．艾爾思被要求趕到一個犯罪現場時，她們發現這樁兇案有著最兇猛野獸的典型特徵，甚至包括屍體上的爪痕。死者是知名獵人兼標本剝製師里昂．勾特，家中牆上掛著許多獸頭標本。但只有最邪惡的人類雙手，才可能把他的屍體佈置得像是一頭獵獲物的模樣。勾特是否不智地喚醒了一個掠食者，而且比他所曾獵殺過的那些動物都更危險？', 'http://pic.eslite.com/Upload/Product/201710/m/636424435148048750.jpg', 1, 380, 10, 'Chinese', '文學');
/*!40000 ALTER TABLE `ib_book` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_comment 結構
CREATE TABLE IF NOT EXISTS `ib_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `account_id_id` int(11) DEFAULT NULL,
  `book_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IB_comment_account_id_id_38847eac` (`account_id_id`),
  KEY `IB_comment_book_id_id_78e75312` (`book_id_id`),
  CONSTRAINT `IB_comment_account_id_id_38847eac_fk_IB_account_id` FOREIGN KEY (`account_id_id`) REFERENCES `ib_account` (`id`),
  CONSTRAINT `IB_comment_book_id_id_78e75312_fk_IB_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `ib_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_comment 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_comment` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_discountpolicy 結構
CREATE TABLE IF NOT EXISTS `ib_discountpolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_description` longtext NOT NULL,
  `policy_type` varchar(50) NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_discountpolicy 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_discountpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_discountpolicy` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_order 結構
CREATE TABLE IF NOT EXISTS `ib_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_cost` int(11) DEFAULT NULL,
  `order_date` datetime(6) NOT NULL,
  `shipment_date` datetime(6) DEFAULT NULL,
  `arrival_date` datetime(6) DEFAULT NULL,
  `shipment_cost` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_order 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_order` ENABLE KEYS */;

-- 導出  表 internetbookstore.ib_orderlist 結構
CREATE TABLE IF NOT EXISTS `ib_orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_quantity` int(11) NOT NULL,
  `book_id_id` int(11) NOT NULL,
  `order_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IB_orderlist_book_id_id_61f8dff5` (`book_id_id`),
  KEY `IB_orderlist_order_id_id_02274d3e` (`order_id_id`),
  CONSTRAINT `IB_orderlist_book_id_id_61f8dff5_fk_IB_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `ib_book` (`id`),
  CONSTRAINT `IB_orderlist_order_id_id_02274d3e_fk_IB_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `ib_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  internetbookstore.ib_orderlist 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `ib_orderlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_orderlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
