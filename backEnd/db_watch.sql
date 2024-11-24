-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2024 at 05:15 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_watch`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `name`) VALUES
(1, 'LOBINNI'),
(2, 'CARNIVAL'),
(3, 'TEINTOP'),
(4, 'AOUKE'),
(13, 'a11212');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `commentId` int NOT NULL AUTO_INCREMENT,
  `content` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `productId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `fr_comment_user` (`userId`),
  KEY `fr_comment_product_idx` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `idProduct` int NOT NULL,
  `url` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `fr_img_fr_product_idx` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`idProduct`, `url`) VALUES
(1, 'Dong-ho-nam-Lobinni-No-9601-1.png'),
(2, 'Dong-ho-nam-Lobinni-No-96017-1.png'),
(3, 'Dong-ho-nam-Lobinni-No-96016-1.png'),
(4, 'Dong-ho-nam-Lobinni-No-9601-5.png'),
(5, 'Dong-ho-nam-Lobinni-No-9601-4.png'),
(6, 'Dong-ho-nam-Lobinni-No-18020-1.png'),
(6, 'dong-ho-lobinni-no-18020-2.jpg'),
(6, 'dong-ho-lobinni-no-18020-3.jpg'),
(6, 'dong-ho-lobinni-no-18020-4.jpg'),
(7, 'Dong-ho-nam-Lobinni-No-18021-1.png'),
(7, 'Dong-ho-nam-Lobinni-No-18021-2.jpg'),
(7, 'Dong-ho-nam-Lobinni-No-18021-3.jpg'),
(7, 'Dong-ho-nam-Lobinni-No-18021-4.jpg'),
(8, 'Dong-ho-nam-Lobinni-No-9227-1.png'),
(8, 'dong-ho-lobinni-no-9227-2.jpg'),
(8, 'dong-ho-lobinni-no-9227-3.jpg'),
(8, 'dong-ho-lobinni-no-9227-4.jpg'),
(9, 'Dong-ho-nam-Carnival-CNV8101G-1.png'),
(9, 'Dong-ho-nam-Carnival-CNV8101G-2.jpg'),
(9, 'Dong-ho-nam-Carnival-CNV8101G-3.jpg'),
(9, 'Dong-ho-nam-Carnival-CNV8101G-4.jpg'),
(10, 'Dong-ho-nam-Carnival-CNV515G5-1.png'),
(10, 'Dong-ho-nam-Carnival-CNV5015G5-2.jpg'),
(10, 'Dong-ho-nam-Carnival-CNV5015G5-3.jpg'),
(10, 'Dong-ho-nam-Carnival-CNV5015G5-4.jpg'),
(11, 'Dong-ho-nam-Carnival-CNV515G4-1.png'),
(11, 'Dong-ho-nam-Carnival-515G4-2.jpg'),
(11, 'Dong-ho-nam-Carnival-515G4-3.jpg'),
(11, 'Dong-ho-nam-Carnival-515G4-4.jpg'),
(12, 'Dong-ho-nam-Carnival-CNV515G3-1.png'),
(12, 'Dong-ho-nam-Carnival-CNV515G3-2.jpg'),
(12, 'Dong-ho-nam-Carnival-CNV515G3-3.jpg'),
(12, 'Dong-ho-nam-Carnival-CNV515G3-4.jpg'),
(13, 'Dong-ho-nam-Carnival-CNV515G2-1.png'),
(13, 'Dong-ho-nam-Carnival-CNV515G2-2.jpg'),
(13, 'Dong-ho-nam-Carnival-CNV515G2-3.jpg'),
(13, 'Dong-ho-nam-Carnival-CNV515G2-4.jpg'),
(14, 'Dong-ho-nam-Carnival-CNV515G1-1.png'),
(14, 'Dong-ho-nam-Carnival-CNV515G1-2.jpg'),
(14, 'Dong-ho-nam-Carnival-CNV515G1-3.jpg'),
(14, 'Dong-ho-nam-Carnival-CNV515G1-4.jpg'),
(15, 'Dong-ho-nam-Carnival-CNV515G-1.png'),
(15, 'Dong-ho-nam-Carnival-CNV515G6-2.jpg'),
(15, 'Dong-ho-nam-Carnival-CNV515G6-3.jpg'),
(15, 'Dong-ho-nam-Carnival-CNV515G6-4.jpg'),
(16, 'Dong-ho-nam-IW-Carnival-679G-1.png'),
(16, 'Dong-ho-nam-IW-Carnival-679G-2.jpg'),
(16, 'Dong-ho-nam-IW-Carnival-679G-3.jpg'),
(16, 'Dong-ho-nam-IW-Carnival-679G-4.jpg'),
(17, 'teintop-t8660-8-1.png'),
(17, 'teintop-t8660-8-2.jpg'),
(17, 'teintop-t8660-8-3.jpg'),
(17, 'teintop-t8660-8-4.jpg'),
(18, 'teintop-t8656-1-1-1.png'),
(18, 'teintop-t8656-1-1-2.jpg'),
(18, 'teintop-t8656-1-2-3.jpg'),
(18, 'teintop-t8656-1-3-4.jpg'),
(19, 'teintop-t8629-1.png'),
(19, 'teintop-t8629-2.jpg'),
(19, 'teintop-t8629-1-3.jpg'),
(19, 'teintop-t8629-1-4.jpg'),
(20, 'teintop_t7017-1.png'),
(20, 'teintop_t7017-2.jpg'),
(20, 'teintop_t7017-3.jpg'),
(20, 'teintop_t7017-4.jpg'),
(21, 'teintop_t7016-9_1.png'),
(21, 'T7016-9_2.jpg'),
(21, 'T7016-9_3.jpg'),
(21, 'T7016-9_4.jpg'),
(22, 'T7009-6_1.png'),
(22, 'T7009-6_2.jpg'),
(22, 'T7009-6_3.jpg'),
(22, 'T7009-6_4.jpg'),
(23, 'T7017-8-1.png'),
(23, 'T7017-8-2.jpg'),
(23, 'T7017-8-3.jpg'),
(24, 'Dong-ho-nam-Teintop-T8623-1.png'),
(24, 'Dong-ho-nam-Teintop-T8623-2.jpg'),
(24, 'Dong-ho-nam-Teintop-T8623-3.jpg'),
(25, 'dong-ho-aouke-AK069-1.png'),
(25, 'dong-ho-aouke-AK069-2.jpg'),
(25, 'dong-ho-aouke-AK069-3.jpg'),
(25, 'dong-ho-aouke-AK069-4.jpg'),
(26, 'dong-ho-aouke-AK08-1.png'),
(26, 'dong-ho-aouke-AK08-2.jpg'),
(26, 'dong-ho-aouke-AK08-4.jpg'),
(26, 'dong-ho-aouke-AK08-3.jpg'),
(27, 'dong-ho-aouke-AK07-1.png'),
(27, 'dong-ho-aouke-AK07-2.jpg'),
(27, 'dong-ho-aouke-AK07-3.jpg'),
(27, 'dong-ho-aouke-AK07-4.jpg'),
(28, 'dong-ho-aouke-AK06-1.png'),
(28, 'dong-ho-aouke-AK06-2.jpg'),
(28, 'dong-ho-aouke-AK06-3.jpg'),
(28, 'dong-ho-aouke-AK06-4.jpg'),
(29, 'dong-ho-aouke-AK05-1.png'),
(29, 'dong-ho-aouke-AK05-2.jpg'),
(29, 'dong-ho-aouke-AK05-3.jpg'),
(29, 'dong-ho-aouke-AK05-4.jpg'),
(30, 'dong-ho-aouke-AK04-1.png'),
(30, 'dong-ho-aouke-AK04-2.jpg'),
(30, 'dong-ho-aouke-AK04-3.jpg'),
(30, 'dong-ho-aouke-AK04-4.jpg'),
(31, 'dong-ho-aouke-AK02-1.png'),
(31, 'dong-ho-aouke-AK02-2.jpg'),
(31, 'dong-ho-aouke-AK02-3.jpg'),
(31, 'dong-ho-aouke-AK02-4.jpg'),
(32, 'dong-ho-aouke-AK01-1.png'),
(32, 'dong-ho-aouke-AK01-2.jpg'),
(32, 'dong-ho-aouke-AK01-3.jpg'),
(32, 'dong-ho-aouke-AK01-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

DROP TABLE IF EXISTS `oder`;
CREATE TABLE IF NOT EXISTS `oder` (
  `oderId` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_creat` timestamp(6) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  PRIMARY KEY (`oderId`),
  KEY `fr_oder_status_idx` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`oderId`, `date_creat`, `address`, `phone`, `price`, `userId`, `statusId`) VALUES
('0evo5mn', '2022-10-28 18:04:23.000000', '258/9 Dương Quảng Hàm', '09178978181', 7730000, 8, 4),
('5c9pu9y', '2023-04-12 18:08:27.000000', 'Ngả tư Thủ đức', '091817281917', 6760000, 10, 1),
('5talj9j', '2023-04-12 23:48:07.000000', 'B5 Nguyễn Ánh thủ, Quận 12', '0961022334', 4480000, 3, 2),
('d1p6iiq', '2021-03-09 05:59:14.000000', 'Bùi Quang Là, Gò vấp', '01917819901', 15850000, 7, 4),
('k47d7c2', '2021-09-18 06:00:21.000000', 'Bùi Quang Là, Gò vấp', '01917819901', 8550000, 7, 4),
('qvgmeke', '2023-04-12 18:07:51.000000', 'Ngả tư Thủ đức', '123', 12229000, 10, 1),
('r245vrm', '2022-06-15 18:04:46.000000', '258/9 Dương Quảng Hàm', '09178978181', 4280000, 8, 4),
('rot7smx', '2023-01-11 18:02:41.000000', 'B5 Nguyễn Ánh thủ, Quận 12', '0961022334', 11270000, 3, 4),
('vz727tf', '2023-02-17 06:10:10.000000', 'B5 Nguyễn Ánh thủ, Quận 12', '0961022334', 8170000, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oderdetail`
--

DROP TABLE IF EXISTS `oderdetail`;
CREATE TABLE IF NOT EXISTS `oderdetail` (
  `productId` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL,
  `oderId` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fr_detail_product_idx` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `oderdetail`
--

INSERT INTO `oderdetail` (`productId`, `quantity`, `price`, `oderId`, `id`) VALUES
('24', 1, 4950000, 'k47d7c2', 77),
('14', 1, 3600000, 'k47d7c2', 78),
('24', 2, 4950000, 'd1p6iiq', 79),
('16', 1, 3390000, 'd1p6iiq', 80),
('25', 1, 2560000, 'd1p6iiq', 81),
('9', 1, 3450000, 'rot7smx', 82),
('17', 1, 4950000, 'rot7smx', 83),
('30', 1, 2870000, 'rot7smx', 84),
('22', 1, 3890000, 'vz727tf', 85),
('5', 1, 4280000, 'vz727tf', 86),
('1', 1, 4480000, '0evo5mn', 87),
('13', 1, 3250000, '0evo5mn', 88),
('5', 1, 4280000, 'r245vrm', 89),
('5', 1, 4280000, 'qvgmeke', 90),
('17', 1, 4950000, 'qvgmeke', 91),
('27', 1, 2999000, 'qvgmeke', 92),
('22', 1, 3890000, '5c9pu9y', 93),
('30', 1, 2870000, '5c9pu9y', 94),
('3', 1, 4480000, '5talj9j', 95);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `mota` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hinh` int NOT NULL,
  `categoryId` int NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `fr_product_cate_idx` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `name`, `price`, `mota`, `avatar`, `hinh`, `categoryId`) VALUES
(1, 'Watch LOBINNI NO.9601-8', 4480000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Lobinni-No-9601-1.png', 1, 1),
(2, 'Watch LOBINNI NO.9601-7', 4480000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Lobinni-No-96017-1.png', 2, 1),
(3, 'Watch LOBINNI NO.9601-6', 4480000, 'Đường kính mặt 41 mm Độ dày 11 mm Chất liệu vỏ Thép không gỉ 316L', 'Dong-ho-nam-Lobinni-No-96016-1.png', 3, 1),
(4, 'Watch LOBINNI NO.9601-5', 4480000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Lobinni-No-9601-5.png', 4, 1),
(5, 'Watch LOBINNI NO.9601-4', 4280000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Lobinni-No-9601-4.png', 5, 1),
(6, 'Watch LOBINNI NO.18020-4', 5180000, 'Kiểu máy Automatic (Máy Cơ)Đường kính mặt 41 mm Độ dày 12 mm', 'Dong-ho-nam-Lobinni-No-18020-1.png', 6, 1),
(7, 'Watch LOBINNI NO.18021-2', 4550000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Lobinni-No-18021-1.png', 7, 1),
(8, 'Watch LOBINNI NO.9227-2', 3950000, 'Kiểu máy Automatic(Máy Cơ) Đường kính mặt 41 mm', 'Dong-ho-nam-Lobinni-No-9227-1.png', 8, 1),
(9, 'Watch CARNIVAL CNV8101G2', 3450000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Carnival-CNV8101G-1.png', 9, 2),
(10, 'Watch Carnival CNV515G5', 3250000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Carnival-CNV515G5-1.png', 10, 2),
(11, 'Watch Carnival CNV515G4', 3650000, 'Đường kính mặt 41 mm Độ dày 11 mm Chất liệu vỏ Thép không gỉ 316L', 'Dong-ho-nam-Carnival-CNV515G4-1.png', 11, 2),
(12, 'Watch Carnival CNV515G3', 2890000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Carnival-CNV515G3-1.png', 12, 2),
(13, 'Watch Carnival CNV515G2', 3250000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Carnival-CNV515G2-1.png', 13, 2),
(14, 'Watch Carnival CNV515G1', 3600000, 'Kiểu máy Automatic (Máy Cơ)Đường kính mặt 41 mm Độ dày 12 mm', 'Dong-ho-nam-Carnival-CNV515G1-1.png', 14, 2),
(15, 'Watch Carnival CNV515G6', 3690000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'Dong-ho-nam-Carnival-CNV515G-1.png', 15, 2),
(16, 'Watch Carnival 679G2', 3390000, 'Kiểu máy Automatic(Máy Cơ) Đường kính mặt 41 mm', 'Dong-ho-nam-IW-Carnival-679G-1.png', 16, 2),
(17, 'Watch Teintop t8660', 4950000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'teintop-t8660-8-1.png', 17, 3),
(18, 'Watch Teintop t8656', 4500000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'teintop-t8656-1-1-1.png', 18, 3),
(19, 'Watch Teintop t8629', 4150000, 'Đường kính mặt 41 mm Độ dày 11 mm Chất liệu vỏ Thép không gỉ 316L', 'teintop-t8629-1.png', 19, 3),
(20, 'Watch Teintop t7017', 3560000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'teintop_t7017-1.png', 20, 3),
(21, 'Watch Teintop T7016', 4650000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'teintop_t7016-9_1.png', 21, 3),
(22, 'Watch Teintop T7009', 3890000, 'Kiểu máy Automatic (Máy Cơ)Đường kính mặt 41 mm Độ dày 12 mm', 'T7009-6_1.png', 22, 3),
(23, 'Watch Teintop T7017-8', 4320000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'T7017-8-1.png', 23, 3),
(24, 'Watch Teintop T8623', 4950000, 'Kiểu máy Automatic(Máy Cơ) Đường kính mặt 41 mm', 'Dong-ho-nam-Teintop-T8623-1.png', 24, 3),
(25, 'Watch Aouke AK069', 2560000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'dong-ho-aouke-AK069-1.png', 25, 4),
(26, 'Watch Aouke AK08', 2785000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'dong-ho-aouke-AK08-1.png', 26, 4),
(27, 'Watch Aouke AK07', 2999000, 'Đường kính mặt 41 mm Độ dày 11 mm Chất liệu vỏ Thép không gỉ 316L', 'dong-ho-aouke-AK07-1.png', 27, 4),
(28, 'Watch Aouke AK06', 3150000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'dong-ho-aouke-AK06-1.png', 28, 4),
(29, 'Watch Aouke AK05', 3560000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'dong-ho-aouke-AK05-1.png', 29, 4),
(30, 'Watch Aouke AK04', 2870000, 'Kiểu máy Automatic (Máy Cơ)Đường kính mặt 41 mm Độ dày 12 mm', 'dong-ho-aouke-AK04-1.png', 30, 4),
(31, 'Watch Aouke AK02', 3150000, 'Kiểu máy Automatic (Máy Cơ) Đường kính mặt 41 mm Độ dày 11 mm', 'dong-ho-aouke-AK02-1.png', 31, 4),
(32, 'Watch Aouke AK01', 2750000, 'Kiểu máy Automatic(Máy Cơ) Đường kính mặt 41 mm', 'dong-ho-aouke-AK01-1.png', 32, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `roleId` int NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `name`) VALUES
(1, 'Admin Tổng'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusId`, `name`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Xác nhận'),
(3, 'Đang Giao Hàng'),
(4, 'Giao Thành Công'),
(5, 'Đã Huỷ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `avatar` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roleId` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_users_role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fr_comment_product` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `fr_comment_user` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fr_img_fr_product` FOREIGN KEY (`idProduct`) REFERENCES `product` (`productId`);

--
-- Constraints for table `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `fr_oder_status` FOREIGN KEY (`statusId`) REFERENCES `status` (`statusId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fr_product_cate` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
