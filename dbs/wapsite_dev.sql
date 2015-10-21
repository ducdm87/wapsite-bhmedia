-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2015 at 10:54 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wapsite_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `cdate` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `showpath` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `link_original` varchar(255) NOT NULL,
  `redirect` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `title`, `alias`, `scope`, `cdate`, `mdate`, `ordering`, `lft`, `rgt`, `type`, `description`, `metakey`, `metadesc`, `showpath`, `status`, `feature`, `link_original`, `redirect`) VALUES
(31, 'Tin tức-Làm đẹp', 'tin-tuc-lam-dep', '', '2015-08-26 08:14:25', '2015-10-21 10:35:04', 0, 0, 0, 0, 'Tin tức-Làm đẹp', 'Tin tức-Làm đẹp', 'Tin tức-Làm đẹp', 0, 1, 0, '', 0),
(30, 'Tin tức-Sao việt', 'tin-tuc-sao-viet', '', '2015-08-26 08:14:12', '2015-08-26 08:14:12', 0, 0, 0, 0, 'Tin tức-Sao việt', 'Tin tức-Sao việt', 'Tin tức-Sao việt', 0, 1, 0, '', 0),
(29, 'Vui nhộn', 'vui-nhon', '', '2015-08-25 03:54:49', '2015-08-25 03:54:49', 0, 0, 0, 1, 'Vui nhộn', 'Vui nhộn', 'Vui nhộn', 0, 1, 0, '', 0),
(28, 'Phim Con Heo', 'phim-con-heo', '', '2015-08-25 03:54:21', '2015-08-25 03:54:21', 0, 0, 0, 1, 'Phim con heo', 'Phim con heo', 'Phim con heo', 0, 1, 0, '', 0),
(27, 'Hài Hước', 'hai-huoc', '', '2015-08-25 03:51:41', '2015-08-25 03:51:41', 0, 0, 0, 1, 'ádasd', 'ádas', 'ádasdas', 0, 1, 0, '', 0),
(32, 'Thể Thao', 'the-thao', '', '2015-08-27 11:16:04', '2015-10-21 10:52:41', 0, 0, 0, 1, 'thể thao', '', '', 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_episode`
--

CREATE TABLE IF NOT EXISTS `tbl_episode` (
  `episode_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) NOT NULL,
  `episode_name` varchar(255) DEFAULT NULL,
  `episode_collection` int(5) DEFAULT NULL,
  `episode_url` text,
  `episode_local` tinyint(1) DEFAULT NULL,
  `episode_type` tinyint(1) DEFAULT NULL,
  `episode_broken` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_episode`
--

INSERT INTO `tbl_episode` (`episode_id`, `film_id`, `episode_name`, `episode_collection`, `episode_url`, `episode_local`, `episode_type`, `episode_broken`) VALUES
(8, 36, NULL, NULL, '/uploads/videos/26/08/2015/Video%20ng%E1%BA%AFn%20nh%E1%BA%A5t%20Youtube%20-%20Shortest%20Video%20on%20Youtube.mp4', NULL, NULL, NULL),
(9, 37, NULL, NULL, '/uploads/videos/27/08/2015/Video%20ng%E1%BA%AFn%20nh%E1%BA%A5t%20Youtube%20-%20Shortest%20Video%20on%20Youtube.mp4', NULL, NULL, NULL),
(10, 38, NULL, NULL, '/uploads/videos/27/08/2015/Video%20ng%E1%BA%AFn%20nh%E1%BA%A5t%20Youtube%20-%20Shortest%20Video%20on%20Youtube(1).mp4', NULL, NULL, NULL),
(11, 39, NULL, NULL, '/uploads/videos/27/08/2015/Video%20ng%E1%BA%AFn%20nh%E1%BA%A5t%20Youtube%20-%20Shortest%20Video%20on%20Youtube.mp4', NULL, NULL, NULL),
(12, 40, NULL, NULL, '/uploads/videos/27/08/2015/picasa-211.mp4', NULL, NULL, NULL),
(13, 41, NULL, NULL, 'https://www.youtube.com/watch?v=y7HYmoTjbbk', NULL, NULL, NULL),
(14, 42, NULL, NULL, 'https://www.youtube.com/watch?v=ZMSZ6K_-0WE', NULL, NULL, NULL),
(15, 43, NULL, NULL, 'https://www.youtube.com/watch?v=53njd1Sb94I', NULL, NULL, NULL),
(16, 44, NULL, NULL, 'https://www.youtube.com/watch?v=qDVRQWPuRwQ', NULL, NULL, NULL),
(17, 45, NULL, NULL, 'https://www.youtube.com/watch?v=53njd1Sb94I', NULL, NULL, NULL),
(18, 48, NULL, NULL, 'https://www.youtube.com/watch?v=2H5G9GUBmQc', NULL, NULL, NULL),
(19, 49, NULL, NULL, 'https://www.youtube.com/watch?v=IPamFBQjsMQ', NULL, NULL, NULL),
(20, 50, NULL, NULL, 'https://www.youtube.com/watch?v=auC-WQ82KX8', NULL, NULL, NULL),
(21, 51, NULL, NULL, 'https://www.youtube.com/watch?v=2H5G9GUBmQc', NULL, NULL, NULL),
(22, 52, NULL, NULL, 'https://www.youtube.com/watch?v=fUvaOQVZpUs', NULL, NULL, NULL),
(23, 53, NULL, NULL, 'https://www.youtube.com/watch?v=mkDGykqPuyY', NULL, NULL, NULL),
(24, 54, NULL, NULL, 'https://www.youtube.com/watch?v=PzaHbfmK1mo', NULL, NULL, NULL),
(25, 56, NULL, NULL, 'https://www.youtube.com/watch?v=xe0Eq_YLH2U', NULL, NULL, NULL),
(26, 57, NULL, NULL, 'https://www.youtube.com/watch?v=-4SYb45IGe4', NULL, NULL, NULL),
(27, 58, NULL, NULL, 'https://www.youtube.com/watch?v=dKFlsDQJY7c', NULL, NULL, NULL),
(28, 59, NULL, NULL, 'https://www.youtube.com/watch?v=0nbFnjpqMxg', NULL, NULL, NULL),
(29, 60, NULL, NULL, 'https://www.youtube.com/watch?v=7cOQcsIk_BY', NULL, NULL, NULL),
(30, 61, NULL, NULL, 'https://www.youtube.com/watch?v=b0J45CIiDgc', NULL, NULL, NULL),
(31, 62, NULL, NULL, 'https://www.youtube.com/watch?v=sNQSDclWFYo', NULL, NULL, NULL),
(32, 63, NULL, NULL, 'https://www.youtube.com/watch?v=LFGpCRyuPHQ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extensions`
--

CREATE TABLE IF NOT EXISTS `tbl_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `version` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `creationDate` varchar(32) NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(32) NOT NULL COMMENT 'module, plugin',
  `folder` varchar(128) NOT NULL,
  `client` varchar(32) NOT NULL COMMENT 'site, backend',
  `showtitle` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `params` text NOT NULL,
  `cdate` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  `position` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tbl_extensions`
--

