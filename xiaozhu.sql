-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 04 月 12 日 12:43
-- 服务器版本: 5.5.38
-- PHP 版本: 5.4.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `xiaozhu2`
--

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_access`
--

CREATE TABLE IF NOT EXISTS `pigcms_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_access`
--

INSERT INTO `pigcms_access` (`role_id`, `node_id`, `pid`, `level`, `module`) VALUES
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL),
(5, 17, 11, 3, NULL),
(5, 16, 11, 3, NULL),
(5, 15, 11, 3, NULL),
(5, 14, 11, 3, NULL),
(5, 13, 11, 3, NULL),
(5, 12, 11, 3, NULL),
(5, 11, 2, 2, NULL),
(5, 10, 6, 3, NULL),
(5, 9, 6, 3, NULL),
(5, 8, 6, 3, NULL),
(5, 7, 6, 3, NULL),
(5, 6, 2, 2, NULL),
(5, 2, 1, 0, NULL),
(5, 4, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(5, 29, 25, 3, NULL),
(5, 28, 25, 3, NULL),
(5, 27, 25, 3, NULL),
(5, 26, 25, 3, NULL),
(5, 25, 3, 2, NULL),
(5, 24, 18, 3, NULL),
(5, 23, 18, 3, NULL),
(5, 22, 18, 3, NULL),
(5, 21, 18, 3, NULL),
(5, 20, 18, 3, NULL),
(5, 19, 18, 3, NULL),
(5, 18, 3, 2, NULL),
(5, 3, 1, 0, NULL),
(5, 30, 25, 3, NULL),
(5, 31, 25, 3, NULL),
(5, 5, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_access_count`
--

CREATE TABLE IF NOT EXISTS `pigcms_access_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT 'alltoken',
  `module` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `update_time` int(10) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `module` (`module`),
  KEY `controller` (`controller`),
  KEY `action` (`action`),
  KEY `count` (`count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='访问统计表' AUTO_INCREMENT=385 ;

--
-- 转存表中的数据 `pigcms_access_count`
--

INSERT INTO `pigcms_access_count` (`id`, `token`, `module`, `controller`, `action`, `count`, `update_time`, `create_time`) VALUES
(1, 'tzyzkj1435125650', 'wap', 'index', 'index', 28, 1439128714, 1438857110),
(2, 'alltoken', 'wap', 'index', 'index', 4, 1438866424, 1438857110),
(3, 'fzjjmj1436249532', 'wap', 'index', 'tel', 6, 1439016320, 1438858251),
(4, 'alltoken', 'wap', 'index', 'tel', 4, 1438859058, 1438858251),
(5, 'slhfhr1436404509', 'wap', 'index', 'index', 40, 1439124315, 1438866414),
(6, 'alltoken', 'wap', 'index', 'index', 30, 1438956916, 1438880368),
(7, 'slhfhr1436404509', 'wap', 'store', 'products', 2, 1439114380, 1438924264),
(8, 'alltoken', 'wap', 'store', 'products', 1, 1438924264, 1438924264),
(9, 'alltoken', 'wap', 'index', 'index', 16, 1439036039, 1438995496),
(10, 'alltoken', 'wap', 'index', 'tel', 2, 1439016320, 1439015506),
(11, 'ehwhia1436969825', 'user', 'function', 'welcome', 1, 1439045475, 1439045475),
(378, 'alltoken', 'user', 'problem', 'game_set', 1, 1446489270, 1446489270),
(13, 'alltoken', 'wap', 'index', 'index', 18, 1439128714, 1439077872),
(14, 'alltoken', 'wap', 'store', 'products', 1, 1439114380, 1439114380),
(15, 'tzyzkj1435125650', 'wap', 'index', 'index', 168, 1439736998, 1439166383),
(16, 'alltoken', 'wap', 'index', 'index', 38, 1439218463, 1439166383),
(17, 'slhfhr1436404509', 'wap', 'index', 'index', 105, 1439732243, 1439167690),
(18, 'slhfhr1436404509', 'wap', 'store', 'cats', 2, 1439710707, 1439182837),
(19, 'alltoken', 'wap', 'store', 'cats', 1, 1439182837, 1439182837),
(20, 'tzyzkj1435125650', 'wap', 'index', 'lists', 1, 1439186336, 1439186336),
(21, 'alltoken', 'wap', 'index', 'lists', 1, 1439186336, 1439186336),
(22, 'slhfhr1436404509', 'wap', 'store', 'products', 4, 1439637212, 1439189242),
(23, 'alltoken', 'wap', 'store', 'products', 1, 1439189242, 1439189242),
(24, 'alltoken', 'wap', 'index', 'index', 44, 1439296296, 1439252066),
(25, 'alltoken', 'wap', 'store', 'products', 2, 1439290321, 1439264281),
(26, 'alltoken', 'wap', 'index', 'index', 51, 1439381098, 1439338541),
(27, 'alltoken', 'wap', 'index', 'index', 49, 1439479705, 1439424396),
(28, 'alltoken', 'wap', 'index', 'index', 40, 1439554855, 1439512175),
(29, 'alltoken', 'wap', 'index', 'index', 26, 1439646716, 1439594276),
(30, 'alltoken', 'wap', 'store', 'products', 1, 1439637212, 1439637212),
(31, 'slhfhr1436404509', 'wap', 'store', 'product', 1, 1439637248, 1439637248),
(32, 'alltoken', 'wap', 'store', 'product', 1, 1439637248, 1439637248),
(33, 'alltoken', 'wap', 'index', 'index', 25, 1439736998, 1439680180),
(34, 'alltoken', 'wap', 'store', 'cats', 1, 1439710707, 1439710707),
(35, 'tzyzkj1435125650', 'wap', 'index', 'index', 51, 1439883484, 1439765895),
(36, 'alltoken', 'wap', 'index', 'index', 42, 1439818887, 1439765895),
(37, 'slhfhr1436404509', 'wap', 'index', 'index', 28, 1439887398, 1439772917),
(38, 'alltoken', 'wap', 'index', 'index', 37, 1439887398, 1439857502),
(39, 'ibzrbc1439906871', 'user', 'function', 'welcome', 2, 1439908717, 1439908123),
(41, 'ibzrbc1439906871', 'user', 'micrstore', 'api', 4, 1439909031, 1439908134),
(42, 'alltoken', 'user', 'micrstore', 'api', 4, 1439909031, 1439908134),
(43, 'ibzrbc1439906871', 'user', 'index', 'index', 1, 1439908714, 1439908714),
(45, 'iusjum1439948067', 'user', 'alipay', 'index', 1, 1439948823, 1439948823),
(46, 'alltoken', 'user', 'alipay', 'index', 3, 1439949089, 1439948823),
(47, 'hitobn1439948203', 'user', 'alipay', 'index', 2, 1439949089, 1439948908),
(48, 'avclov1439948990', 'user', 'function', 'welcome', 1, 1439949047, 1439949047),
(377, 'iztlsr1439949156', 'user', 'problem', 'game_set', 1, 1446489270, 1446489270),
(50, 'cyvwqd1439949073', 'user', 'function', 'welcome', 4, 1439949383, 1439949089),
(51, 'admin', 'user', 'upyun', 'upload', 8, 1439963027, 1439949160),
(52, 'alltoken', 'user', 'upyun', 'upload', 21, 1439963027, 1439949160),
(53, 'iztlsr1439949156', 'user', 'home', 'set', 4, 1439951837, 1439949167),
(54, 'alltoken', 'user', 'home', 'set', 11, 1439951837, 1439949167),
(55, 'qgvdkw1439949139', 'user', 'function', 'welcome', 6, 1439950906, 1439949172),
(56, 'qgvdkw1439949139', 'user', 'assistente', 'index', 2, 1439949525, 1439949177),
(382, 'alltoken', 'user', 'assistente', 'index', 2, 1446489846, 1446489814),
(58, 'ascqfk1439949165', 'user', 'home', 'set', 4, 1439949988, 1439949184),
(59, 'ascqfk1439949165', 'user', 'assistente', 'index', 2, 1439949860, 1439949197),
(60, 'qgvdkw1439949139', 'user', 'autumns', 'index', 1, 1439949210, 1439949210),
(61, 'alltoken', 'user', 'autumns', 'index', 1, 1439949210, 1439949210),
(62, 'ascqfk1439949165', 'user', 'customtmpls', 'dynamic', 1, 1439949230, 1439949230),
(63, 'alltoken', 'user', 'customtmpls', 'dynamic', 7, 1439952147, 1439949230),
(64, 'qgvdkw1439949139', 'user', 'micrstore', 'index', 1, 1439949232, 1439949232),
(65, 'alltoken', 'user', 'micrstore', 'index', 14, 1439964264, 1439949232),
(66, 'ascqfk1439949165', 'user', 'customtmpls', 'mydynamic', 2, 1439949245, 1439949237),
(67, 'alltoken', 'user', 'customtmpls', 'mydynamic', 4, 1439952154, 1439949237),
(68, 'ascqfk1439949165', 'user', 'index', 'index', 4, 1439949527, 1439949239),
(383, 'iztlsr1439949156', 'user', 'quick', 'index', 1, 1446489851, 1446489851),
(70, 'iztlsr1439949156', 'user', 'sentiment', 'index', 10, 1439968671, 1439949246),
(71, 'alltoken', 'user', 'sentiment', 'index', 24, 1439968671, 1439949246),
(72, 'iztlsr1439949156', 'user', 'auth', 'index', 7, 1439950929, 1439949251),
(73, 'alltoken', 'user', 'auth', 'index', 42, 1439968602, 1439949251),
(74, 'ascqfk1439949165', 'user', 'tmpls', 'index', 1, 1439949265, 1439949265),
(75, 'alltoken', 'user', 'tmpls', 'index', 4, 1439968669, 1439949265),
(76, 'ascqfk1439949165', 'user', 'tmpls', 'qrcode', 1, 1439949267, 1439949267),
(77, 'alltoken', 'user', 'tmpls', 'qrcode', 4, 1439968670, 1439949267),
(78, 'ascqfk1439949165', 'user', 'game', 'config', 1, 1439949281, 1439949281),
(79, 'alltoken', 'user', 'game', 'config', 2, 1439951146, 1439949281),
(80, 'qgvdkw1439949139', 'user', 'micrstore', 'api', 2, 1439949331, 1439949284),
(81, 'alltoken', 'user', 'micrstore', 'api', 12, 1439963066, 1439949284),
(82, 'ascqfk1439949165', 'user', 'seniorscene', 'highlive', 1, 1439949295, 1439949295),
(83, 'alltoken', 'user', 'seniorscene', 'highlive', 9, 1439958761, 1439949295),
(84, 'ascqfk1439949165', 'user', 'person_card', 'index', 1, 1439949307, 1439949307),
(85, 'alltoken', 'user', 'person_card', 'index', 4, 1439951234, 1439949307),
(86, 'ascqfk1439949165', 'user', 'person_card', 'design', 1, 1439949319, 1439949319),
(87, 'alltoken', 'user', 'person_card', 'design', 3, 1439949991, 1439949319),
(88, 'ascqfk1439949165', 'user', 'bargain', 'index', 1, 1439949361, 1439949361),
(89, 'alltoken', 'user', 'bargain', 'index', 2, 1439950675, 1439949361),
(90, 'cyvwqd1439949073', 'user', 'index', 'index', 2, 1439949756, 1439949370),
(91, 'cyvwqd1439949073', 'user', 'assistente', 'index', 1, 1439949386, 1439949386),
(92, 'cyvwqd1439949073', 'user', 'assistente', 'add', 1, 1439949409, 1439949409),
(93, 'alltoken', 'user', 'assistente', 'add', 2, 1439949864, 1439949409),
(94, 'ascqfk1439949165', 'user', 'micrstore', 'index', 1, 1439949412, 1439949412),
(95, 'ascqfk1439949165', 'user', 'micrstore', 'api', 1, 1439949416, 1439949416),
(96, 'cyvwqd1439949073', 'user', 'templatemsg', 'index', 1, 1439949467, 1439949467),
(97, 'alltoken', 'user', 'templatemsg', 'index', 4, 1439964333, 1439949467),
(98, 'iusjum1439948067', 'user', 'index', 'index', 1, 1439949535, 1439949535),
(99, 'ascqfk1439949165', 'user', 'recognitiondata', 'index', 1, 1439949556, 1439949556),
(100, 'alltoken', 'user', 'recognitiondata', 'index', 1, 1439949556, 1439949556),
(101, 'ascqfk1439949165', 'user', 'sentiment', 'index', 2, 1439949606, 1439949563),
(102, 'ascqfk1439949165', 'user', 'auth', 'index', 3, 1439949579, 1439949571),
(103, 'cyvwqd1439949073', 'user', 'diymen', 'index', 2, 1439949582, 1439949578),
(104, 'alltoken', 'user', 'diymen', 'index', 22, 1439964051, 1439949578),
(105, 'ascqfk1439949165', 'user', 'helping', 'index', 1, 1439949589, 1439949589),
(106, 'alltoken', 'user', 'helping', 'index', 11, 1439968679, 1439949589),
(107, 'ascqfk1439949165', 'user', 'helping', 'set', 1, 1439949591, 1439949591),
(108, 'alltoken', 'user', 'helping', 'set', 10, 1439968680, 1439949591),
(109, 'ascqfk1439949165', 'user', 'sentiment', 'set', 1, 1439949610, 1439949610),
(110, 'alltoken', 'user', 'sentiment', 'set', 16, 1439968646, 1439949610),
(111, 'iztlsr1439949156', 'user', 'diymen', 'index', 2, 1439949627, 1439949625),
(112, 'iztlsr1439949156', 'user', 'link', 'insert', 1, 1439949632, 1439949632),
(113, 'alltoken', 'user', 'link', 'insert', 10, 1439959147, 1439949632),
(114, 'ascqfk1439949165', 'user', 'member_card', 'index', 1, 1439949636, 1439949636),
(115, 'alltoken', 'user', 'member_card', 'index', 4, 1439956820, 1439949636),
(116, 'ascqfk1439949165', 'user', 'diymen', 'index', 8, 1439949818, 1439949645),
(117, 'ascqfk1439949165', 'user', 'link', 'insert', 2, 1439949691, 1439949673),
(118, 'ascqfk1439949165', 'user', 'diymen', 'class_add', 3, 1439949751, 1439949676),
(119, 'alltoken', 'user', 'diymen', 'class_add', 5, 1439959173, 1439949676),
(120, 'cyvwqd1439949073', 'user', 'index', 'edit', 2, 1439949834, 1439949766),
(121, 'alltoken', 'user', 'index', 'edit', 8, 1439963702, 1439949766),
(122, 'ascqfk1439949165', 'user', 'diymen', 'class_edit', 3, 1439949815, 1439949777),
(123, 'alltoken', 'user', 'diymen', 'class_edit', 3, 1439949815, 1439949777),
(124, 'qgvdkw1439949139', 'user', 'seniorscene', 'highlive', 2, 1439951691, 1439949793),
(125, 'qgvdkw1439949139', 'user', 'person_card', 'index', 1, 1439949797, 1439949797),
(126, 'qgvdkw1439949139', 'user', 'person_card', 'design', 1, 1439949800, 1439949800),
(127, 'qgvdkw1439949139', 'user', 'voteimg', 'index', 3, 1439950911, 1439949850),
(128, 'alltoken', 'user', 'voteimg', 'index', 7, 1439950911, 1439949850),
(129, 'qgvdkw1439949139', 'user', 'voteimg', 'add_voteimg', 1, 1439949852, 1439949852),
(130, 'alltoken', 'user', 'voteimg', 'add_voteimg', 3, 1439950712, 1439949852),
(131, 'ascqfk1439949165', 'user', 'assistente', 'add', 1, 1439949864, 1439949864),
(132, 'ascqfk1439949165', 'user', 'service', 'service_fans', 1, 1439949870, 1439949870),
(133, 'alltoken', 'user', 'service', 'service_fans', 1, 1439949870, 1439949870),
(134, 'cyvwqd1439949073', 'user', 'person_card', 'index', 1, 1439949987, 1439949987),
(135, 'cyvwqd1439949073', 'user', 'person_card', 'design', 1, 1439949991, 1439949991),
(136, 'ddqhjy1439950027', 'user', 'function', 'welcome', 1, 1439950041, 1439950041),
(137, 'ddqhjy1439950027', 'user', 'micrstore', 'api', 1, 1439950067, 1439950067),
(138, 'vjotae1439949952', 'user', 'home', 'set', 1, 1439950071, 1439950071),
(139, 'vjotae1439949952', 'user', 'index', 'switchtpl', 3, 1439950080, 1439950077),
(140, 'alltoken', 'user', 'index', 'switchtpl', 3, 1439950080, 1439950077),
(141, 'ddqhjy1439950027', 'user', 'sentiment', 'index', 1, 1439950080, 1439950080),
(142, 'vjotae1439949952', 'user', 'index', 'index', 5, 1439950510, 1439950084),
(143, 'ddqhjy1439950027', 'user', 'auth', 'index', 4, 1439950094, 1439950086),
(144, 'vjotae1439949952', 'user', 'function', 'welcome', 5, 1439968597, 1439950088),
(145, 'sfrpky1439949951', 'user', 'function', 'welcome', 1, 1439950103, 1439950103),
(146, 'vjotae1439949952', 'user', 'sentiment', 'index', 3, 1439950234, 1439950107),
(147, 'vjotae1439949952', 'user', 'auth', 'index', 4, 1439968602, 1439950112),
(148, 'sfrpky1439949951', 'user', 'sentiment', 'index', 5, 1439950398, 1439950144),
(149, 'sfrpky1439949951', 'user', 'auth', 'index', 13, 1439950753, 1439950152),
(150, 'vjotae1439949952', 'user', 'assistente', 'index', 1, 1439950152, 1439950152),
(151, 'vjotae1439949952', 'user', 'sentiment', 'set', 2, 1439950233, 1439950161),
(152, 'sfrpky1439949951', 'user', 'sentiment', 'set', 6, 1439950396, 1439950173),
(153, 'vjotae1439949952', 'user', 'upyun', 'upload', 6, 1439950696, 1439950198),
(154, 'sfrpky1439949951', 'user', 'upyun', 'upload', 2, 1439950247, 1439950218),
(155, 'sfrpky1439949951', 'user', 'attachment', 'my', 2, 1439950249, 1439950222),
(156, 'alltoken', 'user', 'attachment', 'my', 4, 1439952452, 1439950222),
(157, 'sfrpky1439949951', 'user', 'attachment', 'index', 3, 1439950251, 1439950225),
(158, 'alltoken', 'user', 'attachment', 'index', 4, 1439952432, 1439950225),
(159, 'vjotae1439949952', 'user', 'index', 'apiinfo', 1, 1439950307, 1439950307),
(160, 'alltoken', 'user', 'index', 'apiinfo', 2, 1439958871, 1439950307),
(161, 'vjotae1439949952', 'wap', 'sentiment', 'index', 60, 1439964769, 1439950356),
(162, 'alltoken', 'wap', 'sentiment', 'index', 60, 1439964769, 1439950356),
(163, 'vjotae1439949952', 'user', 'index', 'edit', 1, 1439950478, 1439950478),
(164, 'vjotae1439949952', 'user', 'index', 'upsave', 1, 1439950507, 1439950507),
(165, 'alltoken', 'user', 'index', 'upsave', 2, 1439957318, 1439950507),
(166, 'sfrpky1439949951', 'user', 'school', 'index', 1, 1439950511, 1439950511),
(167, 'alltoken', 'user', 'school', 'index', 1, 1439950511, 1439950511),
(168, 'sfrpky1439949951', 'user', 'business', 'index', 1, 1439950529, 1439950529),
(169, 'alltoken', 'user', 'business', 'index', 2, 1439951284, 1439950529),
(170, 'sfrpky1439949951', 'user', 'car', 'index', 1, 1439950571, 1439950571),
(171, 'alltoken', 'user', 'car', 'index', 1, 1439950571, 1439950571),
(172, 'sfrpky1439949951', 'user', 'voteimg', 'index', 4, 1439950730, 1439950638),
(173, 'sfrpky1439949951', 'user', 'voteimg', 'add_voteimg', 2, 1439950712, 1439950641),
(174, 'vjotae1439949952', 'user', 'helping', 'index', 2, 1439950716, 1439950650),
(175, 'vjotae1439949952', 'user', 'helping', 'set', 2, 1439950715, 1439950652),
(176, 'cyvwqd1439949073', 'user', 'bargain', 'index', 1, 1439950675, 1439950675),
(177, 'sfrpky1439949951', 'wap', 'voteimg', 'index', 3, 1439951409, 1439950756),
(178, 'alltoken', 'wap', 'voteimg', 'index', 3, 1439951409, 1439950756),
(179, 'sfrpky1439949951', 'wap', 'voteimg', 'vote_record', 2, 1439950770, 1439950758),
(180, 'alltoken', 'wap', 'voteimg', 'vote_record', 2, 1439950770, 1439950758),
(181, 'vjotae1439949952', 'wap', 'helping', 'index', 3, 1439951059, 1439950765),
(182, 'alltoken', 'wap', 'helping', 'index', 7, 1439965496, 1439950765),
(183, 'sfrpky1439949951', 'wap', 'voteimg', 'apply', 2, 1439951394, 1439950768),
(184, 'alltoken', 'wap', 'voteimg', 'apply', 2, 1439951394, 1439950768),
(185, 'iztlsr1439949156', 'user', 'company', 'index', 1, 1439950841, 1439950841),
(186, 'alltoken', 'user', 'company', 'index', 2, 1439963962, 1439950841),
(187, 'iztlsr1439949156', 'user', 'areply', 'index', 1, 1439950844, 1439950844),
(188, 'alltoken', 'user', 'areply', 'index', 9, 1439958365, 1439950844),
(189, 'iztlsr1439949156', 'user', 'text', 'index', 1, 1439950845, 1439950845),
(190, 'alltoken', 'user', 'text', 'index', 4, 1439958309, 1439950845),
(191, 'bznhbf1439950816', 'user', 'function', 'welcome', 3, 1439968661, 1439950855),
(192, 'qgvdkw1439949139', 'user', 'index', 'index', 2, 1439950904, 1439950864),
(193, 'qgvdkw1439949139', 'user', 'index', 'edit', 1, 1439950868, 1439950868),
(194, 'bznhbf1439950816', 'user', 'customtmpls', 'dynamic', 4, 1439950965, 1439950893),
(375, 'iztlsr1439949156', 'user', 'problem', 'index', 1, 1446489268, 1446489268),
(376, 'alltoken', 'user', 'problem', 'index', 1, 1446489268, 1446489268),
(197, 'qgvdkw1439949139', 'user', 'voteimg', 'menu_list', 2, 1439950928, 1439950917),
(198, 'alltoken', 'user', 'voteimg', 'menu_list', 2, 1439950928, 1439950917),
(199, 'qgvdkw1439949139', 'user', 'voteimg', 'banner_manage', 2, 1439950930, 1439950922),
(200, 'alltoken', 'user', 'voteimg', 'banner_manage', 2, 1439950930, 1439950922),
(201, 'qgvdkw1439949139', 'user', 'voteimg', 'bottom_list', 1, 1439950923, 1439950923),
(202, 'alltoken', 'user', 'voteimg', 'bottom_list', 1, 1439950923, 1439950923),
(203, 'qgvdkw1439949139', 'user', 'voteimg', 'apply_list', 1, 1439950924, 1439950924),
(204, 'alltoken', 'user', 'voteimg', 'apply_list', 1, 1439950924, 1439950924),
(205, 'qgvdkw1439949139', 'user', 'voteimg', 'stat_list', 1, 1439950929, 1439950929),
(206, 'alltoken', 'user', 'voteimg', 'stat_list', 1, 1439950929, 1439950929),
(207, 'bznhbf1439950816', 'user', 'tmpls', 'index', 2, 1439968669, 1439950932),
(208, 'bznhbf1439950816', 'user', 'tmpls', 'qrcode', 2, 1439968670, 1439950932),
(209, 'qgvdkw1439949139', 'user', 'share', 'index', 1, 1439950938, 1439950938),
(210, 'alltoken', 'user', 'share', 'index', 1, 1439950938, 1439950938),
(211, 'iztlsr1439949156', 'user', 'sentiment', 'set', 6, 1439968646, 1439950940),
(212, 'qgvdkw1439949139', 'user', 'share', 'records', 1, 1439950943, 1439950943),
(213, 'alltoken', 'user', 'share', 'records', 1, 1439950943, 1439950943),
(214, 'bznhbf1439950816', 'user', 'customtmpls', 'mydynamic', 1, 1439951021, 1439951021),
(215, 'bznhbf1439950816', 'user', 'home', 'set', 2, 1439951051, 1439951050),
(216, 'qgvdkw1439949139', 'user', 'customtmpls', 'dynamic', 1, 1439951061, 1439951061),
(217, 'bznhbf1439950816', 'user', 'img', 'index', 1, 1439951072, 1439951072),
(218, 'alltoken', 'user', 'img', 'index', 1, 1439951072, 1439951072),
(219, 'bznhbf1439950816', 'user', 'other', 'index', 1, 1439951088, 1439951088),
(220, 'alltoken', 'user', 'other', 'index', 3, 1439964369, 1439951088),
(221, 'bznhbf1439950816', 'user', 'assistente', 'index', 1, 1439951091, 1439951091),
(222, 'vjotae1439949952', 'wap', 'share', 'sharedata', 2, 1439951361, 1439951138),
(223, 'alltoken', 'wap', 'share', 'sharedata', 2, 1439951361, 1439951138),
(224, 'bznhbf1439950816', 'user', 'game', 'config', 1, 1439951146, 1439951146),
(225, 'bznhbf1439950816', 'user', 'seniorscene', 'highlive', 2, 1439951225, 1439951177),
(226, 'bznhbf1439950816', 'user', 'person_card', 'index', 1, 1439951234, 1439951234),
(227, 'bznhbf1439950816', 'user', 'custom', 'record', 2, 1439951273, 1439951265),
(228, 'alltoken', 'user', 'custom', 'record', 2, 1439951273, 1439951265),
(229, 'bznhbf1439950816', 'user', 'custom', 'index', 2, 1439951271, 1439951270),
(230, 'alltoken', 'user', 'custom', 'index', 2, 1439951271, 1439951270),
(231, 'bznhbf1439950816', 'user', 'business', 'index', 1, 1439951284, 1439951284),
(232, 'vjotae1439949952', 'wap', 'index', 'memberreg', 3, 1439951927, 1439951331),
(233, 'alltoken', 'wap', 'index', 'memberreg', 4, 1439965034, 1439951331),
(234, 'vjotae1439949952', 'wap', 'index', 'profile', 3, 1439951938, 1439951336),
(235, 'alltoken', 'wap', 'index', 'profile', 4, 1439965043, 1439951336),
(236, 'bznhbf1439950816', 'user', 'api', 'index', 1, 1439951337, 1439951337),
(237, 'alltoken', 'user', 'api', 'index', 1, 1439951337, 1439951337),
(238, 'bznhbf1439950816', 'user', 'api', 'add', 1, 1439951342, 1439951342),
(239, 'alltoken', 'user', 'api', 'add', 1, 1439951342, 1439951342),
(240, 'bznhbf1439950816', 'user', 'index', 'index', 4, 1439968657, 1439951353),
(241, 'bznhbf1439950816', 'user', 'index', 'add', 1, 1439951359, 1439951359),
(242, 'alltoken', 'user', 'index', 'add', 1, 1439951359, 1439951359),
(243, 'vjotae1439949952', 'wap', 'share', 'sharenum', 1, 1439951361, 1439951361),
(244, 'alltoken', 'wap', 'share', 'sharenum', 1, 1439951361, 1439951361),
(245, 'qgvdkw1439949139', 'user', 'microbroker', 'index', 1, 1439951712, 1439951712),
(246, 'alltoken', 'user', 'microbroker', 'index', 1, 1439951712, 1439951712),
(247, 'iztlsr1439949156', 'user', 'micrstore', 'api', 16, 1440035352, 1439951829),
(248, 'iztlsr1439949156', 'user', 'index', 'edit', 2, 1439952579, 1439951840),
(373, 'iztlsr1439949156', 'user', 'function', 'welcome', 6, 1446489810, 1446489244),
(381, 'iztlsr1439949156', 'user', 'assistente', 'index', 2, 1446489846, 1446489814),
(251, 'iztlsr1439949156', 'user', 'micrstore', 'index', 5, 1440035061, 1439951926),
(379, 'iztlsr1439949156', 'user', 'index', 'index', 1, 1446489272, 1446489272),
(253, 'iztlsr1439949156', 'user', 'customtmpls', 'dynamic', 1, 1439952147, 1439952147),
(254, 'iztlsr1439949156', 'user', 'customtmpls', 'mydynamic', 1, 1439952154, 1439952154),
(255, 'cedgjq1439951515', 'user', 'function', 'welcome', 2, 1439952419, 1439952337),
(256, 'iztlsr1439949156', 'user', 'tmpls', 'index', 1, 1439952338, 1439952338),
(257, 'iztlsr1439949156', 'user', 'tmpls', 'qrcode', 1, 1439952341, 1439952341),
(258, 'qgvdkw1439949139', 'user', 'applegame', 'index', 1, 1439952353, 1439952353),
(259, 'alltoken', 'user', 'applegame', 'index', 1, 1439952353, 1439952353),
(260, 'qgvdkw1439949139', 'user', 'applegame', 'add', 2, 1439952444, 1439952356),
(261, 'alltoken', 'user', 'applegame', 'add', 2, 1439952444, 1439952356),
(262, 'cedgjq1439951515', 'user', 'sentiment', 'index', 2, 1439952440, 1439952376),
(263, 'cedgjq1439951515', 'user', 'auth', 'index', 5, 1439952397, 1439952381),
(264, 'cedgjq1439951515', 'user', 'index', 'index', 1, 1439952413, 1439952413),
(265, 'iztlsr1439949156', 'user', 'upyun', 'upload', 5, 1439952497, 1439952425),
(266, 'iztlsr1439949156', 'user', 'attachment', 'my', 2, 1439952452, 1439952427),
(267, 'iztlsr1439949156', 'user', 'attachment', 'index', 1, 1439952432, 1439952432),
(268, 'cedgjq1439951515', 'user', 'hongbao', 'index', 1, 1439952437, 1439952437),
(269, 'alltoken', 'user', 'hongbao', 'index', 4, 1439968677, 1439952437),
(270, 'iztlsr1439949156', 'user', 'seniorscene', 'highlive', 1, 1439955860, 1439955860),
(271, 'hbokpr1439956537', 'user', 'function', 'welcome', 1, 1439956717, 1439956717),
(272, 'hbokpr1439956537', 'user', 'member_card', 'index', 3, 1439956820, 1439956723),
(273, 'hbokpr1439956537', 'user', 'member_card', 'design', 2, 1439956729, 1439956725),
(274, 'alltoken', 'user', 'member_card', 'design', 2, 1439956729, 1439956725),
(275, 'hbokpr1439956537', 'user', 'member_card', 'custom', 2, 1439956779, 1439956738),
(276, 'alltoken', 'user', 'member_card', 'custom', 2, 1439956779, 1439956738),
(277, 'hbokpr1439956537', 'user', 'member_card', 'customsave', 1, 1439956777, 1439956777),
(278, 'alltoken', 'user', 'member_card', 'customsave', 1, 1439956777, 1439956777),
(279, 'hbokpr1439956537', 'wap', 'card', 'index', 2, 1439956844, 1439956808),
(280, 'alltoken', 'wap', 'card', 'index', 2, 1439956844, 1439956808),
(281, 'hbokpr1439956537', 'user', 'member_card', 'create', 3, 1439958932, 1439956821),
(282, 'alltoken', 'user', 'member_card', 'create', 3, 1439958932, 1439956821),
(283, 'hbokpr1439956537', 'user', 'member_card', 'create_add', 3, 1439956837, 1439956823),
(284, 'alltoken', 'user', 'member_card', 'create_add', 3, 1439956837, 1439956823),
(285, 'hbokpr1439956537', 'wap', 'userinfo', 'index', 1, 1439956847, 1439956847),
(286, 'alltoken', 'wap', 'userinfo', 'index', 1, 1439956847, 1439956847),
(287, 'hbokpr1439956537', 'wap', 'card', 'card', 2, 1439956873, 1439956867),
(288, 'alltoken', 'wap', 'card', 'card', 2, 1439956873, 1439956867),
(289, 'hbokpr1439956537', 'wap', 'card', 'showcode', 2, 1439956873, 1439956868),
(290, 'alltoken', 'wap', 'card', 'showcode', 2, 1439956873, 1439956868),
(291, 'hbokpr1439956537', 'wap', 'card', 'consume', 1, 1439956942, 1439956942),
(292, 'alltoken', 'wap', 'card', 'consume', 1, 1439956942, 1439956942),
(293, 'hbokpr1439956537', 'wap', 'card', 'topay', 1, 1439956948, 1439956948),
(294, 'alltoken', 'wap', 'card', 'topay', 1, 1439956948, 1439956948),
(295, 'cavegu1439957052', 'user', 'index', 'upsave', 1, 1439957318, 1439957318),
(296, 'cavegu1439957052', 'user', 'index', 'index', 7, 1439964510, 1439957321),
(297, 'cavegu1439957052', 'user', 'function', 'welcome', 4, 1439964822, 1439957346),
(298, 'cavegu1439957052', 'user', 'areply', 'index', 8, 1439958365, 1439957385),
(299, 'cavegu1439957052', 'user', 'link', 'insert', 7, 1439959147, 1439957390),
(300, 'cavegu1439957052', 'user', 'link', 'commondetail', 8, 1439959151, 1439957395),
(301, 'alltoken', 'user', 'link', 'commondetail', 8, 1439959151, 1439957395),
(302, 'cavegu1439957052', 'user', 'helping', 'index', 6, 1439964138, 1439957428),
(303, 'cavegu1439957052', 'user', 'helping', 'set', 6, 1439964136, 1439957432),
(304, 'cavegu1439957052', 'user', 'areply', 'insert', 4, 1439958363, 1439957502),
(305, 'alltoken', 'user', 'areply', 'insert', 4, 1439958363, 1439957502),
(306, 'cavegu1439957052', 'user', 'diymen', 'index', 10, 1439964051, 1439957712),
(307, 'cavegu1439957052', 'user', 'diymen', 'class_add', 2, 1439959173, 1439957791),
(308, 'cavegu1439957052', 'user', 'templatemsg', 'index', 3, 1439964333, 1439957939),
(309, 'cavegu1439957052', 'user', 'text', 'index', 3, 1439958309, 1439957944),
(310, 'cavegu1439957052', 'user', 'seniorscene', 'highlive', 3, 1439958761, 1439958034),
(311, 'cavegu1439957052', 'user', 'auth', 'index', 6, 1439965300, 1439958230),
(312, 'cavegu1439957052', 'user', 'img', 'multi', 3, 1439958272, 1439958239),
(313, 'alltoken', 'user', 'img', 'multi', 4, 1439968658, 1439958239),
(314, 'cavegu1439957052', 'user', 'text', 'add', 1, 1439958287, 1439958287),
(315, 'alltoken', 'user', 'text', 'add', 1, 1439958287, 1439958287),
(316, 'cavegu1439957052', 'user', 'text', 'insert', 1, 1439958308, 1439958308),
(317, 'alltoken', 'user', 'text', 'insert', 1, 1439958308, 1439958308),
(318, 'cavegu1439957052', 'user', 'assistente', 'index', 2, 1439964366, 1439958329),
(319, 'cavegu1439957052', 'user', 'other', 'index', 2, 1439964369, 1439958337),
(320, 'cavegu1439957052', 'user', 'sentiment', 'index', 1, 1439958394, 1439958394),
(321, 'cavegu1439957052', 'user', 'sentiment', 'set', 1, 1439958397, 1439958397),
(322, 'cavegu1439957052', 'user', 'hongbao', 'index', 2, 1439958612, 1439958464),
(323, 'cavegu1439957052', 'user', 'hongbao', 'action_add', 1, 1439958466, 1439958466),
(324, 'alltoken', 'user', 'hongbao', 'action_add', 1, 1439958466, 1439958466),
(325, 'cavegu1439957052', 'user', 'zhida', 'index', 1, 1439958755, 1439958755),
(326, 'alltoken', 'user', 'zhida', 'index', 1, 1439958755, 1439958755),
(327, 'cavegu1439957052', 'user', 'index', 'apiinfo', 1, 1439958871, 1439958871),
(328, 'cavegu1439957052', 'user', 'index', 'edit', 2, 1439963702, 1439958894),
(329, 'uxtals1439962913', 'user', 'function', 'welcome', 1, 1439963044, 1439963044),
(330, 'uxtals1439962913', 'user', 'micrstore', 'index', 5, 1439963063, 1439963056),
(331, 'uxtals1439962913', 'user', 'micrstore', 'api', 1, 1439963066, 1439963066),
(332, 'cavegu1439957052', 'user', 'company', 'index', 1, 1439963962, 1439963962),
(333, 'cavegu1439957052', 'user', 'micrstore', 'index', 3, 1439964264, 1439964258),
(334, 'cavegu1439957052', 'user', 'message', 'sendhistory', 1, 1439964320, 1439964320),
(335, 'alltoken', 'user', 'message', 'sendhistory', 1, 1439964320, 1439964320),
(336, 'cavegu1439957052', 'user', 'message', 'index', 1, 1439964323, 1439964323),
(337, 'alltoken', 'user', 'message', 'index', 1, 1439964323, 1439964323),
(338, 'cavegu1439957052', 'user', 'voiceresponse', 'index', 1, 1439964334, 1439964334),
(339, 'alltoken', 'user', 'voiceresponse', 'index', 1, 1439964334, 1439964334),
(340, 'cavegu1439957052', 'user', 'numqueue', 'index', 2, 1439964381, 1439964375),
(341, 'alltoken', 'user', 'numqueue', 'index', 2, 1439964381, 1439964375),
(342, 'cavegu1439957052', 'user', 'numqueue', 'add_action', 1, 1439964377, 1439964377),
(343, 'alltoken', 'user', 'numqueue', 'add_action', 1, 1439964377, 1439964377),
(344, 'cavegu1439957052', 'user', 'lottery', 'index', 2, 1439964457, 1439964403),
(345, 'alltoken', 'user', 'lottery', 'index', 2, 1439964457, 1439964403),
(346, 'cavegu1439957052', 'user', 'lottery', 'add', 2, 1439964456, 1439964405),
(347, 'alltoken', 'user', 'lottery', 'add', 2, 1439964456, 1439964405),
(348, 'cavegu1439957052', 'wap', 'helping', 'index', 4, 1439965496, 1439965011),
(349, 'cavegu1439957052', 'wap', 'index', 'memberreg', 1, 1439965034, 1439965034),
(350, 'cavegu1439957052', 'wap', 'index', 'profile', 1, 1439965043, 1439965043),
(351, 'vjotae1439949952', 'user', 'requerydata', 'index', 1, 1439968608, 1439968608),
(352, 'alltoken', 'user', 'requerydata', 'index', 1, 1439968608, 1439968608),
(353, 'vjotae1439949952', 'user', 'wechat_behavior', 'statistics', 1, 1439968612, 1439968612),
(354, 'alltoken', 'user', 'wechat_behavior', 'statistics', 1, 1439968612, 1439968612),
(355, 'vjotae1439949952', 'user', 'wechat_behavior', 'statisticstrend', 1, 1439968636, 1439968636),
(356, 'alltoken', 'user', 'wechat_behavior', 'statisticstrend', 1, 1439968636, 1439968636),
(357, 'iztlsr1439949156', 'user', 'sentiment', 'rank', 1, 1439968643, 1439968643),
(358, 'alltoken', 'user', 'sentiment', 'rank', 1, 1439968643, 1439968643),
(359, 'iztlsr1439949156', 'user', 'img', 'multi', 1, 1439968658, 1439968658),
(360, 'iztlsr1439949156', 'user', 'helping', 'index', 2, 1439968679, 1439968675),
(361, 'iztlsr1439949156', 'user', 'hongbao', 'index', 1, 1439968677, 1439968677),
(362, 'iztlsr1439949156', 'user', 'helping', 'set', 1, 1439968680, 1439968680),
(363, 'iztlsr1439949156', 'user', 'member_card', 'consume_record', 1, 1439968681, 1439968681),
(364, 'alltoken', 'user', 'member_card', 'consume_record', 1, 1439968681, 1439968681),
(365, 'iztlsr1439949156', 'user', 'member_card', 'consume_use', 1, 1439968683, 1439968683),
(366, 'alltoken', 'user', 'member_card', 'consume_use', 1, 1439968683, 1439968683),
(367, 'iztlsr1439949156', 'user', 'hardware', 'orderprint', 1, 1439968690, 1439968690),
(368, 'alltoken', 'user', 'hardware', 'orderprint', 1, 1439968690, 1439968690),
(374, 'alltoken', 'user', 'function', 'welcome', 6, 1446489810, 1446489244),
(370, 'alltoken', 'user', 'micrstore', 'index', 1, 1440035061, 1440035061),
(371, 'alltoken', 'user', 'micrstore', 'api', 9, 1440035352, 1440035069),
(380, 'alltoken', 'user', 'index', 'index', 1, 1446489272, 1446489272),
(384, 'alltoken', 'user', 'quick', 'index', 1, 1446489851, 1446489851);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_activity`
--

CREATE TABLE IF NOT EXISTS `pigcms_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '活动开始图片',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '兑奖信息',
  `sttxt` varchar(200) NOT NULL COMMENT '活动主题',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '活动规则',
  `endtite` varchar(60) NOT NULL COMMENT '结束公告',
  `endpicurl` varchar(100) NOT NULL COMMENT '结束图片地址',
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖人数',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL COMMENT '二等奖奖品数量',
  `secondlucknums` int(1) NOT NULL COMMENT '三等奖中奖人数',
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL COMMENT '预计参与人数',
  `canrqnums` int(2) NOT NULL COMMENT '个人抽奖次数限制',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL COMMENT '四等奖奖品',
  `fournums` int(11) NOT NULL COMMENT '四等奖奖品数量',
  `fourlucknums` int(11) NOT NULL COMMENT '四等奖中奖人数',
  `five` varchar(50) NOT NULL COMMENT '五等奖奖品',
  `fivenums` int(11) NOT NULL COMMENT '5奖品数量',
  `fivelucknums` int(11) NOT NULL COMMENT '5中间人数',
  `six` varchar(50) NOT NULL COMMENT '六等奖奖品',
  `sixnums` int(11) NOT NULL COMMENT '6奖品数量?',
  `sixlucknums` int(11) NOT NULL COMMENT '6中奖人数',
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `backmp3` varchar(100) NOT NULL COMMENT '背景音乐',
  `hpic` varchar(150) NOT NULL COMMENT '首页背景图片',
  `xpic` varchar(150) NOT NULL COMMENT '兑奖页面宣传图片',
  `mpic` varchar(150) NOT NULL COMMENT '我的盒子背景图片',
  `optime` int(11) NOT NULL COMMENT '需要分享的次数',
  `focus` int(11) NOT NULL,
  `awarding` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_adma`
--

CREATE TABLE IF NOT EXISTS `pigcms_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='diy 宣传页' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_adma`
--

INSERT INTO `pigcms_adma` (`id`, `uid`, `token`, `url`, `copyright`, `info`, `title`) VALUES
(1, 1, 'pigcms', 'http://demo.pigcms.cn/tpl/Home/new/common/images/ewm2.jpg', '? 2001-2013 某某微信版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', 'PigCms多用户微信营销系统');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_agent`
--

CREATE TABLE IF NOT EXISTS `pigcms_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `isnav` int(11) NOT NULL DEFAULT '0',
  `agenturl` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_agent_expenserecords`
--

CREATE TABLE IF NOT EXISTS `pigcms_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_agent_function`
--

CREATE TABLE IF NOT EXISTS `pigcms_agent_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_agent_price`
--

CREATE TABLE IF NOT EXISTS `pigcms_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_alipay_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `mchid` varchar(100) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_api`
--

CREATE TABLE IF NOT EXISTS `pigcms_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`),
  KEY `IDX_TOKEN` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方api接口表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_appdabao`
--

CREATE TABLE IF NOT EXISTS `pigcms_appdabao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `app_id` int(10) unsigned NOT NULL,
  `app_key` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_appdabao_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_appdabao_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `web_app_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `oktime` int(10) unsigned DEFAULT NULL,
  `err_result` varchar(200) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `intro` text,
  `weburl` varchar(500) NOT NULL,
  `apptype` int(11) NOT NULL DEFAULT '0',
  `icopic` varchar(200) NOT NULL,
  `hellopic` varchar(200) NOT NULL,
  `hidetop` int(11) NOT NULL DEFAULT '0',
  `screen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_areply`
--

CREATE TABLE IF NOT EXISTS `pigcms_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pigcms_areply`
--

INSERT INTO `pigcms_areply` (`id`, `keyword`, `content`, `uid`, `uname`, `createtime`, `updatetime`, `token`, `home`) VALUES
(4, '微助力', '好吧应该是微助力把', 27, '', '1439957502', '1439958363', 'cavegu1439957052', '1');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_attribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_auction`
--

CREATE TABLE IF NOT EXISTS `pigcms_auction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wxpic` varchar(200) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxinfo` text,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `info` text NOT NULL,
  `logo` varchar(200) NOT NULL,
  `startprice` int(11) NOT NULL DEFAULT '0',
  `addprice` int(11) NOT NULL DEFAULT '0',
  `fixedprice` int(11) NOT NULL DEFAULT '0',
  `referenceprice` int(11) NOT NULL DEFAULT '0',
  `is_attention` int(11) NOT NULL DEFAULT '0',
  `is_reg` int(11) NOT NULL DEFAULT '0',
  `is_open` int(11) NOT NULL DEFAULT '0',
  `is_del` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `like_num` int(11) NOT NULL DEFAULT '0',
  `share_num` int(11) NOT NULL DEFAULT '0',
  `postage` int(11) NOT NULL DEFAULT '0',
  `settime` int(11) NOT NULL,
  `nobuytime` int(11) NOT NULL DEFAULT '48',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `keyword` (`keyword`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_auction_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_auction_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `orderid` varchar(30) NOT NULL DEFAULT '0',
  `paid` int(11) NOT NULL DEFAULT '0',
  `transactionid` varchar(150) DEFAULT NULL,
  `paytype` varchar(30) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `auctionid` int(11) NOT NULL,
  `topriceid` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `expressnum` varchar(100) DEFAULT NULL,
  `expressname` varchar(100) DEFAULT NULL,
  `thirdpay` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `auctionid` (`auctionid`),
  KEY `topriceid` (`topriceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_auction_pic`
--

CREATE TABLE IF NOT EXISTS `pigcms_auction_pic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_auction_toprice`
--

CREATE TABLE IF NOT EXISTS `pigcms_auction_toprice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_autumns_box`
--

CREATE TABLE IF NOT EXISTS `pigcms_autumns_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '活动ID',
  `invite` int(11) NOT NULL,
  `boxdate` int(11) NOT NULL COMMENT '领取盒子的时间',
  `box` int(11) NOT NULL COMMENT '盒子样式',
  `wecha_id` varchar(60) NOT NULL,
  `prize` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `isprize` int(11) NOT NULL COMMENT '是否中奖',
  `isprizes` int(11) NOT NULL COMMENT '是否领奖',
  `prizedate` varchar(20) NOT NULL COMMENT '兑奖起始时间',
  `prizedates` varchar(20) NOT NULL COMMENT '兑奖结束时间',
  `lvprize` varchar(30) NOT NULL,
  `sn` varchar(13) NOT NULL,
  `sntime` int(11) NOT NULL COMMENT '奖品发放时间',
  `sendstutas` int(11) NOT NULL DEFAULT '0' COMMENT '是否发奖',
  `prtime` int(11) NOT NULL COMMENT '领奖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_autumns_ip`
--

CREATE TABLE IF NOT EXISTS `pigcms_autumns_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_autumns_open`
--

CREATE TABLE IF NOT EXISTS `pigcms_autumns_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `time` int(11) NOT NULL COMMENT '分享次数',
  `isopen` int(11) NOT NULL COMMENT '是否打开',
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_banners`
--

CREATE TABLE IF NOT EXISTS `pigcms_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` char(200) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_bargain`
--

CREATE TABLE IF NOT EXISTS `pigcms_bargain` (
  `pigcms_id` int(100) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `wxtitle` varchar(100) NOT NULL COMMENT '图文回复标题',
  `wxpic` varchar(100) NOT NULL COMMENT '图文回复图片',
  `wxinfo` varchar(200) DEFAULT NULL COMMENT '图文回复简单描述',
  `logoimg1` varchar(100) NOT NULL COMMENT '商品图片1',
  `logourl1` varchar(200) DEFAULT NULL COMMENT '商品图片链接1',
  `logoimg2` varchar(100) DEFAULT NULL COMMENT '商品图片2',
  `logourl2` varchar(200) DEFAULT NULL COMMENT '商品图片链接2',
  `logoimg3` varchar(100) DEFAULT NULL COMMENT '商品图片3',
  `logourl3` varchar(200) DEFAULT NULL COMMENT '商品图片链接3',
  `info` mediumtext COMMENT '商品描述',
  `guize` mediumtext,
  `original` int(20) NOT NULL COMMENT '原价',
  `minimum` int(20) NOT NULL COMMENT '底价',
  `starttime` int(20) NOT NULL COMMENT '开始时间',
  `inventory` int(20) NOT NULL COMMENT '库存',
  `qdao` int(11) DEFAULT NULL COMMENT '前n刀',
  `qprice` int(20) DEFAULT NULL COMMENT '前n刀砍去多少钱',
  `dao` int(11) DEFAULT NULL COMMENT '总共需要n刀',
  `pv` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '开始-关闭',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `is_new` int(11) NOT NULL DEFAULT '1',
  `kan_min` int(20) NOT NULL DEFAULT '0',
  `kan_max` int(20) NOT NULL DEFAULT '0',
  `rank_num` int(11) NOT NULL DEFAULT '10',
  `logotitle1` varchar(50) DEFAULT NULL,
  `logotitle2` varchar(50) DEFAULT NULL,
  `logotitle3` varchar(50) DEFAULT NULL,
  `is_attention` int(10) unsigned NOT NULL DEFAULT '1',
  `is_reg` int(10) unsigned NOT NULL DEFAULT '1',
  `is_subhelp` int(10) unsigned NOT NULL DEFAULT '1',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`),
  KEY `name` (`name`),
  KEY `state` (`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_bargain_kanuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_bargain_kanuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `bargain_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `friend` varchar(100) NOT NULL,
  `dao` int(20) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `bargain_id` (`bargain_id`),
  KEY `orderid` (`orderid`),
  KEY `friend` (`friend`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_bargain_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_bargain_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `bargain_id` int(11) NOT NULL,
  `bargain_name` varchar(100) DEFAULT NULL,
  `bargain_logoimg` varchar(100) DEFAULT NULL,
  `bargain_original` varchar(20) DEFAULT NULL,
  `bargain_minimum` varchar(20) DEFAULT NULL,
  `bargain_nowprice` int(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `endtime` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `orderid` varchar(255) NOT NULL,
  `state2` int(1) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `changetime` int(11) NOT NULL DEFAULT '0',
  `expressnum` varchar(100) DEFAULT NULL,
  `expressname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `paid` (`paid`),
  KEY `bargain_id` (`bargain_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_behavior`
--

CREATE TABLE IF NOT EXISTS `pigcms_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `IDX_TOKEN_NUM` (`token`,`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

--
-- 转存表中的数据 `pigcms_behavior`
--

INSERT INTO `pigcms_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(230, 2, 'sfrpky1439949951', 'oZ4ztvzz3MzdCxwEaN7kXc7RucwA', '2015-08-19', 1439950344, 'Sentiment', 1, '情圣', 0),
(231, 1, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '2015-08-19', 1439950345, 'Sentiment', 1, '谁是情圣', 0),
(232, 2, 'sfrpky1439949951', 'oZ4ztvzz3MzdCxwEaN7kXc7RucwA', '2015-08-19', 1439950734, 'Voteimg', 1, '图文投票', 0),
(233, 1, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '2015-08-19', 1439950761, 'Helping', 1, '微助力', 0),
(234, 0, 'hbokpr1439956537', 'oysiouJIq6H7lVjuGPEU7bPssWAc', '2015-08-19', 1439956644, 'chat', 1, '大苹果报价', 0),
(235, 1, 'hbokpr1439956537', 'oysiouL9g5pAtr6QqwPLNeWrNLkQ', '2015-08-19', 1439956804, 'Member_card_set', 1, '会员', 0),
(236, 0, 'hbokpr1439956537', 'oysiouG9YBR6OA9AxzrOFsYrnPPU', '2015-08-19', 1439956832, 'chat', 2, '微信多开', 0),
(237, 0, 'hbokpr1439956537', 'oysiouOz9aadGoJyWMroROGNt8Ko', '2015-08-19', 1439956953, 'chat', 3, '359247067655237', 0),
(238, 0, 'hbokpr1439956537', 'oysiouBPJXCXg5f_GFhjfRm18D1w', '2015-08-19', 1439957188, 'chat', 1, '352069068048809', 0),
(239, 0, 'hbokpr1439956537', 'oysiouGavO0mzFOR5mh9e4o-gvT4', '2015-08-19', 1439957355, 'chat', 2, 'DX3P9L6VFMLD', 0),
(240, 0, 'hbokpr1439956537', 'oysiouOz9aadGoJyWMroROGNt8Ko', '2015-08-19', 1439957357, 'chat', 1, '359247087855237', 0),
(241, 0, 'hbokpr1439956537', 'oysiouGavO0mzFOR5mh9e4o-gvT4', '2015-08-19', 1439957389, 'chat', 1, 'F1KPFYJUG5MQ', 0),
(242, 0, 'hbokpr1439956537', 'oysiouAIUwKWWAAjLD01_OrfIrMs', '2015-08-19', 1439957510, 'chat', 1, '359240062256747', 0),
(243, 0, 'hbokpr1439956537', 'oysiouI6JBE1qq1STysUSXv09xew', '2015-08-19', 1439957550, 'chat', 2, '359285066026067', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(20) CHARACTER SET utf8 NOT NULL,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `picurl` varchar(250) CHARACTER SET utf8 NOT NULL,
  `imgreply` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '消息回复图片',
  `invitecode` char(16) CHARACTER SET utf8 NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `ruledesc` text CHARACTER SET utf8 NOT NULL,
  `registration` text CHARACTER SET utf8 NOT NULL,
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1表示已删除',
  `addtime` int(11) NOT NULL,
  `uptime` int(11) NOT NULL COMMENT '更新时间',
  `bgimg` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '背景图片',
  `rinfo` varchar(500) CHARACTER SET utf8 NOT NULL COMMENT '消息回复简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_client`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推挤人id 推挤人idbroker_user表id',
  `verifyuid` int(11) NOT NULL DEFAULT '0' COMMENT '顾问id 推挤人idbroker_user表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `cname` varchar(90) CHARACTER SET utf8 NOT NULL COMMENT '客户名称',
  `ctel` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '客户手机号',
  `proid` int(11) NOT NULL DEFAULT '0' COMMENT 'broker_item表id',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '备注',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `wecha_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_commission`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_commission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned NOT NULL,
  `tjuid` int(11) unsigned NOT NULL,
  `tjname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `clientid` int(11) unsigned NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_tel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `client_status` tinyint(1) unsigned NOT NULL COMMENT '客户目前状态',
  `proid` int(11) unsigned NOT NULL,
  `proname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `verifyname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问名字',
  `verifytel` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问电话',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '金额',
  `status` tinyint(1) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_item`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL COMMENT 'broker表id',
  `xmname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `xmtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1现金2百分比',
  `xmnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '佣金额度',
  `xmimg` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT '图片url',
  `tourl` varchar(300) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '跳转地址url',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_optionlog`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_optionlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(11) NOT NULL COMMENT '推荐人',
  `logstr` varchar(100) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_translation`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_translation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '身份介绍',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0普通1经纪人2其他',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pigcms_broker_translation`
--

INSERT INTO `pigcms_broker_translation` (`id`, `description`, `type`) VALUES
(1, '公司员工', 0),
(2, '大众经纪人', 0),
(3, '中介公司', 0),
(4, '代理公司', 0),
(5, '合作伙伴', 0),
(6, '老业主', 1),
(7, '产品顾问', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_broker_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_broker_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bid` int(11) NOT NULL,
  `tel` varchar(12) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `identity` tinyint(1) unsigned NOT NULL COMMENT 'broker_translation表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1禁用',
  `is_verify` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置业顾问',
  `identitylog` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '身份变更记录',
  `identitycode` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '身份证号',
  `company` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '公司名称',
  `recommendnum` int(10) unsigned NOT NULL COMMENT '推荐人数',
  `totalcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '可提取佣金',
  `extractcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '以提取出的佣金',
  `bank_truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '银行开户姓名',
  `bank_cardnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '银行卡号',
  `bank_name` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '银行名称',
  `wecha_id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'openid',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(50) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_main`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_pic`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_second`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_car`
--

CREATE TABLE IF NOT EXISTS `pigcms_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carcat`
--

CREATE TABLE IF NOT EXISTS `pigcms_carcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `img` char(150) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_show` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cards`
--

CREATE TABLE IF NOT EXISTS `pigcms_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `viewcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carmodel`
--

CREATE TABLE IF NOT EXISTS `pigcms_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` varchar(50) NOT NULL DEFAULT '',
  `dealer_price` varchar(50) NOT NULL DEFAULT '',
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carnews`
--

CREATE TABLE IF NOT EXISTS `pigcms_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carowner`
--

CREATE TABLE IF NOT EXISTS `pigcms_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carsaler`
--

CREATE TABLE IF NOT EXISTS `pigcms_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carseries`
--

CREATE TABLE IF NOT EXISTS `pigcms_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carset`
--

CREATE TABLE IF NOT EXISTS `pigcms_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '23',
  `conttpid` int(11) DEFAULT NULL,
  `title7` varchar(50) DEFAULT NULL,
  `title8` varchar(50) DEFAULT NULL,
  `title9` varchar(50) DEFAULT NULL,
  `title10` varchar(50) DEFAULT NULL,
  `title11` varchar(50) DEFAULT NULL,
  `head_url_7` varchar(200) DEFAULT NULL,
  `head_url_8` varchar(200) DEFAULT NULL,
  `head_url_9` varchar(200) DEFAULT NULL,
  `head_url_10` varchar(200) DEFAULT NULL,
  `head_url_11` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_caruser`
--

CREATE TABLE IF NOT EXISTS `pigcms_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='3G car' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_car_utility`
--

CREATE TABLE IF NOT EXISTS `pigcms_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_car_utility`
--

INSERT INTO `pigcms_car_utility` (`id`, `name`, `url`, `status`, `token`) VALUES
(1, '车贷计算器', 'http://car.m.yiche.com/qichedaikuanjisuanqi/', 1, ''),
(2, '保险计算', 'http://car.m.yiche.com/qichebaoxianjisuan/', 1, ''),
(3, '全款计算', 'http://car.m.yiche.com/gouchejisuanqi/', 1, ''),
(4, '车型比较', 'http://car.m.yiche.com/chexingduibi/?carIDs=102501', 1, ''),
(5, '违章查询', 'http://wap.bjjtgl.gov.cn/wimframework/portal/wwwroot/bjjgj/xxcx.psml?contentType=%E8%BF%9D%E6%B3%95%', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_case`
--

CREATE TABLE IF NOT EXISTS `pigcms_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `timg` char(200) NOT NULL,
  `classid` varchar(200) NOT NULL,
  `class` int(11) NOT NULL,
  `img_two` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_caseclass`
--

CREATE TABLE IF NOT EXISTS `pigcms_caseclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_activity`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '活动名称',
  `pic` varchar(300) NOT NULL COMMENT '活动图片',
  `table_name` varchar(50) NOT NULL COMMENT '活动来自的表名',
  `activity_id` int(10) unsigned NOT NULL,
  `price` varchar(50) NOT NULL,
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '抽奖类型',
  `original_price` varchar(50) NOT NULL COMMENT '原价',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `activity_id` (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_adminuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_adminuser` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `account` varchar(100) NOT NULL,
  `pwd` varchar(35) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `lastlogintime` int(10) unsigned NOT NULL,
  `phone` varchar(15) NOT NULL,
  `isproxy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0总帐户1代理商2其他账户',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用',
  `lxname` varchar(30) NOT NULL COMMENT '联系人',
  `lxcompany` varchar(150) NOT NULL COMMENT '公司',
  `lxaddress` varchar(250) NOT NULL COMMENT '联系地址',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_cashier_adminuser`
--

INSERT INTO `pigcms_cashier_adminuser` (`uid`, `mid`, `account`, `pwd`, `salt`, `lastlogintime`, `phone`, `isproxy`, `status`, `lxname`, `lxcompany`, `lxaddress`, `addtime`) VALUES
(1, 1, 'adminroot', 'f613e133558127fc722ac256571c2673', '719498', 1444439384, '', 0, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_attention`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_attention` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ucenter表id',
  `openid` varchar(100) NOT NULL,
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_bank`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `phone` varchar(20) NOT NULL,
  `banktruename` varchar(30) NOT NULL COMMENT '银行开户姓名',
  `bankname` varchar(100) NOT NULL COMMENT '银行名称',
  `identitycode` varchar(30) NOT NULL COMMENT '身份证',
  `bankcardnum` varchar(30) NOT NULL COMMENT '银行卡号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_banner`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pic` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `sort` smallint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_card_bonus`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_card_bonus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `card_id` varchar(100) NOT NULL,
  `add_bonus` int(11) NOT NULL DEFAULT '0',
  `record_bonus` varchar(200) NOT NULL,
  `openid` varchar(80) NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `fromid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '来源（0：本地，1：营销系统）',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `card_id` (`card_id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_employee`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `account` char(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(200) NOT NULL,
  `salt` char(20) NOT NULL,
  `authority` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `phone` varchar(15) NOT NULL,
  `thirdstoreid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '第三方门店id',
  PRIMARY KEY (`eid`),
  KEY `mid` (`mid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_fans`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `appid` varchar(200) NOT NULL COMMENT '公众号id',
  `openid` varchar(250) NOT NULL COMMENT '公众号对应的公众号openid',
  `cf` varchar(10) NOT NULL DEFAULT 'local' COMMENT '来源',
  `totalfee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付总额(分)',
  `refund` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '退款金额分',
  `is_subscribe` tinyint(4) NOT NULL COMMENT '1关注',
  `nickname` varchar(250) NOT NULL COMMENT '昵称',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1男2女0未知',
  `province` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `headimgurl` varchar(500) NOT NULL COMMENT '头像',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '微信粉丝分组id',
  `ucid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ucenter表id',
  `buyeraccount` varchar(150) NOT NULL COMMENT '买家账号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbcard`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0' COMMENT '卡券领取最低积分',
  `mclogo` varchar(200) NOT NULL,
  `bgstyle` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `cardinfo` text NOT NULL COMMENT '会员卡说明',
  `tipmsg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `everyday` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到送积分',
  `xreward` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费送积分',
  `integralrule` text NOT NULL COMMENT '积分规则',
  `welfaretitle` varchar(100) NOT NULL COMMENT '特权福利标题',
  `welfareinfo` text NOT NULL COMMENT '特权福利内容',
  `ischeck` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1短信验证',
  `isdonate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1开启充值赠送',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1已删除',
  PRIMARY KEY (`id`),
  KEY `token` (`mid`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='本地会员卡' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbdonate`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbdonate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(11) unsigned NOT NULL,
  `cdid` int(11) unsigned NOT NULL,
  `minmoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `maxmoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `donatemoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1开启',
  `donateinfo` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbgifts`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbgifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gtitle` varchar(100) NOT NULL COMMENT '标题',
  `gtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0积分1卡券',
  `itemvalue` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '相关值',
  `itemtype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '卡券类型',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(10) unsigned NOT NULL,
  `cdid` int(10) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbnotice`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbnotice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `cdid` int(10) unsigned NOT NULL DEFAULT '0',
  `ntitle` varchar(100) NOT NULL DEFAULT '',
  `ncontent` text NOT NULL,
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cdid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbnumber`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbnumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdid` int(10) NOT NULL DEFAULT '0',
  `mid` int(10) NOT NULL DEFAULT '0',
  `numstr` varchar(30) NOT NULL COMMENT '卡号序号',
  `openid` varchar(60) NOT NULL,
  `is_bind` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `offNumStr` varchar(30) NOT NULL COMMENT '绑定线下卡号',
  PRIMARY KEY (`id`),
  KEY `cdid` (`cdid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbpayrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbpayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordid` int(10) unsigned NOT NULL COMMENT '订单表id',
  `orderdesc` varchar(250) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `mid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `eid` int(10) unsigned NOT NULL DEFAULT '0',
  `cdid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbsign`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbsign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL,
  `signtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到时间',
  `issign` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否签到',
  `scoretype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `expense` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '得到的积分',
  `sellexpense` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费的积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbsync`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbsync` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1同步',
  `wxcdid` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL COMMENT '微信会员卡id',
  `cdid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '本站会员卡id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_locmbuserecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_locmbuserecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL DEFAULT '',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `cat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `expense` decimal(12,2) NOT NULL DEFAULT '0.00',
  `score` int(10) NOT NULL DEFAULT '0',
  `usecount` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '使用次数',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `notes` varchar(300) NOT NULL,
  `eid` int(10) unsigned NOT NULL DEFAULT '0',
  `cdid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_menu`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `sort` mediumint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏（0：否，1：是）',
  `ishd` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是不是幻灯片',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_merchants`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_merchants` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) DEFAULT NULL,
  `thirduserid` varchar(100) NOT NULL COMMENT '第三方唯一身份ID',
  `password` char(32) DEFAULT NULL,
  `salt` char(50) NOT NULL,
  `wxname` char(210) NOT NULL,
  `weixin` varchar(150) NOT NULL COMMENT '微信号',
  `email` char(100) DEFAULT NULL,
  `logo` char(200) NOT NULL,
  `regTime` int(11) DEFAULT NULL,
  `regIp` char(20) DEFAULT NULL,
  `lastLoginTime` int(11) DEFAULT '0',
  `lastLoginIp` char(20) DEFAULT NULL,
  `source` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `mfypwd` tinyint(1) unsigned NOT NULL COMMENT '1修改过密码',
  `aeskey` varchar(50) NOT NULL COMMENT 'EncodingAESKey',
  `wxtoken` varchar(40) NOT NULL COMMENT 'wxToken',
  `encodetype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '消息加解密方式',
  `isadmin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1是总后台生成账号',
  `phone` varchar(15) NOT NULL,
  `thirdmid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '第三方商家id对接用',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代理商id',
  PRIMARY KEY (`mid`),
  KEY `thirduserid` (`thirduserid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_cashier_merchants`
--

INSERT INTO `pigcms_cashier_merchants` (`mid`, `username`, `thirduserid`, `password`, `salt`, `wxname`, `weixin`, `email`, `logo`, `regTime`, `regIp`, `lastLoginTime`, `lastLoginIp`, `source`, `status`, `mfypwd`, `aeskey`, `wxtoken`, `encodetype`, `isadmin`, `phone`, `thirdmid`, `agentid`) VALUES
(1, 'adminer', '', 'f613e133558127fc722ac256571c2673', '719498', '', '', 'adminer@adminer.com', '', 1439270229, '2130706433', 1439270229, '2130706433', 0, 1, 0, '', '', 0, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) NOT NULL,
  `mid` int(11) NOT NULL,
  `pay_way` char(50) NOT NULL,
  `pay_type` char(50) NOT NULL,
  `goods_type` char(50) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_name` char(200) NOT NULL,
  `goods_describe` varchar(500) NOT NULL,
  `goods_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `add_time` int(11) NOT NULL,
  `paytime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '2已对账',
  `ispay` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1已支付',
  `truename` varchar(250) NOT NULL,
  `openid` varchar(250) NOT NULL,
  `transaction_id` varchar(250) NOT NULL COMMENT '第三方支付订单号',
  `refund` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1退款中2已退款3失败',
  `refundtext` text NOT NULL COMMENT '退款结果数据',
  `comefrom` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0本地1微信营销 2微店 3 o2o系统',
  `mchtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1特约商户2平台代收商户',
  `pmid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代理者mid',
  `p_openid` varchar(250) NOT NULL COMMENT 'p_mid对应openid',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `eid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工id',
  `ucid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ucenter表id',
  `extrainfo` text NOT NULL COMMENT '额外信息',
  `mprice` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '第三方订单价格',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代理商id',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_payconfig`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_payconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `isOpen` tinyint(1) NOT NULL DEFAULT '0',
  `configData` varchar(2000) DEFAULT NULL,
  `pfpaymid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '平台代付mid',
  `proxymid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代理者的mid',
  `wxsubmchid` varchar(30) NOT NULL COMMENT '分配到的子商户号',
  `pfalipaymid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付宝平台待支付',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代理商id',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_payreduce`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_payreduce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `ntitle` varchar(250) NOT NULL COMMENT '标题',
  `fullprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `minprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `maxprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1开启',
  `ptypeali` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1支持',
  `ptypewx` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1支持',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_pay_cell`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_pay_cell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL,
  `card_id` varchar(250) NOT NULL,
  `code` varchar(50) NOT NULL,
  `orderid` varchar(50) NOT NULL COMMENT '微信订单号',
  `location_name` varchar(100) NOT NULL COMMENT '门店名称',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `fee` decimal(10,2) NOT NULL COMMENT '实付金额',
  `original_fee` decimal(10,2) NOT NULL COMMENT '应付金额',
  PRIMARY KEY (`id`),
  KEY `card_id` (`card_id`),
  KEY `openid` (`openid`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_pfapplyrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_pfapplyrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `atitle` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请结束时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` text NOT NULL COMMENT '备注',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_printcfg`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_printcfg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cellphone` varchar(15) NOT NULL COMMENT '绑定手机号',
  `terminalnum` varchar(35) NOT NULL COMMENT '终端号',
  `mkey` varchar(80) NOT NULL COMMENT '设备秘钥',
  `pnum` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '打印份数',
  `pformat` text NOT NULL COMMENT '打印格式',
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1开启打印',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_remittance`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_remittance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `meraccount` varchar(50) NOT NULL,
  `money` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_stores`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `poi_id` varchar(50) NOT NULL COMMENT '微信门店id',
  `business_name` varchar(250) NOT NULL COMMENT '微信商家名',
  `branch_name` varchar(250) NOT NULL COMMENT '微信门店名',
  `telephone` varchar(25) NOT NULL COMMENT '电话',
  `longitude` varchar(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `avg_price` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(250) NOT NULL COMMENT '地址',
  `photo_list` text NOT NULL COMMENT '图片存储',
  `fsortid` int(10) unsigned NOT NULL DEFAULT '0',
  `sortid` int(10) unsigned NOT NULL DEFAULT '0',
  `circleid` int(10) unsigned NOT NULL DEFAULT '0',
  `cityid` int(10) unsigned NOT NULL DEFAULT '0',
  `provinceid` int(10) unsigned NOT NULL DEFAULT '0',
  `cityname` varchar(100) NOT NULL COMMENT '城市名',
  `provincename` varchar(100) NOT NULL COMMENT '省份名',
  `introduction` text NOT NULL COMMENT '简介',
  `recommend` text NOT NULL COMMENT '推荐说明',
  `special` text NOT NULL COMMENT '特色服务',
  `districtid` int(10) unsigned NOT NULL COMMENT '区id',
  `districtname` varchar(100) NOT NULL COMMENT '区名字',
  `available_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '门店是否可用状态',
  `offset_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '坐标类型',
  `comefrom` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1微信同步来数据',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `appid` varchar(200) NOT NULL,
  `discount` decimal(3,1) NOT NULL COMMENT '折扣率',
  `least_cost` decimal(8,2) NOT NULL COMMENT '满足的金额',
  `reduce_cost` decimal(8,2) NOT NULL COMMENT '减免的金额',
  `thirdmid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '第三方商家id对接用',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1显示',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `discount` (`discount`,`reduce_cost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_ucenter`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1男2女',
  `headimgurl` varchar(250) NOT NULL COMMENT '头像',
  `province` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL,
  `unionid` varchar(100) NOT NULL COMMENT '微信唯一标识',
  `paymoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费金额',
  `paycount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付次数',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_userinfo`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headimgurl` varchar(200) NOT NULL DEFAULT '',
  `total_score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总积分',
  `locwxscore` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '本地卡微信卡积分一致',
  `expensetotal` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(10) unsigned NOT NULL,
  `openid` varchar(60) NOT NULL,
  `nickname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1男2女3其他',
  `address` varchar(250) NOT NULL,
  `sign_score` int(11) unsigned NOT NULL,
  `getcardtime` int(10) unsigned NOT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `paypass` varchar(32) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `comefrom` varchar(200) DEFAULT NULL,
  `isverify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `continuous` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '连续签到',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_wxcoupon`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_wxcoupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `card_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `card_title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `card_id` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '微信卡券ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '卡券状态',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除',
  `begin_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `end_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `receivenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取数',
  `consumenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '核销数量',
  `get_limit` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人可领几张',
  `kqcontent` text CHARACTER SET utf8 NOT NULL COMMENT '卡券内容',
  `kqexpand` text CHARACTER SET utf8 NOT NULL COMMENT '卡券扩展内容',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核通过时间',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `cardticket` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cardurl` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT ' 二维码图片解析后的地址',
  `is_open_cell` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启买单功能（0：否，1：开启）',
  `activate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '会员卡激活方式（0:字段激活，1：一键激活，2：手动激活）',
  `activate_user_form` text CHARACTER SET utf8 NOT NULL COMMENT '一键激活的表单填写项',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `eid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工id',
  `poi_ids` text CHARACTER SET utf8 NOT NULL COMMENT '微信门店ids',
  `appid` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ticket` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '卡券对应的渠道二维码',
  `store_ids` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '本地门店ids',
  `istowx` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0未同步1已同步2同步结果',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_wxcoupon_common`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_wxcoupon_common` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `logurl` varchar(250) CHARACTER SET utf8 NOT NULL,
  `mname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '商户名字',
  `wxlogurl` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cashier_wxcoupon_receive`
--

CREATE TABLE IF NOT EXISTS `pigcms_cashier_wxcoupon_receive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(250) NOT NULL COMMENT '领取人openid',
  `give_openId` varchar(250) NOT NULL COMMENT '转赠送方账号openid',
  `cardid` varchar(250) NOT NULL,
  `cardtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '卡券类型',
  `cardtitle` varchar(250) NOT NULL COMMENT '卡券标题',
  `isgivebyfriend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为转赠',
  `cardcode` varchar(100) NOT NULL COMMENT 'code序列号',
  `oldcardcode` varchar(100) NOT NULL COMMENT '转赠前的code序列号',
  `outerid` int(10) unsigned NOT NULL COMMENT 'mid值',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0领取1核销',
  `addtime` int(10) unsigned NOT NULL COMMENT '添加时间',
  `deltime` int(10) unsigned NOT NULL COMMENT '用户删除时间',
  `consumetime` int(10) unsigned NOT NULL COMMENT '消费时间',
  `consumesource` varchar(100) NOT NULL COMMENT '核销来源',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `eid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工id',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除',
  `ucid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ucenter表id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_catemenu`
--

CREATE TABLE IF NOT EXISTS `pigcms_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`orderss`,`status`),
  KEY `token_2` (`token`,`orderss`,`status`),
  KEY `token_3` (`token`,`orderss`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_classify`
--

CREATE TABLE IF NOT EXISTS `pigcms_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(10) DEFAULT '1',
  `conttpid` int(10) DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `IDX_TO_FI_ID` (`token`,`fid`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cointree`
--

CREATE TABLE IF NOT EXISTS `pigcms_cointree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(50) NOT NULL DEFAULT '',
  `reply_title` varchar(50) NOT NULL DEFAULT '',
  `reply_content` varchar(200) NOT NULL DEFAULT '',
  `reply_pic` varchar(255) NOT NULL DEFAULT '',
  `action_desc` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `remind_word` varchar(255) NOT NULL DEFAULT '',
  `remind_link` varchar(255) NOT NULL DEFAULT '',
  `totaltimes` int(11) NOT NULL DEFAULT '1',
  `join_number` int(11) NOT NULL,
  `actual_join_number` int(11) NOT NULL,
  `everydaytimes` int(11) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `usedup_conins` int(11) NOT NULL,
  `gain_conins` int(11) NOT NULL DEFAULT '1',
  `timespan` int(11) NOT NULL,
  `record_nums` int(11) NOT NULL,
  `coinrecord_nums` int(11) NOT NULL,
  `is_limitwin` tinyint(1) NOT NULL DEFAULT '1',
  `is_follow` tinyint(1) NOT NULL DEFAULT '1',
  `is_register` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `fistlucknums` int(11) NOT NULL,
  `secondlucknums` int(11) NOT NULL,
  `thirdlucknums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `is_amount` tinyint(1) NOT NULL,
  `share_count` int(11) NOT NULL,
  `custom_sharetitle` varchar(255) NOT NULL DEFAULT '',
  `custom_sharedsc` varchar(500) NOT NULL DEFAULT '',
  `sms_verify` tinyint(1) NOT NULL,
  `follow_msg` varchar(255) NOT NULL,
  `follow_btn_msg` varchar(255) NOT NULL,
  `register_msg` varchar(255) NOT NULL,
  `custom_follow_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cointree_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_cointree_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `first_prize` varchar(50) NOT NULL DEFAULT '',
  `first_img` varchar(255) NOT NULL DEFAULT '',
  `first_nums` int(11) NOT NULL,
  `second_prize` varchar(50) NOT NULL DEFAULT '',
  `second_img` varchar(255) NOT NULL DEFAULT '',
  `second_nums` int(11) NOT NULL,
  `third_prize` varchar(50) NOT NULL DEFAULT '',
  `third_img` varchar(255) NOT NULL DEFAULT '',
  `third_nums` int(11) NOT NULL,
  `fourth_prize` varchar(50) NOT NULL DEFAULT '',
  `fourth_img` varchar(255) NOT NULL DEFAULT '',
  `fourth_nums` int(11) NOT NULL,
  `fifth_prize` varchar(50) NOT NULL DEFAULT '',
  `fifth_img` varchar(255) NOT NULL DEFAULT '',
  `fifth_nums` int(11) NOT NULL,
  `sixth_prize` varchar(50) NOT NULL DEFAULT '',
  `sixth_img` varchar(255) NOT NULL DEFAULT '',
  `sixth_nums` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cointree_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_cointree_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `serialnumber` varchar(15) NOT NULL DEFAULT '',
  `prize` int(11) NOT NULL,
  `iswin` tinyint(1) NOT NULL DEFAULT '0',
  `shaketime` int(11) NOT NULL,
  `sendstutas` tinyint(1) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `wecha_name` char(50) NOT NULL,
  `wecha_pic` varchar(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cointree_shares`
--

CREATE TABLE IF NOT EXISTS `pigcms_cointree_shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_wechaid` varchar(50) NOT NULL DEFAULT '',
  `share_wechaname` varchar(50) NOT NULL DEFAULT '',
  `share_wechapic` varchar(255) NOT NULL DEFAULT '',
  `share_key` varchar(100) NOT NULL DEFAULT '',
  `addcoins` varchar(15) NOT NULL,
  `opentime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cointree_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_cointree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `total_shakes` int(11) NOT NULL,
  `today_shakes` int(11) NOT NULL,
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `wecha_name` varchar(50) NOT NULL DEFAULT '',
  `wecha_pic` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `share_key` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL,
  `coins_count` int(11) NOT NULL,
  `isverify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `coinuser` (`cid`,`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `word` varchar(20) NOT NULL,
  `intro` varchar(200) NOT NULL DEFAULT '',
  `info` text,
  `reply_pic` varchar(200) NOT NULL,
  `start` int(11) NOT NULL DEFAULT '0',
  `end` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `is_open` int(11) NOT NULL DEFAULT '0',
  `is_reg` int(11) NOT NULL DEFAULT '0',
  `is_attention` int(11) NOT NULL DEFAULT '0',
  `is_sms` int(11) NOT NULL DEFAULT '0',
  `fxtitle` varchar(200) NOT NULL DEFAULT '',
  `fxinfo` varchar(200) NOT NULL DEFAULT '',
  `rank_num` int(11) NOT NULL DEFAULT '10',
  `count` int(10) unsigned NOT NULL,
  `help_count` int(10) unsigned NOT NULL,
  `prize_display` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prize_fxtitle` varchar(200) NOT NULL DEFAULT '',
  `prize_fxinfo` varchar(200) NOT NULL DEFAULT '',
  `day_count` int(10) unsigned NOT NULL DEFAULT '0',
  `expect` int(10) unsigned NOT NULL DEFAULT '0',
  `fxpic` varchar(200) NOT NULL DEFAULT '',
  `is_help` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `title` (`title`),
  KEY `is_open` (`is_open`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword_news`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `imgurl` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(200) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `word` tinyint(3) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_key` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_collectword_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_collectword_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_prize` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `share_key` varchar(100) NOT NULL DEFAULT '0',
  `share_num` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '0',
  `is_join` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `word_count` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_company`
--

CREATE TABLE IF NOT EXISTS `pigcms_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amapid` varchar(50) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  `province` char(30) NOT NULL,
  `city` char(30) NOT NULL,
  `district` char(30) NOT NULL,
  `location_id` int(11) NOT NULL,
  `cat_name` char(50) NOT NULL,
  `business_type` varchar(100) NOT NULL,
  `recommend` varchar(500) NOT NULL,
  `special` varchar(500) NOT NULL,
  `introduction` varchar(800) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `avg_price` int(11) NOT NULL,
  `opentime` varchar(20) NOT NULL,
  `closetime` varchar(20) NOT NULL,
  `available_state` tinyint(1) NOT NULL,
  `categories` varchar(100) NOT NULL,
  `sid` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_company_staff`
--

CREATE TABLE IF NOT EXISTS `pigcms_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `func` varchar(1000) NOT NULL,
  `pcorwap` tinyint(1) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_conditionalmenu`
--

CREATE TABLE IF NOT EXISTS `pigcms_conditionalmenu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '-1',
  `sex` int(11) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `client_platform_type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  `menuid` varchar(100) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_conditionalmenu_class`
--

CREATE TABLE IF NOT EXISTS `pigcms_conditionalmenu_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(300) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(3) NOT NULL DEFAULT '0',
  `wxsys` varchar(40) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `nav` varchar(200) NOT NULL,
  `text` varchar(500) NOT NULL,
  `test` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_coupon_pay_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_coupon_pay_record` (
  `pigcms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL COMMENT '订单ID',
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券ID',
  `wechat_id` varchar(100) NOT NULL,
  `token` varchar(64) NOT NULL,
  `from` varchar(50) CHARACTER SET utf16 NOT NULL,
  `least_cost` decimal(10,2) NOT NULL COMMENT '订单至少要满足的金额',
  `reduce_cost` decimal(10,2) NOT NULL COMMENT '订单优惠的金额',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `orderid` (`orderid`,`coupon_id`),
  KEY `wechat_id` (`wechat_id`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券用于支付的记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_crowdfunding`
--

CREATE TABLE IF NOT EXISTS `pigcms_crowdfunding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `fund` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `day` smallint(5) unsigned NOT NULL,
  `start` char(15) NOT NULL,
  `detail` text NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `praise` int(11) NOT NULL,
  `focus` int(11) NOT NULL,
  `supports` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_crowdfunding_focus`
--

CREATE TABLE IF NOT EXISTS `pigcms_crowdfunding_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `token` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_crowdfunding_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_crowdfunding_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_name` char(50) NOT NULL,
  `orderid` char(50) NOT NULL,
  `token` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `address` varchar(300) NOT NULL,
  `add_time` char(15) NOT NULL,
  `pay_time` char(15) NOT NULL,
  `price` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `username` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_crowdfunding_reward`
--

CREATE TABLE IF NOT EXISTS `pigcms_crowdfunding_reward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `money` float NOT NULL,
  `content` text NOT NULL,
  `img` varchar(250) NOT NULL,
  `people` int(11) NOT NULL,
  `back_day` smallint(6) NOT NULL,
  `carriage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_customs`
--

CREATE TABLE IF NOT EXISTS `pigcms_customs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(150) NOT NULL,
  `price` char(150) NOT NULL,
  `about` char(150) NOT NULL,
  `common` char(150) NOT NULL,
  `login` char(150) NOT NULL,
  `help` char(150) NOT NULL,
  `fcname` varchar(80) NOT NULL,
  `pricename` varchar(80) NOT NULL,
  `loginname` varchar(80) NOT NULL,
  `helpname` varchar(80) NOT NULL,
  `aboutname` varchar(80) NOT NULL,
  `commonname` varchar(80) NOT NULL,
  `fc_open` int(11) NOT NULL DEFAULT '0',
  `about_open` int(11) NOT NULL DEFAULT '0',
  `common_open` int(11) NOT NULL DEFAULT '0',
  `help_open` int(11) NOT NULL DEFAULT '0',
  `login_open` int(11) NOT NULL DEFAULT '0',
  `price_open` int(11) NOT NULL DEFAULT '0',
  `fc_dspl` int(11) NOT NULL DEFAULT '0',
  `common_dspl` int(11) NOT NULL DEFAULT '0',
  `about_dspl` int(11) NOT NULL DEFAULT '0',
  `login_dspl` int(11) NOT NULL DEFAULT '0',
  `price_dspl` int(11) NOT NULL DEFAULT '0',
  `help_dspl` int(11) NOT NULL DEFAULT '0',
  `agentid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `open` int(11) NOT NULL,
  `dspl` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_TYPE` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_field`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` varchar(500) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `file_type` varchar(120) NOT NULL DEFAULT '' COMMENT '上传文件类型',
  `file_size` int(11) NOT NULL DEFAULT '2' COMMENT '上传文件大小(M)',
  `file_num` int(11) NOT NULL DEFAULT '1' COMMENT '文件数量限制',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_limit`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_custom_limit`
--

INSERT INTO `pigcms_custom_limit` (`limit_id`, `enddate`, `sub_total`, `today_total`, `type`) VALUES
(1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `set_id` int(11) NOT NULL,
  `orderid` varchar(30) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `paytype` varchar(50) DEFAULT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `price` varchar(50) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_reply` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `reply_content` varchar(300) NOT NULL DEFAULT '' COMMENT '回复内容',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `is_pay` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_name` varchar(100) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `follow` enum('0','1') NOT NULL DEFAULT '0' COMMENT '关注后提交 0不限 1粉丝',
  `sms` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否需要短信提醒',
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cutprice`
--

CREATE TABLE IF NOT EXISTS `pigcms_cutprice` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(500) DEFAULT NULL,
  `starttime` int(11) NOT NULL,
  `original` varchar(100) NOT NULL,
  `startprice` varchar(100) NOT NULL,
  `stopprice` varchar(100) NOT NULL,
  `cuttime` int(11) NOT NULL,
  `cutprice` varchar(100) NOT NULL,
  `inventory` int(11) NOT NULL,
  `logoimg1` varchar(100) NOT NULL,
  `logourl1` varchar(200) DEFAULT NULL,
  `logoimg2` varchar(100) DEFAULT NULL,
  `logourl2` varchar(200) DEFAULT NULL,
  `logoimg3` varchar(100) DEFAULT NULL,
  `logourl3` varchar(200) DEFAULT NULL,
  `info` text,
  `guize` text,
  `state` int(11) NOT NULL DEFAULT '0',
  `state_subscribe` int(11) NOT NULL DEFAULT '0',
  `state_userinfo` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `onebuynum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_cutprice_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_cutprice_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `orderid` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `nowprice` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `endtime` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `transactionid` varchar(200) DEFAULT NULL,
  `paytype` varchar(100) DEFAULT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `paystate` int(11) NOT NULL DEFAULT '0',
  `fahuo` int(11) NOT NULL DEFAULT '0',
  `fahuoid` varchar(100) DEFAULT NULL,
  `fahuoname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dining_table`
--

CREATE TABLE IF NOT EXISTS `pigcms_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_directhongbao`
--

CREATE TABLE IF NOT EXISTS `pigcms_directhongbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `min_money` float(6,2) NOT NULL,
  `max_money` float(6,2) NOT NULL,
  `total_money` float(9,2) NOT NULL,
  `send_name` varchar(50) NOT NULL,
  `wishing` varchar(150) NOT NULL,
  `act_name` varchar(50) NOT NULL,
  `remark` varchar(300) NOT NULL,
  `hb_type` tinyint(1) NOT NULL DEFAULT '1',
  `group_nums` int(10) NOT NULL,
  `send_type` tinyint(1) NOT NULL DEFAULT '1',
  `gid` int(10) NOT NULL,
  `fans_id` text NOT NULL,
  `fans_name` text NOT NULL,
  `lastsendtime` int(10) NOT NULL,
  `totalnums` int(10) NOT NULL,
  `token` char(25) NOT NULL,
  `send_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_directhongbao_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_directhongbao_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(10) unsigned NOT NULL,
  `mch_billno` char(50) NOT NULL DEFAULT '',
  `fans_id` varchar(60) NOT NULL DEFAULT '',
  `fans_nickname` varchar(60) NOT NULL DEFAULT '',
  `money` float(6,2) DEFAULT NULL,
  `status` char(20) NOT NULL DEFAULT '',
  `hb_type` tinyint(1) NOT NULL,
  `token` char(25) NOT NULL,
  `send_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL COMMENT '排序，数字越小排的越前',
  `istakeout` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否支持外卖',
  `isdiscount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否支持会员折扣',
  `instock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `refreshstock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新库存',
  `kitchen_id` int(10) unsigned NOT NULL COMMENT '厨房ID',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`),
  KEY `sort` (`sort`),
  KEY `kitchen_id` (`kitchen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dishout_deliveryman`
--

CREATE TABLE IF NOT EXISTS `pigcms_dishout_deliveryman` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dishout_manage`
--

CREATE TABLE IF NOT EXISTS `pigcms_dishout_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(255) NOT NULL,
  `zc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `zc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `permin` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `removing` varchar(50) NOT NULL DEFAULT '0' COMMENT '服务半径',
  `area` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '配送区域',
  `sendtime` tinyint(3) NOT NULL COMMENT '送达时间(分)',
  `shopimg` text CHARACTER SET utf8 NOT NULL COMMENT '门店幻灯图片',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '外送方式类型',
  `pricing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外送相关金额设定',
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `rtitle` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '回复标题',
  `rinfo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复描述',
  `picurl` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复封面图片',
  `overflow_radius` int(2) NOT NULL DEFAULT '1',
  `priceup` int(11) NOT NULL DEFAULT '0',
  `delivery_fee` int(11) NOT NULL DEFAULT '0',
  `discount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dishout_salelog`
--

CREATE TABLE IF NOT EXISTS `pigcms_dishout_salelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '商店id',
  `did` int(10) unsigned NOT NULL COMMENT 'dish表id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'dish_order表id',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '下单时此菜总金额',
  `nums` int(10) unsigned NOT NULL COMMENT '下单时份数',
  `unitprice` decimal(10,2) unsigned NOT NULL COMMENT '下单时此菜单价',
  `dname` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '下单时菜名',
  `paytype` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '支付方式',
  `addtime` int(10) unsigned NOT NULL COMMENT '下单时间',
  `addtimestr` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '下单时间',
  `comefrom` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0外卖1微餐饮',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_company`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  `subscription` float NOT NULL,
  `discount` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '折扣',
  `kconoff` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启库存',
  `autoref` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  `imgs` varchar(250) NOT NULL COMMENT '餐厅图片',
  `bookingtime` varchar(255) NOT NULL COMMENT '餐桌选择时间段',
  `nowpay` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否立刻支付',
  `advancepay` int(10) unsigned NOT NULL COMMENT '预付定金',
  `dishsame` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分店统一菜品',
  `offtable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '关闭选择餐桌',
  `starttime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_kitchen`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_kitchen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否将厨房的每道菜单独打印出来（0,：否，1：是）',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='厨房' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_like`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_name`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `third_id` varchar(100) NOT NULL DEFAULT '',
  `comefrom` varchar(50) NOT NULL DEFAULT 'dish' COMMENT '表明来源字母全小写',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '外送方式类型',
  `isdel` tinyint(1) unsigned DEFAULT '0',
  `allmark` text NOT NULL COMMENT '购物车备注',
  `havepaid` float unsigned NOT NULL DEFAULT '0' COMMENT '二次支付时记录已经支付的金额',
  `paycount` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付的次数',
  `advancepay` float unsigned NOT NULL DEFAULT '0' COMMENT '预付金额',
  `isover` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付是否结束1进行2结束',
  `tmporderid` varchar(100) NOT NULL COMMENT '临时订单id支持多次付款',
  `delivery_fee` int(20) NOT NULL DEFAULT '0',
  `isyes` int(2) NOT NULL DEFAULT '0',
  `deliverymanid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tableid` int(10) unsigned NOT NULL COMMENT 'dining_table表id',
  `keyword` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `cf` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '来源',
  `addtime` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1餐厅2餐桌后台0餐桌',
  `reg_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'recognition表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `reg_id` (`reg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_sort`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_table`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  `dn_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'dish_name表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distribution_setting`
--

CREATE TABLE IF NOT EXISTS `pigcms_distribution_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 fixed 固定 float 百分比',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `multi_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '多级分销 0, 1',
  `upgrade_channel_commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '升级渠道商奖励',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT '主站唯一标识',
  `agreement` text NOT NULL COMMENT '加盟协议',
  `is_check` char(1) NOT NULL DEFAULT '0' COMMENT '分销申请是否要审核',
  `level_max` int(3) NOT NULL DEFAULT '0' COMMENT '最大分销级别',
  `paid_day` tinyint(3) DEFAULT '2' COMMENT '佣金支付处理（工作日）',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销引导广告（图片）',
  `home_banner_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺首页banner图片',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺logo图片',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '是否允许分销 0不允许 0允许',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销配置' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '分销商id',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `addr` varchar(500) NOT NULL DEFAULT '' COMMENT '地址',
  `latitude` double NOT NULL DEFAULT '0' COMMENT '经度',
  `longitude` double NOT NULL DEFAULT '0' COMMENT '纬度',
  `intro` text NOT NULL COMMENT '简介',
  `ischannel` char(1) NOT NULL DEFAULT '0' COMMENT '渠道商 0,1',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '未提现金额',
  `paid` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '已提现金额',
  `checked` char(1) NOT NULL DEFAULT '0' COMMENT '审核 0,1',
  `regtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `wecha_id` varchar(60) NOT NULL DEFAULT '0' COMMENT '粉丝识别码',
  `token` varchar(50) NOT NULL DEFAULT '0' COMMENT '主商城识别码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `token` (`token`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销商' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_commission_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_commission_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '买家id 0为游客结算',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品id 0为升级渠道商奖励',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `bak` text NOT NULL COMMENT '备注',
  `addtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销商佣金记录' AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单id',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销商订单' AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_product`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '商品id',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `soldout` char(1) NOT NULL DEFAULT '0' COMMENT '商品下架 0，1',
  `salesnum` int(5) NOT NULL DEFAULT '0' COMMENT '销售量',
  `salestotal` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '销售额',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '操作时间(上架、下架)',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销商商品' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_receipt`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_receipt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `paidtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '打款时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态 0 已打款 , 1 已收款',
  `receipttime` varchar(20) NOT NULL DEFAULT '0' COMMENT '收款时间',
  `time` varchar(20) NOT NULL DEFAULT '0' COMMENT '申请提现时间',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分销商收款' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_relation`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_relation` (
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `supdid` int(10) NOT NULL DEFAULT '0' COMMENT '所属分销商id',
  `supdids` varchar(3000) NOT NULL DEFAULT '0' COMMENT '上级分销商id列表',
  `level` int(5) NOT NULL DEFAULT '1' COMMENT '级别',
  KEY `did` (`did`) USING BTREE,
  KEY `supdid` (`supdid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分销商关系';

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_distributor_store`
--

CREATE TABLE IF NOT EXISTS `pigcms_distributor_store` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `tpid` int(10) NOT NULL DEFAULT '0' COMMENT '首页模板',
  `footerid` int(10) NOT NULL DEFAULT '0' COMMENT '底部导航',
  `headerid` int(10) NOT NULL DEFAULT '0' COMMENT '顶部导航',
  `payee` varchar(50) NOT NULL DEFAULT '' COMMENT '收款人',
  `bankcard` varchar(50) NOT NULL DEFAULT '' COMMENT '银行卡',
  `logourl` varchar(200) NOT NULL DEFAULT '' COMMENT '店铺logo',
  `intro` text NOT NULL COMMENT '图文详细页内容',
  `bankname` varchar(50) NOT NULL DEFAULT '' COMMENT '开户银行',
  `notice` varchar(200) NOT NULL DEFAULT '' COMMENT '店铺公告',
  `noticetime` varchar(20) NOT NULL DEFAULT '' COMMENT '公告时间',
  `banner` varchar(200) NOT NULL DEFAULT '' COMMENT '首页banner',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '是否允许分销加盟 0,1',
  `commission_rate` float NOT NULL DEFAULT '0' COMMENT '佣金分成',
  `product_source` char(1) NOT NULL DEFAULT '1' COMMENT '分销商品来源 0, 1 不限, 本店铺',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销引导广告（图片）',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `tpid` (`tpid`) USING BTREE,
  KEY `footerid` (`footerid`) USING BTREE,
  KEY `headerid` (`headerid`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分销商店铺' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diyform`
--

CREATE TABLE IF NOT EXISTS `pigcms_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diyform_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diymen_class`
--

CREATE TABLE IF NOT EXISTS `pigcms_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(300) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `wxsys` char(40) NOT NULL,
  `text` varchar(500) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `nav` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `pigcms_diymen_class`
--

INSERT INTO `pigcms_diymen_class` (`id`, `token`, `pid`, `title`, `keyword`, `url`, `is_show`, `sort`, `wxsys`, `text`, `tel`, `nav`) VALUES
(15, 'ascqfk1439949165', 0, '第一个', '论坛', '', 1, 0, '', '', NULL, ''),
(16, 'ascqfk1439949165', 0, '第二个', '微信签到', '', 1, 0, '', '', NULL, ''),
(17, 'ascqfk1439949165', 0, '第三个', '', '', 1, 0, '拍照或者相册发图', '', '', ''),
(18, 'cavegu1439957052', 0, '微活动', '微助力', '', 1, 1, '', '', NULL, ''),
(19, 'cavegu1439957052', 0, '微助力', '', '{siteUrl}/index.php?g=Wap&m=Helping&a=index&token=cavegu1439957052&wecha_id={wechat_id}&id=2', 1, 1, '', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diymen_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `pigcms_diymen_set`
--

INSERT INTO `pigcms_diymen_set` (`id`, `token`, `appid`, `appsecret`) VALUES
(10, 'avclov1439948990', '32131233231', '231231eqweqedqd'),
(11, 'cyvwqd1439949073', 'wxb91cccc396f27314', '020766fb6537d1de616bdeb346419a7b'),
(12, 'iztlsr1439949156', 'sas', 'sas'),
(13, 'qgvdkw1439949139', '1', '1'),
(14, 'ascqfk1439949165', '456', '456'),
(15, 'ddqhjy1439950027', '123456', '123456'),
(16, 'vjotae1439949952', 'wx40f8bd02925fac0a', '42494702bbb2cde933a30c3d33990b44'),
(17, 'sfrpky1439949951', 'wx44474f9a772ef6a0', '4ee814ef7812f4899f62e58975f933e4'),
(18, 'bznhbf1439950816', '1', '1'),
(19, 'cedgjq1439951515', 'wx4bcb6ada322a25e9', '98a43d09672f88ab89a00393aff6f1bd'),
(20, 'hbokpr1439956537', 'asdf', 'asdf'),
(21, 'cavegu1439957052', 'wx3ed5fa33cd4b9ee0', '3ab5d444ad97e335205142c31193381b'),
(22, 'uxtals1439962913', 'wx3082edd350120ec3', '3c30720a29fa0aa301b8139c989053d5');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dizwifi_device`
--

CREATE TABLE IF NOT EXISTS `pigcms_dizwifi_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `ssid` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `bssid` varchar(30) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dizwifi_homepage`
--

CREATE TABLE IF NOT EXISTS `pigcms_dizwifi_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `template_id` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `bar_type` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `name` varchar(30) NOT NULL,
  `note` varchar(300) NOT NULL COMMENT '介绍',
  `content` text NOT NULL COMMENT '详情',
  `company` varchar(200) NOT NULL COMMENT '捐款接受机构',
  `fixed_money1` smallint(5) unsigned NOT NULL DEFAULT '20' COMMENT '固定捐款金额',
  `share_content1` varchar(90) NOT NULL COMMENT '众筹宣传语范例1',
  `share_content2` varchar(90) NOT NULL COMMENT '众筹宣传语范例2',
  `creattime` int(10) unsigned NOT NULL COMMENT '创建时间',
  `share_num` int(10) unsigned NOT NULL COMMENT '分享次数',
  `keyword` varchar(20) NOT NULL COMMENT '关键词',
  `reply_title` varchar(50) NOT NULL COMMENT '回复标题',
  `reply_content` varchar(200) NOT NULL COMMENT '回复内容',
  `reply_pic` varchar(260) NOT NULL,
  `pic` varchar(260) NOT NULL,
  `fixed_money2` smallint(5) unsigned NOT NULL DEFAULT '50',
  `fixed_money3` smallint(5) unsigned NOT NULL DEFAULT '100',
  `fixed_money4` smallint(5) unsigned NOT NULL DEFAULT '200',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（0：关闭，1：正常）',
  `endtime` int(10) unsigned NOT NULL COMMENT '结束时间',
  `logo` varchar(300) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `tip` varchar(15) NOT NULL COMMENT '募捐提示语',
  `share_pic` varchar(200) NOT NULL COMMENT '分享图片',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可以删除（0：可以，1：不可以）',
  `account` varchar(30) NOT NULL COMMENT '款项去向',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_dynamic`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_dynamic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `did` int(10) unsigned NOT NULL COMMENT '活动ID',
  `image_id` int(10) unsigned NOT NULL COMMENT '图文ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `did` (`did`),
  KEY `image_id` (`image_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_gift`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `did` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`,`money`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_medal`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_medal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `did` int(10) unsigned NOT NULL,
  `num` smallint(3) unsigned NOT NULL COMMENT '奖牌数',
  `money` decimal(8,2) NOT NULL COMMENT '捐款的金额',
  `pic` varchar(200) NOT NULL COMMENT '奖牌图片',
  `dateline` int(10) unsigned NOT NULL,
  `note` varchar(15) NOT NULL COMMENT '奖牌说明',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `did` (`did`),
  KEY `money` (`money`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `token` varchar(80) NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否匿名（0:否，1：是）',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `token` (`token`,`wecha_id`,`sid`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `circle_name` varchar(10) NOT NULL COMMENT '圈子名称',
  `money` decimal(8,2) NOT NULL COMMENT '积分获得基数',
  `one` decimal(8,2) NOT NULL COMMENT '获得1个奖牌的条件',
  `two` decimal(8,2) NOT NULL COMMENT '获得2个奖牌的条件',
  `three` decimal(8,2) NOT NULL COMMENT '获得3个奖牌的条件',
  `four` decimal(8,2) NOT NULL COMMENT '获得4个奖牌的条件',
  `five` decimal(8,2) NOT NULL COMMENT '获得5个奖牌的条件',
  `dateline` int(10) unsigned NOT NULL,
  `agreement` text NOT NULL COMMENT '协议',
  `tip` varchar(15) NOT NULL COMMENT '感谢语',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `wecha_id` varchar(70) NOT NULL,
  `token` varchar(70) NOT NULL,
  `content` varchar(100) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_donation_value`
--

CREATE TABLE IF NOT EXISTS `pigcms_donation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dream`
--

CREATE TABLE IF NOT EXISTS `pigcms_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `pigcms_dream`
--

INSERT INTO `pigcms_dream` (`id`, `title`, `content`) VALUES
(1, '梦见父母', '梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的'),
(2, '梦见护士', ' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。'),
(3, '梦见老师', ' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式'),
(4, '梦见男孩', '梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活'),
(5, '梦见皇后', ' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财'),
(6, '梦见朋友', ' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间'),
(7, '梦见守财奴', ' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃'),
(8, '梦见尼姑', ' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。'),
(9, '梦见小孩', ' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课'),
(10, '梦见人群', ' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞'),
(11, '梦见疯子', ' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条'),
(12, '梦见兄弟姊妹', ' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子'),
(13, '梦见军队', '梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。'),
(14, '梦见清道夫', ' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝'),
(15, '梦见祖父母', ' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。'),
(16, '梦见婴儿', ' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。'),
(17, '梦见野蛮人', '男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快'),
(18, '梦见邻居', '梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。'),
(19, '梦见王子公主', ' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架'),
(20, '梦见小贩', ' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任'),
(21, '梦见医生', ' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安'),
(22, '梦见丈夫', ' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.'),
(23, '梦见烈士', ' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头'),
(24, '梦见警察', ' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连'),
(25, '梦见导师', ' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学'),
(26, '梦见队伍', ' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸'),
(27, '梦见名人', ' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰'),
(28, '梦见同学', ' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突'),
(29, '梦见英雄', ' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救'),
(30, '梦见上司', '梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。'),
(31, '梦见同事', '梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难'),
(32, '梦见小偷', '原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。'),
(33, '梦见孤儿', '梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。'),
(34, '梦见妻子', '梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。'),
(35, '梦见和尚', '梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。'),
(36, '梦见军人', '梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。'),
(37, '梦见病人', '梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。'),
(38, '梦见婴儿', '梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。'),
(39, '梦见姐姐', '男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。'),
(40, '梦见陌生人', '梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。'),
(41, '梦见舅舅', '梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由'),
(42, '梦见裁缝', '裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。'),
(43, '梦见双胞胎', '梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。'),
(44, '梦见寡妇', '梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。'),
(45, '梦见警察', '警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。'),
(46, '梦见哑巴', '梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。'),
(47, '梦见明星', '名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。'),
(48, '梦见弓箭手', '梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。'),
(49, '梦见孕妇', '预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。'),
(50, '梦见妓女', '梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。'),
(51, '梦见已故的祖父母', '梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。'),
(52, '梦见坏人', '梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。'),
(53, '梦见犯人', '梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险'),
(54, '梦见帅哥', '梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。'),
(55, '梦见日本人', '梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。'),
(56, '梦见处女', '梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。'),
(57, '梦见老情人', '很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。'),
(58, '梦见第三者', '梦见第三者，吉兆，预示着爱情会很甜蜜。'),
(59, '梦见白马王子', '女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。'),
(60, '梦见仇人', '梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。'),
(61, '梦见美女', '梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。'),
(62, '梦见喜欢的人', ''),
(63, '梦见外星人', '梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。'),
(64, '梦见毛主席', '梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。'),
(65, '梦见陆军 ', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),
(66, '梦见风骚女子', '梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。'),
(67, '梦见久未见面的人', '梦见久未见面的人时，寓意着此人将会很快归来。'),
(68, '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),
(69, '梦见厨师', '梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。'),
(70, '梦见陆军', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),
(71, '梦见烧香的人', '梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。'),
(72, '梦见神秘人', '梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。'),
(73, '梦见亿万富豪', '梦见成为亿万富豪，则近日营业将会损失惨重。'),
(74, '梦见跛子', '梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。'),
(75, '梦见虐待狂', '虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。'),
(76, '梦见贵人', '梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。'),
(77, '梦见窃贼', '梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。'),
(78, '梦见赤裸的男人', '梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。'),
(79, '梦见两性人', '梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。'),
(80, '梦见嫂子', '经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。'),
(81, '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),
(82, '梦见国王', '国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。'),
(83, '梦见老太太', '梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。'),
(84, '梦见皇帝', '梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。'),
(85, '梦见陌生男人', '梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。'),
(86, '梦见老伯伯', '梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。'),
(87, '梦见小人', '梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。'),
(88, '梦见木匠', '梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。'),
(89, '梦见故人', '梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。'),
(90, '梦见小朋友', '梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  `slide1` char(100) NOT NULL,
  `slide2` char(100) NOT NULL,
  `slide3` char(100) NOT NULL,
  `slide4` char(100) NOT NULL,
  `slide5` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='楼盘简介' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_album`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_expert`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_housetype`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_impress`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_impress_add`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `imp_id` int(11) NOT NULL,
  `imp_user` char(20) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_nav`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(35) NOT NULL,
  `pic` char(100) NOT NULL,
  `url` varchar(120) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_son`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='子楼盘' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_extendset`
--

CREATE TABLE IF NOT EXISTS `pigcms_extendset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cloose_display` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_extension_activity`
--

CREATE TABLE IF NOT EXISTS `pigcms_extension_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '活动标题',
  `company` varchar(90) NOT NULL DEFAULT '' COMMENT '公司名',
  `descr` varchar(300) NOT NULL DEFAULT '' COMMENT '活动描述',
  `keyword` varchar(90) NOT NULL DEFAULT '' COMMENT '触发关键词',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '活动状态',
  `reward_lv1_cash` int(11) NOT NULL DEFAULT '0' COMMENT '一级人脉现金红包（分）',
  `reward_lv1_score` int(11) NOT NULL DEFAULT '0' COMMENT '一级人脉积分奖励',
  `reward_lv2_cash` int(11) NOT NULL DEFAULT '0' COMMENT '二级人脉现金红包（分）',
  `reward_lv2_score` int(11) NOT NULL DEFAULT '0' COMMENT '二级人脉积分奖励',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `banner_config` text NOT NULL COMMENT '海报设置',
  `token` varchar(60) NOT NULL COMMENT '商家token',
  `max_score` int(11) NOT NULL DEFAULT '0' COMMENT '最多消耗积分',
  `max_cash` int(11) NOT NULL DEFAULT '0' COMMENT '最多消耗现金（分）',
  `consume_score` int(11) NOT NULL DEFAULT '0' COMMENT '已经消耗的积分',
  `consume_cash` int(11) NOT NULL DEFAULT '0' COMMENT '已经消耗的红包',
  `url` varchar(150) NOT NULL COMMENT '推广内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `reward_type` enum('score','cash') NOT NULL DEFAULT 'cash' COMMENT '奖励类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_extension_relation`
--

CREATE TABLE IF NOT EXISTS `pigcms_extension_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoter` int(11) NOT NULL COMMENT '推广人',
  `follower` int(11) NOT NULL COMMENT '关注人',
  `aid` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(60) NOT NULL COMMENT '活动商家token',
  `follow_time` int(11) DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_extension_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_extension_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '获得积分',
  `cash` int(11) NOT NULL DEFAULT '0' COMMENT '获得红包',
  `token` varchar(60) NOT NULL COMMENT '活动商家',
  `aid` int(11) NOT NULL COMMENT '活动',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_files`
--

CREATE TABLE IF NOT EXISTS `pigcms_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `wecha_id` varchar(200) NOT NULL DEFAULT '0',
  `upload_ip` varchar(100) NOT NULL DEFAULT '0.0.0.0',
  `state` int(11) NOT NULL DEFAULT '0',
  `sync_url` varchar(200) NOT NULL,
  `media_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- 转存表中的数据 `pigcms_files`
--

INSERT INTO `pigcms_files` (`id`, `token`, `url`, `size`, `type`, `time`, `users_id`, `wecha_id`, `upload_ip`, `state`, `sync_url`, `media_id`) VALUES
(142, 'admin', 'http://wd.imakebe.com/uploads/a/admin/d/d/9/4/thumb_55d3e4ea93538.png', 20673, 'png', 1439950058, 14, '0', '60.169.113.241', 0, '', ''),
(143, 'vjotae1439949952', 'http://wd.imakebe.com/uploads/v/vjotae1439949952/1/9/c/c/thumb_55d3e57ba239c.png', 20673, 'png', 1439950203, 14, '0', '60.169.113.241', 0, '', ''),
(144, 'vjotae1439949952', 'http://wd.imakebe.com/uploads/v/vjotae1439949952/b/9/e/c/thumb_55d3e7682d557.png', 20673, 'png', 1439950696, 14, '0', '60.169.113.241', 0, '', ''),
(145, 'iztlsr1439949156', 'http://wd.imakebe.com/uploads/i/iztlsr1439949156/4/9/3/b/thumb_55d3ee704d495.jpg', 78610, 'jpg', 1439952496, 13, '0', '122.73.166.127', 0, '', ''),
(146, 'admin', 'http://wd.imakebe.com/uploads/a/admin/2/4/c/1/thumb_55d400adace26.jpg', 5785, 'jpg', 1439957165, 27, '0', '106.92.44.54', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_flash`
--

CREATE TABLE IF NOT EXISTS `pigcms_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '子分类ID',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='3g网站头部flash' AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  `notice_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_topics`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(10000) DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_friend`
--

CREATE TABLE IF NOT EXISTS `pigcms_friend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `name` varchar(10) NOT NULL COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别(2:女，1：男)',
  `address` varchar(200) NOT NULL COMMENT '居住地',
  `school` varchar(100) NOT NULL COMMENT '学校',
  `into` smallint(2) unsigned NOT NULL COMMENT '入学年份',
  `profession` varchar(100) NOT NULL COMMENT '专业',
  `company` varchar(100) NOT NULL COMMENT '所在单位',
  `post` varchar(100) NOT NULL COMMENT '任职职务',
  `info` varchar(300) NOT NULL COMMENT '个人简介',
  `dateline` int(10) unsigned NOT NULL,
  `head` varchar(200) NOT NULL COMMENT '头像',
  `tel` varchar(11) NOT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_frontpage_action`
--

CREATE TABLE IF NOT EXISTS `pigcms_frontpage_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_name` varchar(100) NOT NULL DEFAULT '',
  `keyword` char(30) NOT NULL,
  `reply_pic` varchar(255) NOT NULL,
  `reply_title` varchar(100) NOT NULL,
  `reply_content` varchar(255) NOT NULL,
  `remind_word` varchar(255) NOT NULL,
  `remind_img` varchar(255) NOT NULL,
  `remind_link` varchar(255) NOT NULL,
  `total_create` int(11) NOT NULL,
  `day_create` int(11) NOT NULL,
  `sponsors` varchar(50) NOT NULL DEFAULT '',
  `is_follow` tinyint(1) NOT NULL,
  `is_register` tinyint(1) NOT NULL,
  `custom_sharetitle` varchar(255) NOT NULL DEFAULT '',
  `custom_sharedsc` varchar(500) NOT NULL DEFAULT '',
  `sharecount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `token` char(25) NOT NULL,
  `defaultnews_hide` varchar(255) NOT NULL DEFAULT '',
  `latest_count` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_frontpage_configure`
--

CREATE TABLE IF NOT EXISTS `pigcms_frontpage_configure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `apikey` char(30) NOT NULL DEFAULT '',
  `secretkey` char(50) NOT NULL DEFAULT '',
  `access_token` char(100) NOT NULL DEFAULT '',
  `expires_in` int(11) NOT NULL,
  `token` char(50) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL,
  `isusing` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_frontpage_makenews`
--

CREATE TABLE IF NOT EXISTS `pigcms_frontpage_makenews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `userid` int(11) unsigned NOT NULL,
  `wecha_name` varchar(50) NOT NULL,
  `news_txt` text NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `spd` tinyint(1) NOT NULL,
  `per` tinyint(1) NOT NULL,
  `frontpage_name` char(30) NOT NULL DEFAULT '',
  `news_type` tinyint(1) NOT NULL,
  `token` char(25) NOT NULL,
  `create_time` int(11) NOT NULL,
  `voicepath` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `frontpage_img` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_frontpage_newsimg`
--

CREATE TABLE IF NOT EXISTS `pigcms_frontpage_newsimg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` char(10) NOT NULL DEFAULT '',
  `default_img` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `token` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_frontpage_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_frontpage_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `total_create` int(11) NOT NULL,
  `today_create` int(11) NOT NULL,
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `wecha_name` varchar(50) NOT NULL DEFAULT '',
  `wecha_pic` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `share_key` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_funclass`
--

CREATE TABLE IF NOT EXISTS `pigcms_funclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  `menu_icon` varchar(200) NOT NULL,
  `list` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_funclass_holi`
--

CREATE TABLE IF NOT EXISTS `pigcms_funclass_holi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `classid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_function`
--

CREATE TABLE IF NOT EXISTS `pigcms_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2099 ;

--
-- 转存表中的数据 `pigcms_function`
--

INSERT INTO `pigcms_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`) VALUES
(1, 1, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1),
(2, 1, 0, '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1),
(3, 1, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1),
(4, 1, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1),
(5, 1, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1),
(6, 1, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1),
(114, 0, 0, 'H5动态自定义模板', 'CustomTmpls', '', 0, 1),
(8, 1, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1),
(9, 1, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1),
(10, 2, 0, '域名whois查询', 'whois', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\\r\\n 例：域名pigcms.com', 1, 1),
(11, 1, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1),
(12, 2, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1),
(13, 2, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1),
(14, 2, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1),
(15, 1, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1),
(16, 1, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1),
(17, 1, 0, '全景', 'panorama', '', 1, 1),
(18, 1, 0, '婚庆喜帖', 'wedding', '', 2, 1),
(19, 1, 0, '投票', 'vote', '', 2, 1),
(20, 1, 0, '房产', 'estate', '', 2, 1),
(21, 1, 0, '3G相册', 'album', '', 1, 1),
(22, 1, 0, '砸金蛋', 'GoldenEgg', '', 2, 1),
(23, 1, 0, '水果机', 'LuckyFruit', '', 2, 1),
(24, 1, 0, '留言板', 'messageboard', '', 2, 1),
(25, 1, 0, '微汽车', 'car', '', 2, 1),
(26, 1, 0, '微信墙', 'wall', '', 1, 1),
(27, 1, 0, '摇一摇', 'shake', '', 1, 1),
(28, 1, 0, '微论坛', 'forum', '回复 讨论社区 即可使用', 1, 1),
(29, 1, 0, '微医疗', 'medical', '', 1, 1),
(30, 1, 0, '群发消息', 'groupmessage', '', 1, 1),
(31, 1, 0, '分享统计', 'share', '', 1, 1),
(32, 1, 0, '酒店宾馆', 'hotel', '', 1, 1),
(33, 1, 0, '微教育', 'school', '学校', 1, 1),
(34, 1, 0, '中秋吃月饼', 'Autumn', '', 1, 1),
(35, 1, 0, '摁死小情侣游戏', 'Lovers', '回复 “小情侣” 即可参加', 1, 1),
(36, 1, 0, '七夕走鹊桥', 'AppleGame', '回复 “走鹊桥” 即可参与', 1, 1),
(37, 1, 0, '微场景', 'Live', '', 1, 1),
(38, 1, 0, '微调研', 'Research', '', 1, 1),
(39, 1, 0, '一战到底', 'Problem', '', 1, 1),
(40, 1, 0, '微信签到', 'Signin', '', 1, 1),
(41, 1, 0, '现场活动', 'Scene', '', 1, 1),
(42, 1, 0, '微商圈', 'Market', '', 1, 1),
(43, 1, 0, '微预约', 'Custom', '', 1, 1),
(44, 1, 0, '祝福贺卡', 'Greeting_card', '', 1, 1),
(45, 1, 0, '微美容', 'beauty', '', 1, 1),
(46, 1, 0, '微健身', 'fitness', '', 1, 1),
(47, 1, 0, '微政务', 'gover', '', 1, 1),
(48, 1, 0, '微食品', 'food', '', 1, 1),
(49, 1, 0, '微旅游', 'travel', '', 1, 1),
(50, 1, 0, '微花店', 'flower', '', 1, 1),
(51, 1, 0, '微物业', 'property', '', 1, 1),
(52, 1, 0, '微KTV', 'ktv', '', 1, 1),
(53, 1, 0, '微酒吧', 'bar', '', 1, 1),
(54, 1, 0, '微装修', 'fitment', '', 1, 1),
(55, 1, 0, '微婚庆', 'buswedd', '', 1, 1),
(56, 1, 0, '微宠物', 'affections', '', 1, 1),
(57, 1, 0, '微家政', 'housekeeper', '', 1, 1),
(58, 1, 0, '微租赁', 'lease', '', 1, 1),
(59, 1, 0, '微游戏', 'Gamecenter', '', 1, 1),
(60, 1, 0, '百度直达号', 'Zhida', '', 1, 1),
(61, 1, 0, '微信红包', 'Red_packet', '', 1, 1),
(62, 1, 0, '惩罚台', 'Punish', '', 1, 1),
(63, 1, 0, '邀请函', 'Invite', '', 1, 1),
(64, 1, 0, '拆礼盒', 'Autumns', '', 1, 1),
(116, 0, 0, '谁是情圣', 'Sentiment', '', 0, 1),
(115, 0, 0, '店员管理', 'Assistente', '', 0, 1),
(113, 0, 0, '微排号', 'Numqueue', '', 0, 1),
(69, 1, 0, '分享助力', 'Helping', '', 1, 1),
(70, 1, 0, '人气冲榜', 'Popularity', '', 1, 1),
(71, 1, 0, '幸运九宫格', 'Jiugong', '', 1, 1),
(93, 1, 0, '全民经纪人', 'MicroBroker', '', 1, 1),
(94, 1, 0, '一元购', 'Unitary', '', 1, 1),
(95, 1, 0, '微众筹', 'Crowdfunding', '', 1, 1),
(96, 1, 0, '微砍价', 'Bargain', '', 1, 1),
(98, 1, 0, '合体红包', 'Hongbao', '', 1, 1),
(99, 1, 0, '聊天交友', 'Service', '', 1, 1),
(100, 1, 0, '秒杀', 'Seckill', '', 1, 1),
(102, 1, 0, '微店', 'Micrstore', '', 1, 1),
(103, 1, 0, '微贺卡', 'Card', '', 1, 1),
(104, 1, 0, '图文投票', 'Voteimg', '', 1, 1),
(105, 1, 0, '微信', 'Weixin', '', 1, 1),
(106, 1, 0, '服务窗', 'Fuwu', '', 1, 1),
(107, 0, 0, '摇一摇，周边', 'Shakearound', '', 0, 1),
(108, 0, 0, '微名片', 'Person_card', '', 0, 1),
(109, 0, 0, '人工客服', 'ServiceUser', '', 0, 1),
(110, 0, 0, '微外卖', 'DishOut', '', 0, 1),
(111, 0, 0, '高级场景', 'SeniorScene', '', 0, 1),
(112, 0, 0, '降价拍', 'Cutprice', '', 0, 1),
(117, 0, 0, '摇钱树', 'CoinTree', '', 0, 1),
(118, 0, 0, '我要上头条', 'FrontPage', '', 0, 1),
(119, 0, 0, '集字游戏', 'Collectword', '', 0, 1),
(120, 0, 0, '微拍卖', 'Auction', '', 0, 1),
(121, 0, 0, '趣味测试', 'Test', '', 0, 1),
(122, 0, 0, '摇一摇抽奖', 'ShakeLottery', '', 0, 1),
(123, 0, 0, '粉丝红包', 'DirectHongbao', '', 0, 1),
(124, 0, 0, '微信连WIFI', 'Dizwifi', '', 0, 1),
(275, 0, 0, '募捐', 'Donation', '', 0, 0),
(262, 0, 0, '优惠接力', 'YouSetDiscount', '', 0, 0),
(221, 0, 0, '生活圈', 'LivingCircles', '', 0, 1),
(222, 0, 0, '云打包', 'Yundabao', '', 0, 1),
(223, 0, 0, 'Repast', 'Repast', '', 0, 1),
(224, 0, 0, '分销', 'Distribution', '', 0, 1),
(225, 0, 0, 'DIY宣传页', 'adma', '', 0, 1),
(226, 0, 0, '卡券收银', 'Cashier', '', 0, 1),
(2098, 0, 0, '卡券收银', 'Cashier', '', 0, 1),
(2097, 0, 0, 'DIY宣传页', 'adma', '', 0, 0),
(2096, 0, 0, '分销', 'Distribution', '', 0, 0),
(2095, 0, 0, 'Repast', 'Repast', '', 0, 0),
(2094, 0, 0, '生活圈', 'LivingCircles', '', 0, 0),
(2093, 0, 0, '云打包', 'Yundabao', '', 0, 1),
(2092, 0, 0, '中秋吃月饼', 'Autumn', '', 0, 1),
(2091, 0, 0, '微教育', 'school', '', 0, 1),
(2090, 0, 0, '酒店宾馆', 'hotel', '', 0, 1),
(2089, 0, 0, '分享统计', 'share', '', 0, 1),
(2088, 0, 0, '群发消息', 'groupmessage', '', 0, 1),
(2087, 0, 0, '微医疗', 'medical', '', 0, 1),
(2086, 0, 0, '微论坛', 'forum', '', 0, 1),
(2085, 0, 0, '摇一摇', 'shake', '', 0, 1),
(2084, 0, 0, '摁死小情侣游戏', 'Lovers', '', 0, 1),
(2083, 0, 0, '七夕走鹊桥', 'AppleGame', '', 0, 1),
(2082, 0, 0, '微场景', 'Live', '', 0, 1),
(2081, 0, 0, '微旅游', 'travel', '', 0, 1),
(2080, 0, 0, '微食品', 'food', '', 0, 1),
(2079, 0, 0, '微政务', 'gover', '', 0, 1),
(2078, 0, 0, '微健身', 'fitness', '', 0, 1),
(2077, 0, 0, '微美容', 'beauty', '', 0, 1),
(2076, 0, 0, '祝福贺卡', 'Greeting_card', '', 0, 1),
(2075, 0, 0, '微预约', 'Custom', '', 0, 1),
(2074, 0, 0, '微商圈', 'Market', '', 0, 1),
(2073, 0, 0, '现场活动', 'Scene', '', 0, 1),
(2072, 0, 0, '微信签到', 'Signin', '', 0, 1),
(2071, 0, 0, '一战到底', 'Problem', '', 0, 1),
(2070, 0, 0, '微调研', 'Research', '', 0, 1),
(2069, 0, 0, '微信墙', 'wall', '', 0, 1),
(2068, 0, 0, '微汽车', 'car', '', 0, 1),
(2067, 0, 0, '微餐饮(无线打印)', 'dx', '', 0, 1),
(2066, 0, 0, '自定义表单', 'diyform', '', 0, 1),
(2065, 0, 0, '域名whois查询', 'whois', '', 0, 1),
(2064, 0, 0, '通用预订系统', 'host_kev', '', 0, 1),
(2063, 0, 0, '会员卡', 'huiyuanka', '', 0, 1),
(2062, 0, 0, '聊天', 'liaotian', '', 0, 1),
(2061, 0, 0, '3G首页', 'shouye', '', 0, 1),
(2060, 0, 0, '优惠券', 'choujiang', '', 0, 1),
(2059, 0, 0, '第三方接口', 'api', '', 0, 1),
(2058, 0, 0, '幸运大转盘', 'lottery', '', 0, 1),
(2057, 0, 0, '在线商城', 'shop', '', 0, 1),
(2056, 0, 0, '在线团购系统', 'etuan', '', 0, 1),
(2055, 0, 0, '留言板', 'messageboard', '', 0, 1),
(2054, 0, 0, '水果机', 'LuckyFruit', '', 0, 1),
(2053, 0, 0, '砸金蛋', 'GoldenEgg', '', 0, 1),
(2052, 0, 0, '3G相册', 'album', '', 0, 1),
(2051, 0, 0, '房产', 'estate', '', 0, 1),
(2050, 0, 0, '投票', 'vote', '', 0, 1),
(2049, 0, 0, '婚庆喜帖', 'wedding', '', 0, 1),
(2048, 0, 0, '全景', 'panorama', '', 0, 1),
(2047, 0, 0, '刮刮卡', 'gua2', '', 0, 1),
(2046, 0, 0, '自定义菜单', 'diymen_set', '', 0, 1),
(2045, 0, 0, '附近周边信息查询', 'fujin', '', 0, 1),
(2044, 0, 0, '微花店', 'flower', '', 0, 1),
(2043, 0, 0, '募捐', 'Donation', '', 0, 1),
(2042, 0, 0, '店员管理', 'Assistente', '', 0, 1),
(2041, 0, 0, '降价拍', 'Cutprice', '', 0, 1),
(2040, 0, 0, '人工客服', 'ServiceUser', '', 0, 1),
(2039, 0, 0, '微名片', 'Person_card', '', 0, 1),
(2038, 0, 0, '摇一摇，周边', 'Shakearound', '', 0, 1),
(2037, 0, 0, '图文投票', 'Voteimg', '', 0, 1),
(2036, 0, 0, '微贺卡', 'Card', '', 0, 1),
(2035, 0, 0, '微信公众号', 'Weixin', '', 0, 1),
(2034, 0, 0, '支付宝服务窗', 'Fuwu', '', 0, 1),
(2033, 0, 0, '聊天交友', 'Service', '', 0, 1),
(2032, 0, 0, '微排号', 'Numqueue', '', 0, 1),
(2031, 0, 0, 'H5动态自定义模板', 'CustomTmpls', '', 0, 1),
(2030, 0, 0, '优惠接力', 'YouSetDiscount', '', 0, 1),
(2029, 0, 0, '微信连WIFI', 'Dizwifi', '', 0, 1),
(2028, 0, 0, '粉丝红包', 'DirectHongbao', '', 0, 1),
(2027, 0, 0, '摇一摇抽奖', 'ShakeLottery', '', 0, 1),
(2026, 0, 0, '趣味测试', 'Test', '', 0, 1),
(2025, 0, 0, '微拍卖', 'Auction', '', 0, 1),
(2024, 0, 0, '集字游戏', 'Collectword', '', 0, 1),
(2023, 0, 0, '我要上头条', 'FrontPage', '', 0, 1),
(2022, 0, 0, '摇钱树', 'CoinTree', '', 0, 1),
(2021, 0, 0, '谁是情圣', 'Sentiment', '', 0, 1),
(2020, 0, 0, '合体红包', 'Hongbao', '', 0, 1),
(2019, 0, 0, '微砍价', 'Bargain', '', 0, 1),
(2018, 0, 0, '微店系统', 'Micrstore', '', 0, 1),
(2017, 0, 0, '微信红包', 'Red_packet', '', 0, 1),
(2016, 0, 0, '百度直达号', 'Zhida', '', 0, 1),
(2015, 0, 0, '微游戏', 'Gamecenter', '', 0, 1),
(2014, 0, 0, '微租赁', 'lease', '', 0, 1),
(2013, 0, 0, '微家政', 'housekeeper', '', 0, 1),
(2012, 0, 0, '微宠物', 'affections', '', 0, 1),
(2011, 0, 0, '微婚庆', 'buswedd', '', 0, 1),
(2010, 0, 0, '微装修', 'fitment', '', 0, 1),
(2009, 0, 0, '微酒吧', 'bar', '', 0, 1),
(2008, 0, 0, '微KTV', 'ktv', '', 0, 1),
(2007, 0, 0, '惩罚台', 'Punish', '', 0, 1),
(2006, 0, 0, '邀请函', 'Invite', '', 0, 1),
(2005, 0, 0, '秒杀', 'Seckill', '', 0, 1),
(2004, 0, 0, '高级场景', 'SeniorScene', '', 0, 1),
(2003, 0, 0, '微众筹', 'Crowdfunding', '', 0, 1),
(2002, 0, 0, '微外卖', 'DishOut', '', 0, 1),
(2001, 0, 0, '一元购', 'Unitary', '', 0, 1),
(2000, 0, 0, '人气冲榜', 'Popularity', '', 0, 1),
(1999, 0, 0, '分享助力', 'Helping', '', 0, 1),
(1998, 0, 0, '全民经纪人', 'MicroBroker', '', 0, 1),
(1997, 0, 0, '幸运九宫格', 'Jiugong', '', 0, 1),
(1996, 0, 0, '拆礼盒', 'Autumns', '', 0, 1),
(1995, 0, 0, '微物业', 'property', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_funintro`
--

CREATE TABLE IF NOT EXISTS `pigcms_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `img1` char(200) NOT NULL,
  `img2` char(200) NOT NULL,
  `img3` char(200) NOT NULL,
  `img4` char(200) NOT NULL,
  `img5` char(200) NOT NULL,
  `img6` char(200) NOT NULL,
  `img7` char(200) NOT NULL,
  `img8` char(200) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  `name4` varchar(200) NOT NULL,
  `name5` varchar(200) NOT NULL,
  `name6` varchar(200) NOT NULL,
  `name7` varchar(200) NOT NULL,
  `name8` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `classid` int(11) NOT NULL DEFAULT '0',
  `public_id` int(11) NOT NULL,
  `nick_title` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `sce_content` text NOT NULL,
  `holi_id` int(11) NOT NULL,
  `menu_link` varchar(400) NOT NULL,
  `timg` varchar(100) NOT NULL,
  `img_w` varchar(200) NOT NULL,
  `img_x` varchar(200) NOT NULL,
  `is_new` int(1) NOT NULL,
  `img_havecolor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_fuwuuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_fuwuuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `user_id` varchar(512) DEFAULT NULL COMMENT '用户的userId',
  `user_type_value` int(1) DEFAULT NULL COMMENT '用户类型（1/2） 1代表公司账户； 2代表个人账户',
  `user_status` varchar(1) DEFAULT NULL COMMENT '用户状态（Q/T/B/W）。 Q代表快速注册用户；T代表已认证用户；B代表被冻结账户；W代表已注册，未激活的账户',
  `firm_name` varchar(100) DEFAULT NULL COMMENT '公司名称（用户类型是公司类型时公司名称才有此字段）。',
  `real_name` varchar(100) DEFAULT NULL COMMENT '用户的真实姓名。',
  `avatar` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `cert_no` varchar(100) DEFAULT NULL COMMENT '证件号码',
  `gender` varchar(1) DEFAULT NULL COMMENT '性别（F：女性；M：男性）',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码。',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码。',
  `is_certified` varchar(1) DEFAULT NULL COMMENT '是否通过实名认证。T是通过 F是没有实名认证',
  `is_student_certified` varchar(1) DEFAULT NULL COMMENT '是否是学生。T表示是学生，F表示不是学生',
  `is_bank_auth` varchar(1) DEFAULT NULL COMMENT 'T为是银行卡认证，F为非银行卡认证。',
  `is_id_auth` varchar(1) DEFAULT NULL COMMENT 'T为是身份证认证，F为非身份证认证。',
  `is_mobile_auth` varchar(1) DEFAULT NULL COMMENT 'T为是手机认证，F为非手机认证。',
  `is_licence_auth` varchar(1) DEFAULT NULL COMMENT 'T为通过营业执照认证，F为没有通过',
  `cert_type_value` int(3) DEFAULT NULL COMMENT '0:身份证；1:护照；2:军官证；3:士兵证；4:回乡证；5:临时身份证；6:户口簿；7:警官证；8:台胞证；9:营业执照；10其它证件',
  `province` varchar(20) DEFAULT NULL COMMENT '省份名称。',
  `city` varchar(20) DEFAULT NULL COMMENT '市名称。',
  `area` varchar(20) DEFAULT NULL COMMENT '区县名称。',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址。',
  `zip` int(20) DEFAULT NULL COMMENT '邮政编码。',
  `address_code` int(100) DEFAULT NULL COMMENT '区域编码，暂时不返回值',
  `type` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `IDX_TOKEN` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_games`
--

CREATE TABLE IF NOT EXISTS `pigcms_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `gameid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `limit_num` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `is_share` tinyint(1) NOT NULL,
  `share_value` varchar(255) NOT NULL COMMENT '序列化',
  `share_callback` tinyint(2) NOT NULL DEFAULT '0' COMMENT '分享回调类型0:再玩一次,1:红包,2:卡券,3:积分',
  `is_release` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未发布；1： 已发布；',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_game_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_game_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `wxid` varchar(40) NOT NULL DEFAULT '',
  `wxname` varchar(50) NOT NULL DEFAULT '',
  `wxlogo` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `key` varchar(40) NOT NULL DEFAULT '',
  `attentionText` char(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_game_convert`
--

CREATE TABLE IF NOT EXISTS `pigcms_game_convert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `u_game_id` int(11) NOT NULL,
  `fans_id` int(11) DEFAULT NULL,
  `convert_code` varchar(255) NOT NULL,
  `awards_level` tinyint(9) NOT NULL COMMENT '奖品级别',
  `is_use` tinyint(2) DEFAULT '0' COMMENT '0：未使用；1：已使用',
  `convert_time` timestamp NULL DEFAULT NULL COMMENT '兑换时间',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_game_records`
--

CREATE TABLE IF NOT EXISTS `pigcms_game_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `score` float(11,2) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `u_game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_greeting_card`
--

CREATE TABLE IF NOT EXISTS `pigcms_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_helping`
--

CREATE TABLE IF NOT EXISTS `pigcms_helping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `info` text NOT NULL,
  `reply_pic` varchar(250) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `add_time` char(15) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `fxtitle` varchar(200) DEFAULT NULL,
  `is_newtp` int(11) NOT NULL DEFAULT '0',
  `is_sms` int(11) NOT NULL DEFAULT '0',
  `fxinfo` varchar(300) DEFAULT NULL,
  `rank_num` int(11) DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `is_help` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `is_open` (`is_open`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_helping`
--

INSERT INTO `pigcms_helping` (`id`, `token`, `title`, `keyword`, `intro`, `info`, `reply_pic`, `top_pic`, `start`, `end`, `add_time`, `is_open`, `is_reg`, `is_attention`, `fxtitle`, `is_newtp`, `is_sms`, `fxinfo`, `rank_num`, `pv`, `is_help`) VALUES
(1, 'vjotae1439949952', '微助力，助你成功', '微助力', '微助力', '微助力', 'http://s.404.cn/tpl/static/helping/images/default.jpg', '', '1439913600', '1442592000', '1439950715', 1, 1, 2, '', 1, 0, '', 100, 0, 1),
(2, 'cavegu1439957052', '微助力，助你成功', '微助力', '分享积攒50个截图就可以的奖品', '', 'http://s.404.cn/tpl/static/helping/images/default.jpg', '', '1439913600', '1442592000', '1439964136', 1, 1, 1, '', 0, 0, '考验人脉的时候到了 快帮帮我吧', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_helping_news`
--

CREATE TABLE IF NOT EXISTS `pigcms_helping_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `imgurl` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_helping_news`
--

INSERT INTO `pigcms_helping_news` (`id`, `token`, `pid`, `title`, `imgurl`, `url`) VALUES
(1, 'vjotae1439949952', 1, 'XXX', 'http://s.404.cn/tpl/static/helping/images/default.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_helping_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_helping_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(200) NOT NULL,
  `starttime` int(11) NOT NULL,
  `stoptime` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_helping_prize`
--

INSERT INTO `pigcms_helping_prize` (`id`, `token`, `pid`, `title`, `imgurl`, `starttime`, `stoptime`, `num`) VALUES
(1, 'vjotae1439949952', 1, 'XXX', 'http://wd.imakebe.com/uploads/v/vjotae1439949952/b/9/e/c/thumb_55d3e7682d557.png', 1440604800, 1440950400, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_helping_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_helping_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(35) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `addtime` char(35) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_helping_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_helping_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `help_count` int(11) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_key` char(40) NOT NULL,
  `tel` varchar(50) NOT NULL DEFAULT '0',
  `is_join2` int(11) NOT NULL DEFAULT '1',
  `is_join` int(11) NOT NULL DEFAULT '0',
  `share_num` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_helping_user`
--

INSERT INTO `pigcms_helping_user` (`id`, `token`, `wecha_id`, `pid`, `help_count`, `add_time`, `share_key`, `tel`, `is_join2`, `is_join`, `share_num`, `pv`) VALUES
(1, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', 1, 0, '1439950970', '991a7eeb010d39134382b6847ae18d34', '0', 1, 0, 0, 0),
(2, 'cavegu1439957052', 'oTNkquOXrG0T-ywPB1SeVDEayD-Q', 2, 290, '1439965435', '73308c6003b07896abc737062b367b95', '0', 1, 0, 0, 0),
(3, 'cavegu1439957052', 'oTNkquKy-uJsLhgeJT_1KhgSXSAQ', 2, 0, '0', 'f438f49c542d0ebe25c422b60704c28c', '0', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_home`
--

CREATE TABLE IF NOT EXISTS `pigcms_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `gzhurl` char(255) DEFAULT NULL COMMENT '公众号链接地址',
  `start` int(11) NOT NULL COMMENT '开场动画',
  `stpic` varchar(200) NOT NULL COMMENT '开场动画图片',
  `switch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_home_background`
--

CREATE TABLE IF NOT EXISTS `pigcms_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hongbao`
--

CREATE TABLE IF NOT EXISTS `pigcms_hongbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `keyword` char(30) NOT NULL,
  `action_name` char(40) NOT NULL COMMENT '红包活动名称',
  `sharetimes` int(10) NOT NULL COMMENT '最小合体次数',
  `min_money` float(6,2) NOT NULL COMMENT '随机数最小值',
  `max_money` float(6,2) NOT NULL COMMENT '随机数最大值',
  `total_money` float(6,2) DEFAULT NULL,
  `start_time` char(11) NOT NULL COMMENT '活动开始时间',
  `end_time` char(11) NOT NULL COMMENT '活动结束时间',
  `need_phone` enum('1','2') NOT NULL COMMENT '是否需要注册手机号',
  `need_follow` enum('1','2') NOT NULL COMMENT '是否需要关注',
  `action_desc` varchar(256) NOT NULL COMMENT '活动介绍',
  `reply_pic` varchar(100) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '是否开启',
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `remind_word` varchar(255) NOT NULL,
  `remind_link` varchar(255) NOT NULL,
  `getway` tinyint(1) NOT NULL DEFAULT '1',
  `timeline_hide` tinyint(1) NOT NULL,
  `display_nums` smallint(6) NOT NULL,
  `limit_join` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hongbao_index` (`id`,`token`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_hongbao`
--

INSERT INTO `pigcms_hongbao` (`id`, `token`, `keyword`, `action_name`, `sharetimes`, `min_money`, `max_money`, `total_money`, `start_time`, `end_time`, `need_phone`, `need_follow`, `action_desc`, `reply_pic`, `status`, `reply_title`, `reply_content`, `remind_word`, `remind_link`, `getway`, `timeline_hide`, `display_nums`, `limit_join`) VALUES
(1, 'cavegu1439957052', '包包', '全城抢包包', 50, 1.00, 100.00, 9999.99, '1439958420', '1442636820', '1', '1', '发生地方阿斯顿啊风格', 'http://wd.imakebe.com/tpl/static/hongbao/images/weixinheti.png', '1', '小包抢不停', '快来抢包包', '嗯啊', 'www.baidu.com', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hongbao_grabber`
--

CREATE TABLE IF NOT EXISTS `pigcms_hongbao_grabber` (
  `grabber_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '抢到的红包id',
  `money` float(6,2) unsigned NOT NULL COMMENT '抢到的红包金额',
  `grabber_nickname` varchar(20) DEFAULT '' COMMENT '抢红包者昵称',
  `grabber_headimgurl` varchar(255) DEFAULT NULL COMMENT '抢红包者头像',
  `grabber_shareid` varchar(100) DEFAULT '' COMMENT '抢红包者分享的key',
  `grabber_wechaid` varchar(100) DEFAULT '' COMMENT '抢红包者wcha_id',
  `grabber_sex` enum('0','1') DEFAULT '0' COMMENT '抢红包者性别',
  `grabber_tel` varchar(20) DEFAULT '' COMMENT '抢红包者电话',
  `grabber_qq` varchar(20) DEFAULT '' COMMENT '抢红包者QQ',
  `grabber_address` varchar(50) DEFAULT '' COMMENT '抢红包者address',
  `grabber_province` varchar(50) DEFAULT '' COMMENT '抢红包者province',
  `grabber_city` varchar(50) DEFAULT '' COMMENT '抢红包者city',
  `share_money` int(11) DEFAULT '0' COMMENT '抢红包者合体奖励的金额',
  `share_content` int(11) DEFAULT '0' COMMENT '抢红包者分享语',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  `grabber_time` int(11) NOT NULL,
  `isgrabbed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grabber_id`),
  KEY `hongbao_id` (`hongbao_id`),
  KEY `my_packets` (`hongbao_id`,`grabber_wechaid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hongbao_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_hongbao_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '红包id',
  `add_money` float(6,2) unsigned NOT NULL COMMENT '为合体者贡献的金额',
  `share_key` varchar(50) NOT NULL COMMENT '分享code',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '分享者昵称',
  `share_pic` varchar(255) DEFAULT '' COMMENT '分享者头像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '是否进入分享页',
  `share_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享者openid',
  PRIMARY KEY (`share_id`),
  KEY `hongbao_id` (`hongbao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host`
--

CREATE TABLE IF NOT EXISTS `pigcms_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='酒店商家设置' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host_list_add`
--

CREATE TABLE IF NOT EXISTS `pigcms_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(500) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房间类型信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  `orderid` varchar(100) NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单管理' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_house`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_house_sort`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  `area` float NOT NULL,
  `bed` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `bedwidth` varchar(100) NOT NULL,
  `network` varchar(100) NOT NULL,
  `smoke` varchar(100) NOT NULL,
  `image_1` varchar(200) NOT NULL,
  `image_2` varchar(200) NOT NULL,
  `image_3` varchar(200) NOT NULL,
  `image_4` varchar(200) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `keep_time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_image`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `image` varchar(200) NOT NULL,
  `info` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `remark` varchar(800) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_images`
--

CREATE TABLE IF NOT EXISTS `pigcms_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(250) NOT NULL,
  `about` char(250) NOT NULL,
  `price` char(250) NOT NULL,
  `login` char(250) NOT NULL,
  `help` char(250) NOT NULL,
  `common` char(250) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_AGENTID` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img`
--

CREATE TABLE IF NOT EXISTS `pigcms_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` longtext NOT NULL,
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1',
  `longitude` varchar(20) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `writer` varchar(200) DEFAULT NULL COMMENT '作者',
  `texttype` int(11) NOT NULL DEFAULT '1' COMMENT '文本类型',
  `usorts` int(11) NOT NULL DEFAULT '1' COMMENT '分类文章排列顺序',
  `is_focus` tinyint(4) NOT NULL,
  `wechat_group` varchar(500) NOT NULL,
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `dashang` int(11) NOT NULL DEFAULT '2',
  `dashang_type` int(11) NOT NULL DEFAULT '1',
  `dashang_price_type` int(11) NOT NULL DEFAULT '1',
  `dashang_price_min` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_max` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_1` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_2` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_3` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_4` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_price_5` int(20) unsigned NOT NULL DEFAULT '0',
  `dashang_rank_type` int(11) NOT NULL DEFAULT '1',
  `dashang_rank_num` int(11) NOT NULL DEFAULT '5',
  `dashang_price_6` int(20) unsigned NOT NULL DEFAULT '0',
  `iscomment` tinyint(1) NOT NULL DEFAULT '0',
  `autocomment` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信图文' AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_img_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `ctime` int(11) NOT NULL,
  `content` text NOT NULL,
  `wname` varchar(200) NOT NULL,
  `wheaderimg` varchar(200) NOT NULL,
  `reply` text NOT NULL,
  `support` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img_comment_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_img_comment_record` (
  `imgcmt_id` int(11) NOT NULL,
  `wecha_id` varchar(200) CHARACTER SET gbk NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img_dashang_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_img_dashang_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `price_s` int(20) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `paytype` varchar(100) DEFAULT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `transactionid` varchar(150) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  `sum` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img_multi`
--

CREATE TABLE IF NOT EXISTS `pigcms_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_indent`
--

CREATE TABLE IF NOT EXISTS `pigcms_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_indent`
--

INSERT INTO `pigcms_indent` (`id`, `uid`, `gid`, `month`, `uname`, `title`, `info`, `indent_id`, `widtrade_no`, `price`, `create_time`, `status`) VALUES
(6, 8, 0, 0, 'dmds518', '充值', 0, '8_1439948845', '', 200, 1439948845, 0),
(7, 20, 0, 0, 'lpl0819', '充值', 0, '20_1439951842', '', 200, 1439951842, 0),
(8, 27, 0, 0, 'caomaobang', '充值', 0, '27_1439956884', '', 200, 1439956884, 0),
(9, 23, 0, 0, 'admin', '充值', 0, '23_1439962674', '', 200, 1439962674, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(360) NOT NULL,
  `replypic` varchar(200) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `meetpic` varchar(150) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `linkman` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `site` varchar(100) NOT NULL,
  `twopic` varchar(150) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `themeurl` varchar(150) NOT NULL,
  `warn` varchar(100) NOT NULL,
  `inback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite_enroll`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comp` varchar(100) NOT NULL,
  `wecha_id` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='报名' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite_meeting`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite_meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `ytime` int(11) NOT NULL,
  `xtime` int(11) NOT NULL,
  `content` text NOT NULL,
  `guest` varchar(200) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite_partner`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `partnertype` varchar(50) NOT NULL COMMENT '合作伙伴类型',
  `typepic` varchar(200) NOT NULL COMMENT '类型图片',
  `company` varchar(200) NOT NULL COMMENT '公司',
  `photo` varchar(100) NOT NULL COMMENT '服务热线',
  `scheme` text NOT NULL COMMENT '方案',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite_plan`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_invite_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_invite_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` char(60) NOT NULL,
  `yid` int(1) NOT NULL,
  `headpic` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `synopsis` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_keyword`
--

CREATE TABLE IF NOT EXISTS `pigcms_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '0',
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=309 ;

--
-- 转存表中的数据 `pigcms_keyword`
--

INSERT INTO `pigcms_keyword` (`id`, `keyword`, `pid`, `token`, `module`, `precision`, `precisions`) VALUES
(230, 'waphelp', 1, 'avclov1439948990', 'waphelp', 0, 1),
(238, 'waphelp', 1, 'cyvwqd1439949073', 'waphelp', 0, 1),
(308, 'waphelp', 1, 'iztlsr1439949156', 'waphelp', 0, 1),
(260, 'waphelp', 1, 'qgvdkw1439949139', 'waphelp', 0, 1),
(240, 'waphelp', 1, 'ascqfk1439949165', 'waphelp', 0, 1),
(242, '图文投票', 1, 'qgvdkw1439949139', 'Voteimg', 0, 0),
(243, 'waphelp', 1, 'ddqhjy1439950027', 'waphelp', 0, 1),
(296, 'waphelp', 1, 'vjotae1439949952', 'waphelp', 0, 1),
(246, 'waphelp', 1, 'sfrpky1439949951', 'waphelp', 0, 1),
(247, '谁是情圣', 1, 'vjotae1439949952', 'Sentiment', 0, 0),
(251, '情圣', 2, 'sfrpky1439949951', 'Sentiment', 0, 0),
(256, '图文投票', 2, 'sfrpky1439949951', 'Voteimg', 0, 0),
(255, '微助力', 1, 'vjotae1439949952', 'Helping', 0, 0),
(299, 'waphelp', 1, 'bznhbf1439950816', 'waphelp', 0, 1),
(269, '微店', 1, 'iztlsr1439949156', 'Micrstore', 0, 0),
(271, 'waphelp', 1, 'cedgjq1439951515', 'waphelp', 0, 1),
(272, '谁是情圣', 3, 'iztlsr1439949156', 'Sentiment', 0, 0),
(277, 'waphelp', 1, 'hbokpr1439956537', 'waphelp', 0, 1),
(291, 'waphelp', 1, 'cavegu1439957052', 'waphelp', 0, 1),
(288, '微助力', 2, 'cavegu1439957052', 'Helping', 0, 0),
(280, '微助力', 5, 'cavegu1439957052', 'Text', 0, 0),
(281, '包包', 1, 'cavegu1439957052', 'Hongbao', 0, 0),
(284, 'waphelp', 1, 'uxtals1439962913', 'waphelp', 0, 1),
(285, '微店', 2, 'uxtals1439962913', 'Micrstore', 0, 0),
(289, '微店', 3, 'cavegu1439957052', 'Micrstore', 0, 0),
(290, '大转盘', 1, 'cavegu1439957052', 'Lottery', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_leave`
--

CREATE TABLE IF NOT EXISTS `pigcms_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=268 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_links`
--

CREATE TABLE IF NOT EXISTS `pigcms_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `url` char(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(1) CHARACTER SET utf8 NOT NULL,
  `agentid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_live`
--

CREATE TABLE IF NOT EXISTS `pigcms_live` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_company` enum('0','1') NOT NULL,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `open_pic` char(120) NOT NULL,
  `is_masking` enum('0','1') NOT NULL,
  `masking_pic` char(120) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `music` char(120) NOT NULL,
  `end_pic` char(120) NOT NULL,
  `share_bg` char(120) NOT NULL,
  `share_button` char(120) NOT NULL,
  `add_time` char(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `token` char(25) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `warn` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_live_company`
--

CREATE TABLE IF NOT EXISTS `pigcms_live_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `top_pic` char(120) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `live_id` int(10) unsigned NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `show_map` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_live_content`
--

CREATE TABLE IF NOT EXISTS `pigcms_live_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `movie_pic` char(120) NOT NULL,
  `movie_link` char(200) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `sort` tinyint(4) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  `live_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` text,
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `navpic` varchar(100) NOT NULL,
  `mysellerpic` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_comment` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `star` int(11) NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_favorite`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_favorite` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_mysellercart`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_mysellercart` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_mysellergoods`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_mysellergoods` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `num` int(11) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_mysellerorder`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_mysellerorder` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_sellcircle`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_sellcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `display` int(11) NOT NULL DEFAULT '1',
  `sellcircleid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_seller`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_seller` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL,
  `zitypeid` int(11) NOT NULL DEFAULT '0',
  `sellcircleid` int(11) NOT NULL,
  `zisellcircleid` int(11) NOT NULL DEFAULT '0',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  `weurl` varchar(512) DEFAULT NULL,
  `recommend` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_type`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_type` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `pic` varchar(100) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `display` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_livingcircle_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_livingcircle_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `guanzhu` int(11) DEFAULT NULL COMMENT '是否关注',
  `fistpic` varchar(100) DEFAULT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `bg` varchar(100) DEFAULT NULL,
  `bgtype` int(11) NOT NULL DEFAULT '0',
  `timespan` int(11) NOT NULL DEFAULT '0',
  `isdaylottery` int(11) NOT NULL DEFAULT '0',
  `cardid` int(11) NOT NULL DEFAULT '0',
  `shareupnum` int(11) NOT NULL DEFAULT '0',
  `numtype` int(11) NOT NULL DEFAULT '0',
  `sharebeforenum` int(11) NOT NULL DEFAULT '1',
  `other_source` varchar(30) DEFAULT NULL COMMENT '其他活动对接来源',
  `scene_time` int(10) unsigned NOT NULL DEFAULT '0',
  `scene_state` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `zjpic` (`zjpic`),
  KEY `zjpic_2` (`zjpic`),
  KEY `zjpic_3` (`zjpic`),
  KEY `other_source` (`other_source`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_lottery`
--

INSERT INTO `pigcms_lottery` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `txt`, `sttxt`, `statdate`, `enddate`, `info`, `aginfo`, `endtite`, `endpicurl`, `endinfo`, `fist`, `fistnums`, `fistlucknums`, `second`, `type`, `secondnums`, `secondlucknums`, `third`, `thirdnums`, `thirdlucknums`, `allpeople`, `canrqnums`, `parssword`, `renamesn`, `renametel`, `displayjpnums`, `createtime`, `status`, `four`, `fournums`, `fourlucknums`, `five`, `fivenums`, `fivelucknums`, `six`, `sixnums`, `sixlucknums`, `zjpic`, `daynums`, `maxgetprizenum`, `needreg`, `guanzhu`, `fistpic`, `secondpic`, `thirdpic`, `fourpic`, `fivepic`, `sixpic`, `bg`, `bgtype`, `timespan`, `isdaylottery`, `cardid`, `shareupnum`, `numtype`, `sharebeforenum`, `other_source`, `scene_time`, `scene_state`) VALUES
(1, 0, 0, 'cavegu1439957052', '大转盘', 'http://wd.imakebe.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', '恭喜你中奖了', 1439964360, 1442556360, '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://wd.imakebe.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1010现金', 10, 0, '', 1, 0, 0, '', 0, 0, 10, 2, 123, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery_cheat`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` int(10) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `sharecount` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market`
--

CREATE TABLE IF NOT EXISTS `pigcms_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_area`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_cate`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_nav`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` varchar(200) NOT NULL,
  `nav_link` varchar(200) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_park`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` int(11) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_slide`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL DEFAULT '',
  `slide_url` char(100) NOT NULL,
  `slide_link` char(200) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_addtype`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_addtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `typename` varchar(255) NOT NULL DEFAULT '',
  `onduty` tinyint(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_duty`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docter` varchar(100) NOT NULL,
  `did` int(11) NOT NULL,
  `week1` tinyint(1) NOT NULL,
  `week2` tinyint(1) NOT NULL,
  `week3` tinyint(1) NOT NULL,
  `week4` tinyint(1) NOT NULL,
  `week5` tinyint(1) NOT NULL,
  `week6` tinyint(1) NOT NULL,
  `week7` tinyint(1) NOT NULL,
  `resernumber1` int(11) NOT NULL,
  `resernumber2` int(11) NOT NULL,
  `intro` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_level`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_level` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `lprice` float(6,2) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) DEFAULT '',
  `menu10` varchar(50) DEFAULT '',
  `picurl1` varchar(200) DEFAULT '',
  `picurl2` varchar(200) DEFAULT '',
  `picurl3` varchar(200) DEFAULT '',
  `picurl4` varchar(200) DEFAULT '',
  `picurl5` varchar(200) DEFAULT '',
  `picurl6` varchar(200) DEFAULT '',
  `picurl7` varchar(200) DEFAULT '',
  `picurl8` varchar(200) DEFAULT '',
  `picurl9` varchar(200) DEFAULT '',
  `picurl10` varchar(200) DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  `reservation_time` int(11) NOT NULL,
  `yyks_name` varchar(100) NOT NULL,
  `yyzj_name` varchar(100) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member`
--

CREATE TABLE IF NOT EXISTS `pigcms_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_contact`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_coupon`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` char(150) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `attr` enum('0','1') NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `card_id` char(50) NOT NULL,
  `is_weixin` tinyint(4) NOT NULL,
  `color` char(10) NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `least_cost` decimal(10,2) NOT NULL,
  `reduce_cost` decimal(10,2) NOT NULL,
  `gift_name` char(30) NOT NULL,
  `integral` int(11) NOT NULL,
  `brand_name` char(20) NOT NULL,
  `logourl` char(150) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `is_huodong` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_coupon_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` enum('1','2','3') NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  `coupon_attr` text NOT NULL,
  `card_id` char(45) NOT NULL,
  `cancel_code` char(15) NOT NULL,
  `company_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `whereid` int(11) NOT NULL DEFAULT '0',
  `iswhere` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_create`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `is_bind` tinyint(4) NOT NULL,
  `old_number` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `pigcms_member_card_create`
--

INSERT INTO `pigcms_member_card_create` (`id`, `cardid`, `token`, `number`, `wecha_id`, `is_bind`, `old_number`) VALUES
(1, 1, 'hbokpr1439956537', '1232', 'oysiouL9g5pAtr6QqwPLNeWrNLkQ', 0, ''),
(2, 1, 'hbokpr1439956537', '1233', '', 0, ''),
(3, 1, 'hbokpr1439956537', '1234', '', 0, ''),
(4, 1, 'hbokpr1439956537', '1235', '', 0, ''),
(5, 1, 'hbokpr1439956537', '1236', '', 0, ''),
(6, 1, 'hbokpr1439956537', '1237', '', 0, ''),
(7, 1, 'hbokpr1439956537', '1238', '', 0, ''),
(8, 1, 'hbokpr1439956537', '1239', '', 0, ''),
(9, 1, 'hbokpr1439956537', '12310', '', 0, ''),
(10, 1, 'hbokpr1439956537', '12311', '', 0, ''),
(11, 1, 'hbokpr1439956537', '12312', '', 0, ''),
(12, 1, 'hbokpr1439956537', '12313', '', 0, ''),
(13, 1, 'hbokpr1439956537', '12314', '', 0, ''),
(14, 1, 'hbokpr1439956537', '12315', '', 0, ''),
(15, 1, 'hbokpr1439956537', '12316', '', 0, ''),
(16, 1, 'hbokpr1439956537', '12317', '', 0, ''),
(17, 1, 'hbokpr1439956537', '12318', '', 0, ''),
(18, 1, 'hbokpr1439956537', '12319', '', 0, ''),
(19, 1, 'hbokpr1439956537', '12320', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_custom`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  `is_wechaname` tinyint(1) NOT NULL DEFAULT '1',
  `is_tel` tinyint(1) NOT NULL DEFAULT '1',
  `is_truename` tinyint(1) NOT NULL DEFAULT '0',
  `is_qq` tinyint(1) NOT NULL DEFAULT '0',
  `is_paypass` tinyint(1) NOT NULL DEFAULT '1',
  `is_portrait` tinyint(1) NOT NULL DEFAULT '1',
  `is_sex` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornyear` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornmonth` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornday` tinyint(1) NOT NULL DEFAULT '0',
  `carnumber` tinyint(4) NOT NULL,
  `is_carnumber` tinyint(1) NOT NULL,
  `address` tinyint(1) NOT NULL DEFAULT '0',
  `is_address` tinyint(1) NOT NULL DEFAULT '0',
  `origin` tinyint(1) NOT NULL DEFAULT '0',
  `is_origin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_member_card_custom`
--

INSERT INTO `pigcms_member_card_custom` (`id`, `token`, `wechaname`, `tel`, `truename`, `qq`, `paypass`, `portrait`, `sex`, `bornyear`, `bornmonth`, `bornday`, `is_wechaname`, `is_tel`, `is_truename`, `is_qq`, `is_paypass`, `is_portrait`, `is_sex`, `is_bornyear`, `is_bornmonth`, `is_bornday`, `carnumber`, `is_carnumber`, `address`, `is_address`, `origin`, `is_origin`) VALUES
(1, 'hbokpr1439956537', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_custom_field`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `field_option` varchar(500) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_czgif`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_czgif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) DEFAULT NULL,
  `cardid` int(11) DEFAULT NULL,
  `cz` decimal(9,2) DEFAULT NULL,
  `gift` varchar(60) DEFAULT NULL,
  `wecha_id` varchar(60) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL COMMENT '手机',
  `name` varchar(13) DEFAULT NULL COMMENT '姓名',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `is_info` tinyint(1) DEFAULT '0' COMMENT '是否兑换',
  `is_send` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0 充值 1 积分',
  `send_time` int(11) DEFAULT NULL,
  `cztime` int(11) DEFAULT NULL,
  `number` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_donate`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_donate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(45) NOT NULL,
  `cardid` int(11) NOT NULL,
  `min_price` decimal(10,2) NOT NULL,
  `max_price` decimal(10,2) NOT NULL,
  `donate_price` decimal(10,2) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `zsxz` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_exchange`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_focus`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_giftnotice`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_giftnotice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `wecha_id` varchar(60) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `cztime` int(11) DEFAULT NULL,
  `lqtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_gifts`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `item_value` int(11) NOT NULL,
  `item_attr` char(50) NOT NULL,
  `start` char(11) NOT NULL,
  `end` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `cardid` int(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_integral`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL,
  `people` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_jfdhhb`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_jfdhhb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cardid` int(11) NOT NULL DEFAULT '0',
  `integral` int(11) NOT NULL DEFAULT '0',
  `hongbao` int(11) NOT NULL DEFAULT '0',
  `display` int(2) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `send_name` varchar(200) NOT NULL,
  `wishing` varchar(200) NOT NULL,
  `act_name` varchar(200) NOT NULL,
  `remark` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `hongbao` (`hongbao`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_jfdhhb_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_jfdhhb_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `cardid` int(11) NOT NULL DEFAULT '0',
  `jid` int(11) NOT NULL DEFAULT '0',
  `integral` int(11) NOT NULL DEFAULT '0',
  `hongbao` int(11) NOT NULL DEFAULT '0',
  `wechaname` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wechaname` (`wechaname`),
  KEY `integral` (`integral`),
  KEY `hongbao` (`hongbao`),
  KEY `tel` (`tel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_notice`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_pay_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  `company_pwd` char(32) NOT NULL,
  `is_check` enum('0','1') NOT NULL,
  `donate_intro` text NOT NULL,
  `is_donate` tinyint(4) NOT NULL,
  `is_jflp` tinyint(1) DEFAULT '0',
  `is_czlp` tinyint(1) DEFAULT '0',
  `is_czfx` tinyint(1) DEFAULT '0',
  `jflp_set` text,
  `czlp_set` text,
  `czfx_set` text,
  `sub_give` tinyint(1) unsigned NOT NULL COMMENT '关注是赠送（0：不赠送，1：赠送）',
  `is_jfdhhb` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_member_card_set`
--

INSERT INTO `pigcms_member_card_set` (`id`, `token`, `cardname`, `miniscore`, `logo`, `bg`, `diybg`, `info`, `msg`, `numbercolor`, `vipnamecolor`, `Lastmsg`, `vip`, `qiandao`, `shopping`, `memberinfo`, `membermsg`, `contact`, `create_time`, `recharge`, `payrecord`, `company_pwd`, `is_check`, `donate_intro`, `is_donate`, `is_jflp`, `is_czlp`, `is_czfx`, `jflp_set`, `czlp_set`, `czfx_set`, `sub_give`, `is_jfdhhb`) VALUES
(1, 'hbokpr1439956537', 'JYCMS会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '', '微信会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '', '', '', '', '', '', '', 1439956729, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg', '', '0', '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_sign`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_use_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` varchar(50) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  `notes` varchar(300) NOT NULL,
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `orderid` char(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_vip`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_microsoft_withdraw`
--

CREATE TABLE IF NOT EXISTS `pigcms_microsoft_withdraw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pigcms_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `opening_bank` varchar(100) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_card` varchar(100) NOT NULL DEFAULT '' COMMENT '卡号',
  `bank_card_user` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名',
  `withdrawal_type` tinyint(1) NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '',
  `amount` float(6,2) NOT NULL,
  `complate_time` int(11) NOT NULL,
  `bank` char(30) NOT NULL,
  `tel` char(30) NOT NULL,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `store` varchar(100) NOT NULL DEFAULT '',
  `user` varchar(100) NOT NULL DEFAULT '',
  `token` char(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_micrstore`
--

CREATE TABLE IF NOT EXISTS `pigcms_micrstore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(50) DEFAULT NULL,
  `orderid` varchar(50) NOT NULL,
  `price` float unsigned NOT NULL,
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `trade_no` char(50) DEFAULT NULL,
  `paytype` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_micrstore_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_micrstore_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `token` varchar(100) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_micrstore_reply`
--

INSERT INTO `pigcms_micrstore_reply` (`id`, `keyword`, `description`, `title`, `img`, `token`, `sid`) VALUES
(1, '微店', '微店正式上线了', '微店', '', 'iztlsr1439949156', 20907),
(2, '微店', '微店正式上线了', '微店', '', 'uxtals1439962913', NULL),
(3, '微店', '微店正式上线了', '微店', '', 'cavegu1439957052', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_mobilesite`
--

CREATE TABLE IF NOT EXISTS `pigcms_mobilesite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `owndomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '自己站点域名',
  `admindomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '后台域名',
  `tjscript` text CHARACTER SET utf8 NOT NULL COMMENT '第三方js脚本字符创',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_OWNDOMAIN` (`owndomain`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_article`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_attachement`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_channel`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_channel_contentattribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_keywords`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_picture`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_site`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_template`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_msg`
--

CREATE TABLE IF NOT EXISTS `pigcms_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_nearby_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- 转存表中的数据 `pigcms_nearby_user`
--

INSERT INTO `pigcms_nearby_user` (`id`, `token`, `uid`, `keyword`, `time`) VALUES
(1, 'yicms', 'o8MTUjj_oIiraejMjUqapd8stDJA', '酒店', 1373771366),
(2, 'yicms', 'o8MTUjoDS4MeiFKlXgFPxgZIHeYk', '超市', 1374732097),
(3, 'yicms', 'o8MTUjiNgEFHMNz3-HSWU24EIZfQ', '美食', 1372401409),
(4, 'yicms', 'o8MTUjkqJTk7iBV1uLUq5rsqkPXM', '麻辣烫', 1371571540),
(5, 'weixin', 'oBT5_jvHBtmvut_YofWmEAYFDkLM', '医院', 1372255174),
(6, 'yicms', 'o8MTUjpJIOxMrHQ29ZKCjO-CbUPA', '网吧', 1372243125),
(7, 'zhijiantong', 'o_5bTjq5t-dUAR1vLUroJhbOxAzk', '美食', 1372243159),
(8, 'weixin', 'ot1B7joiYF7-hhGykOOWQpAHcg_o', '酒店', 1372303497),
(9, 'weixin', 'ot1B7jmPIWFYD-qxhpwQC8Cs214U', '咖啡厅', 1372303936),
(10, '123456789', 'oAIoEjwM8JQiF98ITetRf7Rcnhgg', '小姐', 1373873812),
(11, 'yicms', 'oLA6VjhV6nlF0aq3c0BpAvIRX3Uk', '中国银行', 1382417093),
(12, 'feng', 'oQN2Fji46R_vR6yLm39l1Y5aN8kE', '银行', 1374068732),
(13, 'yicms', 'oLA6VjsWFEqLyYSpd5IFL6oH6lC0', '工商银行', 1375237293),
(14, 'cch1988922', 'oe5zejvBHcmHyVrOyyNJk5I-lUBA', '酒店', 1374143324),
(15, 'yicms', 'oLA6VjkCryQTj_MOZ--97ll3BdzE', '德克', 1375616564),
(16, 'ssfwe4432424234324sfdsf', 'ohLn9jiVNHI8_kpnqEIm2fE67IhE', '周边查询信息', 1374414259),
(17, 'wlmqol', 'oWCOWjrfPnkm-NIQOW6HVRMAIY_o', '超市', 1374470955),
(18, 'weixin01', 'o2Bu0jhiPFutEH1D_x0mhpghtE8s', 'ktv', 1374477729),
(19, 'weixin01', 'o2Bu0jiFb5eNve0dmf_eA2WS7MlA', '美食', 1374483671),
(20, 'yicms', 'oLA6VjvAf-fZqo8sKQbpXab4vKtA', '商店', 1381210185),
(21, 'ailanyin', 'oXHOhjq0J9M9kavEg2Xnre9fx9RA', '酒店', 1374568534),
(22, 'ailanyin', 'oXHOhjq8yRiYXPRtL0k7kgliLEbs', '饭店', 1374566096),
(23, 'ailanyin', 'oXHOhjvW4kP7MpT6miklE6VzjBKU', 'Ktv', 1374569595),
(24, 'a6677000', 'oYICKjvpvz8WAAVZdxWbMSSI7r8Q', '酒店', 1374569588),
(25, 'yicms', 'oLA6Vjj52CkAvvK7Vp1yezzZdXt0', '美食', 1374580462),
(26, 'yushanlaoxian', 'ouoR3jj2nATtukW2Mh-bdsZv00X0', '饭店', 1374591364),
(27, 'haihui', 'oiOrNjrE0TyBbCcz9GBP-ciVN7ZM', '厕所', 1374654977),
(28, 'yicms', 'oLA6Vjs88qfeB508tz6fmx8ZHF2U', '温州', 1374654833),
(29, 'yicms', 'oLA6VjmVibFFiVvRXW5kReidlKjg', '宾馆', 1374656927),
(30, 'yicms', 'oLA6VjqfMIl44Tw7T2tgmHQGeN_M', '便利店', 1374729167),
(31, 'weixin1', 'oDMG0jvytqi8_1EBeaiwGFLg7bkY', '便利店', 1374738280),
(32, 'xiaoweike', 'o6BKjjr4q-DSNPlykhQUdw1hE1Hw', '按摩', 1375087554),
(33, 'yicms', 'oLA6Vjrop0FnLVWOtya0jcQpGGh8', '火锅', 1376621010),
(34, 'yicms', 'oLA6VjgKA3PbI95FI_jtnObM3fPk', '酒店', 1382150502),
(35, 'yichangweixin', 'ozSfKjk8DbFxldOcDmaR42S994jo', '酒店', 1375024755),
(36, 'yicms', 'oLA6Vjr-cPf3MCZfHGKXDnSmdv7g', '酒店', 1374820610),
(37, 'suiyinzi1234', 'oeZrJjsD2y_ysEsjg-GJEKZhjtgA', '便利店', 1374904370),
(38, 'yicms', 'oLA6VjgQIl3tYEpR-JUjDlMBVask', '饭店', 1375501280),
(39, 'yicms', 'oLA6Vjpydf7p0hWwN6brzu4G8mbU', '厕所', 1374939842),
(40, 'Distribution', 'o3GOLjgI25czTCv0wRwoIB60e7i4', '酒店', 1375267363),
(41, 'yicms', 'oLA6VjkZaABL3sv5w7QvLwtPQw3A', '岳麓加油站大道', 1374993958),
(42, 'lizhixiaogs', 'oPLF9jhwVC27ijL4o83p6DA9qXyc', '医院', 1375001780),
(43, 'yicms', 'oLA6Vjm26Pcf8TYRt2SdDbgAMy1M', '饭店', 1375001737),
(44, 'yicms', 'oLA6VjjRxmHB0xoeVFQh8oQ_Br-s', '美食', 1375061378),
(45, 'yicms', 'oLA6Vjv30ocznYR7GXQfSwFc0fkY', '美食', 1375068659),
(46, 'xiaoweike', 'o6BKjjnOY2QJlX9A3SmwTrI1dokE', '桑拿', 1375107788),
(47, 'yicms', 'oLA6Vji8vEjlsLu8yePaocM5VxZU', '加油站', 1375111696),
(48, 'weixin11222', 'okqPEjldF_8oivt-FQHacQ92139k', 'ktv', 1375115143),
(49, 'lizhixiaogs', 'oPLF9jkZ9pgAHtqfUhtWLi-jas-E', '酒吧', 1375141562),
(50, 'weixin11222', 'okqPEjowZYPhMntxZZ5kN6Pz_cHY', '医院', 1375845786),
(51, 'yicms', 'oLA6Vjl1wibCdSkzv9CzANlJQpZc', '酒店', 1375158029),
(52, 'yicms', 'oLA6Vjm2_NZZcY-W3IZLaHFN-dEY', '商铺', 1375278486),
(53, 'weixin1989', 'oLIEBjxPuMBG8vBBH9Zi0AEe7r3A', '餐厅', 1376471048),
(54, 'yicms', 'oLA6VjnxrBgbSIFrFXljLZDF2YVc', '美食', 1375285095),
(55, 'weixin1989', 'oLIEBj0sPCgbpp6PdCO_S9hn6B5I', '餐馆', 1377758180),
(56, 'yicms', 'oLA6Vjs2ECF-5nQjLm0DPLnArxec', '好吃饭店什么', 1375262512),
(57, 'ynceyi', 'olkx-jpGy8VSAnvSIv6mDQ6NDk4I', '麦当劳周边查询信息', 1375263955),
(58, 'yicms', 'oLA6VjpZ_1wmQPPwF5HjkBpy8df8', '餐饮', 1375341690),
(59, 'Distribution', 'o3GOLjvbcyu5wLhfIkebHz5OpDWU', '吃饭', 1375360811),
(60, 'yicms', 'oLA6VjgMG0OSLTiCXCKnMEBKx8Js', '便利店', 1375414806),
(61, 'yicms', 'oLA6Vjp79RKgyRWBTysa-k1oK070', '酒店', 1375419217),
(62, 'yicms', 'oLA6Vji-nuGsEhPWqoA7Q54aRyyg', '便利店', 1375436146),
(63, 'yicms', 'oLA6Vjiljo_NbEGpJ6OMY7PmskMc', '超市', 1383282624),
(64, 'yicms', 'oLA6Vjr3q55EfTuM2RH5lcirRRP0', '酒店', 1375591695),
(65, '1730892509', 'oQMvfjsK2kbb2_PvyL7xulPbXeS8', '餐饮', 1376008435),
(66, 'yicms', 'oLA6VjjFU-3iuAOXkiFbx-sGqyUk', '厕所', 1376199805),
(67, 'lizhixiaogs', 'oPLF9jm4y9HQFwQ-CMk2paxGlR_s', '饭店', 1375771129),
(68, 'yicms', 'oLA6Vjg-yNnO1c3B9vGhi5BmB9MQ', '酒店', 1375845244),
(69, 'yicms', 'oLA6VjlOyOpvFJwG32xjpISwKP5s', '餐馆', 1375871576),
(70, 'meinvshishanghui', 'o9QD0jlvfNn5RkhI-xJaJ_juqTXo', '团购', 1376192194),
(71, 'yicms', 'oLA6Vjl2T8FMv0kAzXDKDu5Py99E', '酒店', 1375938584),
(72, 'yicms', 'oLA6VjrRT5pH5Sxcftf0JINF9Ikc', '酒店', 1375953590),
(73, '1730892509', 'oQMvfjtxHqs0PzSimbywySqZCwPw', '网吧', 1376110482),
(74, 'yicms', 'oLA6VjpLrkrrBq5wNhyJ_pmpQc0w', '便利店', 1376112564),
(75, '1730892509', 'oQMvfjmp_MnDz3Laig7p_zpdWLFs', '餐饮', 1376008957),
(76, '1730892509', 'oQMvfjgdmhbPRWrzRZd4NCS_X7uY', '公交', 1376126941),
(77, '1730892509', 'oQMvfjv-Yu5P5KE8cq4158Q-SHrg', '酒店', 1376131273),
(78, '1730892509', 'oQMvfjk-mxHmpR8drPDGLURVjMew', '餐饮', 1376132632),
(79, 'yicms', 'oLA6VjoV3NQVu9jjU01_QQIIlssQ', '电影院', 1376139739),
(80, '1730892509', 'oQMvfjvw0E_Cvh15wP7CH-RrdUfc', '餐饮', 1376150098),
(81, 'testtokennn', 'o0vHRjjRkaVNtHLAZTCHHRPdn8Ww', '餐厅', 1376150812),
(82, '1730892509', 'oQMvfjtQIlvI7ZH85ItZBhgnI_uI', '餐厅', 1376179324),
(83, 'yicms', 'oLA6VjkMMcaOvQ90Y5_itDVMVv1o', '酒店', 1376191574),
(84, 'yicms', 'oLA6Vjstwif4BlXAK5MQ2Y1QoVQw', '清真', 1381843729),
(85, 'cmzhl', 'o0EOjjgpz7Ji6N0LWDKM6NLAAKsc', '饭店', 1376230870),
(86, 'mthxjy', 'opw21jvluv8jygkPzPQnAZME1Xzs', '美食', 1377765937),
(87, 'vcolorcn', 'o7KOIjogybB_ESUkf_tMo0OsYnWc', '董酒', 1376538082),
(102, 'tuijinli', 'oWKL6jop4_-zF4Vm2Fb6mvzu0SB0', '加油站', 1376588524),
(88, 'mthxjy', 'opw21jodail8a0N-_5oXREeM8_7E', '仁怀', 1376211020),
(89, 'yicms', 'oLA6VjvhDiVVc6WBzqKJdWhEQoYM', '酒店', 1377239812),
(90, 'yicms', 'oLA6VjgMHuGPGFE7UdhcJHyYKtMA', '周边查询信息', 1376239399),
(91, 'lizhixiaogs', 'oPLF9jv_z-MWkJFkotpnGo4Eo5Dk', '芜湖县饭店', 1376258265),
(92, 'vcolorcn', 'o7KOIjgL5k5v5zSbRtaVg1uTD0rk', '茅台酒', 1376453850),
(93, 'meinvshishanghui', 'o9QD0jsqtDuuUxb-WiQlme4Ok_GM', '餐厅', 1376288701),
(94, 'vcolorcn', 'o7KOIji4-hCKQsRajpL-PAB4XIuU', '董酒', 1376293683),
(101, 'yicms', 'oLA6VjmuLdByPK56A3jrYO42A_V4', '便利店', 1376488024),
(95, 'yicms', 'oLA6VjjXqmwiNeJtEH7l1r-kwo54', '餐饮', 1376358302),
(96, 'mengweixin', 'oItOOjh5-HW0-RpLl86-krciBzP8', '便利店', 1376359677),
(97, 'qiang', 'oqmaojt-Jd1UFl-HaB0Qx1ilC9cU', '美食', 1376365300),
(98, 'zj2101', 'orFXSjoU_S7aVxA0w3dd32jk8wMQ', '周边查询信息LBS', 1376371899),
(99, 'yicms', 'oLA6VjhuctuJYYtfBxnyzIUZQQh8', '便利店', 1376387455),
(100, 'vcolorcn', 'o7KOIjp5ilgddPwTHgH6Q-fedb1s', '董酒', 1376448995),
(103, 'vcolorcn', 'o7KOIjoqU8TpTPUQMCMd4tgDCgpo', '周边查询信息lbs', 1376789316),
(104, 'flycomos666', 'o_LwGj84Eko_bLZeoLP2GoTL3W48', '加油站', 1376874242),
(105, 'yicms', 'oLA6VjomDlGrSZfIMdHOWxKNvktA', '酒店', 1379740555),
(106, 'xinqiyuannet', 'opIOyjuzaVoGVHUBEnURNeMstYcE', '加油站', 1376915859),
(107, 'kpxiaopin', 'oifXKjk5b1jsErxG5dJzL-MCiapE', '酒店', 1378015015),
(108, 'yicms', 'oLA6VjiRJtbznNYy_MECK4L279OQ', '厕所', 1377070959),
(109, 'xysheyx', 'oMKCpjowEL1R9oHh5ylnBgazWSsg', '酒店', 1377184858),
(110, 'yicms', 'oLA6VjjmIZAb4KOOaVFw1abcjs2k', '饭店', 1380335963),
(111, 'yicms', 'oLA6Vjk_YlKdZ-bzfNifqZ3eS7sE', '酒店', 1383405244),
(112, 'yicms', 'oLA6VjkCvQs-JZqW691DHnt1pggY', '酒店', 1377731611),
(114, 'yicms', 'oLA6Vjn26avwgi_seq8zE_r1YLmo', '酒店', 1377911410),
(113, 'weixin1989', 'oLIEBjziqeJCUrKmv331SIfhQcTE', '便利店', 1377747413),
(115, 'yicms', 'oLA6VjpVUT00VJ2D_Zv_ErZgYY7Q', '饭店', 1377931069),
(116, 'yicms', 'oLA6Vjj_YEzV750wa-63CrZcGRsU', '旅店', 1378061448),
(117, 'yicms', 'oLA6VjgKMG5I4snBoDry00BJgznw', '餐厅', 1378976897),
(118, 'yicms', 'oLA6VjrKAXO7ILalakLqBDnlVP3A', '停车场', 1378059331),
(119, 'RoyIsTheBest', 'oERN1jlbhlexA9EwIzN6SSwmB2Wc', '周边查询信息', 1378087126),
(120, 'aksxycm', 'opwWXjiLgti3GKE7uBIz4THMZFXc', '酒店', 1378454663),
(121, 'aksxycm', 'opwWXjnoyVC67m_CxnH5IeukZGuY', '修车', 1378233955),
(122, 'aksxycm', 'opwWXjtrKUo8Fe19MB8IAf907EUM', '酒店', 1378198453),
(123, 'yicms', 'oLA6VjqgtPn5HIL-itOHKEbPsuDw', '酒店', 1378276853),
(124, 'lvyoukx2', 'orIzmjuP0jJgtJ_cHd61mFOESogo', '周边查询信息', 1378302506),
(125, 'yicms', 'oLA6VjuTEDCsBZFUZgMgfFcpmFC4', '酒店', 1385827183),
(126, '13611081', 'oitS2jvVmzbzulV7sWNgMVu_m8iE', '长沙美食', 1378368044),
(127, 'galaxyinfo', 'omI7bjoliy-FwzWNSCaCIOeLncAY', '网络公司', 1378793236),
(128, 'yicms', 'oLA6VjhhrBWdB2yiCjt8H0XfZ8E8', '医院', 1378474289),
(129, 'yicms', 'oLA6VjpNaUsjza97yEqwPHqiqux0', '美食', 1378489434),
(130, 'yicms', 'oLA6VjpFalRHJ48TEdk6b_cLiFPI', '商店', 1378732414),
(131, 'yicms', 'oLA6VjgKkr6LpY6GigBIpXt-s_gs', '酒店', 1378806378),
(132, 'galaxyinfo', 'omI7bjgBTz8YyMat4aJgT1Qm6Ohw', '网络公司', 1378878943),
(133, 'weixiaoshuowx', 'ofAq9jpcly_Gi3JUl3LfirXTJt98', '周边查询信息lbs', 1378882902),
(134, 'yicms', 'oLA6VjgQ_h3s9eZQx3zZpFkjcPcc', '超市', 1378882781),
(135, 'kaipad', 'oiFEJj7FvfSjXpgEWb-_LF-o1BmM', '酒店', 1379323089),
(136, 'yicms', 'oLA6Vjkk_ldfJ4aqP-3a1sz2sRco', '商家', 1379004672),
(137, 'i30ymt', 'olT2ejipmqk7A3-3B8bkcIBXA1wA', '网吧', 1379006043),
(138, 'muzieee', 'oMLayjogefmPP2LgKAkpRfHrmPgY', '餐厅', 1379051339),
(139, 'yicms', 'oLA6Vjgup2kFkbFpgVq9Zi4RGQVg', '美食', 1379056823),
(140, '05318899', 'oAeiDjs-MdNZdLM5YBtuhA6o-hRU', '银行', 1379300513),
(141, 'lvyoukx2', 'orIzmjj_9l5ejfrJ_SO1oCBBVsYU', '周边查询信息', 1379125625),
(142, 'weiwangidc', 'o-hAKj0RfAoPOI3XxkwmrrTaM56w', '好吃什么', 1379229850),
(143, 'iwendeng', 'ocKJ8juoEr5ZLlDOl-d0-xJiA_SU', '文登师范饭店什么', 1379237906),
(144, 'qiandu', 'oR5nPjpWWbczCLcGCh_R38XivLr0', '周边查询信息lbs', 1379393726),
(145, 'lixiangnan', 'oYmGxjs4gHD4GYJ3Cqj76k4dEZfE', '餐厅', 1379557739),
(146, 'yicms', 'oLA6VjlHpnWSNuak_YchHaCUCMwg', '浴场', 1386565144),
(147, 'yicms', 'oLA6Vjna55CQNN0Xsxb8REgkLU4U', '饭店', 1379586122),
(193, 'aqrxot1381991877', 'oNIy1jnxTO0BkMsMy2AXqJOI_upY', '酒店', 1382003469),
(148, 'yicms', 'oLA6VjpY4bMq07J1mzSpmE0GBFCc', '美食', 1379691204),
(149, 'wayboo2013', 'oRF6Mjs4Xh1jpqJjDclub-9GjtcE', '美食', 1379989434),
(150, 'nscn', 'ocPLdjgEmYLdc3MPd7FvEQQhrJng', '饭店', 1379841933),
(151, 'weidonglizazhi', 'o4vbNjjch0YmK-q41Pm3Krre2JLo', '美食', 1379906854),
(152, '1512268465', 'oHPinjjJweXSJP1U5wXtM2KwmvJM', '披萨', 1380463362),
(153, 'dc_xzs', 'o7EvSt9GblJ_8prHZCF11rrSUwJQ', '美食', 1379925530),
(154, 'yicms', 'oLA6Vjp4sLSAuQLjhlvOQh_Js220', '厕所', 1380681047),
(155, 'weixin1', 'oDMG0juvBOBqbecEQs0qaLq8N6ho', '学校', 1380010342),
(156, 'yicms', 'oLA6VjtrSG0x6vJUyLpqaRutA5EY', '厕所', 1380010892),
(157, 'iwendeng', 'ocKJ8jg6zltbHSbYK7MZAJvDvOQU', '吃饭', 1380011172),
(158, 'sqhuifu', 'oUwp4jhyqFSR6IlttlVezox3fim8', '公厕', 1380084077),
(159, 'yzhwowo', 'o4Liljnce_tFuq18VIY0W-dcBzLw', '酒店', 1380063519),
(160, 'hqdogo123', 'ouCjijk3RjiFTjroC62SbtUCRQgY', '美食', 1380099587),
(161, 'Line_168', 'oqxV-jj4Bdb3fWP0XuJAw70uMHR0', '地图', 1386389093),
(162, 'yicms', 'oLA6VjqQ32a3yDHQt49fTa20Q6no', '饭店', 1380109228),
(163, 'shukewang21', 'oXJahjtkj2dghsAIeS2GE3xQTCno', '宾馆', 1380115541),
(164, 'shukewang21', 'oXJahjv2qKBugadP7zbVMzZ1yU38', '宾馆', 1380117204),
(165, 'yicms', 'oLA6VjmSlQXq34nSpxcvKSmPLD14', '座上客', 1380284197),
(166, 'yucivip', 'o39Z5jjqGO26GH-B768l98tDr1lg', '酒店', 1380254168),
(167, 'weixintoke', 'o0UbZjqC6RwCZwVuV1JFk8uE2Cu0', '饭店', 1380336962),
(168, 'yicms', 'oLA6Vjtm70E_LztmIkuIZR9tPyJU', '便利店', 1380339971),
(169, 'wzhaopin', 'osSCHjjEbXKSO_uYSZlQpCuydcnc', '厕所', 1380358216),
(170, 'house5', 'oP7KPjhk_zv4d_Ds0hzNaq7jpcK4', '楼盘', 1380421706),
(171, 'lixiangnan', 'oYmGxjuE8Ib-9qXxXnspSsyRSYwU', '酒店', 1380973242),
(172, 'yicms', 'oLA6VjhGC0a2mYEspL3T9LsDjehA', '300', 1382003563),
(173, 'yicms', 'oLA6VjvnjD3PoebdKNQ3IcRdkZr8', '酒店', 1381655796),
(174, 'yicms', 'oLA6VjonG3KbfUJfBk1bEzkgkJ2w', '便利店', 1380532788),
(175, 'yicms', 'oLA6VjmuLf9xzxeAbxYx9rZ2b10Y', '美食', 1380533257),
(176, 'yicms', 'oLA6VjusIyzNe_rNJhzFzH6hMl0w', '酒店', 1383124792),
(177, 'yicms', 'oLA6VjgjJMjP_ho0gq3GcdBkygfk', '大厦', 1381045216),
(178, 'weixinxchsh0575', 'oNbK0jrluhKkLHWbpF8qzz0faEWw', '牛排', 1381218215),
(179, 'yicms', 'oLA6Vjq5nrZnz6g32G8L0iGF5qB4', '小吃', 1383117043),
(180, 'yepu521', 'owL-HjsfSX6Q6e1aordVY-gSfJrM', '问问名字1069', 1381309555),
(181, 'yepu521', 'owL-HjkdK0sftAcE2jmkDVcEdNNs', '工大酒吧', 1381466497),
(182, 'yicms', 'oLA6Vjlc5A_lc5FiY9WS_rV25LmY', '便利店', 1381487234),
(183, 'vzmrov1381475376', 'oLOjMjoa1MiN4lLKta3rSacSh_w8', '酒店', 1381495956),
(184, 'vzmrov1381475376', 'oLOjMjkXjkqfe8Q6YFi3JS_nqVDc', '餐厅', 1381543493),
(185, 'fgmweixin', 'o8Z2xjuS8Gcg9C20ROXJ4AAHqWgc', '酒店', 1381567068),
(186, 'ywbici1381569054', 'oVIfgjlYbo8n8fPsTwf0n6ivOQSg', '酒店', 1381636244),
(187, 'yvieyy1381566226', 'obzpJt5R4TN5x5dI4-Mh8OPkudDw', '周边查询信息', 1381767093),
(188, 'klvwlk1381716983', 'o7mdruG3YXIjyLJ96BMdwysTCxDE', '酒店', 1381794895),
(189, 'edirui1381827084', 'oNqUHjxRjILJVhYNJLqlZLAkZxoE', '美食', 1381835220),
(190, 'zjtspk1381829376', 'obk8uuKU09cM3so8FnfRUVdt59Gk', '饭店', 1381829653),
(191, 'yicms', 'oLA6VjvyFa2xUqLWS4DB7J4pXctU', '银行', 1381830604),
(192, 'yicms', 'oLA6VjlbyFhVAeMyxDOkdYFhPhto', '宾馆', 1381855716),
(194, 'pdyonq1382086429', 'oOLCvjmKbv0nwtxOiutWE28feQo8', '酒店纪路838', 1382091098),
(195, 'begxlh1382078530', 'odWafji9S8d-_BFSMJsi7t3EM9XI', '加油站', 1382172181),
(196, 'yicms', 'oLA6Vjpp9e2ko8Kq-pIBEWq7YhEk', '酒店', 1382171455),
(197, 'begxlh1382078530', 'odWafjlGke-tGogJdKnOMAbLJRTY', '药店', 1382172220),
(198, 'begxlh1382078530', 'odWafjvlKZjLx38tj7kkIgEYS4OI', '加油站', 1382238922),
(199, 'yicms', 'oLA6VjtJNNJjHnq3i-FgHhj3HF2M', '美食', 1382254369),
(200, 'isijoi1382324503', 'o69zwt5kk1D8jQR5jKhsA50sFO-Y', '酒店', 1382325181),
(201, 'psdojr1382321726', 'oXNfVjoM7t5hTCZ3JJRYUPdrNM9c', '酒店', 1382339014),
(202, 'yicms', 'oLA6VjmDWlR4Xy_AXvSHe2EVFeuM', '酒店', 1382350023),
(203, 'yicms', 'oLA6VjuphdtCeZkjZvFnPvgxVIew', '小吃', 1382369755),
(204, 'Jd2QOQd6cTqo0qtjJq0OIHz1hwtb6T', 'ogZR5jjSXa52w4mdNZfKNEtSF5w0', '美食', 1382379910),
(205, 'dmqodt1382418952', 'oQyuujtnOxJZ7Gi03z0eH68rBoHE', '酒店', 1382497202),
(206, 'oorlls1382401668', 'oRcQIjxi-3J9HKAPrks3ggGUjcBc', '玫瑰园', 1383210857),
(207, 'rrzmjf1382595831', 'omDN3jvnQowA89YLcLXekFFYChTY', '常熟好吃什么', 1382603286),
(208, 'neftab1382579817', 'oNEeVtz5ImvmIecLJv8kclQE2SlI', '酒店', 1382608395),
(209, 'lubrxy1382614273', 'oeRult4UxL73mzd7AGjy-2AAU7SU', '公司', 1382614657),
(210, 'yicms', 'oLA6VjgX3koK0ekPtG8N4Mcc7EsU', '酒店', 1382717938),
(211, 'jmgmoi1382781517', 'oLd49uKUXWFZGccxoKlywtPrBRRU', '美食', 1382783633),
(212, 'yicms', 'oCsUfuCs0mwS1jBjUz1OpkvdSt30', '交通银行', 1383620612),
(213, 'dmnkxw1382332427', 'oIdCktwaLV6KMCPm0O4BGUSNQlNU', '网吧', 1383012904),
(214, 'hrkqkb1383015325', 'o_1_DtwnWMeqLA0Th14XLZCSwXCw', '酒店', 1383029649),
(215, 'yicms', 'oLA6VjkSka1U39TYJ5OLinf5Aee0', '你们实现功能美食怎么', 1383117542),
(216, 'yicms', 'oLA6Vjtjl6QCF4LnUnsRjZSf1fbI', '美食', 1383029045),
(217, 'yicms', 'oLA6VjlxSQUGdwIL1FzSjS86VIxU', '小吃', 1383069669),
(218, 'jwtgxv1383099851', 'oDemGt-sViOdIX6fGWec4SQB_rqQ', '电影院', 1383121723),
(219, 'xbiis', 'oQM6jjvMCTrrLPuKeKoE5z8eMx3A', '美食', 1383178748),
(220, 'yicms', 'oCsUfuK2cF2DAG5zW3Ttq2E-5Rd0', '餐厅', 1383190471),
(221, 'zcwlni1383133344', 'oec62jnj_OtSUqKrRDGZNfm5e0Bk', '酒店', 1383207222),
(222, 'medyoi1383200196', 'oGyZ4tzmt8v4UIDDf6p0Sjsohk20', '餐馆', 1383208500),
(223, 'yicms', 'oLA6VjtHM49JiaZ5dyAtOUdSduqs', 'KTV', 1383209670),
(224, 'oorlls1382401668', 'oRcQIj4KTaoJFvKfn1-jF6OFFmAs', '玫瑰园', 1383284853),
(225, 'yicms', 'oLA6Vjo4jEHdjIc3huQrtkywyylc', '餐饮', 1383218607),
(226, 'yxchjj1383278231', 'o-S-WtwNpEyUcTGCrs-Y9yt0kwOE', '高跟鞋', 1383280863),
(227, 'yicms', 'oLA6Vjthzlbb5FQEKyPoTcB7eaSI', '美食', 1383969778),
(228, 'yicms', 'oCsUfuA3TFw3fOoBbPE-DFDdR_YI', '美食', 1383405181),
(229, 'yicms', 'oLA6VjuW7N9NORcJ6b3v0leQi35w', '酒店2000', 1383654042),
(230, 'zstont1383273728', 'oIJk6t6JJVVn1Pjwh9rxpD63Thpc', '加油站', 1383558432),
(231, 'yicms', 'oLA6VjssvowymTbEbkK5kXrF01X0', '餐厅', 1384017239),
(232, 'yicms', 'oLA6VjsgcNzv6mL09O5lQmq3eHek', '酒店', 1383618400),
(233, 'uduhzr1383613588', 'oY4mbjuUasoZ_2ReU1imXdIOAemI', '酒店', 1383659499),
(234, 'xfjsph1383723426', 'oKSnZjnkMBC_akuzCEf-oc3oiPkg', '酒店', 1383724704),
(235, 'xinptv1383704205', 'oQY_ijjcnXs6MprvS8NNiyR_YYv4', '酒店', 1383745610),
(236, 'oorlls1382401668', 'oRcQIj_TYzPOup5IxLKDkzElz7mc', '公交车', 1383786478),
(237, 'pwafzv1383795413', 'oIBCWjsbjxcUA9m61UoFD6azqDQ0', '酒店', 1383799090),
(238, 'yicms', 'oLA6VjrQ5md661KgMOkBcWsiPfy8', '酒店', 1384016653),
(239, 'yicms', 'oCsUfuIsHIWmolbH1iytg6gJnNFo', '商店', 1385365078),
(240, 'yicms', 'oLA6VjkMksOlDx8A6v03Mc8uk74Q', '超市', 1384173092),
(241, 'kasdqn1383895237', 'ozQhOuOonFrOVn2IsM9UMfzUcr58', '酒店', 1384220030),
(242, 'nhjglv1384218944', 'oCMqHtzEA5St_42wfBxN_vis5m40', '餐馆', 1384246163),
(243, 'yicms', 'oCsUfuPiOWaFNdRs0RkBihRQbUbQ', '美食', 1384516922),
(244, 'zmikye1384319527', 'okCDAjlZ2PMJItsu2Jr3Svp5XpNQ', '餐厅', 1384435799),
(245, 'oafmoi1384421139', 'oOaC0t_26QZ9MFFCq01ziLZkNjPI', '学校', 1384689422),
(246, 'yicms', 'oLA6VjigEKmt-gPECNM59Ey7MNmU', '医院', 1384481902),
(247, 'zekdpc1384481569', 'oYAXBjheKJfZ-hZJriYlv7UbSFpE', '餐馆', 1384483848),
(248, 'hoyzcl1384529758', 'oU--xjhPv8oO6wUrSKePL2qlhgms', '酒店', 1384530347),
(249, 'wlabxc1384416090', 'oguzqjl47_jtoPimo6-2JoXV6oMY', '汽车改装', 1384574778),
(250, 'zekdpc1384481569', 'oYAXBjtXd007N0dMeI2nrRIUixyA', '大学', 1384575403),
(251, 'yicms', 'oLA6VjrdSq13bQwX_SqrQ70i3pNU', '旅馆', 1384686835),
(252, 'ofvdee1384753375', 'oIs4Bj9aGwf-lCo0nNEFAZIvAvZg', '美容院', 1384757651),
(253, 'yicms', 'oLA6VjpAtIuKDsQY2QZN2y8ppbFc', '酒店', 1386566544),
(254, 'khlxsi1384829822', 'om0PTtz5-1kUAeMZ6pquZES1k7Dw', '酒店', 1384849441),
(255, 'xwbdzz1384247488', 'osYVKtwDezvFIdjq9zlXWgyPoYS8', '北京酒店', 1384857522),
(256, 'yicms', 'oCsUfuJH6gnc3k7jnLdD734YdMEE', '便利店', 1384882764),
(257, 'yicms', 'oLA6Vjv41tOYAwsQ1QqAB8Dq-ifk', '美食', 1384912527),
(258, 'xwbdzz1384247488', 'osYVKt7SZJ66_Zc0Cp10KCbJvKw0', '医院', 1384914409),
(259, 'yicms', 'oCsUfuC0mqT4VM6JjbggaLvzGEXI', '酒店', 1385650427),
(260, 'xwbdzz1384247488', 'osYVKtwTLKdNMprsct0q4SAqJsoY', '酒店', 1384915381),
(261, 'sumkoh1384765764', 'oAjT-jsz8R0VIjSQ01VU7ezMmS9Q', '酒店', 1385027337),
(262, 'yicms', 'oLA6Vjg0OD2UEozyFb7k4ANh3O7A', '美食', 1384959223),
(263, 'sumkoh1384765764', 'oAjT-jlWdfRft2Crzm0gI2JNiE6U', '酒店', 1385003536),
(264, 'pygvqn1384998752', 'o9huLjgq6kLfpjZTkR7NB4IvtEiU', '酒店', 1385003761),
(265, 'yicms', 'oCsUfuM5ZDJox3u6e3BO8-V1Hg2Y', '便利店', 1385023299),
(266, 'yicms', 'oCsUfuILpn-kFY066UvSZTeEWzLA', '便利店', 1385025327),
(267, 'zekdpc1384481569', 'oYAXBjqDTctoUHewngitnDwrExHo', '加油站', 1385049264),
(268, 'kasigz1383709700', 'o8MTUjk1KZ1w1In2kPpFnSmYIxFc', '写字楼', 1385090651),
(269, 'yicms', 'oLA6Vjod-qR_XeLnygUcQTV8MYpM', '酒吧', 1385120775),
(270, 'yicms', 'oLA6VjlNLCRGVennKYFzfIa-_Qtc', '超市', 1385224478),
(271, 'ezdmqo1385347093', 'osZpntzCoSxSGpTs56Zc-w5CqVE4', '订餐', 1385347697),
(272, 'yicms', 'oCsUfuCNm-jx-pzKZH1x0SenyMUs', '按摩院', 1385365248),
(273, 'yicms', 'oCsUfuJEHm2CnIyuLhP82NBTUN9M', '周边查询信息', 1386422686),
(274, 'yicms', 'oLA6Vju5vV23DT9pUHaz2oFes1C8', '餐厅', 1385663900),
(275, 'cqaeqf1385791988', 'oaHICuOE5i4jPGZPX9Gwd9jq4O34', '公厕', 1385793284),
(276, 'yicms', 'oLA6Vjl-L_EBqffZM9_wgZJKs0HQ', '门店', 1385794351),
(277, 'yicms', 'oCsUfuHEHZrlBq5OWk9mn0p5ZVIg', 'ktv', 1385821929),
(278, 'yicms', 'oLA6Vjpbwx2gwB2P0b9YWnROXb2k', '便利店', 1385889172),
(279, 'jwtgxv1383099851', 'oDemGt3h7kVYJoCHR5Lmfk-00eIY', '酒店', 1385956372),
(280, 'yicms', 'oLA6VjtxCZH3ecvEzYsPfoYNDbSM', '超市', 1385969406),
(281, 'mtdvcw1385979783', 'oeicFj76Iwb3p-1YQDxSczjcEvLE', '酒店', 1385986423),
(282, 'yicms', 'oLA6Vjvwt0hyrYF0lwt3zPD9ZFvY', '电影院', 1386119501),
(283, 'bbpdvf1386040227', 'oONAguL2jTykSDG7tID1ihfzEE10', '银行', 1386578659),
(284, 'yicms', 'oCsUfuA2YpF0sCjU4Ciizt0fZtfI', '公司', 1386062990),
(285, 'cqicxo1386059661', 'ok7upjjOo3saVFga3-87fJOcXOGQ', '超市', 1386133979),
(286, 'yicms', 'oLA6VjmaVVseA5dWkspeduxcZoRo', '超市', 1386090559),
(287, 'cqicxo1386059661', 'ok7upjhZznaEJiDHtxgJuO99qpJY', '超市', 1386119864),
(288, 'yicms', 'oLA6VjqNGniezHWc9YvRnRr-Vo4o', '酒吧', 1386121073),
(289, 'yicms', 'oCsUfuKkSKk8WMyBNkP_I0hnAw0c', '美食', 1386144595),
(290, 'yicms', 'oLA6VjjF2yV1dFMMR9QCPdd68lBI', '医院', 1386150448),
(291, 'vfscnr1386223388', 'ogCnxjuD0mWQRb_zfOIaOJklju30', '美食', 1386226641),
(292, 'sjbwpj1384332813', 'o1UubjqP-RNk46NAKL3C74whIWDI', '企业', 1386232105),
(293, 'kasigz1383709700', 'o8MTUjvb0xEJKg0dzyuvJf7WibKk', '美食', 1386253652),
(294, 'yicms', 'oLA6VjvjJ4H3EZxikvUeymTtRCCU', '周边信息', 1386257742),
(295, 'yicms', 'oCsUfuAZRMFtAPKYNDMde3hVZ4HA', '便利店', 1386312781),
(296, 'yicms', 'oLA6VjhSfmSbh1ZZWJa_3OgG8g6w', '便利店', 1386381289),
(297, 'yicms', 'oLA6Vjm_xRCUlJo1mBsEnhJ9O0Gc', '酒店', 1386383095),
(298, 'yicms', 'oLA6VjtRfh2ciW76OJWLdFM9ydpE', '地图', 1386391803),
(299, 'yicms', 'oCsUfuJmyBmnWVmInnTSpVKFmejs', '医院', 1386430860),
(300, 'kasigz1383709700', 'o8MTUjtbXao4XudiR9IQyd2n61TY', '餐厅', 1386520895),
(301, 'yicms', 'oLA6VjikF2AO8lbM9AflQuYOzm0U', '招聘', 1386526616),
(302, 'odzryk1386557784', 'oD7wNt9B4HuVOKbUgmWH9Z8Xj5ig', '公交', 1386566779),
(303, 'kasigz1383709700', 'o8MTUjnMpz9SLmqiz5ShnLhrm4jg', '酒店', 1386566592),
(304, 'dwkcdf1386559560', 'ouAf2jh7tDanjyvlFBAY7U8lkbZw', '酒店', 1386580109),
(305, 'odzryk1386557784', 'oD7wNt_iWm0zHqI835DZKgYVrXoo', '饭店', 1386582524);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_news`
--

CREATE TABLE IF NOT EXISTS `pigcms_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxname` varchar(200) NOT NULL,
  `token` char(150) NOT NULL,
  `class1` int(11) NOT NULL,
  `class2` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_node`
--

CREATE TABLE IF NOT EXISTS `pigcms_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- 转存表中的数据 `pigcms_node`
--

INSERT INTO `pigcms_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(125, 'upsave', '更新数据库', 1, '0', 88, 3, '', 0, 0),
(124, 'del', '删除功能', 1, '0', 88, 3, '', 0, 0),
(123, 'upsave', '更新数据库', 1, '0', 117, 3, '', 0, 0),
(122, 'insert', '写入数据库', 1, '0', 117, 3, '', 0, 0),
(121, 'edit', '编辑横幅', 1, '0', 117, 3, '', 0, 0),
(120, 'add', '添加横幅', 1, '0', 117, 3, '', 0, 0),
(119, 'index', '图片列表', 1, '0', 117, 3, '', 0, 2),
(118, 'insert', '写入数据库', 1, '0', 111, 3, '', 0, 0),
(117, 'Images', '横幅图片', 1, '0', 4, 2, '', 0, 2),
(116, 'add', '添加新闻', 1, '0', 111, 3, '', 0, 0),
(115, 'upsave', '更新数据库', 1, '0', 111, 3, '', 0, 0),
(114, 'del', '删除新闻', 1, '0', 111, 3, '', 0, 0),
(113, 'edit', '编辑新闻', 1, '0', 111, 3, '', 0, 0),
(112, 'index', '新闻列表', 1, '0', 111, 3, '', 0, 2),
(111, 'News', '新闻管理', 1, '0', 4, 2, '', 0, 2),
(110, 'upsave', '更新数据库', 1, '0', 104, 3, '', 0, 0),
(109, 'insert', '写入数据库', 1, '0', 104, 3, '', 0, 0),
(108, 'del', '删除更新', 1, '0', 104, 3, '', 0, 0),
(107, 'edit', '编辑更新', 1, '0', 104, 3, '', 0, 0),
(106, 'add', '添加功能', 1, '0', 104, 3, '', 0, 2),
(105, 'index', '功能列表', 1, '0', 104, 3, '', 0, 2),
(104, 'Renew', '功能更新进程', 1, '0', 4, 2, '', 0, 2),
(103, 'del', '删除幻灯片', 1, '0', 97, 3, '', 0, 0),
(102, 'upsave', '更新数据库', 1, '0', 97, 3, '', 0, 0),
(101, 'insert', '插入数据库', 1, '0', 97, 3, '', 0, 0),
(100, 'edit', '编辑幻灯片', 1, '0', 97, 3, '', 0, 0),
(99, 'add', '添加幻灯片', 1, '0', 97, 3, '', 0, 2),
(98, 'index', '幻灯片列表', 1, '0', 97, 3, '', 0, 2),
(97, 'Banners', '首页幻灯片', 1, '0', 4, 2, '', 0, 2),
(96, 'add', '添加', 1, '0', 88, 3, NULL, 0, 2),
(95, 'Aboutus', '关于我们', 1, '0', 45, 2, NULL, 0, 2),
(94, 'platform', '平台支付配置', 1, '0', 6, 3, NULL, 0, 2),
(93, 'index', '对帐列表', 1, '0', 92, 3, NULL, 0, 2),
(92, 'Platform', '平台支付', 1, '0', 4, 2, NULL, 0, 2),
(88, 'Funintro', '功能介绍', 1, '0', 45, 2, NULL, 0, 2),
(87, 'sms', '短信接口', 1, '', 6, 3, NULL, 0, 2),
(83, 'alipay', '在线支付接口', 1, '0', 6, 3, NULL, 0, 2),
(81, 'Token', '公众号管理', 1, '0', 80, 2, NULL, 0, 2),
(79, 'del', '删除友情链接', 1, '0', 73, 3, NULL, 0, 0),
(78, 'upsave', '更新数据库', 1, '0', 73, 3, NULL, 0, 0),
(77, 'insert', '插入数据库', 1, '0', 73, 3, NULL, 0, 0),
(75, 'add', '添加链接', 1, '0', 73, 3, NULL, 0, 2),
(76, 'edit', '编辑链接', 1, '0', 73, 3, NULL, 0, 0),
(74, 'index', '友情链接', 1, '0', 73, 3, NULL, 0, 2),
(73, 'Links', '友情链接', 1, '0', 4, 2, NULL, 0, 2),
(72, 'upsave', '更新数据库', 1, '0', 66, 3, NULL, 0, 0),
(71, 'insert', '写入数据库', 1, '0', 66, 3, NULL, 0, 0),
(70, 'del', '删除案例', 1, '0', 66, 3, NULL, 0, 0),
(69, 'edit', '编辑案例', 1, '0', 66, 3, NULL, 0, 0),
(68, 'add', '添加案例', 1, '0', 66, 3, NULL, 0, 2),
(67, 'index', '案例列表', 1, '0', 66, 3, NULL, 0, 2),
(65, 'index', '充值列表', 1, '0', 64, 3, NULL, 0, 2),
(66, 'Case', '客户案例', 1, '0', 4, 2, NULL, 0, 2),
(64, 'Records', '充值记录', 1, '0', 4, 2, NULL, 0, 2),
(62, 'edit', '编辑', 1, '0', 60, 3, NULL, 0, 0),
(63, 'del', '删除', 1, '0', 60, 3, NULL, 0, 0),
(61, 'index', '列表', 1, '0', 60, 3, NULL, 0, 2),
(60, 'Custom', '自定义页面', 1, '0', 5, 2, NULL, 0, 2),
(59, 'del', '删除', 1, '0', 57, 3, NULL, 0, 0),
(58, 'index', '文本列表', 1, '0', 57, 3, NULL, 0, 2),
(57, 'Text', '微信文本', 1, '0', 5, 2, NULL, 0, 2),
(56, 'upsave', '更新客户', 1, '0', 50, 3, NULL, 0, 0),
(55, 'insert', '写入数据库', 1, '0', 50, 3, NULL, 0, 0),
(54, 'del', '删除客户', 1, '0', 50, 3, NULL, 0, 0),
(53, 'edit', '编辑客户', 1, '0', 50, 3, NULL, 0, 0),
(52, 'add', '添加客户', 1, '0', 50, 3, NULL, 0, 2),
(51, 'index', '客户列表', 1, '0', 50, 3, NULL, 0, 0),
(50, 'Users', '客户管理', 1, '0', 3, 2, NULL, 0, 2),
(49, 'add', '添加套餐', 1, '0', 48, 3, NULL, 0, 2),
(48, 'User_group', '套餐管理', 1, '0', 3, 2, NULL, 0, 2),
(47, 'add', '添加模块', 1, '0', 46, 3, NULL, 0, 2),
(46, 'Function', '功能模块', 1, '0', 45, 2, NULL, 0, 2),
(45, 'Function', '功能模块', 1, '0', 1, 0, NULL, 5, 1),
(80, 'token', '公众号管理', 1, '0', 1, 0, NULL, 3, 1),
(42, 'del', '微信图文删除', 1, '0', 38, 3, NULL, 0, 0),
(41, 'edit', '微信图文编辑', 1, '0', 38, 3, NULL, 0, 0),
(39, 'index', '图文列表', 1, '0', 38, 3, NULL, 0, 2),
(40, 'add', '图文添加', 1, '0', 38, 3, NULL, 0, 2),
(38, 'Article', '微信图文', 1, '0', 5, 2, NULL, 0, 2),
(37, 'main', '右侧栏目', 1, '0', 35, 3, NULL, 0, 0),
(35, 'System', '首页', 1, '0', 2, 2, NULL, 0, 0),
(36, 'menu', '左侧栏', 1, '0', 35, 3, NULL, 0, 0),
(32, 'insert', '保存', 1, '0', 6, 3, NULL, 0, 0),
(148, 'role_sort', '排序', 1, NULL, 25, 3, NULL, 0, 0),
(30, 'insert', '写入数据库', 1, '0', 25, 3, NULL, 0, 0),
(29, 'del', '删除套餐', 1, '0', 25, 3, NULL, 0, 0),
(28, 'edit', '编辑套餐', 1, '0', 25, 3, NULL, 0, 0),
(27, 'index', '管理组列表', 1, '0', 25, 3, NULL, 0, 2),
(26, 'add', '创建管理组', 1, '0', 25, 3, NULL, 0, 2),
(25, 'Group', '管理组', 1, '0', 3, 2, NULL, 0, 2),
(24, 'del', '删除客户', 1, '0', 18, 3, NULL, 0, 0),
(23, 'update', '更新客户', 1, '0', 18, 3, NULL, 0, 0),
(22, 'insert', '写入数据库', 1, '0', 18, 3, NULL, 0, 0),
(21, 'edit', '编辑客户', 1, '0', 18, 3, NULL, 0, 0),
(20, 'index', '站长列表', 1, '0', 18, 3, NULL, 0, 2),
(19, 'add', '添加站长', 1, '0', 18, 3, NULL, 0, 2),
(18, 'User', '站长管理', 1, '0', 3, 2, NULL, 0, 2),
(17, 'del', '删除节点', 1, '0', 11, 3, NULL, 0, 0),
(16, 'update', '更新节点', 1, '0', 11, 3, NULL, 0, 0),
(15, 'edit', '编辑节点', 1, '0', 11, 3, NULL, 0, 0),
(14, 'insert', '写入', 1, '0', 11, 3, NULL, 0, 0),
(13, 'index', '节点列表', 1, '', 11, 3, NULL, 0, 2),
(12, 'add', '添加节点', 1, '', 11, 3, NULL, 0, 2),
(11, 'Node', '节点管理', 1, NULL, 2, 2, NULL, 0, 2),
(10, 'upfile', '附件设置', 1, '', 6, 3, NULL, 0, 2),
(9, 'email', '邮箱设置', 1, '', 6, 3, NULL, 0, 0),
(8, 'safe', '安全设置', 1, '', 6, 3, NULL, 0, 2),
(7, 'index', '基本信息设置', 1, '', 6, 3, NULL, 0, 2),
(6, 'Site', '站点设置', 1, '', 2, 2, NULL, 0, 2),
(5, 'article', '内容管理', 1, '', 1, 0, NULL, 4, 1),
(4, 'extent', '扩展管理', 1, '', 1, 0, NULL, 6, 1),
(3, 'User', '客户管理', 1, '', 1, 0, NULL, 2, 1),
(2, 'Site', '站点管理', 1, '', 1, 0, NULL, 1, 1),
(1, 'cms', '根节点', 1, '', 0, 1, NULL, 0, 0),
(126, 'insert', '写入数据库', 1, '0', 88, 3, '', 0, 0),
(127, 'index', '功能列表', 1, '0', 88, 3, '', 1, 2),
(128, 'edit', '修改功能', 1, '0', 88, 3, '', 0, 0),
(129, 'addclass', '添加分类', 1, '0', 88, 3, '', 2, 2),
(130, 'indexs', '分类管理', 1, '0', 88, 3, '', 3, 2),
(131, 'indexs', '分类管理', 1, '0', 66, 3, '', 0, 2),
(132, 'addclass', '添加分类', 1, '0', 66, 3, '', 0, 2),
(133, 'SystemIndex', '后台首页', 1, '0', 2, 2, NULL, 0, 2),
(134, 'Agent', '代理商管理', 1, '0', 1, 2, NULL, 0, 1),
(135, 'Agent', '代理商管理', 1, '0', 134, 2, NULL, 0, 2),
(136, 'add', '添加', 1, '0', 135, 3, NULL, 0, 2),
(137, 'AgentPrice', '优惠套餐包', 1, '0', 134, 2, NULL, 0, 2),
(138, 'add', '添加', 1, '0', 137, 3, NULL, 0, 2),
(139, 'AgentBuyRecords', '消费记录', 1, '0', 134, 2, NULL, 0, 2),
(140, 'add', '添加', 1, '0', 95, 3, NULL, 0, 2),
(141, 'index', '后台管理', 1, NULL, 35, 3, NULL, 0, 0),
(142, 'Index', '回滚', 1, NULL, 35, 2, NULL, 0, 0),
(143, 'rollback', '回滚程序', 1, NULL, 142, 3, NULL, 0, 0),
(144, 'checkUpdate', '升级程序', 1, NULL, 35, 3, NULL, 0, 0),
(145, 'doSqlUpdate', '升级数据库', 1, NULL, 35, 3, NULL, 0, 0),
(146, 'index', '后台管理', 1, NULL, 133, 3, NULL, 0, 0),
(147, 'mysqlajax', '优化修复数据库', 1, NULL, 6, 3, NULL, 0, 0),
(149, 'access', '权限浏览', 1, NULL, 25, 3, NULL, 0, 0),
(150, 'access_edit', '权限编辑', 1, NULL, 25, 3, NULL, 0, 0),
(151, 'index', '管理组列表', 1, NULL, 48, 3, NULL, 0, 2),
(152, 'edit', '修改套餐', 1, NULL, 48, 3, NULL, 0, 0),
(153, 'del', '删除套餐', 1, NULL, 48, 3, NULL, 0, 0),
(154, 'search', '客户搜索', 1, NULL, 50, 3, NULL, 0, 0),
(155, 'syname', '设为系统用户', 1, NULL, 50, 3, NULL, 0, 0),
(156, 'sysname', '取消系统用户', 1, NULL, 50, 3, NULL, 0, 0),
(157, 'index', '公众号列表', 1, NULL, 81, 3, NULL, 0, 2),
(158, 'del', '公众号删除', 1, NULL, 81, 3, NULL, 0, 0),
(159, 'index', '列表', 1, NULL, 95, 3, NULL, 0, 2),
(160, 'edit', '修改', 1, NULL, 95, 3, NULL, 0, 0),
(161, 'del', '删除', 1, NULL, 95, 3, NULL, 0, 0),
(162, 'adds', '执行添加分类', 1, NULL, 88, 3, NULL, 0, 0),
(163, 'edits', '分类修改', 1, NULL, 88, 3, NULL, 0, 0),
(164, 'dels', '分类删除', 1, NULL, 88, 3, NULL, 0, 0),
(165, 'upsaves', '执行分类修改', 1, NULL, 88, 3, NULL, 0, 0),
(166, 'search', '确认设置分类', 1, NULL, 88, 3, NULL, 0, 0),
(167, 'index', '列表', 1, NULL, 46, 3, NULL, 0, 2),
(168, 'edit', '修改', 1, NULL, 46, 3, NULL, 0, 0),
(169, 'del', '删除', 1, NULL, 46, 3, NULL, 0, 0),
(170, 'paid', '处理账单', 1, NULL, 92, 3, NULL, 0, 0),
(171, 'paid_all', '一键处理', 1, NULL, 92, 3, NULL, 0, 0),
(172, 'add', '添加', 1, NULL, 92, 3, NULL, 0, 0),
(173, 'del', '删除', 1, NULL, 92, 3, NULL, 0, 0),
(174, 'edit', '修改', 1, NULL, 92, 3, NULL, 0, 0),
(175, 'insert', '插入数据库', 1, NULL, 92, 3, NULL, 0, 0),
(176, 'upsave', '更新数据库', 1, NULL, 92, 3, NULL, 0, 0),
(177, 'adds', '执行分类添加', 1, NULL, 66, 3, NULL, 0, 0),
(178, 'edits', '分类修改', 1, NULL, 66, 3, NULL, 0, 0),
(179, 'upsaves', '执行分类修改', 1, NULL, 66, 3, NULL, 0, 0),
(180, 'dels', '分类删除', 1, NULL, 66, 3, NULL, 0, 0),
(181, 'send', '确认充值', 1, NULL, 64, 3, NULL, 0, 0),
(182, 'Examine_image', '图片审核', 1, NULL, 4, 2, NULL, 0, 2),
(183, 'index', '图片列表', 1, NULL, 182, 3, NULL, 0, 2),
(184, 'del', '删除', 1, NULL, 182, 3, NULL, 0, 0),
(185, 'set', '审核', 1, NULL, 182, 3, NULL, 0, 0),
(186, 'set_all', '一键审核', 1, NULL, 182, 3, NULL, 0, 0),
(187, 'Susceptible', '敏感词过滤', 1, NULL, 4, 2, NULL, 0, 2),
(188, 'index', '列表', 1, NULL, 187, 3, NULL, 0, 2),
(189, 'add', '添加', 1, NULL, 187, 3, NULL, 0, 2),
(190, 'adds', '批量添加', 1, NULL, 187, 3, NULL, 0, 2),
(191, 'del', '删除', 1, NULL, 187, 3, NULL, 0, 0),
(192, 'set', '开启关闭', 1, NULL, 187, 3, NULL, 0, 0),
(193, 'set_all', '一键开启关闭', 1, NULL, 187, 3, NULL, 0, 0),
(194, 'edit', '修改', 1, NULL, 187, 3, NULL, 0, 0),
(195, 'CheckUpdate', '更新程序', 1, NULL, 2, 2, NULL, 0, 2),
(196, 'DoSqlUpdate', '更新数据库', 1, NULL, 2, 2, NULL, 0, 2),
(197, 'info', '查看详情', 1, NULL, 182, 3, NULL, 0, 0),
(198, 'Use', '数据统计', 1, '', 4, 2, NULL, 0, 2),
(199, 'index', '统计图表', 1, '', 198, 3, NULL, 0, 2),
(200, 'Customs', '自定义导航', 1, '', 4, 2, NULL, 0, 2),
(201, 'index', '导航列表', 1, '', 200, 3, NULL, 0, 2),
(202, 'wechat_api', '微信托管', 1, NULL, 6, 3, NULL, 0, 2),
(203, 'SqlLog', 'SQL升级日志', 1, '', 4, 2, NULL, 0, 2),
(204, 'index', '日志列表', 1, '', 203, 3, NULL, 0, 2),
(205, 'redo', '重新升级', 1, '', 203, 3, NULL, 0, 0),
(206, 'weixinPay', '微信支付服务商', 1, NULL, 6, 3, NULL, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_norms`
--

CREATE TABLE IF NOT EXISTS `pigcms_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL,
  `value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_notice_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_notice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `n_id` (`n_id`),
  KEY `customerid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='通知记录' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_notice_record`
--

INSERT INTO `pigcms_notice_record` (`id`, `n_id`, `userid`) VALUES
(2, 8, 8),
(3, 8, 8);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_numqueue_action`
--

CREATE TABLE IF NOT EXISTS `pigcms_numqueue_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_keyword` char(30) NOT NULL,
  `reply_pic` varchar(100) NOT NULL,
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '1',
  `token` char(25) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_numqueue_admin`
--

CREATE TABLE IF NOT EXISTS `pigcms_numqueue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `wecha_id` char(50) NOT NULL DEFAULT '',
  `store_id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '' COMMENT '所属权限',
  `token` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_numqueue_receive`
--

CREATE TABLE IF NOT EXISTS `pigcms_numqueue_receive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `queue_type` char(5) NOT NULL DEFAULT 'A' COMMENT '等待类型',
  `queue_number` char(30) NOT NULL DEFAULT '' COMMENT '排队号码',
  `numbers` int(11) NOT NULL DEFAULT '0',
  `phone` char(30) NOT NULL DEFAULT '0' COMMENT '手机号',
  `status` tinyint(1) NOT NULL COMMENT '号码状态',
  `wecha_id` char(50) NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_numqueue_store`
--

CREATE TABLE IF NOT EXISTS `pigcms_numqueue_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `store_type` tinyint(1) NOT NULL,
  `opentime` tinyint(4) NOT NULL DEFAULT '0',
  `closetime` tinyint(4) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL COMMENT 'logo',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `remark` char(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_value` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL DEFAULT '',
  `privilege_link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `action_id` int(11) NOT NULL,
  `token` char(50) NOT NULL,
  `jump_name` varchar(255) NOT NULL,
  `hankowthames` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL,
  `wait_time` int(11) NOT NULL DEFAULT '0',
  `allow_distance` float(6,2) NOT NULL,
  `need_numbers` tinyint(1) NOT NULL DEFAULT '0',
  `need_wait` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `orderid` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `is_sub` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refund_id` varchar(30) NOT NULL DEFAULT '0',
  `refund_no` varchar(30) NOT NULL,
  `refund_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `refund_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_ordering_class`
--

CREATE TABLE IF NOT EXISTS `pigcms_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_ordering_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_orderprinter`
--

CREATE TABLE IF NOT EXISTS `pigcms_orderprinter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `companyid` int(10) NOT NULL DEFAULT '0',
  `mcode` varchar(60) NOT NULL DEFAULT '',
  `mkey` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `count` mediumint(5) NOT NULL DEFAULT '1',
  `modules` varchar(100) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  `number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_other`
--

CREATE TABLE IF NOT EXISTS `pigcms_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_panorama`
--

CREATE TABLE IF NOT EXISTS `pigcms_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_config` (
  `token` varchar(50) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_logo` varchar(150) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `site_qq` varchar(100) NOT NULL,
  `site_phone` varchar(100) NOT NULL,
  `site_email` varchar(100) NOT NULL,
  `site_count` text NOT NULL,
  `site_icp` varchar(100) NOT NULL,
  `seo_title` varchar(200) NOT NULL,
  `seo_keywords` varchar(200) NOT NULL,
  `seo_description` text NOT NULL,
  `site_tpl` text NOT NULL,
  `other_info` text NOT NULL COMMENT '模板自定义配置项，序列化存储',
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_down`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `time` (`time`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_down_category`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_down_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_flash`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_flash_cat`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_flash_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL COMMENT '分类Key,使用Key调用轮播图',
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图分类' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_nav`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_news`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `time` (`time`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_news_category`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_news_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_page`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_product`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `time` (`time`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_product_category`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_product_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pc_site`
--

CREATE TABLE IF NOT EXISTS `pigcms_pc_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `site` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site` (`site`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `classify` int(11) NOT NULL DEFAULT '0',
  `price` int(20) NOT NULL DEFAULT '0',
  `facepic` varchar(200) NOT NULL,
  `startdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `goods_info` text,
  `tuan_info` text,
  `display` int(11) NOT NULL DEFAULT '2',
  `addtime` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `title` (`title`),
  KEY `classify` (`classify`),
  KEY `display` (`display`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_changepic`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_changepic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_classify`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_classify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_guize`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_guize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `tid` int(11) NOT NULL,
  `number` int(10) unsigned NOT NULL,
  `discount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `team_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `ishead` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `orderid` varchar(50) DEFAULT NULL,
  `transactionid` varchar(150) DEFAULT NULL,
  `paytype` varchar(30) DEFAULT NULL,
  `third_id` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `goods_pic` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_address` varchar(500) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `express_name` varchar(100) DEFAULT NULL,
  `express_num` varchar(200) DEFAULT NULL,
  `message` text,
  `isbucha` int(11) NOT NULL DEFAULT '0',
  `jilu_number` int(11) NOT NULL DEFAULT '0',
  `jilu_enddate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `info` varchar(120) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_pintuan_team`
--

CREATE TABLE IF NOT EXISTS `pigcms_pintuan_team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `head_id` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `guize_id` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `tid` (`tid`),
  KEY `head_id` (`head_id`),
  KEY `type` (`type`),
  KEY `type_2` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_platform_pay`
--

CREATE TABLE IF NOT EXISTS `pigcms_platform_pay` (
  `platform_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`platform_id`),
  KEY `time` (`time`),
  KEY `orderid` (`orderid`,`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_popularity`
--

CREATE TABLE IF NOT EXISTS `pigcms_popularity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(35) NOT NULL,
  `title` char(45) NOT NULL,
  `pic` char(200) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `info` text NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `add_time` char(15) NOT NULL,
  `show_num` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_popularity_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_popularity_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(45) NOT NULL,
  `img` char(200) NOT NULL,
  `num` int(11) NOT NULL,
  `use_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_popularity_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_popularity_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `share_key` char(32) NOT NULL,
  `add_time` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_popularity_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_popularity_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(35) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `is_real` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_present`
--

CREATE TABLE IF NOT EXISTS `pigcms_present` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `class` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `info` varchar(300) NOT NULL,
  `img` char(250) NOT NULL,
  `classname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_problem_game`
--

CREATE TABLE IF NOT EXISTS `pigcms_problem_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `title` char(60) NOT NULL,
  `keyword` char(20) NOT NULL,
  `logo_pic` char(120) NOT NULL,
  `token` char(25) NOT NULL,
  `banner` char(120) NOT NULL,
  `explain` varchar(600) NOT NULL,
  `rule` text NOT NULL,
  `add_time` char(10) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `answer_time` char(5) NOT NULL,
  `sub_limit` smallint(5) unsigned NOT NULL,
  `over_hint` varchar(500) NOT NULL,
  `question_num` mediumint(9) NOT NULL,
  `score` mediumint(9) NOT NULL,
  `end_day` smallint(6) NOT NULL,
  `start_time` char(10) NOT NULL,
  `is_follow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_problem_option`
--

CREATE TABLE IF NOT EXISTS `pigcms_problem_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `is_true` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_problem_question`
--

CREATE TABLE IF NOT EXISTS `pigcms_problem_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_problem_question_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_problem_question_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `expend_time` char(5) NOT NULL,
  `add_time` char(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_problem_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_problem_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(100) NOT NULL,
  `user_name` char(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `nickname` char(50) NOT NULL,
  `add_time` char(10) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `score_count` int(11) NOT NULL,
  `expend_count` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product`
--

CREATE TABLE IF NOT EXISTS `pigcms_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL,
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL,
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 固定金额fixed, 百分比 float',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '分销佣金',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '允许分销 0, 1',
  `sn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sn_name` varchar(200) DEFAULT NULL,
  `sn_pass` varchar(200) DEFAULT NULL,
  `groupon_num` int(10) unsigned NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`),
  KEY `cid` (`cid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_attribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cart`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `comment` varchar(300) NOT NULL DEFAULT '' COMMENT '买家留言',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '买家id',
  `twid` varchar(20) NOT NULL COMMENT '来源推广人的推广ID',
  `totalprice` float NOT NULL COMMENT '购买商品的订单总价',
  `sn` tinyint(1) NOT NULL DEFAULT '0',
  `sn_content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cart_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `shipping` float NOT NULL DEFAULT '0' COMMENT '运费',
  `sku_id` int(10) NOT NULL DEFAULT '0' COMMENT '库存id',
  `comment` varchar(300) NOT NULL DEFAULT '0' COMMENT '买家留言',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cat`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `isfinal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_detail`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `format` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_diningtable`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_group`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_image`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_mail_price`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_relation`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_setting`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL DEFAULT '-1' COMMENT '满多少元免邮费',
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `tpid` int(10) unsigned NOT NULL,
  `footerid` int(10) unsigned NOT NULL,
  `headerbackgroud` text NOT NULL,
  `headerid` int(10) unsigned NOT NULL,
  `isgroup` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_sn`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_sn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `sn` varchar(200) NOT NULL COMMENT '中奖后序列号',
  `pass` varchar(200) NOT NULL,
  `sendstutas` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='虚拟物品表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_punish`
--

CREATE TABLE IF NOT EXISTS `pigcms_punish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `pic` char(120) NOT NULL,
  `name` char(10) NOT NULL,
  `use_num` int(11) NOT NULL,
  `info` varchar(500) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_punish_item`
--

CREATE TABLE IF NOT EXISTS `pigcms_punish_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_qcloud_sendout`
--

CREATE TABLE IF NOT EXISTS `pigcms_qcloud_sendout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suborderid` varchar(1000) DEFAULT NULL,
  `orderid` varchar(1000) DEFAULT NULL,
  `packageid` varchar(1000) DEFAULT NULL,
  `payprice` varchar(100) DEFAULT NULL,
  `openid` varchar(1000) DEFAULT NULL,
  `paynum` varchar(100) DEFAULT NULL,
  `freedays` varchar(100) DEFAULT NULL,
  `servicedays` varchar(100) DEFAULT NULL,
  `payunit` char(100) DEFAULT NULL,
  `service` char(50) DEFAULT 'site',
  `serviceId` varchar(1000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `providerId` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_qcloud_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_question_bank`
--

CREATE TABLE IF NOT EXISTS `pigcms_question_bank` (
  `id` int(11) NOT NULL,
  `figure` varchar(2) DEFAULT NULL,
  `question_types` varchar(2) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option_num` int(11) DEFAULT NULL,
  `optionA` varchar(100) DEFAULT NULL,
  `optionB` varchar(100) DEFAULT NULL,
  `optionC` varchar(100) DEFAULT NULL,
  `optionD` varchar(100) DEFAULT NULL,
  `optionE` varchar(100) DEFAULT NULL,
  `optionF` varchar(100) DEFAULT NULL,
  `answer` varchar(6) DEFAULT NULL,
  `classify` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reason`
--

CREATE TABLE IF NOT EXISTS `pigcms_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `phos_one` varchar(250) NOT NULL,
  `create_time` varchar(100) NOT NULL,
  `classname` varchar(120) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_recipe`
--

CREATE TABLE IF NOT EXISTS `pigcms_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_recognition`
--

CREATE TABLE IF NOT EXISTS `pigcms_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `fuwu_code_url` varchar(200) DEFAULT NULL,
  `config` varchar(300) NOT NULL DEFAULT '' COMMENT '二维码配置',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '处理类型',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_recognition_data`
--

CREATE TABLE IF NOT EXISTS `pigcms_recognition_data` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `rid` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `is_ali` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_red_packet`
--

CREATE TABLE IF NOT EXISTS `pigcms_red_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_red_packet_exchange`
--

CREATE TABLE IF NOT EXISTS `pigcms_red_packet_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `log_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_red_packet_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_red_packet_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_red_packet_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_red_packet_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `name` char(40) NOT NULL,
  `worth` int(11) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `odds` decimal(10,0) NOT NULL,
  `sue` mediumint(9) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `packet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_red_packet_reward`
--

CREATE TABLE IF NOT EXISTS `pigcms_red_packet_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `mobile` char(11) NOT NULL,
  `wxname` char(40) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_renew`
--

CREATE TABLE IF NOT EXISTS `pigcms_renew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` char(255) NOT NULL,
  `img_x` char(200) NOT NULL,
  `img_w` char(200) NOT NULL,
  `time` varchar(13) NOT NULL,
  `status` int(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `imgs` char(250) NOT NULL,
  `color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=243 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reply_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  `readpass` char(40) DEFAULT NULL,
  `banner` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_requestdata`
--

CREATE TABLE IF NOT EXISTS `pigcms_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `pigcms_requestdata`
--

INSERT INTO `pigcms_requestdata` (`id`, `token`, `year`, `month`, `day`, `time`, `textnum`, `imgnum`, `videonum`, `other`, `follownum`, `unfollownum`, `3g`) VALUES
(47, 'vjotae1439949952', 2015, 8, 19, 1439951230, 0, 0, 0, 0, 2, 0, 0),
(48, 'hbokpr1439956537', 2015, 8, 19, 1439956644, 15, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research`
--

CREATE TABLE IF NOT EXISTS `pigcms_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_answer`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_question`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_result`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reservation`
--

CREATE TABLE IF NOT EXISTS `pigcms_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reservebook`
--

CREATE TABLE IF NOT EXISTS `pigcms_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `orderName` varchar(50) DEFAULT '',
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  `paytype` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_role`
--

CREATE TABLE IF NOT EXISTS `pigcms_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_role`
--

INSERT INTO `pigcms_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`) VALUES
(5, '超级管理员', 0, 1, 0, ''),
(6, '演示组', 0, 1, 0, ''),
(9, '普通会员', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_role_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_router`
--

CREATE TABLE IF NOT EXISTS `pigcms_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_router_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_scene_active`
--

CREATE TABLE IF NOT EXISTS `pigcms_scene_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scene_id` int(11) NOT NULL,
  `active_id` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_cat`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('1','0') NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_classify`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_score`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_set_index`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_students`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_tcourse`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_teachers`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_action`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(20) NOT NULL COMMENT '活动名称',
  `action_header_img` text NOT NULL COMMENT '活动头部图片',
  `action_key` varchar(50) NOT NULL COMMENT '活动key',
  `action_sdate` int(11) NOT NULL COMMENT '活动开始时间',
  `action_edate` int(11) NOT NULL COMMENT '活动结束时间',
  `rand_min_time` int(11) NOT NULL COMMENT '最小分享时间',
  `rand_max_time` int(11) NOT NULL COMMENT '最大分享时间',
  `reply_pic` text COMMENT '活动图片',
  `action_token` varchar(50) DEFAULT '' COMMENT '活动发起人',
  `action_rule` text COMMENT '活动规则',
  `action_open` tinyint(4) NOT NULL DEFAULT '0',
  `reply_title` varchar(20) DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) DEFAULT '' COMMENT '回复简介',
  `reply_keyword` varchar(50) DEFAULT '' COMMENT '关键词',
  `action_is_reg` tinyint(4) NOT NULL DEFAULT '1',
  `action_is_attention` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`action_id`),
  KEY `action_name` (`action_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_base_shop`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_base_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL COMMENT '活动id',
  `shop_name` varchar(20) NOT NULL COMMENT '商品名称',
  `shop_num` int(11) unsigned NOT NULL,
  `shop_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `shop_tran` decimal(10,2) NOT NULL COMMENT '运费',
  `shop_open` tinyint(4) DEFAULT '0' COMMENT '商品状态',
  `shop_detail` text COMMENT '商品描述文本',
  `shop_img` text NOT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `shop_name` (`shop_name`),
  KEY `action_id` (`action_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_book`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) NOT NULL COMMENT '订单号',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `wecha_id` varchar(100) NOT NULL COMMENT '公众号的标识',
  `token` varchar(50) NOT NULL COMMENT '公众号的标识',
  `paytype` varchar(50) NOT NULL DEFAULT '' COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) NOT NULL DEFAULT '' COMMENT '第三方支付平台的订单ID，用于对帐',
  `book_aid` int(11) NOT NULL COMMENT '活动id',
  `book_sid` int(11) NOT NULL COMMENT '商品id',
  `book_time` int(11) NOT NULL COMMENT '订单时间',
  `book_uid` int(11) NOT NULL COMMENT '订单用户',
  `deli_addr` varchar(100) DEFAULT '' COMMENT '收货地址',
  `true_name` varchar(30) DEFAULT '' COMMENT '收件人姓名',
  `tel` varchar(20) DEFAULT '' COMMENT '固话',
  `cel` varchar(20) DEFAULT '' COMMENT '手机',
  PRIMARY KEY (`book_id`),
  KEY `orderid` (`orderid`),
  KEY `book_aid` (`book_aid`),
  KEY `book_sid` (`book_sid`),
  KEY `paid` (`paid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_share` varchar(50) NOT NULL COMMENT '分享key',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `share_time` int(11) DEFAULT '0' COMMENT '减少时间',
  `share_pic` varchar(255) DEFAULT '' COMMENT '用户图像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '0 表示用户未接受 1 表示已接受',
  `open_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享链接wecha_id',
  PRIMARY KEY (`share_id`),
  KEY `user_share` (`user_share`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_shop_thum`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_shop_thum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(20) NOT NULL COMMENT '商品id',
  `shop_thum` varchar(500) NOT NULL COMMENT '缩略图',
  `shop_big` varchar(500) NOT NULL COMMENT '大图',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_seckill_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_seckill_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_nickname` varchar(20) DEFAULT '' COMMENT '普通用户昵称',
  `user_headimgurl` varchar(500) DEFAULT '' COMMENT '用户用户头像',
  `user_shareid` varchar(100) DEFAULT '' COMMENT '用户分享key',
  `user_wechaid` varchar(100) DEFAULT '' COMMENT '用户wcha_id',
  `user_sex` tinyint(4) DEFAULT '0' COMMENT '用户性别',
  `user_tel` varchar(20) DEFAULT '' COMMENT '用户电话',
  `user_qq` varchar(20) DEFAULT '' COMMENT '用户QQ',
  `user_address` varchar(50) DEFAULT '' COMMENT '用户address',
  `user_province` varchar(50) DEFAULT '' COMMENT '用户province',
  `user_city` varchar(50) DEFAULT '' COMMENT '用户city',
  `user_mintime` int(11) DEFAULT '0' COMMENT '用户分享奖励时间',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  PRIMARY KEY (`user_id`),
  KEY `user_shareid` (`user_shareid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform_input`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform_value`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_send_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `openid` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `send_type` tinyint(4) NOT NULL,
  `schedule_time` int(11) NOT NULL,
  `schedule_type` tinyint(1) NOT NULL,
  `check_status` tinyint(1) NOT NULL,
  `errorcount` int(11) NOT NULL,
  `taskname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_senior_scene`
--

CREATE TABLE IF NOT EXISTS `pigcms_senior_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `pic` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `intro` text,
  `info` text,
  `reply_pic` varchar(200) NOT NULL,
  `start` int(11) NOT NULL DEFAULT '0',
  `end` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `is_open` int(11) NOT NULL DEFAULT '0',
  `is_reg` int(11) NOT NULL DEFAULT '0',
  `is_attention` int(11) NOT NULL DEFAULT '0',
  `is_sms` int(11) NOT NULL DEFAULT '0',
  `fxtitle` varchar(200) DEFAULT NULL,
  `is_nosex` int(11) NOT NULL DEFAULT '0',
  `opposite_sex` varchar(20) NOT NULL DEFAULT '0',
  `same_sex` varchar(20) NOT NULL DEFAULT '0',
  `no_sex` varchar(20) NOT NULL DEFAULT '0',
  `man_label` text NOT NULL,
  `woman_label` text NOT NULL,
  `name_zhi` varchar(50) NOT NULL DEFAULT '魅力值',
  `rank_num` int(11) NOT NULL DEFAULT '10',
  `fxinfo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `title` (`title`),
  KEY `is_open` (`is_open`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_sentiment`
--

INSERT INTO `pigcms_sentiment` (`id`, `token`, `keyword`, `title`, `intro`, `info`, `reply_pic`, `start`, `end`, `addtime`, `is_open`, `is_reg`, `is_attention`, `is_sms`, `fxtitle`, `is_nosex`, `opposite_sex`, `same_sex`, `no_sex`, `man_label`, `woman_label`, `name_zhi`, `rank_num`, `fxinfo`) VALUES
(1, 'vjotae1439949952', '谁是情圣', '谁是情圣', '谁是情圣', '谁是情圣', 'http://s.404.cn/tpl/static/sentiment/images/news.jpg', 1439913600, 1442592000, 1439950232, 0, 1, 1, 0, '', 0, '2', '1', '0.5', '小鲜肉,怪蜀黍,苦逼单身汪,国民男神,高富帅,钻石王老五,暖男,气质小王子', '花痴小萝莉,女神经,高冷女神,腹黑女王,萌妹纸,阳光小美女,豪气女侠,白富美', '魅力值', 10, ''),
(2, 'sfrpky1439949951', '情圣', '谁是情圣dfgsd', 'fsdgsdasds', 'sdfbsdfbfg', 'http://s.404.cn/tpl/static/sentiment/images/news.jpg', 1439913600, 1442592000, 1439950281, 0, 0, 0, 0, 'woshi qingsheng huanyingbangwodianzan', 1, '2', '1', '0.5', '小鲜肉,怪蜀黍,苦逼单身汪,国民男神,高富帅,钻石王老五,暖男,气质小王子', '花痴小萝莉,女神经,高冷女神,腹黑女王,萌妹纸,阳光小美女,豪气女侠,白富美', '魅力值', 10, 'qingshengqingsheng'),
(3, 'iztlsr1439949156', '谁是情圣', '谁是情圣', '54545', '4545', 'http://s.404.cn/tpl/static/sentiment/images/news.jpg', 1439913600, 1442592000, 1439952548, 0, 0, 1, 0, '', 0, '2', '1', '0.5', '小鲜肉,怪蜀黍,苦逼单身汪,国民男神,高富帅,钻石王老五,暖男,气质小王子', '花痴小萝莉,女神经,高冷女神,腹黑女王,萌妹纸,阳光小美女,豪气女侠,白富美', '魅力值', 10, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_label`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `state` (`state`),
  KEY `label` (`label`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_sentiment_label`
--

INSERT INTO `pigcms_sentiment_label` (`id`, `token`, `pid`, `wecha_id`, `label`, `count`, `state`, `addtime`) VALUES
(1, 'vjotae1439949952', 1, 'onmH-t91yRnhWOIhUsJVuev3RA6Q', '怪蜀黍', 1, 1, 1439951402),
(2, 'vjotae1439949952', 1, 'onmH-t91yRnhWOIhUsJVuev3RA6Q', '钻石王老五', 1, 1, 1439951410),
(3, 'vjotae1439949952', 1, 'onmH-t9D5oRR_VmG6MKlErxUSrCw', '小鲜肉', 1, 1, 1439951412),
(4, 'vjotae1439949952', 1, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '苦逼单身汪', 1, 1, 1439951955),
(5, 'vjotae1439949952', 1, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '钻石王老五', 1, 1, 1439951958);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_label_helps`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_label_helps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `labels` varchar(512) NOT NULL,
  `addtime` int(11) NOT NULL,
  `label_wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `label_wecha_id` (`label_wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_sentiment_label_helps`
--

INSERT INTO `pigcms_sentiment_label_helps` (`id`, `token`, `pid`, `wecha_id`, `labels`, `addtime`, `label_wecha_id`) VALUES
(1, 'vjotae1439949952', 1, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '怪蜀黍,钻石王老五', 1439951410, 'onmH-t91yRnhWOIhUsJVuev3RA6Q'),
(2, 'vjotae1439949952', 1, 'onmH-t9D5oRR_VmG6MKlErxUSrCw', '小鲜肉', 1439951412, 'onmH-t9D5oRR_VmG6MKlErxUSrCw'),
(3, 'vjotae1439949952', 1, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '苦逼单身汪,钻石王老五', 1439951958, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_news`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `imgurl` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_sentiment_news`
--

INSERT INTO `pigcms_sentiment_news` (`id`, `token`, `pid`, `title`, `imgurl`, `url`) VALUES
(1, 'vjotae1439949952', 1, 'XXX', 'http://s.404.cn/tpl/static/sentiment/images/news.jpg', ''),
(4, 'sfrpky1439949951', 2, 'fsdgdfgfsdfgdsfgsdfgsdfgfd', 'http://wd.imakebe.com/tpl/static/attachment/focus/canyin/8.jpg', ''),
(5, 'iztlsr1439949156', 3, '', 'http://wd.imakebe.com/tpl/static/attachment/background/view/4.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(200) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_sentiment_prize`
--

INSERT INTO `pigcms_sentiment_prize` (`id`, `token`, `pid`, `title`, `imgurl`, `num`) VALUES
(1, 'vjotae1439949952', 1, 'XXX', 'http://wd.imakebe.com/uploads/v/vjotae1439949952/1/9/c/c/thumb_55d3e57ba239c.png', 2000),
(4, 'sfrpky1439949951', 2, 'fsdafsdgdfge', 'http://wd.imakebe.com/tpl/static/attachment/icon/canyin/canyin_orange/4.png', 12),
(5, 'iztlsr1439949156', 3, '美女', 'http://wd.imakebe.com/uploads/i/iztlsr1439949156/4/9/3/b/thumb_55d3ee704d495.jpg', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_key` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sex` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pigcms_sentiment_record`
--

INSERT INTO `pigcms_sentiment_record` (`id`, `token`, `pid`, `share_key`, `addtime`, `wecha_id`, `sex`) VALUES
(1, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951369, 'onmH-twCKK39DP9BtZ33wQj1O3nc', 1),
(2, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951381, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', 1),
(3, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951405, 'onmH-t3ollBLa6bKZgDfr3iex2SA', 1),
(4, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951467, 'onmH-t2DDn0ujIDNqJigDtQlxJVQ', 1),
(5, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951480, 'onmH-t0QUR0tg2kcvmvlJ0NB4QRI', 1),
(6, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951624, 'onmH-t6BshM8UO6X6cNAbhrS2TG8', 1),
(7, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439951638, 'onmH-t_PHPRVf59eRZhU0qyq3oIU', 1),
(8, 'vjotae1439949952', 1, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1439964764, 'onmH-t9D5oRR_VmG6MKlErxUSrCw', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sentiment_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_sentiment_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `help_count` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `share_key` varchar(100) NOT NULL DEFAULT '0',
  `share_num` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '0',
  `is_join` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `pid` (`pid`),
  KEY `is_join` (`is_join`),
  KEY `share_key` (`share_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `pigcms_sentiment_user`
--

INSERT INTO `pigcms_sentiment_user` (`id`, `token`, `wecha_id`, `pid`, `help_count`, `addtime`, `share_key`, `share_num`, `tel`, `is_join`) VALUES
(1, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', 1, 0, 0, 'fe348e68f2613aaf77876066b3024dc4', 0, '0', 0),
(2, 'vjotae1439949952', 'onmH-twCKK39DP9BtZ33wQj1O3nc', 1, 0, 0, '98a9640bc00956c69459ab7ad996fc5d', 0, '0', 0),
(3, 'vjotae1439949952', 'onmH-txqzcOUK7Ceh8gW-XmTKITI', 1, 0, 0, 'a95aed3c781b849650a1e3a64044c17b', 0, '0', 0),
(4, 'vjotae1439949952', 'onmH-t7-og94p-ZaCm0OjVe_YQkY', 1, 0, 0, '6a7156096656aaa3bc6410b0b987bcfc', 0, '0', 0),
(5, 'vjotae1439949952', 'onmH-tw4Vh2bWIAyWWJHHb9-gPis', 1, 0, 0, '5602f88967a03162f26e46cf2e88460e', 0, '0', 0),
(6, 'vjotae1439949952', 'onmH-t91yRnhWOIhUsJVuev3RA6Q', 1, 8, 0, 'd3c7d6c9967e4b1a5797caa6a802cb47', 1, '0', 0),
(7, 'vjotae1439949952', 'onmH-t9D5oRR_VmG6MKlErxUSrCw', 1, 0, 0, 'bd24e549e239e9a8575256d7af7300f7', 0, '0', 0),
(8, 'vjotae1439949952', 'onmH-txKTp0UMrTIi73HHkiZoTyw', 1, 0, 0, '501846b9ca5920d1a0ca64e3a76b68fa', 0, '0', 0),
(9, 'vjotae1439949952', 'onmH-t3ollBLa6bKZgDfr3iex2SA', 1, 0, 0, '868e9ef2d93a8e921d4c07aaa1bc9733', 0, '0', 0),
(10, 'vjotae1439949952', 'onmH-t2DDn0ujIDNqJigDtQlxJVQ', 1, 0, 0, 'dba08635019ddd7f8e794157a24cc2ff', 0, '0', 0),
(11, 'vjotae1439949952', 'onmH-t0QUR0tg2kcvmvlJ0NB4QRI', 1, 0, 0, 'b0b54f6234b69e3e55335f49d1681c44', 0, '0', 0),
(12, 'vjotae1439949952', 'onmH-t6BshM8UO6X6cNAbhrS2TG8', 1, 0, 0, '44d60feb73dff600d897b67a19809f31', 0, '0', 0),
(13, 'vjotae1439949952', 'onmH-t_PHPRVf59eRZhU0qyq3oIU', 1, 0, 0, '1f7ee6a3a1b6697a9736259aad3cce4b', 0, '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_logs`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_my`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_my` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `type` varchar(2) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_preferential`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_preferential` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `info` text,
  `img` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_setup`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_setup` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `openid` varchar(200) NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_wxuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_wxuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `wxappid` varchar(200) DEFAULT NULL,
  `wxappsecret` varchar(500) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shake`
--

CREATE TABLE IF NOT EXISTS `pigcms_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `logo` char(100) NOT NULL,
  `cheer` varchar(350) NOT NULL,
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakearoung_device`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakearoung_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL COMMENT '设备ID',
  `uuid` char(50) NOT NULL COMMENT '设备UUID',
  `major` int(11) NOT NULL COMMENT '主设备ID',
  `minor` int(11) NOT NULL COMMENT '次设备ID',
  `apply_id` int(11) NOT NULL DEFAULT '0' COMMENT '批次ID',
  `device_comment` char(30) NOT NULL DEFAULT '' COMMENT '设备名称',
  `page_num` int(11) NOT NULL COMMENT '关联的页面数',
  `page_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '关联的页面ID列表',
  `status` tinyint(1) NOT NULL COMMENT '设备状态',
  `token` char(50) NOT NULL,
  `add_reason` varchar(300) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakearoung_page`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakearoung_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL COMMENT '页面ID',
  `title` char(10) NOT NULL DEFAULT '' COMMENT '页面标题',
  `description` char(10) NOT NULL DEFAULT '' COMMENT '页面副标题',
  `icon_url` varchar(255) NOT NULL DEFAULT '' COMMENT '页面图标URL',
  `page_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `page_comment` char(15) NOT NULL DEFAULT '' COMMENT '页面的备注信息',
  `token` char(50) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelottery`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(50) NOT NULL DEFAULT '',
  `reply_title` varchar(50) NOT NULL DEFAULT '',
  `reply_content` varchar(200) NOT NULL DEFAULT '',
  `reply_pic` varchar(255) NOT NULL DEFAULT '',
  `action_desc` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `remind_word` varchar(255) NOT NULL DEFAULT '',
  `remind_link` varchar(255) NOT NULL DEFAULT '',
  `totaltimes` int(11) NOT NULL DEFAULT '1',
  `everydaytimes` int(11) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `timespan` int(11) NOT NULL,
  `record_nums` int(11) NOT NULL,
  `is_limitwin` int(11) NOT NULL,
  `is_follow` tinyint(1) NOT NULL DEFAULT '1',
  `is_register` tinyint(1) NOT NULL DEFAULT '1',
  `share_count` int(11) NOT NULL,
  `custom_sharetitle` varchar(255) NOT NULL,
  `custom_sharedsc` varchar(500) NOT NULL,
  `follow_msg` varchar(255) NOT NULL,
  `follow_btn_msg` varchar(255) NOT NULL,
  `register_msg` varchar(255) NOT NULL,
  `custom_follow_url` varchar(255) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `join_number` int(11) NOT NULL,
  `actual_join_number` int(11) NOT NULL,
  `other_source` varchar(30) DEFAULT NULL COMMENT '其他活动对接来源',
  `scene_time` int(10) unsigned NOT NULL DEFAULT '0',
  `scene_state` int(10) unsigned NOT NULL DEFAULT '0',
  `is_amount` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `other_source` (`other_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelottery_hbrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelottery_hbrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `mch_billno` char(50) NOT NULL DEFAULT '',
  `fans_id` varchar(60) NOT NULL DEFAULT '',
  `fans_nickname` varchar(60) NOT NULL DEFAULT '',
  `money` float(6,2) DEFAULT NULL,
  `status` char(20) NOT NULL DEFAULT '',
  `hb_type` tinyint(1) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelottery_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelottery_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `prizename` varchar(50) NOT NULL DEFAULT '',
  `prizeimg` varchar(255) NOT NULL DEFAULT '',
  `prizenum` int(11) NOT NULL,
  `expendnum` int(11) NOT NULL DEFAULT '0',
  `provider` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `prize_type` tinyint(1) NOT NULL,
  `hongbao_configure` varchar(800) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelottery_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prizeid` int(11) NOT NULL,
  `prizename` varchar(50) NOT NULL,
  `iswin` tinyint(1) NOT NULL DEFAULT '0',
  `shaketime` int(11) NOT NULL,
  `isaccept` tinyint(1) NOT NULL DEFAULT '0',
  `accepttime` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `wecha_name` char(50) NOT NULL,
  `token` char(30) NOT NULL,
  `prize_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelottery_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelottery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `total_shakes` int(11) NOT NULL,
  `today_shakes` int(11) NOT NULL,
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `wecha_name` varchar(50) NOT NULL DEFAULT '',
  `wecha_pic` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shake_rt`
--

CREATE TABLE IF NOT EXISTS `pigcms_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL,
  `is_scene` enum('0','1') NOT NULL,
  `scene_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_share`
--

INSERT INTO `pigcms_share` (`id`, `module`, `moduleid`, `token`, `wecha_id`, `to`, `time`, `url`) VALUES
(1, 'Sentiment', 0, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', 'frined', 1439951138, 'http://wd.imakebe.com/index.php?g=Wap&amp;amp;m=Sentiment&amp;amp;a=index&amp;amp;token=vjotae1439949952&amp;amp;id=1'),
(2, 'Sentiment', 0, 'vjotae1439949952', 'onmH-t91yRnhWOIhUsJVuev3RA6Q', 'frined', 1439951361, 'http://wd.imakebe.com/index.php?g=Wap&amp;amp;m=Sentiment&amp;amp;a=index&amp;amp;token=vjotae1439949952&amp;amp;id=1&amp;amp;share_key=d3c7d6c9967e4b1a5797caa6a802cb47');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_share_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_conf`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_in`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  `sid` int(10) NOT NULL,
  `del` int(1) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `range` varchar(20) NOT NULL,
  `signpass` char(16) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `if` char(5) NOT NULL,
  `hour` char(5) NOT NULL,
  `minute` char(5) NOT NULL,
  `Cycle` char(5) NOT NULL,
  `day` varchar(10) NOT NULL,
  `site` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_site_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_site_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `from` varchar(60) NOT NULL,
  `relation` tinyint(3) unsigned DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `read_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站内信' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_site_plugmenu`
--

CREATE TABLE IF NOT EXISTS `pigcms_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sms_code`
--

CREATE TABLE IF NOT EXISTS `pigcms_sms_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(40) NOT NULL,
  `token` char(30) NOT NULL,
  `wecha_id` char(45) NOT NULL,
  `action` char(100) NOT NULL,
  `create_time` char(11) NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sms_expendrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sms_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_snccode`
--

CREATE TABLE IF NOT EXISTS `pigcms_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sql_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_sql_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `hash` char(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `code` smallint(6) NOT NULL DEFAULT '0',
  `exception` text NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=463 ;

--
-- 转存表中的数据 `pigcms_sql_log`
--

INSERT INTO `pigcms_sql_log` (`id`, `time`, `hash`, `status`, `code`, `exception`, `update_time`, `create_time`) VALUES
(1, 1424975160, '160c0a9d0840a038692cd3ea587f397355861d9a', 1, 1054, '[CODE] : 1054 # Unknown column &apos;agentid&apos; in &apos;pigcms_weixin_account&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_weixin_account` CHANGE  `agentid`  `agentid` INT( 10 ) UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1446486586, 1446486586),
(2, 1424979120, '80e20be74db6aee33583aa23d5c2b30dc0cf4ace', 1, 0, '', 1446486588, 1446486588),
(3, 1424982720, '0592bc5cc385da28782ce1b38669ff783abbb71b', 1, 0, '', 1446486590, 1446486590),
(4, 1424989920, 'e11f3dc20321ef3d1f19130856f8fa883468e595', 1, 0, '', 1446486592, 1446486592),
(5, 1424993520, 'dc55265b173932fc57a53761b2db7e3acd690b0e', 1, 0, '', 1446486594, 1446486594),
(6, 1424997120, '3a6fb779c26802763e8d9aa2c932d84470cccd3a', 1, 0, '', 1446486596, 1446486596),
(7, 1425015120, '0dfa9af790bfb608a405808aec93e7108acb9d37', 1, 0, '', 1446486598, 1446486598),
(8, 1425018720, 'bde5e8e9a830a29e180915fabb029d83a37fc77f', 1, 0, '', 1446486600, 1446486600),
(9, 1425022320, 'd043de58d571137f6096fcaa1e56b35232b17da5', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_frontpage_action&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_frontpage_action` ADD `defaultnews_hide` VARCHAR( 100 ) NOT NULL DEFAULT &apos;&apos;', 1446486602, 1446486602),
(10, 1425025920, '2396fe9909ac9ed5c00fc06e27ce2491a5e781e8', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_frontpage_action&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_frontpage_action` CHANGE `defaultnews_hide` `defaultnews_hide` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT &apos;&apos;', 1446486604, 1446486604),
(11, 1425029520, 'fdbc0b0084d76461c5f542e4175365dde0eb44b3', 1, 0, '', 1446486606, 1446486606),
(12, 1425033120, '7b9c9c2843f3a02f0c3b0a57fbc7b9b1cdd4f487', 1, 0, '', 1446486608, 1446486608),
(13, 1425036720, '403acc0ec03899eddf8ebc3378b582839abb6d87', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_cointree&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_cointree` ADD `follow_msg` VARCHAR( 255 ) NOT NULL ,ADD `follow_btn_msg` VARCHAR( 255 ) NOT NULL ,ADD `register_msg` VARCHAR( 255 ) NOT NULL,ADD `custom_follow_url` VARCHAR( 255 ) NOT NULL', 1446486610, 1446486610),
(14, 1425040320, '0836c7e6970cddf97ee747574514944780f95f3b', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_frontpage_action&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_frontpage_action` ADD `remind_img` VARCHAR( 255 ) NOT NULL AFTER `remind_word`', 1446486612, 1446486612),
(15, 1425043920, 'adfb8cd1d025ef45c5b95ded88d9fb258fb77b3b', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_frontpage_action&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_frontpage_action` ADD `start_time` INT( 11 ) NOT NULL', 1446486614, 1446486614),
(16, 1425047520, '05c6a28e287a883c8125323b51b31877ae4f7e2f', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_frontpage_action&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE `pigcms_frontpage_action` ADD `end_time` INT( 11 ) NOT NULL', 1446486616, 1446486616),
(17, 1425094320, 'e21492b862c9c58219ab5ffe5c5a19341f4e8edd', 1, 0, '', 1446486618, 1446486618),
(18, 1425097920, '336afda5066ad81c560348d2d95cde84dd261300', 1, 0, '', 1446486619, 1446486619),
(19, 1425101520, 'cee0d647a786e8b9f01590ad9999d7af4709febd', 1, 0, '', 1446486622, 1446486622),
(20, 1425105120, '6ed243f24cb08348359245d0ff122a5c063ac8b7', 1, 0, '', 1446486623, 1446486623),
(21, 1425108720, 'ed58c08f34952f40b36bd0b9c637b62ce6a01cc7', 1, 0, '', 1446486625, 1446486625),
(22, 1425112320, '4dcc2fec98a3ee09f8318661a67fcaab9635654f', 1, 0, '', 1446486627, 1446486627),
(23, 1425115920, '3949d54722563c3e2a03ae36f43d766d1749a5f6', 1, 0, '', 1446486628, 1446486628),
(24, 1425119520, '2e893701f59a6e06095b48c4f2ffab08a542e0ce', 1, 0, '', 1446486630, 1446486630),
(25, 1425123120, '589e99dd6fee49e5a526edd3bfdc5a922487f5e4', 1, 0, '', 1446486631, 1446486631),
(26, 1425126720, 'a085bbf4940f259b7c18b98783c42d7fe3d89985', 1, 0, '', 1446486633, 1446486633),
(27, 1425130320, 'ef64efc1e87415c9dc4f4cb539f46a53343acd43', 1, 0, '', 1446486635, 1446486635),
(28, 1425133920, 'cb95ca996281836d7e829ed20cba6b98813afbda', 1, 0, '', 1446486637, 1446486637),
(29, 1425137520, 'af92c86f1231c31c1dee569b94be688259319170', 1, 0, '', 1446486638, 1446486638),
(30, 1425141120, '0a9577a6cc2d025ea0d01eb3270beba07ead57cd', 1, 0, '', 1446486640, 1446486640),
(31, 1425144720, 'a909d3478d0d350434798facca38e933a07ec908', 1, 0, '', 1446486641, 1446486641),
(32, 1425148320, '63d774dbce3b78abbc0d56b305b531c93324a929', 1, 0, '', 1446486643, 1446486643),
(33, 1425151920, '1ea6a74fbdfbe0f0a868393e3cacb82397bbbb9b', 1, 0, '', 1446486645, 1446486645),
(34, 1425155520, '03255ba63f375c85ae995be26cfd5bfe1e004e52', 1, 0, '', 1446486647, 1446486647),
(35, 1425159120, '0a7a4e4d499663e1579603a2216300e8d6cba543', 1, 0, '', 1446486648, 1446486648),
(36, 1425162720, '0cfe6e4832a82cdc75c646683dc8e8c543812c9e', 1, 0, '', 1446486650, 1446486650),
(37, 1425166320, '993efac0dd5e0d11419b2d5afdf0591b9e8b230e', 1, 0, '', 1446486652, 1446486652),
(38, 1425169920, '9db0a3bbbe1eda464f9f58c45983638e8cbe1811', 1, 0, '', 1446486654, 1446486654),
(39, 1425173520, 'dd61aef1adb447bb33af4e4c06d23f13f255b417', 1, 0, '', 1446486656, 1446486656),
(40, 1425177120, '1850e096acfed71edb28ffa0816cf6d7f0e6b070', 1, 0, '', 1446486658, 1446486658),
(41, 1425180720, '3d3b52d7a785fb76e11bdf8864312082ea3cf2cd', 1, 0, '', 1446486660, 1446486660),
(42, 1425184320, '3eae969f0509b04c2ab74230b66efc44076de246', 1, 0, '', 1446486662, 1446486662),
(43, 1425187920, '890ca2856c8e6447857df428174b50d899129ac6', 1, 0, '', 1446486664, 1446486664),
(44, 1425191520, '67d056d1e9aaf59026f3f59a5ca3318212872097', 1, 0, '', 1446486666, 1446486666),
(45, 1425195120, '6d7cd284fc5a8e54b72c96831254389d70ca74b0', 1, 0, '', 1446486668, 1446486668),
(46, 1425198720, '07099c9b01f81ab26bc2e368ddeb75433303cca0', 1, 0, '', 1446486670, 1446486670),
(47, 1425202320, '1d80c39506ef3e6684d037830d676c9ebc784e26', 1, 0, '', 1446486672, 1446486672),
(48, 1425205920, 'f9fefb1ab6d8d47dec4d441fdcd2023bcead37e1', 1, 0, '', 1446486674, 1446486674),
(49, 1425209520, 'd1850c4bf6f5e9ebbdfd31be7564d24909f2d91f', 1, 0, '', 1446486676, 1446486676),
(50, 1425216720, '827df4def193040e9353881add0cc7720551b39e', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;agreement&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_set` ADD  `agreement` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;协议&apos;,ADD  `tip` VARCHAR( 15 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;感谢语&apos;', 1446486678, 1446486678),
(51, 1425220320, 'e5db045a2c5fb54bab603039d9fa9dd226de7638', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;dateline&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_share` ADD  `dateline` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1446486680, 1446486680),
(52, 1425223980, 'bd02764803a945f815ca9c5de7fc85813a36737d', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;starttime&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation` ADD  `starttime` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;,ADD  `share_pic` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,ADD  `is_delete` TINYINT( 1 ) UNSIGNED NOT NULL DEFAULT &apos;0&apos;', 1446486682, 1446486682),
(53, 1425227580, '4f6eb613aec4db538121cb9d9d63856146f5f65f', 1, 0, '', 1446486684, 1446486684),
(54, 1425231180, '3e1b5719184961fec9ab254d4ae42fc4f1ca26a8', 1, 0, '', 1446486686, 1446486686),
(55, 1425234780, '6821db3a6101f3d1c1177b01d9dbbb8ff0e1417c', 1, 0, '', 1446486688, 1446486688),
(56, 1425238380, '81b10584b4538ecf5c43323627c26111e56c751d', 1, 0, '', 1446486690, 1446486690),
(57, 1425241980, '6a8bc61c3af966a1c96fd8bb049028683a032644', 1, 0, '', 1446486692, 1446486692),
(58, 1425245580, 'c3a251b420c254cc6e46feedb314d5f475873b2b', 1, 0, '', 1446486695, 1446486695),
(59, 1425249180, '3e00ea0d67d0e34e8fdd93455ffdae1ff6f20943', 1, 0, '', 1446486697, 1446486697),
(60, 1425256380, '7911f71c12df768c1a77d6fb9c6cd7ed0e2d8e4e', 1, 0, '', 1446486699, 1446486699),
(61, 1425259980, '4cc93174694018c4bcbec6d0def01cba9c1144a8', 1, 0, '', 1446486701, 1446486701),
(62, 1425263580, '66e66dae9ac66bfd829edd5eb29490cacedf78a5', 1, 0, '', 1446486703, 1446486703),
(63, 1425267180, '8903f7cde595b9b3dfc8ef2b96e86cb5c24e78ca', 1, 0, '', 1446486705, 1446486705),
(64, 1425270780, 'fb684cd8e5667efcf6ea1e8717cad8cb5306d63a', 1, 0, '', 1446486707, 1446486707),
(65, 1425274380, '261a835bc8721dbb02cf78a24aa8e05ac7b139f0', 1, 0, '', 1446486709, 1446486709),
(66, 1425277980, '89c7b113832a9edd61aa661fbd7db1d9966e9732', 1, 0, '', 1446486711, 1446486711),
(67, 1425281580, 'a5be730b64dc319da0cbe7a2e887952bdfe8cbb2', 1, 0, '', 1446486713, 1446486713),
(68, 1425285180, '627188f590b6447a0475d6b204b83cd7b0ec52ff', 1, 0, '', 1446486715, 1446486715),
(69, 1425288780, 'a466f8f5230e4abcc0dba5b5b1542bbd1fd45e62', 1, 0, '', 1446486717, 1446486717),
(70, 1425292380, '9b6566fa8beb72623370ee9778e5b0bb3ae63141', 1, 0, '', 1446486719, 1446486719),
(71, 1425295980, '85a9f693e106f177a57470560fdf623bac30e246', 1, 0, '', 1446486721, 1446486721),
(72, 1425299580, '215b614b378f43df5f62aef2fb9a804e36d14512', 1, 0, '', 1446486723, 1446486723),
(73, 1425303180, '815075ace68d1087b21e5477376e19fa4bd269a5', 1, 0, '', 1446486725, 1446486725),
(74, 1425306780, 'cff24cc2f45415547db56d154043565a46475aee', 1, 0, '', 1446486727, 1446486727),
(75, 1425310380, 'a3820839483e1a330cb4d57681948a57d08ee459', 1, 0, '', 1446486729, 1446486729),
(76, 1425310500, 'c70ca005507e3efefef93df851746d49644c9d8c', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;isadmin&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_cashier_merchants` ADD `isadmin` TINYINT( 1 ) UNSIGNED NOT NULL DEFAULT &apos;0&apos; COMMENT &apos;1是总后台生成账号&apos;', 1446486731, 1446486731),
(77, 1425313980, 'dc8bdec0f4cfbcf1084c6a791d42a50e01493416', 1, 0, '', 1446486733, 1446486733),
(78, 1425317580, '5812640eda0f4b22912015608fedb13943f1d61f', 1, 0, '', 1446486735, 1446486735),
(79, 1425321180, '9d3b7599868e681ddc792ab250e92919a612b193', 1, 0, '', 1446486737, 1446486737),
(80, 1425324780, '00e6705bc3393d8f713902b3707677bd48cf6e68', 1, 0, '', 1446486739, 1446486739),
(81, 1425328380, 'aa601d57281ad6d3efc4b36b5b8db00f1e537b18', 1, 0, '', 1446486740, 1446486740),
(82, 1425331980, '6aaf8c9c8e504505eb70283cc59d1071371fd724', 1, 0, '', 1446486742, 1446486742),
(83, 1425335580, 'ba8dfa7b9b20fec8f93e3e7b27ebabe4ac19ca51', 1, 0, '', 1446486744, 1446486743),
(84, 1425339180, '640078928d1f550a84f8ce000ecbc5a548c1fbc1', 1, 0, '', 1446486745, 1446486745),
(85, 1425342780, 'f2ed5cbaa084de40f8b130d37b0693a8681b0d5e', 1, 0, '', 1446486747, 1446486747),
(86, 1425346380, 'dc5bbb9350ea80e90d3194baaab811eda9924173', 1, 0, '', 1446486748, 1446486748),
(87, 1425349980, 'b95bf8daf5980f272e015268c50b58c733c1d635', 1, 0, '', 1446486750, 1446486750),
(88, 1425353580, '53fa4b3c0c45350fde343ae838c02f925c817df0', 1, 0, '', 1446486752, 1446486752),
(89, 1425357180, 'be7b98dc1749097f9cbce283be5f6add5512c3e8', 1, 0, '', 1446486754, 1446486754),
(90, 1425360780, '3ad29beb885f043bf9cee5e195297c0a05b3dffc', 1, 0, '', 1446486756, 1446486756),
(91, 1425364380, '50238f99aa8308b8c3b0308b72b118721c193481', 1, 0, '', 1446486758, 1446486758),
(92, 1425367980, '71d7619278158207cc7914e56baef2e530ad8958', 1, 0, '', 1446486760, 1446486760),
(93, 1425375180, '6a5bc8bf62bdeb70468f7b8df360c884fe0d6737', 1, 0, '', 1446486762, 1446486762),
(94, 1425378780, 'ee8cabb92458ebe1319164c48ce363cd4139f73e', 1, 0, '', 1446486763, 1446486763),
(95, 1425382380, '066ac0d34c0dcf6ef265c31838d60114789ea491', 1, 0, '', 1446486765, 1446486765),
(96, 1425385980, '37f772e9da0b0b8295c312b08cccc8f1553a3144', 1, 0, '', 1446486767, 1446486767),
(97, 1425389580, 'bbfd34d6c2aebea8e2e5a02cf51cb7899b72d3c4', 1, 0, '', 1446486768, 1446486768),
(98, 1425396780, '7a10c38a9553e3867917b2fb6bee64ad2b3c156c', 1, 0, '', 1446486770, 1446486770),
(99, 1425411180, 'f2f442faf0cf97c96798006d8a53406d719f1b91', 1, 0, '', 1446486772, 1446486771),
(100, 1425414780, 'e4e13921c8b385472b7cc656d6ccdbd7a9442f60', 1, 0, '', 1446486773, 1446486773),
(101, 1425418380, '6aad5ad8ef7759cbdd6db2e22daaf7e6cef0fb05', 1, 0, '', 1446486775, 1446486775),
(102, 1425425580, '3e107642d555172807af67e5c86682bda4dc76d9', 1, 0, '', 1446486776, 1446486776),
(103, 1425432780, 'fdf6ca0b0ebd70741d1d9cc63c658ef7ff93b14e', 1, 0, '', 1446486778, 1446486778),
(104, 1425436380, '76b52d8550deab25c086b2c3c200e556e9f9cb45', 1, 0, '', 1446486779, 1446486779),
(105, 1425439980, 'b4392a4b240313992dd87359a0597d16f400c926', 1, 0, '', 1446486781, 1446486781),
(106, 1425443580, '377202f1a9a39c78954f6cd2c02dc1ef22ca83d2', 1, 0, '', 1446486783, 1446486783),
(107, 1425447180, '7412c44db248a8a8e976ada49efcf40f5c63d391', 1, 1146, '[CODE] : 1146 # Table &apos;pigcms.pigcms_cashier_category&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE  `pigcms_cashier_category` ADD  `icon` VARCHAR( 300 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL', 1446486785, 1446486785),
(108, 1425454380, '6d0615356926c92c30fcdf3aeb2dd4d09910fcf0', 1, 0, '', 1446486786, 1446486786),
(109, 1425457980, '3aa955816de03f8b4a23977a236dad175d25b709', 1, 0, '', 1446486788, 1446486788),
(110, 1425461580, '441958ef42e358a0b5593cc048378a5fa6557d7e', 1, 0, '', 1446486789, 1446486789),
(111, 1425465180, 'ae4e258fe71b2148669eb44cac190117ad903501', 1, 0, '', 1446486791, 1446486791),
(112, 1425468780, '5abf790781e88e4c7ad649b81263a35c5bdb5ef8', 1, 0, '', 1446486793, 1446486793),
(113, 1425472380, '1c3df76c2d885acee2881be4ae0ee1e50e23c52a', 1, 0, '', 1446486795, 1446486794),
(114, 1425475980, 'a382a259ed1ba06f1b8b6ba47b164f77e3a2644e', 1, 0, '', 1446486796, 1446486796),
(115, 1425479580, '07ab97f5edcfcafc98a127978950c485d3261fcc', 1, 0, '', 1446486798, 1446486798),
(116, 1425483180, 'e5d79173285c5fd9dc46ddc188cdf92ba8dee068', 1, 0, '', 1446486800, 1446486799),
(117, 1425486780, '5e54823de61c6058f7c066d4f83125abc16ba31a', 1, 0, '', 1460429601, 1460429601),
(118, 1425490380, 'bb5a67665b465be0ad6a3326d1bb43b15ea1a2f8', 1, 0, '', 1460429603, 1460429603),
(119, 1425493980, 'dc6fc8e3f7b4beeae420b0e247e3391229e02e42', 1, 0, '', 1460429604, 1460429604),
(120, 1425497580, '7750986b8611404488b0c2596c72c5b4e2bf4c7d', 1, 0, '', 1460429606, 1460429605),
(121, 1425501180, '65dc5819fd41ad80c4da588a24ce94a2bb3ad72f', 1, 0, '', 1460429607, 1460429607),
(122, 1425504780, '66e66dae9ac66bfd829edd5eb29490cacedf78a5', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;sid&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_company` ADD `sid` VARCHAR( 30 ) NOT NULL', 1460429608, 1460429608),
(123, 1425508380, '00e6705bc3393d8f713902b3707677bd48cf6e68', 1, 1061, '[CODE] : 1061 # Duplicate key name &apos;IDX_TOKEN&apos;\n [ SQL语句 ] : ALTER TABLE pigcms_api ADD INDEX IDX_TOKEN (TOKEN)', 1460429609, 1460429609),
(124, 1425511980, '6789ef53a7622bb968da0999011bb525afc95d0b', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;update_time&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_subscribe_reply` ADD `update_time` int( 10 ) NOT NULL', 1460429611, 1460429611),
(125, 1425519180, '019510a90532adaf1f067fe069ed6d4304e7962d', 1, 0, '', 1460429613, 1460429613),
(126, 1425522780, 'cef33c4d86f78ca83515cda74680502dbd04f96f', 1, 0, '', 1460429615, 1460429615),
(127, 1425526380, 'f46c705de6693b459e840e64935ecabe8914fded', 1, 0, '', 1460429617, 1460429617),
(128, 1425529980, '53dd95684dffb3634f2698255ad2126121e5d152', 1, 0, '', 1460429619, 1460429619),
(129, 1425533580, 'b33645d25f90d2f02b6e594e1f2f30b45368604c', 1, 0, '', 1460429621, 1460429621),
(130, 1425537180, '51f8bdcad7fd9f1f50a0d3ff06df7f46685043a5', 1, 0, '', 1460429623, 1460429623),
(131, 1425540780, '4e936930ead0c2ae12ce95d403fdf5167b6b5d33', 1, 0, '', 1460429625, 1460429625),
(132, 1425544380, 'b1cf0b4b2e3b625954dcba682a77323e1f19619e', 1, 0, '', 1460429627, 1460429627),
(133, 1425547980, '91483912f87f8bf4eea426ae5471683f00ad9e67', 1, 0, '', 1460429629, 1460429629),
(134, 1425551580, '931c68f1182a01792ce2800baa77ea58d5c5fffe', 1, 0, '', 1460429631, 1460429631),
(135, 1425555180, '64a6b786a5e7918a5d21013d3db2981356be0a9a', 1, 0, '', 1460429633, 1460429633),
(136, 1425558660, '30db0f68d6358df0e562b92760ff295ba7fbcb6a', 1, 0, '', 1460429635, 1460429635),
(137, 1425558780, 'b7fcdbae6dec2dd9b0e5ec9771e347e0ddaee30c', 1, 0, '', 1460429637, 1460429637),
(138, 1425562380, '106bcee3147c85fd9cc6b4f137f2598c33736e6c', 1, 0, '', 1460429639, 1460429639),
(139, 1425565980, '2bbaa9e1163960a9c850af809d390e64b0d914b6', 1, 0, '', 1460429641, 1460429641),
(140, 1425569580, '606a244fe011290c282cfb2aa9e821e035f10908', 1, 0, '', 1460429643, 1460429643),
(141, 1425573180, '156691438a88104e5b8b44b0f5a980808ddaf1ba', 1, 1146, '[CODE] : 1146 # Table &apos;xiaozhu2.pigcms_cashier_category&apos; doesn&apos;t exist\n [ SQL语句 ] : ALTER TABLE  `pigcms_cashier_category` ADD  `is_home_show` TINYINT( 1 ) UNSIGNED NOT NULL DEFAULT  &apos;0&apos; COMMENT  &apos;是否首页显示（0：隐藏，1：显示）&apos;', 1460429645, 1460429645),
(142, 1425576780, '42ae0a8851acd939d972b677c05921542e400112', 1, 0, '', 1460429647, 1460429647),
(143, 1425580380, 'e20c3de08e2b186109ae76fa6c450c1b6557b4d4', 1, 0, '', 1460429649, 1460429649),
(144, 1425583980, '4a1de731d34198439fe9fb27c4608c23c94176fa', 1, 0, '', 1460429651, 1460429651),
(145, 1425587580, 'b30f1141d95b777552310ceeb3692dea8684cee0', 1, 0, '', 1460429653, 1460429653),
(146, 1425591180, '0e191c312ccd6bd31b4e3dab4a1dac7afdc5df4f', 1, 0, '', 1460429655, 1460429655),
(147, 1425594780, 'c5f7c6085ce5ac61a73bcdcede747789a0ec5a80', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;status&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_subscribe_reply` ADD `status` TINYINT( 1 ) NOT NULL', 1460429657, 1460429657),
(148, 1425598380, 'fda03744eb9c286ec24c2c28098fff8f134758e7', 1, 0, '', 1460429659, 1460429659),
(149, 1425601980, '765ece4b3e1fe9a80943e52f3b864fdbeaa37b98', 1, 0, '', 1460429661, 1460429661),
(150, 1425605580, 'c3e00b816f0873bae01ed11a0327f100a34c7e7a', 1, 0, '', 1460429663, 1460429663),
(151, 1425609180, 'b0798bb2ce081495f41978c87d61272f11d96e82', 1, 0, '', 1460429665, 1460429665),
(152, 1425612780, 'ab564dc1b0d1ae091b8b9459480436003bb1c5e9', 1, 0, '', 1460429667, 1460429667),
(153, 1425616380, 'a19266bb85ae33bbb80223c9459ede8ec769d9dd', 1, 0, '', 1460429669, 1460429669),
(154, 1425619980, 'dac1b689a5df65c1c9079e460c81c32bc995f3bf', 1, 0, '', 1460429671, 1460429671),
(155, 1425623580, 'bbef910051708904ddb9075f8931f557903dded0', 1, 0, '', 1460429673, 1460429673),
(156, 1425627180, '854090fed5ea459c8ed918004b6afc59ffded603', 1, 0, '', 1460429675, 1460429675),
(157, 1425630780, 'c68147a953a92295d64653be518a83defb089b24', 1, 0, '', 1460429677, 1460429677),
(158, 1425634380, 'af51679ff9c4a7ef3933bc717417406e6a727502', 1, 0, '', 1460429679, 1460429679),
(159, 1425637980, '8ecec4b18c340cc83503213374a81d4417bca2f4', 1, 0, '', 1460429681, 1460429681),
(160, 1425641580, '09553225f58742c2f9f3e87ec9a0ee189ece0ca5', 1, 0, '', 1460429683, 1460429683),
(161, 1425645180, 'd2ce33f66f851c0c9ee122483c2c3ebfb18db1fa', 1, 0, '', 1460429685, 1460429685),
(162, 1425648780, '6ec6a4463a2924eec6f6706f8aac7204ba655c4f', 1, 0, '', 1460429687, 1460429687),
(163, 1425652380, '6f63be25ee428cf54f7d0d70cf84818754d0333c', 1, 0, '', 1460429689, 1460429689),
(164, 1425655980, 'd60b7ef0feec8d912323442fccc977e9d3f5781f', 1, 0, '', 1460429691, 1460429691),
(165, 1425659580, '6f9675cca98bb12b043f5b13a725c7b6c1951a98', 1, 0, '', 1460429693, 1460429693),
(166, 1425663180, 'a6b9798f147e503931fd3e03ee28924c12442e9f', 1, 0, '', 1460429695, 1460429695),
(167, 1425666780, '5190f903d286279a459ee0621bfdd34516c4ca76', 1, 0, '', 1460429697, 1460429697),
(168, 1425670380, 'ff5cfefbb2580a3e3689c6e284660452a3001bff', 1, 0, '', 1460429699, 1460429699),
(169, 1425673980, '3bd0ae14841774972404f1b7e5b77c89188525e2', 1, 0, '', 1460429701, 1460429701),
(170, 1425677580, 'ed287e1e8d0722baec16ac70036a9d197457583a', 1, 0, '', 1460429703, 1460429703),
(171, 1425681180, '946c2eeff40fe71e6b220c6422aeb37b049298b3', 1, 0, '', 1460429705, 1460429705),
(172, 1425684780, '3df694aaba14e3d96c8c7e173248bfdc848d0b2a', 1, 0, '', 1460429707, 1460429707),
(173, 1425688380, '4f13de6729c92292c97b56766ee433e5cc9e70ca', 1, 0, '', 1460429709, 1460429709),
(174, 1425691980, 'b75f0a64d513c05a566fda1a1f411faffb965419', 1, 0, '', 1460429711, 1460429711),
(175, 1425695580, 'd9cccd36053b0aadc9097c2bf56f7dcc25348a91', 1, 0, '', 1460429713, 1460429713),
(176, 1425699180, 'b7ffac413aa088f1af2f30212efecbc44ca72ac0', 1, 0, '', 1460429715, 1460429715),
(177, 1425702780, '8347668b71640f3fd9a841903d35cffafa987c93', 1, 0, '', 1460429717, 1460429717),
(178, 1425706380, '3a8ea3b645adea7ae7980b6e7def8ba7ba7abac9', 1, 0, '', 1460429719, 1460429719),
(179, 1425709980, '5478c20c6c77d26e926f1c1d7c14326469bf7713', 1, 0, '', 1460429721, 1460429721),
(180, 1425713580, '6f2f8b57e0ac6a5baf0fc20ab132f490a240e10f', 1, 0, '', 1460429723, 1460429723),
(181, 1425717180, '575e5f05ab88b834164b3b710fe68fcee0a25f01', 1, 0, '', 1460429725, 1460429725),
(182, 1425720780, 'f8711744eab4cac5b410a2b591d6a44aa5c5e028', 1, 0, '', 1460429727, 1460429727),
(183, 1425724380, '2a5d6f42c9777d7540f9dce0b840fe562887c52e', 1, 0, '', 1460429729, 1460429729),
(184, 1425727980, '0724bf83f3472c64297c30322df81fef015b89a4', 1, 0, '', 1460429731, 1460429731),
(185, 1425731580, '8013841afee601c63ad7e07f6580054224319cb2', 1, 0, '', 1460429733, 1460429733),
(186, 1425735180, '9043cc8a3185aea5c15d0fa4c7dfa096a7364726', 1, 0, '', 1460429735, 1460429735),
(187, 1425738780, 'f2e22ae837aed050c8456e2da20f81c90f673682', 1, 0, '', 1460429737, 1460429737),
(188, 1425742380, 'fa0b05757f0440fd689ae8603b1319dbcf2b8186', 1, 0, '', 1460429739, 1460429739),
(189, 1425745980, 'd0d77557a8e8dd0d0e379889119fa01d1538da45', 1, 0, '', 1460429741, 1460429741),
(190, 1425749580, '722fbcc09621dcf79a2cd87852f8e3de3009a1e8', 1, 0, '', 1460429744, 1460429744),
(191, 1425753180, '48bf304b97f005be37f38ac7b114eacca9ca5b05', 1, 0, '', 1460429746, 1460429746),
(192, 1425756780, 'd876ad43c46f803b3176fbf17f16526b4bacdb09', 1, 0, '', 1460429748, 1460429748),
(193, 1425760380, '5351a7a32461c0be3957c82273d4fffab799bade', 1, 0, '', 1460429750, 1460429750),
(194, 1425792780, '5b4a57cddef17f84bd5c7dbbf33c40c60146f9df', 1, 0, '', 1460429752, 1460429752),
(195, 1425828780, 'a69bef55a95f9800d47d7b1f6eac5f1bb6509807', 1, 0, '', 1460429753, 1460429753),
(196, 1425832380, '1578c9c1ae09b8f07e6927f2fe780efdb8f3d788', 1, 0, '', 1460429755, 1460429754),
(197, 1425835980, 'aec9fb0dea38de791f1cbb6ca18990d9fd85ca0d', 1, 0, '', 1460429756, 1460429756),
(198, 1425839580, '3fd564f5c1e0bcdda0f385403466ce089740d8b1', 1, 0, '', 1460429757, 1460429757),
(199, 1425900780, 'b438118c526cc76d44178f895a24ff424fa4a035', 1, 0, '', 1460429759, 1460429759),
(200, 1425904380, 'a940b0da22ebc3b1942b15ab17d76c37a775e517', 1, 0, '', 1460429760, 1460429760),
(201, 1425907980, '7061212feb7c0fce65e8c96851fb5fd6f30efeef', 1, 0, '', 1460429761, 1460429761),
(202, 1425911580, '1f7a338e192cd8f078ab64a626efc840314c4546', 1, 0, '', 1460429763, 1460429763),
(203, 1425915180, '1a1f9395fb0d941145e16caeef3610a931a808c9', 1, 0, '', 1460429764, 1460429764),
(204, 1425994380, '68f343baea3219bb92f9adff776a36793f566245', 1, 0, '', 1460429765, 1460429765),
(205, 1426001580, 'a9236f4238eaffbafb26beac2568a7928ed4ff8c', 1, 0, '', 1460429767, 1460429767),
(206, 1426167180, '62c03ae1dbf256608bfc26ff50e202db98a16970', 1, 0, '', 1460429768, 1460429768),
(207, 1426185180, 'cb96be41f8a6b2321a57c2a706e1e517fba08827', 1, 0, '', 1460429769, 1460429769),
(208, 1426188780, '78780b217e54b3d31d2b9b1bcf8341863c980945', 1, 0, '', 1460429771, 1460429771),
(209, 1426192380, '0eb761ca6ed362bfb8206cc5aff6b1c740a6e001', 1, 0, '', 1460429772, 1460429772),
(210, 1426195980, '9489fa552f6faf38fb844f8c10106e9b92ce1f8d', 1, 0, '', 1460429773, 1460429773),
(211, 1426199580, '702f4b0f191fd99409c97688cd4e6c90e7ef23a4', 1, 0, '', 1460429775, 1460429775),
(212, 1426203180, 'ef97aa0767e670456bfa9200548fb740220fa4eb', 1, 0, '', 1460429776, 1460429776),
(213, 1426206780, '0d5a17787c1fcdaf0ed8be232cd181b3d3ed4988', 1, 0, '', 1460429777, 1460429777),
(214, 1426210380, '09556988df032e583bcf5ac29521574e3a3aa437', 1, 0, '', 1460429779, 1460429779),
(215, 1426213980, '4c0db49f6f4504a986ddabcebafbd78309b29219', 1, 0, '', 1460429781, 1460429781),
(216, 1426217580, 'c4ac97c8e080aa7be653ba77f45dcbf23b76edc9', 1, 0, '', 1460429782, 1460429782),
(217, 1426221180, 'f326232d7e347c515c6260f35637bd5fcc598c14', 1, 0, '', 1460429784, 1460429784),
(218, 1426224780, 'fa731a489f1e39f07ca844421951271cd188f159', 1, 0, '', 1460429785, 1460429785),
(219, 1426228380, 'fa731a489f1e39f07ca844421951271cd188f159', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;signin_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `signin_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429786, 1460429786),
(220, 1426231980, 'fd020a858fac3f37a70a263e0b4d56a49223dcdf', 1, 0, '', 1460429788, 1460429787),
(221, 1426235580, 'ebedf147ba61b9827dcfbafe74c9f22c2f88219c', 1, 0, '', 1460429789, 1460429789),
(222, 1426239180, '0a4ab60dc7161f94b364a6658aa422b6fe799592', 1, 0, '', 1460429790, 1460429790),
(223, 1426242780, '9dc63753923cf8e06231d84471db899391e01793', 1, 0, '', 1460429792, 1460429792),
(224, 1426246380, 'bf7ae27b9e3fc3c478629f4404996329ffd9a1f2', 1, 0, '', 1460429796, 1460429796),
(225, 1426249980, '663a89536823143e435f67cafe640069bf00471c', 1, 0, '', 1460429797, 1460429797),
(226, 1426253580, '7a920e7304fe923b561f8774e1f8d5fad01ea1e7', 1, 0, '', 1460429799, 1460429799),
(227, 1426257180, '9fcb4aa9534f113fd264d49d6663b2498b300e12', 1, 0, '', 1460429800, 1460429800),
(228, 1426260780, '36b5452f2f9c0e8d62e1699c415997902c263e12', 1, 0, '', 1460429801, 1460429801),
(229, 1426264380, '40008c1ec6946eb658adb4378fc9106e45cc4778', 1, 0, '', 1460429803, 1460429803),
(230, 1426267980, 'f9b8191a614efaa924a87153d51291218b902ec3', 1, 0, '', 1460429805, 1460429805),
(231, 1426271580, 'dbc5cd7c718e97f57a72de28266c53173426b776', 1, 0, '', 1460429806, 1460429806),
(232, 1426275180, '99795b919cf88f4058a54167f692cd3d7b72869a', 1, 0, '', 1460429808, 1460429808),
(233, 1426278780, '0be884d01ca429d8d01e57335d2df223e40618eb', 1, 0, '', 1460429809, 1460429809),
(234, 1426282380, '6e9e980d03f52c0ca81e206497950a54e8805a89', 1, 0, '', 1460429810, 1460429810),
(235, 1426365180, '3bff518fce07501de924af0a1c5f222ff3a7c35c', 1, 0, '', 1460429812, 1460429812),
(236, 1426368780, '154748cf2c2bfd2366fdb66fb3ae0595ec52e956', 1, 0, '', 1460429813, 1460429813),
(237, 1426372380, '6102e7c1b2c1d61a2affe029be8440171ee59730', 1, 0, '', 1460429814, 1460429814),
(238, 1426375980, '00a374400aeaea78015535867848fae840d919e2', 1, 0, '', 1460429816, 1460429816),
(239, 1426383180, '8488098a002bbcf7456d0c507d40d95fc52de22d', 1, 0, '', 1460429817, 1460429817),
(240, 1426386780, '374b9ed356dc4bc03ccb526fd3687dd2b873c570', 1, 0, '', 1460429818, 1460429818),
(241, 1426390380, 'e0295bdfc0a2d50a2e2144617159ea462bfaf67b', 1, 0, '', 1460429820, 1460429820),
(242, 1426393980, '6b1e0f0f7eeabdf926cdbfd121c2e5347712d54d', 1, 0, '', 1460429821, 1460429821),
(243, 1426397580, '2904777376e70539b6eb6b380e550ce1b622d410', 1, 0, '', 1460429822, 1460429822),
(244, 1426401180, '01fc3c761f10b0cb118d398516037cf695e9cd5b', 1, 0, '', 1460429824, 1460429824),
(245, 1426404780, 'ae14353150cd851eafb2cc412dcd8ee7f0ac9dec', 1, 0, '', 1460429826, 1460429826),
(246, 1426408380, '0a9577a6cc2d025ea0d01eb3270beba07ead57cd', 1, 0, '', 1460429828, 1460429828),
(247, 1426411980, 'a909d3478d0d350434798facca38e933a07ec908', 1, 0, '', 1460429830, 1460429830),
(248, 1426415580, '63d774dbce3b78abbc0d56b305b531c93324a929', 1, 0, '', 1460429832, 1460429832),
(249, 1426419180, '1ea6a74fbdfbe0f0a868393e3cacb82397bbbb9b', 1, 0, '', 1460429834, 1460429834),
(250, 1426422780, '03255ba63f375c85ae995be26cfd5bfe1e004e52', 1, 0, '', 1460429836, 1460429836),
(251, 1426426380, '0a7a4e4d499663e1579603a2216300e8d6cba543', 1, 0, '', 1460429838, 1460429838),
(252, 1426429980, '827df4def193040e9353881add0cc7720551b39e', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;agreement&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_set` ADD  `agreement` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;协议&apos;,ADD  `tip` VARCHAR( 15 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;感谢语&apos;', 1460429840, 1460429840),
(253, 1426433580, 'e5db045a2c5fb54bab603039d9fa9dd226de7638', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;dateline&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_share` ADD  `dateline` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429842, 1460429842),
(254, 1426437180, 'bd02764803a945f815ca9c5de7fc85813a36737d', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;starttime&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation` ADD  `starttime` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;,ADD  `share_pic` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,ADD  `is_delete` TINYINT( 1 ) UNSIGNED NOT NULL DEFAULT &apos;0&apos;', 1460429844, 1460429844),
(255, 1426440780, '4f6eb613aec4db538121cb9d9d63856146f5f65f', 1, 0, '', 1460429846, 1460429846),
(256, 1426444380, '3e1b5719184961fec9ab254d4ae42fc4f1ca26a8', 1, 0, '', 1460429848, 1460429848),
(257, 1426447980, '6a8bc61c3af966a1c96fd8bb049028683a032644', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;note&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_medal` ADD  `note` VARCHAR( 15 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;奖牌说明&apos;', 1460429850, 1460429850),
(258, 1426451580, '3e00ea0d67d0e34e8fdd93455ffdae1ff6f20943', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;account&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation` ADD  `account` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;款项去向&apos;', 1460429852, 1460429852),
(259, 1426455180, '26e417e9d9754a7c854f2a744d5f1eb92c73f483', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;tip&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_donation_set` ADD  `tip` VARCHAR( 15 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT  &apos;感谢语&apos;', 1460429854, 1460429854),
(260, 1426458780, '01fc3c761f10b0cb118d398516037cf695e9cd5b', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_time&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_time` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429856, 1460429856),
(261, 1426462380, 'ae14353150cd851eafb2cc412dcd8ee7f0ac9dec', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_state&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_state` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429858, 1460429858),
(262, 1426465980, 'b4a991cd1898c5033a54bbd16354fe5ba3c283c0', 1, 0, '', 1460429860, 1460429860),
(263, 1426469580, '0c2791b5529306ede810db04548968694a517902', 1, 0, '', 1460429862, 1460429862),
(264, 1426473180, 'a1f9654e341022ef653dbd6c4c892f7f154ce3b5', 1, 0, '', 1460429864, 1460429864),
(265, 1426476780, '1231be808156a6680f9e24ddbd8788a70f9d6cef', 1, 0, '', 1460429866, 1460429866),
(266, 1426480380, '5f7aaceeda7e58857abfafef8378f5dc9ad81264', 1, 0, '', 1460429868, 1460429868),
(267, 1426483980, 'cb5a3270d6870c3a841b2930dea1d5bde53a27ad', 1, 0, '', 1460429870, 1460429870),
(268, 1426487580, '5064b12aac6c850db54f719acf9ae25c3040e683', 1, 0, '', 1460429872, 1460429872),
(269, 1426491180, 'c2cbebff9965962f38e14a998b273237a67fba90', 1, 0, '', 1460429874, 1460429874),
(270, 1426494780, '1ffb7416006f55bb6675452545feef8b6be7e81a', 1, 0, '', 1460429876, 1460429876),
(271, 1426498380, 'e7d4168093b0521146794873f78bf8bc406e0a44', 1, 0, '', 1460429878, 1460429878),
(272, 1426501980, 'eff5529530127b7c3729c192c072a5ab63461ccc', 1, 0, '', 1460429880, 1460429880),
(273, 1426505580, '0d5d28e802672d34c1bea9dc5e1ce348e051cb13', 1, 0, '', 1460429882, 1460429882),
(274, 1426509180, '81a3a0e9fdf3ed19a3ab9c3e77fa56ff12cbde7a', 1, 0, '', 1460429884, 1460429884),
(275, 1426512780, '94942e7f834e5ecf1f5a613cbe1095852505dfd8', 1, 0, '', 1460429886, 1460429886),
(276, 1426516380, '090ebcba3826553d4acb41f67b5134b30b31e1b6', 1, 0, '', 1460429888, 1460429888),
(277, 1426519980, '0046341d4ea67bc4726c21169d746b56a0d00347', 1, 0, '', 1460429890, 1460429890),
(278, 1426523580, '5444a14d1163b70557c57b5d37b87a76745f5214', 1, 0, '', 1460429892, 1460429892),
(279, 1426527180, '4c00182ca6414ef82eee7aff77ef6b0d5f639910', 1, 0, '', 1460429894, 1460429894),
(280, 1426530780, 'cf5671e52fa4564921a9438639187114d7583940', 1, 0, '', 1460429896, 1460429896),
(281, 1426534380, '2c6c674869bd6d6b36a7da6b0b3f3ba94120bc4e', 1, 0, '', 1460429898, 1460429898),
(282, 1426537980, 'e29163297842fd4f6c09a997cbd52f0bde1370ae', 1, 0, '', 1460429900, 1460429900),
(283, 1426541580, '0a6a6d0f0c77ea924388928bee97eece5dd45d84', 1, 0, '', 1460429902, 1460429902),
(284, 1426545180, 'a421a8c3c51c4279ea9240c604515829230e2ef0', 1, 0, '', 1460429904, 1460429904),
(285, 1426548780, '89329cfa408ef9f64e472ff804aaf06e44fb7885', 1, 0, '', 1460429906, 1460429906),
(286, 1426552380, 'cc7f6d9d08c73e79235abf2d711a354c1c0da11f', 1, 0, '', 1460429908, 1460429908),
(287, 1426555980, '04253a61e844fc61bf1afba9851c1bf80c49f73b', 1, 0, '', 1460429910, 1460429910),
(288, 1426559580, '6626156b3ef14d2e9c9c3d8b5443ca36c47879b0', 1, 0, '', 1460429911, 1460429911),
(289, 1426563180, '60c5e2f6ea0ce17849bed679a30081bacef311d4', 1, 0, '', 1460429913, 1460429913),
(290, 1426566780, '054c9671b22550ed95de283cf38a60bd3665077b', 1, 0, '', 1460429915, 1460429915),
(291, 1426570380, 'f050c8db1b351027773d30701a816a0647d68d1b', 1, 0, '', 1460429917, 1460429917),
(292, 1426573980, 'edad8fdfdc01531d370acdd9e7d1e285603cfae1', 1, 0, '', 1460429919, 1460429919),
(293, 1426577580, '448a7f0da3d2713203871c3574aac5375b073486', 1, 0, '', 1460429921, 1460429921),
(294, 1426581180, '5e33be2408d0659f7618463e7a56a9a3a818eb92', 1, 0, '', 1460429923, 1460429923),
(295, 1426584780, '19d578513b84d6bded13a75d9107f241c65695ae', 1, 0, '', 1460429925, 1460429925),
(296, 1426588380, 'bbe1fc0edd7ec6c24cad9177b00a59738d23f916', 1, 0, '', 1460429927, 1460429927),
(297, 1426591980, '45e7c973124ab2fd8a472374258d15c2b3ddc87b', 1, 0, '', 1460429929, 1460429929),
(298, 1426595580, '84cfbb96d1eca75508ab3d52749284c4d788192d', 1, 0, '', 1460429931, 1460429931),
(299, 1426599180, 'b4953ebbdfcca3e18bafa616ccb37fca2df52005', 1, 0, '', 1460429933, 1460429933),
(300, 1426602780, '6776a60b4f17cd0da4894feeda6764dc11fea2b1', 1, 0, '', 1460429935, 1460429935),
(301, 1426606380, '9e97e256adfce8f04eef69b9f0d1afdafac78690', 1, 0, '', 1460429937, 1460429937),
(302, 1426609980, '1eec5ade6ddc05fe2e5238b8a638a69b83d3b629', 1, 0, '', 1460429939, 1460429939),
(303, 1426613580, '9be03a713c8ba0f23a23e5d4da68fe02505bf705', 1, 0, '', 1460429941, 1460429941),
(304, 1426617180, 'f9e7a3bc0515abf34f4bbbfec18f83a068d4a41a', 1, 0, '', 1460429943, 1460429943),
(305, 1426620780, 'fad3019f21bd44e3741b0dcf3a998635538fc97d', 1, 0, '', 1460429945, 1460429945),
(306, 1426624380, '22307c11372fa4014a68c4dcdc89e5860fab889a', 1, 0, '', 1460429947, 1460429947),
(307, 1426627980, '79a802ef63ef35eac95c66490e1c6ee630cec265', 1, 0, '', 1460429949, 1460429949),
(308, 1426631580, '0ca471cfe42f2f2cba3e2ef0d39f5fbf9d6d92dc', 1, 0, '', 1460429951, 1460429951),
(309, 1426635180, 'ee6ccbc93b1585f3efe742e6a3716bb626742606', 1, 0, '', 1460429953, 1460429953),
(310, 1426638780, '78780b217e54b3d31d2b9b1bcf8341863c980945', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;type&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wall_message` ADD `type` varchar(50) NOT NULL DEFAULT &apos;text&apos;', 1460429954, 1460429954),
(311, 1426642380, '0eb761ca6ed362bfb8206cc5aff6b1c740a6e001', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;notice&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `notice` text COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429956, 1460429956),
(312, 1426645980, '9489fa552f6faf38fb844f8c10106e9b92ce1f8d', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;red_packet_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `red_packet_id` int unsigned NOT NULL', 1460429957, 1460429957),
(313, 1426649580, '702f4b0f191fd99409c97688cd4e6c90e7ef23a4', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;jiugongge_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `jiugongge_id` int(10) unsigned NOT NULL', 1460429958, 1460429958),
(314, 1426653180, 'ef97aa0767e670456bfa9200548fb740220fa4eb', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;zajindan_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `zajindan_id` int(10) unsigned NOT NULL', 1460429960, 1460429960),
(315, 1426656780, '0d5a17787c1fcdaf0ed8be232cd181b3d3ed4988', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;shuiguoji_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `shuiguoji_id` int(10) unsigned NOT NULL', 1460429961, 1460429961),
(316, 1426660380, '09556988df032e583bcf5ac29521574e3a3aa437', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;guaguaka_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `guaguaka_id` int(10) unsigned NOT NULL', 1460429962, 1460429962),
(317, 1426663980, '4c0db49f6f4504a986ddabcebafbd78309b29219', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;dazhuanpan_id&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `dazhuanpan_id` int(10) unsigned NOT NULL', 1460429964, 1460429964),
(318, 1426667580, 'c4ac97c8e080aa7be653ba77f45dcbf23b76edc9', 1, 1050, '[CODE] : 1050 # Table &apos;pigcms_scene_active&apos; already exists\n [ SQL语句 ] : CREATE TABLE `pigcms_scene_active` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `scene_id` int(11) NOT NULL,  `active_id` int(11) NOT NULL,  `token` varchar(200) NOT NULL,  `wecha_id` varchar(200) NOT NULL,  `type` varchar(200) NOT NULL,  `create_time` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8', 1460429965, 1460429965),
(319, 1426671180, 'f326232d7e347c515c6260f35637bd5fcc598c14', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;shake_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `shake_background` varchar(200) NOT NULL', 1460429966, 1460429966),
(320, 1426674780, 'fa731a489f1e39f07ca844421951271cd188f159', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;signin_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `signin_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429968, 1460429968),
(321, 1426678380, 'fa731a489f1e39f07ca844421951271cd188f159', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;signin_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `signin_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429969, 1460429969),
(322, 1426681980, 'fd020a858fac3f37a70a263e0b4d56a49223dcdf', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;lottery_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `lottery_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429970, 1460429970),
(323, 1426685580, 'ebedf147ba61b9827dcfbafe74c9f22c2f88219c', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;guajiang_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `guajiang_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429972, 1460429972),
(324, 1426689180, '0a4ab60dc7161f94b364a6658aa422b6fe799592', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;hongbao_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `hongbao_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429973, 1460429973),
(325, 1426692780, '9dc63753923cf8e06231d84471db899391e01793', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;luckyfruit_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `luckyfruit_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429974, 1460429974),
(326, 1426696380, 'bf7ae27b9e3fc3c478629f4404996329ffd9a1f2', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;vote_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `vote_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429976, 1460429976),
(327, 1426699980, '663a89536823143e435f67cafe640069bf00471c', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;goldenegg_background&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `goldenegg_background` varchar(200) COLLATE &apos;utf8_general_ci&apos; NOT NULL', 1460429977, 1460429977),
(328, 1426703580, '7a920e7304fe923b561f8774e1f8d5fad01ea1e7', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;wall_check&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `wall_check` tinyint unsigned NOT NULL DEFAULT &apos;0&apos;', 1460429978, 1460429978),
(329, 1426707180, '9fcb4aa9534f113fd264d49d6663b2498b300e12', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;shake_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `shake_keyword` varchar(200) NOT NULL', 1460429979, 1460429979),
(330, 1426710780, '36b5452f2f9c0e8d62e1699c415997902c263e12', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;lottery_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `lottery_keyword` varchar(200) NOT NULL', 1460429981, 1460429981),
(331, 1426714380, '40008c1ec6946eb658adb4378fc9106e45cc4778', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;guajiang_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `guajiang_keyword` varchar(200) NOT NULL', 1460429982, 1460429982),
(332, 1426717980, 'f9b8191a614efaa924a87153d51291218b902ec3', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;jiugongge_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `jiugongge_keyword` varchar(200) NOT NULL', 1460429985, 1460429985),
(333, 1426721580, 'dbc5cd7c718e97f57a72de28266c53173426b776', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;hongbao_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `hongbao_keyword` varchar(200) NOT NULL', 1460429986, 1460429986),
(334, 1426725180, '99795b919cf88f4058a54167f692cd3d7b72869a', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;luckyfruit_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `luckyfruit_keyword` varchar(200) NOT NULL', 1460429987, 1460429987),
(335, 1426728780, '0be884d01ca429d8d01e57335d2df223e40618eb', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;vote_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `vote_keyword` varchar(200) NOT NULL', 1460429989, 1460429989),
(336, 1426732380, '6e9e980d03f52c0ca81e206497950a54e8805a89', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;goldenegg_keyword&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_wechat_scene` ADD `goldenegg_keyword` varchar(200) NOT NULL', 1460429990, 1460429990),
(337, 1426735980, '6102e7c1b2c1d61a2affe029be8440171ee59730', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;other_source&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `other_source` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT  &apos;其他活动对接来源&apos;,ADD INDEX (  `other_source` )', 1460429991, 1460429991),
(338, 1426739580, '00a374400aeaea78015535867848fae840d919e2', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;other_source&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_lottery` ADD  `other_source` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT  &apos;其他活动对接来源&apos;,ADD INDEX (  `other_source` )', 1460429993, 1460429993),
(339, 1426743180, '01fc3c761f10b0cb118d398516037cf695e9cd5b', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_time&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_time` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429994, 1460429994),
(340, 1426746780, 'ae14353150cd851eafb2cc412dcd8ee7f0ac9dec', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_state&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_state` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429995, 1460429995),
(341, 1426750380, '01fc3c761f10b0cb118d398516037cf695e9cd5b', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_time&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_time` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429997, 1460429997),
(342, 1426753980, 'ae14353150cd851eafb2cc412dcd8ee7f0ac9dec', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_state&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shakelottery` ADD  `scene_state` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429998, 1460429998),
(343, 1426757580, 'b4a991cd1898c5033a54bbd16354fe5ba3c283c0', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_time&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_vote` ADD  `scene_time` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460429999, 1460429999),
(344, 1426761180, '0c2791b5529306ede810db04548968694a517902', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_state&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_vote` ADD  `scene_state` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460430001, 1460430001),
(345, 1426764780, 'a1f9654e341022ef653dbd6c4c892f7f154ce3b5', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_time&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_lottery` ADD  `scene_time` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460430002, 1460430002),
(346, 1426768380, '1231be808156a6680f9e24ddbd8788a70f9d6cef', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_state&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_lottery` ADD  `scene_state` INT UNSIGNED NOT NULL DEFAULT  &apos;0&apos;', 1460430003, 1460430003),
(347, 1426771980, '5e33be2408d0659f7618463e7a56a9a3a818eb92', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;ddp_is_sex&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_wechat_scene` ADD  `ddp_is_sex` INT NOT NULL DEFAULT  &apos;1&apos;', 1460430005, 1460430005),
(348, 1426775580, 'bbe1fc0edd7ec6c24cad9177b00a59738d23f916', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;jiugongge_background&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_wechat_scene` ADD  `jiugongge_background` VARCHAR( 200 ) NOT NULL', 1460430006, 1460430006),
(349, 1426779180, '45e7c973124ab2fd8a472374258d15c2b3ddc87b', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;scene_id&apos;\n [ SQL语句 ] : ALTER TABLE  `pigcms_shake_rt` ADD  `scene_id` INT NOT NULL DEFAULT  &apos;0&apos;', 1460430007, 1460430007),
(350, 1426782780, '9e97e256adfce8f04eef69b9f0d1afdafac78690', 1, 1060, '[CODE] : 1060 # Duplicate column name &apos;is_amount&apos;\n [ SQL语句 ] : ALTER TABLE `pigcms_shakelottery` ADD `is_amount` TINYINT( 1 ) NOT NULL', 1460430008, 1460430008),
(351, 1426786380, 'f052037d1cfb8ca540920a6024a277a526fc6063', 1, 0, '', 1460430010, 1460430010),
(352, 1426789980, '9092fbddf768013cbd22ec429d1be816dc7d9a7f', 1, 0, '', 1460430011, 1460430011),
(353, 1426793580, 'd5d07285ef2a43cc5e44aa53827ceaf8f18cce4d', 1, 0, '', 1460430013, 1460430013),
(354, 1426797180, 'aeabf6f19f3063b6c449d82103af65abda2e4ed5', 1, 0, '', 1460430014, 1460430014),
(355, 1426800780, '104ae983ac3e0990683872a8b7427844a9b9ba99', 1, 0, '', 1460430015, 1460430015),
(356, 1426804380, '63e9603f9016f7243a46b4f066a26dd6188f63cf', 1, 0, '', 1460430017, 1460430017),
(357, 1426807980, 'bc3f92bd8b4acb4b20b4c48f8a7df714e1a2fdee', 1, 0, '', 1460430018, 1460430018),
(358, 1426811580, '8a913674be8375184754a7bab5f9ea0248e6fb6d', 1, 0, '', 1460430020, 1460430020),
(359, 1426815180, 'e789af74774042451d073c16711286a9049de94b', 1, 0, '', 1460430021, 1460430021),
(360, 1426818780, 'f35160d242bb697781c45749bda41097f9fa633a', 1, 0, '', 1460430023, 1460430022),
(361, 1426825980, 'c22028703297fc8aebde708243c24936a2a6419e', 1, 0, '', 1460430024, 1460430024),
(362, 1426829580, 'aca824fe0f5aace851c749429d22627cb5793938', 1, 0, '', 1460430025, 1460430025),
(363, 1426833180, 'd5c246d1aeb422e984bc419527021fa65f31e169', 1, 0, '', 1460430027, 1460430027),
(364, 1426836780, '3744cf2b15b474736d60d5c25cf58c3631950278', 1, 0, '', 1460430028, 1460430028),
(365, 1426840380, '73be8ebf173327e253fbccaa4eef4f8a29342b1f', 1, 0, '', 1460430029, 1460430029),
(366, 1426843980, '6c2d01400600bbc91671f8819599198daeeb7797', 1, 0, '', 1460430031, 1460430031),
(367, 1426847580, 'ae4a19211f614560bf7125337b00860ed5f3e820', 1, 0, '', 1460430032, 1460430032),
(368, 1426851180, '1a17102f804014a0f39ed193aac4e341a637b87e', 1, 0, '', 1460430033, 1460430033),
(369, 1426854780, '5e7a1ed0fb8a53d2aae868b4dd21ca031dc68612', 1, 0, '', 1460430035, 1460430035),
(370, 1426858380, 'cf13b5420ed9df6e17c0145fd602bf5c0a00dccb', 1, 0, '', 1460430036, 1460430036),
(371, 1426861980, 'd6713de6addd1b5fe4210c557240a8931d866890', 1, 0, '', 1460430038, 1460430038),
(372, 1426865580, '21ae591090bdf9a2ebfe8ae7bc14d07fd83cc148', 1, 0, '', 1460430039, 1460430039),
(373, 1426869180, 'dcaa0b1848846453196a69740faeecb9340b7ab4', 1, 0, '', 1460430040, 1460430040),
(374, 1426872780, '26a2101c1c0ae1cb50e65e80c5ee45af4cbb8c23', 1, 0, '', 1460430042, 1460430042),
(375, 1426876380, '571c88f5130538e22be241bd39f08392acbbc321', 1, 0, '', 1460430043, 1460430043),
(376, 1426879980, '2d342582862ef1633a4e3e7bb65dc3989e6840ed', 1, 0, '', 1460430045, 1460430044),
(377, 1426883580, 'd2dfb0378ec465db78d9bc22b948606711b3c8b8', 1, 0, '', 1460430046, 1460430046),
(378, 1426890780, 'a7ce2126040e490eeef45908d3f99b321892aa93', 1, 0, '', 1460430047, 1460430047),
(379, 1426894380, 'd3df99a6d9bd5af9109ad8813e1612917b61430d', 1, 0, '', 1460430049, 1460430048),
(380, 1426897980, '7c68428dcd9617a18dd3fc38726cf3e02ae1bbf4', 1, 0, '', 1460430050, 1460430050),
(381, 1426901580, '246883ab9a22f0a6b8b5ac1e3eba1cc958b3ed3b', 1, 0, '', 1460430051, 1460430051),
(382, 1426905180, '148843886bcb8d424a8a01e85b2c73c6c489fb53', 1, 0, '', 1460430053, 1460430053),
(383, 1426908780, '0aab7a83f355277a33a8bcd0d3cc06ef94a2f23f', 1, 0, '', 1460430054, 1460430054),
(384, 1426912380, 'dc27aa0733561deb6060886c75b2331f03176a56', 1, 0, '', 1460430056, 1460430056);
INSERT INTO `pigcms_sql_log` (`id`, `time`, `hash`, `status`, `code`, `exception`, `update_time`, `create_time`) VALUES
(385, 1426915980, 'e4fd782c629c732b4586be5bf8d066b5de1c2efd', 1, 0, '', 1460430057, 1460430057),
(386, 1426919580, '01b636e8a263c83d43660dd5f5df568aed9b86de', 1, 0, '', 1460430058, 1460430058),
(387, 1426923180, '0247787f53e6280a7c08b6fea0434a06540062f9', 1, 0, '', 1460430060, 1460430060),
(388, 1426926780, 'a6b840d2d4180163fc53acedda8a1ac478adcbab', 1, 0, '', 1460430061, 1460430061),
(389, 1426930380, '44512a4bc4884f3b8df6501f2058d4d80bc17ee0', 1, 0, '', 1460430062, 1460430062),
(390, 1426933980, '03ec0e09dde5384268b41b1e74e257c1107a7baa', 1, 0, '', 1460430064, 1460430064),
(391, 1426937580, 'fc8fcb8261c165c0de82507885fd5065a5240170', 1, 0, '', 1460430065, 1460430065),
(392, 1426941180, 'b2faab77cf7cf6cbde3633a39737b45570645125', 1, 0, '', 1460430067, 1460430066),
(393, 1426944780, '00c55a30c402214c4994275d5b58dbc182922dea', 1, 0, '', 1460430068, 1460430068),
(394, 1426948380, '405285a31927d2009cbe7bbe498900db94064c3e', 1, 0, '', 1460430069, 1460430069),
(395, 1426951980, 'b0cc22ef5870bff0ac78ec1e64cd7ddfcb01c468', 1, 0, '', 1460430071, 1460430071),
(396, 1426955580, '0c1eb80c836ce4ef9522a03ed68399008b0ea653', 1, 0, '', 1460430072, 1460430072),
(397, 1426959180, '978884c52608a9cbcb0e7c0747482391748eecb3', 1, 0, '', 1460430073, 1460430073),
(398, 1426962780, 'f2b6ea9b28bb3e1e044611b5568f3d78f39a4940', 1, 0, '', 1460430075, 1460430075),
(399, 1426966380, '0afadb61b9498f61488d73cbffd43a0c87f34198', 1, 0, '', 1460430076, 1460430076),
(400, 1426969980, '750b27cb3ab488b6ab64af0469daa443da3ec373', 1, 0, '', 1460430077, 1460430077),
(401, 1426973580, 'c78e87d397ca67d69b80817cb87e407ff5fd53bb', 1, 0, '', 1460430079, 1460430079),
(402, 1426977180, 'cd15680838620ce658c2bd402aae699776d2e453', 1, 0, '', 1460430080, 1460430080),
(403, 1426980780, 'aead7cd8312e9fa8f343141a1c4430ab69b9c639', 1, 0, '', 1460430081, 1460430081),
(404, 1426984380, '6a89e4d57d7f8b6fece2988444d4464a7aee8bad', 1, 0, '', 1460430083, 1460430083),
(405, 1426987980, 'e89712ff47b1360b405ccfbc5e669be4053b6ccc', 1, 0, '', 1460430084, 1460430084),
(406, 1426991580, '39b2d7af4206b6554a30bb2a31c56078b96734af', 1, 0, '', 1460430085, 1460430085),
(407, 1426995180, '93ddcc948c3db06cdfe6e9d7c7c03a0f2fddc997', 1, 0, '', 1460430087, 1460430087),
(408, 1426998780, '35cac821640874f5371f15f804817ddadee59a51', 1, 0, '', 1460430088, 1460430088),
(409, 1427002380, 'afd38fed7c7b9cf3cede60be40d001150252e42a', 1, 0, '', 1460430090, 1460430090),
(410, 1427009580, '79e4fcb3ca2b00c977f9180ab7a3c41eddbeafb8', 1, 1091, '[CODE] : 1091 # Can&apos;t DROP &apos;reply_content&apos;; check that column/key exists\n [ SQL语句 ] : ALTER TABLE `pigcms_custom_info` DROP `reply_content`,DROP `reply_time`', 1460430091, 1460430091),
(411, 1427013180, '859ae4813461ae02b018f7717e7ef8a932875573', 1, 0, '', 1460430092, 1460430092),
(412, 1427016780, '54ebca73c3f090bcbc42360167039a6a07224db4', 1, 0, '', 1460430094, 1460430094),
(413, 1427020380, '39d75d89a0856fe52b860aa600df26e57a7a7f19', 1, 0, '', 1460430095, 1460430095),
(414, 1427023980, '77c4d0c7b15e68554eb1fc571c462ef0edd226ec', 1, 0, '', 1460430097, 1460430096),
(415, 1427027580, 'c3effbaa49c73752a604456156bbaf89ea5d5523', 1, 0, '', 1460430098, 1460430098),
(416, 1427031180, '64800e6ac18b6c17fd672a4a8251bd4169774ddd', 1, 0, '', 1460430099, 1460430099),
(417, 1427034780, '8c2d89a83a466c56dd813836ac38d453b1827699', 1, 0, '', 1460430100, 1460430100),
(418, 1427038380, '6f4ff6a55ce685a0dabdc3e12c1697cb2bddf5d8', 1, 0, '', 1460430102, 1460430102),
(419, 1427041980, '513edc2b9afe805cc3ba12a56d4108dedf892573', 1, 0, '', 1460430103, 1460430103),
(420, 1427045580, 'a85325aa4fdf203034cfebce07a790b917519685', 1, 0, '', 1460430105, 1460430105),
(421, 1427049180, 'd0ccd6640368820bd487ebdb90fede7680730216', 1, 0, '', 1460430106, 1460430106),
(422, 1427052780, '6a8cf0055b2fc69935984112aebd924bbe9ab001', 1, 0, '', 1460430107, 1460430107),
(423, 1427056380, '7a1a782eb8ce79d12467adb0f5641218767ac788', 1, 0, '', 1460430109, 1460430108),
(424, 1427059980, '2a2d28167d4dc0679bbb783560998a3ed2805f66', 1, 0, '', 1460430110, 1460430110),
(425, 1427063580, '7dcba1e5db7f8b99a300efc711e51e93ab643f68', 1, 0, '', 1460430111, 1460430111),
(426, 1427067180, '3c05afa74f04c67e8478b8852a68aa538d678adf', 1, 0, '', 1460430113, 1460430113),
(427, 1427070780, 'ba005831b8ca37e99346f7c85811c77afd63c3df', 1, 0, '', 1460430114, 1460430114),
(428, 1427074380, '0d9f86b9427ae057e140b8db47e5f33ae4b07a8e', 1, 0, '', 1460430116, 1460430115),
(429, 1427077980, 'ddc2115b6c17c966d5ce16ce6aef9dabc06a052b', 1, 0, '', 1460430117, 1460430117),
(430, 1427081580, '816d593f98c37b0baab9e39b23da9c815816dfed', 1, 0, '', 1460430118, 1460430118),
(431, 1427085180, '76729714a1772ad45a47d3393dee5e7d10d6cb29', 1, 0, '', 1460430119, 1460430119),
(432, 1427088780, 'bbf85533209dcc139a4f6352ef6f0b0a1bfaf172', 1, 0, '', 1460430121, 1460430121),
(433, 1427092380, '7d401029cb6631d1d188ed046f08bf589e0c8154', 1, 0, '', 1460430122, 1460430122),
(434, 1427095980, '547e5bb5e4b3873f4a51598781d0540202ded644', 1, 0, '', 1460430123, 1460430123),
(435, 1427099580, '1476efa108391341680a2c964c2c4d9867acafe3', 1, 0, '', 1460430125, 1460430125),
(436, 1427103180, '8898cf6abad92f391ca973b543ef132e4cef199a', 1, 0, '', 1460430126, 1460430126),
(437, 1427106780, '7a329ab80f385c85ceacaffc5c245696e246df25', 1, 0, '', 1460430128, 1460430127),
(438, 1427110380, '75cb046a2864c010b5aeaff43a2829af8793e67d', 1, 0, '', 1460430129, 1460430129),
(439, 1427113980, '525523dcde9547d9c8766d40e4fd1f3fe1f6a176', 1, 0, '', 1460430130, 1460430130),
(440, 1427117580, '428c30fed3567521e39832d43a32ab6ec3ae5ca6', 1, 0, '', 1460430131, 1460430131),
(441, 1427121180, 'ab1c095967cf75d12771e2888b3207909a4ecfad', 1, 0, '', 1460430133, 1460430133),
(442, 1427124780, '00fa495790d2fb4e3d9a2f8e1365475e918611c3', 1, 0, '', 1460430134, 1460430134),
(443, 1427128380, '6e32a68161ed9816e5d0104ff63cc5459733cad0', 1, 0, '', 1460430136, 1460430136),
(444, 1427131980, '3d3f707b79fb6aa559bb9c906163a1a4ce772a66', 1, 0, '', 1460430137, 1460430137),
(445, 1427135580, '9b51b6253804185a2b558de4a6d5aea625ad185b', 1, 0, '', 1460430138, 1460430138),
(446, 1427139180, 'd18ad12bd6209b2510a5eecd76ae6f400b6a8a42', 1, 0, '', 1460430140, 1460430140),
(447, 1427142780, '0200eb15582a62f3d1f566a163ecd1a0ab42ed64', 1, 0, '', 1460430141, 1460430141),
(448, 1427146380, '7968047cfa8cb0869d4e74c3fa6bb768c98137e4', 1, 0, '', 1460430142, 1460430142),
(449, 1427149980, '176d0adb9caa0ffc350e064ed8e54b365a9b0804', 1, 0, '', 1460430144, 1460430144),
(450, 1427153580, 'c1687e33225a01aac2becc701bbc06a08685884e', 1, 0, '', 1460430145, 1460430145),
(451, 1427157180, '850aab795582df567a781b71f45725dcb85b6275', 1, 0, '', 1460430146, 1460430146),
(452, 1427160780, '8b87a3e0b2430f1c7aaf36ade7901e6e1adcd086', 1, 0, '', 1460430148, 1460430148),
(453, 1427164380, '9824448e7fe0a3bdc5ed395b2678ce71ff9a0396', 1, 0, '', 1460430150, 1460430150),
(454, 1427167980, '4b4682ded77452eb2089bb40bba98d82fb5d42ff', 1, 0, '', 1460430151, 1460430151),
(455, 1427171580, '9cff633be09094c7c57b7db9e6af232b986763aa', 1, 0, '', 1460430152, 1460430152),
(456, 1427175180, '97259e6bbe8d5a9cf1c4b121161fa171dfab99b1', 1, 0, '', 1460430154, 1460430153),
(457, 1427178780, 'ed2a0f8e502600b3b16bc24fa1c815e790fd9ee0', 1, 0, '', 1460430155, 1460430155),
(458, 1427182380, '2805a310727119895c7d65547897d22d97c5bd08', 1, 0, '', 1460430156, 1460430156),
(459, 1427185980, '656c63258facf26f32644030b1331f7b562eaee4', 1, 0, '', 1460430158, 1460430157),
(460, 1427189580, '280cb595d935a6a372bc8944badf687f22a49dec', 1, 0, '', 1460430159, 1460430159),
(461, 1427200380, '23b8c7b2d5dd907ac05a93855ad28b864496a31d', 1, 0, '', 1460430160, 1460430160),
(462, 1427203980, '03b4ed8cb82bdb2589a6939471c72de9b664624f', 1, 0, '', 1460430162, 1460430162);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_store_flash`
--

CREATE TABLE IF NOT EXISTS `pigcms_store_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `img` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `info` varchar(90) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_styleset`
--

CREATE TABLE IF NOT EXISTS `pigcms_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_subscribe_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_subscribe_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  `r_type` char(10) NOT NULL,
  `relevance_id` varchar(30) NOT NULL,
  `relevance_name` varchar(255) NOT NULL,
  `title` varchar(800) NOT NULL,
  `token` char(30) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isrepeat` tinyint(1) NOT NULL,
  `times` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relevance_id` (`relevance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_subscribe_times`
--

CREATE TABLE IF NOT EXISTS `pigcms_subscribe_times` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `times` int(11) NOT NULL,
  `token` varchar(60) NOT NULL DEFAULT '',
  `rid` int(10) NOT NULL,
  `last_rtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_susceptible`
--

CREATE TABLE IF NOT EXISTS `pigcms_susceptible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `word` (`word`,`state`),
  KEY `IDX_STATE_WORD` (`state`,`word`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1063 ;

--
-- 转存表中的数据 `pigcms_susceptible`
--

INSERT INTO `pigcms_susceptible` (`id`, `word`, `state`, `addtime`, `time`) VALUES
(1, '阿扁推翻', 0, 1437985280, 1437985280),
(2, '阿宾', 0, 1437985280, 1437985280),
(3, '阿賓', 0, 1437985280, 1437985280),
(4, '挨了一炮', 0, 1437985280, 1437985280),
(5, '爱液横流', 0, 1437985280, 1437985280),
(6, '安街逆', 0, 1437985280, 1437985280),
(7, '安局办公楼', 0, 1437985280, 1437985280),
(8, '安局豪华', 0, 1437985280, 1437985280),
(9, '安门事', 0, 1437985280, 1437985280),
(10, '安眠藥', 0, 1437985280, 1437985280),
(11, '案的准确', 0, 1437985280, 1437985280),
(12, '八九民', 0, 1437985280, 1437985280),
(13, '八九学', 0, 1437985280, 1437985280),
(14, '八九政治', 0, 1437985280, 1437985280),
(15, '把病人整', 0, 1437985280, 1437985280),
(16, '把邓小平', 0, 1437985280, 1437985280),
(17, '把学生整', 0, 1437985280, 1437985280),
(18, '罢工门', 0, 1437985280, 1437985280),
(19, '白黄牙签', 0, 1437985280, 1437985280),
(20, '败培训', 0, 1437985280, 1437985280),
(21, '办本科', 0, 1437985280, 1437985280),
(22, '办理本科', 0, 1437985280, 1437985280),
(23, '办理各种', 0, 1437985280, 1437985280),
(24, '办理票据', 0, 1437985280, 1437985280),
(25, '办理文凭', 0, 1437985280, 1437985280),
(26, '办理真实', 0, 1437985280, 1437985280),
(27, '办理证书', 0, 1437985280, 1437985280),
(28, '办理资格', 0, 1437985280, 1437985280),
(29, '办文凭', 0, 1437985280, 1437985280),
(30, '办怔', 0, 1437985280, 1437985280),
(31, '办证', 0, 1437985280, 1437985280),
(32, '半刺刀', 0, 1437985280, 1437985280),
(33, '辦毕业', 0, 1437985280, 1437985280),
(34, '辦證', 0, 1437985280, 1437985280),
(35, '谤罪获刑', 0, 1437985280, 1437985280),
(36, '磅解码器', 0, 1437985280, 1437985280),
(37, '磅遥控器', 0, 1437985280, 1437985280),
(38, '宝在甘肃修', 0, 1437985280, 1437985280),
(39, '保过答案', 0, 1437985280, 1437985280),
(40, '报复执法', 0, 1437985280, 1437985280),
(41, '爆发骚', 0, 1437985280, 1437985280),
(42, '北省委门', 0, 1437985280, 1437985280),
(43, '被打死', 0, 1437985280, 1437985280),
(44, '被指抄袭', 0, 1437985280, 1437985280),
(45, '被中共', 0, 1437985280, 1437985280),
(46, '本公司担', 0, 1437985280, 1437985280),
(47, '本无码', 0, 1437985280, 1437985280),
(48, '毕业證', 0, 1437985280, 1437985280),
(49, '变牌绝', 0, 1437985280, 1437985280),
(50, '辩词与梦', 0, 1437985280, 1437985280),
(51, '冰毒', 0, 1437985280, 1437985280),
(52, '冰火毒', 0, 1437985280, 1437985280),
(53, '冰火佳', 0, 1437985280, 1437985280),
(54, '冰火九重', 0, 1437985280, 1437985280),
(55, '冰火漫', 0, 1437985280, 1437985280),
(56, '冰淫传', 0, 1437985280, 1437985280),
(57, '冰在火上', 0, 1437985280, 1437985280),
(58, '波推龙', 0, 1437985280, 1437985280),
(59, '博彩娱', 0, 1437985280, 1437985280),
(60, '博会暂停', 0, 1437985280, 1437985280),
(61, '博园区伪', 0, 1437985280, 1437985280),
(62, '不查都', 0, 1437985280, 1437985280),
(63, '不查全', 0, 1437985280, 1437985280),
(64, '不思四化', 0, 1437985280, 1437985280),
(65, '布卖淫女', 0, 1437985280, 1437985280),
(66, '部忙组阁', 0, 1437985280, 1437985280),
(67, '部是这样', 0, 1437985280, 1437985280),
(68, '才知道只生', 0, 1437985280, 1437985280),
(69, '财众科技', 0, 1437985280, 1437985280),
(70, '采花堂', 0, 1437985280, 1437985280),
(71, '踩踏事', 0, 1437985280, 1437985280),
(72, '苍山兰', 0, 1437985280, 1437985280),
(73, '苍蝇水', 0, 1437985280, 1437985280),
(74, '藏春阁', 0, 1437985280, 1437985280),
(75, '藏獨', 0, 1437985280, 1437985280),
(76, '操了嫂', 0, 1437985280, 1437985280),
(77, '操嫂子', 0, 1437985280, 1437985280),
(78, '策没有不', 0, 1437985280, 1437985280),
(79, '插屁屁', 0, 1437985280, 1437985280),
(80, '察象蚂', 0, 1437985280, 1437985280),
(81, '拆迁灭', 0, 1437985280, 1437985280),
(82, '车牌隐', 0, 1437985280, 1437985280),
(83, '成人电', 0, 1437985280, 1437985280),
(84, '成人卡通', 0, 1437985280, 1437985280),
(85, '成人聊', 0, 1437985280, 1437985280),
(86, '成人片', 0, 1437985280, 1437985280),
(87, '成人视', 0, 1437985280, 1437985280),
(88, '成人图', 0, 1437985280, 1437985280),
(89, '成人文', 0, 1437985280, 1437985280),
(90, '成人小', 0, 1437985280, 1437985280),
(91, '城管灭', 0, 1437985280, 1437985280),
(92, '惩公安', 0, 1437985280, 1437985280),
(93, '惩贪难', 0, 1437985280, 1437985280),
(94, '充气娃', 0, 1437985280, 1437985280),
(95, '冲凉死', 0, 1437985280, 1437985280),
(96, '抽着大中', 0, 1437985280, 1437985280),
(97, '抽着芙蓉', 0, 1437985280, 1437985280),
(98, '出成绩付', 0, 1437985280, 1437985280),
(99, '出售发票', 0, 1437985280, 1437985280),
(100, '出售军', 0, 1437985280, 1437985280),
(101, '穿透仪器', 0, 1437985280, 1437985280),
(102, '春水横溢', 0, 1437985280, 1437985280),
(103, '纯度白', 0, 1437985280, 1437985280),
(104, '纯度黄', 0, 1437985280, 1437985280),
(105, '次通过考', 0, 1437985280, 1437985280),
(106, '催眠水', 0, 1437985280, 1437985280),
(107, '催情粉', 0, 1437985280, 1437985280),
(108, '催情药', 0, 1437985280, 1437985280),
(109, '催情藥', 0, 1437985280, 1437985280),
(110, '挫仑', 0, 1437985280, 1437985280),
(111, '达毕业证', 0, 1437985280, 1437985280),
(112, '答案包', 0, 1437985280, 1437985280),
(113, '答案提供', 0, 1437985280, 1437985280),
(114, '打标语', 0, 1437985280, 1437985280),
(115, '打错门', 0, 1437985280, 1437985280),
(116, '打飞机专', 0, 1437985280, 1437985280),
(117, '打死经过', 0, 1437985280, 1437985280),
(118, '打死人', 0, 1437985280, 1437985280),
(119, '打砸办公', 0, 1437985280, 1437985280),
(120, '大鸡巴', 0, 1437985280, 1437985280),
(121, '大雞巴', 0, 1437985280, 1437985280),
(122, '大纪元', 0, 1437985280, 1437985280),
(123, '大揭露', 0, 1437985280, 1437985280),
(124, '大奶子', 0, 1437985280, 1437985280),
(125, '大批贪官', 0, 1437985280, 1437985280),
(126, '大肉棒', 0, 1437985280, 1437985280),
(127, '大嘴歌', 0, 1437985280, 1437985280),
(128, '代办发票', 0, 1437985280, 1437985280),
(129, '代办各', 0, 1437985280, 1437985280),
(130, '代办文', 0, 1437985280, 1437985280),
(131, '代办学', 0, 1437985280, 1437985280),
(132, '代办制', 0, 1437985280, 1437985280),
(133, '代辦', 0, 1437985280, 1437985280),
(134, '代表烦', 0, 1437985280, 1437985280),
(135, '代開', 0, 1437985280, 1437985280),
(136, '代考', 0, 1437985280, 1437985280),
(137, '代理发票', 0, 1437985280, 1437985280),
(138, '代理票据', 0, 1437985280, 1437985280),
(139, '代您考', 0, 1437985280, 1437985280),
(140, '代您考', 0, 1437985280, 1437985280),
(141, '代写毕', 0, 1437985280, 1437985280),
(142, '代写论', 0, 1437985280, 1437985280),
(143, '代孕', 0, 1437985280, 1437985280),
(144, '贷办', 0, 1437985280, 1437985280),
(145, '贷借款', 0, 1437985280, 1437985280),
(146, '贷开', 0, 1437985280, 1437985280),
(147, '戴海静', 0, 1437985280, 1437985280),
(148, '当代七整', 0, 1437985280, 1437985280),
(149, '当官要精', 0, 1437985280, 1437985280),
(150, '当官在于', 0, 1437985280, 1437985280),
(151, '党的官', 0, 1437985280, 1437985280),
(152, '党后萎', 0, 1437985280, 1437985280),
(153, '党前干劲', 0, 1437985280, 1437985280),
(154, '刀架保安', 0, 1437985280, 1437985280),
(155, '导的情人', 0, 1437985280, 1437985280),
(156, '导叫失', 0, 1437985280, 1437985280),
(157, '导人的最', 0, 1437985280, 1437985280),
(158, '导人最', 0, 1437985280, 1437985280),
(159, '导小商', 0, 1437985280, 1437985280),
(160, '到花心', 0, 1437985280, 1437985280),
(161, '得财兼', 0, 1437985280, 1437985280),
(162, '的同修', 0, 1437985280, 1437985280),
(163, '灯草和', 0, 1437985280, 1437985280),
(164, '等级證', 0, 1437985280, 1437985280),
(165, '等屁民', 0, 1437985280, 1437985280),
(166, '等人老百', 0, 1437985280, 1437985280),
(167, '等人是老', 0, 1437985280, 1437985280),
(168, '等人手术', 0, 1437985280, 1437985280),
(169, '邓爷爷转', 0, 1437985280, 1437985280),
(170, '邓玉娇', 0, 1437985280, 1437985280),
(171, '地产之歌', 0, 1437985280, 1437985280),
(172, '地下先烈', 0, 1437985280, 1437985280),
(173, '地震哥', 0, 1437985280, 1437985280),
(174, '帝国之梦', 0, 1437985280, 1437985280),
(175, '递纸死', 0, 1437985280, 1437985280),
(176, '点数优惠', 0, 1437985280, 1437985280),
(177, '电狗', 0, 1437985280, 1437985280),
(178, '电话监', 0, 1437985280, 1437985280),
(179, '电鸡', 0, 1437985280, 1437985280),
(180, '甸果敢', 0, 1437985280, 1437985280),
(181, '蝶舞按', 0, 1437985280, 1437985280),
(182, '丁香社', 0, 1437985280, 1437985280),
(183, '丁子霖', 0, 1437985280, 1437985280),
(184, '顶花心', 0, 1437985280, 1437985280),
(185, '东北独立', 0, 1437985280, 1437985280),
(186, '东复活', 0, 1437985280, 1437985280),
(187, '东京热', 0, 1437985280, 1437985280),
(188, '東京熱', 0, 1437985280, 1437985280),
(189, '洞小口紧', 0, 1437985280, 1437985280),
(190, '都当警', 0, 1437985280, 1437985280),
(191, '都当小姐', 0, 1437985280, 1437985280),
(192, '都进中央', 0, 1437985280, 1437985280),
(193, '毒蛇钻', 0, 1437985280, 1437985280),
(194, '独立台湾', 0, 1437985280, 1437985280),
(195, '赌球网', 0, 1437985280, 1437985280),
(196, '短信截', 0, 1437985280, 1437985280),
(197, '对日强硬', 0, 1437985280, 1437985280),
(198, '多美康', 0, 1437985280, 1437985280),
(199, '躲猫猫', 0, 1437985280, 1437985280),
(200, '俄羅斯', 0, 1437985280, 1437985280),
(201, '恶势力操', 0, 1437985280, 1437985280),
(202, '恶势力插', 0, 1437985280, 1437985280),
(203, '恩氟烷', 0, 1437985280, 1437985280),
(204, '儿园惨', 0, 1437985280, 1437985280),
(205, '儿园砍', 0, 1437985280, 1437985280),
(206, '儿园杀', 0, 1437985280, 1437985280),
(207, '儿园凶', 0, 1437985280, 1437985280),
(208, '二奶大', 0, 1437985280, 1437985280),
(209, '发牌绝', 0, 1437985280, 1437985280),
(210, '发票出', 0, 1437985280, 1437985280),
(211, '发票代', 0, 1437985280, 1437985280),
(212, '发票销', 0, 1437985280, 1437985280),
(213, '發票', 0, 1437985280, 1437985280),
(214, '法车仑', 0, 1437985280, 1437985280),
(215, '法伦功', 0, 1437985280, 1437985280),
(216, '法轮', 0, 1437985280, 1437985280),
(217, '法轮佛', 0, 1437985280, 1437985280),
(218, '法维权', 0, 1437985280, 1437985280),
(219, '法一轮', 0, 1437985280, 1437985280),
(220, '法院给废', 0, 1437985280, 1437985280),
(221, '法正乾', 0, 1437985280, 1437985280),
(222, '反测速雷', 0, 1437985280, 1437985280),
(223, '反雷达测', 0, 1437985280, 1437985280),
(224, '反屏蔽', 0, 1437985280, 1437985280),
(225, '范燕琼', 0, 1437985280, 1437985280),
(226, '方迷香', 0, 1437985280, 1437985280),
(227, '防电子眼', 0, 1437985280, 1437985280),
(228, '防身药水', 0, 1437985280, 1437985280),
(229, '房贷给废', 0, 1437985280, 1437985280),
(230, '仿真枪', 0, 1437985280, 1437985280),
(231, '仿真证', 0, 1437985280, 1437985280),
(232, '诽谤罪', 0, 1437985280, 1437985280),
(233, '费私服', 0, 1437985280, 1437985280),
(234, '封锁消', 0, 1437985280, 1437985280),
(235, '佛同修', 0, 1437985280, 1437985280),
(236, '夫妻交换', 0, 1437985280, 1437985280),
(237, '福尔马林', 0, 1437985280, 1437985280),
(238, '福娃的預', 0, 1437985280, 1437985280),
(239, '福娃頭上', 0, 1437985280, 1437985280),
(240, '福香巴', 0, 1437985280, 1437985280),
(241, '府包庇', 0, 1437985280, 1437985280),
(242, '府集中领', 0, 1437985280, 1437985280),
(243, '妇销魂', 0, 1437985280, 1437985280),
(244, '附送枪', 0, 1437985280, 1437985280),
(245, '复印件生', 0, 1437985280, 1437985280),
(246, '复印件制', 0, 1437985280, 1437985280),
(247, '富民穷', 0, 1437985280, 1437985280),
(248, '富婆给废', 0, 1437985280, 1437985280),
(249, '改号软件', 0, 1437985280, 1437985280),
(250, '感扑克', 0, 1437985280, 1437985280),
(251, '冈本真', 0, 1437985280, 1437985280),
(252, '肛交', 0, 1437985280, 1437985280),
(253, '肛门是邻', 0, 1437985280, 1437985280),
(254, '岡本真', 0, 1437985280, 1437985280),
(255, '钢针狗', 0, 1437985280, 1437985280),
(256, '钢珠枪', 0, 1437985280, 1437985280),
(257, '港澳博球', 0, 1437985280, 1437985280),
(258, '港馬會', 0, 1437985280, 1437985280),
(259, '港鑫華', 0, 1437985280, 1437985280),
(260, '高就在政', 0, 1437985280, 1437985280),
(261, '高考黑', 0, 1437985280, 1437985280),
(262, '高莺莺', 0, 1437985280, 1437985280),
(263, '搞媛交', 0, 1437985280, 1437985280),
(264, '告长期', 0, 1437985280, 1437985280),
(265, '告洋状', 0, 1437985280, 1437985280),
(266, '格证考试', 0, 1437985280, 1437985280),
(267, '各类考试', 0, 1437985280, 1437985280),
(268, '各类文凭', 0, 1437985280, 1437985280),
(269, '跟踪器', 0, 1437985280, 1437985280),
(270, '工程吞得', 0, 1437985280, 1437985280),
(271, '工力人', 0, 1437985280, 1437985280),
(272, '公安错打', 0, 1437985280, 1437985280),
(273, '公安网监', 0, 1437985280, 1437985280),
(274, '公开小姐', 0, 1437985280, 1437985280),
(275, '攻官小姐', 0, 1437985280, 1437985280),
(276, '共狗', 0, 1437985280, 1437985280),
(277, '共王储', 0, 1437985280, 1437985280),
(278, '狗粮', 0, 1437985280, 1437985280),
(279, '狗屁专家', 0, 1437985280, 1437985280),
(280, '鼓动一些', 0, 1437985280, 1437985280),
(281, '乖乖粉', 0, 1437985280, 1437985280),
(282, '官商勾', 0, 1437985280, 1437985280),
(283, '官也不容', 0, 1437985280, 1437985280),
(284, '官因发帖', 0, 1437985280, 1437985280),
(285, '光学真题', 0, 1437985280, 1437985280),
(286, '跪真相', 0, 1437985280, 1437985280),
(287, '滚圆大乳', 0, 1437985280, 1437985280),
(288, '国际投注', 0, 1437985280, 1437985280),
(289, '国家妓', 0, 1437985280, 1437985280),
(290, '国家软弱', 0, 1437985280, 1437985280),
(291, '国家吞得', 0, 1437985280, 1437985280),
(292, '国库折', 0, 1437985280, 1437985280),
(293, '国一九五七', 0, 1437985280, 1437985280),
(294, '國內美', 0, 1437985280, 1437985280),
(295, '哈药直销', 0, 1437985280, 1437985280),
(296, '海访民', 0, 1437985280, 1437985280),
(297, '豪圈钱', 0, 1437985280, 1437985280),
(298, '号屏蔽器', 0, 1437985280, 1437985280),
(299, '和狗交', 0, 1437985280, 1437985280),
(300, '和狗性', 0, 1437985280, 1437985280),
(301, '和狗做', 0, 1437985280, 1437985280),
(302, '黑火药的', 0, 1437985280, 1437985280),
(303, '红色恐怖', 0, 1437985280, 1437985280),
(304, '红外透视', 0, 1437985280, 1437985280),
(305, '紅色恐', 0, 1437985280, 1437985280),
(306, '胡江内斗', 0, 1437985280, 1437985280),
(307, '胡紧套', 0, 1437985280, 1437985280),
(308, '胡錦濤', 0, 1437985280, 1437985280),
(309, '胡适眼', 0, 1437985280, 1437985280),
(310, '胡耀邦', 0, 1437985280, 1437985280),
(311, '湖淫娘', 0, 1437985280, 1437985280),
(312, '虎头猎', 0, 1437985280, 1437985280),
(313, '华国锋', 0, 1437985280, 1437985280),
(314, '华门开', 0, 1437985280, 1437985280),
(315, '化学扫盲', 0, 1437985280, 1437985280),
(316, '划老公', 0, 1437985280, 1437985280),
(317, '还会吹萧', 0, 1437985280, 1437985280),
(318, '还看锦涛', 0, 1437985280, 1437985280),
(319, '环球证件', 0, 1437985280, 1437985280),
(320, '换妻', 0, 1437985280, 1437985280),
(321, '皇冠投注', 0, 1437985280, 1437985280),
(322, '黄冰', 0, 1437985280, 1437985280),
(323, '浑圆豪乳', 0, 1437985280, 1437985280),
(324, '活不起', 0, 1437985280, 1437985280),
(325, '火车也疯', 0, 1437985280, 1437985280),
(326, '机定位器', 0, 1437985280, 1437985280),
(327, '机号定', 0, 1437985280, 1437985280),
(328, '机号卫', 0, 1437985280, 1437985280),
(329, '机卡密', 0, 1437985280, 1437985280),
(330, '机屏蔽器', 0, 1437985280, 1437985280),
(331, '基本靠吼', 0, 1437985280, 1437985280),
(332, '绩过后付', 0, 1437985280, 1437985280),
(333, '激情电', 0, 1437985280, 1437985280),
(334, '激情短', 0, 1437985280, 1437985280),
(335, '激情妹', 0, 1437985280, 1437985280),
(336, '激情炮', 0, 1437985280, 1437985280),
(337, '级办理', 0, 1437985280, 1437985280),
(338, '级答案', 0, 1437985280, 1437985280),
(339, '急需嫖', 0, 1437985280, 1437985280),
(340, '集体打砸', 0, 1437985280, 1437985280),
(341, '集体腐', 0, 1437985280, 1437985280),
(342, '挤乳汁', 0, 1437985280, 1437985280),
(343, '擠乳汁', 0, 1437985280, 1437985280),
(344, '佳静安定', 0, 1437985280, 1437985280),
(345, '家一样饱', 0, 1437985280, 1437985280),
(346, '家属被打', 0, 1437985280, 1437985280),
(347, '甲虫跳', 0, 1437985280, 1437985280),
(348, '甲流了', 0, 1437985280, 1437985280),
(349, '奸成瘾', 0, 1437985280, 1437985280),
(350, '兼职上门', 0, 1437985280, 1437985280),
(351, '监听器', 0, 1437985280, 1437985280),
(352, '监听王', 0, 1437985280, 1437985280),
(353, '简易炸', 0, 1437985280, 1437985280),
(354, '江胡内斗', 0, 1437985280, 1437985280),
(355, '江太上', 0, 1437985280, 1437985280),
(356, '江系人', 0, 1437985280, 1437985280),
(357, '江贼民', 0, 1437985280, 1437985280),
(358, '疆獨', 0, 1437985280, 1437985280),
(359, '蒋彦永', 0, 1437985280, 1437985280),
(360, '叫自慰', 0, 1437985280, 1437985280),
(361, '揭贪难', 0, 1437985280, 1437985280),
(362, '姐包夜', 0, 1437985280, 1437985280),
(363, '姐服务', 0, 1437985280, 1437985280),
(364, '姐兼职', 0, 1437985280, 1437985280),
(365, '姐上门', 0, 1437985280, 1437985280),
(366, '金扎金', 0, 1437985280, 1437985280),
(367, '金钟气', 0, 1437985280, 1437985280),
(368, '津大地震', 0, 1437985280, 1437985280),
(369, '津地震', 0, 1437985280, 1437985280),
(370, '进来的罪', 0, 1437985280, 1437985280),
(371, '京地震', 0, 1437985280, 1437985280),
(372, '京要地震', 0, 1437985280, 1437985280),
(373, '经典谎言', 0, 1437985280, 1437985280),
(374, '精子射在', 0, 1437985280, 1437985280),
(375, '警察被', 0, 1437985280, 1437985280),
(376, '警察的幌', 0, 1437985280, 1437985280),
(377, '警察殴打', 0, 1437985280, 1437985280),
(378, '警察说保', 0, 1437985280, 1437985280),
(379, '警车雷达', 0, 1437985280, 1437985280),
(380, '警方包庇', 0, 1437985280, 1437985280),
(381, '警用品', 0, 1437985280, 1437985280),
(382, '径步枪', 0, 1437985280, 1437985280),
(383, '敬请忍', 0, 1437985280, 1437985280),
(384, '究生答案', 0, 1437985280, 1437985280),
(385, '九龙论坛', 0, 1437985280, 1437985280),
(386, '九评共', 0, 1437985280, 1437985280),
(387, '酒象喝汤', 0, 1437985280, 1437985280),
(388, '酒像喝汤', 0, 1437985280, 1437985280),
(389, '就爱插', 0, 1437985280, 1437985280),
(390, '就要色', 0, 1437985280, 1437985280),
(391, '举国体', 0, 1437985280, 1437985280),
(392, '巨乳', 0, 1437985280, 1437985280),
(393, '据说全民', 0, 1437985280, 1437985280),
(394, '绝食声', 0, 1437985280, 1437985280),
(395, '军长发威', 0, 1437985280, 1437985280),
(396, '军刺', 0, 1437985280, 1437985280),
(397, '军品特', 0, 1437985280, 1437985280),
(398, '军用手', 0, 1437985280, 1437985280),
(399, '开邓选', 0, 1437985280, 1437985280),
(400, '开锁工具', 0, 1437985280, 1437985280),
(401, '開碼', 0, 1437985280, 1437985280),
(402, '開票', 0, 1437985280, 1437985280),
(403, '砍杀幼', 0, 1437985280, 1437985280),
(404, '砍伤儿', 0, 1437985280, 1437985280),
(405, '康没有不', 0, 1437985280, 1437985280),
(406, '康跳楼', 0, 1437985280, 1437985280),
(407, '考答案', 0, 1437985280, 1437985280),
(408, '考后付款', 0, 1437985280, 1437985280),
(409, '考机构', 0, 1437985280, 1437985280),
(410, '考考邓', 0, 1437985280, 1437985280),
(411, '考联盟', 0, 1437985280, 1437985280),
(412, '考前答', 0, 1437985280, 1437985280),
(413, '考前答案', 0, 1437985280, 1437985280),
(414, '考前付', 0, 1437985280, 1437985280),
(415, '考设备', 0, 1437985280, 1437985280),
(416, '考试包过', 0, 1437985280, 1437985280),
(417, '考试保', 0, 1437985280, 1437985280),
(418, '考试答案', 0, 1437985280, 1437985280),
(419, '考试机构', 0, 1437985280, 1437985280),
(420, '考试联盟', 0, 1437985280, 1437985280),
(421, '考试枪', 0, 1437985280, 1437985280),
(422, '考研考中', 0, 1437985280, 1437985280),
(423, '考中答案', 0, 1437985280, 1437985280),
(424, '磕彰', 0, 1437985280, 1437985280),
(425, '克分析', 0, 1437985280, 1437985280),
(426, '克千术', 0, 1437985280, 1437985280),
(427, '克透视', 0, 1437985280, 1437985280),
(428, '空和雅典', 0, 1437985280, 1437985280),
(429, '孔摄像', 0, 1437985280, 1437985280),
(430, '控诉世博', 0, 1437985280, 1437985280),
(431, '控制媒', 0, 1437985280, 1437985280),
(432, '口手枪', 0, 1437985280, 1437985280),
(433, '骷髅死', 0, 1437985280, 1437985280),
(434, '快速办', 0, 1437985280, 1437985280),
(435, '矿难不公', 0, 1437985280, 1437985280),
(436, '拉登说', 0, 1437985280, 1437985280),
(437, '拉开水晶', 0, 1437985280, 1437985280),
(438, '来福猎', 0, 1437985280, 1437985280),
(439, '拦截器', 0, 1437985280, 1437985280),
(440, '狼全部跪', 0, 1437985280, 1437985280),
(441, '浪穴', 0, 1437985280, 1437985280),
(442, '老虎机', 0, 1437985280, 1437985280),
(443, '雷人女官', 0, 1437985280, 1437985280),
(444, '类准确答', 0, 1437985280, 1437985280),
(445, '黎阳平', 0, 1437985280, 1437985280),
(446, '李洪志', 0, 1437985280, 1437985280),
(447, '李咏曰', 0, 1437985280, 1437985280),
(448, '理各种证', 0, 1437985280, 1437985280),
(449, '理是影帝', 0, 1437985280, 1437985280),
(450, '理证件', 0, 1437985280, 1437985280),
(451, '理做帐报', 0, 1437985280, 1437985280),
(452, '力骗中央', 0, 1437985280, 1437985280),
(453, '力月西', 0, 1437985280, 1437985280),
(454, '丽媛离', 0, 1437985280, 1437985280),
(455, '利他林', 0, 1437985280, 1437985280),
(456, '连发手', 0, 1437985280, 1437985280),
(457, '聯繫電', 0, 1437985280, 1437985280),
(458, '炼大法', 0, 1437985280, 1437985280),
(459, '两岸才子', 0, 1437985280, 1437985280),
(460, '两会代', 0, 1437985280, 1437985280),
(461, '两会又三', 0, 1437985280, 1437985280),
(462, '聊视频', 0, 1437985280, 1437985280),
(463, '聊斋艳', 0, 1437985280, 1437985280),
(464, '了件渔袍', 0, 1437985280, 1437985280),
(465, '猎好帮手', 0, 1437985280, 1437985280),
(466, '猎枪销', 0, 1437985280, 1437985280),
(467, '猎槍', 0, 1437985280, 1437985280),
(468, '獵槍', 0, 1437985280, 1437985280),
(469, '领土拿', 0, 1437985280, 1437985280),
(470, '流血事', 0, 1437985280, 1437985280),
(471, '六合彩', 0, 1437985280, 1437985280),
(472, '六死', 0, 1437985280, 1437985280),
(473, '六四事', 0, 1437985280, 1437985280),
(474, '六月联盟', 0, 1437985280, 1437985280),
(475, '龙湾事件', 0, 1437985280, 1437985280),
(476, '隆手指', 0, 1437985280, 1437985280),
(477, '陆封锁', 0, 1437985280, 1437985280),
(478, '陆同修', 0, 1437985280, 1437985280),
(479, '氯胺酮', 0, 1437985280, 1437985280),
(480, '乱奸', 0, 1437985280, 1437985280),
(481, '乱伦类', 0, 1437985280, 1437985280),
(482, '乱伦小', 0, 1437985280, 1437985280),
(483, '亂倫', 0, 1437985280, 1437985280),
(484, '伦理大', 0, 1437985280, 1437985280),
(485, '伦理电影', 0, 1437985280, 1437985280),
(486, '伦理毛', 0, 1437985280, 1437985280),
(487, '伦理片', 0, 1437985280, 1437985280),
(488, '轮功', 0, 1437985280, 1437985280),
(489, '轮手枪', 0, 1437985280, 1437985280),
(490, '论文代', 0, 1437985280, 1437985280),
(491, '罗斯小姐', 0, 1437985280, 1437985280),
(492, '裸聊网', 0, 1437985280, 1437985280),
(493, '裸舞视', 0, 1437985280, 1437985280),
(494, '落霞缀', 0, 1437985280, 1437985280),
(495, '麻古', 0, 1437985280, 1437985280),
(496, '麻果配', 0, 1437985280, 1437985280),
(497, '麻果丸', 0, 1437985280, 1437985280),
(498, '麻将透', 0, 1437985280, 1437985280),
(499, '麻醉狗', 0, 1437985280, 1437985280),
(500, '麻醉枪', 0, 1437985280, 1437985280),
(501, '麻醉槍', 0, 1437985280, 1437985280),
(502, '麻醉藥', 0, 1437985280, 1437985280),
(503, '蟆叫专家', 0, 1437985280, 1437985280),
(504, '卖地财政', 0, 1437985280, 1437985280),
(505, '卖发票', 0, 1437985280, 1437985280),
(506, '卖银行卡', 0, 1437985280, 1437985280),
(507, '卖自考', 0, 1437985280, 1437985280),
(508, '漫步丝', 0, 1437985280, 1437985280),
(509, '忙爱国', 0, 1437985280, 1437985280),
(510, '猫眼工具', 0, 1437985280, 1437985280),
(511, '毛一鲜', 0, 1437985280, 1437985280),
(512, '媒体封锁', 0, 1437985280, 1437985280),
(513, '每周一死', 0, 1437985280, 1437985280),
(514, '美艳少妇', 0, 1437985280, 1437985280),
(515, '妹按摩', 0, 1437985280, 1437985280),
(516, '妹上门', 0, 1437985280, 1437985280),
(517, '门按摩', 0, 1437985280, 1437985280),
(518, '门保健', 0, 1437985280, 1437985280),
(519, '門服務', 0, 1437985280, 1437985280),
(520, '氓培训', 0, 1437985280, 1437985280),
(521, '蒙汗药', 0, 1437985280, 1437985280),
(522, '迷幻型', 0, 1437985280, 1437985280),
(523, '迷幻药', 0, 1437985280, 1437985280),
(524, '迷幻藥', 0, 1437985280, 1437985280),
(525, '迷昏口', 0, 1437985280, 1437985280),
(526, '迷昏药', 0, 1437985280, 1437985280),
(527, '迷昏藥', 0, 1437985280, 1437985280),
(528, '迷魂香', 0, 1437985280, 1437985280),
(529, '迷魂药', 0, 1437985280, 1437985280),
(530, '迷魂藥', 0, 1437985280, 1437985280),
(531, '迷奸药', 0, 1437985280, 1437985280),
(532, '迷情水', 0, 1437985280, 1437985280),
(533, '迷情药', 0, 1437985280, 1437985280),
(534, '迷藥', 0, 1437985280, 1437985280),
(535, '谜奸药', 0, 1437985280, 1437985280),
(536, '蜜穴', 0, 1437985280, 1437985280),
(537, '灭绝罪', 0, 1437985280, 1437985280),
(538, '民储害', 0, 1437985280, 1437985280),
(539, '民九亿商', 0, 1437985280, 1437985280),
(540, '民抗议', 0, 1437985280, 1437985280),
(541, '明慧网', 0, 1437985280, 1437985280),
(542, '铭记印尼', 0, 1437985280, 1437985280),
(543, '摩小姐', 0, 1437985280, 1437985280),
(544, '母乳家', 0, 1437985280, 1437985280),
(545, '木齐针', 0, 1437985280, 1437985280),
(546, '幕没有不', 0, 1437985280, 1437985280),
(547, '幕前戲', 0, 1437985280, 1437985280),
(548, '内射', 0, 1437985280, 1437985280),
(549, '南充针', 0, 1437985280, 1437985280),
(550, '嫩穴', 0, 1437985280, 1437985280),
(551, '嫩阴', 0, 1437985280, 1437985280),
(552, '泥马之歌', 0, 1437985280, 1437985280),
(553, '你的西域', 0, 1437985280, 1437985280),
(554, '拟涛哥', 0, 1437985280, 1437985280),
(555, '娘两腿之间', 0, 1437985280, 1437985280),
(556, '妞上门', 0, 1437985280, 1437985280),
(557, '浓精', 0, 1437985280, 1437985280),
(558, '怒的志愿', 0, 1437985280, 1437985280),
(559, '女被人家搞', 0, 1437985280, 1437985280),
(560, '女激情', 0, 1437985280, 1437985280),
(561, '女技师', 0, 1437985280, 1437985280),
(562, '女人和狗', 0, 1437985280, 1437985280),
(563, '女任职名', 0, 1437985280, 1437985280),
(564, '女上门', 0, 1437985280, 1437985280),
(565, '女優', 0, 1437985280, 1437985280),
(566, '鸥之歌', 0, 1437985280, 1437985280),
(567, '拍肩神药', 0, 1437985280, 1437985280),
(568, '拍肩型', 0, 1437985280, 1437985280),
(569, '牌分析', 0, 1437985280, 1437985280),
(570, '牌技网', 0, 1437985280, 1437985280),
(571, '炮的小蜜', 0, 1437985280, 1437985280),
(572, '陪考枪', 0, 1437985280, 1437985280),
(573, '配有消', 0, 1437985280, 1437985280),
(574, '喷尿', 0, 1437985280, 1437985280),
(575, '嫖俄罗', 0, 1437985280, 1437985280),
(576, '嫖鸡', 0, 1437985280, 1437985280),
(577, '平惨案', 0, 1437985280, 1437985280),
(578, '平叫到床', 0, 1437985280, 1437985280),
(579, '仆不怕饮', 0, 1437985280, 1437985280),
(580, '普通嘌', 0, 1437985280, 1437985280),
(581, '期货配', 0, 1437985280, 1437985280),
(582, '奇迹的黄', 0, 1437985280, 1437985280),
(583, '奇淫散', 0, 1437985280, 1437985280),
(584, '骑单车出', 0, 1437985280, 1437985280),
(585, '气狗', 0, 1437985280, 1437985280),
(586, '气枪', 0, 1437985280, 1437985280),
(587, '汽狗', 0, 1437985280, 1437985280),
(588, '汽枪', 0, 1437985280, 1437985280),
(589, '氣槍', 0, 1437985280, 1437985280),
(590, '铅弹', 0, 1437985280, 1437985280),
(591, '钱三字经', 0, 1437985280, 1437985280),
(592, '枪出售', 0, 1437985280, 1437985280),
(593, '枪的参', 0, 1437985280, 1437985280),
(594, '枪的分', 0, 1437985280, 1437985280),
(595, '枪的结', 0, 1437985280, 1437985280),
(596, '枪的制', 0, 1437985280, 1437985280),
(597, '枪货到', 0, 1437985280, 1437985280),
(598, '枪决女犯', 0, 1437985280, 1437985280),
(599, '枪决现场', 0, 1437985280, 1437985280),
(600, '枪模', 0, 1437985280, 1437985280),
(601, '枪手队', 0, 1437985280, 1437985280),
(602, '枪手网', 0, 1437985280, 1437985280),
(603, '枪销售', 0, 1437985280, 1437985280),
(604, '枪械制', 0, 1437985280, 1437985280),
(605, '枪子弹', 0, 1437985281, 1437985281),
(606, '强权政府', 0, 1437985281, 1437985281),
(607, '强硬发言', 0, 1437985281, 1437985281),
(608, '抢其火炬', 0, 1437985281, 1437985281),
(609, '切听器', 0, 1437985281, 1437985281),
(610, '窃听器', 0, 1437985281, 1437985281),
(611, '禽流感了', 0, 1437985281, 1437985281),
(612, '勤捞致', 0, 1437985281, 1437985281),
(613, '氢弹手', 0, 1437985281, 1437985281),
(614, '清除负面', 0, 1437985281, 1437985281),
(615, '清純壆', 0, 1437985281, 1437985281),
(616, '情聊天室', 0, 1437985281, 1437985281),
(617, '情妹妹', 0, 1437985281, 1437985281),
(618, '情视频', 0, 1437985281, 1437985281),
(619, '情自拍', 0, 1437985281, 1437985281),
(620, '氰化钾', 0, 1437985281, 1437985281),
(621, '氰化钠', 0, 1437985281, 1437985281),
(622, '请集会', 0, 1437985281, 1437985281),
(623, '请示威', 0, 1437985281, 1437985281),
(624, '请愿', 0, 1437985281, 1437985281),
(625, '琼花问', 0, 1437985281, 1437985281),
(626, '区的雷人', 0, 1437985281, 1437985281),
(627, '娶韩国', 0, 1437985281, 1437985281),
(628, '全真证', 0, 1437985281, 1437985281),
(629, '群奸暴', 0, 1437985281, 1437985281),
(630, '群起抗暴', 0, 1437985281, 1437985281),
(631, '群体性事', 0, 1437985281, 1437985281),
(632, '绕过封锁', 0, 1437985281, 1437985281),
(633, '惹的国', 0, 1437985281, 1437985281),
(634, '人权律', 0, 1437985281, 1437985281),
(635, '人体艺', 0, 1437985281, 1437985281),
(636, '人游行', 0, 1437985281, 1437985281),
(637, '人在云上', 0, 1437985281, 1437985281),
(638, '人真钱', 0, 1437985281, 1437985281),
(639, '认牌绝', 0, 1437985281, 1437985281),
(640, '任于斯国', 0, 1437985281, 1437985281),
(641, '柔胸粉', 0, 1437985281, 1437985281),
(642, '肉洞', 0, 1437985281, 1437985281),
(643, '肉棍', 0, 1437985281, 1437985281),
(644, '如厕死', 0, 1437985281, 1437985281),
(645, '乳交', 0, 1437985281, 1437985281),
(646, '软弱的国', 0, 1437985281, 1437985281),
(647, '赛后骚', 0, 1437985281, 1437985281),
(648, '三挫', 0, 1437985281, 1437985281),
(649, '三级片', 0, 1437985281, 1437985281),
(650, '三秒倒', 0, 1437985281, 1437985281),
(651, '三网友', 0, 1437985281, 1437985281),
(652, '三唑', 0, 1437985281, 1437985281),
(653, '骚妇', 0, 1437985281, 1437985281),
(654, '骚浪', 0, 1437985281, 1437985281),
(655, '骚穴', 0, 1437985281, 1437985281),
(656, '骚嘴', 0, 1437985281, 1437985281),
(657, '扫了爷爷', 0, 1437985281, 1437985281),
(658, '色电影', 0, 1437985281, 1437985281),
(659, '色妹妹', 0, 1437985281, 1437985281),
(660, '色视频', 0, 1437985281, 1437985281),
(661, '色小说', 0, 1437985281, 1437985281),
(662, '杀指南', 0, 1437985281, 1437985281),
(663, '山涉黑', 0, 1437985281, 1437985281),
(664, '煽动不明', 0, 1437985281, 1437985281),
(665, '煽动群众', 0, 1437985281, 1437985281),
(666, '上门激', 0, 1437985281, 1437985281),
(667, '烧公安局', 0, 1437985281, 1437985281),
(668, '烧瓶的', 0, 1437985281, 1437985281),
(669, '韶关斗', 0, 1437985281, 1437985281),
(670, '韶关玩', 0, 1437985281, 1437985281),
(671, '韶关旭', 0, 1437985281, 1437985281),
(672, '射网枪', 0, 1437985281, 1437985281),
(673, '涉嫌抄袭', 0, 1437985281, 1437985281),
(674, '深喉冰', 0, 1437985281, 1437985281),
(675, '神七假', 0, 1437985281, 1437985281),
(676, '神韵艺术', 0, 1437985281, 1437985281),
(677, '生被砍', 0, 1437985281, 1437985281),
(678, '生踩踏', 0, 1437985281, 1437985281),
(679, '生肖中特', 0, 1437985281, 1437985281),
(680, '圣战不息', 0, 1437985281, 1437985281),
(681, '盛行在舞', 0, 1437985281, 1437985281),
(682, '尸博', 0, 1437985281, 1437985281),
(683, '失身水', 0, 1437985281, 1437985281),
(684, '失意药', 0, 1437985281, 1437985281),
(685, '狮子旗', 0, 1437985281, 1437985281),
(686, '十八等', 0, 1437985281, 1437985281),
(687, '十大谎', 0, 1437985281, 1437985281),
(688, '十大禁', 0, 1437985281, 1437985281),
(689, '十个预言', 0, 1437985281, 1437985281),
(690, '十类人不', 0, 1437985281, 1437985281),
(691, '十七大幕', 0, 1437985281, 1437985281),
(692, '实毕业证', 0, 1437985281, 1437985281),
(693, '实体娃', 0, 1437985281, 1437985281),
(694, '实学历文', 0, 1437985281, 1437985281),
(695, '士康事件', 0, 1437985281, 1437985281),
(696, '式粉推', 0, 1437985281, 1437985281),
(697, '视解密', 0, 1437985281, 1437985281),
(698, '是躲猫', 0, 1437985281, 1437985281),
(699, '手变牌', 0, 1437985281, 1437985281),
(700, '手答案', 0, 1437985281, 1437985281),
(701, '手狗', 0, 1437985281, 1437985281),
(702, '手机跟', 0, 1437985281, 1437985281),
(703, '手机监', 0, 1437985281, 1437985281),
(704, '手机窃', 0, 1437985281, 1437985281),
(705, '手机追', 0, 1437985281, 1437985281),
(706, '手拉鸡', 0, 1437985281, 1437985281),
(707, '手木仓', 0, 1437985281, 1437985281),
(708, '手槍', 0, 1437985281, 1437985281),
(709, '守所死法', 0, 1437985281, 1437985281),
(710, '兽交', 0, 1437985281, 1437985281),
(711, '售步枪', 0, 1437985281, 1437985281),
(712, '售纯度', 0, 1437985281, 1437985281),
(713, '售单管', 0, 1437985281, 1437985281),
(714, '售弹簧刀', 0, 1437985281, 1437985281),
(715, '售防身', 0, 1437985281, 1437985281),
(716, '售狗子', 0, 1437985281, 1437985281),
(717, '售虎头', 0, 1437985281, 1437985281),
(718, '售火药', 0, 1437985281, 1437985281),
(719, '售假币', 0, 1437985281, 1437985281),
(720, '售健卫', 0, 1437985281, 1437985281),
(721, '售军用', 0, 1437985281, 1437985281),
(722, '售猎枪', 0, 1437985281, 1437985281),
(723, '售氯胺', 0, 1437985281, 1437985281),
(724, '售麻醉', 0, 1437985281, 1437985281),
(725, '售冒名', 0, 1437985281, 1437985281),
(726, '售枪支', 0, 1437985281, 1437985281),
(727, '售热武', 0, 1437985281, 1437985281),
(728, '售三棱', 0, 1437985281, 1437985281),
(729, '售手枪', 0, 1437985281, 1437985281),
(730, '售五四', 0, 1437985281, 1437985281),
(731, '售信用', 0, 1437985281, 1437985281),
(732, '售一元硬', 0, 1437985281, 1437985281),
(733, '售子弹', 0, 1437985281, 1437985281),
(734, '售左轮', 0, 1437985281, 1437985281),
(735, '书办理', 0, 1437985281, 1437985281),
(736, '熟妇', 0, 1437985281, 1437985281),
(737, '术牌具', 0, 1437985281, 1437985281),
(738, '双管立', 0, 1437985281, 1437985281),
(739, '双管平', 0, 1437985281, 1437985281),
(740, '水阎王', 0, 1437985281, 1437985281),
(741, '丝护士', 0, 1437985281, 1437985281),
(742, '丝情侣', 0, 1437985281, 1437985281),
(743, '丝袜保', 0, 1437985281, 1437985281),
(744, '丝袜恋', 0, 1437985281, 1437985281),
(745, '丝袜美', 0, 1437985281, 1437985281),
(746, '丝袜妹', 0, 1437985281, 1437985281),
(747, '丝袜网', 0, 1437985281, 1437985281),
(748, '丝足按', 0, 1437985281, 1437985281),
(749, '司长期有', 0, 1437985281, 1437985281),
(750, '司法黑', 0, 1437985281, 1437985281),
(751, '私房写真', 0, 1437985281, 1437985281),
(752, '死法分布', 0, 1437985281, 1437985281),
(753, '死要见毛', 0, 1437985281, 1437985281),
(754, '四博会', 0, 1437985281, 1437985281),
(755, '四大扯', 0, 1437985281, 1437985281),
(756, '个四小码', 0, 1437985281, 1437985281),
(757, '苏家屯集', 0, 1437985281, 1437985281),
(758, '诉讼集团', 0, 1437985281, 1437985281),
(759, '素女心', 0, 1437985281, 1437985281),
(760, '速代办', 0, 1437985281, 1437985281),
(761, '速取证', 0, 1437985281, 1437985281),
(762, '酸羟亚胺', 0, 1437985281, 1437985281),
(763, '蹋纳税', 0, 1437985281, 1437985281),
(764, '太王四神', 0, 1437985281, 1437985281),
(765, '泰兴幼', 0, 1437985281, 1437985281),
(766, '泰兴镇中', 0, 1437985281, 1437985281),
(767, '泰州幼', 0, 1437985281, 1437985281),
(768, '贪官也辛', 0, 1437985281, 1437985281),
(769, '探测狗', 0, 1437985281, 1437985281),
(770, '涛共产', 0, 1437985281, 1437985281),
(771, '涛一样胡', 0, 1437985281, 1437985281),
(772, '特工资', 0, 1437985281, 1437985281),
(773, '特码', 0, 1437985281, 1437985281),
(774, '特上门', 0, 1437985281, 1437985281),
(775, '体透视镜', 0, 1437985281, 1437985281),
(776, '替考', 0, 1437985281, 1437985281),
(777, '替人体', 0, 1437985281, 1437985281),
(778, '天朝特', 0, 1437985281, 1437985281),
(779, '天鹅之旅', 0, 1437985281, 1437985281),
(780, '天推广歌', 0, 1437985281, 1437985281),
(781, '田罢工', 0, 1437985281, 1437985281),
(782, '田田桑', 0, 1437985281, 1437985281),
(783, '田停工', 0, 1437985281, 1437985281),
(784, '庭保养', 0, 1437985281, 1437985281),
(785, '庭审直播', 0, 1437985281, 1437985281),
(786, '通钢总经', 0, 1437985281, 1437985281),
(787, '偷電器', 0, 1437985281, 1437985281),
(788, '偷肃贪', 0, 1437985281, 1437985281),
(789, '偷听器', 0, 1437985281, 1437985281),
(790, '偷偷贪', 0, 1437985281, 1437985281),
(791, '头双管', 0, 1437985281, 1437985281),
(792, '透视功能', 0, 1437985281, 1437985281),
(793, '透视镜', 0, 1437985281, 1437985281),
(794, '透视扑', 0, 1437985281, 1437985281),
(795, '透视器', 0, 1437985281, 1437985281),
(796, '透视眼镜', 0, 1437985281, 1437985281),
(797, '透视药', 0, 1437985281, 1437985281),
(798, '透视仪', 0, 1437985281, 1437985281),
(799, '秃鹰汽', 0, 1437985281, 1437985281),
(800, '突破封锁', 0, 1437985281, 1437985281),
(801, '突破网路', 0, 1437985281, 1437985281),
(802, '推油按', 0, 1437985281, 1437985281),
(803, '脱衣艳', 0, 1437985281, 1437985281),
(804, '瓦斯手', 0, 1437985281, 1437985281),
(805, '袜按摩', 0, 1437985281, 1437985281),
(806, '外透视镜', 0, 1437985281, 1437985281),
(807, '外围赌球', 0, 1437985281, 1437985281),
(808, '湾版假', 0, 1437985281, 1437985281),
(809, '万能钥匙', 0, 1437985281, 1437985281),
(810, '万人骚动', 0, 1437985281, 1437985281),
(811, '王立军', 0, 1437985281, 1437985281),
(812, '王益案', 0, 1437985281, 1437985281),
(813, '网民案', 0, 1437985281, 1437985281),
(814, '网民获刑', 0, 1437985281, 1437985281),
(815, '网民诬', 0, 1437985281, 1437985281),
(816, '微型摄像', 0, 1437985281, 1437985281),
(817, '围攻警', 0, 1437985281, 1437985281),
(818, '围攻上海', 0, 1437985281, 1437985281),
(819, '维汉员', 0, 1437985281, 1437985281),
(820, '维权基', 0, 1437985281, 1437985281),
(821, '维权人', 0, 1437985281, 1437985281),
(822, '维权谈', 0, 1437985281, 1437985281),
(823, '委坐船', 0, 1437985281, 1437985281),
(824, '谓的和谐', 0, 1437985281, 1437985281),
(825, '温家堡', 0, 1437985281, 1437985281),
(826, '温切斯特', 0, 1437985281, 1437985281),
(827, '温影帝', 0, 1437985281, 1437985281),
(828, '溫家寶', 0, 1437985281, 1437985281),
(829, '瘟加饱', 0, 1437985281, 1437985281),
(830, '瘟假饱', 0, 1437985281, 1437985281),
(831, '文凭证', 0, 1437985281, 1437985281),
(832, '文强', 0, 1437985281, 1437985281),
(833, '纹了毛', 0, 1437985281, 1437985281),
(834, '闻被控制', 0, 1437985281, 1437985281),
(835, '闻封锁', 0, 1437985281, 1437985281),
(836, '瓮安', 0, 1437985281, 1437985281),
(837, '我的西域', 0, 1437985281, 1437985281),
(838, '我搞台独', 0, 1437985281, 1437985281),
(839, '乌蝇水', 0, 1437985281, 1437985281),
(840, '无耻语录', 0, 1437985281, 1437985281),
(841, '无码专', 0, 1437985281, 1437985281),
(842, '五套功', 0, 1437985281, 1437985281),
(843, '五月天', 0, 1437985281, 1437985281),
(844, '午夜电', 0, 1437985281, 1437985281),
(845, '午夜极', 0, 1437985281, 1437985281),
(846, '武警暴', 0, 1437985281, 1437985281),
(847, '武警殴', 0, 1437985281, 1437985281),
(848, '武警已增', 0, 1437985281, 1437985281),
(849, '务员答案', 0, 1437985281, 1437985281),
(850, '务员考试', 0, 1437985281, 1437985281),
(851, '雾型迷', 0, 1437985281, 1437985281),
(852, '西藏限', 0, 1437985281, 1437985281),
(853, '西服进去', 0, 1437985281, 1437985281),
(854, '希脏', 0, 1437985281, 1437985281),
(855, '习进平', 0, 1437985281, 1437985281),
(856, '习晋平', 0, 1437985281, 1437985281),
(857, '席复活', 0, 1437985281, 1437985281),
(858, '席临终前', 0, 1437985281, 1437985281),
(859, '席指着护', 0, 1437985281, 1437985281),
(860, '洗澡死', 0, 1437985281, 1437985281),
(861, '喜贪赃', 0, 1437985281, 1437985281),
(862, '先烈纷纷', 0, 1437985281, 1437985281),
(863, '现大地震', 0, 1437985281, 1437985281),
(864, '现金投注', 0, 1437985281, 1437985281),
(865, '线透视镜', 0, 1437985281, 1437985281),
(866, '限制言', 0, 1437985281, 1437985281),
(867, '陷害案', 0, 1437985281, 1437985281),
(868, '陷害罪', 0, 1437985281, 1437985281),
(869, '相自首', 0, 1437985281, 1437985281),
(870, '香港论坛', 0, 1437985281, 1437985281),
(871, '香港马会', 0, 1437985281, 1437985281),
(872, '香港一类', 0, 1437985281, 1437985281),
(873, '香港总彩', 0, 1437985281, 1437985281),
(874, '硝化甘', 0, 1437985281, 1437985281),
(875, '小穴', 0, 1437985281, 1437985281),
(876, '校骚乱', 0, 1437985281, 1437985281),
(877, '协晃悠', 0, 1437985281, 1437985281),
(878, '写两会', 0, 1437985281, 1437985281),
(879, '泄漏的内', 0, 1437985281, 1437985281),
(880, '新建户', 0, 1437985281, 1437985281),
(881, '新疆叛', 0, 1437985281, 1437985281),
(882, '新疆限', 0, 1437985281, 1437985281),
(883, '新金瓶', 0, 1437985281, 1437985281),
(884, '新唐人', 0, 1437985281, 1437985281),
(885, '信访专班', 0, 1437985281, 1437985281),
(886, '信接收器', 0, 1437985281, 1437985281),
(887, '兴中心幼', 0, 1437985281, 1437985281),
(888, '星上门', 0, 1437985281, 1437985281),
(889, '行长王益', 0, 1437985281, 1437985281),
(890, '形透视镜', 0, 1437985281, 1437985281),
(891, '型手枪', 0, 1437985281, 1437985281),
(892, '姓忽悠', 0, 1437985281, 1437985281),
(893, '幸运码', 0, 1437985281, 1437985281),
(894, '性爱日', 0, 1437985281, 1437985281),
(895, '性福情', 0, 1437985281, 1437985281),
(896, '性感少', 0, 1437985281, 1437985281),
(897, '性推广歌', 0, 1437985281, 1437985281),
(898, '胸主席', 0, 1437985281, 1437985281),
(899, '徐玉元', 0, 1437985281, 1437985281),
(900, '学骚乱', 0, 1437985281, 1437985281),
(901, '学位證', 0, 1437985281, 1437985281),
(902, '學生妹', 0, 1437985281, 1437985281),
(903, '丫与王益', 0, 1437985281, 1437985281),
(904, '烟感器', 0, 1437985281, 1437985281),
(905, '严晓玲', 0, 1437985281, 1437985281),
(906, '言被劳教', 0, 1437985281, 1437985281),
(907, '言论罪', 0, 1437985281, 1437985281),
(908, '盐酸曲', 0, 1437985281, 1437985281),
(909, '颜射', 0, 1437985281, 1437985281),
(910, '恙虫病', 0, 1437985281, 1437985281),
(911, '姚明进去', 0, 1437985281, 1437985281),
(912, '要人权', 0, 1437985281, 1437985281),
(913, '要射精了', 0, 1437985281, 1437985281),
(914, '要射了', 0, 1437985281, 1437985281),
(915, '要泄了', 0, 1437985281, 1437985281),
(916, '夜激情', 0, 1437985281, 1437985281),
(917, '液体炸', 0, 1437985281, 1437985281),
(918, '一小撮别', 0, 1437985281, 1437985281),
(919, '遗情书', 0, 1437985281, 1437985281),
(920, '蚁力神', 0, 1437985281, 1437985281),
(921, '益关注组', 0, 1437985281, 1437985281),
(922, '益受贿', 0, 1437985281, 1437985281),
(923, '阴间来电', 0, 1437985281, 1437985281),
(924, '陰唇', 0, 1437985281, 1437985281),
(925, '陰道', 0, 1437985281, 1437985281),
(926, '陰戶', 0, 1437985281, 1437985281),
(927, '淫魔舞', 0, 1437985281, 1437985281),
(928, '淫情女', 0, 1437985281, 1437985281),
(929, '淫肉', 0, 1437985281, 1437985281),
(930, '淫騷妹', 0, 1437985281, 1437985281),
(931, '淫兽', 0, 1437985281, 1437985281),
(932, '淫兽学', 0, 1437985281, 1437985281),
(933, '淫水', 0, 1437985281, 1437985281),
(934, '淫穴', 0, 1437985281, 1437985281),
(935, '隐形耳', 0, 1437985281, 1437985281),
(936, '隐形喷剂', 0, 1437985281, 1437985281),
(937, '应子弹', 0, 1437985281, 1437985281),
(938, '婴儿命', 0, 1437985281, 1437985281),
(939, '咏妓', 0, 1437985281, 1437985281),
(940, '用手枪', 0, 1437985281, 1437985281),
(941, '幽谷三', 0, 1437985281, 1437985281),
(942, '游精佑', 0, 1437985281, 1437985281),
(943, '有奶不一', 0, 1437985281, 1437985281),
(944, '右转是政', 0, 1437985281, 1437985281),
(945, '幼齿类', 0, 1437985281, 1437985281),
(946, '娱乐透视', 0, 1437985281, 1437985281),
(947, '愚民同', 0, 1437985281, 1437985281),
(948, '愚民政', 0, 1437985281, 1437985281),
(949, '与狗性', 0, 1437985281, 1437985281),
(950, '玉蒲团', 0, 1437985281, 1437985281),
(951, '育部女官', 0, 1437985281, 1437985281),
(952, '冤民大', 0, 1437985281, 1437985281),
(953, '鸳鸯洗', 0, 1437985281, 1437985281),
(954, '园惨案', 0, 1437985281, 1437985281),
(955, '园发生砍', 0, 1437985281, 1437985281),
(956, '园砍杀', 0, 1437985281, 1437985281),
(957, '园凶杀', 0, 1437985281, 1437985281),
(958, '园血案', 0, 1437985281, 1437985281),
(959, '原一九五七', 0, 1437985281, 1437985281),
(960, '原装弹', 0, 1437985281, 1437985281),
(961, '袁腾飞', 0, 1437985281, 1437985281),
(962, '晕倒型', 0, 1437985281, 1437985281),
(963, '韵徐娘', 0, 1437985281, 1437985281),
(964, '遭便衣', 0, 1437985281, 1437985281),
(965, '遭到警', 0, 1437985281, 1437985281),
(966, '遭警察', 0, 1437985281, 1437985281),
(967, '遭武警', 0, 1437985281, 1437985281),
(968, '择油录', 0, 1437985281, 1437985281),
(969, '曾道人', 0, 1437985281, 1437985281),
(970, '炸弹教', 0, 1437985281, 1437985281),
(971, '炸弹遥控', 0, 1437985281, 1437985281),
(972, '炸广州', 0, 1437985281, 1437985281),
(973, '炸立交', 0, 1437985281, 1437985281),
(974, '炸药的制', 0, 1437985281, 1437985281),
(975, '炸药配', 0, 1437985281, 1437985281),
(976, '炸药制', 0, 1437985281, 1437985281),
(977, '张春桥', 0, 1437985281, 1437985281),
(978, '找枪手', 0, 1437985281, 1437985281),
(979, '找援交', 0, 1437985281, 1437985281),
(980, '找政法委副', 0, 1437985281, 1437985281),
(981, '赵紫阳', 0, 1437985281, 1437985281),
(982, '针刺案', 0, 1437985281, 1437985281),
(983, '针刺伤', 0, 1437985281, 1437985281),
(984, '针刺事', 0, 1437985281, 1437985281),
(985, '针刺死', 0, 1437985281, 1437985281),
(986, '侦探设备', 0, 1437985281, 1437985281),
(987, '真钱斗地', 0, 1437985281, 1437985281),
(988, '真钱投注真善忍', 0, 1437985281, 1437985281),
(989, '真实文凭', 0, 1437985281, 1437985281),
(990, '真实资格', 0, 1437985281, 1437985281),
(991, '震惊一个民', 0, 1437985281, 1437985281),
(992, '震其国土', 0, 1437985281, 1437985281),
(993, '证到付款', 0, 1437985281, 1437985281),
(994, '证件办', 0, 1437985281, 1437985281),
(995, '证件集团', 0, 1437985281, 1437985281),
(996, '证生成器', 0, 1437985281, 1437985281),
(997, '证书办', 0, 1437985281, 1437985281),
(998, '证一次性', 0, 1437985281, 1437985281),
(999, '政府操', 0, 1437985281, 1437985281),
(1000, '政论区', 0, 1437985281, 1437985281),
(1001, '證件', 0, 1437985281, 1437985281),
(1002, '植物冰', 0, 1437985281, 1437985281),
(1003, '殖器护', 0, 1437985281, 1437985281),
(1004, '指纹考勤', 0, 1437985281, 1437985281),
(1005, '指纹膜', 0, 1437985281, 1437985281),
(1006, '指纹套', 0, 1437985281, 1437985281),
(1007, '至国家高', 0, 1437985281, 1437985281),
(1008, '志不愿跟', 0, 1437985281, 1437985281),
(1009, '制服诱', 0, 1437985281, 1437985281),
(1010, '制手枪', 0, 1437985281, 1437985281),
(1011, '制证定金', 0, 1437985281, 1437985281),
(1012, '制作证件', 0, 1437985281, 1437985281),
(1013, '中的班禅', 0, 1437985281, 1437985281),
(1014, '中共黑', 0, 1437985281, 1437985281),
(1015, '中国不强', 0, 1437985281, 1437985281),
(1016, '种公务员', 0, 1437985281, 1437985281),
(1017, '种学历证', 0, 1437985281, 1437985281),
(1018, '众像羔', 0, 1437985281, 1437985281),
(1019, '州惨案', 0, 1437985281, 1437985281),
(1020, '州大批贪', 0, 1437985281, 1437985281),
(1021, '州三箭', 0, 1437985281, 1437985281),
(1022, '宙最高法', 0, 1437985281, 1437985281),
(1023, '昼将近', 0, 1437985281, 1437985281),
(1024, '主席忏', 0, 1437985281, 1437985281),
(1025, '住英国房', 0, 1437985281, 1437985281),
(1026, '助考', 0, 1437985281, 1437985281),
(1027, '助考网', 0, 1437985281, 1437985281),
(1028, '专业办理', 0, 1437985281, 1437985281),
(1029, '专业代', 0, 1437985281, 1437985281),
(1030, '专业代写', 0, 1437985281, 1437985281),
(1031, '专业助', 0, 1437985281, 1437985281),
(1032, '转是政府', 0, 1437985281, 1437985281),
(1033, '赚钱资料', 0, 1437985281, 1437985281),
(1034, '装弹甲', 0, 1437985281, 1437985281),
(1035, '装枪套', 0, 1437985281, 1437985281),
(1036, '装消音', 0, 1437985281, 1437985281),
(1037, '着护士的胸', 0, 1437985281, 1437985281),
(1038, '着涛哥', 0, 1437985281, 1437985281),
(1039, '姿不对死', 0, 1437985281, 1437985281),
(1040, '资格證', 0, 1437985281, 1437985281),
(1041, '资料泄', 0, 1437985281, 1437985281),
(1042, '梓健特药', 0, 1437985281, 1437985281),
(1043, '字牌汽', 0, 1437985281, 1437985281),
(1044, '自己找枪', 0, 1437985281, 1437985281),
(1045, '自慰用', 0, 1437985281, 1437985281),
(1046, '自由圣', 0, 1437985281, 1437985281),
(1047, '自由亚', 0, 1437985281, 1437985281),
(1048, '总会美女', 0, 1437985281, 1437985281),
(1049, '足球玩法', 0, 1437985281, 1437985281),
(1050, '最牛公安', 0, 1437985281, 1437985281),
(1051, '醉钢枪', 0, 1437985281, 1437985281),
(1052, '醉迷药', 0, 1437985281, 1437985281),
(1053, '醉乙醚', 0, 1437985281, 1437985281),
(1054, '尊爵粉', 0, 1437985281, 1437985281),
(1055, '左转是政', 0, 1437985281, 1437985281),
(1056, '作弊器', 0, 1437985281, 1437985281),
(1057, '作各种证', 0, 1437985281, 1437985281),
(1058, '作硝化甘', 0, 1437985281, 1437985281),
(1059, '唑仑', 0, 1437985281, 1437985281),
(1060, '做爱小', 0, 1437985281, 1437985281),
(1061, '做原子弹', 0, 1437985281, 1437985281),
(1062, '做证件', 0, 1437985281, 1437985281);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_system_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL,
  `currentfileid` varchar(40) NOT NULL DEFAULT '',
  `currentsqlid` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_system_info`
--

INSERT INTO `pigcms_system_info` (`lastsqlupdate`, `version`, `currentfileid`, `currentsqlid`) VALUES
(1427203980, '1460371380', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_taobao`
--

CREATE TABLE IF NOT EXISTS `pigcms_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_tempmsg`
--

CREATE TABLE IF NOT EXISTS `pigcms_tempmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempkey` char(50) NOT NULL,
  `name` char(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `industry` char(50) NOT NULL,
  `topcolor` char(10) NOT NULL DEFAULT '#029700',
  `textcolor` char(10) NOT NULL DEFAULT '#000000',
  `token` char(40) NOT NULL,
  `tempid` char(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '模板类型（0：系统自带的，1：自己增加的）',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_tempmsg`
--

INSERT INTO `pigcms_tempmsg` (`id`, `tempkey`, `name`, `content`, `industry`, `topcolor`, `textcolor`, `token`, `tempid`, `status`, `type`) VALUES
(1, 'OPENTM203574543', '收到回复通知', '{{first.DATA}}回复者：{{keyword1.DATA}}回复时间：{{keyword2.DATA}}回复内容：{{keyword3.DATA}}{{remark.DATA}}', 'IT科技_互联网|电子商务', '#029700', '#000000', 'mqxsaz1456822538', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_test`
--

CREATE TABLE IF NOT EXISTS `pigcms_test` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(100) DEFAULT NULL,
  `indexpic` varchar(100) DEFAULT NULL,
  `questionpic` varchar(100) DEFAULT NULL,
  `bgcolor` varchar(100) NOT NULL DEFAULT 'ffcb1d',
  `title` varchar(100) NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `fistq` varchar(100) NOT NULL,
  `fistapic` varchar(100) NOT NULL,
  `fistatitle` varchar(100) NOT NULL,
  `fistatitle2` varchar(100) NOT NULL,
  `fistainfo` varchar(200) DEFAULT NULL,
  `secondq` varchar(100) NOT NULL,
  `secondapic` varchar(100) NOT NULL,
  `secondatitle` varchar(100) NOT NULL,
  `secondatitle2` varchar(100) NOT NULL,
  `secondainfo` varchar(200) DEFAULT NULL,
  `thirdq` varchar(100) DEFAULT NULL,
  `thirdapic` varchar(100) DEFAULT NULL,
  `thirdatitle` varchar(100) DEFAULT NULL,
  `thirdatitle2` varchar(100) DEFAULT NULL,
  `thirdainfo` varchar(200) DEFAULT NULL,
  `fourq` varchar(100) DEFAULT NULL,
  `fourapic` varchar(100) DEFAULT NULL,
  `fouratitle` varchar(100) DEFAULT NULL,
  `fouratitle2` varchar(100) DEFAULT NULL,
  `fourainfo` varchar(200) DEFAULT NULL,
  `fiveq` varchar(100) DEFAULT NULL,
  `fiveapic` varchar(100) DEFAULT NULL,
  `fiveatitle` varchar(100) DEFAULT NULL,
  `fiveatitle2` varchar(100) DEFAULT NULL,
  `fiveainfo` varchar(200) DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `fistfx` varchar(200) DEFAULT NULL,
  `secondfx` varchar(200) DEFAULT NULL,
  `thirdfx` varchar(200) DEFAULT NULL,
  `fourfx` varchar(200) DEFAULT NULL,
  `fivefx` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_test_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_test_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `testid` int(11) NOT NULL,
  `testtype` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_text`
--

CREATE TABLE IF NOT EXISTS `pigcms_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文本回复表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_text`
--

INSERT INTO `pigcms_text` (`id`, `uid`, `uname`, `keyword`, `precisions`, `text`, `createtime`, `updatetime`, `click`, `token`) VALUES
(5, 27, '', '微助力', 0, '好的', '1439958307', '1439958307', 0, 'cavegu1439957052');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_token_open`
--

CREATE TABLE IF NOT EXISTS `pigcms_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `pigcms_token_open`
--

INSERT INTO `pigcms_token_open` (`id`, `uid`, `token`, `queryname`) VALUES
(11, 9, 'avclov1439948990', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(12, 11, 'cyvwqd1439949073', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(13, 13, 'iztlsr1439949156', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(14, 8, 'qgvdkw1439949139', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(15, 12, 'ascqfk1439949165', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(16, 16, 'ddqhjy1439950027', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(17, 14, 'vjotae1439949952', 'fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice,lbsNews'),
(18, 15, 'sfrpky1439949951', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(19, 17, 'bznhbf1439950816', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(20, 18, 'cedgjq1439951515', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(21, 26, 'hbokpr1439956537', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice'),
(22, 27, 'cavegu1439957052', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice,lbsNews'),
(23, 28, 'uxtals1439962913', 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_twitter_count`
--

CREATE TABLE IF NOT EXISTS `pigcms_twitter_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `twid` varchar(20) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `total` float NOT NULL COMMENT '总金额',
  `remove` float NOT NULL COMMENT '提出的金额',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分佣统计' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_twitter_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_twitter_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `fromsource` varchar(60) NOT NULL COMMENT '来自源',
  `param` float NOT NULL,
  `wecha_id` varchar(64) NOT NULL COMMENT '操作人，即操作了推广人推广的产品',
  `info` varchar(500) NOT NULL COMMENT '推广的详情',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`),
  KEY `fromsource` (`fromsource`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='获取佣金记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_twitter_remove`
--

CREATE TABLE IF NOT EXISTS `pigcms_twitter_remove` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '提款人姓名',
  `tel` varchar(15) NOT NULL,
  `number` varchar(32) NOT NULL COMMENT '收款账号',
  `bank` varchar(30) NOT NULL COMMENT '银行名称',
  `address` varchar(60) NOT NULL COMMENT '开户行地址',
  `price` float NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_twitter_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_twitter_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `clickprice` float NOT NULL COMMENT '点击的价格',
  `clickmax` int(10) unsigned NOT NULL COMMENT '每天点击的上限',
  `registerprice` float NOT NULL COMMENT '注册的价格',
  `registermax` int(10) unsigned NOT NULL COMMENT '每天注册的上限',
  `percent` float NOT NULL COMMENT '商品总价的百分比',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_unitary`
--

CREATE TABLE IF NOT EXISTS `pigcms_unitary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名称/微信中图文信息标题',
  `wxpic` varchar(100) DEFAULT NULL COMMENT '微信中图文信息图片',
  `wxinfo` varchar(100) DEFAULT NULL COMMENT '微信中图文信息说明',
  `wxregister` int(11) NOT NULL DEFAULT '1' COMMENT '关注/注册',
  `register` int(11) NOT NULL DEFAULT '0' COMMENT '注册/不注册',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `type` int(11) DEFAULT NULL COMMENT '分类',
  `logopic` varchar(100) DEFAULT NULL COMMENT 'logo图片',
  `fistpic` varchar(100) DEFAULT NULL COMMENT '展示图片1',
  `secondpic` varchar(100) DEFAULT NULL COMMENT '展示图片2',
  `thirdpic` varchar(100) DEFAULT NULL COMMENT '展示图片3',
  `fourpic` varchar(100) DEFAULT NULL COMMENT '展示图片4',
  `fivepic` varchar(100) DEFAULT NULL COMMENT '展示图片5',
  `sixpic` varchar(100) DEFAULT NULL COMMENT '展示图片6',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `opentime` int(11) DEFAULT NULL COMMENT '结束后展示结果倒计时',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `state` int(11) DEFAULT NULL COMMENT '活动开关',
  `renqi` int(11) NOT NULL DEFAULT '0' COMMENT '人气',
  `lucknum` int(11) DEFAULT NULL COMMENT '幸运数字',
  `proportion` double NOT NULL DEFAULT '0',
  `lasttime` int(11) DEFAULT NULL,
  `lastnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_unitary_cart`
--

CREATE TABLE IF NOT EXISTS `pigcms_unitary_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '购买/购物车状态',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_unitary_lucknum`
--

CREATE TABLE IF NOT EXISTS `pigcms_unitary_lucknum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `lucknum` int(11) DEFAULT NULL,
  `addtime` double DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL COMMENT '购物id',
  `state` int(11) NOT NULL DEFAULT '0',
  `paifa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_unitary_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_unitary_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '总价',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `paytype` varchar(50) DEFAULT NULL COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方支付平台的订单ID，用于对帐。',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_unitary_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_unitary_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `address` text COMMENT '地址',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_update_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1343 ;

--
-- 转存表中的数据 `pigcms_update_record`
--

INSERT INTO `pigcms_update_record` (`id`, `msg`, `type`, `time`) VALUES
(1, '新功能 摇一摇.周边', '1', 1432515720),
(2, '修复粉丝管理CRM粉丝信息不同步分组', '1', 1432616940),
(3, '修复卡券代金券减免金额错误', '0', 1432623120),
(4, '补丁', '0', 1432632360),
(5, '修复会员卡筛选输出异常', '0', 1432690680),
(6, '修复图文投票活动日期修改失效和手机端页面加载的问题', '0', 1432704480),
(7, '工单提交报，请求不正确问题修复', '0', 1432707900),
(8, '修复微游戏功能库的问题', '0', 1432717860),
(9, '修复会员卡卡券核销', '0', 1432727220),
(10, '订餐打印的时候加上预定时间', '0', 1432776000),
(11, 'DIY宣传页和添加公众号时候添加的二维码同步', '0', 1432776060),
(12, '加盟增值版 新增一键托管功能', '1', 1432777620),
(13, '修复酒店订单不能取消', '0', 1432778100),
(14, '修复了微游戏自定义项图片宽高未做处理', '0', 1432778880),
(15, '修复功能管理同步问题', '1', 1432781820),
(16, '调整聊天，调整功能管理', '1', 1432792740),
(17, '外卖订单打印信息调整，管理中心登入登出样式文件', '0', 1432792920),
(18, '商品添加页面修改', '0', 1432795140),
(19, '添加公众号的时候添加二维码', '1', 1432796700),
(20, '修复会员卡粉丝领取卡券后卡券不在粉丝会员卡中', '0', 1432801560),
(21, '修复高级场景添加页面空白问题', '0', 1432805280),
(22, '修复平台对帐的财付通WAP版无法正确跳转和支付平台多次通知未正常返回导致的多条平台对帐记录。', '0', 1432806180),
(23, '修复了微秒杀商品库存为0时还可以抢购', '0', 1432807800),
(24, '修复添加公众号中编辑页面的二维码保存问题', '0', 1432868220),
(25, '修复图文投票默认菜单的时间', '0', 1432884960),
(26, '左侧菜单调整', '0', 1432888260),
(27, '修复会员卡样式和礼品券的问题，修复关注判断', '0', 1432890780),
(28, '平台支付使用支付宝', '1', 1432891920),
(29, '修复管理中心的二维码被遮挡的问题', '0', 1432949640),
(30, '修复模板消息缓存问题', '0', 1432958100),
(31, '修复餐饮提交结算金额提示不对， 修复微外卖 下单页面 送达时间', '0', 1432969680),
(32, '修复图文投票手机端加载问题', '0', 1432970340),
(33, '修复图文外链', '0', 1432971960),
(34, '修复获取调用access_token 40001错误', '0', 1432976160),
(35, '修复人气冲榜', '0', 1432980720),
(36, '新版自定义菜单，可以使用一键拨号与一键导航', '1', 1433123760),
(37, '修复大转盘关注判断不准确问题，修复宾馆酒店订单取消后，后台的提示', '0', 1433129880),
(38, '修复图文投票管理中心修改投票选项，可以修改多个照片', '0', 1433129940),
(39, '修复拆礼盒的作弊功能', '0', 1433135460),
(40, '修复自定义菜单中的提示', '0', 1433153820),
(41, '修复会员卡充值赠送问题', '0', 1433211540),
(42, '修复万能表单导出生僻字错误问题', '0', 1433211660),
(43, '加盟增值版修复完微现场活动图片上墙问题', '0', 1433222280),
(44, '电商系统中的财付通支付优化', '1', 1433229480),
(45, '修复LBS中的分支机构问题', '0', 1433236080),
(46, '加盟增值。修复摇一摇周边绑定多个页面问题', '0', 1433240640),
(47, '加盟增值版微店的登录和提现', '1', 1433382060),
(48, '修复自定义菜单与粉丝管理的Access_token缓存问题,解决请求超出接口限制频率。', '0', 1433382540),
(49, '自定义菜单手机端的模板文件', '0', 1433383320),
(50, '系统文件更新', '0', 1433395620),
(51, '修复左侧菜单', '0', 1433397840),
(52, '微外卖、微餐饮 短信通知功能 修复', '0', 1433399400),
(53, '修复会员卡的消费记录', '0', 1433409540),
(54, '修复微外卖的样式问题', '0', 1433409720),
(55, '修复后台访问素材库问题', '0', 1433466600),
(56, '修复加盟增值版微信墙的图片显示和手机验证', '0', 1433474400),
(57, '修复微现场活动微信墙，相片上墙问题', '0', 1433485140),
(58, '修复微信墙的图片显示和手机限制', '0', 1433485200),
(59, '修复微场景', '0', 1433494200),
(60, '当微信中只有支付宝一种支付方式的时候，支付页面的处理', '0', 1433495100),
(61, '修复自定义菜单中的微场景连接问题', '0', 1433495580),
(62, '修复商城积分兑换的问题', '0', 1433552580),
(63, '修复商城中商品列表中通过更多获取出来的商品，获取不到佣金的问题。修复酒店预定取消订单后的状态问题', '0', 1433552760),
(64, '修复会员卡中礼品券领取积分无使用记录', '0', 1433555340),
(65, '系统更新', '0', 1433576700),
(66, '修复左侧菜单栏', '0', 1433643540),
(67, '修复商城死循环问题', '0', 1433654100),
(68, '系统文件修复', '0', 1433665320),
(69, '修复地图的问题', '0', 1433667360),
(70, '修复酒店订房显示问题和切换公众号的时候商城的管理', '0', 1433669340),
(71, '系统文件更新', '0', 1433671320),
(72, '修复模板切换问题', '0', 1433733540),
(73, '修复支付宝支付异步通知问题', '0', 1433733840),
(74, '支付异步通知的修复', '0', 1433750700),
(75, '修复微店的提现和登录', '0', 1433753040),
(76, '修复微餐饮中店员管理的问题', '0', 1433757960),
(77, '升级新功能—降价拍', '1', 1433758080),
(78, '修复模板显示错误', '0', 1433812800),
(79, '修复帐号到期提醒', '0', 1433816220),
(80, '修复微助力的排行', '0', 1433820000),
(81, '修复小黄鸡问题', '0', 1433828700),
(82, '修复自定义菜单的说明，降价拍图片不能说明，到店付款和货到付款', '0', 1433837880),
(83, '修复会员充值问题', '0', 1433845320),
(84, '修复预约看房图文回复错误', '0', 1433898300),
(85, '修复模板问题', '0', 1433898360),
(86, '修复微汽车中排量选择的问题', '0', 1433898420),
(87, '修复现场活动大屏幕的问题', '0', 1433907120),
(88, '修复工单提交时管理中心返回为空', '0', 1433915280),
(89, '修复Access_token超出最大限制的问题', '0', 1433919300),
(90, '修复微餐饮在首页定位 加一个重新定位按钮', '0', 1433927460),
(91, '解决Accesss_Token获取次数超出最大限制2000次导致不能使用', '0', 1434003840),
(92, '修复添加功能的提醒', '0', 1434005220),
(93, '修复一战到底中题目的状态错误问题', '0', 1434007620),
(94, '修复微网站模板不居中问题', '0', 1434007860),
(95, '修复微现场问题', '0', 1434008880),
(96, '修复留言板的样式', '0', 1434015000),
(97, '修复图文投票首页加上分享、统计栏统计信息修改、底部导航自适应、上传图片显示不全等问题', '0', 1434018000),
(98, '修复管理中心的系统用户勾选问题', '0', 1434102120),
(99, '修复会员卡积分赠送的问题', '0', 1434102480),
(100, '修复会员卡手动充值没有记录的问题', '0', 1434185700),
(101, '修复粉丝行为分析-趋势对比分析全是英文的问题', '0', 1434185760),
(102, '修复网站123模板显示问题', '0', 1434186120),
(103, '修复游戏不显示名字', '0', 1434186360),
(104, '加盟增值型，修复一键绑定公众号，使公众号类型不可修改', '0', 1434334320),
(105, '微店文件升级', '1', 1434335700),
(106, '修复微游戏记录问题', '0', 1434336600),
(107, '第三方调用Access_Token', '0', 1434337680),
(108, '摇一摇周边，设备更新修复', '0', 1434339720),
(109, '加盟增值型，修复一间绑定公众号，公众号类型的问题', '0', 1434339840),
(110, '微店总后台配置备注说明修改', '0', 1434339960),
(111, '文件更新', '0', 1434345900),
(112, '解决 酒店订单无法搜索的问题', '0', 1434352380),
(113, '修复3G相册上传问题', '0', 1434354960),
(114, '修复人气冲榜规则说明中的图片显示', '0', 1434359460),
(115, '修复分享按钮不见的问题', '0', 1434421440),
(116, '一元购活动算法说明', '0', 1434424140),
(117, '新功能，微名片', '1', 1434431460),
(118, '自定义菜单资源文件', '0', 1434443940),
(119, '首页资费说明', '0', 1434444960),
(120, '微名片手机端文件', '0', 1434445740),
(121, '数据库与表的优化', '1', 1434504840),
(122, '微网站文件', '0', 1434510060),
(123, '修复Access_token超出限制的问题', '1', 1434510240),
(124, '修复帐号添加二维码问题', '0', 1434510780),
(125, '修复站长后台添加帐号的时间', '0', 1434535500),
(126, '修复会员卡充值问题', '0', 1434535800),
(127, '修复确认按钮乱码和支付宝平台支付无法进行对账', '0', 1434536520),
(128, '修复自定义说明问题', '0', 1434536640),
(129, '修复图文回复问题', '0', 1434537060),
(130, '修改群发消息的错误提醒', '0', 1434589980),
(131, '修复自定义菜单的说明', '0', 1434590100),
(132, '修复关注判断', '1', 1434590160),
(133, '新功能，团购——库存，虚拟商品', '1', 1434598920),
(134, '修复关注回复的功能库选择', '0', 1434599760),
(135, '修复一战到底题目的显示与隐藏', '0', 1434606180),
(136, '修复图文回复和分享空白', '0', 1434611700),
(137, '修复微网站21号模版显示偏移问题。', '0', 1434618060),
(138, '修复全民经纪人的 修改密码', '0', 1434623160),
(139, '修复用户中心帮助代理商客户QQ错误', '0', 1434678960),
(140, '修复微信卡券名称标题超出限制导致无法同步微信卡券', '0', 1434681060),
(141, '修复微网站21号模版显示偏移问题。', '0', 1434681420),
(142, '修复微名片下载不可以扫的问题', '0', 1434692280),
(143, '修复会员卡获取验证码时使用的手机号与提交时使用的手机号不同', '0', 1434694740),
(144, '修复微信支付，取消网银在线支付', '0', 1434694860),
(145, '修复编辑公众号的时候不能添加头像', '0', 1434698340),
(146, '修复360°全景报错无法打开', '0', 1434702480),
(147, '数据库与表的优化', '1', 1434702780),
(148, '修复素材库不显示问题', '0', 1434704700),
(149, '红包分享问题', '0', 1434710880),
(150, '微游戏补丁', '0', 1435044240),
(151, 'mstore', '0', 1435073040),
(152, '修复虚拟物品中微信支付成功后不发送虚拟团购物品', '0', 1435110600),
(153, '微医疗在预约管理详情页中加上是否付款项', '0', 1435110780),
(154, '附近图文按钮移放到公众号编辑中', '0', 1435112400),
(155, '修复惩罚台活动', '0', 1435114860),
(156, '修复资费说明页', '0', 1435117200),
(157, '修复微外卖', '0', 1435117380),
(158, '修复全民经纪人无法修改密码', '0', 1435117440),
(159, '修复可以直接点击等级，不需要经过支付就能到想要的客户组', '0', 1435126200),
(160, '图文投票V5.0', '1', 1435132560),
(161, '优化微店接口', '0', 1435135320),
(162, '修复合体红包点击活动规则后不能点抢红包', '0', 1435135680),
(163, '修复会员充值赠送', '0', 1435142760),
(164, '修复惩罚台页面不显示问题', '0', 1435142940),
(165, '修复微店登录', '0', 1435203960),
(166, '优化图文投票', '0', 1435204500),
(167, '修复自定义菜单删除问题', '0', 1435209480),
(168, '修复总后台-扩展管理横幅的图片设置', '0', 1435213860),
(169, '修复站长后台的客户管理中的客户编辑', '0', 1435218900),
(170, '修复论坛首页不能点赞的问题', '0', 1435223460),
(171, '游戏起始页面一键关注改为自定义', '0', 1435225740),
(172, '优化微店登录', '0', 1435284960),
(173, '修复图文投票中对活动介绍编辑', '0', 1435290060),
(174, '修复Access-token超出限制的问题', '0', 1435290600),
(175, '微活动中的优惠券与会员卡中的卡券融合', '1', 1435290660),
(176, '修复会员卡充值赠送', '0', 1435297440),
(177, '修复站长后台中的文字说明', '0', 1435297920),
(178, '功能库按字母索引，惩罚台添加进功能库', '1', 1435299600),
(179, '修复后台充值记录', '0', 1435299840),
(180, '公用函数库', '0', 1435305120),
(181, '修复砍价的分享', '0', 1435312080),
(182, '修复360全景', '0', 1435312260),
(183, '修复喜帖的分享', '0', 1435315320),
(184, '修复关注判断和游客身份提醒', '1', 1435317360),
(185, '修复支付', '0', 1435373400),
(186, '修复会员中心看不到持卡人姓名', '0', 1435373460),
(187, '模板文件', '0', 1435374060),
(188, '修复360全景的问题', '0', 1435382340),
(189, '加盟增值型模板文件', '0', 1435391400),
(190, '修复微场景图文问题', '0', 1435397880),
(191, '修复微活动问题', '0', 1435398780),
(192, '优化支付宝服务窗的授权', '0', 1435564920),
(193, '修复合体红包领取记录显示不全', '0', 1435627260),
(194, '修复会员卡不发送模板消息', '0', 1435627440),
(195, '修复语音回复', '0', 1435627560),
(196, '优化系统的授权', '0', 1435632960),
(197, '修复语音回复问题', '0', 1435642020),
(198, '优化微店客服接口', '0', 1435643220),
(199, '修复微店异步支付', '0', 1435645740),
(200, '修复图文投票横幅和分享的问题', '0', 1435649220),
(201, '新功能，微排号', '1', 1435649400),
(202, '加盟增值型代理商站长后台添加功能管理', '0', 1435652100),
(203, '修复微信支付证书上传问题', '0', 1435655640),
(204, '系统文件', '0', 1435722240),
(205, '优化微活动', '0', 1435727700),
(206, '修复支付文件', '0', 1435730280),
(207, '优化优惠券', '0', 1435730640),
(208, '修复行业应用的分享', '0', 1435731420),
(209, '微排号小票打印机', '0', 1435733040),
(210, '微商城加入分佣导出功能', '1', 1435734960),
(211, '加盟增值型文件', '0', 1435740720),
(212, '优化商城添加商品，支持多图上传', '0', 1435746960),
(213, '修复图文投票自动加载时投票后投票数不自动增加', '0', 1435747140),
(214, '修复提现管理', '0', 1435747260),
(215, '非认证服务号关注判断，关注判断提示语自定义', '1', 1435749720),
(216, '修复微店异步通知', '0', 1435803120),
(217, '首页回复配置中加入网页客服按钮，回答不上来的配置加上功能库', '1', 1435806000),
(218, '修复微助力', '0', 1435806420),
(219, '修复网页客服', '0', 1435808400),
(220, '微排号的手机验证，电话可以输入境外电话', '0', 1435809660),
(221, '修复秒杀回复图片', '0', 1435814820),
(222, '合体红包图片', '0', 1435815480),
(223, '修复微众筹的分享问题', '0', 1435818240),
(224, '修复模板118', '0', 1435818300),
(225, '修复微排号功能的模板消息', '0', 1435818600),
(226, '修复微店订单修改价格问题', '0', 1435821120),
(227, '修复小黄鸡和附近LBS', '0', 1435826040),
(228, '微网站模版31号和32号模版添加更多按钮', '0', 1435831380),
(229, '修复微排号的手机号验证', '0', 1435831800),
(230, '修复微医疗会员卡支付', '0', 1435832280),
(231, '修复微游戏记录', '0', 1435832640),
(232, '修复微团购图片溢出', '0', 1435834320),
(233, '修复微现场积分', '0', 1435835460),
(234, '修复粉丝管理', '0', 1435886040),
(235, '24号模板添加更多按钮', '0', 1435918980),
(236, '更新系统文件', '0', 1435973040),
(237, '微餐饮  营业时间支持 跨日', '0', 1435978020),
(238, '修复图文投票的分享', '0', 1435980960),
(239, '修复粉丝管理', '1', 1435981140),
(240, '修复图文投票今天投票受限的问题', '0', 1435982160),
(241, '24号模板添加更多按钮', '0', 1435982340),
(242, '解决商城列表排序的问题', '0', 1435982460),
(243, '升级渠道二维码', '1', 1435986240),
(244, '修复全民经纪人背景模糊的问题', '0', 1435986480),
(245, '渠道二维码文件', '0', 1436000400),
(246, '修复群发消息', '0', 1436001180),
(247, '修复摇一摇参与人数问题', '0', 1436002500),
(248, '修复会员卡卡券核销', '0', 1436002620),
(249, '微网站模板管理的图文列表模版风格页面添加分页显示。', '0', 1436145840),
(250, '修复会员卡卡券核销', '0', 1436145900),
(251, '修复渠道二维码在IE浏览器的显示', '0', 1436147280),
(252, '左侧菜单栏', '0', 1436172240),
(253, '加盟增值型代理商后台添加幻灯片和横幅管理', '0', 1436178540),
(254, '加盟增值型文件', '0', 1436178720),
(255, '修复群发消息', '0', 1436179620),
(256, '修复图文投票', '0', 1436180820),
(257, '3g微投票修复', '0', 1436249580),
(258, '会员卡的自定义输入项可以设置是否显示和是否必填', '1', 1436250120),
(259, '优化图文回复的编辑器', '0', 1436250420),
(260, '修复微游戏的游戏记录', '0', 1436252220),
(261, '优化站长后台的站长设置中的附件设置', '0', 1436256780),
(262, '修复摇一摇功能不显示链接人数的问题', '0', 1436266440),
(263, '优化微信墙与现场活动的数据', '0', 1436266680),
(264, '修复到店付款和货到付款', '0', 1436323020),
(265, '短信系统文件更新', '0', 1436323560),
(266, '优化微餐饮的时间设置', '0', 1436334720),
(267, '优化商城中的运费设置', '0', 1436335260),
(268, '升级管理中心的欢迎页面', '1', 1436337000),
(269, '优化商城中的商品排序', '0', 1436345040),
(270, '优化会员卡中的优惠券显示', '0', 1436346540),
(271, '修复站长后台的附件设置', '0', 1436355060),
(272, '站长后台设置，文件更新', '0', 1436405460),
(273, '修复万能表单导出的excel', '0', 1436430240),
(274, '微网站和商城系统文件更新', '0', 1436431680),
(275, '修复万能表单的问题', '0', 1436433180),
(276, '修复会员卡添加的优惠券和礼品券手机端看不到的问题', '0', 1436433420),
(277, '优化微活动', '0', 1436434980),
(278, '优化楼盘房产', '0', 1436438880),
(279, '优化管理中心的欢迎页', '0', 1436492700),
(280, '修复楼盘房产的问题', '0', 1436494980),
(281, '加盟增值型修复代理商后台的功能菜单，LOGO，域名重复，套餐管理问题', '0', 1436496120),
(282, '优化左侧菜单栏', '0', 1436507040),
(283, '优化管理中心欢迎页', '0', 1436511780),
(284, '授权文件更新', '0', 1436512560),
(285, '加盟增值型，修复代理商后台应用ID没有的问题', '0', 1436515800),
(286, '优化粉丝管理', '0', 1436515920),
(287, '优化群发消息，对消息中的外链处理', '0', 1436520480),
(288, '修复了喜帖的赴宴人数问题', '0', 1436520840),
(289, '修复商城支付授权', '0', 1436521380),
(290, '修复文字投票的授权', '0', 1436524620),
(291, '优化站长后台的横幅管理', '0', 1436577660),
(292, '修复合体红包的关注', '0', 1436577780),
(293, '优化粉丝管理的粉丝性别显示', '0', 1436578020),
(294, '修复微名片', '0', 1436606400),
(295, '修复微砍价的库存单位', '0', 1436606760),
(296, '修复微外卖的模板消息', '0', 1436607600),
(297, '团购订单详情添加团购券方便搜索', '0', 1436607840),
(298, '修复合体红包', '0', 1436749800),
(299, '修复微现场微信墙活动', '0', 1436751180),
(300, '加盟增值型代理商文件', '0', 1436755620),
(301, '修复微名片功能库空白', '0', 1436767920),
(302, '优化帐号到期提醒', '0', 1436769240),
(303, '微餐饮时间设置优化', '0', 1436774640),
(304, '修复前台帐号的充值', '0', 1436776200),
(305, '微信墙的样式文件', '0', 1436783520),
(306, '修复大转盘活动', '0', 1436784900),
(307, '修复管理中心欢迎页面', '0', 1436787360),
(308, '修复商城的下单', '0', 1436841480),
(309, '系统用户在帮助中心关闭后依然可以查看帮助', '0', 1436851740),
(310, '文件更新', '0', 1436860980),
(311, '商城的商品排序修复', '0', 1436862600),
(312, '优化大转盘，砸金蛋，水果机，九宫格活动的防刷奖', '0', 1436863620),
(313, '文件更新', '0', 1436866380),
(314, '修复会员卡的领卡提示', '0', 1436869620),
(315, '优化一战到底题目设置', '0', 1436870580),
(316, '功能库文件更新', '0', 1436870700),
(317, '修复了楼盘预约功能中户型不显示的问题', '0', 1436871360),
(318, '站长后台的客户案例和功能介绍优化', '0', 1436871600),
(319, '优化回答不上来的设置', '0', 1436926320),
(320, '修复会员卡的LOGO', '0', 1437016440),
(321, '升级—图文投票V7.0', '1', 1437027840),
(322, '修复微餐饮和外卖的模板消息', '0', 1437096300),
(323, '修复团购库存不足还可同时下单的问题', '0', 1437101340),
(324, '修复微餐饮和微外卖的文件', '0', 1437115560),
(325, '文件更新以及支付配置优化', '0', 1437118140),
(326, '修复分享助力的分享', '0', 1437124800),
(327, '修复团购的订单状态', '0', 1437125760),
(328, '文件更新', '0', 1437126360),
(329, '修复微游戏和微贺卡的二维码', '0', 1437128040),
(330, '修复会员卡的模板消息', '0', 1437128280),
(331, '优化会员卡卡券', '0', 1437191220),
(332, '修复团购不写地址也可下单和微信支付的问题', '0', 1437202980),
(333, '修复现场活动大屏幕文字溢出的问题', '0', 1437203520),
(334, '修复微旅游版权不居中问题', '0', 1437209820),
(335, '优化会员卡消费的模板消息提醒', '0', 1437210900),
(336, '修复图文消息的搜索', '0', 1437214200),
(337, '优化图文投票V7.0', '0', 1437356100),
(338, '优化图文投票V7.0', '0', 1437356100),
(339, '优化会员卡信息完善的提示', '0', 1437362220),
(340, '优化图文投票V7.0', '0', 1437356100),
(341, '优化会员卡信息完善的提示', '0', 1437362220),
(342, '优化图文投票V7.0', '0', 1437356100),
(343, '优化会员卡信息完善的提示', '0', 1437362220),
(344, '优化图文添加编辑器', '0', 1437372300),
(345, '修复一战到底的分享', '0', 1437373620),
(346, '会员卡模板消息添加说明', '0', 1437387420),
(347, '修复万能表单样式问题', '0', 1437387660),
(348, '优化商城商品的排序和关键词搜索', '0', 1437445620),
(349, '修复群发消息内容换行过高问题', '0', 1437449160),
(350, '修复会员卡卡券问题', '0', 1437468420),
(351, '优化图文投票的手机号码输入限制', '0', 1437468900),
(352, '客户管理中心 邀请朋友页面链接显示修复', '0', 1437469620),
(353, '优化团购页面兼容', '0', 1437472260),
(354, '修复会员卡的优惠券', '0', 1437474720),
(355, '升级——站长后台多管理员和程序回滚', '1', 1437474780),
(356, '文件更新', '0', 1437474840),
(357, 'link文件更新', '0', 1437545160),
(358, '系统文件更新', '0', 1437547620),
(359, '优化摇一摇周边功能', '0', 1437549120),
(360, '加盟增值版，升级H5动态模板', '1', 1437620520),
(361, '优化摇一摇周边的设备更新处理', '0', 1437633180),
(362, '加盟增值型，修复代理商域名的问题', '0', 1437639000),
(363, '修复多站长的权限设置', '0', 1437639180),
(364, '加盟增值型，微店优化', '0', 1437641400),
(365, '左侧菜单栏优化', '0', 1437641700),
(366, '优化微众筹', '0', 1437642540),
(367, '优化一元夺宝', '0', 1437643920),
(368, '优化图文投票炫酷版自己介绍的图片', '0', 1437702780),
(369, '管理中心欢迎页更新', '0', 1437708300),
(370, '微砍价默认图片修改', '0', 1437728820),
(371, '加盟创业版修复微现场的抽奖', '0', 1437729060),
(372, '优化人气冲榜', '0', 1437730200),
(373, '优化功能库', '0', 1437733500),
(374, '优化打印机下单', '0', 1437801900),
(375, '微信相关文件更新', '0', 1437806880),
(376, '修复网页客服', '0', 1437814440),
(377, '升级新功能。图片审核和敏感词设置', '1', 1437964800),
(378, '系统优化', '0', 1437983700),
(379, '优化管理中心顶部的的名称显示', '0', 1437985920),
(380, '修复小黄鸡和回答不上来的配置以及域名查询', '0', 1437995220),
(381, '修复站长后台功能管理的功能介绍', '0', 1438046580),
(382, '加盟增值型文件', '0', 1438072380),
(383, '优化敏感词和程序回滚', '0', 1438073100),
(384, '优化CRM粉丝管理更新', '0', 1438073760),
(385, '优化图片审核', '0', 1438137840),
(386, '优化多站长管理问题', '0', 1438141800),
(387, '修复微砍价问题', '0', 1438147260),
(388, '修复商城分店的商品搜索', '0', 1438158960),
(389, '修复图文投票的关注提示', '0', 1438161720),
(390, '编辑器优化', '0', 1438163280),
(391, '修复团购问题', '0', 1438163400),
(392, '修复酒店订房', '0', 1438163700),
(393, '升级，图文消息分组', '1', 1438226220),
(394, '微现场活动，大屏幕显示优化', '0', 1438236840),
(395, '升级，新的跳转页面', '1', 1438236900),
(396, '图文分组优化', '0', 1438241820),
(397, '优化外卖和餐饮的时间设置和显示', '0', 1438243560),
(398, '修复签到头部图片问题', '0', 1438245720),
(399, '修复图文投票的分页显示', '0', 1438335540),
(400, '修复一元购的模板消息和最后一元会员卡支付问题', '0', 1438337940),
(401, '修复微助力关注和一元购的文件更新', '1', 1438397820),
(402, '图片文件', '0', 1438419900),
(403, '修复会员卡的卡券', '0', 1438419960),
(404, '合体红包的领取记录显示领取人手机号', '0', 1438567260),
(405, '加盟增值型，代理商域名不可以与总平台相同', '0', 1438572060),
(406, '修复请求数统计错误', '0', 1438572120),
(407, '优化红包的列表样式', '0', 1438589880),
(408, '优化合体红包的合体提醒', '0', 1438666200),
(409, '优化楼盘房产的背景图片', '0', 1438666320),
(410, '修复团购中的分店', '0', 1438676940),
(411, '编辑器的资源文件', '0', 1438677660),
(412, '优化老版场景的回复图片问题', '0', 1438677840),
(413, '微信墙优化', '0', 1438683720),
(414, '优化平台支付的提醒', '0', 1438685760),
(415, '分享统计文件', '0', 1438752660),
(416, '新的分享统计文件', '1', 1438753320),
(417, '升级站长后台功能统计', '1', 1438823760),
(418, '升级改版微助力', '1', 1438823820),
(419, '升级管理中心导航菜单自定义', '1', 1438824360),
(420, '加盟增值版，升级管理中心导航菜单自定义', '1', 1438824480),
(421, '升级图文投票的地区限制和短信', '1', 1438838700),
(422, '修复人气冲榜的排名', '0', 1438839960),
(423, '优化微调研活动', '0', 1438846740),
(424, '修复一元购活动说明', '0', 1438847340),
(425, '修复微助力的显示', '0', 1438847400),
(426, '优化微教育的单科分数限制', '0', 1438850580),
(427, '加盟增值版文件', '0', 1438853280),
(428, '修复团购的微信支付通知', '0', 1438911420),
(429, '3G微投票去掉外链码', '0', 1438911960),
(430, '修复会员卡充值的错别字', '0', 1438912140),
(431, '修复微助力旧版数据', '0', 1438914540),
(432, '加盟增值版，代理商的功能库修复', '0', 1438917360),
(433, '微助力的资源文件', '0', 1438926840),
(434, '修复微信墙图片变形', '0', 1438934040),
(435, '优化LBS商家位置设置', '0', 1438934280),
(436, '新的升级文件', '1', 1438939800),
(437, '修复笑话', '0', 1438943520),
(438, '优化图文投票', '0', 1438999080),
(439, '优化助力排行', '0', 1438999980),
(440, '优化会员卡的数据', '0', 1439002800),
(441, '微场景补丁', '0', 1439008920),
(442, '修复公众号编辑页认证服务号的判断', '0', 1439013360),
(443, '系统文件更新', '0', 1439013660),
(444, '加盟增值版，摇一摇文件', '0', 1439015700),
(445, '更新系统文件', '0', 1439016600),
(446, '新的升级文件更新', '1', 1439019480),
(447, '加盟增值型，二级代理商文件', '0', 1439030400),
(448, '修复H5模板的logo显示', '0', 1439030460),
(449, '修复微游戏的关键词回复问题', '0', 1439176980),
(450, '修复请求数统计错误', '0', 1439196480),
(451, '分享统计文件', '0', 1439196540),
(452, '会员信息自定义项新增地址和来源渠道', '1', 1439196600),
(453, '升级站长后台功能统计', '1', 1439196780),
(454, '新的升级方式', '1', 1439196900),
(455, '修复拆礼盒的SN码导入问题', '0', 1439255640),
(456, '修复走鹊桥的手机号必填', '0', 1439258400),
(457, '修复微信墙和摇一摇的问题', '0', 1439261880),
(458, '修复微商圈幻灯片不显示问题', '0', 1439262900),
(459, 'LBS添加分支的时候帐号和密码默认值去掉', '0', 1439271240),
(460, '修复微秒杀的问题', '0', 1439286420),
(461, '修复微名片', '0', 1439350320),
(462, '升级新改版微助力活动', '1', 1439370120),
(463, '修复现场活动摇一摇', '0', 1439433480),
(464, '模板的素材文件更新', '0', 1439433660),
(465, '加盟增值版，代理商后台横幅修复', '0', 1439443200),
(466, '升级认证公众号的素材库同步', '1', 1439445840),
(467, '优化H5模板', '0', 1439450520),
(468, '站长后台的客户管理优化', '0', 1439456760),
(469, '修复站长后台的客户添加', '0', 1439459040),
(470, '修复微名片功能库选择问题', '0', 1439464620),
(471, '修复万能表单的手机验证', '0', 1439464800),
(472, '修复走鹊桥对粉丝信息的验证', '0', 1439464920),
(473, '升级店员管理', '1', 1439530080),
(474, '左侧菜单栏', '0', 1439541660),
(475, '修复右侧的帮助中心显示', '0', 1439546940),
(476, '修复3g微投票的图片显示', '0', 1439601180),
(477, '修复图文投票入库重复问题', '0', 1439603160),
(478, '优化微助力', '0', 1439616060),
(479, '修复走鹊桥的手机端奖品显示', '0', 1439622840),
(480, '优化微预约的手机验证', '0', 1439627700),
(481, '修复酒店的模板消息', '0', 1439629080),
(482, '店员登录优化', '0', 1439629380),
(483, '帮助文档修复', '0', 1439630520),
(484, '修复微现场的微信墙和摇一摇', '0', 1439795760),
(485, '微现场摇一摇文件', '0', 1439799960),
(486, '升级——谁是情圣', '1', 1439800320),
(487, '加盟增值型文件', '0', 1439863560),
(488, '人工客服添加重启按钮', '0', 1439864040),
(489, '订阅号微信支付和微信支付账单', '1', 1439868660),
(490, '升级，微医疗订单支持打印', '1', 1439948820),
(491, '优化站长后台的数据统计', '0', 1439952480),
(492, '文件更新', '0', 1439962140),
(493, '新的分享统计', '0', 1440037200),
(494, '优化微助力', '0', 1440038340),
(495, '加盟创业型', '0', 1440038700),
(496, '群发文件', '0', 1440047820),
(497, '升级，支付支持使用代金券', '1', 1440059040),
(498, '优化公众号编辑页对认证服务号的判断', '0', 1440124500),
(499, '升级，关注赠送会员卡和会员卡自定义项', '1', 1440142980),
(500, '修复微砍价的库存和销量显示', '0', 1440144120),
(501, '系统更新', '0', 1440210600),
(502, '优化会员卡', '0', 1440231840),
(503, '修复微信支付按钮问题', '0', 1440232080),
(504, '优化微助力，助力排名支持导出', '0', 1440233040),
(505, '走鹊桥参与次数修复', '0', 1440233820),
(506, '谁是情圣的功能库', '0', 1440234060),
(507, '会员卡文件', '0', 1440234660),
(508, '升级，商城分佣的模板消息提醒', '1', 1440379980),
(509, '升级，LBS商家的分店类型设置', '1', 1440380040),
(510, '升级，套餐使用量的设置', '1', 1440380100),
(511, '支付时代金券可以不使用', '0', 1440380700),
(512, '修复砍价的分享页面', '0', 1440384420),
(513, '微助力分享朋友圈的描述可带参数', '0', 1440385260),
(514, '谁是情圣分享到朋友圈可带参数', '0', 1440386040),
(515, '修复站长后台更新进程关闭无效问题', '0', 1440397320),
(516, '会员卡的数据校正', '0', 1440398160),
(517, '帮助文档优化', '0', 1440398820),
(518, '微现场摇一摇优化', '0', 1440399840),
(519, '修复微信支付问题', '0', 1440410640),
(520, '会员卡问题修复', '0', 1440411180),
(521, '万能表单的手机号验证', '0', 1440466680),
(522, '左侧菜单文件', '0', 1440467640),
(523, '优化秒杀', '0', 1440474060),
(524, '升级新功能，摇钱树', '1', 1440474360),
(525, '升级，餐饮支持厨房，厨房支持打印机', '1', 1440484080),
(526, '修复欢迎页的签到', '0', 1440486180),
(527, '修复右侧的帮助中心问题', '0', 1440486360),
(528, '优化微秒杀', '0', 1440491520),
(529, '修复一元购购买多个不开奖问题', '0', 1440496560),
(530, '修复一元购的开奖问题', '0', 1440553020),
(531, '修复幸运水果机问题', '0', 1440558840),
(532, '一键授权托管绑定', '1', 1440559020),
(533, '修复合体红包的分享问题', '0', 1440563520),
(534, '修复330号模板的问题', '0', 1440568800),
(535, '修复会员卡的充值负数', '0', 1440571500),
(536, '水果机苹果4S手机显示问题修复', '0', 1440572580),
(537, '修复3G微投票的手机号不显示问题', '0', 1440574380),
(538, '修复会员卡自定义项问题', '0', 1440574620),
(539, 'WAP访问限制优化', '0', 1440577980),
(540, '微信卡券添加优化', '0', 1440579720),
(541, '微信支付优化', '0', 1440580320),
(542, '修复服务窗授权问题', '0', 1440581700),
(543, '修复会员卡的自定义项的问题', '0', 1440581880),
(544, '新的分享接口', '1', 1440642900),
(545, '吃月饼的排行问题', '0', 1440643980),
(546, '紧急模式和右侧的帮助菜单', '1', 1440645180),
(547, '摇钱树增加音效', '1', 1440761700),
(548, '微信卡券的优化', '0', 1440767940),
(549, '模板消息可自己添加', '1', 1440769620),
(550, '解决一元购多卖的问题', '0', 1440820260),
(551, '修复服务窗粉丝授权问题', '0', 1440842520),
(552, '修复摇钱树', '0', 1440845100),
(553, '修复秒杀问题', '0', 1440846300),
(554, '修复图文投票炫酷版的按钮问题', '0', 1440846960),
(555, '微店的资源文件', '0', 1440847860),
(556, '修复会员卡卡券', '0', 1440850500),
(557, '修复微汽车的车系显示', '0', 1440850800),
(558, '修复微众筹问题', '0', 1440851280),
(559, '修复站长后台客户管理', '0', 1440983700),
(560, '修复一元购多卖和不开奖的问题', '0', 1440988020),
(561, '修复万能表单14开头机号验证', '0', 1440991380),
(562, '修复会员卡领卡缺货问题', '0', 1441001040),
(563, '大转盘的模板文件', '0', 1441009260),
(564, '帮助文档修复', '0', 1441009740),
(565, '会员卡的模板文件', '0', 1441010940),
(566, '修复店员管理的登录地址', '0', 1441013700),
(567, '修复公交导航', '0', 1441017060),
(568, '修复大转盘SN码导出问题', '0', 1441017600),
(569, '修复餐饮的分店订单', '0', 1441018020),
(570, '修复自定义菜单问题', '0', 1441071720),
(571, '商城的模板消息优化', '0', 1441078860),
(572, '加盟创业型代理商的一键授权', '1', 1441084320),
(573, '合体红包优化', '0', 1441085880),
(574, '微汽车的功能库修复', '0', 1441093320),
(575, '修复楼盘房产的分享', '0', 1441093380),
(576, '会员卡的自定义项', '1', 1441094580),
(577, '加盟创业型微网站模板文件', '0', 1441096560),
(578, '修复微助力的助力排行榜手机端的搜索', '0', 1441099860),
(579, '优化功能库的微汽车', '0', 1441100160),
(580, '文本回复的优化', '0', 1441100460),
(581, '微砍价，轮播图片优化', '0', 1441181100),
(582, '升级优化', '1', 1441245480),
(583, '微助力优化', '0', 1441248180),
(584, 'LBS地区库校正', '0', 1441258020),
(585, '代理商一键托管绑定优化', '0', 1441258740),
(586, '一元夺宝优化', '0', 1441334160),
(587, '修复砍价无法关闭活动', '0', 1441337880),
(588, '会员卡优化', '0', 1441356240),
(589, '邀请函的提示语修改', '0', 1441590720),
(590, '优惠券文件', '0', 1441592820),
(591, '解决LBS台湾保存失败', '0', 1441596180),
(592, '一元购的优化', '0', 1441603560),
(593, '优化右侧的帮助中心', '0', 1441605060),
(594, '优化微信支付', '0', 1441606740),
(595, '修复站长后台系统用户选择按钮问题', '0', 1441607820),
(596, '修复微网站117号模板', '0', 1441608180),
(597, '限制微秒杀的横幅高度', '0', 1441610220),
(598, '修复会员卡的会员资料修改问题', '0', 1441612920),
(599, '更新文件', '0', 1441615740),
(600, '会员卡文件', '0', 1441618380),
(601, '修复服务窗的授权', '0', 1441673520),
(602, '修复微网站的1号模板', '0', 1441673880),
(603, '修复人气冲榜的人气榜的搜索', '0', 1441676100),
(604, '砍价库存为0的时候，活动不可参加', '0', 1441679520),
(605, '解决全网发布的文件', '0', 1441680840),
(606, '团购页面显示底部版权', '0', 1441690020),
(607, '摇钱树文件', '0', 1441695720),
(608, '加盟创业型，代理商可以设置网站版权', '0', 1441701480),
(609, '厨房的菜品支持单个菜品打印', '1', 1441760640),
(610, '优化粉丝信息管理', '0', 1441781220),
(611, '摇钱树关注提示语支持自定义', '0', 1441785360),
(612, 'LBS石家庄地区更正', '0', 1441786080),
(613, '优化关注赠送会员卡的卡券', '0', 1441848720),
(614, '谁是情圣回复图片', '0', 1441848960),
(615, 'KTV的文字修改', '0', 1441851540),
(616, '优化服务窗的授权', '0', 1441856760),
(617, '谁是情圣的温馨提示优化', '0', 1441856820),
(618, '加盟创业版微店文件', '0', 1441869000),
(619, '一元购的页面优化', '0', 1441874940),
(620, '微游戏的文件', '0', 1441878060),
(621, '优化微网站的静态模板管理', '0', 1441940040),
(622, '加盟创业版统一文件', '0', 1441948200),
(623, '系统文件', '1', 1442194620),
(624, '会员卡的文件', '0', 1442194980),
(625, '会员卡的卡券文件', '0', 1442196300),
(626, '秒杀的资源文件', '0', 1442217000),
(627, '修复中秋吃月饼时间的问题', '0', 1442217120),
(628, '升级新功能，我要上头条', '1', 1442287620),
(629, '我要上头条文件', '1', 1442296080),
(630, '优化一键授权', '0', 1442301600),
(631, '文件更新', '0', 1442302440),
(632, '加盟创业板模板的资源文件', '0', 1442308680),
(633, '微砍价砍价前N刀设置优化', '0', 1442372340),
(634, '修复水果机不转的问题', '0', 1442373000),
(635, '新功能集字游戏', '1', 1442379780),
(636, '优化一元购的幻灯片', '0', 1442380620),
(637, '修复中秋吃月饼活动的问题', '0', 1442381100),
(638, '修复短信充值问题', '0', 1442384040),
(639, '会员卡文件', '0', 1442384280),
(640, '加盟创业版1357模板文件', '0', 1442397720),
(641, '管理中心的底部版权文件', '0', 1442452860),
(642, '修复中秋吃月饼的排名问题', '0', 1442452980),
(643, '会员卡的资料填写', '0', 1442453940),
(644, '我要上头条优化', '0', 1442454000),
(645, '修复会员卡信息保存失败的问题', '0', 1442456880),
(646, '优化砍价游戏的页面', '0', 1442473320),
(647, '修复微汽车的车系显示', '0', 1442479140),
(648, '电商文件', '1', 1442481360),
(649, '修复集字游戏奖品数是1的时候的问题', '0', 1442481600),
(650, '修复一键授权报错问题', '0', 1442483220),
(651, '我要上头条的系统随机时间可以修改', '0', 1442538420),
(652, '修复微网站底部导航菜单挡住版权问题', '0', 1442541900),
(653, '修复手动绑定公众号限制的问题', '0', 1442564100),
(654, '粉丝信息管理优化', '0', 1442564220),
(655, '修复管理中心的页面', '0', 1442566920),
(656, '修复秒杀订单页面显示的订单', '0', 1442633580),
(657, '管理中心修改密码提醒优化', '0', 1442646720),
(658, 'LBS地址更正', '0', 1442647020),
(659, '会员卡支持177段号码', '0', 1442647680),
(660, '修复会员卡自定义项删除问题', '0', 1442650380),
(661, '修复会员卡问题', '0', 1442801220),
(662, '管理中心首页下的新闻分类', '0', 1442805300),
(663, '素材文件', '0', 1442824080),
(664, '站长后台信息过滤', '0', 1442824140),
(665, '修复管理中心多的弹层', '0', 1442831760),
(666, '集字游戏优化', '1', 1442883420),
(667, '网站的自定义导航优化', '0', 1442887980),
(668, '众筹的支付优化', '0', 1442889900),
(669, '微砍价修复', '0', 1442892000),
(670, '手机端微网站的文章显示优化', '0', 1442892360),
(671, '邀请链接修复', '0', 1442893380),
(672, '管理中心的充值，续费优化', '0', 1442903100),
(673, '集字游戏优化', '0', 1442905920),
(674, '修复外卖时间', '0', 1442908620),
(675, '自定义排行榜数量不能小于0', '0', 1442911260),
(676, '摇钱树手机端的音效优化', '0', 1442972220),
(677, '我要上头条PC端页面优化', '0', 1442974680),
(678, '微电商的功能库修复', '0', 1442987700),
(679, '功能库的商城分类修复', '0', 1442990640),
(680, '修复砍价商品库存为0时，自己订单的显示问题', '0', 1442994180),
(681, '加盟创业板微网站190号样式文件', '0', 1442997420),
(682, '优化微餐饮和微外卖的时间设置', '0', 1442997720),
(683, '修复中秋吃月饼奖品显示', '0', 1442999940),
(684, '微论坛里面的自定义背景和logo上传图片尺寸提示', '0', 1443062640),
(685, '修复微网站手机端显示的文章数', '0', 1443064620),
(686, '修复渠道二维码关键词设置成第三方关键词时不能用的问题', '0', 1443082380),
(687, '优化我要上头条的系统事件', '0', 1443082620),
(688, '修复网站首页问题', '0', 1443083040),
(689, '修复一键授权问题', '0', 1443083580),
(690, '升级文件，重要文件', '1', 1443085140),
(691, '修复会员卡多领卡的问题', '0', 1443085680),
(692, '修复功能库', '0', 1443086580),
(693, '电商功能库文件更新', '0', 1443146880),
(694, '功能库问题修复', '0', 1443149280),
(695, '餐饮和外卖的营业时间设置优化', '0', 1443151080),
(696, '优化分享', '0', 1443152700),
(697, '功能库相关文件', '0', 1443159180),
(698, '自定义菜单文件', '0', 1443164160),
(699, '左侧菜单栏调整', '0', 1443406260),
(700, '系统的相关文件', '1', 1443408000),
(701, '公共的相关文件', '0', 1443408660),
(702, '数据库SQL升级相关文件', '1', 1443408900),
(703, '集字游戏活动未开始的提示', '0', 1443411600),
(704, '左侧菜单优化', '0', 1443417000),
(705, '站长后台功能模块搜索', '1', 1443419880),
(706, '万能表单数据优化', '0', 1443428040),
(707, '修复中秋吃月饼的排名问题', '0', 1443488760),
(708, '修复站长后台的功能介绍', '0', 1443493140),
(709, '文件更新', '0', 1443498240),
(710, '微信红包的领取优化', '0', 1443503580),
(711, '餐饮和外卖的折扣优化', '0', 1443511860),
(712, '趣味测试模板文件', '0', 1443513300),
(713, '一元购的数据优化', '0', 1443517920),
(714, '优化粉丝信息', '0', 1443577200),
(715, '取消功能库中的汇率计算', '0', 1443584700),
(716, '摇钱树和我要上头条的回复图片更新', '0', 1444267800),
(717, '优化合体红包', '0', 1444269480),
(718, '优化秒杀的订单详情页信息', '0', 1444273320),
(719, '模板消息的文件', '0', 1444287000),
(720, '红包和砍价的文件', '0', 1444291680),
(721, '修复会员卡重复领卡问题', '0', 1444361280),
(722, '微游戏关注判断优化', '0', 1444372740),
(723, '样式修改文件', '0', 1444376220),
(724, '店员管理的列表页优化', '0', 1444379760),
(725, '修复秒杀的分享和订单', '0', 1444380120),
(726, '优化砍价', '0', 1444381200),
(727, '更新', '0', 1444459920),
(728, '修复5号模板的问题', '0', 1444525740),
(729, 'LBS中地区选择优化', '0', 1444525920),
(730, '优化微调研的奖项设置', '0', 1444527540),
(731, '优化集字游戏的排行榜', '0', 1444528320),
(732, '修复渠道二维码显示问题', '0', 1444533120),
(733, '优化微汽车手机端的关于我们页面', '0', 1444612380),
(734, '关注判断优化文件', '0', 1444628880),
(735, '官网的导航，自定义优化', '0', 1444633140),
(736, '微汽车手机端关于我们的样式', '0', 1444638000),
(737, '修复LBS浙江地区的地址', '0', 1444640460),
(738, '授权一次，永久授权', '1', 1444641240),
(739, '升级新功能，微拍卖', '1', 1444698720),
(740, '修复官网首页样式', '0', 1444699620),
(741, '修复微教育的食谱关键词回复', '0', 1444703700),
(742, '文件更新', '0', 1444707300),
(743, '优化微调研模板消息', '0', 1444707360),
(744, 'H5模板的首页分享优化', '0', 1444707420),
(745, '会员卡删除，已领取卡券同时删除', '0', 1444726800),
(746, '一元购优化', '0', 1444729020),
(747, '360全景优化', '0', 1444789380),
(748, '微场景优化', '0', 1444809780),
(749, '功能相关文件更新', '0', 1444810920),
(750, '高级场景优化', '0', 1444874880),
(751, '微信红包领取记录列表优化', '0', 1444877160),
(752, 'SQL升级文件', '0', 1444879560),
(753, '合体红包和九宫格的关注判断', '0', 1444900080),
(754, '微游戏的关注提示', '0', 1444900260),
(755, '游戏的文件', '0', 1444904040),
(756, '优化一键托管功能', '0', 1444904160),
(757, '静态模板文件更新', '0', 1444964580),
(758, '优化站长后台的节点管理排序', '0', 1444975620),
(759, '修改站长后台的说明', '0', 1444979280),
(760, '优化微名片', '0', 1444985700),
(761, '微助力活动删除以后通过地址不可进入', '0', 1445221080),
(762, '图文投票防止刷票', '0', 1445223420),
(763, '优化附近图文和回复语音时公众号的回复', '0', 1445223720),
(764, '优化外卖和餐饮的订单金额', '0', 1445225100),
(765, 'WAP文件更新', '0', 1445231820),
(766, '文件更新', '0', 1445245440),
(767, '修复外卖的分店订单', '0', 1445304180),
(768, '系统文件更新', '0', 1445305980),
(769, '系统文件的更新', '0', 1445307000),
(770, '新功能，订阅号自定义菜单', '1', 1445307240),
(771, '系统相关文件更新', '0', 1445309820),
(772, '样式文件更新', '0', 1445321760),
(773, '功能库中的图文新增搜索功能', '0', 1445323080),
(774, '升级新功能，摇一摇抽奖', '1', 1445390580),
(775, '修复20号模板显示问题', '0', 1445392560),
(776, '修复一键授权', '0', 1445398080),
(777, '管理中心登录页面优化', '0', 1445408040),
(778, '一元购的微信支付优化', '0', 1445414400),
(779, '升级新版LBS商家连锁', '1', 1445414580),
(780, '修复微论坛的图片审核', '0', 1445417220),
(781, '微网站子分类添加以后的跳转页面修复', '0', 1445478060),
(782, '升级新功能，粉丝红包', '1', 1445478900),
(783, '支付相关文件更新', '0', 1445480040),
(784, '修复微网站的分类里面的幻灯片返回页', '0', 1445480460),
(785, '图文消息添加提示信息', '0', 1445480880),
(786, '文件更新', '0', 1445481960),
(787, '修复升级问题', '0', 1445490120),
(788, '优化右侧帮助的查看', '0', 1445491320),
(789, '左侧菜单文件优化', '0', 1445498940),
(790, '图文投票的地区加上新疆', '0', 1445500260),
(791, '修复粉丝红包个别粉丝不可选择的问题', '0', 1445563260),
(792, '修复微网站分类的返回按钮', '0', 1445565420),
(793, '修复微网站分类的问题', '0', 1445566560),
(794, '授权相关文件', '0', 1445567820),
(795, '升级新功能，站内信', '1', 1445568180),
(796, '团购页面优化', '0', 1445577900),
(797, '一元购的计算方式优化', '0', 1445581740),
(798, '样式文件', '0', 1445589120),
(799, '粉丝红包页面添加提示信息', '0', 1445649300),
(800, '一元购优化', '0', 1445651340),
(801, '文件更新', '0', 1445652960),
(802, '文件2更新', '0', 1445842020),
(803, '店员管理权限优化', '0', 1445850540),
(804, '修复120号模板和155号模板', '0', 1445850840),
(805, '新功能，会员信息', '1', 1445907600),
(806, '修复站长后台的代码统计', '0', 1445914260),
(807, '图文回复的编辑优化', '0', 1445914440),
(808, '新功能，微信连WIFI', '1', 1445924220),
(809, '站长后台自定义导航优化', '0', 1445927040),
(810, '修复站长后台的图片审核', '0', 1445928060),
(811, '修复LBS的问题', '0', 1445930760),
(812, '会员卡开卡优化', '0', 1445936460),
(813, '修复万能表单的样式问题', '0', 1445940120),
(814, '左侧菜单栏优化', '0', 1445999640),
(815, '修复图文回复的多图上传', '0', 1446015720),
(816, '升级新功能，新的快捷关注，二维码提示关注', '1', 1446081000),
(817, '粉丝红包提示信息优化', '0', 1446090180),
(818, '修复一元购的扫码支付', '0', 1446090600),
(819, '修复微信卡券', '0', 1446095160),
(820, '修复微砍价的分享', '0', 1446097140),
(821, '快捷关注页面提醒信息优化', '0', 1446098640),
(822, '一元购多买问题修复', '0', 1446105540),
(823, '优化快捷关注', '0', 1446179340),
(824, '修复群发的DIY图片显示', '0', 1446184260),
(825, '一元购优化', '0', 1446189780),
(826, '优化群发消息', '0', 1446194340),
(827, '群发的资源文件', '0', 1446194400),
(828, '微信连WIFI功能的文件', '0', 1446195360),
(829, '砍价的订单优化', '0', 1446197160),
(830, '留言板的功能库修复', '0', 1446199440),
(831, '快捷关注最新的文件', '0', 1446262020),
(832, '文件更新', '0', 1446269880),
(833, '修复190号模板', '0', 1446270300),
(834, '文件的更新', '0', 1446276180),
(835, '趣味测试的提醒说明优化', '0', 1446278460),
(836, '一元购优化', '0', 1446281520),
(837, '修复图文回复的DIY', '0', 1446426480),
(838, '修复服务窗的团购', '0', 1446427200),
(839, '商城支付的时候，苹果6支付问题解决', '0', 1446459060),
(840, '未关注的人参加秒杀提示关注', '1', 1446520500),
(841, '修复管理中心跳转问题', '1', 1446533400),
(842, '站长后台自定义导航优化', '1', 1446538500),
(843, '会员卡导出，支持自定义项，升级包一', '1', 1446538980),
(844, '会员卡导出，支持自定义项，升级包二', '1', 1446539100),
(845, '微信WIFI改版', '0', 1446543240),
(846, '站长后台的公众号限制可立即生效', '0', 1446614940),
(847, '粉丝信息优化', '0', 1446615780),
(848, '微信WIFI微信端删除后，数据清除', '0', 1446616020),
(849, '拆礼盒活动结束的回复图片', '0', 1446627360),
(850, '微信WIFI优化', '0', 1446687300),
(851, '修复大转盘说明', '0', 1446688200),
(852, '修复游戏的关注连接问题', '0', 1446689640),
(853, '添加卡券优化', '0', 1446701700),
(854, '微信WIFI判断公众号是否有权限', '0', 1446704580),
(855, '修复微网站10号模板', '0', 1446718920),
(856, '摇一摇抽奖红包修复', '0', 1446719460),
(857, '修复LBS门店类型问题', '0', 1446720780),
(858, '优化商城的分享', '0', 1446721560),
(859, '站长后台设置优化', '0', 1446772380),
(860, '群发的粉丝选择优化', '0', 1446772560),
(861, '功能的样式文件', '0', 1446774300),
(862, '修复留言板苹果手机留言问题', '0', 1446775740),
(863, '资源文件1', '0', 1446781620),
(864, '资源文件2', '0', 1446781680),
(865, '修复LBS审核状态', '0', 1446787860),
(866, '新功能，微信支付服务商', '1', 1446789240),
(867, '永久授权优化', '0', 1446791160),
(868, '修复LBS门店修改以后的状态显示', '0', 1446791880),
(869, '优化一元购的微信支付', '0', 1446794940),
(870, '付款支付金额小于0.01元的处理', '0', 1446799500);
INSERT INTO `pigcms_update_record` (`id`, `msg`, `type`, `time`) VALUES
(871, '微信支付账单对账优化', '0', 1446802980),
(872, '新功能，优惠接力', '1', 1446873720),
(873, '一元夺宝优化', '0', 1446877020),
(874, '修复商城的幻灯片问题', '0', 1446888660),
(875, '修复一元购多买问题', '0', 1446888840),
(876, '手机端，会员卡消费记录修复', '0', 1447031580),
(877, '修复LBS问题', '0', 1447037400),
(878, '文件优化', '0', 1447040400),
(879, '优惠接力的列表页优化', '0', 1447058400),
(880, '我要上头条优化', '0', 1447059840),
(881, 'LBS门店审核问题优化', '0', 1447065300),
(882, '修复LBS旧门店的问题', '0', 1447118580),
(883, '修复卡券图片变成默认图片的问题', '0', 1447118880),
(884, '会员卡优化', '0', 1447123260),
(885, '修复游戏的时间更新问题', '0', 1447141440),
(886, '图片文件', '0', 1447143480),
(887, '微网站返回按钮问题修复', '0', 1447146720),
(888, '会员卡问题优化', '0', 1447224780),
(889, '修复图文投票上传图片问题', '0', 1447236540),
(890, '新功能，高级关注回复', '1', 1447290780),
(891, '修复砍价，砍价活动如被删除，之前的分享不可打开', '0', 1447297320),
(892, '砸金蛋的中奖提示和模板消息修复', '0', 1447307100),
(893, '素材库优化', '0', 1447307400),
(894, '外卖菜品的问题修复', '0', 1447308480),
(895, '相关文件更新', '0', 1447313700),
(896, '秒杀库存问题优化', '0', 1447377900),
(897, '一元夺宝幸运号码计算优化', '0', 1447378080),
(898, '一元购购买一个的问题修复', '0', 1447401600),
(899, '优化系统文件', '0', 1447469160),
(900, '微商城的会员卡支付方式优化', '0', 1447470240),
(901, 'H5模板的功能库修复', '0', 1447472940),
(902, '21号模板样式优化', '0', 1447478700),
(903, '修复万能表单问题', '0', 1447485300),
(904, 'H5功能库优化', '0', 1447489740),
(905, '修复砍价的付款', '0', 1447641060),
(906, '粉丝红包的搜索优化', '0', 1447658520),
(907, '修复一元购，购买多种商品的问题', '0', 1447743120),
(908, '左侧菜单优化', '0', 1447744980),
(909, '关注文件更新', '0', 1447810080),
(910, '一元购开奖问题修复', '0', 1447823280),
(911, '修复小黄鸡问题', '0', 1447839000),
(912, 'LBS分支机构删除的跳转页面', '0', 1447841280),
(913, '会员卡的样式优化', '0', 1447913820),
(914, '摇一摇页面优化', '0', 1447918980),
(915, '图文回复的关注修复', '0', 1447923420),
(916, '商城分类的图片显示优化', '0', 1447924260),
(917, '小黄鸡修复', '0', 1447925220),
(918, '一元购多买问题修复', '0', 1447983060),
(919, '图文投票优化', '1', 1447985160),
(920, '文件更新', '0', 1448001840),
(921, '门店审核状态修复', '0', 1448241360),
(922, '图文投票数据处理优化', '0', 1448247300),
(923, '微活动中的文件', '0', 1448261700),
(924, '修复Access_token 过期问题', '0', 1448266920),
(925, '文件更新', '0', 1448341680),
(926, '会员卡的充值优化', '0', 1448343060),
(927, '图文投票数据优化', '0', 1448344440),
(928, '左侧菜单栏调整', '0', 1448346600),
(929, '认证服务号判断优化', '0', 1448346900),
(930, '新版砍价升级', '1', 1448347080),
(931, '公众号编辑页优化', '0', 1448349420),
(932, '站长后台的站点设置优化', '0', 1448356620),
(933, 'LBS优化', '0', 1448356860),
(934, '会员卡的商家导航修复', '0', 1448357160),
(935, '游戏新版', '1', 1448413500),
(936, '文件更新，砸金蛋', '0', 1448422620),
(937, '砍价的提示', '0', 1448430060),
(938, '解决关注送红包的次数问题', '0', 1448430780),
(939, '微游戏的文件', '0', 1448443500),
(940, '微游戏补丁', '0', 1448445540),
(941, '微信服务商支付提示内容修改', '0', 1448517720),
(942, '站长后台对接key的隐藏优化', '0', 1448519580),
(943, '微游戏优化', '0', 1448520720),
(944, 'LBS地区选择加上深圳市龙华新区', '0', 1448523960),
(945, '摇一摇抽奖手机端奖品的显示顺序与电脑端相同', '0', 1448527980),
(946, '粉丝红包的提示修改', '0', 1448528820),
(947, '邀请函的时间设置优化', '0', 1448529000),
(948, '微预约的标题栏显示优化', '0', 1448587860),
(949, '一键授权优化', '0', 1448593800),
(950, '微餐饮后台餐桌独立管理页面修复', '0', 1448604540),
(951, '万能表单样式优化', '0', 1448606400),
(952, '微信托管修复', '0', 1448616120),
(953, '修复餐饮和外卖的商家门店', '0', 1448672820),
(954, '秒杀的商品图片高度限制', '0', 1448673240),
(955, '微游戏，扫描玩游戏的关注判断修复', '0', 1448703000),
(956, '修复新版微砍价的亲友团出刀记录', '0', 1448845980),
(957, '抽奖类活动的作弊优化', '0', 1448850900),
(958, '图文投票的投票重复问题修复', '0', 1448863800),
(959, '微餐饮预约提醒优化', '0', 1448870940),
(960, '修复17号底部导航模板', '0', 1448875380),
(961, '会员卡消费记录优化', '0', 1448875560),
(962, '会员信息不允许删除', '0', 1448935800),
(963, '我要上头条的事件批量开启修复', '0', 1448954280),
(964, '修复LBS获取微信门店类型失效', '0', 1448962560),
(965, '图文投票的导出优化', '0', 1449023040),
(966, '微助力的新版里的宣传图尺寸修改', '0', 1449025620),
(967, '修复微商城的底部导航', '0', 1449048240),
(968, '微餐饮的订餐方式优化', '0', 1449114420),
(969, '文件更新', '0', 1449120000),
(970, '微游戏文件更新', '0', 1449125280),
(971, '游戏的删除同步', '0', 1449130440),
(972, '游戏文件更新', '0', 1449133260),
(973, '管理中心的样式文件', '0', 1449135360),
(974, '微砍价增加关注判断功能', '0', 1449213600),
(975, '微游戏的游戏开始页面自定义', '0', 1449218940),
(976, '渠道二维码的关键词发送优先于关注回复关键词', '0', 1449303360),
(977, '文件更新', '0', 1449455340),
(978, '网页客服提示信息优化', '0', 1449465660),
(979, '关注回复优化', '0', 1449560820),
(980, '秒杀优化', '0', 1449562740),
(981, '九宫格，大转盘，刮刮卡，优惠券，水果机，砸金蛋活动的分享优化', '1', 1449622740),
(982, '修复微调研的商家提交按钮', '0', 1449626400),
(983, '公众号的修改页面优化', '0', 1449626580),
(984, '万能表单支持支付', '1', 1449642540),
(985, '外卖文件更新', '0', 1449712920),
(986, '图文回复优化', '0', 1449713880),
(987, '游戏的文件', '0', 1449729000),
(988, '快捷关注链接填写优化', '0', 1449731160),
(989, '图文回复的编辑页面提示文字优化', '0', 1449731760),
(990, '微商圈的简介页面优化', '0', 1449737340),
(991, '留言板优化', '0', 1449737640),
(992, 'LBS门店地址优化', '0', 1449739920),
(993, '粉丝红包的裂变红包的输入框显示', '0', 1449740940),
(994, '微信签到记录问题处理', '0', 1449801240),
(995, '融合第三方的全选按钮修复', '0', 1449822660),
(996, '文本回复的提示语优化', '0', 1449822780),
(997, '第三方融合的确定按钮修复', '0', 1449826680),
(998, '文件更新', '0', 1449882420),
(999, '摁死小情侣的注册优化', '0', 1449896520),
(1000, '微众筹的“赞”修复', '0', 1449897660),
(1001, '打印机提示信息优化', '0', 1449911580),
(1002, '资费说明页面优化', '0', 1450233720),
(1003, '剔除照片打印机', '0', 1450233900),
(1004, '图片上传优化', '0', 1450244820),
(1005, '回复文件更新', '0', 1450254420),
(1006, '微信支付的优化', '0', 1450256340),
(1007, '游戏的信息获取', '0', 1450263300),
(1008, '修复lbs中门店名称带括号的显示', '0', 1450317540),
(1009, '站长后台的提示信息优化', '0', 1450317900),
(1010, '修复团购的支付方式选择', '0', 1450321020),
(1011, '站长后台的加密串修改优化', '0', 1450321320),
(1012, '砍价的付款优化', '0', 1450332840),
(1013, '文件更新', '0', 1450335360),
(1014, '商城问题修复', '0', 1450335420),
(1015, '微助力的粉丝信息优化', '0', 1450336980),
(1016, '万能表单的间距优化', '0', 1450342680),
(1017, '修复水果机的作弊列表信息', '0', 1450343160),
(1018, '摇钱树的4等奖中奖问题修复', '0', 1450401960),
(1019, '手机支付文件更新', '0', 1450428840),
(1020, '更正郑州的地区选择', '0', 1450432440),
(1021, '修复关注回复的功能库中的微场景', '0', 1450434180),
(1022, 'lbs修改问题修复', '0', 1450663380),
(1023, '摇一摇周边的接口更改', '0', 1450668600),
(1024, '微医疗的订单页面添加返回按钮。', '0', 1450750920),
(1025, '粉丝红包分组发送问题，修复', '0', 1450753800),
(1026, '限制游戏玩的次数设置', '0', 1450764360),
(1027, '系统相关文件更新', '0', 1450770720),
(1028, '微网站模板134号和135号优化', '0', 1450776720),
(1029, '卡券的添加类型问题优化', '0', 1450834020),
(1030, '系统文件YUN', '1', 1450834260),
(1031, '会员信息导出优化', '0', 1450919640),
(1032, '文件更新', '0', 1450927500),
(1033, '系统文件更新W', '0', 1450934220),
(1034, '微商圈的模板116号修复', '0', 1450948320),
(1035, '微餐饮，店员管理的手机端添加分页', '0', 1451005620),
(1036, '微医疗版权不居中问题修复', '0', 1451005860),
(1037, '赠送卡券使用问题修复', '0', 1451006580),
(1038, '站长后台添加提示信息', '0', 1451008020),
(1039, 'lbs分支机构的登录跳转页面优化', '0', 1451013180),
(1040, '优化砍价的订单号显示', '0', 1451013600),
(1041, '商城的文件', '0', 1451032200),
(1042, '一战到底手机号支持177号码段', '0', 1451036040),
(1043, '左侧菜单栏显示优化', '0', 1451095800),
(1044, '微助力排行榜问题修复', '0', 1451110020),
(1045, '群发优化', '0', 1451121780),
(1046, '图文消息优化', '0', 1451268540),
(1047, '30号模板幻灯片显示修复', '0', 1451281320),
(1048, '系统文件更新', '0', 1451281980),
(1049, '关注赠送的红包优化', '0', 1451287080),
(1050, '摇钱树的中奖记录的分页优化', '0', 1451352000),
(1051, '公众号的添加页面优化', '0', 1451357520),
(1052, '留言板的提示信息', '0', 1451456940),
(1053, '微信连WIFI的统计信息', '0', 1451544240),
(1054, '外卖的订单页面显示优化', '0', 1451548920),
(1055, 'LBS地址，苏州市加上工业园区', '0', 1451553180),
(1056, '系统文件更新', '0', 1451554200),
(1057, '前台用户不允许用户名为admin', '0', 1451956560),
(1058, '微网站132模板问题修复', '0', 1451956980),
(1059, '留言板，苹果手机问题修复', '0', 1451958120),
(1060, '电脑端的游戏排行榜问题修复', '0', 1451959140),
(1061, '微论坛的苹果手机问题修复', '0', 1451960340),
(1062, '系统文件更新', '0', 1451962200),
(1063, '微商圈的分类问题修复', '0', 1452043620),
(1064, '渠道二维码记录优化', '0', 1452062100),
(1065, '集字游戏奖品问题修复', '0', 1452068580),
(1066, '微游戏的排行榜优化', '0', 1452068640),
(1067, '微商圈优化', '0', 1452070920),
(1068, '新功能，个性化自定义菜单', '1', 1452128580),
(1069, '图文投票优化', '0', 1452133320),
(1070, '微游戏的成绩问题修复', '0', 1452138480),
(1071, '功能库中选择场景链接优化', '0', 1452151440),
(1072, '微商圈问题', '0', 1452160980),
(1073, '修复微商圈的商家名称显示', '0', 1452241140),
(1074, '微房产的房间可添加到9个', '0', 1452243480),
(1075, '砍价的商品价格问题修复', '0', 1452244980),
(1076, '个性化自定义菜单提示优化', '0', 1452245820),
(1077, '个性化自定义菜单的提示文字优化', '0', 1452305580),
(1078, '微喜帖动画优化', '0', 1452329940),
(1079, '微教育手机端按照手机号查询成绩的限制优化', '0', 1452330120),
(1080, '一元购优化', '0', 1452475020),
(1081, '新功能，募捐', '1', 1452481980),
(1082, '微餐饮的菜品管理问题修复', '0', 1452492480),
(1083, '补丁文件', '0', 1452560400),
(1084, '个性化自定义菜单优化', '0', 1452566340),
(1085, '摇一摇抽奖的注册页面优化', '0', 1452576360),
(1086, '图文消息的多个关键词回复问题修复', '0', 1452585360),
(1087, '微汽车，车型管理页优化', '0', 1452590460),
(1088, '重要文件', '0', 1452660180),
(1089, '文件更新', '0', 1452660540),
(1090, '左侧菜单', '0', 1452666180),
(1091, '现场的文件', '0', 1452666720),
(1092, '游戏文件更新', '0', 1452667560),
(1093, '商城的文件', '0', 1452673320),
(1094, '修复渠道二维码扫描后没有信息的问题', '0', 1452737160),
(1095, '微官网首页的文件', '0', 1452739500),
(1096, '系统文件更新', '0', 1452754620),
(1097, '新模板文件', '0', 1452758040),
(1098, '一元购的提示优化', '0', 1452761880),
(1099, 'SN码导出问题', '0', 1452824040),
(1100, '新的管理中心问题修复', '0', 1452824340),
(1101, '微官网首页新模板问题修复', '0', 1452825300),
(1102, '游戏的分享优化', '0', 1452839160),
(1103, '商城的问题修复', '0', 1452847980),
(1104, '新功能，图文投票V8.0', '1', 1452909540),
(1105, '微游戏的成绩问题修复', '0', 1452915060),
(1106, '新模板九宫格问题修复', '0', 1452922860),
(1107, '修复会员卡的开卡赠送卡券选择和会员查看签到记录问题', '0', 1452924780),
(1108, '文件更新LBS', '0', 1452926220),
(1109, '万能表单谷歌浏览器导出优化', '0', 1453080300),
(1110, '微游戏的游戏成绩优化', '0', 1453081980),
(1111, '会员卡使用支付宝充值优化', '0', 1453084980),
(1112, '图文投票的红包拉票，认证订阅号可以选择', '0', 1453099560),
(1113, '新模板提交优化', '0', 1453100700),
(1114, '微商圈问题修复', '0', 1453107960),
(1115, '图文投票的iPhone6plus横幅问题修复', '0', 1453109040),
(1116, '站长后台保存问题修复', '0', 1453189200),
(1117, '图文投票粉丝领取金额问题修复', '0', 1453257180),
(1118, '会员卡充值优化', '0', 1453258200),
(1119, '新模板补丁', '0', 1453268520),
(1120, '图文投票的样式文件', '0', 1453281540),
(1121, '图文投票的横幅优化', '0', 1453342260),
(1122, '更新系统文件00', '0', 1453343940),
(1123, '站长后台新模板', '0', 1453347540),
(1124, '图文投票非认证服务号报名时不允许直接上传语音', '0', 1453368120),
(1125, '图文消息的关键词相同时，可回复多条', '0', 1453448040),
(1126, '一元购优化', '0', 1453534560),
(1127, '优惠券活动中的卡券问题修复', '0', 1453541340),
(1128, '多图文的贺卡优化', '0', 1453686000),
(1129, '图文投票认证订阅号去除录音功能', '0', 1453688460),
(1130, '加盟版代理商问题修复', '0', 1453702800),
(1131, '新功能，微医疗', '1', 1453770600),
(1132, '图文投票的地区限制优化', '0', 1453791180),
(1133, '会员卡消费记录导入优化', '0', 1453798680),
(1134, '图文投票报名上传图片', '0', 1453802100),
(1135, '新功能，管理中心的功能展示', '1', 1453856520),
(1136, '微官网的新模板优化', '0', 1453859820),
(1137, '图文投票的两个新模板', '1', 1453943460),
(1138, '站长后台新模板优化', '0', 1453945860),
(1139, '微医疗的职称管理问题修复', '0', 1453952100),
(1140, '微众筹的站内信', '0', 1453958760),
(1141, '图文投票的横幅优化', '0', 1453968420),
(1142, '摇一摇抽奖的奖品设置优化', '0', 1453970940),
(1143, '3g相册手机端显示优化', '0', 1454036520),
(1144, '微医疗订单不打印问题修复', '0', 1454048880),
(1145, '重要文件', '0', 1454124720),
(1146, '新功能，游戏的分享奖励', '1', 1454125620),
(1147, '商城的模板消息修复', '0', 1454131680),
(1148, '图文投票的回复优化', '0', 1454133660),
(1149, '微团购分享出去带图标', '0', 1454135220),
(1150, '图文消息的内容页图片问题修复', '0', 1454136600),
(1151, '粉丝红包发送优化', '0', 1454140740),
(1152, '摇一摇抽奖的页面优化', '0', 1454297520),
(1153, '万能表单可以按照时间导出', '0', 1454309640),
(1154, '酒店宾馆新增房型，房间开关', '1', 1454375220),
(1155, '分享助力，好友助力可选择是否需要关注', '0', 1454396220),
(1156, '微教育，学员的地区选择问题修复', '0', 1454398260),
(1157, '集字游戏，增加帮助的人是否关注选项', '0', 1454402940),
(1158, '低调奢华版微预约页面优化', '0', 1454463540),
(1159, '微物业下单问题修复', '0', 1454464260),
(1160, '会员卡的导出优化和微信卡券核销优化', '0', 1454465940),
(1161, '秒杀的商品图片显示优化', '0', 1454471100),
(1162, '一元购优化', '0', 1454477160),
(1163, '微物业的站内信消息优化', '0', 1454478360),
(1164, '站长后台的客户案例添加优化', '0', 1454479740),
(1165, '摇一摇周边新版统计', '1', 1454551500),
(1166, '微贺卡的音乐问题修复', '0', 1454553120),
(1167, '酒店的列表页优化', '0', 1454573040),
(1168, '摇一摇抽奖活动的红包奖品添加优化', '0', 1455498720),
(1169, '合体红包页面优化', '0', 1455504600),
(1170, '重要文件，关于苹果手机', '0', 1455513300),
(1171, '低调奢华版对接按钮显示', '0', 1455524340),
(1172, '微酒店的门店列表优化', '0', 1455526020),
(1173, '图文投票的手机端活动首页和活动选项的详情页面优化', '1', 1455591120),
(1174, '商城的底部菜单居中', '0', 1455593940),
(1175, '图文投票的退款优化', '0', 1455603360),
(1176, '粉丝红包的批量发送优化', '0', 1455613020),
(1177, '一战到底题目优化', '0', 1455614760),
(1178, '微外卖模板消息优化', '0', 1455676440),
(1179, '新版微现场', '1', 1455679980),
(1180, '功能库里面的图文消息的搜索优化', '0', 1455692040),
(1181, '新版微现场的样式文件', '0', 1455697620),
(1182, '微现场的图片1', '0', 1455702060),
(1183, '微现场的图片2', '0', 1455702480),
(1184, '微现场的图片3', '0', 1455702600),
(1185, '微现场的图片4', '0', 1455702660),
(1186, '微现场的图片5', '0', 1455702720),
(1187, '微现场的图片6', '0', 1455702780),
(1188, '微现场的图片7', '0', 1455702840),
(1189, '微现场的图片8', '0', 1455702900),
(1190, '微现场的图片9', '0', 1455702960),
(1191, '微现场的图片10', '0', 1455703080),
(1192, '微现场的图片11', '0', 1455703140),
(1193, '微医疗中错别字更正', '0', 1455757500),
(1194, '微网站的内容页模板图片查看更新', '1', 1455758760),
(1195, '微砍价的关注优化', '0', 1455761700),
(1196, '喜帖添加默认图片', '0', 1455849720),
(1197, '微网站新版的补丁', '0', 1455851760),
(1198, '微论坛的信息填写提示优化', '0', 1455862380),
(1199, '游戏的定制页面优化', '0', 1455931440),
(1200, '支付的时候使用代金券支付方式优化', '0', 1455932100),
(1201, '卡券重复领取问题修复', '0', 1455933240),
(1202, '支付使用的代金券优化', '0', 1455937320),
(1203, '微现场摇一摇优化', '0', 1456126260),
(1204, '会员卡条形码文件', '0', 1456132140),
(1205, '摇一摇抽奖的页面提示优化', '0', 1456133520),
(1206, '会员卡消费记录导出优化', '0', 1456133700),
(1207, '文章打赏功能', '1', 1456275540),
(1208, 'lbs功能优化', '0', 1456278600),
(1209, '微信公众号对视频消息的回复优化', '0', 1456279500),
(1210, '首页的备案连接跳转', '0', 1456280280),
(1211, '图文回复上传音乐到又拍云问题修复', '0', 1456281540),
(1212, '摇一摇抽奖中奖名单手机号显示', '0', 1456281780),
(1213, '商城订单信息处理优化', '0', 1456284660),
(1214, '网页客服消息，客服不在线的时候，可以收到客户的信息', '0', 1456284960),
(1215, '微现场优化', '0', 1456285200),
(1216, '微现场的微信墙信息优化', '0', 1456292400),
(1217, '酒店的房间问题修复', '0', 1456296420),
(1218, '微教育的文件', '0', 1456303140),
(1219, '手机微网站首页模板问题修复', '0', 1456304880),
(1220, '图文消息的图片添加的链接跳转问题修复', '0', 1456306020),
(1221, '分享优化', '0', 1456387020),
(1222, '微教育图片保存问题修复', '0', 1456451100),
(1223, '站长后台的统计优化', '0', 1456454220),
(1224, '文件更新', '0', 1456541040),
(1225, '楼盘房产的模板消息提醒优化', '0', 1456552860),
(1226, '帐号审核问题修复', '0', 1456557180),
(1227, '后台自定义导航显示优化', '0', 1456562700),
(1228, '78号模板问题修复', '0', 1456708800),
(1229, '左侧菜单栏优化', '0', 1456730940),
(1230, '商城订单打印优化', '0', 1456798800),
(1231, '网页客服的温馨提示修改', '0', 1456903980),
(1232, '微信支付服务商配置、微信托管授权信息配置、支付宝支付配置、等支付配置的重要信息做 *处理', '1', 1456967040),
(1233, '会员卡卡券核销新增导出功能', '1', 1456967700),
(1234, '高级群发升级', '1', 1457060760),
(1235, '统计代码优化', '0', 1457081400),
(1236, '团购的LBS位置显示优化', '0', 1457081460),
(1237, '未关注提示优化', '0', 1457081820),
(1238, '酒吧的站内信优化', '0', 1457083740),
(1239, '269号模板和270号模板的音乐播放问题修复', '0', 1457140260),
(1240, '微论坛，苹果手机评论删除问题修复', '0', 1457156700),
(1241, '网页客服优化', '0', 1457165340),
(1242, '拆礼盒音乐不自动播放问题修复', '0', 1457167620),
(1243, '手机端注册页面优化', '0', 1457317200),
(1244, '微论坛苹果手机删除帖子问题修复', '0', 1457322120),
(1245, '九宫格图片', '0', 1457330820),
(1246, '图文投票的排行榜优化', '0', 1457512020),
(1247, '套餐价格为0的话，过期的用户做处理', '0', 1457573100),
(1248, '会员卡积分兑换红包', '1', 1457574000),
(1249, '内容页模板1的分享提示问题修复', '0', 1457658840),
(1250, '店员登录页面和LBS分支登录页面的帮助优化', '0', 1457682000),
(1251, '微拍卖的支付优化', '0', 1457763780),
(1252, '外卖的短信优化', '0', 1457769060),
(1253, '测试帐号到期处理', '0', 1457920080),
(1254, '会员卡积分兑换红包的设置优化', '0', 1458004140),
(1255, '拆礼盒，不允许粉丝帮自己拆', '0', 1458011040),
(1256, '图文投票优化版', '1', 1458178920),
(1257, '一元夺宝模板消息优化', '0', 1458183960),
(1258, '微商圈的分类显示优化', '0', 1458185580),
(1259, '卡券核销优化', '0', 1458202620),
(1260, '关注判断优化', '1', 1458266760),
(1261, '图文投票自我介绍内容无法保存修复', '0', 1458280920),
(1262, '摁死小情侣提示', '1', 1458548820),
(1263, '手机端下线核销门店不显示的问题', '0', 1458549180),
(1264, '图文投票横幅不限定高度', '0', 1458550860),
(1265, '更新', '0', 1458552000),
(1266, '集字游戏', '0', 1458552240),
(1267, '修复菜谱样式', '0', 1458552420),
(1268, '活动优惠券分享没有图片', '0', 1458615300),
(1269, '新版外卖', '1', 1458616680),
(1270, '修复砍价出现没有名称和手机号', '0', 1458624120),
(1271, '修复支付提示签名错误', '0', 1458635040),
(1272, '图文投票优化', '0', 1458636420),
(1273, '优化关注自动回复', '0', 1458703080),
(1274, '酒店优化', '0', 1458722820),
(1275, '群发不显示作者', '0', 1458789660),
(1276, '新增媒体或政府类型的认证订阅号支持', '1', 1458798180),
(1277, '订单收件人长度限制', '0', 1458801720),
(1278, '新版游戏', '1', 1458802680),
(1279, '投票自定义报名项修复', '0', 1458810540),
(1280, '修复老版游戏参与管理不显示数据', '0', 1458883860),
(1281, '游戏', '0', 1458885900),
(1282, '游戏', '0', 1458888600),
(1283, '游戏提示语', '0', 1458893640),
(1284, '新版万能表单（预约）', '1', 1458903360),
(1285, '修复图文消息diy设计插入编辑器', '0', 1459133520),
(1286, '游戏样式', '0', 1459135200),
(1287, '商城，酒店，外卖订单中加入代金券折扣金额', '0', 1459143000),
(1288, '功能介绍用自己的站点名称替换掉pigcms', '0', 1459150440),
(1289, '优化酒店订单排序', '0', 1459239240),
(1290, '文章评论', '1', 1459240620),
(1291, '授权后不让复制wecha_id参数', '1', 1459240860),
(1292, '会员卡预览和实际效果差别太大问题', '0', 1459241160),
(1293, '新游戏样式修改', '0', 1459241760),
(1294, '修复店员管理不能全选', '0', 1459242120),
(1295, '修复红包领取超额', '0', 1459242360),
(1296, '拉票款退款从红包改成直接到帐退款', '0', 1459304820),
(1297, '短信未售出时显示0条', '0', 1459307820),
(1298, '修复楼盘房产时间插件问题', '1', 1459317000),
(1299, '微调研优化', '1', 1459323180),
(1300, '修复VIP有效期失效问题', '1', 1459402200),
(1301, '关闭帮助&会员卡设计', '0', 1459404960),
(1302, '未选择卡券提示', '0', 1459408740),
(1303, '原文链接生成工具', '1', 1459409220),
(1304, '刮刮卡抽奖次数不对问题', '0', 1459420440),
(1305, '图文投票优化', '0', 1459478460),
(1306, '显示底部版权', '0', 1459478700),
(1307, '图文投票图片模糊', '0', 1459478820),
(1308, '原文链接复制工具', '0', 1459478880),
(1309, 'LBS商家连锁，分支机构设置中选择了隐藏，但是手机端还是会显示的问题', '0', 1459482780),
(1310, '统一文字描述为精选', '0', 1459482840),
(1311, '跟新', '0', 1459488780),
(1312, '文章评论给按钮拖动', '0', 1459491060),
(1313, '普通红包去掉总金额控制', '1', 1459496940),
(1314, '游戏 参与人数颜色无法自定义，兑换时间冲突', '0', 1459502520),
(1315, '微众筹无法支付，以及打赏无法获取到昵称', '0', 1459502700),
(1316, '编辑时原样显示html', '0', 1459506120),
(1317, '所有商品分享时没有图标', '0', 1459509540),
(1318, '一站到底去掉答题中白屏', '0', 1459834440),
(1319, '游戏未发布的邀请有礼提示', '0', 1459834980),
(1320, '短信验证提示参数错误', '0', 1459835220),
(1321, '粉丝未关注进入助力页还是会弹出关注提示框', '0', 1459843920),
(1322, '游戏结束后不可修改活动时间逻辑', '0', 1459848960),
(1323, '一站到底 添加题库的时候点击取消直接跳转到了微调研', '0', 1459849620),
(1324, '助力页参与过的人无法点击返回我的未参与的人无法点击我要参与', '0', 1459937100),
(1325, '应用授权错误', '0', 1459938720),
(1326, '砸金蛋分享没有简介', '0', 1459940100),
(1327, '商品上传了2张图片则我的订单页无法展示商品图片', '0', 1460014800),
(1328, 'o2o对接功能', '0', 1460016900),
(1329, '游戏相关修改', '0', 1460023800),
(1330, '外卖去掉订单更新打印机打印', '0', 1460086920),
(1331, '文章品论赞多次点赞的问题', '0', 1460087040),
(1332, '图文投票  自动审核的功能', '0', 1460091960),
(1333, '新游戏设计界面 取消时间秒的设置 奖品图片切换代码', '0', 1460098140),
(1334, 'o2o对接 摇钱树二维码生成失败问题', '0', 1460099400),
(1335, '绑定微信号', '0', 1460184060),
(1336, '修改排名兑换码的长度', '0', 1460341500),
(1337, '微贺卡图文回复没简介', '0', 1460346240),
(1338, '户型列表去掉子楼盘项', '0', 1460363280),
(1339, '图文投票编号不自动增加', '0', 1460364960),
(1340, 'lbs商家在营销后台添加之后在微信上审核不通过', '0', 1460365920),
(1341, '修改奖品信息的修改逻辑', '0', 1460369700),
(1342, '图文被回复时不增加浏览量，只有进入图文了才计算浏览量', '0', 1460371380);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_upyun_attachement`
--

CREATE TABLE IF NOT EXISTS `pigcms_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pigcms_user`
--

INSERT INTO `pigcms_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`, `is_admin`) VALUES
(8, 'admin', '21232f297a57a5a743894a0e4a801fc3', 5, 1, '', 1460424350, '180.123.122.59', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_userinfo`
--

CREATE TABLE IF NOT EXISTS `pigcms_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `paypass` varchar(32) DEFAULT NULL,
  `twid` varchar(20) NOT NULL COMMENT '推广号',
  `username` varchar(32) NOT NULL COMMENT '账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `city` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `store_id` int(10) DEFAULT '0',
  `drp_cart` text NOT NULL COMMENT '分销系统-用户购物车',
  `regtime` varchar(20) NOT NULL DEFAULT '' COMMENT '注册时间',
  `fakeopenid` varchar(100) NOT NULL DEFAULT '',
  `issub` tinyint(1) NOT NULL DEFAULT '0',
  `origin` varchar(200) DEFAULT NULL,
  `isverify` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `twid` (`twid`),
  KEY `username` (`username`),
  KEY `store_id` (`store_id`) USING BTREE,
  KEY `fakeopenid` (`fakeopenid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `pigcms_userinfo`
--

INSERT INTO `pigcms_userinfo` (`id`, `portrait`, `wallopen`, `total_score`, `expensetotal`, `token`, `wecha_id`, `wechaname`, `truename`, `tel`, `bornyear`, `bornmonth`, `bornday`, `qq`, `sex`, `age`, `birthday`, `address`, `info`, `sign_score`, `expend_score`, `continuous`, `add_expend`, `add_expend_time`, `live_time`, `getcardtime`, `balance`, `paypass`, `twid`, `username`, `password`, `city`, `province`, `store_id`, `drp_cart`, `regtime`, `fakeopenid`, `issub`, `origin`, `isverify`) VALUES
(42, 'http://wx.qlogo.cn/mmopen/0nn3FBrD9a1Oa54kMcRibJicv6icN7KaOZZ9kHPeMooTQP7S8WmTSCJwDibNK3qxJfB6SlkBHuiaOQ8ibsbL7AicPQeiaHvMe3ugjNUF/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', '张超', '张超', '18605538151', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '合肥', '安徽', 0, '', '', '', 1, NULL, 0),
(43, 'http://wx.qlogo.cn/mmopen/zq190of3P8yuy8W0yDpCwZKB2VgWhLiabxnTUXI95lcBIyHwicnAw1YIYGm05NMOKktibP42AKhdwQkMloGV3ZMgmNy73R7C6icv/0', 0, 0, 0, 'vjotae1439949952', 'onmH-twCKK39DP9BtZ33wQj1O3nc', 'JDL', 'JDL', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '安庆', '安徽', 0, '', '', '', 0, NULL, 0),
(44, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELE9wWYeXzevQ5d0wdawMT3tsGN4a1LlA3AvRcKyyYGiaaT40b0FdPZRArwPPAUWCfYv4AEj2RpgUg/0', 0, 0, 0, 'vjotae1439949952', 'onmH-txqzcOUK7Ceh8gW-XmTKITI', '// 迪迪迪迪迪', '// 迪迪迪迪迪', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '', '', 0, '', '', '', 0, NULL, 0),
(45, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI8RCwL1F8F5z1reCQerjLY7IGpUbeVrhxcLtpskaExpdR498icLiaRx9FnzwIqhIwjmev3icxvvgkcA/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t7-og94p-ZaCm0OjVe_YQkY', '武', '武', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '汕头', '广东', 0, '', '', '', 0, NULL, 0),
(46, 'http://wx.qlogo.cn/mmopen/1MxJIKiaXGgm8Il6pvpOANBLq1EqKw9ves6ZEq5DL3KlzHCUB3iaBZ9ALW28AEYE3JkEQJMph6ibQkiaL5klNflKOEYzt5OBgU5x/0', 0, 0, 0, 'vjotae1439949952', 'onmH-tw4Vh2bWIAyWWJHHb9-gPis', '蔡楷', '蔡楷', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '安顺', '贵州', 0, '', '', '', 0, NULL, 0),
(47, 'http://wx.qlogo.cn/mmopen/1xm4Eyz9wWgzoia4EsicQeKSoBPmOqAqolpo4IKeNZqhkX3eQBzicAIE3YAMbuesHGpfur1UV2DibiahpxQ2KuLt6AggobXpVsibcK/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t91yRnhWOIhUsJVuev3RA6Q', 'IMB', 'IMB', '13800138000', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '深圳', '广东', 0, '', '', '', 1, NULL, 0),
(48, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAeCDvZrGO4qiaYbVIoDssm6genwoejh3ShtwnfYDrvS59DOHNMeAQytRESZYvZiawyjeWgeYF3VxDQ/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t9D5oRR_VmG6MKlErxUSrCw', '香橙', '香橙', '13566663356', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '西城', '北京', 0, '', '', '', 1, NULL, 0),
(49, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKCRqlHXQ1ic8kbbelFM4hE0iah2HAuic8gOs1JbuHUgQdvS7ic0pFiaCxEp9o6OyREiaf6d7UxkE8RgXTg/0', 0, 0, 0, 'vjotae1439949952', 'onmH-txKTp0UMrTIi73HHkiZoTyw', '郭小川 | 微营销推广', '郭小川 | 微营销推广', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '朝阳', '北京', 0, '', '', '', 0, NULL, 0),
(50, 'http://wx.qlogo.cn/mmopen/1xm4Eyz9wWiaT74sYic8yGU6vgenFCAjvat09njtEpUc94LdPrOy1JwBgeia6hZ5E9BxiarqORHKkZyNbak6s35uERtdtbepkNKg/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t3ollBLa6bKZgDfr3iex2SA', '王芳争', '王芳争', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '商丘', '河南', 0, '', '', '', 0, NULL, 0),
(51, 'http://wx.qlogo.cn/mmopen/1MxJIKiaXGgkxj7bcaOBiaYlSlq4WMdYGyG3vmOY7wlic25SxianVo5qgf5yg7R8dfRyvdFQtic5TcIgicibAKBpIibXZwxeBJoRxRRq/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t2DDn0ujIDNqJigDtQlxJVQ', 'A 海超', 'A 海超', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '松原', '吉林', 0, '', '', '', 0, NULL, 0),
(52, 'http://wx.qlogo.cn/mmopen/40PkG37IobhOsKF4pHA51vukpY4ucibXWSbv51ORAtcBRzRla3KYy8GLJHZXDed1FTwPab2WVI7Aw9Wl4mfSqamPsqaF8urXic/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t0QUR0tg2kcvmvlJ0NB4QRI', '王瑞超', '王瑞超', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '海淀', '北京', 0, '', '', '', 0, NULL, 0),
(53, 'http://wx.qlogo.cn/mmopen/1MxJIKiaXGglbjOHhe13Rzic6hib6FfhFP6jpjsvrQnHZVEC4vxGc6o35LTdHwfovJussMLeML9raNmeulp3NHXFz48ZSOxyGh1/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t6BshM8UO6X6cNAbhrS2TG8', '子风', '子风', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '汉中', '陕西', 0, '', '', '', 0, NULL, 0),
(54, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI441klaeP73zFKPBoJtXUGPT1IEZ9VsLFIqVbE1BacosQoJYibiaUvEcRUEsfWBwwWEicP7tDVfkQgQ/0', 0, 0, 0, 'vjotae1439949952', 'onmH-t_PHPRVf59eRZhU0qyq3oIU', '休止符', '休止符', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '珠海', '广东', 0, '', '', '', 0, NULL, 0),
(55, '', 0, 0, 0, 'hbokpr1439956537', 'oysiouL9g5pAtr6QqwPLNeWrNLkQ', '', '明', '13899852422', '1988', '09', '04', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1439956866, 0.00, NULL, '', '', '', NULL, NULL, 0, '', '', '', 0, NULL, 0),
(56, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJwW3Goic35nzkyTr2eQn08Qkey7B9yl1bzdmfoD53YXrrCxwzgvsr1w1hsoFGA7L5PVMnfdVhSXNg/0', 0, 0, 0, 'cavegu1439957052', 'oTNkquOXrG0T-ywPB1SeVDEayD-Q', '梁峻豪', '梁峻豪', '13777758591', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '涪陵', '重庆', 0, '', '', '', 1, NULL, 0),
(57, 'http://wx.qlogo.cn/mmopen/TZPVXZT1rD1BcbQgaojF2ibrBLjVvQkPbUPtd2TrYCicCz7jR90z7s3mnvV1ErooDc986XAUO4sQoRaDic4Kw4cdZeyodrpCJaw/0', 0, 0, 0, 'cavegu1439957052', 'oTNkquKy-uJsLhgeJT_1KhgSXSAQ', '李振鹏', '李振鹏', '', '', '', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, '', '', '', '郴州', '湖南', 0, '', '', '', 1, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_userinfo_attach`
--

CREATE TABLE IF NOT EXISTS `pigcms_userinfo_attach` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `field_value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) unsigned NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `business` char(20) NOT NULL DEFAULT 'other',
  `usertplid` tinyint(4) NOT NULL DEFAULT '1',
  `sysuser` int(11) NOT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `source_domain` varchar(200) NOT NULL,
  `access_count` int(11) NOT NULL,
  `access_count_notice` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='前台用户表' AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `pigcms_users`
--

INSERT INTO `pigcms_users` (`id`, `openid`, `agentid`, `inviter`, `gid`, `username`, `mp`, `smscount`, `password`, `email`, `createtime`, `lasttime`, `status`, `createip`, `lastip`, `diynum`, `activitynum`, `card_num`, `card_create_status`, `money`, `moneybalance`, `spend`, `viptime`, `connectnum`, `lastloginmonth`, `attachmentsize`, `wechat_card_num`, `serviceUserNum`, `invitecode`, `remark`, `business`, `usertplid`, `sysuser`, `is_syn`, `source_domain`, `access_count`, `access_count_notice`) VALUES
(8, '', 0, 0, 4, 'dmds518', '', 0, 'bade7c73c961acc5e822759240f301be', 'd@qq.com', '1439948837', '1439949504', '1', '123.52.26.228', '121.34.115.157', 0, 0, 0, 0, 0, 0, 0, '1471536000', 0, 8, 0, 1, 0, 'cpxwxg', '', 'mall', 1, 0, 0, '', 0, ''),
(9, '', 0, 0, 4, 'whc', '', 0, '1ae28118d7cb9a6a87aec71b22467e74', '182040592@qq.com', '1439948896', '1439948896', '1', '122.140.241.246', '122.140.241.246', 0, 0, 0, 0, 0, 0, 0, '1471536000', 0, 8, 0, 1, 0, 'cqbqcg', '', 'mall', 1, 0, 0, '', 0, ''),
(10, '', 0, 0, 4, '123', '12312312312', 0, '202cb962ac59075b964b07152d234b70', '123@123.com', '', '1439951928', '1', '', '120.36.190.234', 0, 0, 0, 0, 0, 0, 0, '', 0, 8, 0, 0, 0, '', '', 'mall', 0, 0, 0, '', 0, ''),
(11, '', 0, 0, 4, 'list', '13309160049', 0, '7f31eab4f870a683cc338f3bd5f15490', '6421896@qq.com', '', '1439949059', '1', '', '61.150.92.157', 0, 0, 0, 0, 0, 0, 0, '1472054400', 0, 8, 0, 1, 0, '', '', 'mall', 1, 0, 0, '', 0, ''),
(12, '', 0, 0, 4, '456', '13512312312', 0, '250cf8b51c773f3f8dc8b4be867a9a02', '456@456.com', '', '1439949157', '1', '', '218.26.9.166', 0, 0, 0, 0, 0, 0, 0, '1660838400', 0, 8, 0, 1, 0, '', '', 'mall', 0, 0, 0, '', 0, ''),
(13, '', 0, 0, 4, '398', '398', 0, 'b7b16ecf8ca53723593894116071700c', '398@qq.com', '', '1440035248', '1', '', '127.0.0.1', 0, 0, 0, 0, 0, 0, 0, '1472400000', 0, 8, 78610, 1, 0, '', '', 'mall', 1, 1, 0, '', 0, ''),
(18, '', 0, 10, 4, 'aolv', '', 0, '6f5be5416ffda50d83b5eaff6709b35a', 'oliver.liuq@gmail.com', '1439951476', '1439951476', '1', '113.76.124.117', '113.76.124.117', 0, 0, 0, 0, 0, 0, 0, '1470412800', 0, 8, 0, 1, 0, 'ewdaen', '', 'mall', 1, 0, 0, '', 0, ''),
(14, '', 0, 0, 4, '奋斗', '18605538151', 0, '5ff00076acfc342c8c3ad7ddff822e25', '775973876@qq.com', '', '1439968586', '1', '', '60.169.113.241', 0, 0, 0, 0, 0, 0, 0, '1597766400', 2, 8, 62019, 1, 0, '', '', 'other', 1, 1, 0, '', 0, ''),
(15, '', 0, 10, 4, '111', '', 0, '698d51a19d8a121ce581499d7b701668', '11111@qq.com', '1439949891', '1439968603', '1', '60.166.76.232', '60.166.76.232', 0, 0, 0, 0, 0, 0, 0, '1441382400', 2, 8, 0, 1, 0, 'sjypna', '', 'mall', 1, 0, 0, '', 0, ''),
(16, '', 0, 10, 4, '123456789', '', 0, '25f9e794323b453885f5181f1b624d0b', '395997770@qq.com', '1439949994', '1439949994', '1', '180.156.231.123', '180.156.231.123', 0, 0, 0, 0, 0, 0, 0, '1471536000', 0, 8, 0, 1, 0, 'auzbew', '', 'mall', 1, 0, 0, '', 0, ''),
(17, '', 0, 0, 4, 'csyh', '15896990934', 0, '25f9e794323b453885f5181f1b624d0b', '1@weimi.com', '', '1439950787', '1', '', '222.138.178.74', 0, 0, 0, 0, 0, 0, 0, '1440777600', 0, 8, 0, 1, 0, '', '', 'mall', 1, 0, 0, '', 0, ''),
(19, '', 0, 10, 4, 'comer', '', 0, '17cb48b129d8b8c4d81278d02c5e07c2', '630010153@qq.com', '1439951765', '1439951765', '1', '175.16.234.39', '175.16.234.39', 0, 0, 0, 0, 0, 0, 0, '1440950400', 0, 8, 0, 0, 0, 'fahmqu', '', 'mall', 1, 0, 0, '', 0, ''),
(20, '', 0, 10, 4, 'lpl0819', '', 0, 'b84134891387c2af2442a0d17e187c81', '5444564@qq.com', '1439951833', '1439951833', '1', '121.19.17.244', '121.19.17.244', 0, 0, 0, 0, 0, 0, 0, '1439951833', 0, 8, 0, 0, 0, 'vryzvx', '', 'mall', 1, 0, 0, '', 0, ''),
(21, '', 0, 10, 4, '321', '', 0, 'caf1a3dfb505ffed0d024130f58c5cfa', '321@123.com', '1439951844', '1439951844', '1', '120.36.190.234', '120.36.190.234', 0, 0, 0, 0, 0, 0, 0, '1440950400', 0, 8, 0, 0, 0, 'ysyqvp', '', 'mall', 1, 0, 0, '', 0, ''),
(22, '', 0, 10, 4, '333', '', 0, '310dcbbf4cce62f762a2aaa148d556bd', '333@123.com', '1439951895', '1439951895', '1', '120.36.190.234', '120.36.190.234', 0, 0, 0, 0, 0, 0, 0, '1440950400', 0, 8, 0, 0, 0, 'uuqmye', '', 'mall', 1, 0, 0, '', 0, ''),
(23, '', 0, 10, 4, 'admin', '', 0, '21232f297a57a5a743894a0e4a801fc3', 'admin@178g.net', '1439952193', '1439968582', '1', '182.120.203.65', '118.249.93.223', 0, 0, 0, 0, 0, 0, 0, '1439952193', 0, 8, 0, 0, 0, 'fwsmeb', '', 'mall', 1, 0, 0, '', 0, ''),
(24, '', 0, 10, 4, 'waruch', '', 0, 'a5b2b3e97fbb4ad9835e8fa62baedb93', 'waruch@qq.com', '1439952730', '1439952730', '1', '125.33.85.72', '125.33.85.72', 0, 0, 0, 0, 0, 0, 0, '1439952730', 0, 8, 0, 0, 0, 'hbjbqy', '', 'mall', 1, 0, 0, '', 0, ''),
(25, '', 0, 10, 4, 'test1', '', 0, '5a105e8b9d40e1329780d62ea2265d8a', 'test1@d.com', '1439956396', '1439956396', '1', '120.71.149.208', '120.71.149.208', 0, 0, 0, 0, 0, 0, 0, '1439956396', 0, 8, 0, 0, 0, 'fgrput', '', 'mall', 1, 0, 0, '', 0, ''),
(26, '', 0, 10, 4, 'test22', '', 0, '4d42bf9c18cb04139f918ff0ae68f8a0', 'test22@qq.com', '1439956426', '1439956426', '1', '120.71.149.208', '120.71.149.208', 0, 0, 19, 0, 0, 0, 0, '1441382400', 30, 8, 0, 1, 0, 'hypjqv', '', 'mall', 1, 0, 0, '', 0, ''),
(27, '', 0, 10, 4, 'caomaobang', '', 0, 'ee990c1ccfb7af0cbf4c5ac02c2cd636', '309983959@qq.com', '1439956874', '1439956874', '1', '106.92.44.54', '106.92.44.54', 0, 1, 0, 0, 0, 0, 0, '1535558400', 0, 8, 5785, 1, 0, 'gvgghq', '', 'mall', 1, 0, 0, '', 0, ''),
(28, '', 0, 0, 4, '小智', '18812256563', 0, 'c82174c9f36ad678df59f857b82d7f1d', '552802673@qq.com', '', '1439962893', '1', '', '42.243.37.30', 0, 0, 0, 0, 0, 0, 0, '1566144000', 0, 8, 0, 1, 0, '', '', 'mall', 1, 0, 0, '', 0, ''),
(29, '', 0, 10, 4, 'sad54asd65', '', 0, '69d07d2557fceee17dd61cc2574d730b', 'sad54asd65@qq.com', '1439968589', '1439968589', '1', '58.48.25.20', '58.48.25.20', 0, 0, 0, 0, 0, 0, 0, '1439968589', 0, 8, 0, 0, 0, 'hgkhsx', '', 'mall', 1, 0, 0, '', 0, ''),
(30, '', 0, 10, 4, '杰登', '', 0, '21218cca77804d2ba1922c33e0151105', '540436797@qq.com', '1439968652', '1439968652', '1', '110.188.227.90', '110.188.227.90', 0, 0, 0, 0, 0, 0, 0, '1439968652', 0, 8, 0, 0, 0, 'uerxzm', '', 'mall', 1, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user_address`
--

CREATE TABLE IF NOT EXISTS `pigcms_user_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(300) NOT NULL DEFAULT '' COMMENT '收货地址',
  `postcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `default_address` char(1) NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收货地址' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user_group`
--

CREATE TABLE IF NOT EXISTS `pigcms_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `func` varchar(3000) DEFAULT NULL,
  `access_count` int(10) unsigned NOT NULL DEFAULT '0',
  `access_count_notice` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pigcms_user_group`
--

INSERT INTO `pigcms_user_group` (`id`, `taxisid`, `name`, `diynum`, `connectnum`, `iscopyright`, `activitynum`, `price`, `statistics_user`, `create_card_num`, `wechat_card_num`, `status`, `agentid`, `func`, `access_count`, `access_count_notice`) VALUES
(1, 1, 'vip0', 2000, 2000, 0, 0, 0, 0, 10, 1, 1, 0, 'tianqi,qiushi,jishuan,langdu,kuaidi,xiaohua,peiliao,liaotian,shouji,fujin,lottery,fanyi,api,suanming,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Red_packet,Punish,Invite,Autumns,Weixin', 0, ''),
(2, 2, 'VIP1', 3000, 3000, 1, 2, 10, 0, 50, 1, 1, 0, 'tianqi,qiushi,jishuan,langdu,kuaidi,xiaohua,changtoushi,peiliao,liaotian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,fujin,lottery,fanyi,api,suanming,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Red_packet,Punish,Invite,Autumns,Weixin', 0, ''),
(3, 3, 'vip2', 40000, 40000, 1, 4, 150, 0, 80, 2, 1, 0, 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Red_packet,Punish,Invite,Autumns,Weixin', 0, ''),
(4, 4, 'vip3', 50000, 50000, 1, 5, 200, 0, 100, 20, 1, 0, 'liaotian,fujin,lottery,api,choujiang,shouye,CustomTmpls,huiyuanka,host_kev,whois,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Autumn,Lovers,AppleGame,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Sentiment,Assistente,Numqueue,Helping,Popularity,Jiugong,MicroBroker,Unitary,Crowdfunding,Bargain,Hongbao,Service,Seckill,Micrstore,Card,Voteimg,Weixin,Shakearound,Person_card,ServiceUser,DishOut,SeniorScene,Cutprice,CoinTree,FrontPage,Collectword,Auction,Test,ShakeLottery,DirectHongbao,Dizwifi,flower,Invite,Autumns,Jiugong,MicroBroker,Helping,Popularity,Unitary,DishOut,Crowdfunding,SeniorScene,Punish,Red_packet,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Seckill,Micrstore,Numqueue,CustomTmpls,Sentiment,CoinTree,FrontPage,Collectword,Auction,Test,ShakeLottery,DirectHongbao,Assistente,Cutprice,Bargain,Hongbao,Service,Weixin,Card,Voteimg,Shakearound,Person_card,ServiceUser,Dizwifi,travel,fujin,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,etuan,shop,dx,lottery,api,choujiang,shouye,liaotian,huiyuanka,host_kev,whois,diyform,messageboard,car,wall,Live,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,AppleGame,Lovers,Autumn,shake,forum,medical,school,hotel,groupmessage,share,LivingCircles,Yundabao,Repast,Distribution,adma,Cashier', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user_request`
--

CREATE TABLE IF NOT EXISTS `pigcms_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_verifier_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_verifier_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `nickname` varchar(100) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `verifier_phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voiceresponse`
--

CREATE TABLE IF NOT EXISTS `pigcms_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='语音回复表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(5000) NOT NULL DEFAULT '',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `refresh` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `scene_time` int(10) unsigned NOT NULL DEFAULT '0',
  `scene_state` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(50) NOT NULL,
  `action_desc` text NOT NULL,
  `award_desc` text NOT NULL,
  `flow_desc` text NOT NULL,
  `join_desc` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '回复关键词',
  `reply_title` varchar(50) NOT NULL DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_pic` varchar(255) NOT NULL COMMENT '回复图片',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `apply_start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `apply_end_time` int(11) NOT NULL,
  `is_follow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要关注',
  `is_register` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要注册',
  `limit_vote` int(11) NOT NULL COMMENT '限制投票数',
  `limit_vote_day` int(11) NOT NULL COMMENT '限制每天投票数',
  `limit_vote_item` int(11) NOT NULL,
  `phone` char(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `page_type` enum('waterfall','page') NOT NULL DEFAULT 'waterfall',
  `display` tinyint(1) NOT NULL,
  `default_skin` tinyint(1) NOT NULL,
  `follow_msg` varchar(500) NOT NULL,
  `follow_url` varchar(255) NOT NULL,
  `self_status` tinyint(1) NOT NULL,
  `follow_btn_msg` varchar(255) NOT NULL,
  `register_msg` varchar(255) NOT NULL,
  `territory_limit` tinyint(1) NOT NULL,
  `pro_city` text NOT NULL,
  `ifsplit` tinyint(1) NOT NULL,
  `split_number` int(11) NOT NULL,
  `lottery_type` tinyint(1) NOT NULL,
  `lottery_id` int(11) NOT NULL,
  `lottery_name` varchar(100) NOT NULL,
  `custom_sharetitle` varchar(255) NOT NULL,
  `custom_sharedsc` varchar(500) NOT NULL,
  `custom_sharetitle_lp` varchar(255) NOT NULL,
  `custom_sharedsc_lp` varchar(500) NOT NULL,
  `img_count` tinyint(1) NOT NULL,
  `onoff_hongbao` tinyint(1) NOT NULL,
  `onoff_voice` tinyint(1) NOT NULL DEFAULT '1',
  `onoff_video` tinyint(1) NOT NULL,
  `apply_fields_name` varchar(500) NOT NULL,
  `need_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_voteimg`
--

INSERT INTO `pigcms_voteimg` (`id`, `action_name`, `action_desc`, `award_desc`, `flow_desc`, `join_desc`, `keyword`, `reply_title`, `reply_content`, `reply_pic`, `start_time`, `apply_start_time`, `end_time`, `apply_end_time`, `is_follow`, `is_register`, `limit_vote`, `limit_vote_day`, `limit_vote_item`, `phone`, `token`, `page_type`, `display`, `default_skin`, `follow_msg`, `follow_url`, `self_status`, `follow_btn_msg`, `register_msg`, `territory_limit`, `pro_city`, `ifsplit`, `split_number`, `lottery_type`, `lottery_id`, `lottery_name`, `custom_sharetitle`, `custom_sharedsc`, `custom_sharetitle_lp`, `custom_sharedsc_lp`, `img_count`, `onoff_hongbao`, `onoff_voice`, `onoff_video`, `apply_fields_name`, `need_check`) VALUES
(1, '图文投票', '图文投票', '图文投票', '图文投票', '图文投票', '图文投票', '图文投票', '图文投票图文投票图文投票图文投票', 'http://s.404.cn/tpl/static/voteimg/img/2.png', 1442628240, 1439949840, 1445220240, 1442628240, 2, 1, 0, 0, 0, '', 'qgvdkw1439949139', 'page', 1, 1, '请进入公众号&quot;1&quot;,回复关键词&quot;图文投票&quot;参加投票活动。', '', 0, '立即关注', '您好，需要您先填写个人信息才能参加活动', 0, '', 0, 0, 0, 0, '', '', '', '', '', 0, 0, 1, 0, '', 0),
(2, 'fgdfgfd', 'dfdfdfdfdfdfdfdfdfdf', 'dfdfdf', '', 'dfdfddfdfdfdfddf', '图文投票', 'dfdfdfdfdfdfdfdf', 'dfdfdfdfdfdfdfdfdfdf', 'http://s.404.cn/tpl/static/voteimg/img/2.png', 1439950620, 1439950620, 1445221020, 1442629020, 2, 1, 0, 0, 0, '', 'sfrpky1439949951', 'waterfall', 1, 1, '请进入公众号&quot;hefeinet&quot;,回复关键词&quot;图文投票&quot;参加投票活动。', '', 0, '立即关注', '您好，需要您先填写个人信息才能参加活动', 0, '', 0, 0, 0, 0, '', '', '', '', '', 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_banner`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `img_url` varchar(100) NOT NULL DEFAULT '',
  `external_links` varchar(1000) NOT NULL,
  `banner_rank` int(11) NOT NULL DEFAULT '1' COMMENT '播放顺序',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`),
  KEY `banner_index` (`vote_id`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_book`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) NOT NULL DEFAULT '',
  `price` float(9,2) NOT NULL,
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `order_name` varchar(100) NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `paystatus` tinyint(4) NOT NULL,
  `hb_id` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `book_time` int(11) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `platform` tinyint(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_bottom`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_bottom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `bottom_name` char(50) NOT NULL COMMENT '导航名称',
  `bottom_link` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `bottom_icon` varchar(255) NOT NULL COMMENT '导航图标',
  `bottom_rank` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是内置导航',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`),
  KEY `bottom_index` (`vote_id`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pigcms_voteimg_bottom`
--

INSERT INTO `pigcms_voteimg_bottom` (`id`, `vote_id`, `bottom_name`, `bottom_link`, `token`, `bottom_icon`, `bottom_rank`, `hide`, `type`) VALUES
(1, 1, '电话', '', 'qgvdkw1439949139', '/tpl/static/voteimg/img/daohang_01.png', 0, 1, 2),
(2, 1, '搜索', '', 'qgvdkw1439949139', '/tpl/static/voteimg/img/daohang_02.png', 1, 1, 2),
(3, 1, '排行', '', 'qgvdkw1439949139', '/tpl/static/voteimg/img/daohang_03.png', 2, 1, 2),
(4, 1, '拉票', '', 'qgvdkw1439949139', '/tpl/static/voteimg/img/daohang_04.png', 3, 1, 2),
(5, 2, '电话', '', 'sfrpky1439949951', '/tpl/static/voteimg/img/daohang_01.png', 0, 1, 2),
(6, 2, '搜索', '', 'sfrpky1439949951', '/tpl/static/voteimg/img/daohang_02.png', 1, 1, 2),
(7, 2, '排行', '', 'sfrpky1439949951', '/tpl/static/voteimg/img/daohang_03.png', 2, 1, 2),
(8, 2, '拉票', '', 'sfrpky1439949951', '/tpl/static/voteimg/img/daohang_04.png', 3, 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_confighb`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_confighb` (
  `hb_id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `shareer_scale` float(2,1) NOT NULL,
  `voter_scale` float(2,1) NOT NULL,
  `min_money` float(6,2) NOT NULL,
  `max_money` float(6,2) NOT NULL,
  `total_money` float(9,2) NOT NULL,
  `lost_money` float(9,2) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `paystatus` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  PRIMARY KEY (`hb_id`),
  KEY `itemID` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_custom_field`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `field_option` varchar(500) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `action_id` int(11) NOT NULL,
  `is_details` enum('0','1') NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_hbinfo`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_hbinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `mch_billno` char(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `money` float(6,2) DEFAULT NULL,
  `open_status` tinyint(1) NOT NULL,
  `update_time` int(11) NOT NULL,
  `refund_time` int(11) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_hbrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_hbrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` float(6,2) NOT NULL,
  `gettype` tinyint(1) NOT NULL,
  `item_id` int(11) NOT NULL,
  `gettime` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `received` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_item`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '图片投票id',
  `baby_id` int(11) NOT NULL,
  `vote_title` varchar(100) NOT NULL DEFAULT '' COMMENT '图片描述',
  `introduction` text NOT NULL COMMENT '自我介绍',
  `manifesto` varchar(255) NOT NULL COMMENT '拉票宣言',
  `vote_img` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `jump_url` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL COMMENT '手机号',
  `vote_count` int(11) NOT NULL COMMENT '获得票数',
  `upload_time` int(11) NOT NULL COMMENT '上传时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `check_pass` tinyint(1) NOT NULL COMMENT '审核',
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `upload_type` tinyint(1) NOT NULL COMMENT '区分管理上传还是报名',
  `ifhongbao` tinyint(1) NOT NULL,
  `localid` varchar(255) NOT NULL DEFAULT '',
  `serverid` varchar(255) NOT NULL DEFAULT '',
  `voice_path` varchar(255) NOT NULL DEFAULT '',
  `video_path` varchar(500) NOT NULL,
  `record_time` int(11) NOT NULL,
  `upload_voice` varchar(800) NOT NULL,
  `alert_state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_item_attach`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_item_attach` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `field_value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_menus`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `menu_name` varchar(50) NOT NULL DEFAULT '',
  `menu_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `menu_link` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单链接',
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否是内置菜单',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`),
  KEY `menus_index` (`vote_id`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pigcms_voteimg_menus`
--

INSERT INTO `pigcms_voteimg_menus` (`id`, `vote_id`, `token`, `menu_name`, `menu_icon`, `menu_link`, `hide`, `type`) VALUES
(1, 1, 'qgvdkw1439949139', '投票评选', '/tpl/static/voteimg/img/tubiao_01.png', '', 1, 2),
(2, 1, 'qgvdkw1439949139', '活动日期', '/tpl/static/voteimg/img/tubiao_02.png', '', 1, 2),
(3, 1, 'qgvdkw1439949139', '活动介绍', '/tpl/static/voteimg/img/tubiao_03.png', '', 1, 2),
(4, 1, 'qgvdkw1439949139', '我的投票记录', '/tpl/static/voteimg/img/tubiao_04.png', '', 1, 2),
(5, 1, 'qgvdkw1439949139', '我要报名', '/tpl/static/voteimg/img/tubiao_05.png', '', 1, 2),
(6, 2, 'sfrpky1439949951', '投票评选', '/tpl/static/voteimg/img/tubiao_01.png', '', 1, 2),
(7, 2, 'sfrpky1439949951', '活动日期', '/tpl/static/voteimg/img/tubiao_02.png', '', 1, 2),
(8, 2, 'sfrpky1439949951', '活动介绍', '/tpl/static/voteimg/img/tubiao_03.png', '', 1, 2),
(9, 2, 'sfrpky1439949951', '我的投票记录', '/tpl/static/voteimg/img/tubiao_04.png', '', 1, 2),
(10, 2, 'sfrpky1439949951', '我要报名', '/tpl/static/voteimg/img/tubiao_05.png', '', 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `prizegrade` varchar(100) NOT NULL DEFAULT '',
  `prizename` varchar(100) NOT NULL DEFAULT '',
  `prizesponsor` varchar(100) NOT NULL DEFAULT '',
  `sponsorurl` varchar(255) NOT NULL DEFAULT '',
  `prizepic` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `prizenum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_receivelog`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_receivelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mch_billno` char(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `money` float(6,2) DEFAULT NULL,
  `receive_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `vote_time` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `vote_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_sponor`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_sponor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `sponsorname` varchar(100) NOT NULL DEFAULT '',
  `sponsorurl` varchar(255) NOT NULL DEFAULT '',
  `sponsorpic` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_stat`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `stat_name` varchar(100) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`),
  KEY `stat_index` (`vote_id`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_voteimg_stat`
--

INSERT INTO `pigcms_voteimg_stat` (`id`, `vote_id`, `token`, `stat_name`, `count`, `hide`) VALUES
(1, 1, 'qgvdkw1439949139', '参与选手,累计投票,访问量', 0, 1),
(2, 2, 'sfrpky1439949951', '参与选手,累计投票,访问量', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voteimg_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_voteimg_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `item_id` text NOT NULL COMMENT '投票选项',
  `wecha_id` varchar(100) NOT NULL,
  `nick_name` varchar(255) NOT NULL COMMENT '微信昵称',
  `votenum` int(11) NOT NULL COMMENT '已投票数',
  `votenum_day` int(11) NOT NULL COMMENT '今日已投票数',
  `vote_today` text NOT NULL,
  `vote_time` int(11) NOT NULL COMMENT '投票时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `phone` varchar(11) NOT NULL,
  `share_code` varchar(50) NOT NULL DEFAULT '',
  `wecha_pic` varchar(255) NOT NULL DEFAULT '',
  `isrefund` tinyint(1) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `vote_id` (`vote_id`),
  KEY `IDX_WE_TO_VO` (`wecha_id`,`token`,`vote_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_voteimg_users`
--

INSERT INTO `pigcms_voteimg_users` (`user_id`, `vote_id`, `item_id`, `wecha_id`, `nick_name`, `votenum`, `votenum_day`, `vote_today`, `vote_time`, `token`, `phone`, `share_code`, `wecha_pic`, `isrefund`, `client_ip`) VALUES
(1, 2, '', 'oZ4ztvzz3MzdCxwEaN7kXc7RucwA', 'no', 0, 0, '', 1439950756, 'sfrpky1439949951', 'no', '', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote_item`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`),
  KEY `vid_2` (`vid`),
  KEY `vid_3` (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) DEFAULT '',
  `background` varchar(100) DEFAULT '',
  `endbackground` varchar(100) DEFAULT '',
  `isopen` tinyint(1) DEFAULT '1',
  `firstprizename` varchar(50) DEFAULT '',
  `firstprizepic` varchar(100) DEFAULT '',
  `firstprizecount` mediumint(5) DEFAULT '0',
  `secondprizename` varchar(50) DEFAULT '',
  `secondprizecount` mediumint(4) DEFAULT '0',
  `secondprizepic` varchar(150) DEFAULT '',
  `thirdprizename` varchar(50) DEFAULT '',
  `thirdprizepic` varchar(100) DEFAULT '',
  `thirdprizecount` mediumint(4) DEFAULT '0',
  `fourthprizename` varchar(50) DEFAULT '',
  `fourthprizecount` mediumint(4) DEFAULT '0',
  `fourthprizepic` varchar(100) DEFAULT '',
  `fifthprizename` varchar(50) DEFAULT '',
  `fifthprizecount` mediumint(5) DEFAULT '0',
  `fifthprizepic` varchar(100) DEFAULT '',
  `sixthprizename` varchar(50) DEFAULT '',
  `sixthprizecount` mediumint(4) DEFAULT '0',
  `sixthprizepic` varchar(100) DEFAULT '',
  `keyword` varchar(60) DEFAULT '',
  `qrcode` varchar(100) DEFAULT '',
  `ck_msg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_member`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `truename` varchar(40) NOT NULL,
  `phone` char(11) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  `is_check` tinyint(1) NOT NULL DEFAULT '1',
  `check_time` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_prize_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_supperzzle`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weather`
--

CREATE TABLE IF NOT EXISTS `pigcms_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2502 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_group`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_group_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_scene`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `lottery_type` tinyint(4) NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  `notice` text NOT NULL,
  `red_packet_id` int(10) unsigned NOT NULL,
  `jiugongge_id` int(10) unsigned NOT NULL,
  `zajindan_id` int(10) unsigned NOT NULL,
  `shuiguoji_id` int(10) unsigned NOT NULL,
  `guaguaka_id` int(10) unsigned NOT NULL,
  `dazhuanpan_id` int(10) unsigned NOT NULL,
  `shake_background` varchar(200) NOT NULL,
  `signin_background` varchar(200) NOT NULL,
  `lottery_background` varchar(200) NOT NULL,
  `guajiang_background` varchar(200) NOT NULL,
  `hongbao_background` varchar(200) NOT NULL,
  `luckyfruit_background` varchar(200) NOT NULL,
  `vote_background` varchar(200) NOT NULL,
  `goldenegg_background` varchar(200) NOT NULL,
  `wall_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shake_keyword` varchar(200) NOT NULL,
  `lottery_keyword` varchar(200) NOT NULL,
  `guajiang_keyword` varchar(200) NOT NULL,
  `jiugongge_keyword` varchar(200) NOT NULL,
  `hongbao_keyword` varchar(200) NOT NULL,
  `luckyfruit_keyword` varchar(200) NOT NULL,
  `vote_keyword` varchar(200) NOT NULL,
  `goldenegg_keyword` varchar(200) NOT NULL,
  `ddp_is_sex` int(11) NOT NULL DEFAULT '1',
  `jiugongge_background` varchar(200) NOT NULL,
  `supperzzle_background` varchar(200) NOT NULL,
  `prize_background` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wecha_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wecht_grout`
--

CREATE TABLE IF NOT EXISTS `pigcms_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户组表，非本站用户级表';

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wedding`
--

CREATE TABLE IF NOT EXISTS `pigcms_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wedding_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wehcat_member_enddate`
--

CREATE TABLE IF NOT EXISTS `pigcms_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `openid_2` (`openid`),
  KEY `openid_3` (`openid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- 转存表中的数据 `pigcms_wehcat_member_enddate`
--

INSERT INTO `pigcms_wehcat_member_enddate` (`id`, `openid`, `enddate`, `joinUpDate`, `uid`, `token`) VALUES
(65, 'oZ4ztvzz3MzdCxwEaN7kXc7RucwA', 1439950734, 0, 0, 'sfrpky1439949951'),
(66, 'onmH-t2yQuO6yO2xtYYLYyg-4yUc', 1439950761, 0, 0, 'vjotae1439949952'),
(67, 'oysiouJIq6H7lVjuGPEU7bPssWAc', 1439956644, 0, 0, 'hbokpr1439956537'),
(68, 'oysiouL9g5pAtr6QqwPLNeWrNLkQ', 1439956804, 0, 0, 'hbokpr1439956537'),
(69, 'oysiouG9YBR6OA9AxzrOFsYrnPPU', 1439956921, 0, 0, 'hbokpr1439956537'),
(70, 'oysiouOz9aadGoJyWMroROGNt8Ko', 1439957401, 0, 0, 'hbokpr1439956537'),
(71, 'oysiouBPJXCXg5f_GFhjfRm18D1w', 1439957188, 0, 0, 'hbokpr1439956537'),
(72, 'oysiouGavO0mzFOR5mh9e4o-gvT4', 1439957389, 0, 0, 'hbokpr1439956537'),
(73, 'oysiouAIUwKWWAAjLD01_OrfIrMs', 1439957510, 0, 0, 'hbokpr1439956537'),
(74, 'oysiouI6JBE1qq1STysUSXv09xew', 1439957560, 0, 0, 'hbokpr1439956537');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weixin_account`
--

CREATE TABLE IF NOT EXISTS `pigcms_weixin_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `appId` char(45) NOT NULL,
  `appSecret` char(45) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `encodingAesKey` varchar(70) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL COMMENT '1开放平台公众号服务，2其他',
  `date_time` char(15) DEFAULT NULL,
  `component_verify_ticket` varchar(100) DEFAULT NULL,
  `component_access_token` varchar(150) NOT NULL,
  `token_expires` char(15) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `pre_auth_code` varchar(200) NOT NULL,
  `pre_code_expires` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信第三方' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weixin_bill`
--

CREATE TABLE IF NOT EXISTS `pigcms_weixin_bill` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `third_id` varchar(64) NOT NULL COMMENT '第三方支付id',
  `plat_type` tinyint(1) unsigned NOT NULL COMMENT '微信支付到账号来源（0：当前的微信号，1：系统平台的账号，2：自己公司的其他账号）',
  `appid` varchar(64) NOT NULL COMMENT '支付到账号的appid',
  `mchid` varchar(64) NOT NULL COMMENT '支付到账号的商户ID',
  PRIMARY KEY (`pigcms_id`),
  KEY `time` (`time`),
  KEY `orderid` (`orderid`,`from`),
  KEY `third_id` (`third_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weixin_pay`
--

CREATE TABLE IF NOT EXISTS `pigcms_weixin_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(40) NOT NULL,
  `appsecret` varchar(200) NOT NULL,
  `merchant_id` varchar(20) NOT NULL,
  `key` varchar(200) NOT NULL,
  `system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL,
  `apiclient_cert` varchar(255) NOT NULL,
  `apiclient_key` varchar(255) NOT NULL,
  `rootca` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weixin_region`
--

CREATE TABLE IF NOT EXISTS `pigcms_weixin_region` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=482 ;

--
-- 转存表中的数据 `pigcms_weixin_region`
--

INSERT INTO `pigcms_weixin_region` (`id`, `province`, `city`) VALUES
(1, '四川', '凉山'),
(2, '四川', '资阳'),
(3, '四川', '成都'),
(4, '四川', '自贡'),
(5, '四川', '泸州'),
(6, '四川', '攀枝花'),
(7, '四川', '绵阳'),
(8, '四川', '德阳'),
(9, '四川', '遂宁'),
(10, '四川', '广元'),
(11, '四川', '乐山'),
(12, '四川', '内江'),
(13, '四川', '南充'),
(14, '四川', '宜宾'),
(15, '四川', '眉山'),
(16, '四川', '达州'),
(17, '四川', '广安'),
(18, '四川', '巴中'),
(19, '四川', '雅安'),
(20, '四川', '甘孜'),
(21, '四川', '阿坝'),
(22, '重庆', '酉阳'),
(23, '重庆', '彭水'),
(24, '重庆', '合川'),
(25, '重庆', '永川'),
(26, '重庆', '江津'),
(27, '重庆', '南川'),
(28, '重庆', '铜梁'),
(29, '重庆', '大足'),
(30, '重庆', '荣昌'),
(31, '重庆', '璧山'),
(32, '重庆', '长寿'),
(33, '重庆', '綦江'),
(34, '重庆', '潼南'),
(35, '重庆', '梁平'),
(36, '重庆', '城口'),
(37, '重庆', '石柱'),
(38, '重庆', '秀山'),
(39, '重庆', '万州'),
(40, '重庆', '渝中'),
(41, '重庆', '涪陵'),
(42, '重庆', '江北'),
(43, '重庆', '大渡口'),
(44, '重庆', '九龙坡'),
(45, '重庆', '沙坪坝'),
(46, '重庆', '北碚'),
(47, '重庆', '南岸'),
(48, '重庆', '黔江'),
(49, '重庆', '巫溪'),
(50, '重庆', '双桥'),
(51, '重庆', '万盛'),
(52, '重庆', '巴南'),
(53, '重庆', '渝北'),
(54, '重庆', '忠县'),
(55, '重庆', '武隆'),
(56, '重庆', '垫江'),
(57, '重庆', '丰都'),
(58, '重庆', '巫山'),
(59, '重庆', '奉节'),
(60, '重庆', '云阳'),
(61, '重庆', '开县'),
(62, '陕西', '商洛'),
(63, '陕西', '西安'),
(64, '陕西', '宝鸡'),
(65, '陕西', '铜川'),
(66, '陕西', '渭南'),
(67, '陕西', '咸阳'),
(68, '陕西', '汉中'),
(69, '陕西', '延安'),
(70, '陕西', '安康'),
(71, '陕西', '榆林'),
(72, '甘肃', '定西'),
(73, '甘肃', '庆阳'),
(74, '甘肃', '陇南'),
(75, '甘肃', '甘南'),
(76, '甘肃', '临夏'),
(77, '甘肃', '兰州'),
(78, '甘肃', '金昌'),
(79, '甘肃', '嘉峪关'),
(80, '甘肃', '天水'),
(81, '甘肃', '白银'),
(82, '甘肃', '张掖'),
(83, '甘肃', '武威'),
(84, '甘肃', '酒泉'),
(85, '甘肃', '平凉'),
(86, '青海', '海南'),
(87, '青海', '果洛'),
(88, '青海', '玉树'),
(89, '青海', '海东'),
(90, '青海', '海北'),
(91, '青海', '黄南'),
(92, '青海', '海西'),
(93, '青海', '西宁'),
(94, '宁夏', '银川'),
(95, '宁夏', '吴忠'),
(96, '宁夏', '石嘴山'),
(97, '宁夏', '中卫'),
(98, '宁夏', '固原'),
(99, '云南', '红河'),
(100, '云南', '文山'),
(101, '云南', '楚雄'),
(102, '云南', '怒江'),
(103, '云南', '德宏'),
(104, '云南', '西双版纳'),
(105, '云南', '大理'),
(106, '云南', '迪庆'),
(107, '云南', '昆明'),
(108, '云南', '曲靖'),
(109, '云南', '保山'),
(110, '云南', '玉溪'),
(111, '云南', '丽江'),
(112, '云南', '昭通'),
(113, '云南', '临沧'),
(114, '云南', '普洱'),
(115, '澳门', 'None'),
(116, '贵州', '毕节'),
(117, '贵州', '黔东南'),
(118, '贵州', '黔南'),
(119, '贵州', '铜仁'),
(120, '贵州', '黔西南'),
(121, '贵州', '贵阳'),
(122, '贵州', '遵义'),
(123, '贵州', '六盘水'),
(124, '贵州', '安顺'),
(125, '香港', 'None'),
(126, '辽宁', '盘锦'),
(127, '辽宁', '辽阳'),
(128, '辽宁', '朝阳'),
(129, '辽宁', '铁岭'),
(130, '辽宁', '葫芦岛'),
(131, '辽宁', '沈阳'),
(132, '辽宁', '鞍山'),
(133, '辽宁', '大连'),
(134, '辽宁', '本溪'),
(135, '辽宁', '抚顺'),
(136, '辽宁', '锦州'),
(137, '辽宁', '丹东'),
(138, '辽宁', '阜新'),
(139, '辽宁', '营口'),
(140, '吉林', '延边'),
(141, '吉林', '长春'),
(142, '吉林', '四平'),
(143, '吉林', '吉林'),
(144, '吉林', '通化'),
(145, '吉林', '辽源'),
(146, '吉林', '松原'),
(147, '吉林', '白山'),
(148, '吉林', '白城'),
(149, '黑龙江', '黑河'),
(150, '黑龙江', '牡丹江'),
(151, '黑龙江', '绥化'),
(152, '黑龙江', '哈尔滨'),
(153, '黑龙江', '大兴安岭'),
(154, '黑龙江', '鸡西'),
(155, '黑龙江', '齐齐哈尔'),
(156, '黑龙江', '双鸭山'),
(157, '黑龙江', '鹤岗'),
(158, '黑龙江', '伊春'),
(159, '黑龙江', '大庆'),
(160, '黑龙江', '七台河'),
(161, '黑龙江', '佳木斯'),
(162, '海南', '乐东'),
(163, '海南', '昌江'),
(164, '海南', '白沙'),
(165, '海南', '西沙'),
(166, '海南', '琼中'),
(167, '海南', '保亭'),
(168, '海南', '陵水'),
(169, '海南', '中沙'),
(170, '海南', '南沙'),
(171, '海南', '海口'),
(172, '海南', '三亚'),
(173, '海南', '五指山'),
(174, '海南', '儋州'),
(175, '海南', '琼海'),
(176, '海南', '文昌'),
(177, '海南', '东方'),
(178, '海南', '万宁'),
(179, '海南', '定安'),
(180, '海南', '屯昌'),
(181, '海南', '澄迈'),
(182, '海南', '临高'),
(183, '广东', '揭阳'),
(184, '广东', '中山'),
(185, '广东', '广州'),
(186, '广东', '深圳'),
(187, '广东', '韶关'),
(188, '广东', '汕头'),
(189, '广东', '珠海'),
(190, '广东', '江门'),
(191, '广东', '佛山'),
(192, '广东', '茂名'),
(193, '广东', '湛江'),
(194, '广东', '惠州'),
(195, '广东', '肇庆'),
(196, '广东', '汕尾'),
(197, '广东', '梅州'),
(198, '广东', '阳江'),
(199, '广东', '河源'),
(200, '广东', '东莞'),
(201, '广东', '清远'),
(202, '广东', '潮州'),
(203, '广东', '云浮'),
(204, '广西', '贺州'),
(205, '广西', '百色'),
(206, '广西', '来宾'),
(207, '广西', '河池'),
(208, '广西', '崇左'),
(209, '广西', '南宁'),
(210, '广西', '桂林'),
(211, '广西', '柳州'),
(212, '广西', '北海'),
(213, '广西', '梧州'),
(214, '广西', '钦州'),
(215, '广西', '防城港'),
(216, '广西', '玉林'),
(217, '广西', '贵港'),
(218, '湖北', '黄冈'),
(219, '湖北', '荆州'),
(220, '湖北', '随州'),
(221, '湖北', '咸宁'),
(222, '湖北', '神农架'),
(223, '湖北', '恩施'),
(224, '湖北', '武汉'),
(225, '湖北', '十堰'),
(226, '湖北', '黄石'),
(227, '湖北', '宜昌'),
(228, '湖北', '鄂州'),
(229, '湖北', '襄樊'),
(230, '湖北', '孝感'),
(231, '湖北', '荆门'),
(232, '湖北', '潜江'),
(233, '湖北', '仙桃'),
(234, '湖北', '天门'),
(235, '湖南', '永州'),
(236, '湖南', '郴州'),
(237, '湖南', '娄底'),
(238, '湖南', '怀化'),
(239, '湖南', '湘西'),
(240, '湖南', '长沙'),
(241, '湖南', '湘潭'),
(242, '湖南', '株洲'),
(243, '湖南', '邵阳'),
(244, '湖南', '衡阳'),
(245, '湖南', '常德'),
(246, '湖南', '岳阳'),
(247, '湖南', '益阳'),
(248, '湖南', '张家界'),
(249, '河南', '漯河'),
(250, '河南', '许昌'),
(251, '河南', '南阳'),
(252, '河南', '三门峡'),
(253, '河南', '信阳'),
(254, '河南', '商丘'),
(255, '河南', '驻马店'),
(256, '河南', '周口'),
(257, '河南', '济源'),
(258, '河南', '郑州'),
(259, '河南', '洛阳'),
(260, '河南', '开封'),
(261, '河南', '安阳'),
(262, '河南', '平顶山'),
(263, '河南', '新乡'),
(264, '河南', '鹤壁'),
(265, '河南', '濮阳'),
(266, '河南', '焦作'),
(267, '台湾', '屏东县'),
(268, '台湾', '澎湖县'),
(269, '台湾', '台东县'),
(270, '台湾', '花莲县'),
(271, '台湾', '台北市'),
(272, '台湾', '基隆市'),
(273, '台湾', '高雄市'),
(274, '台湾', '台南市'),
(275, '台湾', '台中市'),
(276, '台湾', '嘉义市'),
(277, '台湾', '新竹市'),
(278, '台湾', '宜兰县'),
(279, '台湾', '台北县'),
(280, '台湾', '新竹县'),
(281, '台湾', '桃园县'),
(282, '台湾', '台中县'),
(283, '台湾', '苗栗县'),
(284, '台湾', '南投县'),
(285, '台湾', '彰化县'),
(286, '台湾', '嘉义县'),
(287, '台湾', '云林县'),
(288, '台湾', '高雄县'),
(289, '台湾', '台南县'),
(290, '北京', '房山'),
(291, '北京', '大兴'),
(292, '北京', '顺义'),
(293, '北京', '通州'),
(294, '北京', '昌平'),
(295, '北京', '密云'),
(296, '北京', '平谷'),
(297, '北京', '延庆'),
(298, '北京', '东城'),
(299, '北京', '怀柔'),
(300, '北京', '崇文'),
(301, '北京', '西城'),
(302, '北京', '朝阳'),
(303, '北京', '宣武'),
(304, '北京', '石景山'),
(305, '北京', '丰台'),
(306, '北京', '门头沟'),
(307, '北京', '海淀'),
(308, '河北', '衡水'),
(309, '河北', '廊坊'),
(310, '河北', '石家庄'),
(311, '河北', '秦皇岛'),
(312, '河北', '唐山'),
(313, '河北', '邢台'),
(314, '河北', '邯郸'),
(315, '河北', '张家口'),
(316, '河北', '保定'),
(317, '河北', '沧州'),
(318, '河北', '承德'),
(319, '天津', '西青'),
(320, '天津', '东丽'),
(321, '天津', '北辰'),
(322, '天津', '津南'),
(323, '天津', '宁河'),
(324, '天津', '武清'),
(325, '天津', '静海'),
(326, '天津', '宝坻'),
(327, '天津', '和平'),
(328, '天津', '河西'),
(329, '天津', '河东'),
(330, '天津', '河北'),
(331, '天津', '南开'),
(332, '天津', '塘沽'),
(333, '天津', '红桥'),
(334, '天津', '大港'),
(335, '天津', '汉沽'),
(336, '天津', '蓟县'),
(337, '内蒙古', '锡林郭勒'),
(338, '内蒙古', '兴安'),
(339, '内蒙古', '阿拉善'),
(340, '内蒙古', '呼和浩特'),
(341, '内蒙古', '乌海'),
(342, '内蒙古', '包头'),
(343, '内蒙古', '通辽'),
(344, '内蒙古', '赤峰'),
(345, '内蒙古', '呼伦贝尔'),
(346, '内蒙古', '鄂尔多斯'),
(347, '内蒙古', '乌兰察布'),
(348, '内蒙古', '巴彦淖尔'),
(349, '山西', '吕梁'),
(350, '山西', '临汾'),
(351, '山西', '太原'),
(352, '山西', '阳泉'),
(353, '山西', '大同'),
(354, '山西', '晋城'),
(355, '山西', '长治'),
(356, '山西', '晋中'),
(357, '山西', '朔州'),
(358, '山西', '忻州'),
(359, '山西', '运城'),
(360, '浙江', '丽水'),
(361, '浙江', '台州'),
(362, '浙江', '杭州'),
(363, '浙江', '温州'),
(364, '浙江', '宁波'),
(365, '浙江', '湖州'),
(366, '浙江', '嘉兴'),
(367, '浙江', '金华'),
(368, '浙江', '绍兴'),
(369, '浙江', '舟山'),
(370, '浙江', '衢州'),
(371, '江苏', '镇江'),
(372, '江苏', '扬州'),
(373, '江苏', '宿迁'),
(374, '江苏', '泰州'),
(375, '江苏', '南京'),
(376, '江苏', '徐州'),
(377, '江苏', '无锡'),
(378, '江苏', '苏州'),
(379, '江苏', '常州'),
(380, '江苏', '连云港'),
(381, '江苏', '南通'),
(382, '江苏', '盐城'),
(383, '江苏', '淮安'),
(384, '上海', '杨浦'),
(385, '上海', '南汇'),
(386, '上海', '宝山'),
(387, '上海', '闵行'),
(388, '上海', '浦东新'),
(389, '上海', '嘉定'),
(390, '上海', '松江'),
(391, '上海', '金山'),
(392, '上海', '崇明'),
(393, '上海', '奉贤'),
(394, '上海', '青浦'),
(395, '上海', '黄浦'),
(396, '上海', '卢湾'),
(397, '上海', '长宁'),
(398, '上海', '徐汇'),
(399, '上海', '普陀'),
(400, '上海', '静安'),
(401, '上海', '虹口'),
(402, '上海', '闸北'),
(403, '山东', '日照'),
(404, '山东', '威海'),
(405, '山东', '临沂'),
(406, '山东', '莱芜'),
(407, '山东', '聊城'),
(408, '山东', '德州'),
(409, '山东', '菏泽'),
(410, '山东', '滨州'),
(411, '山东', '济南'),
(412, '山东', '淄博'),
(413, '山东', '青岛'),
(414, '山东', '东营'),
(415, '山东', '枣庄'),
(416, '山东', '潍坊'),
(417, '山东', '烟台'),
(418, '山东', '泰安'),
(419, '山东', '济宁'),
(420, '江西', '上饶'),
(421, '江西', '抚州'),
(422, '江西', '南昌'),
(423, '江西', '萍乡'),
(424, '江西', '景德镇'),
(425, '江西', '新余'),
(426, '江西', '九江'),
(427, '江西', '赣州'),
(428, '江西', '鹰潭'),
(429, '江西', '宜春'),
(430, '江西', '吉安'),
(431, '福建', '福州'),
(432, '福建', '莆田'),
(433, '福建', '厦门'),
(434, '福建', '泉州'),
(435, '福建', '三明'),
(436, '福建', '南平'),
(437, '福建', '漳州'),
(438, '福建', '宁德'),
(439, '福建', '龙岩'),
(440, '安徽', '滁州'),
(441, '安徽', '黄山'),
(442, '安徽', '宿州'),
(443, '安徽', '阜阳'),
(444, '安徽', '六安'),
(445, '安徽', '巢湖'),
(446, '安徽', '池州'),
(447, '安徽', '亳州'),
(448, '安徽', '宣城'),
(449, '安徽', '合肥'),
(450, '安徽', '蚌埠'),
(451, '安徽', '芜湖'),
(452, '安徽', '马鞍山'),
(453, '安徽', '淮南'),
(454, '安徽', '铜陵'),
(455, '安徽', '淮北'),
(456, '安徽', '安庆'),
(457, '西藏', '那曲'),
(458, '西藏', '阿里'),
(459, '西藏', '林芝'),
(460, '西藏', '昌都'),
(461, '西藏', '山南'),
(462, '西藏', '日喀则'),
(463, '西藏', '拉萨'),
(464, '新疆', '博尔塔拉'),
(465, '新疆', '吐鲁番'),
(466, '新疆', '哈密'),
(467, '新疆', '昌吉'),
(468, '新疆', '和田'),
(469, '新疆', '喀什'),
(470, '新疆', '克孜勒苏'),
(471, '新疆', '巴音郭楞'),
(472, '新疆', '阿克苏'),
(473, '新疆', '伊犁'),
(474, '新疆', '塔城'),
(475, '新疆', '乌鲁木齐'),
(476, '新疆', '阿勒泰'),
(477, '新疆', '克拉玛依'),
(478, '新疆', '石河子'),
(479, '新疆', '图木舒克'),
(480, '新疆', '阿拉尔'),
(481, '新疆', '五家渠');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wxcert`
--

CREATE TABLE IF NOT EXISTS `pigcms_wxcert` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `apiclient_cert` varchar(255) NOT NULL COMMENT 'apiclient_cert私钥文件',
  `apiclient_key` varchar(255) NOT NULL COMMENT 'apiclient_key公钥文件',
  `rootca` varchar(255) NOT NULL COMMENT '根证书文件',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wxuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `aeskey` varchar(45) NOT NULL DEFAULT '',
  `encode` tinyint(1) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  `oauthinfo` tinyint(1) NOT NULL DEFAULT '1',
  `color_id` int(2) NOT NULL,
  `ifbiz` tinyint(1) DEFAULT '0',
  `fuwuappid` char(20) DEFAULT NULL,
  `share_ticket` varchar(150) NOT NULL,
  `share_dated` char(15) NOT NULL,
  `authorizer_access_token` varchar(200) NOT NULL,
  `authorizer_refresh_token` varchar(200) NOT NULL,
  `authorizer_expires` char(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `web_access_token` varchar(200) NOT NULL COMMENT ' 网页授权token',
  `web_refresh_token` varchar(200) NOT NULL,
  `web_expires` char(10) NOT NULL,
  `wx_coupons` tinyint(4) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `dynamicTmpls` int(11) NOT NULL DEFAULT '0',
  `card_ticket` char(120) NOT NULL,
  `card_expires` char(15) NOT NULL,
  `wx_liaotian` tinyint(4) NOT NULL,
  `sub_notice` varchar(255) DEFAULT NULL,
  `need_phone_notice` varchar(255) DEFAULT NULL,
  `sub_notice_btn` varchar(60) DEFAULT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `hurl` char(255) NOT NULL,
  `merchant_id` varchar(20) NOT NULL,
  `type_of_media_or_gov` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是认证的政府与媒体类订阅号；0否；1是',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信公共帐号' AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `pigcms_wxuser`
--

INSERT INTO `pigcms_wxuser` (`id`, `routerid`, `agentid`, `uid`, `wxname`, `winxintype`, `aeskey`, `encode`, `appid`, `appsecret`, `wxid`, `weixin`, `headerpic`, `token`, `pigsecret`, `province`, `city`, `qq`, `wxfans`, `typeid`, `typename`, `tongji`, `allcardnum`, `cardisok`, `yetcardnum`, `totalcardnum`, `createtime`, `tpltypeid`, `updatetime`, `tpltypename`, `tpllistid`, `tpllistname`, `tplcontentid`, `tplcontentname`, `transfer_customer_service`, `openphotoprint`, `freephotocount`, `oauth`, `oauthinfo`, `color_id`, `ifbiz`, `fuwuappid`, `share_ticket`, `share_dated`, `authorizer_access_token`, `authorizer_refresh_token`, `authorizer_expires`, `type`, `web_access_token`, `web_refresh_token`, `web_expires`, `wx_coupons`, `qr`, `dynamicTmpls`, `card_ticket`, `card_expires`, `wx_liaotian`, `sub_notice`, `need_phone_notice`, `sub_notice_btn`, `is_syn`, `hurl`, `merchant_id`, `type_of_media_or_gov`) VALUES
(10, '', 0, 9, '12332', 1, 'bAnNJyudbgJyvZDOqpOcyUlYcKcOTBZqEiBRcNMqUfH', 0, '32131233231', '231231eqweqedqd', '3123123123', '12312312321', './tpl/User/default/common/images/portrait.jpg', 'avclov1439948990', '2eeQ42bLLPKBi7jEg9A6', 'p', 'c', '1439948990@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439949002', '1', '1439949002', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'qweqwe23e4', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0),
(11, '', 0, 11, '我爱万色', 1, 'bDInxEPxEtyYTpvfKNZjotgDtugSpimLlgduYPxCwrb', 0, 'wxb91cccc396f27314', '020766fb6537d1de616bdeb346419a7b', 'gh_d2e0e49036ac', 'MLoveWanSe', './tpl/User/default/common/images/portrait.jpg', 'cyvwqd1439949073', 'oSrgbM8erHKQTtkpQacL', 'p', 'c', '1439949073@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439949084', '1', '1439949084', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'http://v.hweiju.com/uploads/a/admin/9/1/8/3/thumb_55bc55abc64e1.jpg', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0),
(12, '', 0, 13, 'sas', 1, 'KaVRXhbpypsJkCeGkjzyAMRnYNqwJGJMcEiTgAuzHxd', 0, 'sas', 'sas', 'sassa', 'sas', './tpl/User/default/common/images/portrait.jpg', 'iztlsr1439949156', '7aqJDQastTry6gSfvQP4', 'p', 'c', '1439949156@yourdomain.com', 0, 8, '', '', 100, 1, 0, 0, '1439949162', '1', '1439949162', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'sasa', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(13, '', 0, 8, '1', 2, 'ivYyLBonYmCaRcQuvMjrvZtNJjkXvHnPDNrNZCneNLq', 0, '1_no', '1', 'gh_423dwjkeww3', '1', './tpl/User/default/common/images/portrait.jpg', 'qgvdkw1439949139', 'lyhDEJEf3jFkl9EG5PEr', 'p', 'c', '1439949139@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439949167', '1', '1439949167', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'http://wd.imakebe.com/tpl/static/attachment/icon/canyin/canyin_red/1.png', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0),
(14, '', 0, 12, '456', 3, 'odcLwHVYOfpSGMntCotjjHBEqJvCcSoCjqnHsrxttaW', 0, '456', '456', '456', '45', './tpl/User/default/common/images/portrait.jpg', 'ascqfk1439949165', '2THLba7bT7Q6QjEwENGg', 'p', 'c', '1439949165@yourdomain.com', 0, 8, '', '', 100, 0, 0, 0, '1439949176', '1', '1439949176', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, '456', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(15, '', 0, 16, '123456', 1, 'txuCBAzfPJnbXeMFURAIfwUyKhLVnfqrifoPwxMSUrP', 0, '123456', '123456', '123456', '123456', './tpl/User/default/common/images/portrait.jpg', 'ddqhjy1439950027', '5MNMr9iE3H7gkbHlDQt4', 'p', 'c', '1439950027@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439950034', '1', '1439950034', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, '123456', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(16, '', 0, 14, '多彩CMS', 3, 'jjpjvIMsKvowPvDlWEDmvCiVCCMiBnTjGdvOadPSGcp', 0, 'wx40f8bd02925fac0a', '42494702bbb2cde933a30c3d33990b44', 'gh_6c9d67f82922', 'colorCMS', './tpl/User/default/common/images/portrait.jpg', 'vjotae1439949952', 'DQAPDoBtntkG6TmkdM5H', '安徽', '芜湖', '1439949952@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439950067', '1', '1439950507', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 1, 'http://wd.imakebe.com/uploads/a/admin/d/d/9/4/thumb_55d3e4ea93538.png', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(17, '', 0, 15, '合肥生活站', 2, 'DRicqEKNdmzDaNQxfPiilyckUiAlJwNwIYpcKHfniEb', 0, 'wx44474f9a772ef6a0', '4ee814ef7812f4899f62e58975f933e4', 'gh_b8a1e4ca7a5f', 'hefeinet', './tpl/User/default/common/images/portrait.jpg', 'sfrpky1439949951', 'SQLbLldz6lTnoDeujbuG', 'p', 'c', '1439949951@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439950068', '1', '1439950068', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'http://wd.imakebe.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(18, '', 0, 17, '1', 1, 'RhygMeTsUvatknmowdtuvkNyxyNRzlNcufYljhkWpvo', 0, '1', '1', '1', '11', './tpl/User/default/common/images/portrait.jpg', 'bznhbf1439950816', 'k5GErAy9fmvTn8dzB99J', 'p', 'c', '1439950816@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439950830', '1', '1439950830', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, '1', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0),
(19, '', 0, 18, '伴游联盟', 2, 'tNwrldvjAcfOOLbBHccFsGkddJnYWbsIgkjszAMhsUc', 0, 'wx4bcb6ada322a25e9', '98a43d09672f88ab89a00393aff6f1bd', 'gh_1d319dbe83bf', 'ClubMB', './tpl/User/default/common/images/portrait.jpg', 'cedgjq1439951515', 'H7DivgnMpHgiP4cpJsp6', 'p', 'c', '1439951515@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439952332', '1', '1439952332', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'http://weixin.auctionec.com/uploads/a/admin/a/4/f/c/thumb_55a858b35dea4.jpg', 0, '', '', 0, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(20, '', 0, 26, 'asdf', 1, 'jUnVBTTgfmpiLfRpGhSVxkOqniOjWPfiLzztQqBVYGq', 0, 'asdf', 'asdf', 'asdf', 'asdf', './tpl/User/default/common/images/portrait.jpg', 'hbokpr1439956537', 'u6PAHFx3rdoJ8diH1auu', 'p', 'c', '1439956537@yourdomain.com', 0, 8, '', '', 100, 1, 19, 19, '1439956543', '1', '1439956543', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'asdf', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0),
(21, '', 0, 27, '重庆生鲜速递', 3, 'R7eoI0NfUsHKXSjjKrwj8zG930Z3jKzHxO0QWWtfaZe', 0, 'wx3ed5fa33cd4b9ee0', '3ab5d444ad97e335205142c31193381b', 'gh_98365301bdba', 'cqshengxian', './tpl/User/default/common/images/portrait.jpg', 'cavegu1439957052', '57dpLNeKgeMjTaAoz66P', '重庆', '涪陵', '1439957052@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439957188', '1', '1439957318', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 1, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 1, 'http://wd.imakebe.com/uploads/a/admin/2/4/c/1/thumb_55d400adace26.jpg', 0, '', '', 1, '您好，您还没有权限参加活动。', '您好，需要您先填写个人信息才能参加活动。', '立即获得权限', 0, '', '', 0),
(22, '', 0, 28, '粉丝猎手', 1, 'JdeWXZRWPnKrOAkNTOKavvZdlZvYgIekZJuAjuoPjsR', 0, 'wx3082edd350120ec3', '3c30720a29fa0aa301b8139c989053d5 ', 'gh_65fe56806baf', 'fensi99', './tpl/User/default/common/images/portrait.jpg', 'uxtals1439962913', 'fEdmdK9cfibAMtCa65SE', 'p', 'c', '1439962913@yourdomain.com', 0, 8, '', '', 0, 0, 0, 0, '1439963038', '1', '1439963038', 'ty_index', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1, 0, 0, NULL, '', '', '', '', '', 0, '', '', '', 0, 'http://wd.imakebe.com/tpl/static/attachment/background/view/3.jpg', 0, '', '', 0, NULL, NULL, NULL, 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yeepay_tmp`
--

CREATE TABLE IF NOT EXISTS `pigcms_yeepay_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `from` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `platform` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='易宝支付需要用的临时表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yousetdiscount`
--

CREATE TABLE IF NOT EXISTS `pigcms_yousetdiscount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wxpic` varchar(200) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxinfo` text,
  `startdate` int(11) unsigned NOT NULL,
  `enddate` int(11) unsigned NOT NULL,
  `discount_endtime` int(10) unsigned NOT NULL,
  `playtime` int(11) NOT NULL DEFAULT '10',
  `info` text,
  `bg1` varchar(200) NOT NULL,
  `bg2` varchar(200) NOT NULL,
  `bg3` varchar(200) NOT NULL,
  `my_count` int(10) unsigned NOT NULL DEFAULT '1',
  `friends_count` int(10) unsigned NOT NULL DEFAULT '1',
  `discount_type` int(10) unsigned NOT NULL DEFAULT '1',
  `money_start` double NOT NULL,
  `money_end` double NOT NULL,
  `discount_start` double NOT NULL,
  `discount_end` double NOT NULL,
  `discount_min` double NOT NULL DEFAULT '0',
  `is_sms` int(10) unsigned NOT NULL DEFAULT '0',
  `is_attention` int(10) unsigned NOT NULL DEFAULT '0',
  `is_reg` int(10) unsigned NOT NULL DEFAULT '0',
  `is_open` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL,
  `fxtitle` varchar(500) DEFAULT NULL,
  `fxinfo` varchar(500) DEFAULT NULL,
  `fxtitle2` varchar(500) DEFAULT NULL,
  `fxinfo2` varchar(500) DEFAULT NULL,
  `gamepic1` varchar(200) NOT NULL,
  `gamepic2` varchar(200) NOT NULL,
  `fxpic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `name` (`name`),
  KEY `is_open` (`is_open`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yousetdiscount_direction`
--

CREATE TABLE IF NOT EXISTS `pigcms_yousetdiscount_direction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `yid` int(10) unsigned NOT NULL,
  `at_least` double NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yousetdiscount_helps`
--

CREATE TABLE IF NOT EXISTS `pigcms_yousetdiscount_helps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `yid` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `help` varchar(100) NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `playcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yousetdiscount_helps_data`
--

CREATE TABLE IF NOT EXISTS `pigcms_yousetdiscount_helps_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `yid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `discount` double NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yousetdiscount_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_yousetdiscount_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `yid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `share_key` varchar(100) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yundabao`
--

CREATE TABLE IF NOT EXISTS `pigcms_yundabao` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `AppId` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `AppName` varchar(100) DEFAULT NULL,
  `AppNote` text,
  `HideTop` int(11) DEFAULT NULL,
  `IconType` int(11) DEFAULT NULL,
  `IconName` varchar(200) DEFAULT NULL,
  `IconName_url` varchar(200) DEFAULT NULL,
  `LogoName` varchar(100) DEFAULT NULL,
  `LogoName_url` varchar(200) DEFAULT NULL,
  `BgColor` int(11) DEFAULT NULL,
  `SplashType` int(11) DEFAULT NULL,
  `SplashName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_yundabao_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_yundabao_users` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  `AccessToken` varchar(200) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_zhida`
--

CREATE TABLE IF NOT EXISTS `pigcms_zhida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_system_info`
--

CREATE TABLE IF NOT EXISTS `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
