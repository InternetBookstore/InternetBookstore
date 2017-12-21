-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        5.7.20-log - MySQL Community Server (GPL)
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
	(5, 'pbkdf2_sha256$36000$I65znPmniHmN$NSOjni8AqR81gHGLsjsrC31kim61a9julECK5kcNkIU=', '2017-12-21 09:27:54.064391', 1, 'admin', '', '', 'admin@yahoo.com.tw', 1, 1, '2017-12-21 09:27:38.106101');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.django_admin_log 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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

-- 正在傾印表格  internetbookstore.django_session 的資料：~12 rows (大約)
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在傾印表格  internetbookstore.ib_book 的資料：~4 rows (大約)
/*!40000 ALTER TABLE `ib_book` DISABLE KEYS */;
INSERT INTO `ib_book` (`id`, `isbn`, `bookname`, `slug`, `author`, `publisher`, `publish_date`, `description`, `photo`, `state`, `price`, `stock`, `language`, `category_id`) VALUES
	(1, '9869539327', '傾我所有去生活', 'literature', '蘇美', '避風港文化有限公司', '2017-12-13', '「在這個兵荒馬亂、朝不保夕的世界裡，人人都在留後路。想到還能離婚，才敢結婚；想到共同財產能夠瓜分，才敢買房……其實，一切都沒你想像的那麼重要，給點娛樂精神好不好！」\r\n──大齡文藝女青年、人母、人妻、人師／蘇美\r\n\r\n人生況味千千萬，酸甜苦辣都必須和血吞\r\n不必非得積極，卻得用心體會\r\n向生活，致敬！', 'http://pic.eslite.com/Upload/Product/201712/m/636478003119395644.jpg', 1, 300, 10, 'CH', 1),
	(2, '9869390978', '第二個家 見', 'art', '謝佳見', '凱特文化創意股份有限公司', '2017-12-20', '台北生活是一則說不完的故事， \r\n每天有新的敘事風格，結局永遠未定； \r\n而他決定為你停留，相約在每一個溫暖之處。 \r\n\r\n◎演技派優雅男神—謝佳見的寫真首部作，與你共享在台北的零距離生活。 \r\n◎完整陳述演藝工作與生活的心緒歷程，屬於謝佳見的絕對真實面。 \r\n\r\n由馬來西亞到台北，從零開始，全然陌生的台北生活像一場豁出一切的冒險，詮釋戲劇角色的過程中，同樣在現實的異鄉，形塑全新可能。如劇情瞬變的小說，謝佳見以文字與影像同步傳遞在城市裡的經驗與探索，轉場換景之間，與所有人一起重返最初。', 'http://pic.eslite.com/Upload/Product/201712/m/636477144202908750.jpg', 1, 450, 20, 'CH', 2),
	(3, '9863124842', '我在SOU．SOU的設計工作: 京都傳統風的時尚新美學  伝統の続きをデザインする: SOU．SOU', 'life', '若林剛之', '旗標科技股份有限公司', '2017-12-29', '「SOU‧SOU」是來自京都的在地品牌，目前已成功行銷全球，在台灣全聯、Uniqlo、誠品書店文具館也曾造成搶購風潮，更有許多粉絲直接殺到京都和東京的專賣店購買。這就是「SOU‧SOU」的迷人魅力，以充滿現代感、時尚可愛的設計產品，將在地品牌行銷到全世界。 \r\n\r\n「SOU‧SOU」創立的目標並非為了賺錢，而是希望藉由精美的設計，扶植和復興日本傳統工藝。經過十多年的努力，隨著「SOU‧SOU」行銷世界各地，包含分趾鞋、伊勢木棉、染布工廠等許多老工廠與老師傅，都隨著「SOU‧SOU」的成功而找到重生的力量。 \r\n\r\n「SOU‧SOU」這個品牌的成立，其實來自偶然的緣分。身為服裝設計師的若林剛之先生 (本書作者) 為了裝潢自宅，認識了辻村久信建築師，又透過辻村先生的案子認識了布料紋樣設計師––脇阪克二先生。三人越聊越投機，決定共同創立這個在地品牌。剛起步時其實遭逢許多困難，完全賣不出去，直到一雙「足袋」(分趾鞋) 奇蹟似地拯救了一間公司……。 \r\n\r\n如果你喜愛「SOU‧SOU」的設計產品，絕對不可錯過這本書！創辦人之一的若林剛之先生將親自告訴你「SOU‧SOU」的故事。', 'http://pic.eslite.com/Upload/Product/201712/m/636481458184106250.jpg', 1, 350, 20, 'CH', 3),
	(4, '9864773720', '看漫畫了解人體感官  The Senses', 'science', '馬泰歐．法瑞內拉 Matteo Farinella', '商周出版', '2017-12-14', '◎入圍第八屆吳大猷科學普及著作獎青少年特別獎 \r\n\r\n透過撫觸能增加早產兒的體重？舌頭其實沒有味覺分區？何以美味的馬德蓮蛋糕會使得普魯斯特想起過去的回憶？我們的耳朵如何接收空氣中的振動？什麼情況會讓我們「視而不見」？ \r\n\r\n跟著畫中人物走進感官的世界，造訪四種觸覺受器，近距離檢視我們的味蕾，探索氣味如何連結到記憶，還有視錯覺如何誘使眼睛看到根本不存在之物…… \r\n\r\n在這本幽默、充滿細節且同樣易於親近的書中，神經科學家馬泰歐．法瑞內拉將再次透過就連最少接觸科學的讀者也會喜歡的插畫與圖像，帶領大家踏上狂野的科學之旅，認識關於五感的重要學者與迷人事實，並解釋最先端的科學研究。', 'http://pic.eslite.com/Upload/Product/201712/m/636481460310981250.jpg', 1, 300, 20, 'CH', 5);
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