INSERT INTO `tbl_extensions` (`id`, `title`, `alias`, `author`, `version`, `description`, `creationDate`, `ordering`, `type`, `folder`, `client`, `showtitle`, `status`, `params`, `cdate`, `mdate`, `position`) VALUES
(67, '', '', '', '', '', 'January 1', 3, 'module', '', '1', 0, 1, '{"jahdskjashdka":"gshdagshdka","bhjabsdh aksd":"\\u00e1hdahdasdas","date":""}', '2015-08-19 05:53:17', '2015-08-19 05:53:17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_films`
--

CREATE TABLE IF NOT EXISTS `tbl_films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `info` text,
  `duration` varchar(255) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `film_year` varchar(255) DEFAULT NULL,
  `film_area` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `cdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `tbl_films`
--

INSERT INTO `tbl_films` (`id`, `title`, `alias`, `image`, `actor`, `info`, `duration`, `viewed`, `category_id`, `director`, `film_year`, `film_area`, `rating`, `cdate`, `mdate`, `status`, `feature`, `type`) VALUES
(36, 'Answer for "Get month name from Date using JavaScript"', 'answer-for-get-month-name-from-date-using-javascript', '/uploads/images/26/08/2015/1440302798-1439290851-trang-diem-dv1%5B1%5D.jpg', 'Asian', 'sf 34r34r3r34r34', '3', 3, 28, NULL, '323324', '4353453', NULL, '2015-08-26 11:58:29', '2015-08-26 11:58:29', 1, 0, '1'),
(37, 'Ke O Mien Xa - Dan Nguyen', 'ke-o-mien-xa-dan-nguyen', '/uploads/images/26/08/2015/1440468146-1440467967-1%5B1%5D.jpg', 'Asian', 'lá jhasj dbahbd hakgdskhadgsasgi đáiátdá', '3', 1, 28, NULL, '323324', '4353453', NULL, '2015-08-27 03:43:59', '2015-08-27 03:43:59', 1, 0, '1'),
(38, 'Rừng Lá Thấp', 'rung-la-thap', NULL, 'Japan', 'bhagdkahgsdasjdasdasd', '3:55', NULL, 29, NULL, '323324', '4353453', NULL, '2015-08-27 04:51:06', '2015-08-27 04:51:06', 1, 0, '1'),
(39, 'Hai con nai', 'hai-con-nai', '/uploads/images/27/08/2015/vn.png', 'áldasdas', 'uaosy gauygskygakyudgayusd7o6atd7 62thasd gaygsdkjashd', '3', 8, 29, NULL, '323324', '4353453', NULL, '2015-08-27 06:08:22', '2015-08-27 06:08:22', 1, 0, '1'),
(40, 'Troubleshooting', 'troubleshooting', '/uploads/images/27/08/2015/Big_Buck_Bunny_Trailer_480x270.png', 'Asian', 'A great all rounder. The net tab can disable cache and allow you to review server response and MIME types easily', '3', NULL, 27, NULL, '323324', '4353453', NULL, '2015-08-27 08:52:50', '2015-08-27 08:52:50', 1, 0, '1'),
(41, 'Video Hài Hước - Top 10 Pha Bóng Đá Hài Hước Khó Đỡ Nhất', 'video-hai-huoc-top-10-pha-bong-da-hai-huoc-kho-do-nhat', '/uploads/images/28/08/2015/dong0467-1440726511_490x294.jpg', '', 'khonf co mo ta nao', '', 1, 32, NULL, '', '', NULL, '2015-08-28 05:39:42', '2015-08-28 05:39:42', 1, 1, '2'),
(42, '10 pha bóng hài hước nhất thế giới bóng đá', '10-pha-bong-hai-huoc-nhat-the-gioi-bong-da', '', '', '10 pha bóng hài hước nhất thế giới bóng đá', '', 3, 29, NULL, '', '', NULL, '2015-08-28 04:32:41', '2015-08-28 04:32:41', 1, 0, '1'),
(43, 'KĨ THUẬT CỦA HAI SIÊU SAO BÓNG ĐÁ HÀNG ĐẦU THẾ GIỚI', 'ki-thuat-cua-hai-sieu-sao-bong-da-hang-dau-the-gioi', '/uploads/images/28/08/2015/CNbhcx6WIAA3Hrd-5422-1440716111.png', '', 'KĨ THUẬT CỦA HAI SIÊU SAO BÓNG ĐÁ HÀNG ĐẦU THẾ GIỚI', '', 1, 32, NULL, '', '', NULL, '2015-08-28 05:46:10', '2015-08-28 05:46:10', 1, 1, '2'),
(44, 'Messi và những pha đi bóng thần thánh', 'messi-va-nhung-pha-di-bong-than-thanh', '', '', 'Messi và những pha đi bóng thần thánh', '', NULL, 32, NULL, '', '', NULL, '2015-08-28 04:47:49', '2015-08-28 04:47:49', 1, 0, '2'),
(45, 'Ronaldinho & Messi ● THE MOVIE ● Two Legends - One Story || HD', 'ronaldinho-messi-the-movie-two-legends-one-story-hd', '/uploads/images/28/08/2015/tag-reuters-1-5897-1440697725-7716-8563-1440716111.jpg', '', 'Ronaldinho & Messi ● THE MOVIE ● Two Legends - One Story || HD', '', 4, 32, NULL, '', '', NULL, '2015-08-28 05:48:09', '2015-08-28 05:48:09', 1, 1, '2'),
(46, 'Hài miền Bắc: Căn bệnh kỳ lạ, Quang Thắng, Công Lý', 'hai-mien-bac-can-benh-ky-la-quang-thang-cong-ly', '', 'VN', 'asvdhg kaygadskyu gidasid đâs', '14:55', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:38:28', '2015-08-31 03:38:28', 1, 0, '3'),
(47, 'Hài miền Bắc: Rắn nổi, Chiến Thắng, Công Lý', 'hai-mien-bac-ran-noi-chien-thang-cong-ly', '', '', 'Hài miền Bắc: Rắn nổi, Chiến Thắng, Công Lý', '14:41', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:40:55', '2015-08-31 03:40:55', 1, 0, '3'),
(48, 'Hài miền Bắc: Đổi đời, Công Lý, Anh Tuấn, Thanh Tú', 'hai-mien-bac-doi-doi-cong-ly-anh-tuan-thanh-tu', '', '', 'Hài miền Bắc: Đổi đời, Công Lý, Anh Tuấn, Thanh Tú', '14:55', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:44:43', '2015-08-31 03:44:43', 1, 0, '3'),
(49, 'Hài miền Bắc: Đàn bà thời nay', 'hai-mien-bac-dan-ba-thoi-nay', '', 'Japan', 'Hài miền Bắc: Đàn bà thời nay', '9:28', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:49:09', '2015-08-31 03:49:09', 1, 0, '3'),
(50, 'Hài miền Bắc: MC làng, Anh Quân, Quốc Trị', 'hai-mien-bac-mc-lang-anh-quan-quoc-tri', '', '', 'Hài miền Bắc: MC làng, Anh Quân, Quốc Trị', '', 1, 27, NULL, '', '', NULL, '2015-08-31 03:50:42', '2015-08-31 03:50:42', 1, 0, '3'),
(51, 'Hài miền Bắc: Đổi đời, Công Lý, Anh Tuấn, Thanh Tú', 'hai-mien-bac-doi-doi-cong-ly-anh-tuan-thanh-tu', '', '', 'Hài miền Bắc: Đổi đời, Công Lý, Anh Tuấn, Thanh Tú', '14:55', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:51:26', '2015-08-31 03:51:26', 1, 0, '1'),
(52, '[Phim Hài] Bình Luận Bóng Đá | Chiến Thắng , Quang Tèo Mai Thỏ', 'phim-hai-binh-luan-bong-da-chien-thang-quang-teo-mai-tho', '', '', '[Phim Hài] Bình Luận Bóng Đá | Chiến Thắng , Quang Tèo Mai Thỏ', '9:56', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:52:22', '2015-08-31 03:52:22', 1, 0, '3'),
(53, 'Phim Hài Ngắn Hay Nhất | Tuyển Dụng Gái Mát Xa', 'phim-hai-ngan-hay-nhat-tuyen-dung-gai-mat-xa', '', '', 'Phim Hài Ngắn Hay Nhất | Tuyển Dụng Gái Mát Xa', '23:55', 2, 29, NULL, '', '', NULL, '2015-08-31 03:55:58', '2015-08-31 03:55:58', 1, 0, '3'),
(54, '[Phim Hài] Các Em Ấy Khỏe Lắm - Mai Thỏ, Quang Tèo, Trung Hiếu', 'phim-hai-cac-em-ay-khoe-lam-mai-tho-quang-teo-trung-hieu', '', '', '[Phim Hài] Các Em Ấy Khỏe Lắm - Mai Thỏ, Quang Tèo, Trung Hiếu', '', NULL, 29, NULL, '', '', NULL, '2015-08-31 03:57:39', '2015-08-31 03:57:39', 1, 0, '3'),
(55, 'Môn thể thao bựa nhất trong lịch sử =))', 'mon-the-thao-bua-nhat-trong-lich-su', '', '', 'Môn thể thao bựa nhất trong lịch sử =))', '', NULL, 32, NULL, '', '', NULL, '2015-08-31 04:01:45', '2015-08-31 04:01:45', 1, 1, '2'),
(56, '[Thể Thao 24h] - Thụy Điển 2 - 3 Bồ Đào Nha Tổng 2 - 4, Lượt về play off vòng loại World Cup 2014', 'the-thao-24h-thuy-dien-2-3-bo-dao-nha-tong-2-4-luot-ve-play-off-vong-loai-world-cup-2014', '', '', '[Thể Thao 24h] - Thụy Điển 2 - 3 Bồ Đào Nha Tổng 2 - 4, Lượt về play off vòng loại World Cup 2014', '2:27', 1, 32, NULL, '', '', NULL, '2015-08-31 04:03:22', '2015-08-31 04:03:22', 1, 1, '1'),
(57, 'Tin điện ảnh| Trương Quỳnh Anh được Tim tặng xế hộp sau khi làm lành', 'tin-dien-anh-truong-quynh-anh-duoc-tim-tang-xe-hop-sau-khi-lam-lanh', '', '', 'Tin điện ảnh| Trương Quỳnh Anh được Tim tặng xế hộp sau khi làm lành', '1:22', NULL, 29, NULL, '', '', NULL, '2015-08-31 04:08:12', '2015-08-31 04:08:12', 1, 0, '4'),
(58, 'Tin hot nhất trong ngày - Trương Quỳnh Anh khoe chân dài sexy, thân mật bên Phạm Văn Mách', 'tin-hot-nhat-trong-ngay-truong-quynh-anh-khoe-chan-dai-sexy-than-mat-ben-pham-van-mach', '', '', 'Tin hot nhất trong ngày - Trương Quỳnh Anh khoe chân dài sexy, thân mật bên Phạm Văn Mách', '1:40', NULL, 29, NULL, '', '', NULL, '2015-08-31 04:08:56', '2015-08-31 04:08:56', 1, 0, '4'),
(59, 'Những cặp đôi sao Việt tái hợp sau ồn ào đổ vỡ', 'nhung-cap-doi-sao-viet-tai-hop-sau-on-ao-do-vo', '', '', 'Những cặp đôi sao Việt tái hợp sau ồn ào đổ vỡ', '1:20', NULL, 29, NULL, '', '', NULL, '2015-08-31 04:09:42', '2015-08-31 04:09:42', 1, 0, '4'),
(60, 'Thúy Nga 115 Paris by night 116 - HAY NHẤT 2015', 'thuy-nga-115-paris-by-night-116-hay-nhat-2015', '', '', 'Thúy Nga 115 Paris by night 116 - HAY NHẤT 2015', '', 1, 29, NULL, '', '', NULL, '2015-08-31 04:10:07', '2015-08-31 04:10:07', 1, 0, '4'),
(61, 'Asia 77 - Liên Khúc Nhạc Vàng Hay Nhất | Dòng Nhạc Anh Bằng - Lam Phương - Disc 1', 'asia-77-lien-khuc-nhac-vang-hay-nhat-dong-nhac-anh-bang-lam-phuong-disc-1', '', '', 'Asia 77 - Liên Khúc Nhạc Vàng Hay Nhất | Dòng Nhạc Anh Bằng - Lam Phương - Disc 1', '1:33:35', 1, 29, NULL, '', '', NULL, '2015-08-31 04:10:51', '2015-08-31 04:10:51', 1, 0, '4'),
(62, 'Quy trình Kỹ xảo điện ảnh trong các phim nổi tiếng', 'quy-trinh-ky-xao-dien-anh-trong-cac-phim-noi-tieng', '', '', 'Quy trình Kỹ xảo điện ảnh trong các phim nổi tiếng', '3:17', 2, 29, NULL, '', '', NULL, '2015-08-31 04:12:51', '2015-08-31 04:12:51', 1, 0, '4'),
(63, 'Một khi anh đã "cứng" thì phải "cứng" như thế này :3', 'mot-khi-anh-da-cung-thi-phai-cung-nhu-the-nay-3', '', '', 'Một khi anh đã "cứng" thì phải "cứng" như thế này :3', '0:24', NULL, 29, NULL, '', '', NULL, '2015-08-31 04:13:36', '2015-08-31 04:13:36', 1, 0, '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE IF NOT EXISTS `tbl_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `fid` bigint(20) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`like_id`, `uid`, `fid`, `value`) VALUES
(4, 20, 37, 26),
(5, 20, 36, 1),
(6, 0, 39, 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE IF NOT EXISTS `tbl_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` varchar(255) NOT NULL,
  `fulltext` text NOT NULL,
  `catid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `created` datetime NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `cdate` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `link_original` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `alias`, `introtext`, `fulltext`, `catid`, `uid`, `thumbnail`, `ordering`, `created`, `metakey`, `metadesc`, `cdate`, `mdate`, `status`, `link_original`) VALUES
(7, 'Thủ thuật trang điểm đẹp tự nhiên cho nàng bận rộn', 'thu-thuat-trang-diem-dep-tu-nhien-cho-nang-ban-ron', 'Trang điểm là biện pháp làm đẹp nhanh nhất, nó dường như có sức mạnh ma thuật có thể biến một vẻ đẹp bình thường trở thành một lộng lẫy. Vì lẽ đó mà đối với người phụ nữ thì trang điểm là một phần không thể thiếu trong cuộc sốn', '<p>\r\n	Tại Cung Quần Ngựa H&agrave; Nội, chương tr&igrave;nh nghệ thuật &quot;Kẻ nổi loạn truyền thống&quot; với sự tham dự của hơn 1.000 nh&agrave; tạo mẫu t&oacute;c đ&atilde; mang đến nhiều tiết mục, bộ sưu tập t&oacute;c độc đ&aacute;o c&aacute; t&iacute;nh. Giải V&agrave;ng Color Zoom&#39;15 của hai hạng mục dự thi s&aacute;ng tạo v&agrave; t&agrave;i năng trẻ đ&atilde; được trao cho nh&agrave; tạo mẫu t&oacute;c Nguyễn Huyền Linh - Salon Linh Hair v&agrave; nh&agrave; tạo mẫu t&oacute;c Lương Xu&acirc;n Vinh - Salon H&agrave; T&oacute;c.</p>\r\n<table border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://c1.f9.img.vnecdn.net/2015/08/27/27-8-20152-9715-1440665074.png" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					&Ocirc;ng Trần Anh Tuấn gi&aacute;m đốc SunStar Việt Nam -&nbsp;nh&agrave; ph&acirc;n phối của Goldwell tại Việt Nam trao giải V&agrave;ng Quốc gia Color Zoom&nbsp;hạng mục s&aacute;ng tạo cho nh&agrave; tạo mẫu t&oacute;c&nbsp;Nguyễn Huyền Linh - Salon Linh Hair.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	Chia sẻ về t&aacute;c phẩm dự thi của m&igrave;nh, nh&agrave; tạo mẫu t&oacute;c Nguyễn Huyền Linh cho biết: &rdquo;&Yacute; tưởng của t&ocirc;i đến từ những điều giản dị trong cuộc sống đời thường. Cảm x&uacute;c an l&agrave;nh, th&aacute;nh thiện đến từ thiết kế nội thất, c&aacute;ch phối s&aacute;ng của h&agrave;ng trăm h&agrave;ng ngh&igrave;n mảng m&agrave;u lấp l&aacute;nh nơi m&aacute;i v&ograve;m của nh&agrave; thờ hay những hoa văn tu&acirc;n thủ theo h&igrave;nh thức Roman v&agrave; G&ocirc; - T&iacute;ch, t&ocirc;n nghi&ecirc;m v&agrave; trang nh&atilde;. H&igrave;nh tượng về sự nổi loạn v&agrave; th&aacute;ch thức của những thanh thiếu ni&ecirc;n trong tiểu thuyết &quot;Bắt trẻ đồng xanh&quot; của Holden Caulfield. Tất cả tạo cảm hứng trong t&ocirc;i để x&acirc;y dựng &yacute; tưởng cho b&agrave;i dự thi của m&igrave;nh&rdquo;.</p>\r\n<table border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://c1.f9.img.vnecdn.net/2015/08/27/27-8-20158-6168-1440665074.png" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					Nh&agrave; tạo mẫu t&oacute;c Lương Xu&acirc;n Vinh - Salon H&agrave; T&oacute;c - giải V&agrave;ng Quốc gia Color Zoom hạng mục t&agrave;i năng trẻ tr&igrave;nh diễn c&ugrave;ng t&aacute;c phẩm dự thi của m&igrave;nh.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&ldquo;May mắn của t&ocirc;i l&agrave; c&oacute; sự động vi&ecirc;n v&agrave; chỉ bảo của người thầy cũng l&agrave; qu&aacute;n qu&acirc;n giải Quốc Gia Color Zoom&#39;14 - nh&agrave; tạo mẫu t&oacute;c Nguyễn Hải H&agrave;. T&aacute;c phẩm của t&ocirc;i muốn thể hiện phong c&aacute;ch thanh lịch thời thượng, đẳng cấp nhưng cũng đầy g&oacute;c cạnh&quot;, nh&agrave; tạo mẫu t&oacute;c Lương Xu&acirc;n Vinh - giải V&agrave;ng hạng mục t&agrave;i năng chia sẻ.</p>\r\n<table border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://c1.f9.img.vnecdn.net/2015/08/27/27-8-201514-925443799-4069-1440665075.png" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					Gi&acirc;y ph&uacute;t hồi hộp chờ c&ocirc;ng bố giải V&agrave;ng Quốc gia Color Zoom.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	Trong th&aacute;ng 10 tới đ&acirc;y, hai nh&agrave; tạo mẫu t&oacute;c sẽ đại diện cho c&aacute;c nh&agrave; tạo mẫu t&oacute;c Việt Nam tham dự cuộc thi to&agrave;n cầu tại Las Vegas, Mỹ.</p>\r\n<div>\r\n	<div>\r\n		<div>\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 31, 0, '/uploads/images/26/08/2015/1440302798-1439290851-trang-diem-dv1%5B1%5D.jpg', 0, '2015-09-07 23:11:00', 'Thủ thuật trang điểm đẹp tự nhiên cho nàng bận rộn', 'Thủ thuật trang điểm đẹp tự nhiên cho nàng bận rộn', '2015-09-07 23:11:00', '2015-09-07 23:11:00', 1, 'http://www.24h.com.vn/lam-dep/bo-tui-5-meo-hay-giup-doi-moi-xinh-nhu-nu-hoa-hong-c145a729727.html'),
(8, 'Bỏ túi 5 mẹo hay giúp đôi môi xinh như nụ hoa hồng', 'bo-tui-5-meo-hay-giup-doi-moi-xinh-nhu-nu-hoa-hong', 'Hiện nay trên thị trường có nhiều loại kem dưỡng ẩm có thể giúp chị em khắc phục được tình trạng làn môi khô ráp. Nhưng để đôi môi có được sắc hồng, mịn màng một cách tự nhiên thì việc chăm sóc môi với những nguyên liệu tự nhiên là sự lựa chọn vừa rẻ lại ', '\r\n	Hiện nay trÃªn thị trường cÃ³ nhiều loại kem dưỡng ẩm cÃ³ thể giÃºp chị em khắc phục được tÃ¬nh trạngÂ lÃ n mÃ´i khÃ´ rÃ¡p. Nhưng để đÃ´i mÃ´i cÃ³ được sắc hồng, mịn mÃ ng một cÃ¡ch tự nhiÃªn thÃ¬ việcÂ chăm sÃ³c mÃ´i với những nguyÃªn liệu tự nhiÃªn lÃ  sự lựa chọn vừa rẻ lại tiện lợi\r\n\r\n	Â \r\n\r\n	Phụ nữÂ hấp dẫn với vẻ đẹp tự nhiÃªn\r\n\r\n	Nếu bạn lÃ  người yÃªu chuộng cÃ¡c biện phÃ¡p tự nhiÃªn, hÃ£y tham khảo 5 mẹo chăm sÃ³c lÃ n mÃ´i dưới đÃ¢y.\r\n\r\n	1. Tẩy tế bÃ o chết bởi chanh, đường\r\n\r\n	Chanh cÃ³ nhiều axit tự nhiÃªn giÃºp loại bỏ cÃ¡c hắc tố trong da mÃ´i. Đường với kết cấu hạt nhỏ li ti đảm nhiệm chức năng lÃ m bong cÃ¡c tế bÃ o chết. VÃ¬ vậy, sử dụng hỗn hợp nÃ y để tẩy tế bÃ o chết cÃ³ thể giÃºp cho lÃ n mÃ´i sÃ¡ng hồng tự nhiÃªn.\r\n\r\n	Đổ 1 thÃ¬a đường ra chÃ©n rồi bổ sung thÃªm 1 thÃ¬a nước cốt chanh vÃ  trộn đều. Sử dụng hỗn hợp nÃ y chÃ  xÃ¡t lÃªn đÃ´i mÃ´i khoảng 10 sau đÃ³ rửa sạch với nước ấm.\r\n\r\n	Â \r\n\r\n	Chanh với đường nÃ¢u tạo thÃ nh kem tẩy tế bÃ o chết tuyệt diệu\r\n\r\n	2. MÃ¡t xa mÃ´i với mật ong vÃ  chanh\r\n\r\n	Mật ong lÃ  thÃ nh phần tự nhiÃªn cÃ³ tÃ¡c dụng dưỡng ẩm vÃ  khÃ¡ng khuẩn tuyệt vời. Trong khi chanh lÃ  thÃ nh phần tẩy trắng giÃºp đÃ´i mÃ´i sÃ¡ng hồng.\r\n\r\n	Cắt đÃ´i quả chanh sau đÃ³ rÃ³t vÃ i giọt mật ong lÃªn chanh rồi mÃ¡t xa nhẹ nhÃ ng lÃªn đÃ´i mÃ´i, để chÃºng trong 15 phÃºt sau đÃ³ rửa sạch với nước ấm.\r\n\r\n	Â \r\n\r\n	Chanh vÃ  mật ong giÃºp đÃ´i mÃ´i vừa sÃ¡ng hồng, vừa mềm mịn\r\n\r\n	3. Nước củ cải đường\r\n\r\n	ĐÃ¢y lÃ  loại nước tự nhiÃªn cÃ³ dồi dÃ o cÃ¡c hợp chất chống oxy hÃ³a vÃ  loại bỏ cÃ¡c hắc tố da giÃºp lÃ n da mÃ´i trở nÃªn mềm mịn vÃ  sÃ¡ng hơn.\r\n\r\n	Sử dụng mÃ¡y Ã©p trÃ¡i cÃ¢y để Ã©p của cải đường lấy nước ra cốc, sau đÃ³ sử dụng nước nÃ y mÃ¡t xa lÃªn đÃ´i mÃ´i. Sau 15 phÃºt rửa sạch với nước ấm.\r\n\r\n	Â \r\n\r\n	Nước Ã©p củ cải đường lÃ m sÃ¡ng bờ mÃ´i\r\n\r\n	4. Dưỡng ẩm với dầu hạnh nhÃ¢n vÃ  dầu dừa\r\n\r\n	ĐÃ¢y lÃ  2 loại tinh dầu đặc hiệu giÃºp lÃ n da mềm mịn. Với đÃ´i mÃ´i chÃºng cung cấp nhiều thÃ nh phần khÃ¡ng khuẩn vÃ  độ ẩm giÃºp đÃ´i mÃ´i cÃ³ được vẻ đẹp mịn mÃ ng một cÃ¡ch tự nhiÃªn.\r\n\r\n	Trộn 1 thÃ¬a dầu hạnh nhÃ¢n cÃ¹ng với 1 thÃ¬a dầu dừa đÃ£ được đun hÃ³a lỏng trong một cÃ¡i chÃ©n con. Sử dụng ngÃ³n tay chấm hỗn hợp dầu vÃ  mÃ¡t xa lÃªn đÃ´i mÃ´i thay thế cÃ³ một thỏi son dưỡng mÃ´i hÃ ng ngÃ y.\r\n\r\n	Â \r\n\r\n	Dầu dừa vÃ  dầu hạnh nhận tạo độ ẩm tuyệt vời cho đÃ´i mÃ´i\r\n\r\n	5. Vitamin E\r\n\r\n	Vitamin E lÃ  thần dược giÃºp kÃ­ch thÃ­ch sự phÃ¡t triển của cÃ¡c tế bÃ o da. Do đÃ³, biết cÃ¡ch bổ sung vitamin E cho cơ thể hoặc mÃ¡t xa dầu vitamin E cũng cÃ³ thể đem lại vẻ đẹp tự nhiÃªn, mịn mÃ ng cho đÃ´i mÃ´i.', 31, 0, '/uploads/images/26/08/2015/1440383969-1440242501-moi-dv1%5B1%5D.jpg', 0, '2015-08-26 08:26:30', 'Bỏ túi 5 mẹo hay giúp đôi môi xinh như nụ hoa hồng', 'Bỏ túi 5 mẹo hay giúp đôi môi xinh như nụ hoa hồng', '2015-08-26 08:26:30', '2015-08-26 08:26:30', 1, 'http://www.24h.com.vn/lam-dep-c145.html'),
(5, 'Nuôi da trắng mịn bằng trứng gà', 'nuoi-da-trang-min-bang-trung-ga', 'Trứng là một loại thực phẩm chứa nhiều dinh dưỡng có lợi cho sức khỏe. Không những thế, với những thành phần như vitamin A, B6, B12, D và E… trứng còn giúp chị em chúng mình chăm sóc hiệu quả đối với vẻ đẹp của làn da.', '\r\n	Trứng lÃ  một loại thực phẩm chứa nhiều dinh dưỡng cÃ³ lợi cho sức khỏe. KhÃ´ng những thế, với những thÃ nh phần như vitamin A, B6, B12, D vÃ  Eâ¦ trứng cÃ²n giÃºp chị em chÃºng mÃ¬nh chăm sÃ³c hiệu quả đối với vẻ đẹp của lÃ n da.\r\n\r\n	Điều đÃ¡ng nÃ³i ở đÃ¢y lÃ  với mỗi loại da như da nhờn, da khÃ´, giÃ£n chÃ¢n lÃ´ngâ¦ cần phải hiểu vÃ  sử dụng trứng một cÃ¡ch hợp lÃ½ thÃ¬ mới đem đến hiệu quả thiết thực.\r\n\r\n	Â \r\n\r\n	LÃ n da sÃ¡ng, mịn lÃ  thÃ nh phần khÃ´ng thể thiếu trong vẻ đẹp của chị em phụ nữ\r\n\r\n	Â \r\n\r\n	Trứng lÃ  nguyÃªn liệu chăm sÃ³c lÃ n da đẹp toÃ n diện\r\n\r\n	HÃ£y cÃ¹ng chÃºng tÃ´i học cÃ¡ch sử dụng một số biện phÃ¡p từ mặt nạ trứng đối với cÃ¡c loại da.\r\n\r\n	1. Chăm sÃ³c da dầu\r\n\r\n	Da nhờn xuất hiện khi quÃ¡ trÃ¬nh sản xuất tuyến nhờn dưới da diễn ra ngoÃ i vÃ²ng kiểm soÃ¡t. Vấn đề cÃ¡c chất nhờn xuất hiện quÃ¡ mức trÃªn bề mặt lÃ n da lÃ m ảnh hưởng đến kết quả trang điểm cũng như sức khỏe tế bÃ o da.\r\n\r\n	Với hiện tượng đÃ³, bạn chỉ nÃªn sử dụng lÃ²ng trắng trứng vÃ¬ tÃ­nh năng hÃºt dầu tồn tại cơ bản ở thÃ nh phần nÃ y.\r\n\r\n	CÃ¡ch sử dụng\r\n\r\n	Đập vỡ một quả trứng, sau đÃ³ khÃ©o lÃ©o tÃ¡ch rời loại bỏ lÃ²ng đỏ, chỉ sử dụng lÃ²ng trắng trứng. Vắt thÃªm vÃ i giọt nước cốt chanh vÃ  trộn đều hỗn hợp. DÃ¹ng một bÃ n chải để xoa hỗn hợp lÃªn khuÃ´n mặt vÃ  thư giÃ£n khoảng 15 phÃºt đủ cho mặt nạ khÃ´. Cuối cÃ¹ng lÃ m sạch mọi thứ bằng khăn vÃ  nước ấm.\r\n\r\n	Â \r\n\r\n	Mặt nạ lÃ²ng trắng trứng kiểm soÃ¡t da dầu\r\n\r\n	2. Chăm sÃ³c da khÃ´\r\n\r\n	TrÃ¡i với da nhờn thÃ¬ da khÃ´ lại lÃ  hiện tượng cÃ¡c tế bÃ o da bị cướp đi độ ẩm khiến chÃºng trở nÃªn khÃ´ rÃ¡p. LÃ n da khÃ´ cũng sẽ lÃ m cho sức khỏe của tế bÃ o bị ảnh hưởng tiÃªu cực, những lớp trang điểm cũng trở nÃªn sần sÃ¹i.\r\n\r\n	Để khắc phục hiện tượng da khÃ´, bạn nÃªn sử dụng lÃ²ng đỏ của trứng. ĐÃ¢y lÃ  bộ phận cung cấp kịp thời độ ẩm vÃ  những dinh dưỡng cần thiết giÃºp tế bÃ o da nhanh chÃ³ng lấy lại sự cÃ¢n bằng.\r\n\r\n	CÃ¡ch sử dụng\r\n\r\n	Đập vỡ trứng rồi tÃ¡ch bỏ lÃ²ng trắng, chỉ để lại lÃ²ng đỏ trong bÃ¡t con. Bổ sung thÃªm 1 thÃ¬a mật ong cÃ¹ng 1 thÃ¬a dầu Ã´ liu vÃ  khuấy đều cho cÃ¡c hỗn hợp hÃ²a lẫn với nhau. Ãp dụng mặt nạ lÃªn khuÃ´n mặt vÃ  thư giÃ£n trong 15 phÃºt rồi rửa sạchÂ  với nước ấm.\r\n\r\n	Â \r\n\r\n	LÃ²ng đỏ trứng với mật ong khắc phục lÃ n da khÃ´\r\n\r\n	3. Chăm sÃ³c da thường\r\n\r\n	Nếu lÃ n da của bạn bÃ¬nh thường, để duy trÃ¬ sự mềm mại thÃ¬ sử dụng mặt nạ trứng để dưỡng da cũng lÃ  biện phÃ¡p đem lại hiệu quả tốt. Sự kết hợp giữa việc tẩy bỏ chất dầu vÃ  dưỡng ẩm của cả hai thÃ nh phần lÃ²ng trắng vÃ  lÃ²ng đỏ của trứng sẽ giÃºp lÃ n da luÃ´n tươi trẻ.\r\n\r\n	CÃ¡ch sử dụng\r\n\r\n	Đập vỡ trứng, tÃ¡ch riÃªng lÃ²ng trắng vÃ  lÃ²ng đỏ vÃ o hai cÃ¡i bÃ¡t sạch. LÃ m sạch lÃ n da, sau đÃ³ trước tiÃªn bạn Ã¡p dụng mặt nạ lÃ²ng trắng trứng lÃªn khuÃ´n mặt chờ 15 phÃºt cho khÃ´. Tiếp tục bạn sử dụng mặt nạ lÃ²ng đỏ trứng lÃªn vÃ  chờ đến khi chÃºng hoÃ n toÃ n khÃ´. Cuối cÃ¹ng rửa sạch với nước ấm.\r\n\r\n	4. Mở lỗ chÃ¢n lÃ´ng\r\n\r\n	Hiện tượng tắc nghẽn lỗ chÃ¢n lÃ´ng lÃ  một trong những nguyÃªn nhÃ¢n khiến cho lÃ n da gặp nhiều vấn để rắc rối. VÃ¬ vậy, mỗi tuần mở rộng lỗ chÃ¢n lÃ´ng đÃª giải thoÃ¡t những chất cặn bÃ£ vÃ  lượng dầu dư thừa lÃ  một bước trong quyÂ trÃ¬nh lÃ m đẹp.\r\n\r\n	CÃ¡ch sử dụng\r\n\r\n	Trước hết, đập vỡ trứng vÃ  chỉ sử dụng lÃ²ng trắng trứng để loại bỏ hết lớp chất dầu trÃªn bề mặt lÃ n da. Bước tiếp theo lÃ  dÃ¹ng một bÃ¡t nước nÃ³ng thực hiện bước xÃ´ng mặt để hơi nÃ³ng lÃ m giÃ£n nở lÃ´ chÃ¢n lÃ´ng. Cuối cÃ¹ng dÃ¹ng khăn mềm để thấm khÃ´ sau đÃ³ rửa lại với nước lạnh để thu hẹp lỗ chÃ¢n lÃ´ng.\r\n\r\n	Â ', 31, 0, '/uploads/images/26/08/2015/1440556303-1440297664-trung-dv5%5B1%5D.jpg', 0, '2015-08-26 08:20:17', 'Nuôi da trắng mịn bằng trứng gà', 'Trứng là một loại thực phẩm chứa nhiều dinh dưỡng có lợi cho sức khỏe. Không những thế, với những thành phần như vitamin A, B6, B12, D và E… trứng còn giúp chị em chúng mình chăm sóc hiệu quả đối với vẻ đẹp của làn da.', '2015-08-26 08:20:17', '2015-08-26 08:20:17', 1, 'http://www.24h.com.vn/lam-dep/nuoi-da-trang-min-bang-trung-ga-c145a730214.html'),
(6, 'Bí quyết gương mặt đẹp như nữ thần của Song Hye-Kyo', 'bi-quyet-guong-mat-dep-nhu-nu-than-cua-song-hye-kyo', 'Không quá khó để nắm được cách trang điểm trong suốt của Song Hye-Kyo.', '\r\n	\r\n		1. LÃ´ng mÃ y\r\n	\r\n		Trước tiÃªn chÃºng ta sẽ dÃ¹ng cọ kẻ lÃ´ng mÃ y tÃ¡n phấn mÃ u nÃ¢u tự nhiÃªn theo khuÃ´n lÃ´ng mÃ y sẵn cÃ³. CÃ¡c bạn chÃº Ã½ tÃ¡n phấn ở phần giữa vÃ  đuÃ´i lÃ´ng mÃ y trước, sau đÃ³ mới dÃ¹ng lượng phấn cÃ²n lại trÃªn cọ để tÃ¡n phần đầu lÃ´ng mÃ y. Vừa tÃ¡n vừa chải xuÃ´i theo chiều lÃ´ng mÃ y. Đối với những vÃ¹ng Ã­t lÃ´ng mÃ y thÃ¬ chÃºng ta cÃ³ thể sử dụng mÃ u phấn đậm hơn. NgoÃ i ra cÃ¡c bạn nÃªn sử dụng mÃ u phấn dÃ¹ng cho lÃ´ng mÃ y gần với mÃ uÂ tÃ³cÂ để đem lại cảm giÃ¡c tự nhiÃªn.\r\n	\r\n		Â \r\n	\r\n		Vẻ đẹp trong ngần của Song Hye-Kyo\r\n	\r\n		2. Bầu mắt\r\n	\r\n		Ở bước nÃ y chÃºng ta sẽ sử dụng đầu ngÃ³n tay để tÃ¡n một lớp phấn mÃ u nÃ¢u tự nhiÃªn thật mỏng lÃªn bầu mắt vÃ  bọng mắt. Nếu như cÃ¡c bạn muốn tạo điểm nhấn hơn thÃ¬ chÃºng ta cÃ³ thể dÃ¹ng mÃ u phấn đậm hơn một chÃºt để tÃ¡n lÃªn phần mÃ­ mắt để tạo ra hiệu ứng bÃ³ng đổ.\r\n	\r\n		3. Viền mắt\r\n	\r\n		Phong cÃ¡chÂ trang điểmÂ trong suốt khÃ´ng cần quÃ¡ nhấn mạnh vÃ o phần eyeliner. ChÃºng ta sẽ chỉ sử dụng eyeliner mÃ u nÃ¢u để kẻ sÃ¡t mÃ­ mắt một đường thật mảnh.\r\n	\r\n		Â \r\n	\r\n		Viền mắt mảnh vÃ  sÃ¡t mÃ­\r\n	\r\n		4. LÃ´ng mi\r\n	\r\n		DÃ¹ng kẹp mi để uốn cong lÃ´ng mi, sau đÃ³ chải mascara để khiến cho đÃ´i mắt long lanh vÃ  quyến rũ hơn.\r\n	\r\n		5. MÃ¡ hồng\r\n	\r\n		Sử dụng phấn mÃ¡ dạng kem vÃ  dÃ¹ng tay để tÃ¡n nhẹ vÃ  từ phần xương gÃ² mÃ¡ lÃªn phÃ­a thÃ¡i dương.\r\n	\r\n		Â \r\n	\r\n		MÃ¡ hồng hÃ o, căng khỏe\r\n	\r\n		6. Son mÃ´i\r\n	\r\n		Việc sử dụng mÃ u son nhẹ nhÃ ng (Natural Lip tint gloss) phÃ¹ hợp với tổng thể khuÃ´n mặt sẽ đem lại hiệu quả tốt hơn so với một tÃ´ng son quÃ¡ nổi bật. CÃ¡c bạn chÃº Ã½ nÃªn dÃ¹ng cọ tÃ¡n son từ trong long mÃ´i ra phÃ­a ngoÃ i.\r\n	\r\n		Â \r\n\r\n\r\n	Â ', 31, 0, '/uploads/images/26/08/2015/1440468146-1440467967-1%5B1%5D.jpg', 0, '2015-08-26 08:22:49', 'Bí quyết gương mặt đẹp như nữ thần của Song Hye-Kyo', 'Không quá khó để nắm được cách trang điểm trong suốt của Song Hye-Kyo.', '2015-08-26 08:22:49', '2015-08-26 08:22:49', 1, 'http://www.24h.com.vn/lam-dep/bi-quyet-guong-mat-dep-nhu-nu-than-cua-song-hye-kyo-c145a729949.html'),
(4, '9x có vòng ba 101 cm gây chú ý tại Hoa hậu Hoàn vũ VN', '9x-co-vong-ba-101-cm-gay-chu-y-tai-hoa-hau-hoan-vu-vn', 'Quỳnh Mai – thí sinh VNTM 2013 có chỉ số hình thể rất nóng bỏng: 88 – 64 – 101.', '\r\n	Một trong những yếu tố đem lại sức nÃ³ng cho Hoa hậu HoÃ n vũ Việt Nam 2015 lÃ  sự gÃ³p mặt của cÃ¡c gương mặt thÃ¢n quen. Trong số đÃ³, NgÃ´ Thị Quỳnh Mai, người đẹp từng dự thi Vietnamâs Next Top Model 2013 vÃ  lÃ  quÃ¡n quÃ¢n cuộc thi TÃ¬m kiếm thần tượng Thời trang F-Idol gÃ¢y chÃº Ã½ với vẻ ngoÃ i khỏe khoắn, nÃ³ng bỏng.\r\n\r\n	Â \r\n\r\n	ThÃ­ sinh Hoa hậu Việt Nam 2015 NgÃ´ Thị Quỳnh Mai\r\n\r\n	NgÃ´ Thị Quỳnh Mai sinh năm 1995, đến từ Trung cấp MÃºa TP.HCM. 9x nÃ y từng học mÃºa 6 năm vÃ  lọt vÃ o top 30 của cuộc thi So you think you can dance. Năm 2013, khi vừa trÃ²n 18 tuổi, cÃ´ tiếp tục để lại nhiều dấu ấn khi gÃ³p mặt tại cuộc thi Vietnamâs Next Top Model.\r\n\r\n	LÃ  một vũ cÃ´ng nÃªn Quỳnh Mai cÃ³ thÃ¢n hÃ¬nh khÃ¡ thể thao với lÃ n da rÃ¡m nắng khỏe khoắn. Quỳnh Mai cao 1m70 vÃ  cÃ³ số đo vÃ²ng 3 ấn tượng: 101 cm (chỉ số hÃ¬nh thể của Quỳnh Mai lÃ  88-64-101). Sau khi rời khỏi Vietnamâs Next Top Model năm 2013, cÃ´ gÃ¡i trẻ hạ quyết tÃ¢m giảm cÃ¢n vÃ  tới nay đÃ£ đạt được mục tiÃªu, giảm 8kg, từ 64 xuống cÃ²n 56kg.\r\n\r\n	Để Ã©p cÃ¢n thÃ nh cÃ´ng, Quỳnh Mai rất chăm chỉ luyện tập cÃ¡c bÃ i thể dục cardio (cÃ¡c bÃ i tập tốt cho nhịp tim như chạy, đạp xeâ¦). CÃ´ khẳng định vẫn ăn uống bÃ¬nh thường vÃ  chỉ giảm bớt khẩu phần xuống một chÃºt. Trước mỗi lần tham gia cÃ¡c buổi chụp hÃ¬nh, Quỳnh Mai sẽ hạn chế ăn những mÃ³n cÃ³ nước để thải bớt nước ra ngoÃ i.\r\n\r\n	Â \r\n\r\n	Quỳnh Mai cÃ³ số đo 3 vÃ²ng ấn tượng: 88 - 64 - 101\r\n\r\n	Đến với Hoa hậu HoÃ n vũ Việt Nam 2015, 9x xinh đẹp cho biết cÃ´ hi vọng sẽ lọt vÃ o top 5 vÃ  cũng khẳng định những kinh nghiệm cÃ³ được tại Vietnamâs Next Top Model đÃ£ giÃºp cÃ´ rất nhiều trong việc rÃ¨n luyện sức Ã©p, sức chịu đựng, kỹ năng catwalk, cÃ¡ch tạo dÃ¡ng, ăn mặc vÃ  khÃ´ng sợ hÃ£i trước đÃ¡m đÃ´ng.\r\n\r\n	DÃ¹ cÃ²n Ã­t tuổi mÃ  đÃ£ thử sức ở một đấu trường lớn với nhiều âđÃ n chịâ từng âchinh chiếnâ tại cÃ¡c cuộc thi hoa hậu, Quỳnh Mai vẫn khẳng định:Â âTÃ´i hoÃ n toÃ n khÃ´ng thấy Ã¡p lực bởi bản thÃ¢n tÃ´i cũng lÃ  một đối thủ đÃ¡ng gờm. TÃ´i luÃ´n giữ vững tinh thần, đối thủ cÃ ng nặng, tÃ´i cÃ ng thÃ­ch hơn!â\r\n\r\n	Nữ vũ cÃ´ng 9x cũng tự tin về hÃ¬nh thể của mÃ¬nh bởi theo cÃ´Â âmỗi người cÃ³ một cÃ¡ch nhÃ¬n khÃ¡c nhau về vẻ đẹp. CÃ³ người thÃ­ch mÃ¬nh dÃ¢y, cÃ³ người thÃ­ch khỏe khoắn.âÂ Quỳnh Mai khẳng định cÃ´ đại diện cho tuÃ½p thể thao vÃ  khÃ´ng hề tự ti nếu cÃ³ ai đÃ³ nÃ³i mÃ¬nh bÃ©o.Â âVÃ³c dÃ¡ng thể thao, khỏe khoắn cũng cho tÃ´i sức khỏe để hoÃ n thÃ nh thật tốt cÃ¡c nhiệm vụ đặt ra trong cuộc thi!â\r\n\r\n	Â \r\n\r\n	Â \r\n\r\n	Â \r\n\r\n	Quỳnh Mai tại cuộc thi Vietnam''s Next Top Model 2013\r\n\r\n	Â \r\n\r\n	Â \r\n\r\n	Người đẹp 9x lÃ  một vũ cÃ´ng\r\n\r\n	Â \r\n\r\n	Â \r\n\r\n	Sau VNTM, cÃ´ đÃ£ kiÃªn trÃ¬ tập gym để giảm cÃ¢n vÃ  cÃ³ một cơ thể săn chắc\r\n\r\n	Â \r\n\r\n	Quỳnh Mai rất tự tin bước vÃ o vÃ²ng bÃ¡n kết Hoa hậu HoÃ n vũ Việt Nam 2015', 31, 0, '/uploads/images/26/08/2015/1440562941-1440562471-1378353774-ts%5B1%5D.jpg', 0, '2015-08-26 11:06:26', '9x có vòng ba 101 cm gây chú ý tại Hoa hậu Hoàn vũ VN', 'Một trong những yếu tố đem lại sức nóng cho Hoa hậu Hoàn vũ Việt Nam 2015 là sự góp mặt của các gương mặt thân quen. Trong số đó, Ngô Thị Quỳnh Mai, người đẹp từng dự thi Vietnam’s Next Top Model 2013 và là quán quân cuộc thi Tìm kiếm thần tượng Thời tran', '2015-08-26 11:06:26', '2015-08-26 11:06:26', 1, 'http://www.24h.com.vn/lam-dep/9x-co-vong-ba-101-cm-gay-chu-y-tai-hoa-hau-hoan-vu-vn-c145a730251.html'),
(9, 'Phó tổng tham mưu trưởng: ''Chọn cách tiết kiệm khi tổ chức diễu binh''', 'pho-tong-tham-muu-truong-chon-cach-tiet-kiem-khi-to-chuc-dieu-binh', '''Quân đội có nhiều loại vũ khí hiện đại, nếu có điều kiện phô diễn để đồng bào được tận mắt nhìn thấy là rất tốt. Tuy nhiên, nhà nước chọn cách tiết kiệm'', Phó tổng tham mưu trưởng Quân đội nhân dân Việt Nam Võ Văn Tuấn nói.', '&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;Ban chỉ đạo cấp quốc gia về c&amp;aacute;c ng&amp;agrave;y lễ lớn&amp;nbsp;&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;năm 2014-2015 đ&amp;atilde; c&amp;oacute; kế hoạch tổ chức kỷ niệm 70 năm Quốc kh&amp;aacute;nh 2/9 từ rất sớm. Lễ kỷ niệm gồm c&amp;oacute; m&amp;iacute;t tinh trọng thể, diễu binh, diễu h&amp;agrave;nh. Diễu binh của lực lượng vũ trang bao gồm lực lượng qu&amp;acirc;n đội nh&amp;acirc;n d&amp;acirc;n Việt Nam, d&amp;acirc;n qu&amp;acirc;n tự vệ v&amp;agrave; c&amp;ocirc;ng an nh&amp;acirc;n d&amp;acirc;n. Diễu h&amp;agrave;nh gồm c&amp;aacute;c tổ chức quần ch&amp;uacute;ng tham gia.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Theo quy định của nh&amp;agrave; nước th&amp;igrave; cứ 10 năm tổ chức kỷ niệm một lần (trừ trường hợp đặc biệt như 1.000 năm Thăng Long tổ chức c&amp;aacute;ch đ&amp;acirc;y 5 năm). Do số lượng người tham gia rất lớn, như đợt n&amp;agrave;y trực tiếp tham gia diễu binh, diễu h&amp;agrave;nh đ&amp;atilde; l&amp;ecirc;n đến 30.000, để tạo được khối thống nhất l&amp;agrave; rất kh&amp;oacute; khăn. V&amp;igrave; vậy c&amp;aacute;c đơn vị phải chuẩn bị v&amp;agrave; luyện tập từ c&amp;aacute;ch đ&amp;acirc;y nhiều th&amp;aacute;ng. Đơn vị tập luyện l&amp;acirc;u nhất l&amp;agrave; 4 th&amp;aacute;ng, nhanh nhất l&amp;agrave; 2 th&amp;aacute;ng.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Những b&amp;agrave;i tập kh&amp;oacute; như 220 ph&amp;uacute;t đứng im, những động t&amp;aacute;c diễu binh, thẳng tiến... được tập nhuần nhuyễn.&amp;nbsp;&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Với thời tiết nắng n&amp;oacute;ng thời gian qua, c&amp;aacute;c lực lượng đ&amp;atilde; rất vất vả,&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;trong đ&amp;oacute; số lượng lớn nữ c&amp;agrave;ng kh&amp;oacute; khăn. Nhưng tất cả đều rất tập trung, c&amp;oacute; &amp;yacute; ch&amp;iacute; luyện tập v&amp;agrave;&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;quyết t&amp;acirc;m vượt qua với t&amp;acirc;m l&amp;yacute; vinh dự, v&amp;igrave; kh&amp;ocirc;ng phải ai cũng được lựa chọn như m&amp;igrave;nh.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Hiện nay, buổi tổng duyệt đ&amp;atilde; xong, chỉ chờ lễ ch&amp;iacute;nh thức. Tất cả lực lượng tham gia đều h&amp;aacute;o hức, phấn khởi.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table align="left" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="margin: 0px 10px 10px auto; padding: 0px; max-width: 100%; font-family: arial; font-size: 14px; line-height: normal; width: 250px;"&gt;\r\n	&lt;tbody style="margin: 0px; padding: 0px;"&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;&lt;img alt="anh-tuan-JPG-5065-1441027339.jpg" data-natural-width="250" data-pwidth="470.40625" data-width="250" src="http://m.f29.img.vnecdn.net/2015/09/01/anh-tuan-JPG-5065-1441027339-9956-1441069880.jpg" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;" /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;\r\n			&lt;p class="Image" style="margin: 0px; padding: 10px; line-height: normal; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);"&gt;Trung tướng V&amp;otilde; Văn Tuấn. Ảnh:&lt;em style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;Qu&amp;yacute; Đo&amp;agrave;n.&lt;/em&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;em style="margin: 0px; padding: 0px;"&gt;- Diễu binh đợt n&amp;agrave;y c&amp;oacute; kh&amp;aacute;c g&amp;igrave; so với diễu binh đợt đại lễ năm 2010?&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;- Diễu binh lần n&amp;agrave;y ch&amp;uacute;ng t&amp;ocirc;i lựa chọn đơn vị tham gia căn cứ v&amp;agrave;o lực lượng qu&amp;acirc;n binh chủng. C&amp;oacute; lực lượng ph&amp;aacute;t triển th&amp;ecirc;m, n&amp;ecirc;n tham gia th&amp;ecirc;m. Lần n&amp;agrave;y, ch&amp;uacute;ng ta tập trung v&amp;agrave;o diễu binh con người, c&amp;ograve;n vũ kh&amp;iacute; trang bị kh&amp;ocirc;ng tham gia.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;-&lt;em style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;Tại sao nh&amp;agrave; nước kh&amp;ocirc;ng tổ chức duyệt binh m&amp;agrave; l&amp;agrave; diễu binh, thưa &amp;ocirc;ng?&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;- C&amp;oacute; quan điểm n&amp;oacute;i duyệt binh l&amp;agrave; c&amp;oacute; vũ kh&amp;iacute; trang bị đi theo, như t&amp;ecirc;n lửa, m&amp;aacute;y bay, xe tăng, đạn ph&amp;aacute;o..., c&amp;ograve;n diễu binh chỉ c&amp;oacute; người diễu h&amp;agrave;nh. Nhưng cũng c&amp;oacute; kh&amp;aacute;i niệm cho rằng duyệt binh l&amp;agrave; c&amp;oacute; người đứng để duyệt những lực lượng đi qua. Tạm thời, nh&amp;agrave; nước đang sử dụng diễu binh - tức l&amp;agrave; chỉ c&amp;oacute; con người m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; vũ kh&amp;iacute; tham gia.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;C&amp;oacute; nhiều nguy&amp;ecirc;n nh&amp;acirc;n ch&amp;uacute;ng ta tổ chức diễu binh chứ kh&amp;ocirc;ng phải duyệt binh, trong đ&amp;oacute; c&amp;oacute; việc tiết kiệm. Với điều kiện kinh tế đất nước c&amp;ograve;n kh&amp;oacute; khăn, nh&amp;agrave; nước chọn c&amp;aacute;ch&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;tiết kiệm v&amp;igrave; ri&amp;ecirc;ng số lượng người tham gia diễu binh, diễu h&amp;agrave;nh chi ph&amp;iacute; đ&amp;atilde; tốn k&amp;eacute;m, nếu c&amp;oacute; vũ kh&amp;iacute; c&amp;agrave;ng tốn k&amp;eacute;m hơn.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Th&amp;ocirc;ng qua th&amp;ocirc;ng tin đại ch&amp;uacute;ng, nh&amp;acirc;n d&amp;acirc;n ta đ&amp;atilde; biết rằng, hiện Qu&amp;acirc;n đội nh&amp;acirc;n d&amp;acirc;n Việt Nam c&amp;oacute; nhiều loại vũ kh&amp;iacute; hiện đại. Nếu c&amp;oacute; điều kiện c&amp;oacute; thể ph&amp;ocirc; diễn để đồng b&amp;agrave;o được tận mắt nh&amp;igrave;n thấy l&amp;agrave; rất tốt. Tuy nhi&amp;ecirc;n, trong điều kiện hiện nay, nh&amp;agrave; nước chọn c&amp;aacute;ch tiết kiệm.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;em style="margin: 0px; padding: 0px;"&gt;- Ban tổ chức đ&amp;atilde; l&amp;ecirc;n phương &amp;aacute;n ứng ph&amp;oacute; với thời tiết v&amp;agrave; c&amp;aacute;c sự cố ra sao?&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;- Tất cả c&amp;aacute;c bộ, ng&amp;agrave;nh c&amp;oacute; li&amp;ecirc;n quan đều th&amp;agrave;nh lập tiểu ban để bảo đảm hoạt động trong đại lễ diễn ra tốt đẹp, những sự cố, bất trắc nếu c&amp;oacute; xảy ra đều đ&amp;atilde; c&amp;oacute; phương &amp;aacute;n đảm bảo an to&amp;agrave;n.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px; line-height: 22.0266666412354px; text-align: justify;"&gt;Khi sự kiện diễn ra, ai cũng&amp;nbsp;mong&amp;nbsp;thời tiết tốt, nhưng nếu&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;thời tiết khắc nghiệt th&amp;igrave; lễ diễu binh, diễu h&amp;agrave;nh vẫn diễn ra b&amp;igrave;nh thường. Như h&amp;ocirc;m tổng duyệt người d&amp;acirc;n đ&amp;atilde; nh&amp;igrave;n thấy trong mưa gi&amp;oacute; nhưng c&amp;aacute;c lực lượng tham gia vẫn tươi v&amp;agrave; tự h&amp;agrave;o. Hơn nữa, k&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px; line-height: 1.4; text-align: justify;"&gt;h&amp;ocirc;ng chỉ c&amp;oacute; lực lượng diễu binh&amp;nbsp;l&amp;agrave;m nhiệm vụ trong mưa, m&amp;agrave; h&amp;agrave;ng ngh&amp;igrave;n người d&amp;acirc;n cũng đội mưa đứng dọc c&amp;aacute;c tuyến phố để cổ vũ khi đo&amp;agrave;n diễu binh đi qua.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Để c&amp;oacute; được h&amp;ograve;a b&amp;igrave;nh, độc lập, đất nước ta đ&amp;atilde; phải đ&amp;aacute;nh đổi bằng sự hy sinh của h&amp;agrave;ng triệu đồng b&amp;agrave;o. Ch&amp;iacute;nh v&amp;igrave; vậy, người d&amp;acirc;n, c&amp;aacute;c lực lượng lu&amp;ocirc;n &amp;yacute; thức được qu&amp;acirc;n đội lớn mạnh, nh&amp;acirc;n d&amp;acirc;n đo&amp;agrave;n kết mới bảo vệ được đất nước.&lt;/span&gt;&lt;/p&gt;\r\n', 30, 0, '/uploads/images/01/09/2015/photo.jpg', 0, '2015-09-01 21:32:17', '', '', '2015-09-01 21:32:17', '2015-09-01 21:32:17', 1, 'http://vnexpress.net/tin-tuc/thoi-su/pho-tong-tham-muu-truong-chon-cach-tiet-kiem-khi-to-chuc-dieu-binh-3272453.html');
INSERT INTO `tbl_posts` (`id`, `title`, `alias`, `introtext`, `fulltext`, `catid`, `uid`, `thumbnail`, `ordering`, `created`, `metakey`, `metadesc`, `cdate`, `mdate`, `status`, `link_original`) VALUES
(10, 'Kính hàng hiệu có chất lượng thế nào so với đồ bình dân', 'kinh-hang-hieu-co-chat-luong-the-nao-so-voi-do-binh-dan', 'Những cặp kính giá vài chục tới vài trăm triệu đồng thực chất được sản xuất cùng một "lò" với hàng bình dân, khả năng chống tia UV không vượt trội hơn là bao.', '&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;K&amp;iacute;nh mắt trong nhiều thập kỷ qua vẫn được xem l&amp;agrave; m&amp;oacute;n phụ kiện&amp;nbsp;&lt;a href="http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/7-mon-do-ua-thich-cua-phu-nu-sanh-dieu-3025460.html" style="margin: 0px; padding: 0px; color: rgb(0, 79, 139); text-decoration: none; outline: 1px;"&gt;kh&amp;ocirc;ng thể thiếu&lt;/a&gt;&amp;nbsp;với cả đ&amp;agrave;n &amp;ocirc;ng lẫn phụ nữ khi xuống phố. Mỗi m&amp;ugrave;a mốt tr&amp;ocirc;i qua, c&amp;aacute;c qu&amp;yacute; &amp;ocirc;ng, qu&amp;yacute; c&amp;ocirc; lại &amp;quot;l&amp;ugrave;ng sục&amp;quot; để sở hữu những kiểu k&amp;iacute;nh r&amp;acirc;m&amp;nbsp;&lt;a href="http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/nhung-mau-kinh-dep-nhat-xuan-he-nam-nay-2968220.html" style="margin: 0px; padding: 0px; color: rgb(0, 79, 139); text-decoration: none; outline: 1px;"&gt;hợp mốt&lt;/a&gt;, từ Prada, Tom Ford, Ray Ban, Oakley, Dolce &amp;amp; Gabbana cho đến Salvatore Ferragamo, Chanel, Celine, Chopard... Gi&amp;aacute; của m&amp;oacute;n phụ kiện nhỏ b&amp;eacute; n&amp;agrave;y dao động từ v&amp;agrave;i trăm đ&amp;ocirc; đến v&amp;agrave;i trăm ngh&amp;igrave;n đ&amp;ocirc; t&amp;ugrave;y v&amp;agrave;o độ cầu kỳ, tinh xảo v&amp;agrave; nguy&amp;ecirc;n liệu của sản phẩm. Vậy điểm kh&amp;aacute;c biệt giữa k&amp;iacute;nh h&amp;agrave;ng hiệu cao cấp với những sản phẩm b&amp;igrave;nh d&amp;acirc;n do c&amp;aacute;c thương hiệu nhỏ sản xuất l&amp;agrave; g&amp;igrave;?&lt;/p&gt;\r\n\r\n&lt;table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="margin: 0px auto 10px; padding: 0px; max-width: 100%; font-family: arial; font-size: 14px; line-height: normal; width: 470px;"&gt;\r\n	&lt;tbody style="margin: 0px; padding: 0px;"&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;&lt;img alt="5-9369-1441597147.jpg" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://c1.f9.img.vnecdn.net/2015/09/07/5-9369-1441597147.jpg" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;" /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;\r\n			&lt;p class="Image" style="margin: 0px; padding: 10px; line-height: normal; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);"&gt;Những cặp k&amp;iacute;nh thời trang gi&amp;aacute; h&amp;agrave;ng trăm đ&amp;ocirc; thậm ch&amp;iacute; l&amp;ecirc;n tới v&amp;agrave;i trăm ngh&amp;igrave;n đ&amp;ocirc; la khiến kh&amp;ocirc;ng &amp;iacute;t người đặt c&amp;acirc;u hỏi ch&amp;uacute;ng c&amp;oacute; g&amp;igrave; đặc biệt hơn so với đồ b&amp;igrave;nh d&amp;acirc;n. Ảnh&lt;em style="margin: 0px; padding: 0px;"&gt;: Dolcegabbana.&lt;/em&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;strong style="margin: 0px; padding: 0px;"&gt;Tr&amp;ecirc;n thực tế, c&amp;aacute;c thương hiệu k&amp;iacute;nh cao cấp nhất v&amp;agrave; c&amp;aacute;c sản phẩm của h&amp;atilde;ng b&amp;igrave;nh d&amp;acirc;n đều chung nguồn gốc.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Luxottica - c&amp;ocirc;ng ty sản xuất k&amp;iacute;nh c&amp;oacute; trụ sở ch&amp;iacute;nh tại Milan, Italy - được coi l&amp;agrave; &amp;quot;&amp;ocirc;ng tr&amp;ugrave;m&amp;quot; trong ng&amp;agrave;nh sản xuất k&amp;iacute;nh thế giới. Mỗi năm, h&amp;atilde;ng n&amp;agrave;y lại cho ra l&amp;ograve; ra h&amp;agrave;ng triệu cặp k&amp;iacute;nh thời trang để đưa về c&amp;aacute;c h&amp;atilde;ng, từ Burberry, Chanel, Paul Smith, Tiffany &amp;amp; Co., Versace, Vogue, Person, Miu Miu, Tory Burch, Paul Smith Donna Karan... cho đến những thương hiệu nhỏ hơn. B&amp;ecirc;n cạnh đ&amp;oacute;, Luxottica cũng sở hữu một loạt c&amp;aacute;c nh&amp;atilde;n hiệu k&amp;iacute;nh nổi tiếng như Ray Ban, Oakley, Oliver Peoples v&amp;agrave; REVO.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Luca Biondolillo - đại diện h&amp;atilde;ng cho biết: &amp;quot;70% k&amp;iacute;nh mắt của c&amp;aacute;c h&amp;atilde;ng đều được ch&amp;uacute;ng t&amp;ocirc;i sản xuất tại nh&amp;agrave; m&amp;aacute;y ở Italy, phần c&amp;ograve;n lại l&amp;agrave; Mỹ v&amp;agrave; Trung Quốc. Luxottica kh&amp;ocirc;ng chỉ phụ tr&amp;aacute;ch sản xuất m&amp;agrave; c&amp;ograve;n cả tạo mẫu v&amp;agrave; marketing&amp;quot;. Người n&amp;agrave;y cho biết mỗi nh&amp;agrave; mốt sẽ l&amp;agrave;m việc với đội thiết kế của h&amp;atilde;ng để đưa ra mẫu số chung rồi thỏa thuận cấp ph&amp;eacute;p v&amp;agrave; sản xuất đại tr&amp;agrave; hay giới hạn. Mỗi thỏa thuận cấp ph&amp;eacute;p gi&amp;uacute;p cho thiết kế k&amp;iacute;nh của từng h&amp;atilde;ng được bảo hộ độc quyền trong v&amp;ograve;ng 3-10 năm.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Ngo&amp;agrave;i Luxottica, thị trường k&amp;iacute;nh mắt thế giới c&amp;ograve;n bị &amp;quot;thao t&amp;uacute;ng&amp;quot; bởi một &amp;quot;&amp;ocirc;ng lớn&amp;quot; kh&amp;aacute;c l&amp;agrave; Safilo. C&amp;ocirc;ng ty Italy n&amp;agrave;y sản xuất k&amp;iacute;nh cho những h&amp;atilde;ng như Alexander McQueen, A/X Armani Exchange, Balenciaga, Banana Republic, Bottega Veneta, Dior, Emporio Armani, Fossil, Giorgio Armani, Gucci,Yves Saint Laurent, Marc Jacobs... Safilo cũng sở hữu thương hiệu của ri&amp;ecirc;ng m&amp;igrave;nh như Carrera, Polaroid, Smith Optics, Oxydo hay Blue Bay.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Theo t&amp;iacute;nh to&amp;aacute;n của c&amp;aacute;c chuy&amp;ecirc;n gia, cứ mỗi một đ&amp;ocirc; la (hơn 20.000 đồng) c&amp;oacute; trong c&amp;aacute;c cặp k&amp;iacute;nh b&amp;aacute;n ra, những c&amp;ocirc;ng ty như Luxottica hay Sofila sẽ thu về khoảng 64 cent (khoảng hơn 12.000 đồng). Cả khi đ&amp;atilde; trừ c&amp;aacute;c khấu hao li&amp;ecirc;n quan đến b&amp;aacute;n h&amp;agrave;ng v&amp;agrave; marketing, số tiền họ kiếm được tr&amp;ecirc;n mỗi sản phẩm vẫn chiếm hơn một nửa gi&amp;aacute; b&amp;aacute;n ra.&lt;/p&gt;\r\n\r\n&lt;table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="margin: 0px auto 10px; padding: 0px; max-width: 100%; font-family: arial; font-size: 14px; line-height: normal; width: 400px;"&gt;\r\n	&lt;tbody style="margin: 0px; padding: 0px;"&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;&lt;img alt="1-3243-1441597147.jpg" data-pwidth="470.40625" data-width="400" src="http://c1.f9.img.vnecdn.net/2015/09/07/1-3243-1441597147.jpg" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;" /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;\r\n			&lt;p class="Image" style="margin: 0px; padding: 10px; line-height: normal; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);"&gt;Những mẫu k&amp;iacute;nh h&amp;agrave;ng hiệu v&amp;agrave; b&amp;igrave;nh d&amp;acirc;n tr&amp;ecirc;n thế giới hiện nay hầu hết được sản xuất bởi một số nh&amp;agrave; cung cấp từ Italy. Ảnh:&lt;em style="margin: 0px; padding: 0px;"&gt;&amp;nbsp;Blogspot.&lt;/em&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;Đeo k&amp;iacute;nh h&amp;agrave;ng hiệu cũng kh&amp;ocirc;ng tốt hơn cho mắt so với k&amp;iacute;nh b&amp;igrave;nh d&amp;acirc;n bởi khả năng chống tia UV - c&amp;ocirc;ng dụng ch&amp;iacute;nh của k&amp;iacute;nh - l&amp;agrave; như nhau.&amp;nbsp;&lt;/span&gt;&lt;span style="margin: 0px; padding: 0px;"&gt;&amp;quot;Một cặp k&amp;iacute;nh 300 USD (hơn 6 triệu đồng) thực chất chẳng kh&amp;aacute;c nhiều so với h&amp;agrave;ng 100 USD (hơn 2 triệu đồng) về khả năng bảo vệ mắt, ngoại trừ việc tr&amp;ocirc;ng ch&amp;uacute;ng đẹp hơn v&amp;agrave; c&amp;oacute; t&amp;ecirc;n thương hiệu nổi tiếng đi k&amp;egrave;m&amp;quot;, Jay Duker - chủ tịch của trung t&amp;acirc;m nh&amp;atilde;n khoa Tufts Medical Center (Mỹ) cho biết. Theo chuy&amp;ecirc;n gia, chỉ cần bỏ ra 40-70 USD, c&amp;aacute;c &amp;quot;thượng đế&amp;quot; đ&amp;atilde; sở hữu được một cặp k&amp;iacute;nh c&amp;oacute; khả năng chống tia cực t&amp;iacute;m (UV) tối đa c&amp;ugrave;ng nhiều lợi &amp;iacute;ch kh&amp;aacute;c.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Tiến sĩ Reza Dana, Gi&amp;aacute;m đốc phụ tr&amp;aacute;ch mảng phẫu thuật gi&amp;aacute;c mạc v&amp;agrave; c&amp;aacute;c tật kh&amp;uacute;c xạ về mắt ở bệnh viện tai-mắt Massachusetts (Mỹ) khẳng định: &amp;quot;Những cặp mắt k&amp;iacute;nh c&amp;oacute; khả năng chống tia UV sử dụng c&amp;ocirc;ng nghệ kh&amp;ocirc;ng mấy đắt đỏ&amp;quot;.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;&lt;strong style="margin: 0px; padding: 0px;"&gt;V&amp;igrave; thế, số tiền đắt đỏ m&amp;agrave; kh&amp;aacute;ch h&amp;agrave;ng phải chi cho c&amp;aacute;c cặp k&amp;iacute;nh hiệu phần nhiều v&amp;igrave; c&amp;aacute;c yếu tố ngo&amp;agrave;i chất lượng&lt;/strong&gt;.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Gi&amp;aacute; trị thương hiệu l&amp;agrave; một trong những yếu tố g&amp;acirc;y ảnh hưởng nhất đến gi&amp;aacute; b&amp;aacute;n. Để c&amp;oacute; được lợi nhuận cao, c&amp;aacute;c&amp;nbsp;&lt;a href="http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/nha-mot-lon-vung-tien-cho-sao-quang-ba-thuong-hieu-2994204.html" style="margin: 0px; padding: 0px; color: rgb(0, 79, 139); text-decoration: none; outline: 1px;"&gt;thương hiệu lớn&lt;/a&gt;&amp;nbsp;phải chi&amp;nbsp;&lt;a href="http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/quang-cao-soc-sex-bai-toan-cau-khach-cua-thoi-trang-hien-dai-3109624.html?commentid=9501581&amp;amp;focus=reply" style="margin: 0px; padding: 0px; color: rgb(0, 79, 139); text-decoration: none; outline: 1px;"&gt;bộn tiền&lt;/a&gt;&amp;nbsp;cho&lt;a href="http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/chieu-quang-cao-dua-bong-sao-lon-cua-nha-mot-3030903.html" style="margin: 0px; padding: 0px; color: rgb(0, 79, 139); text-decoration: none; outline: 1px;"&gt;quảng c&amp;aacute;o&lt;/a&gt;. B&amp;ecirc;n cạnh đ&amp;oacute;, họ c&amp;ograve;n phải chịu c&amp;aacute;c khoản ph&amp;iacute; về b&amp;aacute;n h&amp;agrave;ng, quản l&amp;yacute; hay thuế. Việc đẩy gi&amp;aacute; c&amp;aacute;c mặt h&amp;agrave;ng l&amp;ecirc;n cao để đảm bảo được cả hai yếu tố quảng b&amp;aacute; thương hiệu lẫn lợi nhuận l&amp;agrave; điều cần thiết.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Will Wister, một chuy&amp;ecirc;n gia đầu tư, cho biết nếu coi số lượng h&amp;agrave;ng h&amp;oacute;a sản xuất kh&amp;ocirc;ng thay đổi, việc mở rộng thiết kế sẽ khiến c&amp;aacute;c nh&amp;agrave; mốt mất nhiều chi ph&amp;iacute; hơn cho lĩnh vực nghi&amp;ecirc;n cứu v&amp;agrave; ph&amp;aacute;t triển. C&amp;aacute;c khoản chi tăng l&amp;ecirc;n cũng đồng nghĩa với việc gi&amp;aacute; b&amp;aacute;n của sản phẩm phải &amp;quot;đội&amp;quot; l&amp;ecirc;n th&amp;igrave; mới đem lại được lợi nhuận về cho người sản xuất.&lt;/p&gt;\r\n\r\n&lt;table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="margin: 0px auto 10px; padding: 0px; max-width: 100%; font-family: arial; font-size: 14px; line-height: normal; width: 470px;"&gt;\r\n	&lt;tbody style="margin: 0px; padding: 0px;"&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;&lt;img alt="7-1974-1441597147.jpg" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://c1.f9.img.vnecdn.net/2015/09/07/7-1974-1441597147.jpg" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;" /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style="margin: 0px; padding: 0px;"&gt;\r\n			&lt;td style="margin: 0px; padding: 0px; line-height: 0;"&gt;\r\n			&lt;p class="Image" style="margin: 0px; padding: 10px; line-height: normal; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);"&gt;Phụ kiện h&amp;agrave;ng hiệu vẫn c&amp;oacute; được chỗ đứng trong l&amp;ograve;ng người y&amp;ecirc;u thời trang bởi danh tiếng của thương hiệu.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Tuy nhi&amp;ecirc;n, việc kho&amp;aacute;c l&amp;ecirc;n m&amp;igrave;nh m&amp;oacute;n đồ xa xỉ, c&amp;oacute; sẵn danh tiếng vẫn được xem như một c&amp;aacute;ch khẳng định đẳng cấp. Hầu hết thương hiệu lớn đều đăng k&amp;yacute; một thiết kế độc quyền, đồng nghĩa với việc ai sở hữu những cặp k&amp;iacute;nh thời thượng đắt đỏ cũng sẽ l&amp;agrave; người đi đầu về phong c&amp;aacute;ch. Một số nh&amp;agrave; sản xuất c&amp;ograve;n t&amp;igrave;m c&amp;aacute;ch đưa c&amp;aacute;c loại trang sức, đ&amp;aacute; qu&amp;yacute; cũng như vật liệu chống nước, chịu lực, chống sương... để những m&amp;oacute;n phụ kiện th&amp;ecirc;m phần độc đ&amp;aacute;o.&lt;/p&gt;\r\n\r\n&lt;p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;"&gt;Nếu so s&amp;aacute;nh về gi&amp;aacute; trị sử dụng (khả năng che chắn nắng, bụi), khoảng c&amp;aacute;ch giữa c&amp;aacute;c cặp k&amp;iacute;nh h&amp;agrave;ng hiệu với b&amp;igrave;nh d&amp;acirc;n kh&amp;ocirc;ng lớn. Nhưng x&amp;eacute;t về mặt thẩm mỹ v&amp;agrave; s&amp;aacute;ng tạo, những m&amp;oacute;n phụ kiện ph&amp;ugrave; phiếm vẫn vượt trội hơn nhiều so với c&amp;aacute;c đối thủ gi&amp;aacute; rẻ. Bởi vậy, c&amp;acirc;u trả lời cho thắc mắc &amp;quot;k&amp;iacute;nh h&amp;agrave;ng hiệu c&amp;oacute; đ&amp;aacute;ng tiền kh&amp;ocirc;ng?&amp;quot; ph&amp;ugrave; thuộc phần nhiều v&amp;agrave;o khả năng kinh tế cũng như quan niệm về c&amp;aacute;n c&amp;acirc;n thẩm mỹ - t&amp;uacute;i tiền của từng người.&lt;/p&gt;\r\n', 31, 0, '/uploads/images/07/09/2015/5-9369-1441597147%5B1%5D.jpg', 0, '2015-09-07 22:45:32', '', '', '2015-09-07 22:45:32', '2015-09-07 22:45:32', 1, 'http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/kinh-hang-hieu-co-chat-luong-the-nao-so-voi-do-binh-dan-3275162.html'),
(11, '100 năm phát triển nội y được tái hiện trong video 3 phút', '100-nam-phat-trien-noi-y-duoc-tai-hien-trong-video-3-phut', 'Trong video do trang Mode thực hiện, người xem có thể thấy rõ sự biến đổi về kiểu dáng và chất liệu của nội y dành cho phụ nữ qua từng thập kỷ.', '<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;">\r\n	<span style="margin: 0px; padding: 0px;">Video d&agrave;i gần ba ph&uacute;t, trong đ&oacute; c&aacute;c người mẫu lần lượt thể hiện từng mẫu nội y đặc trưng qua c&aacute;c giai đoạn từ năm 1915 đến nay.</span></p>\r\n<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;">\r\n	<span style="margin: 0px; padding: 0px;">Thập ni&ecirc;n 1910, nội y d&agrave;nh cho nữ giới đơn giản l&agrave; chiếc &aacute;o liền th&acirc;n tối giản. Năm 1925, v&aacute;y ngủ hai d&acirc;y (slipdress) mỏng manh so&aacute;n ng&ocirc;i. Ch&uacute;ng được l&agrave;m từ nhiều chất liệu như&nbsp;</span><span style="margin: 0px; padding: 0px;">lụa, mousseline.</span><span style="margin: 0px; padding: 0px;">&nbsp;L&uacute;c n&agrave;y, c&aacute;c c&ocirc; g&aacute;i c&oacute; th&ecirc;m &aacute;o kho&aacute;c nhẹ b&ecirc;n ngo&agrave;i.&nbsp;</span><span style="margin: 0px; padding: 0px;">Trong những năm 1930, phụ nữ bắt đầu diện kiểu &aacute;o l&oacute;t c&uacute;p ngực, mặc k&egrave;m quần short rộng v&agrave; mỏng.</span></p>\r\n<table align="center" border="1" cellpadding="1" cellspacing="0" class="tbl_insert" style="margin: 0px auto 10px; padding: 0px; max-width: 100%; font-family: arial; font-size: 14px; line-height: normal; width: 468px;">\r\n	<tbody style="margin: 0px; padding: 0px;">\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 2px;">\r\n				<div style="margin: 0px; padding: 0px; text-align: center;">\r\n					<div class="embed-container" style="margin: 0px 0px 1em; padding: 0px 0px 259.875px; position: relative; height: 0px; overflow: hidden;">\r\n						<iframe allowfullscreen="" frameborder="0" height="270" src="http://vnexpress.net/parser_v3.php?id=65431&amp;t=2&amp;ft=video&amp;si=1002691&amp;ap=1&amp;ishome=0" style="margin: 0px; padding: 0px; position: absolute; top: 0px; left: 0px; width: 462px; height: 259.875px;" width="480"></iframe></div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 2px;">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;">\r\n	<span style="margin: 0px; padding: 0px;">Năm 1945, &aacute;o&nbsp;</span><span style="margin: 0px; padding: 0px;">ngực c&oacute; m&uacute;t l&oacute;t ra đời với phom d&aacute;ng liền th&acirc;n như một chiếc v&aacute;y ống ngắn b&oacute; s&aacute;t cơ thể, phần ngực cắt c&uacute;p &ocirc;m trọn v&ograve;ng một. 10 năm sau, b&ecirc;n cạnh chiếc &aacute;o ngực hai d&acirc;y, nữ giới được l&agrave;m quen với &aacute;o ngủ rộng v&agrave; ngắn theo kiểu babydoll. L&uacute;c n&agrave;y, quần l&oacute;t được may b&oacute; cơ thể hơn với d&aacute;ng quần short xếp b&egrave;o nh&uacute;n. Năm 1965 đ&aacute;nh dấu một bước ngoặt lớn khi&nbsp;</span><span style="margin: 0px; padding: 0px;">đồ l&oacute;t cả &aacute;o lẫn quần được l&agrave;m b&oacute; s&aacute;t cơ thể, t&ocirc;n l&ecirc;n bầu ngực, cắt c&uacute;p nhỏ gọn, tinh tế hơn. Năm 1975, v&aacute;y ngủ hai d&acirc;y tiếp tục trỗi dậy với phi&ecirc;n bản d&agrave;i bằng lụa, &ocirc;m d&aacute;ng hơn so với thời kỳ 1925.</span></p>\r\n<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; font-family: arial; font-size: 14px;">\r\n	Từ năm 1985 đến nay, c&aacute;c d&aacute;ng &aacute;o corset đầy khi&ecirc;u kh&iacute;ch ph&aacute;t triển như vũ b&atilde;o. C&aacute;c nh&agrave; thiết kế ng&agrave;y c&agrave;ng đơn giản h&oacute;a nội y, sử dụng đa chất liệu hơn, kiểu d&aacute;ng tinh tế v&agrave; phong ph&uacute;, đem lại nhiều lựa chọn cho nữ giới.</p>\r\n', 30, 0, '/uploads/images/07/09/2015/5-9369-1441597147%5B1%5D.jpg', 0, '2015-09-07 23:05:49', 'Trong video do trang Mode thực hiện, người xem có thể thấy rõ sự biến đổi về kiểu dáng và chất liệu của nội y dành cho phụ nữ qua từng thập kỷ.', 'Trong video do trang Mode thực hiện, người xem có thể thấy rõ sự biến đổi về kiểu dáng và chất liệu của nội y dành cho phụ nữ qua từng thập kỷ.', '2015-09-07 23:05:49', '2015-09-07 23:05:49', 1, 'http://giaitri.vnexpress.net/tin-tuc/thoi-trang/lang-mot/100-nam-phat-trien-noi-y-duoc-tai-hien-trong-video-3-phut-3275574.html');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `groupID` bigint(20) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `home_phone` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(258) NOT NULL,
  `city` varchar(128) NOT NULL,
  `province_state` varchar(128) NOT NULL,
  `zip_code` varchar(30) NOT NULL,
  `country` smallint(6) NOT NULL,
  `suppliers` varchar(32) NOT NULL,
  `cdate` int(11) NOT NULL,
  `mdate` int(11) NOT NULL,
  `template_id` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `lastvisit` datetime NOT NULL,
  `activeCode` varchar(64) NOT NULL,
  `params` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupID` (`groupID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `groupID`, `mobile`, `home_phone`, `first_name`, `last_name`, `address`, `city`, `province_state`, `zip_code`, `country`, `suppliers`, `cdate`, `mdate`, `template_id`, `status`, `lastvisit`, `activeCode`, `params`) VALUES
(28, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 25, '', '', 'admin', 'admin', '', '', '', '', 0, '', 0, 2014, 0, 1, '2015-10-21 14:53:47', '', ''),
(20, 'anhvinhvs', 'e10adc3949ba59abbe56e057f20f883e', 'ducdm87@gmail.com', 19, '', '', 'ducdm87', '', '', '', '', '', 0, 'facebook', 1392186072, 2015, 0, 2, '2014-02-12 14:34:00', '', ''),
(7, 'ducdm@binhhoang.com', '25f9e794323b453885f5181f1b624d0b', 'ducdm@binhhoang.com', 19, '', '', 'ducdm', '', '', '', '', '', 0, '', 1389770555, 2014, 0, 1, '2014-01-16 10:04:50', '2ed194a21f0735a76ee4358192533784:1389840767', ''),
(8, 'dinhbang19@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'dinhbang19@gmail.com', 19, '', '', 'dinhbang19', '', '', '', '', '', 0, '', 1389841867, 2015, 0, 1, '2014-01-16 10:15:45', '17bb5d16f6e732bfddcc11d63a584a6a:1389841867', ''),
(12, 'ducdm87@twitter.com', '', 'ducdm87@twitter.com', 19, '', '', 'ducdm87', '', '', '', '', '', 0, 'twitter', 1389856370, 1389856370, 0, 1, '0000-00-00 00:00:00', '', ''),
(16, 'bangtdadmin', '96e6fc55ef27cd6ee161ba7a062c3111', 'bangtdadmin@gmail.com', 24, '', '', 'bangtdadmin', 'bangtdadmin', '', '', '', '', 0, '', 0, 2014, 0, 1, '2014-02-17 14:24:04', '', ''),
(14, 'bangtd@binhhoang.com', 'e10adc3949ba59abbe56e057f20f883e', 'bangtd@binhhoang.com', 19, '', '', 'bangtd', '', '', '', '', '', 0, '', 1390532686, 1390532686, 0, 1, '2014-01-24 10:14:08', '0ccf5da3b41dff684ee030f1b6f9894e:1390532686', ''),
(15, 'hoangdaoxuan@yahoo.com.au', '', 'hoangdaoxuan@yahoo.com.au', 19, '', '', 'hoangdaoxuan', '', '', '', '', '', 0, 'facebook', 1390536708, 1390536708, 0, 1, '0000-00-00 00:00:00', '', ''),
(17, 'vuhien', 'c0f849c33cf98290c9bd976fb81eb6b0', 'vuhien@binhhoang.com', 23, '', '', 'vuhien', 'vuhien', '', '', '', '', 0, '', 0, 2014, 0, 1, '2014-02-10 13:53:28', '', ''),
(18, 'anhmantk@gmail.com', '', 'anhmantk@gmail.com', 19, '', '', 'anhmantk', '', '', '', '', '', 0, 'facebook', 1392112877, 1392112877, 0, 1, '0000-00-00 00:00:00', '', ''),
(19, 'ducdm871@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'ducdm871@gmail.com', 19, '', '', 'ducdm871', '', '', '', '', '', 0, '', 1392177110, 1392177110, 0, 1, '2014-02-12 13:14:56', '18f48748011eb544d6bbf7062d6042da:1392177110', ''),
(29, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(30, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(31, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(32, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(33, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(34, 'adminsadsas', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '04 8738 2173', '', 'Dương', 'Vinh', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', ''),
(35, 'cuongph', 'e10adc3949ba59abbe56e057f20f883e', '', 19, '0985922500', '', 'Phạm', 'Cường', '', '', '', '', 0, '', 0, 0, 0, 1, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_group`
--

CREATE TABLE IF NOT EXISTS `tbl_users_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_users_group`
--

INSERT INTO `tbl_users_group` (`id`, `parent_id`, `name`, `lft`, `value`) VALUES
(17, 0, 'ROOT', 1, 'ROOT'),
(28, 17, 'USERS', 2, 'USERS'),
(29, 28, 'Public Frontend', 3, 'Public Frontend'),
(18, 29, 'Registered', 4, 'Registered'),
(19, 18, 'Author', 5, 'Author'),
(20, 19, 'Editor', 6, 'Editor'),
(21, 20, 'Publisher', 7, 'Publisher'),
(30, 28, 'Public Backend', 13, 'Public Backend'),
(23, 30, 'Manager', 14, 'Manager'),
(24, 23, 'Administrator', 15, 'Administrator'),
(25, 24, 'Super Administrator', 16, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_metas`
--

CREATE TABLE IF NOT EXISTS `tbl_user_metas` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `meta_key` varchar(125) NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_user_metas`
--

INSERT INTO `tbl_user_metas` (`meta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(5, 32, 'day', '1'),
(6, 32, 'month', '1'),
(7, 32, 'year', '1963'),
(8, 32, 'gander', '1'),
(9, 33, 'day', '1'),
(10, 33, 'month', '1'),
(11, 33, 'year', '1963'),
(12, 33, 'gander', '1'),
(13, 34, 'day', '1'),
(14, 34, 'month', '1'),
(15, 34, 'year', '1963'),
(16, 34, 'gander', '1'),
(17, 35, 'day', '1'),
(18, 35, 'month', '1'),
(19, 35, 'year', '1963'),
(20, 35, 'gander', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
