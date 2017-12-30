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


-- 傾印 information_schema 的資料庫結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `information_schema`;

-- 傾印  未知，應不再出現 information_schema. 結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

-- 傾印  未知，應不再出現 internetbookstore. 結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 mysql 的資料庫結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mysql`;

-- 傾印  未知，應不再出現 mysql. 結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

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
	(1, 'Can add group', 1, 'add_group'),
	(2, 'Can change group', 1, 'change_group'),
	(3, 'Can delete group', 1, 'delete_group'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add user', 3, 'add_user'),
	(8, 'Can change user', 3, 'change_user'),
	(9, 'Can delete user', 3, 'delete_user'),
	(10, 'Can add content type', 4, 'add_contenttype'),
	(11, 'Can change content type', 4, 'change_contenttype'),
	(12, 'Can delete content type', 4, 'delete_contenttype'),
	(13, 'Can add category', 5, 'add_category'),
	(14, 'Can change category', 5, 'change_category'),
	(15, 'Can delete category', 5, 'delete_category'),
	(16, 'Can add book', 6, 'add_book'),
	(17, 'Can change book', 6, 'change_book'),
	(18, 'Can delete book', 6, 'delete_book'),
	(19, 'Can add profile', 7, 'add_profile'),
	(20, 'Can change profile', 7, 'change_profile'),
	(21, 'Can delete profile', 7, 'delete_profile'),
	(22, 'Can add log entry', 8, 'add_logentry'),
	(23, 'Can change log entry', 8, 'change_logentry'),
	(24, 'Can delete log entry', 8, 'delete_logentry'),
	(25, 'Can add order', 9, 'add_order'),
	(26, 'Can change order', 9, 'change_order'),
	(27, 'Can delete order', 9, 'delete_order'),
	(28, 'Can add order list', 10, 'add_orderlist'),
	(29, 'Can change order list', 10, 'change_orderlist'),
	(30, 'Can delete order list', 10, 'delete_orderlist'),
	(31, 'Can add session', 11, 'add_session'),
	(32, 'Can change session', 11, 'change_session'),
	(33, 'Can delete session', 11, 'delete_session'),
	(34, 'Can add discount', 12, 'add_discount'),
	(35, 'Can change discount', 12, 'change_discount'),
	(36, 'Can delete discount', 12, 'delete_discount'),
	(37, 'Can add comment', 13, 'add_comment'),
	(38, 'Can change comment', 13, 'change_comment'),
	(39, 'Can delete comment', 13, 'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


-- 傾印 world 的資料庫結構
CREATE DATABASE IF NOT EXISTS `world` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `world`;

-- 傾印  未知，應不再出現 world. 結構
CREATE DATABASE IF NOT EXISTS `world` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 sys 的資料庫結構
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sys`;

-- 傾印  未知，應不再出現 sys. 結構
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 performance_schema 的資料庫結構
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `performance_schema`;

-- 傾印  未知，應不再出現 performance_schema. 結構
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 mysql 的資料庫結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mysql`;

-- 傾印  未知，應不再出現 mysql. 結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

-- 傾印  未知，應不再出現 internetbookstore. 結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 information_schema 的資料庫結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `information_schema`;

-- 傾印  未知，應不再出現 information_schema. 結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 world 的資料庫結構
CREATE DATABASE IF NOT EXISTS `world` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `world`;

-- 傾印  未知，應不再出現 world. 結構
CREATE DATABASE IF NOT EXISTS `world` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 sys 的資料庫結構
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sys`;

-- 傾印  未知，應不再出現 sys. 結構
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 performance_schema 的資料庫結構
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `performance_schema`;

-- 傾印  未知，應不再出現 performance_schema. 結構
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 mysql 的資料庫結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mysql`;

-- 傾印  未知，應不再出現 mysql. 結構
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 internetbookstore 的資料庫結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internetbookstore`;

-- 傾印  未知，應不再出現 internetbookstore. 結構
CREATE DATABASE IF NOT EXISTS `internetbookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印 information_schema 的資料庫結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `information_schema`;

-- 傾印  未知，應不再出現 information_schema. 結構
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;


-- 傾印  的資料庫結構
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
