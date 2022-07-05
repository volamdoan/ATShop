-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 05, 2022 lúc 01:13 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asmphp2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangdungluong`
--

CREATE TABLE `bangdungluong` (
  `idDungLuong` int(11) NOT NULL,
  `dungluong` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangdungluong`
--

INSERT INTO `bangdungluong` (`idDungLuong`, `dungluong`) VALUES
(8, '128Gb'),
(9, '64gb'),
(12, '258Gb'),
(13, '512Gb'),
(15, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangmau`
--

CREATE TABLE `bangmau` (
  `idMau` int(11) NOT NULL,
  `tenMau` varchar(15) NOT NULL,
  `maMau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangmau`
--

INSERT INTO `bangmau` (`idMau`, `tenMau`, `maMau`) VALUES
(6, 'Đen', '#000000'),
(7, 'Trắng', '#ffffff'),
(9, 'Hồng', '#ffc0cb'),
(10, 'Đỏ', ' #ff0000'),
(11, 'Xanh', '#3399ff'),
(12, 'Silver', '#C0C0C0'),
(13, 'Space Gray', '#989898'),
(14, 'Tím', '#AD8AA8'),
(15, 'Green', '#61ce70'),
(16, 'Sky Blue', '#6ec1e4'),
(17, 'Vàng đồng', '#FFD700');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangphivanchuyen`
--

CREATE TABLE `bangphivanchuyen` (
  `idPhi` int(11) NOT NULL,
  `maTinh` int(11) NOT NULL,
  `phiVanChuyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangphivanchuyen`
--

INSERT INTO `bangphivanchuyen` (`idPhi`, `maTinh`, `phiVanChuyen`) VALUES
(3, 68, 40000),
(4, 69, 40000),
(5, 70, 40000),
(6, 71, 40000),
(7, 72, 40000),
(8, 73, 40000),
(9, 74, 40000),
(10, 75, 40000),
(11, 76, 40000),
(12, 77, 40000),
(13, 78, 40000),
(14, 79, 40000),
(15, 80, 40000),
(16, 81, 40000),
(17, 82, 40000),
(18, 83, 40000),
(19, 84, 40000),
(20, 85, 25000),
(21, 86, 40000),
(22, 87, 40000),
(23, 88, 40000),
(24, 89, 40000),
(25, 90, 40000),
(26, 91, 40000),
(27, 92, 40000),
(28, 93, 40000),
(29, 94, 40000),
(30, 95, 40000),
(31, 96, 40000),
(32, 97, 40000),
(33, 98, 40000),
(34, 99, 25000),
(35, 100, 40000),
(36, 101, 40000),
(37, 102, 40000),
(38, 103, 40000),
(39, 104, 40000),
(40, 105, 40000),
(41, 106, 40000),
(42, 107, 40000),
(43, 108, 40000),
(44, 109, 40000),
(45, 110, 40000),
(46, 111, 40000),
(47, 112, 40000),
(48, 113, 40000),
(49, 114, 40000),
(50, 115, 40000),
(51, 116, 40000),
(52, 117, 25000),
(53, 118, 40000),
(54, 119, 40000),
(55, 120, 40000),
(56, 121, 40000),
(57, 122, 40000),
(58, 123, 40000),
(59, 124, 40000),
(60, 125, 40000),
(61, 126, 40000),
(62, 127, 40000),
(63, 128, 40000),
(64, 129, 40000),
(65, 130, 40000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangtinh`
--

CREATE TABLE `bangtinh` (
  `idTinh` int(11) NOT NULL,
  `tenTinh` varchar(30) NOT NULL,
  `maMien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangtinh`
--

INSERT INTO `bangtinh` (`idTinh`, `tenTinh`, `maMien`) VALUES
(68, 'Lào Cai', 2),
(69, 'Yên Bái', 2),
(70, 'Điện Biên', 2),
(71, 'Hòa Bình', 2),
(72, 'Lai Châu', 2),
(73, 'Sơn La', 2),
(74, 'Hà Giang', 2),
(75, 'Cao Bằng', 2),
(76, 'Bắc Kạn', 2),
(77, 'Lạng Sơn', 2),
(78, 'Tuyên Quang', 2),
(79, 'Thái Nguyên', 2),
(80, 'Phú Thọ', 2),
(81, 'Bắc Giang', 2),
(82, 'Quảng Ninh', 2),
(83, 'Bắc Ninh', 2),
(84, 'Hà Nam', 2),
(85, 'Hà Nội', 2),
(86, 'Hải Dương', 2),
(87, 'Hưng Yên', 2),
(88, 'Hải Phòng', 2),
(89, 'Nam Định', 2),
(90, 'Ninh Bình', 2),
(91, 'Thái Bình', 2),
(92, 'Vĩnh Phúc', 2),
(93, 'Thanh Hoá', 4),
(94, 'Nghệ An', 4),
(95, 'Hà Tĩnh', 4),
(96, 'Quảng Bình', 4),
(97, 'Quảng Trị', 4),
(98, 'Thừa Thiên-Huế', 4),
(99, 'Đà Nẵng', 4),
(100, 'Quảng Nam', 4),
(101, 'Quảng Ngãi', 4),
(102, 'Bình Định', 4),
(103, 'Phú Yên', 4),
(104, 'Khánh Hoà', 4),
(105, 'Ninh Thuận', 4),
(106, 'Bình Thuận', 4),
(107, 'Kon Tum', 4),
(108, 'Gia Lai', 4),
(109, 'Đắc Lắc', 4),
(110, 'Đắc Nông', 4),
(111, 'Lâm Đồng', 4),
(112, 'Bình Phước', 3),
(113, 'Bình Dương', 3),
(114, 'Đồng Nai', 3),
(115, 'Tây Ninh', 3),
(116, 'Bà Rịa-Vũng Tàu', 3),
(117, 'Sài Gòn', 3),
(118, 'Long An', 3),
(119, 'Đồng Tháp', 3),
(120, 'Tiền Giang', 3),
(121, 'An Giang', 3),
(122, 'Bến Tre', 3),
(123, 'Vĩnh Long', 3),
(124, 'Trà Vinh', 3),
(125, 'Hậu Giang', 3),
(126, 'Kiên Giang', 3),
(127, 'Sóc Trăng', 3),
(128, 'Bạc Liêu', 3),
(129, 'Cà Mau', 3),
(130, 'Cần Thơ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'HI||Hello||Hola||Hello ||Hi ||Hola ||', 'Hi, How can I serve you ?'),
(2, 'How are you', 'Good to see you again!'),
(3, 'what is your name||whats your name|| what\'s your name ?', 'My name is Night Bot'),
(4, 'what should I call you', 'You can call me Night Bot'),
(5, 'Where are your from', 'I m from India'),
(6, 'Bye||See you later||Have a Good Day', 'Sad to see you are going. Have a nice day'),
(11, 'Xin chào||Chào||Chào ||chào||chào ', 'Xin chào bạn. Bạn cần hỗ trợ gì ?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `idChitiet` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `maMau` int(11) DEFAULT NULL,
  `maDungLuong` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`idChitiet`, `idSP`, `maMau`, `maDungLuong`, `price`, `quantity`) VALUES
(90, 91, 7, 12, 48000000, 36),
(92, 91, 7, 8, 33950000, 36),
(94, 91, 6, 13, 48000000, 36),
(95, 91, 6, 8, 33950000, 36),
(103, 93, 6, 8, 25000000, 36),
(104, 93, 7, 8, 25000000, 36),
(105, 93, 6, 12, 29000000, 36),
(106, 93, 7, 12, 29000000, 36),
(107, 93, 10, 9, 23000000, 36),
(108, 93, 10, 12, 29000000, 36),
(109, 94, 6, 12, 29500000, 36),
(110, 94, 7, 12, 29500000, 36),
(111, 94, 6, 8, 20950000, 36),
(112, 94, 7, 8, 20950000, 36),
(115, 95, 6, 8, 22590000, 36),
(116, 95, 6, 12, 24000000, 36),
(117, 95, 7, 8, 22590000, 36),
(118, 95, 7, 12, 24000000, 36),
(120, 96, 10, 9, 16000000, 36),
(122, 96, 6, 9, 16000000, 36),
(125, 96, 6, 8, 21000000, 36),
(126, 96, 7, 8, 21000000, 36),
(127, 96, 10, 8, 21000000, 36),
(128, 96, 6, 12, 23000000, 36),
(129, 96, 7, 12, 23000000, 36),
(130, 97, 6, 8, 18000000, 36),
(131, 97, 7, 8, 18000000, 36),
(132, 97, 7, 12, 21000000, 36),
(133, 97, 6, 12, 21000000, 36),
(134, 98, 6, 8, 11000000, 36),
(135, 98, 6, 12, 13000000, 36),
(136, 98, 7, 8, 11000000, 36),
(137, 98, 7, 12, 13000000, 36),
(138, 99, 7, 12, 29000000, 36),
(139, 99, 7, 13, 40000000, 36),
(140, 99, 6, 12, 29000000, 36),
(141, 99, 6, 13, 40000000, 36),
(142, 100, 12, 12, 17000000, 36),
(143, 100, 13, 12, 17000000, 36),
(144, 100, 12, 9, 11000000, 36),
(145, 100, 13, 9, 11000000, 36),
(146, 101, 14, 12, 22300000, 36),
(147, 101, 14, 9, 15750000, 36),
(148, 101, 13, 9, 15750000, 36),
(149, 101, 13, 12, 22300000, 36),
(150, 101, 9, 9, 15750000, 36),
(151, 101, 9, 12, 22300000, 36),
(152, 101, 7, 9, 15750000, 36),
(153, 101, 7, 12, 22300000, 36),
(155, 102, 13, 8, 22000000, 36),
(156, 102, 12, 8, 22000000, 36),
(157, 102, 13, 12, 24000000, 36),
(158, 102, 12, 12, 24000000, 36),
(159, 103, 12, 8, 28000000, 36),
(160, 103, 12, 12, 30000000, 36),
(161, 103, 13, 12, 30000000, 36),
(162, 103, 13, 8, 28000000, 36),
(163, 104, 12, 8, 19000000, 36),
(164, 104, 12, 12, 20000000, 36),
(165, 104, 13, 12, 20000000, 36),
(166, 104, 13, 8, 19000000, 36),
(167, 104, 9, 8, 19000000, 36),
(168, 104, 9, 12, 20000000, 36),
(169, 105, 12, 8, 30000000, 36),
(170, 105, 12, 12, 32000000, 36),
(171, 105, 13, 8, 30000000, 36),
(172, 105, 13, 12, 32000000, 36),
(184, 108, 6, 15, 5000000, 36),
(185, 109, 12, 15, 12000000, 36),
(186, 109, 13, 15, 12000000, 36),
(187, 109, 15, 15, 14000000, 36),
(188, 109, 16, 15, 14000000, 36),
(189, 109, 9, 15, 14000000, 36),
(190, 110, 7, 15, 5300000, 36),
(191, 111, 7, 15, 5200000, 36),
(192, 112, 7, 15, 3200000, 36),
(193, 142, 12, 12, 41000000, 36),
(194, 142, 11, 12, 41000000, 36),
(195, 142, 6, 12, 41000000, 36),
(196, 142, 11, 13, 43000000, 36),
(197, 142, 12, 13, 43000000, 36),
(198, 142, 6, 13, 43000000, 36),
(199, 141, 12, 8, 17000000, 36),
(200, 141, 14, 8, 17000000, 36),
(201, 141, 6, 8, 17000000, 36),
(202, 141, 6, 12, 24000000, 36),
(203, 141, 12, 12, 24000000, 36),
(204, 141, 14, 12, 24000000, 36),
(205, 140, 15, 12, 13000000, 36),
(206, 140, 16, 12, 13000000, 36),
(207, 149, 6, 8, 12000000, 36),
(208, 149, 7, 8, 12000000, 36),
(209, 149, 6, 12, 14500000, 36),
(210, 149, 7, 12, 14500000, 36),
(211, 148, 6, 9, 9650000, 36),
(212, 148, 7, 9, 9650000, 36),
(213, 148, 11, 9, 9650000, 36),
(214, 148, 14, 9, 9650000, 36),
(215, 147, 6, 9, 6000000, 36),
(216, 147, 7, 9, 6000000, 36),
(217, 147, 14, 9, 6000000, 36),
(218, 147, 11, 9, 6000000, 36),
(219, 153, 6, 8, 21500000, 36),
(220, 153, 7, 8, 21500000, 36),
(221, 153, 7, 12, 28000000, 36),
(222, 153, 6, 12, 28000000, 36),
(223, 152, 6, 8, 24000000, 36),
(224, 152, 7, 8, 24000000, 36),
(225, 152, 14, 8, 24000000, 36),
(226, 152, 6, 12, 26000000, 36),
(227, 152, 7, 12, 26000000, 36),
(228, 152, 14, 12, 26000000, 36),
(229, 151, 6, 8, 20500000, 36),
(230, 151, 6, 12, 22000000, 36),
(231, 151, 7, 8, 20500000, 36),
(232, 151, 7, 12, 22000000, 36),
(233, 151, 17, 8, 20500000, 36),
(234, 151, 17, 12, 22000000, 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieuhang`
--

CREATE TABLE `dieuhang` (
  `idPhieu` int(11) NOT NULL,
  `idDauKho1` int(4) NOT NULL,
  `idCTSP` int(11) NOT NULL,
  `idDauKho2` int(4) DEFAULT NULL,
  `soLuong` int(11) NOT NULL,
  `status` int(3) NOT NULL,
  `note` varchar(1100) DEFAULT NULL,
  `ngayGuiHang` datetime DEFAULT NULL,
  `ngayNhanHang` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dieuhang`
--

INSERT INTO `dieuhang` (`idPhieu`, `idDauKho1`, `idCTSP`, `idDauKho2`, `soLuong`, `status`, `note`, `ngayGuiHang`, `ngayNhanHang`) VALUES
(13, 7, 103, 6, 3, 2, 'Đã nhận hàng', '2022-01-01 02:51:06', '2022-01-01 02:52:41'),
(14, 6, 103, 7, 3, 2, 'Đã nhận hàng', '2022-01-01 03:00:12', '2022-01-01 03:01:22'),
(15, 7, 130, 8, 2, 2, 'Đã nhận hàng', '2022-01-01 04:16:21', '2022-01-01 04:16:35'),
(16, 6, 104, NULL, 1, 0, 'Yêu cầu điều hàng hộ từ Kho Hàng Miền Bắc', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idHoaDon` int(11) NOT NULL,
  `ngayMua` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `PhiVanChuyen` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0: đã đặt - 1-Đã xác nhận-2-Yêu cầu điều hàng 2-Đã điều hàng-3. Đã xuất kho - 4- Đã giao hàng -5- Từ chối nhận hàng - 6- Đã hoàn hàng',
  `idTinh` int(11) NOT NULL,
  `idKho` int(11) NOT NULL,
  `note` varchar(1100) DEFAULT NULL,
  `tenNguoiNhan` varchar(1000) NOT NULL,
  `SDTNhanHang` char(10) NOT NULL,
  `diaChiNhanHang` varchar(1700) NOT NULL,
  `ngayXuatKho` datetime DEFAULT NULL,
  `maVanDon` char(10) DEFAULT NULL,
  `ngayNhanHang` datetime DEFAULT NULL,
  `ngayHoanHang` datetime DEFAULT NULL,
  `countDL` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idHoaDon`, `ngayMua`, `userID`, `Total`, `PhiVanChuyen`, `status`, `idTinh`, `idKho`, `note`, `tenNguoiNhan`, `SDTNhanHang`, `diaChiNhanHang`, `ngayXuatKho`, `maVanDon`, `ngayNhanHang`, `ngayHoanHang`, `countDL`) VALUES
(34, '2022-01-06 12:28:02', 7, 25950000, 25000, 6, 117, 7, 'Giao hàng thành công', 'Võ Lâm Đoan', '0977766653', '42 XVNT F25 Q. Bình Thạnh', NULL, 'MVD9234180', '2022-01-03 12:32:45', NULL, 1),
(35, '2022-01-06 12:36:53', 7, 23300000, 25000, 6, 117, 7, 'Giao hàng thành công', 'Võ Lâm Đoan', '0915491540', '42 Võ Duy Ninh F22 Q. Bình Thạnh', NULL, 'MVD8934120', '2022-01-03 12:40:38', NULL, 1),
(36, '2022-01-06 04:47:30', 7, 25000000, 25000, 6, 117, 7, 'Đã giao cho khách', 'Nguyễn Văn A', '0915491540', '42 XVNT F25 Q. Bình Thạnh', NULL, 'MVD8213467', '2022-01-03 04:49:35', NULL, 1),
(37, '2022-01-06 07:45:59', 7, 33950000, 25000, 5, 117, 7, 'Không liên hệ được KH', 'Võ Lâm Đoan', '0915491540', '42 XVNT', NULL, NULL, NULL, NULL, 1),
(38, '2022-06-14 12:10:50', 11, 25000000, 40000, 0, 101, 8, '', 'Đoan Võ Lâm', '0915491540', 'Mộ Đức/Quảng Ngãi', NULL, NULL, NULL, NULL, NULL),
(39, '2022-06-16 02:23:44', 13, 15750000, 40000, 0, 101, 8, '', 'Đoan', '0915491540', 'đức thắng', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `idHD` int(11) NOT NULL,
  `idCTHH` int(11) NOT NULL COMMENT 'id CHi tiết hàng hóa',
  `Price` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadonchitiet`
--

INSERT INTO `hoadonchitiet` (`idHD`, `idCTHH`, `Price`, `soLuong`) VALUES
(34, 184, 5000000, 1),
(34, 111, 20950000, 1),
(35, 130, 18000000, 1),
(35, 190, 5300000, 1),
(36, 103, 25000000, 1),
(37, 92, 33950000, 1),
(38, 104, 25000000, 1),
(39, 147, 15750000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keyword`
--

CREATE TABLE `keyword` (
  `idKey` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `keyword`
--

INSERT INTO `keyword` (`idKey`, `keyword`) VALUES
(32, 'IPhone'),
(33, 'IPad'),
(34, 'Airpod'),
(36, 'Apple'),
(38, 'Pro Max'),
(39, 'Pro'),
(40, 'Mini'),
(41, 'Gen'),
(42, 'Air'),
(43, 'Samsung'),
(44, 'Fold'),
(45, 'Note'),
(46, 'Galaxy'),
(47, 'Plus'),
(48, 'Ultra');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang`
--

CREATE TABLE `khohang` (
  `idKho` int(11) NOT NULL,
  `maKho` char(20) NOT NULL,
  `thongTin` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khohang`
--

INSERT INTO `khohang` (`idKho`, `maKho`, `thongTin`) VALUES
(6, 'MB001', 'Kho Hàng Miền Bắc'),
(7, 'MN001', 'Kho Hàng Miền Nam'),
(8, 'MT001', 'Kho Hàng Miền Trung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mientbl`
--

CREATE TABLE `mientbl` (
  `idMien` int(11) NOT NULL,
  `tenMien` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mientbl`
--

INSERT INTO `mientbl` (`idMien`, `tenMien`) VALUES
(2, 'Bắc'),
(3, 'Nam'),
(4, 'Trung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prodgallery`
--

CREATE TABLE `prodgallery` (
  `idGallery` int(11) NOT NULL,
  `idProd` int(11) NOT NULL,
  `image` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `prodgallery`
--

INSERT INTO `prodgallery` (`idGallery`, `idProd`, `image`) VALUES
(447, 91, 'iPhone 13 Pro Max1.jpg'),
(448, 91, 'iPhone 13 Pro Max2.jpg'),
(449, 91, 'iPhone 13 Pro Max3.png'),
(450, 91, 'iPhone 13 Pro Max4.jpg'),
(451, 91, 'iPhone 13 Pro Max5.jpg'),
(452, 91, 'iPhone 13 Pro Max6.jpg'),
(453, 91, 'iPhone 13 Pro Max7.jpg'),
(478, 93, 'iPhone 13.1.jpg'),
(479, 93, 'iPhone 13.2.jpg'),
(480, 93, 'iPhone 13.3.jpg'),
(481, 93, 'iPhone 13.4.jpg'),
(482, 93, 'iPhone 13.5.jpg'),
(483, 93, 'iPhone 13.6.jpg'),
(484, 94, 'iPhone 13 mini.1.jpg'),
(485, 94, 'iPhone 13 mini.2.jpg'),
(486, 94, 'iPhone 13 mini.3.jpg'),
(487, 94, 'iPhone 13 mini.4.jpg'),
(488, 94, 'iPhone 13 mini.5.jpg'),
(489, 94, 'iPhone 13 mini.6.jpg'),
(490, 95, 'iPhone 12.1.webp'),
(491, 95, 'iPhone 12.2.webp'),
(492, 95, 'iPhone 12.3.webp'),
(493, 95, 'iPhone 12.4.webp'),
(494, 95, 'iPhone 12.5.webp'),
(495, 95, 'iPhone 12.png'),
(496, 96, 'iPhone 12 mini.1.png'),
(497, 96, 'iPhone 12 mini.2.webp'),
(498, 96, 'iPhone 12 mini.3.webp'),
(499, 96, 'iPhone 12 mini.4.webp'),
(500, 96, 'iPhone 12 mini.5.webp'),
(501, 96, 'iPhone 12 mini.6.webp'),
(502, 97, 'iPhone 11.1.png'),
(503, 97, 'iPhone 11.2.webp'),
(504, 97, 'iPhone 11.3.webp'),
(505, 97, 'iPhone 11.4.webp'),
(506, 97, 'iPhone 11.5.webp'),
(507, 97, 'iPhone 11.6.webp'),
(508, 98, 'iPhone SE 2020.1.webp'),
(509, 98, 'iPhone SE 2020.2.webp'),
(510, 98, 'iPhone SE 2020.3.webp'),
(511, 98, 'iPhone SE 2020.4.webp'),
(512, 98, 'iPhone SE 2020.5.webp'),
(513, 98, 'iPhone SE 2020.6.webp'),
(514, 99, 'iPhone 13 Pro.1.jpg'),
(515, 99, 'iPhone 13 Pro.2.jpg'),
(516, 99, 'iPhone 13 Pro.3.jpg'),
(517, 99, 'iPhone 13 Pro.4.jpg'),
(518, 99, 'iPhone 13 Pro.5.jpg'),
(519, 99, 'iPhone 13 Pro.6.jpg'),
(520, 100, 'iPad gen 9 (2021).1.jpg'),
(521, 100, 'iPad gen 9 (2021).2.jpg'),
(522, 100, 'iPad gen 9 (2021).3.jpg'),
(523, 100, 'iPad gen 9 (2021).4.jpg'),
(524, 100, 'iPad gen 9 (2021).5.jpg'),
(525, 100, 'iPad gen 9 (2021).6.jpg'),
(526, 101, 'iPad mini 6 (2021).1.jpg'),
(527, 101, 'iPad mini 6 (2021).2.jpg'),
(528, 101, 'iPad mini 6 (2021).3.jpg'),
(529, 101, 'iPad mini 6 (2021).4.jpg'),
(530, 101, 'iPad mini 6 (2021).5.jpg'),
(531, 101, 'iPad mini 6 (2021).6.jpg'),
(532, 102, 'iPad Pro 11 inch.1.png'),
(533, 102, 'iPad Pro 11 inch.2.jpg'),
(534, 102, 'iPad Pro 11 inch.3.jpg'),
(535, 102, 'iPad Pro 11 inch.4.jpg'),
(536, 102, 'iPad Pro 11 inch.5.jpg'),
(537, 102, 'iPad Pro 11 inch.6.jpg'),
(538, 103, 'iPad Pro 12.9 inch.png'),
(539, 104, 'iPad Air 4.1.png'),
(540, 104, 'iPad Air 4.2.webp'),
(541, 104, 'iPad Air 4.3.webp'),
(542, 104, 'iPad Air 4.4.webp'),
(543, 104, 'iPad Air 4.5.webp'),
(544, 104, 'iPad Air 4.6.webp'),
(545, 105, 'iPad Pro 2020.2.webp'),
(546, 105, 'iPad Pro 2020.3.webp'),
(547, 105, 'iPad Pro 2020.4.webp'),
(548, 105, 'iPad Pro 2020.5.webp'),
(549, 105, 'iPad Pro 2020.6.webp'),
(550, 105, 'iPad-Pro-2020.png'),
(551, 108, 'AirPods (gen 3).1.png'),
(552, 108, 'AirPods (gen 3).2.jpg'),
(553, 108, 'AirPods (gen 3).3.jpg'),
(554, 108, 'AirPods (gen 3).4.jpg'),
(555, 108, 'AirPods (gen 3).5.jpg'),
(556, 108, 'AirPods (gen 3).6.jpg'),
(557, 109, 'AirPods Max1.webp'),
(558, 109, 'AirPods Max2.webp'),
(559, 109, 'AirPods Max3.webp'),
(560, 109, 'AirPods Max4.webp'),
(561, 109, 'AirPods Max5.webp'),
(562, 110, 'AirPods Pro (2021)1.png'),
(563, 110, 'AirPods Pro (2021)2.jpg'),
(564, 110, 'AirPods Pro (2021)3.jpg'),
(565, 110, 'AirPods Pro (2021)4.jpg'),
(566, 110, 'AirPods Pro (2021)5.jpg'),
(567, 110, 'AirPods Pro (2021)6.jpg'),
(568, 111, 'AirPods Pro (2020)1.png'),
(569, 111, 'AirPods Pro (2020)2.jpeg'),
(570, 111, 'AirPods Pro (2020)3.jpeg'),
(571, 111, 'AirPods Pro (2020)4.jpeg'),
(572, 112, '3.-AirPods-2.png'),
(573, 112, 'airpods_2_2.webp'),
(574, 112, 'airpods_2_3.webp'),
(575, 112, 'airpods_2_4.webp'),
(576, 112, 'airpods_2_5.webp'),
(577, 112, 'airpods_2_6.webp'),
(578, 142, 'Z Flip3.6'),
(579, 142, 'Z Flip3.1.webp'),
(580, 142, 'Z Flip3.2.webp'),
(581, 142, 'Z Flip3.3.webp'),
(582, 142, 'Z Flip3.4.jpg'),
(583, 142, 'Z Flip3.5.jpg'),
(584, 141, 'S21 Plus1.jpg'),
(585, 141, 'S21 Plus2.jpg'),
(586, 141, 'S21 Plus3.webp'),
(587, 141, 'S21 Plus4.webp'),
(588, 141, 'S21 Plus5.jpg'),
(589, 141, 'S21 Plus6.jpg'),
(590, 140, 'S20 FE1.jpg'),
(591, 140, 'S20 FE2.jpg'),
(593, 140, 'S20 FE4.jpg'),
(594, 140, 'S20 FE5.jpg'),
(595, 140, 'S20 FE3.jpg'),
(596, 149, 'A72.1.jpg'),
(597, 149, 'a72.2.jpg'),
(598, 149, 'a72.3.jpg'),
(599, 149, 'a72.4.jpg'),
(600, 149, 'a72.5.jpg'),
(601, 149, 'a72.5.webp'),
(602, 148, 'a52s-trang-01.jpg'),
(603, 148, 'a52s-trang-02.jpg'),
(604, 148, 'a52s-trang-03.jpg'),
(605, 148, 'a52s-trang-04.jpg'),
(606, 148, 'a52s-trang-05.jpg'),
(607, 147, 'A32.3.jpg'),
(608, 147, 'A32.4.jpg'),
(609, 147, 'A32.5.jpg'),
(610, 147, 'A32.6.jpg'),
(611, 147, 'A32.jpg'),
(612, 147, 'A32.webp'),
(613, 153, 'S21 Ultra.jpg'),
(614, 153, 'S21 Ultra2.webp'),
(615, 153, 'S21 Ultra3.jpg'),
(616, 153, 'S21 Ultra4.jpg'),
(617, 153, 'S21 Ultra5.png'),
(618, 152, 'Z Flip3.1.webp'),
(619, 152, 'Z Flip3.2.webp'),
(620, 152, 'Z Flip3.3.webp'),
(621, 152, 'Z Flip3.4.jpg'),
(622, 152, 'Z Flip3.5.jpg'),
(623, 152, 'Z Flip3.6'),
(624, 151, 'black_final_1.jpg'),
(625, 151, 'note_20_ultra_1_8.jpg'),
(626, 151, 'ULTRA20.1.jpg'),
(627, 151, 'ULTRA20.2.jpg'),
(628, 151, 'ULTRA20.3.webp'),
(629, 151, 'yellow_final_2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productkey`
--

CREATE TABLE `productkey` (
  `idProd` int(11) NOT NULL,
  `idKey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productkey`
--

INSERT INTO `productkey` (`idProd`, `idKey`) VALUES
(105, 33),
(105, 39),
(104, 42),
(104, 33),
(102, 33),
(102, 39),
(103, 36),
(103, 33),
(103, 39),
(108, 34),
(108, 41),
(108, 36),
(109, 34),
(109, 36),
(110, 34),
(110, 39),
(110, 36),
(111, 34),
(111, 39),
(111, 36),
(112, 34),
(112, 36),
(152, 43),
(151, 45),
(151, 43),
(151, 48),
(149, 43),
(148, 43),
(147, 43),
(142, 44),
(142, 46),
(142, 43),
(141, 47),
(141, 43),
(140, 43),
(98, 32),
(97, 32),
(96, 32),
(96, 40),
(95, 36),
(95, 32),
(91, 36),
(91, 32),
(91, 38),
(93, 36),
(93, 32),
(94, 32),
(94, 40),
(99, 32),
(99, 39),
(100, 36),
(100, 41),
(100, 33),
(101, 36),
(101, 33),
(101, 40),
(153, 46),
(153, 48);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `tenRole` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`idRole`, `tenRole`) VALUES
(6, 'Khách hàng'),
(7, 'Nhân viên'),
(8, 'Quản lý'),
(9, 'Nhân viên kho'),
(11, 'Nhân viên vận chuyển');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idProd` int(11) NOT NULL,
  `tenSP` varchar(300) NOT NULL,
  `minPrice` int(11) DEFAULT NULL,
  `maxPrice` int(11) DEFAULT NULL,
  `soLuongSP` int(4) DEFAULT NULL,
  `image` char(100) DEFAULT NULL,
  `image2` char(100) DEFAULT NULL,
  `discount` int(2) NOT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `soLuotXem` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `idBrand` int(11) NOT NULL,
  `idThietBi` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(91, 'iPhone 13 Pro Max', 33950000, 48000000, 144, 'iPhone 13 Pro Max2.jpg', 'iPhone 13 Pro Max3.png', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 6.7 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c rộng: 12MP, &fnof;/1.5<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP, &fnof;/1.8<br />\r\n			&nbsp; Camera tele : 12MP, /2.8</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12MP, &fnof;/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 6 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 4,325mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2778 x 1284 pixel</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 160.8 x 78.1 x 7.65mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 13 Pro Max&nbsp;</strong>Một n&acirc;ng cấp hệ thống camera chuy&ecirc;n nghiệp ho&agrave;nh tr&aacute;ng chưa từng c&oacute;. M&agrave;n h&igrave;nh Super Retina XDR với ProMotion cho cảm gi&aacute;c nhanh nhạy hơn. Chip A15 Bionic thần tốc. Mạng 5G si&ecirc;u nhanh. Thiết kế bền bỉ v&agrave; thời lượng pin d&agrave;i nhất từng c&oacute; tr&ecirc;n iPhone.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; M&agrave;n h&igrave;nh Super Retina XDR 6.7 inch với ProMotion cho cảm gi&aacute;c nhanh nhạy hơn&nbsp;<br />\r\n&bull; Chế độ Điện Ảnh l&agrave;m tăng th&ecirc;m độ s&acirc;u trường ảnh n&ocirc;ng v&agrave; tự động thay đổi ti&ecirc;u cự trong video&nbsp;<br />\r\n&bull; Hệ thống camera chuy&ecirc;n nghiệp Telephoto, Wide v&agrave; Ultra Wide 12MP; LiDAR Scanner; phạm vi thu ph&oacute;ng quang học 6x; chụp ảnh macro; Phong C&aacute;ch Nhiếp Ảnh, video ProRes,4 HDR th&ocirc;ng minh thế hệ 4, chế độ Ban Đ&ecirc;m, Apple ProRAW, khả năng quay video HDR Dolby Vision 4K&nbsp;<br />\r\n&bull; Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K&nbsp;<br />\r\n&bull; Chip A15 Bionic cho hiệu năng thần tốc&nbsp;<br />\r\n&bull; Thời gian xem video l&ecirc;n đến 28 giờ, thời lượng pin d&agrave;i nhất từng c&oacute; tr&ecirc;n iPhone&nbsp;<br />\r\n&bull; Thiết kế bền bỉ với Ceramic Shield&nbsp;<br />\r\n&bull; Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường&nbsp;<br />\r\n&bull; Mạng 5G cho tốc độ tải xuống si&ecirc;u nhanh, xem video v&agrave; nghe nhạc trực tuyến chất lượng cao&nbsp;<br />\r\n&bull; iOS 15 t&iacute;ch hợp nhiều t&iacute;nh năng mới cho ph&eacute;p bạn l&agrave;m được nhiều việc hơn bao giờ hết với iPhone.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>Cần c&oacute; g&oacute;i cước dữ liệu. Mạng 5G chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng 5G, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập apple.com/iphone/cellular. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n theo đường cong tuyệt đẹp v&agrave; nằm gọn theo một h&igrave;nh chữ nhật chuẩn. Khi t&iacute;nh theo h&igrave;nh chữ nhật chuẩn, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 6.68 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Sắp ra mắt. iPhone 13 Pro Max c&oacute; khả năng chống nước, chống tia nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529. Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Một số t&iacute;nh năng kh&ocirc;ng khả dụng tại một số quốc gia hoặc khu vực.</em></span></p>\r\n', 1, 12, 33950000, 26, 19, '2022-01-03 09:15:49'),
(93, 'iPhone 13', 23000000, 29000000, 216, 'iPhone 13.1.jpg', 'iPhone 13.2.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 6.1 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c rộng: 12MP, f/1.6<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP, &fnof;/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Khoảng 3.200mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS 15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2532 x 1170 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 146,7 x 71,5 x 7,65mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 13&nbsp;</strong>Hệ thống camera k&eacute;p ti&ecirc;n tiến nhất từng c&oacute; tr&ecirc;n iPhone. Chip A15 Bionic thần tốc. Bước nhảy vọt về thời lượng pin. Thiết kế bền bỉ. Mạng 5G si&ecirc;u nhanh. C&ugrave;ng với m&agrave;n h&igrave;nh Super Retina XDR s&aacute;ng hơn.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; M&agrave;n h&igrave;nh Super Retina XDR 6.1 inch<br />\r\n&bull; Chế độ Điện Ảnh l&agrave;m tăng th&ecirc;m độ s&acirc;u trường ảnh n&ocirc;ng v&agrave; tự động thay đổi ti&ecirc;u cự trong video<br />\r\n&bull; Hệ thống camera k&eacute;p ti&ecirc;n tiến với camera Wide v&agrave; Ultra Wide 12MP; Phong C&aacute;ch Nhiếp Ảnh, HDR th&ocirc;ng minh thế hệ 4, chế độ Ban Đ&ecirc;m, khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Chip A15 Bionic cho hiệu năng thần tốc<br />\r\n&bull; Thời gian xem video l&ecirc;n đến 19 giờ<br />\r\n&bull; Thiết kế bền bỉ với Ceramic Shield<br />\r\n&bull; Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường4<br />\r\n&bull; Mạng 5G cho tốc độ tải xuống si&ecirc;u nhanh, xem video v&agrave; nghe nhạc trực tuyến chất lượng cao<br />\r\n&bull; iOS 15 t&iacute;ch hợp nhiều t&iacute;nh năng mới cho ph&eacute;p bạn l&agrave;m được nhiều việc hơn bao giờ hết với iPhone</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;<em>Cần c&oacute; g&oacute;i cước dữ liệu. Mạng 5G chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng 5G, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập apple.com/iphone/cellular. M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n theo đường cong tuyệt đẹp v&agrave; nằm gọn theo một h&igrave;nh chữ nhật chuẩn. Khi t&iacute;nh theo h&igrave;nh chữ nhật chuẩn, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 6.06 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. iPhone 13 c&oacute; khả năng chống nước, chống tia nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529. Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Một số t&iacute;nh năng kh&ocirc;ng khả dụng tại một số quốc gia hoặc khu vực.</em></span></p>\r\n', 1, 24, 50000000, 26, 19, '2022-01-03 09:17:15'),
(94, 'iPhone 13 mini', 20950000, 29500000, 144, 'iPhone 13 mini.1.jpg', 'iPhone 13 mini.4.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 5.4 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c rộng: 12MP, f/1.6<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP, &fnof;/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2,406mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 1080 x 2340 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 131,5 x 64,2 x 7,65mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 13 mini&nbsp;</strong>Hệ thống camera k&eacute;p ti&ecirc;n tiến nhất từng c&oacute; tr&ecirc;n iPhone. Chip A15 Bionic thần tốc. Thời lượng pin tăng vọt. Thiết kế bền bỉ. Mạng 5G si&ecirc;u nhanh. C&ugrave;ng với m&agrave;n h&igrave;nh Super Retina XDR s&aacute;ng hơn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; M&agrave;n h&igrave;nh Super Retina XDR 5.4 inch<br />\r\n&bull; Chế độ Điện Ảnh l&agrave;m tăng th&ecirc;m độ s&acirc;u trường ảnh n&ocirc;ng v&agrave; tự động thay đổi ti&ecirc;u cự trong video<br />\r\n&bull; Hệ thống camera k&eacute;p ti&ecirc;n tiến với camera Wide v&agrave; Ultra Wide 12MP; Phong C&aacute;ch Nhiếp Ảnh, HDR th&ocirc;ng minh thế hệ 4, chế độ Ban Đ&ecirc;m, khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Chip A15 Bionic cho hiệu năng thần tốc<br />\r\n&bull; Thời gian xem video l&ecirc;n đến 17 giờ<br />\r\n&bull; Thiết kế bền bỉ với Ceramic Shield<br />\r\n&bull; Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường<br />\r\n&bull; Mạng 5G cho tốc độ tải xuống si&ecirc;u nhanh, xem video v&agrave; nghe nhạc trực tuyến chất lượng cao<br />\r\n&bull; iOS 15 t&iacute;ch hợp nhiều t&iacute;nh năng mới cho ph&eacute;p bạn l&agrave;m được nhiều việc hơn bao giờ hết với iPhone</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>Cần c&oacute; g&oacute;i cước dữ liệu. Mạng 5G chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng 5G, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập apple.com/iphone/cellular. M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n theo đường cong tuyệt đẹp v&agrave; nằm gọn theo một h&igrave;nh chữ nhật chuẩn. Khi t&iacute;nh theo h&igrave;nh chữ nhật chuẩn, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 5.42 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. iPhone 13 mini c&oacute; khả năng chống nước, chống tia nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529. Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Một số t&iacute;nh năng kh&ocirc;ng khả dụng tại một số quốc gia hoặc khu vực.</em></span></p>\r\n', 1, 3, 41900000, 26, 19, '2022-01-03 09:18:34'),
(95, 'iPhone 12', 22590000, 24000000, 144, 'iPhone 12.png', 'iPhone 12.2.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 6.1 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pixel PDAF, OIS<br />\r\n			&nbsp; 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6&quot;</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 12 MP, f/2.2, 23mm (wide), 1/3.6&quot;<br />\r\n			&nbsp; SL 3D, (depth/biometrics sensor)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Apple A14 Bionic (5 nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 64 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Li-Ion, sạc nhanh 20W, sạc kh&ocirc;ng d&acirc;y 15W, USB Power Delivery 2.0</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; iOS 14.1 hoặc cao hơn (T&ugrave;y v&agrave;o phi&ecirc;n bản ph&aacute;t h&agrave;nh)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 1170 x 2532 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Hexa-core</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 146.7 x 71.5 x 7.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 12&nbsp;</strong>đẩy nhanh mọi t&aacute;c vụ với A14 Bionic, chip nhanh nhất tr&ecirc;n điện thoại th&ocirc;ng minh. Hệ thống camera k&eacute;p mới. Với m&agrave;n h&igrave;nh Super Retina XDR tuyệt đẹp, nay bạn c&oacute; thể chi&ecirc;m ngưỡng từng chi tiết h&igrave;nh ảnh v&ocirc; c&ugrave;ng sống động.</span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Super Retina XDR 6.1 inch</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;Ceramic Shield, chất liệu k&iacute;nh bền chắc nhất từng c&oacute; tr&ecirc;n điện thoại th&ocirc;ng minh</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;A14 Bionic, chip nhanh nhất từng c&oacute; tr&ecirc;n điện thoại th&ocirc;ng minh</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;Hệ thống camera k&eacute;p ti&ecirc;n tiến 12MP với c&aacute;c camera Ultra Wide v&agrave; Wide, chế độ Ban Đ&ecirc;m, Deep Fusion, HDR th&ocirc;ng minh thế hệ 3, khả năng quay video HDR Dolby Vision 4K</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường</span></li>\r\n		<li><span style=\"font-size:16px\">&nbsp;iOS 14 với c&aacute;c tiện &iacute;ch được thiết kế lại tr&ecirc;n M&agrave;n H&igrave;nh Ch&iacute;nh, Thư Viện Ứng Dụng ho&agrave;n to&agrave;n mới, App Clips c&ugrave;ng nhiều t&iacute;nh năng kh&aacute;c</span></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại. D&acirc;y sạc. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>&nbsp;M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 6.06 inch theo đường ch&eacute;o.&nbsp;Diện t&iacute;ch hiển thị thực tế nhỏ hơn. X&aacute;c nhận dựa v&agrave;o mặt trước c&oacute; Ceramic Shield của iPhone 12 so với iPhone thế hệ trước. iPhone 12 c&oacute; khả năng chống tia nước, chống nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529 (chống nước ở độ s&acirc;u tối đa 6 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t). Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng.</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2, 0, 26, 19, '2022-01-03 08:30:25'),
(96, 'iPhone 12 mini', 16000000, 23000000, 252, 'iPhone 12 mini.2.webp', 'iPhone 12 mini.4.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 5.4 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pixel PDAF, OIS<br />\r\n			&nbsp; 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6&quot;</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12 MP, f/2.2, 23mm (wide), 1/3.6&quot;<br />\r\n			&nbsp; SL 3D, (depth/biometrics sensor)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A14 Bionic (5 nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 64 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Li-Ion, sạc nhanh 20W, sạc kh&ocirc;ng d&acirc;y 15W, USB Power Delivery 2.0</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS 14.1 hoặc cao hơn (T&ugrave;y v&agrave;o phi&ecirc;n bản ph&aacute;t h&agrave;nh)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 1080 x 2340 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Hexa-core</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 131.5 x 64.2 x 7.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 12 mini&nbsp;</strong>&nbsp;được trang bị A14 Bionic, chip nhanh nhất tr&ecirc;n điện thoại th&ocirc;ng minh. Hệ thống camera k&eacute;p mới. C&ugrave;ng với m&agrave;n h&igrave;nh Super Retina XDR tuyệt đẹp. Tất cả trong một thiết kế nhỏ hơn.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Super Retina XDR 5.4 inch</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Ceramic Shield, chất liệu k&iacute;nh bền chắc nhất từng c&oacute; tr&ecirc;n điện thoại th&ocirc;ng minh</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;A14 Bionic, chip nhanh nhất từng c&oacute; tr&ecirc;n điện thoại th&ocirc;ng minh</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hệ thống camera k&eacute;p ti&ecirc;n tiến 12MP với c&aacute;c camera Ultra Wide v&agrave; Wide; chế độ Ban Đ&ecirc;m, Deep Fusion, HDR th&ocirc;ng minh thế hệ 3, khả năng quay video HDR Dolby Vision 4K</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;iOS 14 với c&aacute;c tiện &iacute;ch được thiết kế lại tr&ecirc;n M&agrave;n H&igrave;nh Ch&iacute;nh, Thư Viện Ứng Dụng ho&agrave;n to&agrave;n mới, App Clips c&ugrave;ng nhiều t&iacute;nh năng kh&aacute;c</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại. D&acirc;y sạc. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 5.42 inch theo đường ch&eacute;o.Diện t&iacute;ch hiển thị thực tế nhỏ hơn.&nbsp;X&aacute;c nhận dựa v&agrave;o mặt trước c&oacute; Ceramic Shield của iPhone 12 mini so với iPhone thế hệ trước.&nbsp;</em><em>iPhone 12 mini c&oacute; khả năng chống tia nước, chống nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529 (chống nước ở độ s&acirc;u tối đa 6 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t). Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt.&nbsp;Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng.</em></span></p>\r\n', 1, 5, 0, 26, 19, '2022-01-03 08:29:12'),
(97, 'iPhone 11', 18000000, 21000000, 144, 'iPhone 11.1.png', 'iPhone 11.6.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 6.1 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; IPS LCD</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Camera k&eacute;p 12MP:<br />\r\n			&nbsp; - Camera g&oacute;c rộng: &fnof;/1.8 aperture<br />\r\n			&nbsp; - Camera si&ecirc;u rộng: &fnof;/2.4 aperture</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 12 MP, &fnof;/2.2 aperture</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; A13 Bionic</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 64 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 3110 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Nano-SIM + eSIM</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; iOS 13 hoặc cao hơn (T&ugrave;y v&agrave;o phi&ecirc;n bản ph&aacute;t h&agrave;nh)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 1792 x 828 pixel</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Hexa-core</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 150.9mm - 75.7mm - 8.3mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 11&nbsp;</strong>Hệ thống camera k&eacute;p với Ultra Wide. Chế độ Ban Đ&ecirc;m v&agrave; chất lượng video tuyệt vời.&nbsp;&nbsp;Chống nước v&agrave; chống&nbsp;bụi. Thời lượng pin l&acirc;u.&nbsp;Với 6 m&agrave;u tuyệt đẹp. Trải nghiệm iPhone 11.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Liquid Retina HD LCD 6.1 inch</span></li>\r\n	<li><span style=\"font-size:16px\">Chống nước v&agrave; chống bụi (chống nước ở độ s&acirc;u 2 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t, đạt mức IP68)</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hệ thống camera k&eacute;p 12MP với camera Ultra Wide v&agrave; Wide; chế độ Ban Đ&ecirc;m, chế độ Ch&acirc;n Dung, v&agrave; khả năng quay video 4K tốc độ tối đa 60 fps</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Camera trước TrueDepth 12MP với chế độ Ch&acirc;n Dung, c&oacute; khả năng quay video 4K, v&agrave; quay video chậm</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;X&aacute;c thực bảo mật với Face ID</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Chip A13 Bionic với Neural Engine thế hệ thứ ba</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Khả năng sạc nhanh</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Sạc kh&ocirc;ng d&acirc;y</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;iOS 14 với c&aacute;c tiện &iacute;ch được thiết kế lại tr&ecirc;n M&agrave;n H&igrave;nh Ch&iacute;nh, Thư Viện Ứng Dụng ho&agrave;n to&agrave;n mới, App Clips c&ugrave;ng nhiều t&iacute;nh năng kh&aacute;c</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại. D&acirc;y sạc. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>C&aacute;c th&ocirc;ng tin Apple đảm bảo (Ph&aacute;p l&yacute;)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">iPhone 11 c&oacute; khả năng chống tia nước, chống nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529 (chống nước ở độ s&acirc;u tối đa 2 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t). Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn, v&agrave; khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập&nbsp;apple.com/batteries&nbsp;để biết th&ecirc;m th&ocirc;ng tin. M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh iPhone 11 l&agrave; 6.06 inch theo&nbsp;đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Kh&ocirc;ng b&aacute;n k&egrave;m bộ sạc kh&ocirc;ng d&acirc;y Qi.</span></p>\r\n', 1, 7, 18000000, 26, 19, '2022-01-03 08:28:01'),
(98, 'iPhone SE 2020', 11000000, 13000000, 144, 'iPhone SE 2020.2.webp', 'iPhone SE 2020.5.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 4.7 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 12 MP, f/1.8 (wide), PDAF, OIS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 7 MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Apple A13 Bionic (7 nm+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 3 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 64 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Li-Ion 1821 mAh battery (6.96 Wh), Fast charging 18W, 50% in 30 min</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Nano-SIM + eSIM</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; iOS 13</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1334 x 750 pixels (HD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 138.4 x 67.3 x 7.3 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:14px\"><strong>iPhone SE&nbsp;</strong>Chip A13 Bionic mạnh mẽ. Chế độ chụp Ch&acirc;n Dung v&agrave; quay video 4K. M&agrave;n h&igrave;nh Retina HD 4.7 inch&nbsp;tuyệt đẹp v&agrave; Touch ID. C&ugrave;ng với thời lượng pin d&agrave;i. Đ&acirc;y l&agrave; chiếc iPhone nhỏ về k&iacute;ch thước, nhưng khủng về&nbsp;t&iacute;nh năng.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">M&agrave;n h&igrave;nh Retina HD 4.7 inch</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Chống nước v&agrave; chống bụi (chống nước ở độ s&acirc;u 1 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t, đạt mức IP67)</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Camera Wide 12MP; chế độ chụp Ch&acirc;n Dung, hiệu ứng Chiếu S&aacute;ng Ch&acirc;n Dung, Depth Control, HDR th&ocirc;ng minh thế hệ mới v&agrave; quay phim 4K</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Camera trước 7MP với chế độ chụp Ch&acirc;n Dung, hiệu ứng Chiếu S&aacute;ng Ch&acirc;n Dung v&agrave; Depth Control</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;X&aacute;c thực bảo mật với Touch ID</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Chip A13 Bionic với Neural Engine thế hệ thứ ba</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Khả năng sạc nhanh</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;Sạc kh&ocirc;ng d&acirc;y</span></li>\r\n	<li><span style=\"font-size:14px\">&nbsp;iOS 14 với c&aacute;c tiện &iacute;ch được thiết kế lại tr&ecirc;n M&agrave;n H&igrave;nh Ch&iacute;nh, Thư Viện Ứng Dụng ho&agrave;n to&agrave;n mới, App Clips c&ugrave;ng nhiều t&iacute;nh năng kh&aacute;c</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Điện thoại. D&acirc;y sạc. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><em><strong>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</strong>&nbsp;</em></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><em>K&iacute;ch thước m&agrave;n h&igrave;nh t&iacute;nh theo đường ch&eacute;o.&nbsp;Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. iPhone SE c&oacute; khả năng chống tia nước, chống nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t. iPhone SE đạt mức IP67 theo ti&ecirc;u chuẩn IEC 60529 (chống nước ở độ s&acirc;u tối đa 1 m&eacute;t trong v&ograve;ng 30 ph&uacute;t). Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn, v&agrave; khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Kh&ocirc;ng b&aacute;n k&egrave;m bộ sạc kh&ocirc;ng d&acirc;y Qi.</em></span></p>\r\n', 1, 3, 0, 26, 19, '2022-01-03 08:20:13');
INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(99, 'iPhone 13 Pro', 29000000, 40000000, 144, 'iPhone 13 Pro.1.jpg', 'iPhone 13 Pro.2.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 6.1 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; OLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c rộng: 12MP, &fnof;/1.5<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP, &fnof;/1.8<br />\r\n			&nbsp; Camera tele : 12MP, /2.8</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 12MP, &fnof;/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 6 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 3,095mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS15</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 1170 x 2532 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 146,7 x 71.5 x 7,65mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPhone 13 Pro&nbsp;</strong>Một n&acirc;ng cấp hệ thống camera chuy&ecirc;n nghiệp ho&agrave;nh tr&aacute;ng chưa từng c&oacute; của Apple. M&agrave;n h&igrave;nh Super Retina XDR với ProMotion cho cảm gi&aacute;c nhanh nhạy hơn. Chip A15 Bionic thần tốc. Mạng 5G si&ecirc;u nhanh. Thiết kế bền bỉ v&agrave; thời lượng pin tăng vọt.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; M&agrave;n h&igrave;nh Super Retina XDR 6.1 inch với ProMotion cho cảm gi&aacute;c nhanh nhạy hơn<br />\r\n&bull; Chế độ Điện Ảnh l&agrave;m tăng th&ecirc;m độ s&acirc;u trường ảnh n&ocirc;ng v&agrave; tự động thay đổi ti&ecirc;u cự trong video<br />\r\n&bull; Hệ thống camera chuy&ecirc;n nghiệp Telephoto, Wide v&agrave; Ultra Wide 12MP; LiDAR Scanner; phạm vi thu ph&oacute;ng quang học 6x; chụp ảnh macro; Phong C&aacute;ch Nhiếp Ảnh, video ProRes,3 HDR th&ocirc;ng minh thế hệ 4, chế độ Ban Đ&ecirc;m, Apple ProRAW, khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K<br />\r\n&bull; Chip A15 Bionic cho hiệu năng thần tốc<br />\r\n&bull; Thời gian xem video l&ecirc;n đến 22 giờ<br />\r\n&bull; Thiết kế bền bỉ với Ceramic Shield<br />\r\n&bull; Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường<br />\r\n&bull; Mạng 5G cho tốc độ tải xuống si&ecirc;u nhanh, xem video v&agrave; nghe nhạc trực tuyến chất lượng cao<br />\r\n&bull; iOS 15 t&iacute;ch hợp nhiều t&iacute;nh năng mới cho ph&eacute;p bạn l&agrave;m được nhiều việc hơn bao giờ hết với iPhone</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;<em>Cần c&oacute; g&oacute;i cước dữ liệu. Mạng 5G chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng 5G, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập apple.com/iphone/cellular. M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n theo đường cong tuyệt đẹp v&agrave; nằm gọn theo một h&igrave;nh chữ nhật chuẩn. Khi t&iacute;nh theo h&igrave;nh chữ nhật chuẩn, k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 6.06 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Sắp ra mắt. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. iPhone 13 Pro c&oacute; khả năng chống nước, chống tia nước v&agrave; chống bụi. Sản phẩm đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t đạt mức IP68 theo ti&ecirc;u chuẩn IEC 60529. Khả năng chống tia nước, chống nước v&agrave; chống bụi kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn. Khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi iPhone đang bị ướt. Vui l&ograve;ng tham khảo hướng dẫn sử dụng để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; m&aacute;y. Kh&ocirc;ng bảo h&agrave;nh sản phẩm bị hỏng do thấm chất lỏng. Một số t&iacute;nh năng kh&ocirc;ng khả dụng tại một số quốc gia hoặc khu vực.</em></span></p>\r\n', 1, 3, 0, 26, 19, '2022-01-03 09:19:35'),
(100, 'iPad gen 9 (2021)', 11000000, 17000000, 144, 'iPad gen 9 (2021).2.jpg', 'iPad gen 9 (2021).3.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 10.2 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Liquid Retina</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c si&ecirc;u rộng 8MP, &fnof;/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; Apple A13 Bionic (7 nm+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 8557 mAh (32.4 Wh)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; iOS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2160 x 1620 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 2x2.65 GHz Lightning + 4x1.8 GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:14px\">&nbsp; 250.6 x 174.1 x 7.5 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad Gen 9 (2021)&nbsp;</strong>Mạnh mẽ. Dễ sử dụng. Đa năng. Học sinh th&iacute;ch học với iPad mới. Với chip A13 Bionic mạnh mẽ, thời lượng pin bền bỉ cả ng&agrave;y,&nbsp;m&agrave;n h&igrave;nh Retina 10.2 inch tuyệt đẹp, Wi-Fi si&ecirc;u nhanh, camera trước Ultra Wide với t&iacute;nh năng Trung T&acirc;m M&agrave;n H&igrave;nh, v&agrave; tương th&iacute;ch với Apple Pencil v&agrave; the Smart Keyboard.&nbsp;iPad gi&uacute;p học sinh l&agrave;m việc v&agrave; học tập nhiều hơn v&agrave; dễ d&agrave;ng hơn. Tất cả t&iacute;nh năng với mức gi&aacute; ấn tượng.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Chip A13 Bionic với Neural Engine cho sức mạnh để xử l&yacute; mọi khối lượng b&agrave;i tập</span></li>\r\n	<li><span style=\"font-size:16px\">Bộ lưu trữ l&ecirc;n tới 256GB để lưu trữ t&agrave;i liệu học tập, ảnh, video v&agrave; game</span></li>\r\n	<li><span style=\"font-size:16px\">iPad lu&ocirc;n sẵn s&agrave;ng phục vụ mục đ&iacute;ch học tập hay giải tr&iacute; với thời lượng pin bền bỉ cả ng&agrave;y</span></li>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Retina 10.2 inch tuyệt đẹp với c&ocirc;ng nghệ True Tone cho bạn kh&ocirc;ng gian m&agrave;n h&igrave;nh thoải m&aacute;i để l&agrave;m b&agrave;i tập</span></li>\r\n	<li><span style=\"font-size:16px\">Wi-Fi 6 (802.11ax) v&agrave; dữ liệu di động LTE chuẩn Gigabit khi kh&ocirc;ng c&oacute; WI-FI</span></li>\r\n	<li><span style=\"font-size:16px\">Camera trước Ultra Wide 12MP với t&iacute;nh năng Trung T&acirc;m M&agrave;n H&igrave;nh cho c&aacute;c cuộc gọi video l&ocirc;i cuốn hơn</span></li>\r\n	<li><span style=\"font-size:16px\">Tương th&iacute;ch với Apple Pencil (thế hệ thứ 1) v&agrave; Smart Keyboard</span></li>\r\n	<li><span style=\"font-size:16px\">iPadOS 15 sở hữu sức mạnh độc đ&aacute;o, dễ sử dụng v&agrave; được thiết kế cho t&iacute;nh đa năng của iPad</span></li>\r\n	<li><span style=\"font-size:16px\">Bền bỉ với thời gian để gi&uacute;p bạn tiết kiệm chi ph&iacute; v&agrave; bảo vệ m&ocirc;i trường</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>Ứng dụng c&oacute; sẵn tr&ecirc;n App Store. Nội dung được cung cấp c&oacute; thể thay đổi.&nbsp;Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập&nbsp;<a href=\"http://apple.com/batteries\" rel=\"noopener\">apple.com/batteries</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin.&nbsp;Phụ kiện được b&aacute;n ri&ecirc;ng. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.&nbsp;Cần c&oacute; g&oacute;i cước dữ liệu. Mạng LTE chuẩn Gigabit, 4G LTE Advanced, 4G LTE v&agrave; gọi Wi-Fi chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ phụ thuộc v&agrave;o th&ocirc;ng lượng l&yacute; thuyết v&agrave; c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng LTE, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập&nbsp;<a href=\"http://apple.com/ipad/cellular\" rel=\"noopener\">apple.com/ipad/cellular</a>.</em></span></p>\r\n', 1, 9, 0, 26, 16, '2022-01-03 09:20:59'),
(101, 'iPad mini 6 (2021)', 15750000, 22300000, 288, 'iPad mini 6 (2021).2.jpg', 'iPad mini 6 (2021).3.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 8.3 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; Liquid Retina</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 12MP khẩu độ f/1.8</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 12MP g&oacute;c rộng</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; A15 Bionic</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 4 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 64 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; iPadOS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 2266 x 1488 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align: left;\"><span style=\"font-size:16px\">&nbsp; 195.4 &times; 134.8 &times; 6.3mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad mini 6 (2021)&nbsp;</strong>iPad mini mới. Thiết kế m&agrave;n h&igrave;nh to&agrave;n phần với m&agrave;n h&igrave;nh Liquid Retina 8.3 inch.&nbsp;Chip A15 Bionic mạnh mẽ với Neural Engine. Camera trước Ultra Wide 12MP với t&iacute;nh năng Trung T&acirc;m M&agrave;n H&igrave;nh. Cổng kết nối USB-C. Mạng 5G si&ecirc;u nhanh.&nbsp;Ghi ch&uacute;, đ&aacute;nh dấu t&agrave;i liệu hoặc ph&aacute;c thảo ngay khi những &yacute; tưởng lớn xuất hiện trong đầu với Apple Pencil (thế hệ thứ 2) c&oacute; khả năng gắn kết bằng nam ch&acirc;m v&agrave; sạc kh&ocirc;ng d&acirc;y.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Liquid Retina 8.3 inch tuyệt đẹp với True Tone v&agrave; dải m&agrave;u rộng</span></li>\r\n	<li><span style=\"font-size:16px\">Chip A15 Bionic với Neural Engine</span></li>\r\n	<li><span style=\"font-size:16px\">X&aacute;c thực bảo mật với Touch ID</span></li>\r\n	<li><span style=\"font-size:16px\">Camera sau Wide 12MP, camera trước Ultra Wide 12MP với t&iacute;nh năng Trung T&acirc;m M&agrave;n H&igrave;nh</span></li>\r\n	<li><span style=\"font-size:16px\">Hiện c&oacute; c&aacute;c m&agrave;u t&iacute;m, &aacute;nh sao, hồng v&agrave; x&aacute;m bạc</span></li>\r\n	<li><span style=\"font-size:16px\">Loa stereo ở cạnh tr&ecirc;n v&agrave; cạnh dưới&nbsp;</span></li>\r\n	<li><span style=\"font-size:16px\">Mạng 5G cho tốc độ tải xuống, xem video v&agrave; nghe nhạc trực tuyến nhanh như chớp</span></li>\r\n	<li><span style=\"font-size:16px\">Lu&ocirc;n kết nối với Wi-Fi 6 si&ecirc;u nhanh</span></li>\r\n	<li><span style=\"font-size:16px\">Thời lượng pin l&ecirc;n tới 10 giờ</span></li>\r\n	<li><span style=\"font-size:16px\">Cổng kết nối USB-C để sạc v&agrave; kết nối phụ kiện</span></li>\r\n	<li><span style=\"font-size:16px\">Tương th&iacute;ch với Apple Pencil (thế hệ thứ 2)</span></li>\r\n	<li><span style=\"font-size:16px\">iPadOS 15 sở hữu sức mạnh độc đ&aacute;o, dễ sử dụng v&agrave; được thiết kế cho t&iacute;nh đa năng của iPad</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em>&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo đường ch&eacute;o h&igrave;nh chữ nhật, m&agrave;n h&igrave;nh iPad mini 8.3 inch c&oacute; k&iacute;ch thước l&agrave; 8.3 inch. Diện t&iacute;ch hiển thị thực tế nhỏ hơn.&nbsp;Cần c&oacute; g&oacute;i cước dữ liệu. Mạng 5G, LTE Gigabit, LTE v&agrave; gọi Wi-Fi chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ phụ thuộc v&agrave;o th&ocirc;ng lượng l&yacute; thuyết v&agrave; c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng 5G v&agrave; LTE, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập&nbsp;<a href=\"http://apple.com/ipad/cellular\" rel=\"noopener\">apple.com/ipad/cellular</a>.&nbsp;Phụ kiện được b&aacute;n ri&ecirc;ng. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.&nbsp;Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập&nbsp;<a href=\"http://www.apple.com/batteries\" rel=\"noopener\">apple.com/batteries</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin.</em></span></p>\r\n', 1, 14, 0, 26, 16, '2022-01-03 09:21:53'),
(102, 'iPad Pro 11 inch', 22000000, 24000000, 144, 'iPad Pro 11 inch.1.png', 'iPad Pro 11 inch.2.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">11 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">IPS LCD</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">12MP g&oacute;c rộng<br />\r\n			10MP g&oacute;c si&ecirc;u rộng</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">12MP g&oacute;c si&ecirc;u rộng 122 độ</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Apple M1 8 nh&acirc;n</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">7538mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">iPadOS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp;&nbsp;</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">2048 x 2732 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">8 nh&acirc;n CPU</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">247.6 x 178.5 x 5.9 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad Pro 11 inch (2021)</strong>&nbsp;Chip Apple M1 si&ecirc;u mạnh mẽ. M&agrave;n h&igrave;nh Liquid Retina 11 inch tuyệt đẹp. Kết nối kh&ocirc;ng d&acirc;y si&ecirc;u nhanh. Thắt d&acirc;y an to&agrave;n v&agrave;o đi n&agrave;o.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Chip Apple M1 n&acirc;ng hiệu suất l&ecirc;n một đẳng cấp mới</span></li>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Liquid Retina 11 inch tuyệt đẹp với ProMotion, True Tone v&agrave; dải m&agrave;u rộng P3</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hệ thống camera TrueDepth với camera trước Ultra Wide t&iacute;ch hợp t&iacute;nh năng Trung T&acirc;m S&acirc;n Khấu</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Camera Wide 12MP, camera Ultra Wide 10MP v&agrave; LiDAR Scanner cho trải nghiệm thực tế ảo tăng cường sống động</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Lu&ocirc;n kết nối với Wi-Fi 6 si&ecirc;u nhanh v&agrave; mạng LTE</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;L&agrave;m được nhiều việc hơn với thời lượng pin bền bỉ cả ng&agrave;y</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Cổng Thunderbolt cho kết nối nhanh với bộ nhớ ngo&agrave;i, m&agrave;n h&igrave;nh v&agrave; dock</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;X&aacute;c thực bảo mật với Face ID</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Bốn loa &acirc;m thanh v&agrave; năm micro chuẩn studio</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hỗ trợ Apple Pencil (thế hệ thứ 2), Magic Keyboard v&agrave; Smart Keyboard Folio</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;iPadOS mạnh mẽ, trực quan v&agrave; được thiết kế ri&ecirc;ng cho iPad</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hơn 1 triệu ứng dụng tr&ecirc;n App Store d&agrave;nh ri&ecirc;ng cho iPad</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y t&iacute;nh bảng. D&acirc;y sạc. Củ sạc 18W. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh iPad Pro 12.9 inch l&agrave; 12.9 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn.&nbsp;Cần c&oacute; g&oacute;i cước dữ liệu. Li&ecirc;n hệ với nh&agrave; mạng tại thị trường của bạn để biết th&ecirc;m chi tiết. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. Phụ kiện được b&aacute;n ri&ecirc;ng. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.</em></span></p>\r\n', 1, 2, 0, 26, 16, '2021-12-29 06:57:06'),
(103, 'iPad Pro 12.9 inch', 28000000, 30000000, 144, 'iPad Pro 12.9 inch.png', 'iPad Pro 12.9 inch.png', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">11 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">IPS LCD</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">12MP g&oacute;c rộng<br />\r\n			10MP g&oacute;c si&ecirc;u rộng</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">12MP g&oacute;c si&ecirc;u rộng 122 độ</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Apple M1 8 nh&acirc;n</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">512 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">7538mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">iPadOS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp; &nbsp;</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">2048 x 2732 pixels</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">8 nh&acirc;n CPU</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">247.6 x 178.5 x 5.9 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad</strong><strong>&nbsp;Pro 12.9 inch (2021)&nbsp;</strong>Chiếc iPad đỉnh cao với chip Apple M1 si&ecirc;u mạnh, m&agrave;n h&igrave;nh Liquid Retina XDR 12.9 inch sống động, kết nối kh&ocirc;ng d&acirc;y si&ecirc;u nhanh. Thắt d&acirc;y an to&agrave;n v&agrave;o đi n&agrave;o.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Chip Apple M1 n&acirc;ng hiệu suất l&ecirc;n một đẳng cấp mới</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;M&agrave;n h&igrave;nh Liquid Retina XDR 12.9 inch lộng lẫy với ProMotion, True Tone v&agrave; dải m&agrave;u rộng P3</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hệ thống camera TrueDepth với camera trước Ultra Wide t&iacute;ch hợp t&iacute;nh năng Trung T&acirc;m S&acirc;n Khấu</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Camera Wide 12MP, camera Ultra Wide 10MP v&agrave; LiDAR Scanner cho trải nghiệm thực tế ảo tăng cường sống động</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Lu&ocirc;n kết nối với Wi-Fi 6 si&ecirc;u nhanh v&agrave; mạng LTE</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;L&agrave;m được nhiều việc hơn với thời lượng pin bền bỉ cả ng&agrave;y</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Cổng Thunderbolt cho kết nối nhanh với bộ nhớ ngo&agrave;i, m&agrave;n h&igrave;nh v&agrave; dock</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;X&aacute;c thực bảo mật với Face ID</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Bốn loa &acirc;m thanh v&agrave; năm micro chuẩn studio</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hỗ trợ Apple Pencil (thế hệ thứ 2), Magic Keyboard v&agrave; Smart Keyboard Folio&nbsp;</span></li>\r\n	<li><span style=\"font-size:16px\">iPadOS mạnh mẽ, trực quan v&agrave; được thiết kế ri&ecirc;ng cho iPad</span></li>\r\n	<li><span style=\"font-size:16px\">&nbsp;Hơn 1 triệu ứng dụng tr&ecirc;n App Store d&agrave;nh ri&ecirc;ng cho iPad</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y t&iacute;nh bảng. D&acirc;y sạc. Củ sạc 18W. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh iPad Pro 12.9 inch l&agrave; 12.9 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Cần c&oacute; g&oacute;i cước dữ liệu. Li&ecirc;n hệ với nh&agrave; mạng tại thị trường của bạn để biết th&ecirc;m chi tiết. Tốc độ c&oacute; thể thay đổi t&ugrave;y địa điểm. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. Phụ kiện được b&aacute;n ri&ecirc;ng. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.</em></span></p>\r\n', 1, 5, 0, 26, 16, '2021-12-29 06:57:31'),
(104, 'iPad Air 4', 19000000, 20000000, 216, 'iPad Air 4.1.png', 'iPad Air 4.3.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\">K&iacute;ch thước m&agrave;n h&igrave;nh</th>\r\n			<th style=\"text-align:left\">10.9 inches</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</th>\r\n			<th style=\"text-align:left\">IPS LCD</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Camera sau</th>\r\n			<th style=\"text-align:left\">12 MP g&oacute;c rộng,khẩu độ f/1.8</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Camera trước</th>\r\n			<th style=\"text-align:left\">7 MP, khẩu độ f/2.2</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Chipset</th>\r\n			<th style=\"text-align:left\">Apple A14 Bionic</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Bộ nhớ trong</th>\r\n			<th style=\"text-align:left\">256 GB</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Pin</th>\r\n			<th style=\"text-align:left\">Khoảng 7600 mAh</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Hệ điều h&agrave;nh</th>\r\n			<th style=\"text-align:left\">iOS</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp; &nbsp;</th>\r\n			<th style=\"text-align:left\">1640 x 2360 pixels</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Loại CPU</th>\r\n			<th style=\"text-align:left\">2 nh&acirc;n 3.0GHz<br />\r\n			4 nh&acirc;n 1.8GHz</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">K&iacute;ch thước</th>\r\n			<th style=\"text-align:left\">D&agrave;i 247.6 mm - Ngang 178.5 mm - D&agrave;y 6.1 mm&nbsp;&nbsp;</th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad Air 2020&nbsp;</strong>M&agrave;n h&igrave;nh Liquid Retina 10.9 inch tuyệt đẹp v&agrave; c&ocirc;ng nghệ True Tone cho bạn những trải nghiệm thị gi&aacute;c thật dễ chịu. Chip A14 Bionic mới c&ugrave;ng c&ocirc;ng nghệ Neural Engine l&agrave; nền tảng sức mạnh gi&uacute;p bạn bi&ecirc;n tập video 4K, soạn nhạc v&agrave; giải tr&iacute; c&ugrave;ng c&aacute;c tr&ograve; chơi đẳng cấp, mọi t&aacute;c vụ đều trở n&ecirc;n v&ocirc; c&ugrave;ng đơn giản. Touch ID nhanh nhạy v&agrave; dễ sử dụng với t&iacute;nh năng bảo mật cao, hệ thống camera hiện đại, USB-C, hỗ trợ đa dạng phụ kiện kể cả Magic Keyboard v&agrave; Apple Pencil (thế hệ thứ 2).</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; M&agrave;n h&igrave;nh Liquid Retina 10.9 inch sắc n&eacute;t với True Tone v&agrave; dải m&agrave;u rộng P3<br />\r\n&bull; Chip A14 Bionic với Neural Engine<br />\r\n&bull; X&aacute;c thực bảo mật với Touch ID<br />\r\n&bull; Camera sau 12MP, camera trước FaceTime HD 7MP<br />\r\n&bull; Hiện c&oacute; c&aacute;c m&agrave;u Bạc, X&aacute;m Bạc, Hồng Kim, Xanh L&aacute; v&agrave; Xanh Da Trời<br />\r\n&bull; &Acirc;m thanh stereo rộng<br />\r\n&bull; Wi-Fi 6 (802.11ax) v&agrave; dữ liệu di động LTE Gigabit<br />\r\n&bull; Thời lượng pin l&ecirc;n đến 10 giờ<br />\r\n&bull; Cổng kết nối USB-C để sạc v&agrave; kết nối phụ kiện<br />\r\n&bull; Hỗ trợ Magic Keyboard, Smart Keyboard Folio v&agrave; Apple Pencil (thế hệ thứ 2)<br />\r\n&bull; iPadOS 14 mang đến cho bạn c&aacute;c chức năng mới được thiết kế d&agrave;nh ri&ecirc;ng cho iPad</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp; M&aacute;y t&iacute;nh bảng. D&acirc;y sạc. Củ sạc 20W. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute; )</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh iPad Air (thế hệ thứ 4) l&agrave; 10.86 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn. Kh&ocirc;ng b&aacute;n k&egrave;m phụ kiện. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập&nbsp;apple.com/batteries</em><em>&nbsp;để biết th&ecirc;m th&ocirc;ng tin. Cần c&oacute; g&oacute;i cước dữ liệu. Mạng LTE Gigabit, 4G LTE Advanced, 4G LTE v&agrave; gọi Wi-Fi chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ phụ thuộc v&agrave;o th&ocirc;ng lượng l&yacute; thuyết v&agrave; c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng LTE, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập&nbsp;</em><em>apple.com/ipad/LTE.</em></span></p>\r\n', 1, 2, 0, 26, 16, '2021-12-28 11:29:48'),
(105, 'iPad Pro 2020', 30000000, 32000000, 144, 'iPad-Pro-2020.png', 'iPad Pro 2020.3.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">11 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">12 MP g&oacute;c rộng,khẩu độ f/1.8<br />\r\n			10 MP g&oacute;c si&ecirc;u rộng, f/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">7 MP khẩu độ f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Apple A12Z Bionic</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">6 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Khoảng 7600 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">iOS</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp; &nbsp;</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">1668 x 2388 pixel</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">4 nh&acirc;n 2.5GHz<br />\r\n			4 nh&acirc;n 1.6GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">D&agrave;i 247.6 mm - Ngang 178.5 mm - D&agrave;y 5.9 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=\"font-size:16px\"><strong>iPad Pro 12.9 inch (2020)&nbsp;</strong>Đ&acirc;y l&agrave; iPad Pro. Sở hữu m&agrave;n h&igrave;nh di động t&acirc;n tiến nhất thế giới. Sở hữu hệ camera chuy&ecirc;n nghiệp c&oacute; thể biến đổi thực tế. Tốc độ ấn tượng vượt mặt nhiều m&aacute;y t&iacute;nh x&aacute;ch tay PC. Bạn c&oacute; thể sử dụng m&aacute;y với thao t&aacute;c chạm, b&uacute;t cảm ứng, b&agrave;n ph&iacute;m, v&agrave; nay với cả chuột hoặc b&agrave;n di.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Liquid Retina 12.9 inch tr&agrave;n cạnh1 với ProMotion, True Tone v&agrave; dải m&agrave;u rộng P3</span></li>\r\n	<li><span style=\"font-size:16px\">Chip A12Z Bionic với Neural Engine</span></li>\r\n	<li><span style=\"font-size:16px\">Camera Wide 12MP, camera Ultra Wide 10MP v&agrave; LiDAR Scanner</span></li>\r\n	<li><span style=\"font-size:16px\">Camera trước TrueDepth 7MP</span></li>\r\n	<li><span style=\"font-size:16px\">X&aacute;c thực bảo mật với Face ID</span></li>\r\n	<li><span style=\"font-size:16px\">Bốn loa &acirc;m thanh v&agrave; năm micro chuẩn studio</span></li>\r\n	<li><span style=\"font-size:16px\">Wi-Fi 6 (802.11ax) v&agrave; dữ liệu di động LTE Gigabit</span></li>\r\n	<li><span style=\"font-size:16px\">Thời lượng pin l&ecirc;n đến 10 giờ</span></li>\r\n	<li><span style=\"font-size:16px\">Cổng kết nối USB-C để sạc v&agrave; kết nối phụ kiện</span></li>\r\n	<li><span style=\"font-size:16px\">Hỗ trợ Magic Keyboard, Smart Keyboard Folio v&agrave; Apple Pencil (thế hệ thứ 2)</span></li>\r\n	<li><span style=\"font-size:16px\">iPadOS 14 mang đến cho bạn c&aacute;c chức năng mới được thiết kế d&agrave;nh ri&ecirc;ng cho iPad</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Bộ sản phẩm bao gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y t&iacute;nh bảng. D&acirc;y sạc. Củ sạc 18W. HDSD bảo h&agrave;nh điện tử 12 th&aacute;ng</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>M&agrave;n h&igrave;nh c&oacute; c&aacute;c g&oacute;c bo tr&ograve;n. Khi t&iacute;nh theo h&igrave;nh chữ nhật, k&iacute;ch thước m&agrave;n h&igrave;nh iPad Pro 12.9 inch l&agrave; 12.9 inch theo đường ch&eacute;o. Diện t&iacute;ch hiển thị thực tế nhỏ hơn.&nbsp;Cần c&oacute; g&oacute;i cước dữ liệu. Mạng LTE Gigabit, 4G LTE Advanced, 4G LTE v&agrave; gọi Wi-Fi chỉ khả dụng ở một số thị trường v&agrave; được cung cấp qua một số nh&agrave; mạng. Tốc độ phụ thuộc v&agrave;o th&ocirc;ng lượng l&yacute; thuyết v&agrave; c&oacute; thể thay đổi t&ugrave;y địa điểm v&agrave; nh&agrave; mạng. Để biết th&ocirc;ng tin về hỗ trợ mạng LTE, vui l&ograve;ng li&ecirc;n hệ nh&agrave; mạng v&agrave; truy cập apple.com/ipad/LTE. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. Kh&ocirc;ng b&aacute;n k&egrave;m phụ kiện. Khả năng tương th&iacute;ch t&ugrave;y thuộc thế hệ sản phẩm.</em></span></p>\r\n', 1, 2, 0, 26, 16, '2021-12-28 11:28:45'),
(108, 'AirPods (gen 3)', 5000000, 5000000, 36, 'AirPods (gen 3).5.jpg', 'AirPods (gen 3).4.jpg', 0, '<p><strong><span style=\"font-size:16px\">Sản ph&acirc;̉m chính hãng</span></strong></p>\r\n\r\n<p><strong><span style=\"color:#e74c3c\"><span style=\"font-size:16px\">QU&Agrave; KHUYẾN MẠI</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Khuyến m&atilde;i</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><strong>Nhận g&oacute;i 6 th&aacute;ng Apple Music miễn ph&iacute; khi bạn mua AirPods (gen3). *</strong></span></li>\r\n	<li><span style=\"font-size:16px\">Trả g&oacute;p 0% l&atilde;i suất thẻ t&iacute;n dụng<br />\r\n	<em>* (Lưu &yacute;: Chương tr&igrave;nh KM t&iacute;nh tr&ecirc;n gi&aacute; ni&ecirc;m yết, kh&ocirc;ng &aacute;p dụng chung với KM kh&aacute;c)</em></span></li>\r\n</ul>\r\n', '<p><span style=\"font-size:16px\"><strong>AirPosds (gen 3)&nbsp;</strong>Giới thiệu AirPods ho&agrave;n to&agrave;n mới. Sở hữu t&iacute;nh năng &acirc;m thanh kh&ocirc;ng gian đưa &acirc;m nhạc đến quanh bạn,&nbsp;EQ th&iacute;ch ứng điều chỉnh nhạc hướng v&agrave;o tai bạn v&agrave; thời lượng pin l&acirc;u hơn.&nbsp;Tai nghe c&oacute; khả năng chống mồ h&ocirc;i v&agrave; chống nước, mang đến cho bạn trải nghiệm tuyệt vời.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Chế độ &acirc;m thanh kh&ocirc;ng gian với t&iacute;nh năng theo d&otilde;i chuyển động của đầu đưa &acirc;m thanh đến quanh bạn</span></li>\r\n	<li><span style=\"font-size:16px\">EQ th&iacute;ch ứng sẽ tự động điều chỉnh nhạc hướng v&agrave;o tai bạn</span></li>\r\n	<li><span style=\"font-size:16px\">Thiết kế c&oacute; đường viền ho&agrave;n to&agrave;n mới</span></li>\r\n	<li><span style=\"font-size:16px\">Cảm biến lực gi&uacute;p bạn dễ d&agrave;ng điều khiển chương tr&igrave;nh giải tr&iacute;, trả lời hoặc kết th&uacute;c cuộc gọi, v&agrave; thực hiện nhiều t&aacute;c vụ kh&aacute;c</span></li>\r\n	<li><span style=\"font-size:16px\">Chống mồ h&ocirc;i v&agrave; chống nước</span></li>\r\n	<li><span style=\"font-size:16px\">Thời gian nghe l&ecirc;n đến 6 giờ với một lần sạc</span></li>\r\n	<li><span style=\"font-size:16px\">Tổng thời gian nghe l&ecirc;n đến 30 giờ với Hộp Sạc MagSafe</span></li>\r\n	<li><span style=\"font-size:16px\">Thiết lập dễ d&agrave;ng, c&oacute; khả năng nhận biết khi đeo, v&agrave; tự động chuyển đổi để mang lại trải nghiệm tuyệt vời</span></li>\r\n	<li><span style=\"font-size:16px\">Dễ d&agrave;ng chia sẻ &acirc;m thanh giữa hai bộ AirPods tr&ecirc;n iPhone, iPad, iPod touch hoặc Apple TV</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</em>&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>Chế độ &acirc;m thanh kh&ocirc;ng gian ph&ugrave; hợp để xem phim, TV v&agrave; video tr&ecirc;n c&aacute;c ứng dụng được hỗ trợ. Cần c&oacute; iPhone hoặc iPad.&nbsp;Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập&nbsp;<a href=\"https://www.apple.com/batteries/\" rel=\"noopener\">apple.com/batteries</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin.&nbsp;AirPods (thế hệ thứ 3) c&oacute; khả năng chống mồ h&ocirc;i v&agrave; chống nước, c&oacute; thể sử dụng trong c&aacute;c m&ocirc;n thể thao v&agrave; luyện tập kh&ocirc;ng li&ecirc;n quan đến nước. AirPods (thế hệ thứ 3) đ&atilde; qua kiểm nghiệm trong điều kiện ph&ograve;ng th&iacute; nghiệm c&oacute; kiểm so&aacute;t v&agrave; đạt mức IPX4 theo ti&ecirc;u chuẩn IEC 60529. Khả năng chống mồ h&ocirc;i v&agrave; chống nước kh&ocirc;ng phải l&agrave; c&aacute;c điều kiện vĩnh viễn, v&agrave; khả năng n&agrave;y c&oacute; thể giảm do hao m&ograve;n th&ocirc;ng thường. Kh&ocirc;ng sạc pin khi AirPods (thế hệ thứ 3) đang bị ướt. Vui l&ograve;ng tham khảo&nbsp;<a href=\"https://support.apple.com/kb/HT210711\" rel=\"nofollow\">https://support.apple.com/kb/HT210711</a>&nbsp;để biết c&aacute;ch lau sạch v&agrave; l&agrave;m kh&ocirc; sản phẩm.&nbsp;Cần c&oacute; t&agrave;i khoản iCloud v&agrave; macOS 15.1, iOS 15.1, iPadOS, watchOS 8.1, hoặc tvOS 15.1 trở l&ecirc;n.</em></span></p>\r\n', 1, 16, 5000000, 26, 18, '2022-01-02 11:42:24');
INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(109, 'AirPods Max', 12000000, 14000000, 180, 'AirPods Max1.webp', 'AirPods Max2.webp', 0, '<p><span style=\"font-size:14px\"><strong>AirPods Max</strong>&nbsp;định nghĩa lại tai nghe chụp tai. Driver loa do Apple thiết kế cho &acirc;m thanh c&oacute; độ trung thực cao. Mọi chi tiết, từ gọng đeo đến đệm tai, đều được thiết kế vừa vặn lạ thường. T&iacute;nh năng Chủ Động Khử Tiếng Ồn dẫn đầu thị trường gi&uacute;p ngăn chặn c&aacute;c &acirc;m thanh b&ecirc;n ngo&agrave;i lọt v&agrave;o tai trong khi Chế Độ Xuy&ecirc;n &Acirc;m cho ph&eacute;p bạn nghe &acirc;m thanh xung quanh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&bull;&nbsp;&nbsp;Driver loa điện động do Apple thiết kế cho &acirc;m thanh c&oacute; độ trung thực cao<br />\r\n&bull; T&iacute;nh năng Chủ Động Khử Tiếng Ồn gi&uacute;p ngăn chặn c&aacute;c &acirc;m thanh b&ecirc;n ngo&agrave;i lọt v&agrave;o tai để bạn c&oacute; thể đắm ch&igrave;m v&agrave;o &acirc;m nhạc<br />\r\n&bull; Chế Độ Xuy&ecirc;n &Acirc;m gi&uacute;p bạn nghe v&agrave; tương t&aacute;c với thế giới xung quanh<br />\r\n&bull; Chế độ &acirc;m thanh kh&ocirc;ng gian với t&iacute;nh năng theo d&otilde;i chuyển động của đầu đem đến &acirc;m thanh v&ograve;m giống như bạn đang ở trong rạp h&aacute;t<br />\r\n&bull; &Acirc;m thanh điện to&aacute;n kết hợp thiết kế &acirc;m t&ugrave;y chỉnh với phần mềm v&agrave; chip Apple H1 tạo ra trải nghiệm nghe đột ph&aacute;<br />\r\n&bull; Gọng đeo c&oacute; lưới đan tho&aacute;ng kh&iacute; v&agrave; đệm tai bằng foam hoạt t&iacute;nh vừa vặn lạ thường<br />\r\n&bull; Trải nghiệm tuyệt vời, thiết lập dễ d&agrave;ng, t&iacute;nh năng nhận biết khi đeo v&agrave; chuyển đổi mượt m&agrave; giữa c&aacute;c thiết bị<br />\r\n&bull; Dễ d&agrave;ng chia sẻ &acirc;m thanh giữa hai bộ AirPods tr&ecirc;n iPhone, iPad, iPod touch hoặc Apple TV<br />\r\n&bull; Thời gian nghe nhạc, xem video hoặc đ&agrave;m thoại 20 giờ khi bật t&iacute;nh năng Chủ Động Khử Tiếng Ồn v&agrave; &acirc;m thanh kh&ocirc;ng gian<br />\r\n&bull; Bảo quản thiết bị ở chế độ pin cực thấp với Smart Case mỏng nhẹ<br />\r\n&bull; Hiện c&oacute; m&agrave;u bạc, x&aacute;m bạc, xanh da trời, xanh l&aacute; v&agrave; hồng camera hỗ trợ Home Kit v&agrave; điều khiển c&aacute;c phụ kiện nh&agrave; th&ocirc;ng minh của bạn<strong>&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><em>&nbsp;</em><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute; )</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><em>Chế độ &acirc;m thanh kh&ocirc;ng gian ph&ugrave; hợp để xem phim, TV v&agrave; video tr&ecirc;n c&aacute;c ứng dụng được hỗ trợ. Cần c&oacute; iPhone hoặc iPad. Cần c&oacute; t&agrave;i khoản iCloud v&agrave; macOS 11.1, iOS 14.3, iPadOS 14.3, watchOS 7.2 hoặc tvOS 14.3 trở l&ecirc;n. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin.</em><br />\r\n<em>* Chỉ d&agrave;nh cho người đăng k&yacute; mới. 59,000đ / th&aacute;ng sau khi thời gian d&ugrave;ng thử. Ưu đ&atilde;i &aacute;p dụng trong thời gian giới hạn cho những người d&ugrave;ng đăng k&yacute; mới khi kết nối thiết bị hợp lệ với thiết bị Apple chạy iOS 15 hoặc iPadOS 15 trở l&ecirc;n. Ưu đ&atilde;i c&oacute; gi&aacute; trị trong ba th&aacute;ng sau khi gh&eacute;p nối thiết bị hợp lệ. Người d&ugrave;ng đang sở hữu thiết bị hợp lệ kh&ocirc;ng cần mua th&ecirc;m sản phẩm &acirc;m thanh. G&oacute;i được tự động gia hạn cho đến khi bị hủy. C&aacute;c hạn chế v&agrave; c&aacute;c điều khoản kh&aacute;c được &aacute;p dụng. Xem&nbsp;<a href=\"http://apple.com/vn/promo\" rel=\"noopener\" target=\"_blank\">apple.com/vn/promo</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin. &ldquo;</em></span></p>\r\n', '<h2><span style=\"font-size:14px\"><strong>Apple Airpods Max - Kh&ocirc;ng chỉ chống ồn, chất lượng &acirc;m thanh tuyệt vời</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Từ trước đến nay Apple chỉ cho ra mắt d&ograve;ng tai nghe k&iacute;ch thước nhỏ duy nhất l&agrave; d&ograve;ng Airpods. Nắm bắt được nhu cầu người d&ugrave;ng Apple đ&atilde; cho ra mắt một sản phẩm mới đ&oacute; l&agrave;&nbsp;<strong>&nbsp;Airpods Max</strong>&nbsp;với nhiều t&iacute;nh năng tiện lợi như chống ồn k&egrave;m theo đ&oacute; l&agrave; chất lượng &acirc;m thanh rất tuyệt vời.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&gt;&gt;&gt;Xem th&ecirc;m:&nbsp;<a href=\"https://cellphones.com.vn/apple-airpods-3.html\" target=\"_blank\">Tai nghe Apple Airpods 3</a>&nbsp;sắp được ra mắt trong thời gian sắp tới.</span></p>\r\n\r\n<h3><span style=\"font-size:14px\"><strong>Thiết kế chụp tai sử dụng &ecirc;m &aacute;i, chất liệu cao cấp nổi bật</strong></span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Đội ngũ thiết kế của Apple lu&ocirc;n mang đến những thiết kế rất đẹp v&agrave; thường trở th&agrave;nh trend khi ra mắt.&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/headphones.html\">Tai nghe chụp tai Apple</a>&nbsp;Airpods Max cũng vậy, với việc sử dụng thiết kế chụp tại Apple đ&atilde; rất tinh tế về vẻ ngo&agrave;i.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cụ thể phần tai nghe chụp tai được l&agrave;m ho&agrave;n chỉnh ch&iacute;nh x&aacute;c mang đến cảm gi&aacute;c thoải m&aacute;i v&agrave; &ecirc;m &aacute;i khi đeo. Ngo&agrave;i ra phần thanh &ocirc;m đầu cũng được l&agrave;m ph&ugrave; hợp với v&ograve;m đầu nhất kh&ocirc;ng bị cấn khi đeo sử dụng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"Thiết kế chụp tai sử dụng êm ái, chất liệu cao cấp nổi bật\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/accessories/headphones/Apple-Airpods-Studio-1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Chất liệu được sử dụng tr&ecirc;n chiếc tai nghe Apple Airpods Max cũng l&agrave; loại rất cao cấp. Đặc biệt phần tai nghe được sử dụng lớp đệm rất &ecirc;m cho khả năng b&aacute;m rất tốt khi sử dụng v&agrave; rất nhẹ khi đeo trong thời gian l&acirc;u.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phần v&ograve;m tai nghe cũng được sử dụng chất liệu đệm silicon kết hợp với v&ograve;m bao da ở ngo&agrave;i rất chắc chắn gi&uacute;p tai nghe kh&ocirc;ng cấn đ&egrave; l&ecirc;n đầu của bạn v&agrave; tạo cảm gi&aacute;c thoải m&aacute;i nhất kh&ocirc;ng chỉ đ&ocirc;i tai m&agrave; c&ograve;n ở cả chất liệu.</span></p>\r\n\r\n<h3><span style=\"font-size:14px\"><strong>Chất lượng &acirc;m thanh cực kỳ cao cấp, chống ồn hiệu quả</strong></span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Apple đ&atilde; trang bị tr&ecirc;n chiếc Airpods Max một bộ loa rất chất lượng với m&agrave;n loa si&ecirc;u mỏng mang đến &acirc;m thanh chất lượng nhất. Mọi dải &acirc;m đều được t&aacute;i hiện đến tai người d&ugrave;ng chi tiết, ch&acirc;n thực nhất.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&Acirc;m thanh rất chi tiết, &acirc;m bass cao dải tần số cũng nằm ở mức cao cho khả năng ph&aacute;t &acirc;m thanh v&ograve;m 4D 5D rất chất lượng mang đến &acirc;m thanh tuyệt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"Chất lượng âm thanh cực kỳ cao cấp, chống ồn hiệu quả\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/accessories/headphones/Apple-Airpods-Studio-2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Điểm đặc biệt kh&aacute;c tr&ecirc;n chiếc tai nghe n&agrave;y được nhiều người d&ugrave;ng săn đo&aacute;n đ&oacute; l&agrave; khả năng chống ồn chủ động. Apple đ&atilde; trang bị một bộ vi xử l&yacute; rất cao cấp cho khả năng lọc tiếng ồn rất tốt v&agrave; loại bỏ tạp &acirc;m ch&iacute;nh x&aacute;c.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phần đỉnh tr&ecirc;n của tai nghe b&ecirc;n phải lần n&agrave;y c&oacute; sự xuất hiện của n&uacute;m xoay&nbsp;Digital Crown gần giống như tr&ecirc;n Apple Watch gi&uacute;p bạn c&oacute; thể điều chỉnh &acirc;m lượng, tương t&aacute;c siri hay tắt/bật nhạc,....</span></p>\r\n\r\n<h3><span style=\"font-size:14px\"><strong>Pin dung lượng cao sử dụng nhiều giờ, hỗ trợ sạc nhanh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:14px\">C&oacute; thể n&oacute;i với sự tăng thay đổi về k&iacute;ch thước Apple Airpods Max đ&atilde; c&oacute; thể sử dụng được thời gian d&agrave;i hơn thực tế ban đầu rất nhiều so với c&aacute;c d&ograve;ng tai nghe của Apple đ&atilde; ra mắt từ trước đ&oacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"Pin dung lượng cao sử dụng nhiều giờ, hỗ trợ sạc nhanh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/accessories/headphones/apple-airpods-max-3.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Với 2 vi&ecirc;n pin dung lượng kh&aacute; cao nằm ở 2 b&ecirc;n tai, tai nghe Apple Airpods Max sẽ mang đến khả năng hoạt động bền bỉ trong thời gian d&agrave;i. Cụ thể Apple cho biết, tai nghe c&oacute; thể hoạt động l&ecirc;n đến 20 giờ ở chế độ chống ồn chủ động v&agrave;&nbsp;&acirc;m thanh v&ograve;m Spatial Audio.&nbsp;K&egrave;m với đ&oacute; l&agrave; cổng sạc USB Type C cho khả năng sạc rất nhanh.</span></p>\r\n', 1, 0, 0, 26, 18, '2022-01-02 11:47:19'),
(110, 'AirPods Pro (2021)', 5300000, 5300000, 36, 'AirPods Pro (2021)2.jpg', 'AirPods Pro (2021)1.png', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Thơi lượng pin</th>\r\n			<th style=\"text-align: left;\">Tai nghe : 4.5 giờ - Hộp sạc : 24 giờ</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Chống nước</th>\r\n			<th style=\"text-align: left;\">IPX4 (Chống nước,mồ h&ocirc;i)</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">C&ocirc;ng nghệ &acirc;m thanh</th>\r\n			<th style=\"text-align: left;\">Chống ồn chủ động<br />\r\n			Xuy&ecirc;n &acirc;m</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Micro</th>\r\n			<th style=\"text-align: left;\">Micro k&eacute;p đ&agrave;m thoại</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Tương th&iacute;ch</th>\r\n			<th style=\"text-align: left;\">IOS,Android<br />\r\n			Laptop c&oacute; hỗ trợ Bluetooth</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">T&iacute;nh năng kh&aacute;c</th>\r\n			<th style=\"text-align: left;\">Tự động kết nối với thiết bị IOS<br />\r\n			Định vị khi tai nghe thất lạc<br />\r\n			Hỗ trợ sạc kh&ocirc;ng d&acirc;y chuẩn Qi</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Độ trễ</th>\r\n			<th style=\"text-align: left;\">227ms</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">Phương thức điều khiển</th>\r\n			<th style=\"text-align: left;\">Cảm ứng chạm</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align: left;\">H&atilde;ng sản xuất</th>\r\n			<th style=\"text-align: left;\">Apple Ch&iacute;nh h&atilde;ng</th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><strong>AirPods Pro (2021)</strong>&nbsp;c&oacute; t&iacute;nh năng Chủ Động Khử Tiếng Ồn gi&uacute;p người nghe đắm ch&igrave;m trong thế giới &acirc;m thanh. Chế Độ Xuy&ecirc;n &Acirc;m gi&uacute;p bạn nghe được &acirc;m thanh của thế giới xung quanh. AirPods Pro chống mồ h&ocirc;i v&agrave; chống nước v&agrave; k&iacute;ch cỡ tai nghe t&ugrave;y chỉnh được tạo sự thoải m&aacute;i cả ng&agrave;y d&agrave;i.</p>\r\n\r\n<ul>\r\n	<li>T&iacute;nh năng Chủ Động Khử Tiếng Ồn gi&uacute;p ngăn chặn c&aacute;c &acirc;m thanh b&ecirc;n ngo&agrave;i lọt v&agrave;o tai để bạn c&oacute; thể đắm ch&igrave;m v&agrave;o &acirc;m nhạc</li>\r\n	<li>Chế Độ Xuy&ecirc;n &Acirc;m gi&uacute;p bạn nghe v&agrave; tương t&aacute;c với thế giới xung quanh</li>\r\n	<li>Chế độ &acirc;m thanh kh&ocirc;ng gian với t&iacute;nh năng theo d&otilde;i chuyển động của đầu đưa &acirc;m thanh đến quanh bạn</li>\r\n	<li>EQ th&iacute;ch ứng sẽ tự động điều chỉnh nhạc hướng v&agrave;o tai bạn</li>\r\n	<li>Đầu silicon mềm mại với ba k&iacute;ch cỡ kh&aacute;c nhau tạo sự thoải m&aacute;i v&agrave; &ocirc;m kh&iacute;t</li>\r\n	<li>Cảm biến lực gi&uacute;p bạn dễ d&agrave;ng điều khiển chương tr&igrave;nh giải tr&iacute;, trả lời hoặc kết th&uacute;c cuộc gọi, v&agrave; thực hiện nhiều t&aacute;c vụ kh&aacute;c</li>\r\n	<li>Chống mồ h&ocirc;i v&agrave; chống nước</li>\r\n	<li>Tổng thời gian nghe hơn 24 giờ với&nbsp;<strong>Hộp Sạc MagSafe</strong></li>\r\n	<li>Thiết lập dễ d&agrave;ng, c&oacute; khả năng nhận biết khi đeo, v&agrave; tự động chuyển đổi để mang lại trải nghiệm tuyệt vời</li>\r\n	<li>Dễ d&agrave;ng chia sẻ &acirc;m thanh giữa hai bộ AirPods tr&ecirc;n iPhone, iPad, iPod touch hoặc Apple TV</li>\r\n</ul>\r\n\r\n<p><strong><em><strong>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute;)</strong></em></strong></p>\r\n\r\n<p><em>AirPods Pro c&oacute; khả năng chống mồ h&ocirc;i v&agrave; chống nước, c&oacute; thể sử dụng trong c&aacute;c m&ocirc;n thể thao v&agrave; luyện tập kh&ocirc;ng li&ecirc;n quan đến nước. Tai nghe cũng đạt chuẩn IPX4. Khả năng chống mồ h&ocirc;i v&agrave; chống nước kh&ocirc;ng phải l&agrave; điều kiện vĩnh viễn. Hộp sạc kh&ocirc;ng c&oacute; khả năng chống mồ h&ocirc;i hoặc chống nước. Chế độ &acirc;m thanh kh&ocirc;ng gian ph&ugrave; hợp để xem phim, TV v&agrave; video tr&ecirc;n c&aacute;c ứng dụng được hỗ trợ. Cần c&oacute; iPhone hoặc iPad. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin. Cần c&oacute; t&agrave;i khoản iCloud v&agrave; macOS 11.1, iOS 14.3, iPadOS 14.3, watchOS 7.2, hoặc tvOS 14.3 trở l&ecirc;n.</em></p>\r\n', 1, 3, 5300000, 26, 18, '2022-01-02 12:31:48'),
(111, 'AirPods Pro (2020)', 5200000, 5200000, 36, 'AirPods Pro (2020)1.png', 'AirPods Pro (2020)2.jpeg', 0, '<p><span style=\"font-size:16px\">Sản ph&acirc;̉m chính hãng bảo hành theo chính sách Apple VN/A</span></p>\r\n', '<p><span style=\"font-size:16px\"><strong>AirPods Pro&nbsp;</strong>T&iacute;nh năng Chủ Động Khử Tiếng Ồn tạo ra &acirc;m thanh sống động. Chế Độ Xuy&ecirc;n &Acirc;m gi&uacute;p bạn nghe được &acirc;m thanh của thế giới xung quanh. Chống mồ h&ocirc;i v&agrave; chống nước. V&agrave; c&oacute; thể t&ugrave;y chỉnh tạo sự thoải m&aacute;i cả ng&agrave;y d&agrave;i.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&bull; T&iacute;nh năng Chủ Động Khử Tiếng Ồn tạo ra &acirc;m thanh sống động<br />\r\n&bull; Chế Độ Xuy&ecirc;n &Acirc;m gi&uacute;p bạn nghe v&agrave; tương t&aacute;c với thế giới xung quanh<br />\r\n&bull; Chế độ &acirc;m thanh kh&ocirc;ng gian với t&iacute;nh năng theo d&otilde;i chuyển động của đầu đem đến &acirc;m thanh v&ograve;m giống như bạn đang ở trong rạp h&aacute;t<br />\r\n&bull; EQ th&iacute;ch ứng sẽ tự động điều chỉnh nhạc theo k&iacute;ch thước tai của bạn<br />\r\n&bull; Đầu silicon mềm mại với ba k&iacute;ch cỡ kh&aacute;c nhau tạo sự thoải m&aacute;i v&agrave; &ocirc;m kh&iacute;t<br />\r\n&bull; Chống mồ h&ocirc;i v&agrave; chống nước<br />\r\n&bull; Thiết lập dễ d&agrave;ng c&ugrave;ng t&iacute;nh năng nhận biết khi đeo cho trải nghiệm tuyệt vời<br />\r\n&bull; Điều khiển nhạc v&agrave; cuộc gọi của bạn từ AirPods<br />\r\n&bull; Dễ d&agrave;ng chia sẻ &acirc;m thanh giữa hai bộ AirPods tr&ecirc;n iPhone, iPad, iPod touch hoặc Apple TV<br />\r\n&bull; Chuyển đổi mượt m&agrave; giữa c&aacute;c thiết bị Apple<br />\r\n&bull; Hộp Sạc Kh&ocirc;ng D&acirc;y đem đến thời lượng pin hơn 24 giờ</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>&nbsp;</em><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute; )</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>AirPods Pro c&oacute; khả năng ch&ocirc;́ng m&ocirc;̀ h&ocirc;i v&agrave; ch&ocirc;́ng nước, c&oacute; th&ecirc;̉ sử dụng trong c&aacute;c m&ocirc;n th&ecirc;̉ thao v&agrave; luyện tập kh&ocirc;ng li&ecirc;n quan đ&ecirc;́n nước. Tai nghe cũng đạt chu&acirc;̉n IPX4. Khả năng ch&ocirc;́ng m&ocirc;̀ h&ocirc;i v&agrave; ch&ocirc;́ng nước kh&ocirc;ng phải l&agrave; đi&ecirc;̀u kiện vĩnh vi&ecirc;̃n. Hộp sạc kh&ocirc;ng c&oacute; khả năng ch&ocirc;́ng m&ocirc;̀ h&ocirc;i hoặc ch&ocirc;́ng nước.<br />\r\n* Chỉ d&agrave;nh cho người đăng k&yacute; mới. 59,000đ / th&aacute;ng sau khi thời gian d&ugrave;ng thử. Ưu đ&atilde;i &aacute;p dụng trong thời gian giới hạn cho những người d&ugrave;ng đăng k&yacute; mới khi kết nối thiết bị hợp lệ với thiết bị Apple chạy iOS 15 hoặc iPadOS 15 trở l&ecirc;n. Ưu đ&atilde;i c&oacute; gi&aacute; trị trong ba th&aacute;ng sau khi gh&eacute;p nối thiết bị hợp lệ. Người d&ugrave;ng đang sở hữu thiết bị hợp lệ kh&ocirc;ng cần mua th&ecirc;m sản phẩm &acirc;m thanh. G&oacute;i được tự động gia hạn cho đến khi bị hủy. C&aacute;c hạn chế v&agrave; c&aacute;c điều khoản kh&aacute;c được &aacute;p dụng. Xem&nbsp;<a href=\"http://apple.com/vn/promo\" rel=\"noopener\" target=\"_blank\">apple.com/vn/promo</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin. &ldquo;</em></span></p>\r\n', 1, 2, 0, 26, 18, '2022-01-02 12:34:00'),
(112, 'AirPods 2 with Charging Case', 3200000, 3200000, 36, 'airpods_2_3.webp', 'airpods_2_2.webp', 0, '<p><span style=\"font-size:16px\">Sản ph&acirc;̉m chính hãng Apple.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Bảo hành theo chính sách VN/A</span></p>\r\n', '<p><span style=\"font-size:16px\"><strong>AirPods 2</strong>&nbsp;(<strong>AirPods gen 2</strong>) l&agrave; k&ecirc;́t hợp của thi&ecirc;́t k&ecirc;́ mang t&iacute;nh bi&ecirc;̉u tượng v&agrave; &acirc;m thanh ch&acirc;́t lượng cao. Đem đ&ecirc;́n trải nghiệm tai nghe kh&ocirc;ng d&acirc;y độc đ&aacute;o v&agrave; cảm gi&aacute;c vừa vặn, thoải m&aacute;i cả ng&agrave;y d&agrave;i cho mọi người. K&ecirc;́t n&ocirc;́i tức th&igrave; khi đeo v&agrave;o tai. Đ&ecirc;̀u tuyệt vời.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>&nbsp;</strong>&bull; Vừa vặn với mọi k&iacute;ch cỡ, thoải m&aacute;i cả ng&agrave;y d&agrave;i<br />\r\n&bull; Tự động bật, tự động kết nối<br />\r\n&bull; Dễ d&agrave;ng kết nối với tất cả thiết bị Apple của bạn<br />\r\n&bull; Điều khiển nhạc v&agrave; cuộc gọi của bạn từ AirPods<br />\r\n&bull; Dễ d&agrave;ng chia sẻ &acirc;m thanh giữa hai bộ AirPods tr&ecirc;n iPhone, iPad, iPod touch hoặc Apple TV<br />\r\n&bull; Chuyển đổi mượt m&agrave; giữa c&aacute;c thiết bị Apple<br />\r\n&bull; Hộp Sạc đem đến thời lượng pin hơn 24 giờ<em>&nbsp;</em></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>&nbsp;</em><strong><em>C&aacute;c th&ocirc;ng tin Apple đảm bảo ( Ph&aacute;p l&yacute; )</em></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>Cần c&oacute; t&agrave;i khoản iCloud v&agrave; macOS 11.1, iOS 14.3, iPadOS 14.3, watchOS 7.2 hoặc tvOS 14.3 trở l&ecirc;n. Thời lượng pin kh&aacute;c nhau t&ugrave;y theo c&aacute;ch sử dụng v&agrave; cấu h&igrave;nh. Truy cập apple.com/batteries để biết th&ecirc;m th&ocirc;ng tin.</em><br />\r\n<em>* Chỉ d&agrave;nh cho người đăng k&yacute; mới. 59,000đ / th&aacute;ng sau khi thời gian d&ugrave;ng thử. Ưu đ&atilde;i &aacute;p dụng trong thời gian giới hạn cho những người d&ugrave;ng đăng k&yacute; mới khi kết nối thiết bị hợp lệ với thiết bị Apple chạy iOS 15 hoặc iPadOS 15 trở l&ecirc;n. Ưu đ&atilde;i c&oacute; gi&aacute; trị trong ba th&aacute;ng sau khi gh&eacute;p nối thiết bị hợp lệ. Người d&ugrave;ng đang sở hữu thiết bị hợp lệ kh&ocirc;ng cần mua th&ecirc;m sản phẩm &acirc;m thanh. G&oacute;i được tự động gia hạn cho đến khi bị hủy. C&aacute;c hạn chế v&agrave; c&aacute;c điều khoản kh&aacute;c được &aacute;p dụng. Xem&nbsp;<a href=\"http://apple.com/vn/promo\" rel=\"noopener\" target=\"_blank\">apple.com/vn/promo</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin. &ldquo;</em></span></p>\r\n', 1, 3, 0, 26, 18, '2022-01-02 12:36:23'),
(140, 'Samsung S20 FE', 13000000, 13000000, 72, 'S20 FE4.jpg', 'S20 FE1.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.5 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Super AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Camera ch&iacute;nh: 12 MP, f/1.8<br />\r\n			&nbsp; Camera tele: 8 MP, f/2.0, zoom quang 3x<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12 MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 32 MP, f/2.0, AF</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Snapdragon 865</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Li-Po 4500 mAh, sạc nhanh 25W, sạc kh&ocirc;ng d&acirc;y cho c&aacute;c thiết bị ngoại vi 5.4W</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 10, One UI 2.5</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1080 x 2400 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 nh&acirc;n (1x2.84 GHz Kryo 585 &amp; 3x2.42 GHz Kryo 585 &amp; 4x1.8 GHz Kryo&nbsp; &nbsp; 585)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 159.8 x 74.5 x 8.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><span style=\"color:#e74c3c\"><strong><span style=\"font-size:20px\">Điện thoại Samsung Galaxy S20 FE - Phi&ecirc;n bản đặc biệt d&agrave;nh cho fan Samsung</span></strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Samsung S20 FE</strong>&nbsp;l&agrave; chiếc điện thoại sắp được ra mắt từ Samsung, với chữ FE đằng sau t&ecirc;n gọi của m&aacute;y c&oacute; nghĩa l&agrave; Fan Edition. Đ&acirc;y l&agrave; d&ograve;ng điện thoại ra mắt như để gửi lời tri &acirc;n đến c&aacute;c fan trung th&agrave;nh đ&atilde; v&agrave; đang sử dụng c&aacute;c sản phẩm của Samsung. Với số lượng sản phẩm được giới hạn v&agrave; chỉ mở b&aacute;n trong thời gian ngắn.&nbsp;&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Tham khảo th&ecirc;m&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s21-fe.html\">điện thoại Samsung Galaxy S21 FE</a>&nbsp;với nhiều n&acirc;ng cấp về cấu h&igrave;nh, camera v&agrave; dung lượng pin.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Super Amoled 6.5 inch, FullHD, c&ocirc;ng nghệ HDR10+, tần số qu&eacute;t 120Hz</span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Được định hướng vẫn l&agrave; sản phẩm ở ph&acirc;n kh&uacute;c cao cấp, Galaxy S20&nbsp;Fan Edition&nbsp;được trang bị tấm nền Super Amoled cao cấp, k&iacute;ch thước m&agrave;n h&igrave;nh lớn l&ecirc;n đến 6.5 inches, m&agrave;n h&igrave;nh độ ph&acirc;n giải FullHD gi&uacute;p h&igrave;nh ảnh hiển thị tr&ecirc;n chiếc điện thoại n&agrave;y l&agrave; v&ocirc; c&ugrave;ng sắc n&eacute;t v&agrave; rực rỡ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình 6.5 inch, tấm nền Super Amoled FullHD, công nghệ HDR10+, màn hình tần số quét 120Hz\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-1_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng bỏ lỡ tr&agrave;o lưu tần số qu&eacute;t cao, điện thoại được trang bị một m&agrave;n h&igrave;nh với tần số qu&eacute;t 120Hz, c&ocirc;ng nghệ h&igrave;nh ảnh HDR10+ tăng độ tương phản, gi&uacute;p bạn c&oacute; những ph&uacute;t gi&acirc;y giải tr&iacute; ho&agrave;n hảo d&ugrave; l&agrave; chơi game hay xem phim.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Hiệu năng mạnh mẽ với chip Snapdragon 865, chuẩn bộ nhớ UFS 3.1</span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Tr&aacute;i tim của Galaxy S20 FE ch&iacute;nh l&agrave; bộ vi xử l&yacute;&nbsp;Snapdragon 865 8 nh&acirc;n gi&uacute;p m&aacute;y hoạt động mạnh mẽ, nhưng vẫn tiết kiệm được pin nhờ &aacute;p dụng tiến tr&igrave;nh sản xuất nhỏ hơn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hiệu năng mạnh mẽ với Exynos 990 (7 nm+)\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-6_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra chuẩn bộ nhớ UFS 3.1 mới nhất cho tốc độ đọc ghi lần lượt l&agrave; 2100Mb/s, 1200Mb/s. Ấn tượng nhất trong ph&acirc;n kh&uacute;c c&aacute;c điện thoại đầu bảng hiện n&agrave;y, gi&uacute;p Samsung Galaxy S20 Fan Edition c&oacute; thể load c&aacute;c ứng dụng hay trao đổi file tr&ecirc;n m&aacute;y t&iacute;nh nhanh ch&oacute;ng hơn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Camera 12MP hỗ trợ quay phim 8K, zoom quang 3X</span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Galaxy S20 FE</strong>&nbsp;thừa hưởng cụm camera từ người đ&agrave;n anh Samsung Galaxy S20 với cụm 3 camera với camera ch&iacute;nh 12MP hỗ trợ quay phim l&ecirc;n đến 8K k&egrave;m khả năng chống rung quang OIS kết hợp với chống rung điện tử EIS.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Camera 12MP hỗ trợ quay phim 8K, zoom quang 3X\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-4_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cam tele của m&aacute;y cho ph&eacute;p người d&ugrave;ng c&oacute; thể zoom quang học 3X, gi&uacute;p người d&ugrave;ng c&oacute; thể chụp được những bức h&igrave;nh ở khoảng c&aacute;ch xa m&agrave; kh&ocirc;ng l&agrave;m giảm chất lượng h&igrave;nh ảnh. Hỗ trợ camera g&oacute;c si&ecirc;u rộng để chụp lại những bức h&igrave;nh nh&oacute;m, hay khung cảnh h&ugrave;ng vỹ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Camera 12MP\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s20-fe-2.PNG\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Hỗ trợ Wifi thế hệ 6 tốc độ cao, băng tần 4G t&iacute;ch hợp mạnh mẽ</span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Thế hệ Wifi thứ 6 mới nhất được t&iacute;ch hợp tr&ecirc;n&nbsp;Samsung S20 FE&nbsp;cho tốc độ độ truyền tải cao hơn 30% so với thế hệ thứ 5, kết nối nhanh ch&oacute;ng với mạng, giảm độ trễ khi chơi game.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hỗ trợ Wifi thế hệ 6 tốc độ cao, băng tần 5G tích hợp mạnh mẽ\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-3_1_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điểm đặc biệt tiếp theo l&agrave; hỗ trợ mạng 4G, cho ph&eacute;p Samsung Galaxy S20 FE đ&oacute;n đầu xu hướng, khi m&agrave; tại Việt Nam c&aacute;c nh&agrave; mạng đ&atilde; cho ph&eacute;p thử nghiệm băng tần mạng thế hệ mới n&agrave;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Sạc nhanh 25W, vi&ecirc;n pin dung lượng&nbsp;lớn&nbsp;4500mAh</span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><strong>S20 FE</strong>&nbsp;sở hữu vi&ecirc;n pin dung lượng lớn 4500mAh, m&agrave;n h&igrave;nh AMOLED tiết kiệm điện gi&uacute;p m&aacute;y c&oacute; thể sử dụng cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo lắng về vấn đề hết pin tr&ecirc;n chiếc điện thoại n&agrave;y.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Sạc nhanh 15W, viên pin dung lượng lớn 4500mAh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-5_2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra m&aacute;y hỗ trợ sạc nhanh 25W gi&uacute;p giảm thời gian sạc đầy 100% của thiết bị, th&ecirc;m thời gian để bạn sử dụng v&agrave; trải nghiệm thiết bị của m&igrave;nh được l&acirc;u hơn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Giao diện One UI 2.5 mới nhất, Android 10 bảo mật</span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung S20&nbsp;Fan Edition&nbsp;ra mắt sẽ được t&iacute;ch hợp giao diện One UI 2.5 ho&agrave;n to&agrave;n mới tr&ecirc;n nền Android 10 gi&uacute;p thiết bị của bạn được hỗ trợ phần mềm trong thời gian d&agrave;i.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Giao diện One UI 2.5 mới nhất, Android 10 bảo mật\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s20-fe-7_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Giao diện mới th&ecirc;m v&agrave;o một loạt t&iacute;nh năng về camera như Singe Take, Night Hyperlapse v&agrave; chế độ Video Pro. T&iacute;nh năng Samsung Dex giờ đ&acirc;y đ&atilde; cho ph&eacute;p kết nối kh&ocirc;ng d&acirc;y như Tivi th&ocirc;ng minh hay m&agrave;n h&igrave;nh c&oacute; t&iacute;nh năng Screen Mirroring.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Samsung S20 FE gi&aacute; bao nhi&ecirc;u</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Tại thị trường Việt Nam, Galaxy S20 FE ch&iacute;nh h&atilde;ng đang c&oacute; mức gi&aacute; 15.99 triệu đồng tại CellphoneS. Người d&ugrave;ng sẽ c&oacute; 3 t&ugrave;y chọn m&agrave;u sắc bao gồm T&iacute;m, Xanh v&agrave; Xanh l&aacute;.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\">Mua Samsung Galaxy S20 FE gi&aacute; rẻ tại CellphoneS</span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Nếu l&agrave; một fan trung th&agrave;nh của Samsung v&agrave; muốn sở hữu cho m&igrave;nh chiếc<strong>&nbsp;Samsung S20 FE</strong>&nbsp;ch&iacute;nh h&atilde;ng với số lượng giới hạn, c&aacute;c bạn h&atilde;y gh&eacute; đến ngay hệ thống b&aacute;n lẻ CellphoneS để đặt h&agrave;ng sản phẩm. Tại CellphoneS, điện thoại Samsung được nhập khẩu ch&iacute;nh h&atilde;ng, cam kết chất lượng sản phẩm khi b&aacute;n ra, hỗ trợ bảo h&agrave;nh 12 th&aacute;ng k&egrave;m ch&iacute;nh s&aacute;ch 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi từ nh&agrave; sản xuất. Nếu c&oacute; nhu cầu tham khảo th&ecirc;m về gi&aacute; cũng như c&aacute;c chương tr&igrave;nh khuyến m&atilde;i k&egrave;m theo khi mua smartphone n&agrave;y, truy cập ngay v&agrave;o website cellphones.com.vn&nbsp;hoặc li&ecirc;n hệ đến số Hotline miễn ph&iacute; 1800.2097 để được hỗ trợ giải đ&aacute;p thắc mắc về sản phẩm.</span></p>\r\n', 1, 5, 0, 27, 19, '2022-01-02 08:33:51'),
(141, 'Samsung S21 Plus', 17000000, 24000000, 216, 'S21 Plus3.webp', 'S21 Plus2.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\">K&iacute;ch thước m&agrave;n h&igrave;nh</th>\r\n			<th style=\"text-align:left\">&nbsp; 6.7 inches</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</th>\r\n			<th style=\"text-align:left\">&nbsp; Dynamic AMOLED</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Camera sau</th>\r\n			<th style=\"text-align:left\">&nbsp; - Cảm biến ch&iacute;nh (g&oacute;c rộng) 12 MP, f/1.8, chống rung quang học OIS<br />\r\n			&nbsp; - Cảm biến tele 64 MP, f/2.0, zoom quang 1.1x, zoom lai 3x<br />\r\n			&nbsp; - Cảm biến g&oacute;c cực rộng 12 MP, f/2.2</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Camera trước</th>\r\n			<th style=\"text-align:left\">&nbsp; 10 MP, f/2.2, hỗ trợ lấy n&eacute;t theo pha k&eacute;p Dual Pixel PDAF</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Chipset</th>\r\n			<th style=\"text-align:left\">&nbsp; Exynos 2100 8 nh&acirc;n</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Dung lượng RAM</th>\r\n			<th style=\"text-align:left\">&nbsp; 8 GB</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Bộ nhớ trong</th>\r\n			<th style=\"text-align:left\">&nbsp; 128 GB</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Pin</th>\r\n			<th style=\"text-align:left\">&nbsp; - Li-Po 4,800 mAh<br />\r\n			&nbsp; - Sạc nhanh c&oacute; d&acirc;y 25W, tương th&iacute;ch chuẩn PD 3.0<br />\r\n			&nbsp; - Sạc nhanh kh&ocirc;ng d&acirc;y 15W<br />\r\n			&nbsp; - Sạc ngược kh&ocirc;ng d&acirc;y 4.5W</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Thẻ SIM</th>\r\n			<th style=\"text-align:left\">&nbsp; 2 SIM (Nano-SIM)</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Hệ điều h&agrave;nh</th>\r\n			<th style=\"text-align:left\">&nbsp; Android 11, One UI 3.0</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</th>\r\n			<th style=\"text-align:left\">&nbsp; 1080 x 2400 pixels (FullHD+)</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">Loại CPU</th>\r\n			<th style=\"text-align:left\">&nbsp; 8 nh&acirc;n: 1 nh&acirc;n Cortex-X1 tốc độ 2.9GHz, 3 nh&acirc;n Cortex-A78 tốc độ 2.8GHz, 4 nh&acirc;n Cortex-&nbsp; &nbsp; &nbsp; A55 tốc độ 2.2GHz</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\">K&iacute;ch thước</th>\r\n			<th style=\"text-align:left\">&nbsp; 161.5 x 75.6 x 7.8 mm</th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><strong><span style=\"color:#e74c3c\"><span style=\"font-size:18px\">ĐẶC ĐIỂM NỔI BẬT</span></span></strong></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh si&ecirc;u ấn tượng - Tấm nền 6.7 inch AMOLED, tần số qu&eacute;t 120Hz</span></li>\r\n	<li><span style=\"font-size:16px\">Chụp ảnh, quay video si&ecirc;u n&eacute;t - Cụm 3 camera mạnh mẽ, quay phim 8K, quay phim si&ecirc;u chống rung.</span></li>\r\n	<li><span style=\"font-size:16px\">Tốc độ vượt trội, chơi game đỉnh cao - Exynos 2100 8 nh&acirc;n 5nm, RAM 8GB, bộ nhớ tốc độ cao UFS 3.1</span></li>\r\n	<li><span style=\"font-size:16px\">Kết nối si&ecirc;u tốc v&agrave; ổn định - Mạng 5G thế hệ mới, Wifi 6 tốc độ cao</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy S21 Plus - Thiết kế mới, hiệu năng đỉnh</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">C&oacute; thể n&oacute;i chiếc&nbsp;<strong>Samsung S21 Plus</strong>&nbsp;l&agrave; một trong những chiếc điện thoại đ&aacute;ng được sở hữu nhất trong ph&acirc;n kh&uacute;c tầm gi&aacute; hiện tại. Với sự thay đổi thiết kế đột ph&aacute; đi đầu trong phong c&aacute;ch thiết kế c&ugrave;ng với cấu h&igrave;nh cực kỳ mạnh mẽ của d&ograve;ng S Plus của Samsung mang đến cho người d&ugrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&gt;&gt; Tham khảo th&ecirc;m:&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s21-ultra.html\" target=\"_blank\">Điện thoại Samsung S21 Ultra</a>&nbsp;cũng đang được mở b&aacute;n tại CellphoneS với nhiều ưu đ&atilde;i hấp dẫn.&nbsp;&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế đổi mới phong c&aacute;ch, m&agrave;n h&igrave;nh 6.7 inch độ ph&acirc;n giải FHD+</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; d&ograve;ng mới nhất trong năm 2020 Samsung đ&atilde; đ&oacute;n đầu xu hướng thiết kế v&agrave; đi đầu với sự đổi mới đầy đột ph&aacute; tr&ecirc;n điện thoại Galaxy S21 Plus mang đến cho người d&ugrave;ng một c&aacute;i nh&igrave;n ho&agrave;n to&agrave;n mới về chiếc điện thoại n&agrave;y.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế sang trọng, nhiều màu sắc\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-s21-plus-5_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y với khung viền ho&agrave;n thiện từ kim loại nguy&ecirc;n khối đầy ch&iacute;nh x&aacute;c v&agrave; chắc chắn tạo cảm gi&aacute;c rất đầm tay khi cẩm. V&agrave; kh&ocirc;ng những vậy bố cục của Samsung S21 Plus cũng ho&agrave;n thiện cần đối rất bắt mắt.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế đổi mới phong cách, màn hình 6.7 inch độ phân giải 2K\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-s21-plus-2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh của Galaxy S21 Plus c&oacute; lẽ l&agrave; điểm nổi bật nhất tr&ecirc;n chiếc điện thoại n&agrave;y. Với k&iacute;ch thước l&ecirc;n đến 6.7 inch chiếc điện thoại n&agrave;y mang đến một kh&ocirc;ng gian kh&aacute; rộng để hiển thị khi sử dụng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra m&agrave;n h&igrave;nh của chiếc Samsung S21+ n&agrave;y c&ograve;n được trang bị tần số qu&eacute;t l&ecirc;n đến 120Hz mang đến độ mượt m&agrave; về h&igrave;nh ảnh rất cao. Mọi khung h&igrave;nh cao khi chơi game hay xem phim h&agrave;nh động đều rất mượt v&agrave; ch&acirc;n thật.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Cầu h&igrave;nh mạnh với chip Exynos 2100, ram 8GB, bộ nhớ trong 128GB</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">C&oacute; thể n&oacute;i, Samsung Galaxy S21 Plus l&agrave; một trong những chiếc điện thoại c&oacute; cấu h&igrave;nh cực kỳ mạnh mẽ mang đến hiệu năng khi trang bị chip Exynos 2100 cho xung nhịp l&ecirc;n đến 2.84 GHz rất mạnh.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Người d&ugrave;ng c&oacute; thể xử l&yacute; mọi t&aacute;c vụ cực kỳ nhanh ch&oacute;ng m&agrave; kh&ocirc;ng bị lag. Kh&ocirc;ng những vậy chiếc điện thoại n&agrave;y c&ograve;n được trang bị con chip&nbsp;Mali-G78 MP14 xử l&yacute; h&igrave;nh ảnh độ ph&acirc;n giải v&agrave; tần số qu&eacute;t l&ecirc;n rất cao.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Cầu hình mạnh với chip Exynos 990, ram 16Gb, bộ nhớ trong 256Gb\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-s21-plus-3.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Bộ nhớ ram v&agrave; bộ nhớ trong của m&aacute;y cũng nằm ở mức kh&aacute; cao khi dung lượng ram 8GB cho bộ nhớ 128GB. Mang lại hiệu năng đa nhiệm cao v&agrave; lưu trữ được rất nhiều.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đưa người d&ugrave;ng đến một trải nghiệm ho&agrave;n to&agrave;n mới m&agrave; c&aacute;c chiếc điện thoại kh&aacute;c c&ugrave;ng ph&acirc;n kh&uacute;c kh&ocirc;ng l&agrave;m được với bộ nhớ ram v&agrave; rom của Samsung S21 Plus mang lại khi sử dụng hằng ng&agrave;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Bộ 3 camera sau với độ ph&acirc;n giải l&ecirc;n đến 64MP, camera trước selfie cực kỳ tốt</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Camera cũng l&agrave; điểm lớn m&agrave; Samsung mang đến cho&nbsp;<strong>Galaxy S21 Plus</strong>. Camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 10MP v&agrave; cụm 3 camera sau. Trong đ&oacute;, camera ch&iacute;nh 12MP, camera tele 64MP v&agrave; camera g&oacute;c rộng 12MP.&nbsp;&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Bộ 4 camera sau lên đến 64Gb, camera trước selfie cực kỳ tốt\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-s21-plus-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera trước của Samsung S21 Plus c&oacute; độ ph&acirc;n giải l&ecirc;n đến 10MP v&agrave; mang đến nhiều t&iacute;nh năng tiện lợi như chụp g&oacute;c rộng hay l&agrave;m đẹp rất tốt.&nbsp;Với hệ điều h&agrave;nh Android 11 được c&agrave;i sẵn chiếc điện thoại n&agrave;y, bạn sẽ c&oacute; thể sử dụng được rất nhiều chế độ chụp cũng như l&agrave;m mới h&igrave;nh ảnh rất tốt.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Pin dung lượng l&ecirc;n đến 4800mAh, hỗ trợ sạc nhanh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Galaxy S21+ được h&atilde;ng trang vi&ecirc;n pin c&oacute; dung cao kh&aacute; lớn l&ecirc;n đến 4800mAh đủ năng lượng cung cấp để cho chiếc điện thoại c&oacute; thể hoạt động trong thời gian d&agrave;i l&ecirc;n đến gần hơn 1 ng&agrave;y thoải m&aacute;i nhất.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra pin tr&ecirc;n chiếc điện thoại n&agrave;y cũng được n&acirc;ng cấp khả năng sạc nhanh với c&ocirc;ng suất lớn cho ph&eacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i sạc đầy pin trong thời gian nhanh ch&oacute;ng nhất tiết kiệm nhiều thời gian.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Pin dung lượng lên đến 5000mAh, hỗ trợ sạc nhanh 45W\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-s21-plus-6.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i Galaxy S21+ cũng được trang bị th&ecirc;m c&aacute;c chế độ sạc kh&aacute;c như sạc kh&ocirc;ng d&acirc;y v&agrave; sạc ngược cực kỳ nhanh ch&oacute;ng nhất. Chuẩn cổng sạc USB Type C tr&ecirc;n điện thoại n&agrave;y cũng hỗ trợ rất nhiều.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Samsung S21 Plus ch&iacute;nh h&atilde;ng, gi&aacute; rẻ tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Hiện tại CellphoneS đ&atilde; v&agrave; đang được ph&acirc;n phối phối ch&iacute;nh h&atilde;ng chiếc&nbsp;<strong>Samsung Galaxy S21 Plus</strong>&nbsp;của Samsung với mức gi&aacute; rẻ nhất thị trường k&egrave;m nhiều ưu đ&atilde;i qu&agrave; tặng hấp dẫn cũng như giảm gi&aacute; b&aacute;n khi ra mắt. Đặc biệt bạn c&ograve;n c&oacute; thể trả g&oacute;p với l&atilde;i suất chỉ 0% tại CellphoneS sở hữu ngay điện thoại cực kỳ dễ d&agrave;ng.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, nhiều khả năng sắp tới đ&acirc;y h&atilde;ng sẽ ra mắt&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s22-plus.html\">điện thoại Samsung S22 Plus</a>&nbsp;với nhiều n&acirc;ng cấp nổi bật, đặc biệt l&agrave; cấu h&igrave;nh v&agrave; camera.</span></p>\r\n', 1, 2, 0, 27, 19, '2022-01-02 08:33:11');
INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(142, 'Samsung Z Fold 3', 41000000, 43000000, 216, 'Z Flip3.1.webp', 'Z Flip3.5.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; 7.6 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Dynamic AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Camera g&oacute;c rộng: 12 MP, f/1.8, 26mm, Dual Pixel PDAF, OIS<br />\r\n			&nbsp; Camera tele: 12 MP, f/2.4, 52mm, PDAF, OIS, 2x Zoom quang học<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12 MP, f/2.2<br />\r\n			&nbsp; Camera m&agrave;n h&igrave;nh phụ: 10MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Camera ẩn dưới m&agrave;n h&igrave;nh: 4MP, f/1.8</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Snapdragon 888 5G (5 nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; 12 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; 256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Li-Po 4400 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Android 11</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; 1 nh&acirc;n 2.84 GHz, 3 nh&acirc;n 2.42 GHz &amp; 4 nh&acirc;n 1.8 GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:14px\">&nbsp; Khi gập:158.2 x 67.1 x 16mm<br />\r\n			&nbsp; Khi mở:158.2 x 128.1 x 6.4mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><strong><span style=\"color:#e74c3c\"><span style=\"font-size:20px\">ĐẶC ĐIỂM NỔI BẬT</span></span></strong></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Thiết kế độc đ&aacute;o tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở, chất liệu cao cấp, bản lề chắc chắn</span></li>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh k&eacute;p ấn tượng - M&agrave;n h&igrave;nh ch&iacute;nh 7.9&quot; v&agrave; m&agrave;n h&igrave;nh phụ: 6.23&quot;, 120Hz chuyển động mượt m&agrave;</span></li>\r\n	<li><span style=\"font-size:16px\">Hệ thống camera si&ecirc;u ấn tượng - Bộ 3 ống k&iacute;nh camera 12MP, camera selfie ẩn dưới m&agrave;n h&igrave;nh</span></li>\r\n	<li><span style=\"font-size:16px\">Hiệu năng ấn tượng, l&agrave;m chủ tốc độ - Snapdragon 888 kết hợp RAM 12GB, hỗ trợ 5G</span></li>\r\n	<li>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; Samsung Galaxy Z Fold 3 (5G) - Khẳng định đẳng cấp</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Với sự th&agrave;nh c&ocirc;ng đ&aacute;ng kinh ngạc v&agrave; lu&ocirc;n ch&aacute;y h&agrave;ng từ l&uacute;c ra mắt đến thời điểm hiện tại của hai thế hệ trước l&agrave; Fold 1 v&agrave; Z Fold 2.&nbsp;<strong>Galaxy Z Fold 3</strong>&nbsp;lần n&agrave;y được ra mắt với độ ho&agrave;n thiện cao về thiết kế v&agrave; hiệu năng. Mang đến cho người d&ugrave;ng một trải nghiệm cực kỳ th&uacute; vị hơn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế độc đ&aacute;o tiện lợi, chất liệu cao cấp</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; sản phẩm mang đến độ ho&agrave;n thiện cao hơn nhiều so với hai phi&ecirc;n bản trước, điện thoại Samsung Galaxy Fold 3 được thiết kế k&iacute;ch thước h&agrave;i h&ograve;a hơn. Gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng cầm khi đ&oacute;ng hoặc mở m&agrave;n h&igrave;nh đều dễ sử dụng nhất.&nbsp;Bộ khớp nối bản lề mới gi&uacute;p kết nối bộ khung của Galaxy Z Fold3 ho&agrave;n hảo hơn. Tăng cao độ bền khi đ&oacute;ng mở li&ecirc;n tục v&agrave; cố định cực kỳ chắc chắn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế siêu tiện lợi cực kỳ nhỏ gọn, chất liệu cao cấp\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Chất liệu tr&ecirc;n to&agrave;n bộ bề mặt của chiếc điện thoại Galaxy Z Fold 3 5G được l&agrave;m từ kim ngoại cao cấp nguy&ecirc;n khối, được CNC bộ khung rất ch&iacute;nh x&aacute;c v&agrave; mỏng.&nbsp;Kh&ocirc;ng l&agrave;m tăng l&ecirc;n khối lượng của chiếc điện thoại qu&aacute; nhiều v&agrave; lu&ocirc;n giữ được vẻ ngo&agrave;i nổi bật với chất liệu kim loại nguy&ecirc;n khối n&agrave;y.&nbsp;Phần logo Samsung được in nổi tr&ecirc;n khớp nối của 2 m&agrave;n h&igrave;nh khi đ&oacute;ng lại lộ ra ngo&agrave;i rất bắt mắt v&agrave; mất đi đầy tinh tế khi đ&oacute;ng m&agrave;n h&igrave;nh trở lại.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặc biệt g&oacute;c mở rộng của chiếc điện thoại n&agrave;y l&ecirc;n đến 180 độ v&agrave; c&oacute; thể điều chỉnh g&oacute;c dễ d&agrave;ng v&agrave; cố định rất tiện lợi dễ nh&igrave;n như một chiếc laptop thu nhỏ lại nằm ngay trước mặt của bạn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Nhiều màu sắc lựa chọn\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-2.JPG\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh 7.6 inch 120Hz, m&agrave;n h&igrave;nh phụ 6.2 inch</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Điểm nổi bật nhất tr&ecirc;n chiếc laptop n&agrave;y đ&oacute; l&agrave; hệ thống m&agrave;n h&igrave;nh được trang bị. Cũng giống như thế hệ Fold 2 trước lần n&agrave;y&nbsp;<strong>Samsung Z Fold 3</strong>&nbsp;cũng được trang bị một m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; một m&agrave;n h&igrave;nh phụ rất tiện lợi.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đối với m&agrave;n h&igrave;nh ch&iacute;nh Samsung đ&atilde; sử dụng loại m&agrave;n h&igrave;nh Dynamic Amoled c&ocirc;ng nghệ mới với k&iacute;ch thước chuẩn đạt 7.6 inch. độ ph&acirc;n giải của m&agrave;n h&igrave;nh n&agrave;y được n&acirc;ng cấp với chuẩn 2K cực kỳ sắc n&eacute;t v&agrave; nổi bật.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình 7.6 inch Dynamic Amoled 120Hz\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-3.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Phần viền của m&agrave;n h&igrave;nh ch&iacute;nh cũng được h&atilde;ng tối ưu tinh giản lại thiết kế mang đến phần viền si&ecirc;u mỏng nh&igrave;n rất đẹp v&agrave; bắt mắt. Tần số qu&eacute;t của m&agrave;n h&igrave;nh cũng nằm mức kh&aacute; cao l&ecirc;n đến 120Hz l&agrave;m mới mọi khung h&igrave;nh.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với c&ocirc;ng nghệ mới ho&agrave;n to&agrave;n được &aacute;p dụng l&ecirc;n tr&ecirc;n bộ m&agrave;n h&igrave;nh ch&iacute;nh n&agrave;y Samsung mang đến độ bền cực cao khi c&oacute; thể đ&oacute;ng mở dễ d&agrave;ng m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến khả năng hiển thị v&agrave; cảm ứng của m&agrave;n h&igrave;nh.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh phụ của chiếc Samsung Galaxy Fold 3 cũng được trang bị k&iacute;ch thước kh&aacute; lớn l&ecirc;n đến 6.2 inch mang đến khả năng hiển thị rất tiện lợi. Hiển thị hầu hết mọi th&ocirc;ng b&aacute;o m&agrave; kh&ocirc;ng cần mở m&agrave;n h&igrave;nh ch&iacute;nh ra.&nbsp;Độ ph&acirc;n giải của m&agrave;n h&igrave;nh n&agrave;y cũng nằm ở mức kh&aacute; cao với tấm nền Super Amoled hiển thị cực kỳ mượt m&agrave; như một chiếc m&agrave;n h&igrave;nh ch&iacute;nh.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Cấu h&igrave;nh khủng với&nbsp;Snapdragon 888 kết hợp RAM 12GB</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; thế hệ mới nhất nổi bật nhất giống như một bước khẳng định mới về d&ograve;ng điện thoại nắp gập. Samsung đ&atilde; rất ưu &aacute;i v&agrave; trang bị cho chiếc điện thoại n&agrave;y một cấu h&igrave;nh cực kỳ mạnh mẽ với sự tối ưu cao về hiệu năng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể,&nbsp;<strong>Galaxy Z Fold3</strong>&nbsp;được trang bị con chip&nbsp;Snapdragon 888 cho xung nhịp xử l&yacute; nằm ở mức kh&aacute; cao. Gi&uacute;p mọi thao t&aacute;c mọi ứng dụng đều được xử l&yacute; nhanh ch&oacute;ng tr&ecirc;n cả 2 m&agrave;n h&igrave;nh rất hiệu quả v&agrave; mượt m&agrave;.&nbsp;Bộ nhớ ram của m&aacute;y cũng cho dung lượng l&ecirc;n đến 12GB ngang mới một một chiếc laptop cao cấp. Thế hệ ram l&agrave; loại DDR5 tối ưu đa nhiệm cực tốt, hầu hết mọi ứng dụng nặng nhất đều c&oacute; thể sử dụng c&ugrave;ng l&uacute;c mượt m&agrave;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Samsung cũng cung cấp đến cho người d&ugrave;ng nhiều sự lựa chọn về bộ nhớ m&aacute;y với dung lượng chuẩn l&agrave; 256GB, một kh&ocirc;ng gian lớn gi&uacute;p lưu trữ dễ d&agrave;ng hơn h&agrave;ng ng&agrave;y.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Cấu hình siêu mạnh mẽ với Snapdragon 875+, ram 16Gb, bộ nhớ dung lượng cao\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-5.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hệ thống camera si&ecirc;u ấn tượng, chụp ảnh si&ecirc;u tốt</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Hệ thống camera sau tr&ecirc;n Samsung Z Fold 3 5G cũng c&oacute; độ ph&acirc;n giải kh&aacute; cao với bộ 3 ống k&iacute;nh với camera ch&iacute;nh l&ecirc;n đến 12MP được lấy cảm hứng từ Samsung Galaxy S21. Mang đến khả năng Zoom quang học cao v&agrave; chụp ảnh cực kỳ sắc n&eacute;t.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hệ điều h&agrave;nh Android 11 cũng tối ưu nhiều chế độ chụp kh&aacute;c nhau mang đến khả năng chụp ảnh cực kỳ bắt mắt v&agrave; tối ưu hệ thống cực tốt.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hệ thống camera siêu ấn tượng, chụp ảnh siêu tốt\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-6.JPG\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Để c&oacute; thể ho&agrave;n thiện về gi&aacute; trị v&agrave; chất lượng m&agrave;&nbsp;<strong>Z Fold 3</strong>&nbsp;đ&atilde; mang lại. Samsung đ&atilde; trang bị camera trước độ ph&acirc;n giải kh&aacute; cao l&ecirc;n đến 4MP cho m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; 10MP cho m&agrave;n h&igrave;nh phụ gi&uacute;p bạn c&oacute; nhiều lựa chọn hơn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với ống k&iacute;nh camera trước n&agrave;y, Samsung đ&atilde; tinh chỉnh v&agrave; ho&agrave;n thiện thiết kế c&oacute; thể n&oacute;i hầu như n&oacute; đ&atilde; được ẩn dưới m&agrave;n h&igrave;nh với c&ocirc;ng nghệ mới.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hệ thống camera siêu ấn tượng, chụp ảnh siêu tốt\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-7.JPG\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>5G tốc độ cao, pin 4400mAh sạc si&ecirc;u nhanh, hỗ trợ S Pen</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Galaxy Z Fold3 cũng được trang bị chuẩn kết nối internet 5G cho khả năng kết nối internet si&ecirc;u cao l&ecirc;n đến gần 10Gbps gi&uacute;p bạn c&oacute; thể sử dụng internet mọi nơi với tốc độ sử dụng si&ecirc;u cao.&nbsp;Tuy sử dụng 2 m&agrave;n h&igrave;nh k&iacute;ch thước lớn v&agrave; hiệu năng si&ecirc;u cao nhưng vi&ecirc;n pin của chiếc Samsung đ&atilde; được tối giản để h&agrave;i h&ograve;a với k&iacute;ch thước si&ecirc;u mỏng của đ&oacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Trang bị 5G tốc độ siêu cao, pin 4600mAh sạc siêu nhanh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-z-fold3-5g-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nhưng điều đ&oacute; ho&agrave;n to&agrave;n ngược lại so với những g&igrave; m&agrave; vi&ecirc;n pin mang lại. Thời gian sử dụng tr&ecirc;n Z Fold 3 k&eacute;o d&agrave;i l&ecirc;n đến cả ng&agrave;y cực kỳ thoải m&aacute;i v&igrave; được tối ưu dung lượng pin.&nbsp;hả năng sạc nhanh v&agrave; sạc kh&ocirc;ng d&acirc;y đều mang lại hiệu quả tốt với c&ocirc;ng suất kh&aacute; cao. Sạc đầy thiết bị ngay trở lại chỉ trong khoảng 90 ph&uacute;t l&agrave; đầy.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Độ ho&agrave;n thiện về c&acirc;y b&uacute;t S-Pen tr&ecirc;n Samsung Galaxy Fold 3 đ&atilde; được cải thiện kh&aacute; nhiều khi Samsung đ&atilde; lắng nghe mọi phản hồi của người d&ugrave;ng về thế hệ trước, cải thiện độ nhạy của b&uacute;t kh&aacute; tốt điều hướng th&ocirc;ng minh.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Galaxy Z Fold 3 phi&ecirc;n bản 5G gi&aacute; bao nhi&ecirc;u?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Theo nhiều tin đồn r&ograve; rỉ gần đ&acirc;y cho biết, Galaxy Z Fold 3 sẽ c&oacute; gi&aacute; khởi điểm thấp hơn 20% so với thế hệ trước đ&oacute;. Smartphone m&agrave;n h&igrave;nh gập thế hệ thứ 3 được cho l&agrave; sẽ c&oacute; gi&aacute; b&aacute;n khoảng 1.599 USD (tương đương 37 triệu đồng).&nbsp;So với Z Fold 2 năm ngo&aacute;i v&agrave;o thời điểm ra mắt c&oacute; gi&aacute; 1.999 USD (khoảng gần 46 triệu đồng) th&igrave; mức gi&aacute; của Z Fold3 năm nay dự kiến đ&atilde; giảm gần 400 US (khoảng 9 triệu đồng).</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy Z Fold 3 khi n&agrave;o ra mắt?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Được biết, Samsung đ&atilde; ch&iacute;nh thức x&aacute;c nhận h&atilde;ng sẽ tổ chức sự kiện Unpacked v&agrave;o ng&agrave;y 11/08&nbsp;l&uacute;c 21 giờ bằng h&igrave;nh thức trực tuyến do t&igrave;nh h&igrave;nh dịch bệnh Covid-19 đang diễn biến phức tạp tr&ecirc;n to&agrave;n thế giới.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Tại sự kiện n&agrave;y, dự kiến Samsung sẽ cho ra mắt bộ đ&ocirc;i điện thoại m&agrave;n h&igrave;nh gập thế hệ mới l&agrave; Galaxy Z Fold 3 5G v&agrave; Z Flip 3 5G c&ugrave;ng đồng hồ v&agrave; tai nghe mới.&nbsp;C&aacute;c như c&aacute;c nguồn th&ocirc;ng tin r&ograve; rỉ trước đ&acirc;y tiết lộ, Samsung Z Fold3 5G sẽ được mở b&aacute;n ch&iacute;nh thức v&agrave;o khoảng giữa th&aacute;ng 9 tới đ&acirc;y.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Galaxy Z Fold3 - 5G ch&iacute;nh h&atilde;ng gi&aacute; tốt tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Hiện tại nếu bạn y&ecirc;u th&iacute;ch d&ograve;ng Galaxy Fold của Samsung c&oacute; thể thể đến ngay cửa h&agrave;ng CellphoneS gần nhất tại H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh để trải nghiệm ngay sản phẩm mới n&agrave;y v&agrave; mua ngay điện thoại<strong>&nbsp;Samsung Galaxy Z Fold 3</strong>&nbsp;ch&iacute;nh h&atilde;ng với mức gi&aacute; rẻ nhất thị trường v&agrave; được tặng nhiều phần qu&agrave; hấp dẫn đến từ Samsung cũng như từ hệ thống CellphoneS nh&eacute;!</span></p>\r\n', 1, 4, 0, 27, 19, '2022-01-02 08:32:41'),
(147, 'Samsung A32', 6000000, 6000000, 144, 'A32.jpg', 'A32.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.4 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Super AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Camera g&oacute;c rộng: 64 MP, f/1.8, 26mm, PDAF<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 8 MP, f/2.2, 123˚, 1/4.0&quot;, 1.12&micro;m<br />\r\n			&nbsp; Camera macro: 5 MP, f/2.4<br />\r\n			&nbsp; Cảm biến chiều s&acirc;u:5 MP, f/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 20 MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Mediatek Helio G80 (12 nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Li-Ion 5000 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 11, One UI 3.0</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1080 x 2400 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 nh&acirc;n ( 2x2.0 GHz Cortex-A75 &amp; 6x1.8 GHz Cortex-A55 )</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 158.9 x 73.6 x 8.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><strong><span style=\"color:#e74c3c\"><span style=\"font-size:22px\">ĐẶC ĐIỂM NỔI BẬT</span></span></strong></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">M&agrave;n h&igrave;nh si&ecirc;u mượt, h&igrave;nh ảnh sắc n&eacute;t - M&agrave;n h&igrave;nh Super AMOLED FullHD, tần số qu&eacute;t 90Hz</span></li>\r\n	<li><span style=\"font-size:14px\">Thiết kế tối giản, thể hiện phong c&aacute;ch - M&agrave;u sắc trẻ trung, mặt lưng b&oacute;ng bẩy, cụm camera thiết kế mới.</span></li>\r\n	<li><span style=\"font-size:14px\">Ghi lại mọi khoảnh khắc - Cụm camera 64MP tuyệt đỉnh, camera selfie 20MP chất lượng.</span></li>\r\n	<li><span style=\"font-size:14px\">Pin ấn tượng, k&eacute;o d&agrave;i l&ecirc;n đến 2 ng&agrave;y - Dung lượng 5000mAh, sạc nhanh 15W</span></li>\r\n	<li><span style=\"font-size:14px\">Đa nhiệm vượt trội, hiệu năng mạnh mẽ - Helio G80 8 nh&acirc;n, RAM 8GB, chế độ Game Booster</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:14px\">Đ&aacute;nh gi&aacute; Samsung Galaxy A32 -&nbsp;Điện thoại m&agrave;n h&igrave;nh lớn, cấu h&igrave;nh cao</span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><em>Trong ph&acirc;n khúc smartphone t&acirc;̀m trung hi&ecirc;̣n nay đã có nhi&ecirc;̀u sản ph&acirc;̉m tích hợp nhiều c&ocirc;ng nghệ ti&ecirc;n ti&ecirc;́n, và&nbsp;<strong>Samsung A32</strong>&nbsp;cũng kh&ocirc;ng ngoại lệ. Sở hữu màn hình lớn, camera 48 MP&nbsp;cùng vi xử lý hi&ecirc;̣u năng cao, đ&acirc;y sẽ là chi&ecirc;́c smartphone phù hợp với mọi người dùng.</em></span></p>\r\n\r\n<h3><span style=\"font-size:14px\">Thi&ecirc;́t k&ecirc;́ thời thượng cùng màn hình FullHD+ vi&ecirc;̀n mỏng &acirc;́n tượng</span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Galaxy A32 mang th&acirc;n máy vu&ocirc;ng vức thời thượng cùng màu đen bắt mắt. T&ocirc;̉ng kích thước th&acirc;n máy mỏng chỉ 9.1mm và có trọng lượng 205g, giúp c&acirc;̀m nắm d&ecirc;̃ dàng &amp; thu&acirc;̣n ti&ecirc;̣n cho mọi tác vụ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"Thiết kế thời thượng cùng màn hình Full HD+ viền mỏng ấn tượng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a32-0.JPG\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&aacute;y được trang bị màn hình giọt nước nhỏ có t&ecirc;n là Infinity-U với vi&ecirc;̀n mỏng hai b&ecirc;n &acirc;́n tượng, tạo kh&ocirc;ng gian giải trí đ&acirc;̀y chỉ chi ti&ecirc;́t. Màn hình của máy có kích thước 6.4 inch, đ&ocirc;̣ ph&acirc;n giải FullHD+ (720x1600 pixels) sẽ mang đ&ecirc;́n ch&acirc;́t lượng hình ảnh rõ nét cho các trình phát video và trò chơi giải trí.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"Nhiều màu sắc lựa chọn\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a32-1.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:14px\">Bốn camera sau đ&ecirc;́n 64 MP kèm tính năng chụp si&ecirc;u r&ocirc;̣ng thỏa sức sáng tạo</span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Điện thoại Samsung A32 có cụm camera sau t&acirc;̣n bốn &ocirc;́ng kính - m&ocirc;̣t th&ocirc;ng s&ocirc;́ &acirc;́n tượng cho chi&ecirc;́c smartphone ph&ocirc;̉ th&ocirc;ng. C&acirc;́u hình bốn &ocirc;́ng kính này g&ocirc;̀m: camera chính 64 MP, camera g&oacute;c rộng 8MP, camera macro 5MP v&agrave; camera cảm biến độ s&acirc;u 5MP.&nbsp; B&ecirc;n cạnh đ&oacute; l&agrave; t&iacute;nh năng Zoom kỹ thu&acirc;̣t s&ocirc;́, Flash tự đ&ocirc;̣ng và nh&acirc;̣n di&ecirc;̣n khu&ocirc;n mặt là những tính năng b&ocirc;̉ trợ cho camera Samsung Galaxy A32.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"Ba camera sau đến 48 MP kèm tính năng chụp siêu rộng thỏa sức sáng tạo\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a32-4_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Mặt trước Samsung Galaxy A32 còn được trang bị camera selfie có đ&ocirc;̣ ph&acirc;n giải 20 MP với kh&acirc;̉u đ&ocirc;̣ f/2.2. Camera trước còn h&ocirc;̃ trợ tính năng chụp góc r&ocirc;̣ng, giúp người dùng có những bức ảnh chụp nhóm đ&acirc;̀y đủ &amp; đẹp mắt.</span></p>\r\n\r\n<h3><span style=\"font-size:14px\">Vi xử lý&nbsp;MTK Helio G80, b&ocirc;̣ nhớ trong 128 GB</span></h3>\r\n\r\n<p><span style=\"font-size:14px\">B&ecirc;n trong điện thoại hi&ecirc;̣n di&ecirc;̣n b&ocirc;̣ vi xử lý MediaTek Helio G80 8 nh&acirc;n 64-bit. Được cải ti&ecirc;́n hi&ecirc;̣u su&acirc;́t cao hơn 25% so với các dòng chip 8 lõi cũ, Helio G80 mang hi&ecirc;̣u năng vượt tr&ocirc;̣i góp ph&acirc;̀n tạo trải nghi&ecirc;̣m gaming &amp; ch&acirc;́t lượng ảnh chụp t&ocirc;́i ưu nh&acirc;́t. Đ&ocirc;̀ng thời, Helio G80 h&ocirc;̃ trợ&nbsp;<strong>Galaxy A32</strong>&nbsp;mang đ&ecirc;́n t&ocirc;́c đ&ocirc;̣ truy c&acirc;̣p internet nhanh nh&acirc;́t hi&ecirc;̣n nay cho mọi tác vụ c&acirc;̀n thi&ecirc;́t.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"Vi xử lý Helio P65 hỗ trợ công nghệ 5G, bộ nhớ trong 64 GB\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a32-3.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Samsung Galaxy A32 có b&ocirc;̣ nhớ RAM 6 GB và dung lượng lưu trữ 128 GB sử dụng thoải mái. Ngoài ra máy sẽ chạy giao di&ecirc;̣n One UI của Samsung tr&ecirc;n n&ecirc;̀n tảng Android 10 mượt mà. Máy sẽ được c&acirc;̣p nh&acirc;̣t l&ecirc;n Android 11 trong thời gian tới đ&acirc;y giúp người dùng ti&ecirc;́p c&acirc;̣n những tính năng mới nh&acirc;́t.</span></p>\r\n\r\n<h3><span style=\"font-size:14px\">Dung lượng pin t&acirc;̣n 5000mAh, tích hợp cảm bi&ecirc;́n v&acirc;n tay bảo m&acirc;̣t cao</span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Samsung A32 được trang bị vi&ecirc;n pin Li-Po dung lượng 5000mAh. Với dung lượng này, người dùng sẽ có hơn 19 giờ sử dụng internet, 36 giờ đ&agrave;m thoại v&agrave; 20 giờ xem video, góp ph&acirc;̀n làm n&ecirc;n trải nghi&ecirc;̣m sử dụng tuy&ecirc;̣t hảo cho m&ocirc;̣t thi&ecirc;́t bị smartphone. M&aacute;y cũng hỗ trợ sạc nhanh 15W gi&uacute;p bổ sung năng lượng một c&aacute;ch nhanh ch&oacute;ng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"Dung lượng pin tận 5000mAh, tích hợp cảm biến vân tay bảo mật cao\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a32-5.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phía tr&ecirc;n màn hình Galaxy A32 còn được tích hợp cảm bi&ecirc;́n v&acirc;n tay hi&ecirc;̣n đại cho phép người dùng mở khóa đi&ecirc;̣n thoại m&ocirc;̣t cách ti&ecirc;̣n lợi &amp; nhanh chóng, cũng như tăng cường tính bảo m&acirc;̣t dữ li&ecirc;̣u b&ecirc;n trong với hi&ecirc;̣u quả cao hơn các dạng bảo m&acirc;̣t m&acirc;̃u hình hay chữ s&ocirc;́.</span></p>\r\n\r\n<h2><span style=\"font-size:14px\"><strong>Điện thoại Samsung Galaxy A32 gi&aacute; bao nhi&ecirc;u?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">SS Galaxy A32&nbsp;được Samsung định hướng trong ph&acirc;n khúc ph&ocirc;̉ th&ocirc;ng v&agrave;&nbsp;đ&atilde; ch&iacute;nh thức l&ecirc;n kệ tại c&aacute;c cửa h&agrave;ng b&aacute;n lẻ to&agrave;n quốc từ ng&agrave;y 12/03/2021. Mức gi&aacute; Samsung A32 đề nghị l&agrave; 6,690,000 VNĐ cho phi&ecirc;n bản LTE RAM 6GB/ROM 128GB.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&aacute;y sở hữu 4 phi&ecirc;n bản m&agrave;u sắc trẻ trung cho người d&ugrave;ng lựa chọn bao gồm: Đen C&aacute; T&iacute;nh, Trắng Năng Động, Xanh S&aacute;ng Tạo v&agrave; T&iacute;m Thời Thượng.</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Mua Samsung A32 chính hãng gi&aacute; rẻ ở đ&acirc;u - Đến ngay CellphoneS</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Điện thoại&nbsp;<strong>Samsung Galaxy A32</strong>&nbsp;chính là chi&ecirc;́c smartphone dành cho người dùng ở mọi ph&acirc;n khúc. Đ&ecirc;̉ có trong tay đi&ecirc;̣n thoại Samsung chính hãng với giá h&acirc;́p d&acirc;̃n, bạn hãy đ&ecirc;́n ngay h&ecirc;̣ th&ocirc;́ng CellphoneS.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">CellphoneS mang đ&ecirc;́n cho khách hàng các sản ph&acirc;̉m máy tính bảng, laptop, phụ ki&ecirc;̣n &acirc;m thanh và đi&ecirc;̣n thoại chính hãng từ nhi&ecirc;̀u thương hi&ecirc;̣u n&ocirc;̉i ti&ecirc;́ng. Ngoài ra, h&ecirc;̣ th&ocirc;́ng CellphoneS lu&ocirc;n có các chương trình khuy&ecirc;́n mãi dành cho khách hàng mua sắm tại cửa hàng. Th&ocirc;ng tin chi ti&ecirc;́t Samsung A32 bạn hãy gọi ngay đ&ecirc;́n hotline 1800.2097 đ&ecirc;̉ được tư v&acirc;́n cụ th&ecirc;̉.</span></p>\r\n', 1, 4, 0, 27, 19, '2022-01-02 08:32:00'),
(148, 'Samsung A52S', 9650000, 9650000, 144, 'a52s-trang-01.jpg', 'a52s-trang-02.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.5 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Super AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Camera ch&iacute;nh: 64 MP (f/1.8) OIS<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP (f2.2)<br />\r\n			&nbsp; Camera Macro chụp cận cảnh: 5MP (f/2.2)<br />\r\n			&nbsp; Camera x&oacute;a ph&ocirc;ng: 5MP (f/2.4)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 32 MP (f2.2)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Snapdragon 778G 5G 8 nh&acirc;n</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 4500 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 11, One UI 3.1</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1080 x 2400 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1 nh&acirc;n 2.4 GHz, 3 nh&acirc;n 2.2 GHz &amp; 4 nh&acirc;n 1.9 GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 159.9 x 75.1 x 8.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><span style=\"font-size:18px\"><span style=\"color:#e74c3c\"><strong>ĐẶC ĐIỂM NỔI BẬT</strong></span></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Hiệu năng ưu việt, đa nhiệm mạnh mẽ - Chip xử l&iacute; Snapdragon 778G 5G v&agrave; RAM 8GB</span></li>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh sắc n&eacute;t, chuyển động mượt m&agrave; - M&agrave;n h&igrave;nh Super AMOLED 6.5&quot; chuẩn FHD+</span></li>\r\n	<li><span style=\"font-size:16px\">Bắt trọn khung h&igrave;nh sắc n&eacute;t - Cụm 4 camera sau chất lượng l&ecirc;n đến 64MP, chống rung ổn định</span></li>\r\n	<li><span style=\"font-size:16px\">Pin ấn tượng cho trải nghiệm thả ga - Pin 4500 mAh, sạc nhanh 25W, c&ocirc;ng nghệ tiết kiệm pin th&ocirc;ng minh</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; Samsung Galaxy A52s&nbsp;</strong><strong>- 5G tốc độ cao, hiệu năng vượt trội</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Samsung&nbsp;A52s 5G</strong>&nbsp;l&agrave; phi&ecirc;n bản n&acirc;ng cấp của Galaxy A52. M&aacute;y kh&ocirc;ng chỉ được thừa hưởng thiết kế tinh tế v&agrave; ấn tượng của phi&ecirc;n bản đi trước m&agrave; ch&uacute;ng c&ograve;n được n&acirc;ng cấp kh&aacute; nhiều về trang bị v&agrave; t&iacute;nh năng. Chắc chắn đ&acirc;y sẽ l&agrave; chiếc smartphone mang đến cho người d&ugrave;ng những trải nghiệm th&uacute; vị kh&oacute; qu&ecirc;n.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế tinh xảo, đứng đầu xu hướng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Galaxy A52s 5G được kế nhiệm thiết kế từ phi&ecirc;n bản đi trước với thiết kế nguy&ecirc;n khối. Mặt lưng của m&aacute;y được phủ một lớp nh&aacute;m để tạo n&ecirc;n một tổng thể v&ocirc; c&ugrave;ng tinh xảo.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế tinh xảo, đứng đầu xu hướng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-A52S-1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y được trang bị c&ocirc;ng nghệ chống nước v&agrave; bụi bẩn độc đ&aacute;o chuẩn IP67 để c&oacute; thể chống nước ở độ s&acirc;u 1 m&eacute;t tối đa trong v&ograve;ng 30 ph&uacute;t. Từ đ&oacute;, người d&ugrave;ng c&oacute; thể thoải m&aacute;i trải nghiệm trong mọi điều kiện thời tiết v&agrave; m&ocirc;i trường kh&aacute;c nhau.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n cạnh đ&oacute; Galaxy A52s c&ograve;n sở hữu hệ thống &acirc;m thanh v&ograve;m với vị tr&iacute; ph&acirc;n bổ loa v&ocirc; c&ugrave;ng khoa học. Bạn c&oacute; thể thoải m&aacute;i trải nghiệm những tựa game hay l&agrave; tận hưởng những ph&uacute;t gi&acirc;y giải tr&iacute; c&ugrave;ng phim ảnh nhờ chất &acirc;m chuẩn điện ảnh.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh rực rỡ gi&uacute;p đắm ch&igrave;m trong mọi h&igrave;nh ảnh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại Samsung Galaxy A52s 5G được trang bị m&agrave;n h&igrave;nh nốt ruồi c&oacute; k&iacute;ch thước lớn c&ugrave;ng với đ&oacute; l&agrave; thiết kế tr&agrave;n viền gi&uacute;p mở rộng tối đa kh&ocirc;ng gian hiển thị. B&ecirc;n cạnh đ&oacute; tần số qu&eacute;t cực lớn v&agrave; tấm nền chất lượng gi&uacute;p mọi trải nghiệm vuốt chạm tr&ecirc;n m&aacute;y được trở n&ecirc;n mượt m&agrave;, trơn tru hơn rất nhiều.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình rực rỡ giúp đắm chìm trong mọi hình ảnh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-A52S-2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED v&ocirc; c&ugrave;ng chất lượng. Mọi h&igrave;nh ảnh, thước phim tr&ecirc;n điện thoại đều trở n&ecirc;n tươi tắn v&agrave; v&ocirc; c&ugrave;ng sắc n&eacute;t. Từ đ&oacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i tận hưởng những chương tr&igrave;nh giải tr&iacute; cực kỳ hấp dẫn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặc biệt, Samsung A52s 5G c&ograve;n được tăng cường bảo mật với c&ocirc;ng nghệ cảm biến v&acirc;n tay được thiết kế ngay dưới m&agrave;n h&igrave;nh. Từ đ&oacute; gi&uacute;p bạn c&oacute; thể mở kh&oacute;a điện thoại hay đăng nhập dễ d&agrave;ng bằng v&acirc;n tay m&agrave; kh&ocirc;ng cần nhập mật khẩu.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hiệu năng bức ph&aacute; c&ugrave;ng con chip h&agrave;ng đầu</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Galaxy A52s 5G</strong>&nbsp;được trang bị con chip hiện đại h&agrave;ng đầu được sản xuất tr&ecirc;n quy tr&igrave;nh 8 nm hiện đại. Kết hợp với đ&oacute; l&agrave; RAM 8GB gi&uacute;p bạn thực hiện t&aacute;c vụ đa nhiệm được tốt hơn v&agrave; mượt m&agrave; hơn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hiệu năng bức phá cùng con chip hàng đầu\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-A52S-3.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, m&aacute;y cũng được trang bị bộ nhớ trong cực khủng để bạn lưu giữ những video hay những h&igrave;nh ảnh m&agrave; kh&ocirc;ng lo bị đầy. Đặc biệt c&ocirc;ng nghệ 5G tr&ecirc;n m&aacute;y gi&uacute;p người d&ugrave;ng c&oacute; thể truy cập internet với tốc độ vượt trội.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Cụm 4 camera sau chất lượng, nhiều c&ocirc;ng nghệ hiện đại</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Camera tr&ecirc;n Samsung Galaxy A52s 5G sẽ mang đến cho người d&ugrave;ng những shoot h&igrave;nh v&ocirc; c&ugrave;ng độc đ&aacute;o với c&aacute;c th&ocirc;ng số: 64 MP, 12 MP, 5 MP v&agrave; 5 MP. B&ecirc;n cạnh th&ocirc;ng số ấn tượng l&agrave; c&aacute;c c&ocirc;ng nghệ v&ocirc; c&ugrave;ng hiện đại như: hỗ trợ chống rung quang học OIS cao cấp gi&uacute;p h&igrave;nh ảnh lu&ocirc;n đảm bảo chất lượng, khả năng lấy n&eacute;t ch&iacute;nh x&aacute;c ngay cả khi bạn chụp trong điều kiện thiếu s&aacute;ng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Cụm 4 camera sau chất lượng, nhiều công nghệ hiện đại\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-A52S-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặc biệt hơn, bạn c&oacute; thể chụp mọi thứ trở n&ecirc;n gần hơn để mang lại trải nghiệm đầy nghệ thuật. C&ugrave;ng với đ&oacute;, bạn c&oacute; thể điều chỉnh độ s&acirc;u trường ảnh một c&aacute;ch linh hoạt v&agrave; nhanh ch&oacute;ng gi&uacute;p những bức ảnh ch&acirc;n dung c&oacute; chất lượng thực sự nổi bật.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera trước tr&ecirc;n Samsung A52s 5G c&oacute; độ ph&acirc;n giải 32 MP với khả năng động lấy n&eacute;t, chế độ HDR, khả năng nhận diện khu&ocirc;n mặt để bạn lu&ocirc;n tỏa s&aacute;ng trong mọi trường hợp.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Pin ấn tượng cho trải nghiệm thả ga</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Với Samsung Galaxy A52s 5G bạn ho&agrave;n to&agrave;n c&oacute; thể giải tr&iacute; bất tận cả ng&agrave;y với pin c&oacute; dung lượng l&ecirc;n tới 4500 mAh. B&ecirc;n cạnh đ&oacute; c&ocirc;ng nghệ AI độc đ&aacute;o gi&uacute;p tăng thời lượng sử dụng một c&aacute;ch tối ưu gi&uacute;p bạn c&oacute; th&ecirc;m thời gian để trải nghiệm.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Pin ấn tượng cho trải nghiệm thả ga\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-A52S-5.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hơn nữa m&aacute;y được kết hợp c&ocirc;ng nghệ sạc nhanh 25W th&iacute;ch hợp với những ai c&oacute; cường độ sử dụng cao v&agrave; muốn tiết kiệm được tối đa thời gian sạc.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy A52s&nbsp;</strong><strong>gi&aacute;&nbsp;</strong><strong>bao nhi&ecirc;u? Ra mắt khi n&agrave;o?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Theo th&ocirc;ng tin từ nh&agrave; sản xuất Samsung th&igrave; Galaxy A52s 5G sẽ được ra mắt v&agrave;o cuối năm nay. C&ograve;n thời gian ra mắt cụ thể hiện tại vẫn chưa được tiết lộ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Về gi&aacute; b&aacute;n, Samsung A52s 5G sẽ c&oacute; gi&aacute; khoảng tr&ecirc;n 11 triệu đồng.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Samsung Galaxy A52s 5G ch&iacute;nh h&atilde;ng gi&aacute; rẻ tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; chiếc smartphone độc đ&aacute;o, ấn tượng v&agrave; mức gi&aacute; v&ocirc; c&ugrave;ng phải chăng&nbsp;<strong>Samsung Galaxy A52s 5G</strong>&nbsp;hứa hẹn sẽ mang đến cho người d&ugrave;ng trải nghiệm cực ấn tượng với mạng 5G tốc độc cao, hiệu năng mạnh mẽ c&ugrave;ng camera chất lượng. Để sở hữu sản phẩm nhanh nhất, gi&aacute; tốt v&agrave; nhiều ưu đ&atilde;i hấp dẫn bạn h&atilde;y li&ecirc;n hệ với CellphoneS ngay h&ocirc;m nay nh&eacute;.</span></p>\r\n', 1, 2, 0, 27, 19, '2022-01-02 08:31:26');
INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(149, 'Samsung A72', 12000000, 14500000, 144, 'A72.1.jpg', 'a72.5.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.7 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Super AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Camera g&oacute;c rộng: 64 MP, f/1.8, 26mm (wide), PDAF, OIS<br />\r\n			&nbsp; Camera tele: 8 MP, f/2.4, (telephoto), PDAF, OIS, Zoom quang 3X<br />\r\n			&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12 MP, f/2.2, 123˚<br />\r\n			&nbsp; Camere macro: 5 MP, f/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 32 MP, f/2.2, 26mm (wide), 1/2.8&quot;, 0.8&micro;m</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Snapdragon 720G (8 nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Li-Ion 5000 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 11, One UI 3.0</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp;1080 x 2400 pixels (FullHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 nh&acirc;n ( 2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver )</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 165 x 77.4 x 8.4 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><span style=\"color:#e74c3c\"><strong><span style=\"font-size:20px\">ĐẶC ĐIỂM NỔI BẬT</span></strong></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Giải tr&iacute; điện ảnh chất lượng - M&agrave;n h&igrave;nh Super AMOLED tần số qu&eacute;t 90Hz, độ s&aacute;ng cao 800 nit.</span></li>\r\n	<li><span style=\"font-size:16px\">Bắt trọng khoảnh khắc sắc n&eacute;t - Bộ camera 64MP, hỗ trợ chống rung 2 camera, Zoom xa 30X</span></li>\r\n	<li><span style=\"font-size:16px\">An to&agrave;n khi sử dụng - Kh&aacute;ng nước, kh&aacute;ng bụi IP67</span></li>\r\n	<li><span style=\"font-size:16px\">Hiệu năng ưu việt, đa nhiệm dễ d&agrave;ng - Snapdragon 720G 8 nh&acirc;n, RAM 8GB.</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy A72 - Thiết kế ấn tượng, hiệu năng mạnh mẽ</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Vừa mới đ&acirc;y Samsung vừa cho ra mắt chiếc smartphone&nbsp;<strong>Samsung Galaxy A72</strong>&nbsp;thuộc d&ograve;ng A của h&atilde;ng. C&oacute; thể n&oacute;i đ&acirc;y l&agrave; con &aacute;t chủ b&agrave;i của thương hiệu n&agrave;y trong năm 2020 bởi những n&acirc;ng cấp vượt trội từ thiết kế cho đến camera lẫn hiệu năng. Nếu bạn đang t&igrave;m kiếm cho m&igrave;nh một chiếc điện thoại Samsung mới th&igrave; c&oacute; thể đ&acirc;y l&agrave; sự lựa chọn ph&ugrave; hợp d&agrave;nh cho bạn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, bạn c&oacute; thể tham khảo th&ecirc;m&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">điện thoại Samsung Galaxy Z Fold 3 5G</a>&nbsp;sở hữu những c&ocirc;ng nghệ hiện đại v&agrave; cấu h&igrave;nh mạnh mẽ nhất hiện nay.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh AMOLED 6.7 inch Full HD+ sắc n&eacute;t</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung A72 sở hữu thiết kế c&oacute; nhiều n&eacute;t tương đồng với những người đ&agrave;n anh trước đ&oacute; của m&igrave;nh.&nbsp;A72 c&oacute; k&iacute;ch thước v&ocirc; c&ugrave;ng nhỏ gọn, c&aacute;c cạnh viền được thiết kế bo cong từ đ&oacute; gi&uacute;p cho m&aacute;y c&oacute; một diện mạo cực k&igrave; hiện đại, đẹp mắt v&agrave; thời thượng hơn rất nhiều. Cảm biến v&acirc;n tay được dời l&ecirc;n m&agrave;n h&igrave;nh từ đem đến một diện mạo ho&agrave;n hảo kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Kích thước nhỏ gọn bóng bẩy, màn hình AMOLED 6.7 inch Full HD+ sắc nét\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a72-1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh của Galaxy A72 l&agrave; m&agrave;n h&igrave;nh Super AMOLED c&oacute; k&iacute;ch thước rộng đến 6.7 inch c&oacute; độ ph&acirc;n giải Full HD+ từ đ&oacute; cho h&igrave;nh ảnh hiển thị sắc n&eacute;t v&agrave; ch&acirc;n thực. Phần viền m&agrave;n h&igrave;nh được l&agrave;m cong từ đ&oacute; đem đến kh&ocirc;ng gian hiển thị lớn v&agrave; v&ocirc; c&ugrave;ng thoải m&aacute;i.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặc d&ugrave; c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh kh&aacute; lớn nhưng vẫn cho người d&ugrave;ng cảm gi&aacute;c cầm nắm điện thoại thoải m&aacute;i, bạn ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng thao t&aacute;c với thiết bị của m&igrave;nh bằng 1 tay. M&agrave;n h&igrave;nh c&ograve;n sở hữu c&aacute;c dải m&agrave;u ch&iacute;nh x&aacute;c v&agrave; độ ph&acirc;n giải kh&aacute; cao từ đ&oacute; cho người d&ugrave;ng những trải nghiệm ấn tượng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Cụm 4 camera, cảm biến ch&iacute;nh 64 MP, camera trước 32MP ấn tượng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">C&oacute; thể n&oacute;i camera của A72 l&agrave; phần đột ph&aacute; nhất của chiếc smartphone n&agrave;y. M&aacute;y được trang bị đến 4 camera ở ph&iacute;a mặt sau với c&aacute;c th&ocirc;ng số ấn tượng lần lượt l&agrave;: Ch&iacute;nh 64 MP hỗ trợ chống rung quang học OIS. Ba camera phụ l&agrave; camera tele 8MP hỗ trợ zoom quang học 3x, camera si&ecirc;u rộng 12MP v&agrave;&nbsp;camera macro 5MP.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặc biệt đ&acirc;y l&agrave; lần đầu ti&ecirc;n c&ocirc;ng nghệ chống rung quang học OIS được trang bị tr&ecirc;n model tầm trung của h&atilde;ng n&agrave;y, trước đ&acirc;y c&ocirc;ng nghệ n&agrave;y chỉ c&oacute; mặt ở những chiếc smartphone cao cấp. C&ocirc;ng nghệ n&agrave;y cho ph&eacute;p h&igrave;nh ảnh video ổn định v&agrave; sắc n&eacute;t hơn khi chụp v&agrave; quay.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Cụm 4 camera: Chính 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP, camera trước 32MP ấn tượng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a72-2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera trước của&nbsp;<strong>Samsung A72</strong>&nbsp;c&oacute; độ ph&acirc;n giải 32MP được đặt ở mặt trước gọn g&agrave;ng. Với thiết c&oacute; độ ph&acirc;n giải cao như vậy người d&ugrave;ng c&oacute; thể thoải m&aacute;i chụp h&igrave;nh tự sướng lung linh v&agrave; gọi video call cho người th&acirc;n v&agrave; bạn b&egrave; dễ d&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra c&ograve;n rất nhiều t&iacute;nh năng chụp h&igrave;nh ấn tượng kh&aacute;c cũng được Samsung trang bị cho m&aacute;y như: HDR, to&agrave;n cảnh, quay phim full HD&nbsp;1080p@30fps, quay phim full HD&nbsp;1080p@240fps.&nbsp;Nếu l&agrave; người thường xuy&ecirc;n chụp h&igrave;nh th&igrave; đ&acirc;y l&agrave; chiếc smartphone bạn kh&ocirc;ng n&ecirc;n bỏ lỡ.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hiệu năng mạnh với Snapdragon 720G, pin 5000mAh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Mặc d&ugrave; l&agrave; chiếc smartphone tầm trung nhưng Samsung Galaxy A72 vẫn sở hữu cho m&igrave;nh một hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ. Cụ thể l&agrave; việc được trang bị CPU Exynos 980 8 nh&acirc;n tốc độ 2 nh&acirc;n 2.3 GHz &amp; 6 nh&acirc;n 1.8 GHz cho khả năng xử l&yacute; ho&agrave;n hảo nhanh ch&oacute;ng mượt m&agrave;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đi k&egrave;m với CPU cực mạnh l&agrave; dung lượng ram 8GB v&agrave; bộ nhớ trong l&ecirc;n tới 256GB gi&uacute;p khả năng xử l&yacute; của m&aacute;y được n&acirc;ng l&ecirc;n tầm cao mới, bộ nhớ c&oacute; dung lượng lớn cho người d&ugrave;ng thoải m&aacute;i lưu trữ h&igrave;nh ảnh dữ liệu hay tải ứng dụng về một c&aacute;ch thoải m&aacute;i. GPU&nbsp;Adreno 618 gi&uacute;p việc xử l&yacute; h&igrave;nh ảnh của m&aacute;y cực k&igrave; tốt.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"CPU Exynos 980 8 nhân, ram 6GB, bộ nhớ 128GB, pin 6000mAH\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-a72-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng chỉ ấn tượng từ thiết kế camera v&agrave; cấu h&igrave;nh khủng của m&igrave;nh Samsung Galaxy A72 c&ograve;n sở hữu một vi&ecirc;n pin cực k&igrave; ấn tượng. Mang trong m&igrave;nh vi&ecirc;n pin c&oacute; dung lượng l&ecirc;n đến 5.000 mAh cho thời lượng sử dụng v&ocirc; c&ugrave;ng tốt.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Người d&ugrave;ng c&oacute; thể thoải m&aacute;i trải nghiệm chiếc smartphone của m&igrave;nh m&agrave; kh&ocirc;ng c&ograve;n phải lo về t&igrave;nh trạng mau hết pin hay hết pin giữa chừng như trước kia nữa. Hệ điều h&agrave;nh Android 10 mới với giao diện OneUI 2.0 dễ thao t&aacute;c c&ugrave;ng khả năng tiết kiệm năng lượng v&ocirc; c&ugrave;ng tốt.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Samsung Galaxy A72 ch&iacute;nh h&atilde;ng, ưu đ&atilde;i tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Bạn đang muốn sở hữu cho m&igrave;nh chiếc&nbsp;<strong>điện thoại Samsung Galaxy A72</strong>&nbsp;cực k&igrave; ấn tượng n&agrave;y. H&atilde;y nhanh ch&acirc;n đến với CellphoneS, với mức gi&aacute; hợp l&yacute; bảo h&agrave;nh tốt khi mua Galaxy A72 ở đ&acirc;y sẽ l&agrave;m bạn ấn tượng. Ngo&agrave;i ra c&ograve;n rất nhiều những ch&iacute;nh s&aacute;ch hấp dẫn kh&aacute;c đang chờ c&aacute;c bạn tới trải nghiệm.</span></p>\r\n', 1, 2, 0, 27, 19, '2022-01-02 08:30:51'),
(151, 'Samsung Galaxy Note 20 Ultra 5G', 20500000, 22000000, 216, 'black_final_1.jpg', 'ULTRA20.1.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.9 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Dynamic AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 108 MP, f/1.8, 26mm (wide), 1/1.33&quot;, 0.8&micro;m, PDAF, Laser AF, OIS<br />\r\n			&nbsp; 12 MP, f/3.0, 103mm (periscope telephoto), 1.0&micro;m, PDAF, OIS, 5x optical zoom, 50x hybrid zoom<br />\r\n			&nbsp; 12 MP, f/2.2, 13mm (ultrawide), 1/2.55&quot;, 1.4&micro;m</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 10 MP, f/2.2, 26mm (wide), 1/3.2&quot;, 1.22&micro;m, Dual Pixel PDAF</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Exynos 990 (7 nm+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 12 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 256 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Non-removable Li-Ion 4500 mAh battery<br />\r\n			&nbsp; Fast charging 25W<br />\r\n			&nbsp; USB Power Delivery 3.0<br />\r\n			&nbsp; Fast Qi/PMA wireless charging<br />\r\n			&nbsp; Reverse wireless charging 9W</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 10, One UI 2.1</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1440 x 3088 pixels (QHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Octa-core (2x2.73 GHz Mongoose M5 &amp; 2x2.50 GHz Cortex-A76 &amp; 4x2.0 GHz Cortex-A55)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 164.8 x 77.2 x 8.1 mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><span style=\"color:#e74c3c\"><span style=\"font-size:20px\"><strong>ĐẶC ĐIỂM NỔI BẬT</strong></span></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Sang trọng, cao cấp - M&agrave;u sắc độc đ&aacute;o v&agrave; cuốn h&uacute;t</span></li>\r\n	<li><span style=\"font-size:16px\">Chụp ảnh chuy&ecirc;n nghiệp - Bộ 3 camera hỗ trợ Zoom xa đến 30X</span></li>\r\n	<li><span style=\"font-size:16px\">Ghi ch&uacute; nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c với b&uacute;t S- Pen thế hệ mới</span></li>\r\n	<li><span style=\"font-size:16px\">Chơi game đỉnh cao - Exynos 990 7nm mạnh mẽ, hiệu năng xử l&yacute; vượt trội</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n cạnh bi&ecirc;n bản Galaxy Note 20 thường, Samsung c&ograve;n cho ra mắt&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cho khả năng kết nối dữ liệu cao c&ugrave;ng thiết kế nguy&ecirc;n khối sang trọng, bắt mắt. Đ&acirc;y sẽ l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn để sử dụng m&agrave; kh&ocirc;ng bị lỗi thời sau thời gian d&agrave;i ra mắt.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">Galaxy Z Fold 3 5G</a>&nbsp;nếu bạn cần sự kh&aacute;c biệt v&agrave; khẳng định đẳng cấp.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế khung nh&ocirc;m nguy&ecirc;n khối, mặt sau k&iacute;nh cường lực sang trọng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; một sản phẩm c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn v&igrave; vậy Samsung đ&atilde; trang bị cho Galaxy Note 20 Ultra 5G&nbsp; với c&ocirc;ng nghệ kết nối dữ liệu mạnh mẽ c&ugrave;ng thiết kế nguy&ecirc;n khối. Gi&uacute;p c&aacute;c linh kiện b&ecirc;n trong điện thoại được cố định chắc chắn đảm bảo mọi thứ b&ecirc;n trong lu&ocirc;n được an to&agrave;n. Kh&ocirc;ng những vậy khung nh&ocirc;m tạo tr&ecirc;n những đường viền cực kỳ sang trọng v&agrave; bắt mắt khi nh&igrave;n v&agrave;o.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế khung nhôm nguyên khối, mặt sau kính cường lực sang trọng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt sau của SS Galaxy Note n&agrave;y được h&atilde;ng trang bị mặt k&iacute;nh tạo n&ecirc;n vẻ sang trọng v&agrave; cuốn h&uacute;t khi nh&igrave;n v&agrave;o chiếc điện thoại từ b&ecirc;n ngo&agrave;i. Loại k&iacute;nh cho cả mặt trước v&agrave; mặt sau đều l&agrave; k&iacute;nh cường lực Gorilla Glass 6 kh&ocirc;ng những sang trọng m&agrave; c&ograve;n mang đến sự chắc chắn hạn chế rơi vỡ vực tốt.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh 6.9 inch độ ph&acirc;n giải 2K 120Hz, cấu h&igrave;nh mạnh mẽ</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Đối với bất kỳ chiếc điện thoại n&agrave;o đến từ Samsung d&ograve;ng Note lu&ocirc;n l&agrave; những chiếc điện thoại c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn. Samsung Galaxy Note 20 Ultra 5G cũng vậy n&oacute; được trang bị m&agrave;n h&igrave;nh 6.9 inch 2 cạnh b&ecirc;n cong tạo n&ecirc;n vẻ đẹp sang trọng, độ ph&acirc;n giải đạt 2K 1440 x 3200 pixels cho h&igrave;nh ảnh hiển thị cực kỳ sắc n&eacute;t. Ngo&agrave;i ra tần số qu&eacute;t tr&ecirc;n m&agrave;n h&igrave;nh cũng nằm ở mức lớn 120Hz ở độ ph&acirc;n giải FHD v&agrave; 60Hz ở QHD. Mọi h&igrave;nh ảnh khi bạn chơi game với khung h&igrave;nh cao hay trải nghiệm những bộ phim h&agrave;nh động cực kỳ mượt m&agrave; v&agrave; sắc n&eacute;t với c&ocirc;ng nghệ HDR10+.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình 6.9 inch độ phân giải 2K 120Hz, cấu hình mạnh mẽ\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Samsung Note 20 Ultra 5G</strong>&nbsp;sở hữu b&ecirc;n trong một cấu h&igrave;nh cực kỳ mạnh mẽ c&acirc;n dư sức c&aacute;c tựa game nặng nhất hiện nay. M&aacute;y sử dụng chip Exynos 992 tốc độ si&ecirc;u nhanh đi k&egrave;m bộ nhớ RAM 12GB cho bộ nhớ 256GB gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng đa nhiệm v&agrave; lưu trữ thoải m&aacute;i. Tất cả tạo n&ecirc;n một cấu h&igrave;nh cực kỳ mạnh mẽ c&oacute; thể đ&aacute;p ứng mọi nhu cầu của bạn tr&ecirc;n một chiếc điện thoại.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình 6.9 inch độ phân giải 2K 120Hz, cấu hình mạnh mẽ\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-2_1.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Trang bị c&ocirc;ng nghệ 5G tương lai, tốc độ cao khi sử dụng dữ liệu</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Hầu hết tr&ecirc;n tất cả c&aacute;c nước n&oacute;i chung v&agrave; Việt Nam n&oacute;i ri&ecirc;ng đều đang bắt đầu phủ s&oacute;ng băng tần 5G dần dần để thay đổi c&aacute;c chuẩn thấp hiện tại. Nắm bắt được nhu cầu v&agrave; xu hướng thị trường h&atilde;ng đang trang bị Samsung Galaxy Note 20 Ultra c&ocirc;ng nghệ 5G tốc độ cao. Khi lựa chọn chiếc điện thoại n&agrave;y bạn sẽ kh&ocirc;ng cần phải lo lắng chiếc điện thoại của m&igrave;nh sẽ kh&ocirc;ng theo kịp c&aacute;c c&ocirc;ng nghệ đổi mới của tương lai.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Trang bị công nghệ 5G tương lai, tốc độ cao khi sử dụng dữ liệu\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-3_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với c&ocirc;ng nghệ 5G người d&ugrave;ng c&oacute; thể truy cập internet với tốc độ cực cao l&ecirc;n đến 10Gb/s nhanh hơn tất cả c&aacute;c đường truyền wifi c&aacute;p quang m&agrave; bạn đang sử dụng. V&igrave; vậy lựa chọn Note 20 Ultra 5G kh&ocirc;ng những mạnh mẽ về cấu h&igrave;nh với k&iacute;ch thước lớn m&agrave; c&ograve;n gi&uacute;p bạn kh&ocirc;ng đi l&ugrave;i so với những c&ocirc;ng nghệ nổi bật v&agrave; quan trọng như 5G.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Camera sau 108MP zoom quang học l&ecirc;n đến 50X, camera trước 10MP</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng những mang đến cấu h&igrave;nh m&aacute;y hiệu năng cao Galaxy Note 20 Ultra 5G c&ograve;n mang đến cho bạn bộ 3 camera c&oacute; độ ph&acirc;n giải cao. Cụ thể camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 108 MP khẩu độ f/1.8, camera periscope telephoto 13 MP khẩu độ f/3.4, camera g&oacute;c rộng 2 MP khẩu độ f/2.2. Bộ 3 camera n&agrave;y cộng lại cho khả năng zoom quang học l&ecirc;n đến 50X. Gi&uacute;p bạn lưu lại được những h&igrave;nh ảnh chất lượng cao ở khoảng c&aacute;ch xa v&agrave; g&oacute;c cực rộng với độ ph&acirc;n giải l&ecirc;n đến 8K.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Camera sau 108MP zoom quang học lên đến 50X\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera trước&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cũng được h&atilde;ng trang bị độ ph&acirc;n giải cực cao l&ecirc;n đến 10MP. Chất lượng độ ph&acirc;n giải m&agrave; camera n&agrave;y mang lại cũng ở mức cao 4K/60fps. Gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i selfie lưu lại những h&igrave;nh ảnh sắc n&eacute;t hay chat video call với h&igrave;nh ảnh cực kỳ r&otilde; r&agrave;ng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hỗ trợ sạc nhanh 45W qua USB Type C, pin dung lượng lớn 4500mAh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Note 20 Ultra 5G được h&atilde;ng trang bị khả năng sạc nhanh c&ocirc;ng suất l&ecirc;n đến 45W qua cổng USB Type C cho khả năng sạc đầy pin cực kỳ nhanh ch&oacute;ng chưa đến 90 ph&uacute;t. Kh&ocirc;ng những vậy Note 20 Ultra 5G c&ograve;n c&oacute; khả năng sạc ngược cho thiết bị kh&aacute;c với c&ocirc;ng suất 9W. M&aacute;y cũng trang bị khả năng sạc kh&ocirc;ng d&acirc;y c&ocirc;ng suất l&ecirc;n đến 15W.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hỗ trợ sạc nhanh 45W qua USB Type C, pin dung lượng lớn 4500mAh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-6.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với hiệu năng cực khủng k&egrave;m m&agrave;n h&igrave;nh lớn Samsung đ&atilde; trang bị cho Note 20 Ultra 5G vi&ecirc;n pin li-ion c&oacute; dung lượng l&ecirc;n đến 4500mAh. Bạn c&oacute; thể sử dụng thoải m&aacute;i chiếc điện thoại của m&igrave;nh trong cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng sợ hết pin giữa chừng. Smartphone n&agrave;y c&oacute; thể c&acirc;n mọi tựa game với độ ph&acirc;n giải cao nhất l&ecirc;n đến hơn 8 tiếng li&ecirc;n tục m&agrave; kh&ocirc;ng hết pin với chế độ tiết kiệm pin.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>B&uacute;t S-Pen si&ecirc;u nhạy, nhiều trang bị kết nối hiện đại, cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Hầu hết c&aacute;c d&ograve;ng điện thoại Samsung Galaxy Note đều được trang bị b&uacute;t S-Pen v&agrave;&nbsp;<strong>Galaxy Note 20 Ultra 5G</strong>&nbsp;cũng kh&ocirc;ng ngoại lệ. Chiếc b&uacute;t n&agrave;y được cải tiến nhiều hơn so với c&aacute;c d&ograve;ng cũ c&oacute; độ nhạy cực cao v&agrave; điều hướng th&ocirc;ng minh cực kỳ ch&iacute;nh x&aacute;c. Bạn c&oacute; thể sử dụng b&uacute;t S-Pen để thỏa sức s&aacute;ng tạo với những t&iacute;nh năng tuyệt vời v&agrave; c&ocirc;ng nghệ cực kỳ th&ocirc;ng minh.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Bút S-Pen siêu nhạy, nhiều trang bị kết nối hiện đại\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-7.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Note 20 Ultra 5G cũng được trang bị c&aacute;c kết nối mới nhất ti&ecirc;n tiến nhất hiện nay như: Wi-Fi 802.11 ac hỗ trợ băng tần k&eacute;p. Bluetooth 5.0 cũng được Samsung đưa v&agrave;o thiết bị để kết nối mang lại sự ổn định tối đa v&agrave; nhiều cảm biến c&ocirc;ng nghệ mới gi&uacute;p thiết bị th&ocirc;ng minh hơn khi sử dụng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"cảm biến vân tay dưới màn hình\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-8.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nhằm đem lại thiết kế cực kỳ sang trọng v&agrave; tinh tế Samsung đ&atilde; trang bị cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh. Gi&uacute;p chiếc m&aacute;y gọn g&agrave;ng hơn khi cảm biến v&acirc;n tay được đặt chiếm chỗ như trước. Người d&ugrave;ng c&oacute; thể dễ d&agrave;ng mở kh&oacute;a chiếc điện thoại một c&aacute;ch nhanh nhất ngay tr&ecirc;n m&agrave;n h&igrave;nh Note 20 Ultra 5G m&agrave; kh&ocirc;ng gặp phải bất kỳ kh&oacute; khăn n&agrave;o.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"cảm biến vân tay dưới màn hình\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-9.jpg\" /></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Galaxy Note 20 Ultra 5G ch&iacute;nh h&atilde;ng, ưu đ&atilde;i hấp dẫn tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">CellphoneS l&agrave; trung t&acirc;m b&aacute;n điện thoại c&oacute; chi nh&aacute;nh phủ khắp tại c&aacute;c quận ở H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh. L&agrave; đơn vị được cung cấp&nbsp;<strong>Samsung Galaxy Note 20 Ultra 5G&nbsp;</strong>ch&iacute;nh h&atilde;ng n&ecirc;n mức gi&aacute; tại CellphoneS l&agrave; mức gi&aacute; cực rẻ v&agrave; k&egrave;m nhiều ưu đ&atilde;i đến từ Samsung cũng như CellphoneS. Bạn c&oacute; thể trả g&oacute;p x&eacute;t duyệt nhanh ch&oacute;ng hoặc đặt h&agrave;ng giao h&agrave;ng tận nh&agrave; khi mua h&agrave;ng tại CellphoneS<strong>.</strong></span></p>\r\n', 1, 2, 0, 27, 19, '2022-01-02 08:25:45'),
(152, 'Samsung Galaxy Z Flip3 5G', 24000000, 26000000, 216, 'Z Flip3.2.webp', 'Z Flip3.3.webp', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.7 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Super AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Camera g&oacute;c si&ecirc;u rộng: 12MP, f/2.2, Dual Pixel AF, OIS<br />\r\n			&nbsp; Camera g&oacute;c rộng: 12MP, f/1.8</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; G&oacute;c rộng 10MP, f/2.4</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Snapdragon 888 8 (5nm)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 3300 mAh</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (nano‑SIM v&agrave; eSIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 11</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1 nh&acirc;n 2.84 GHz, 3 nh&acirc;n 2.42 GHz &amp; 4 nh&acirc;n 1.8 GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Khi gập: 72.2 x 86.4 x 17.1mm<br />\r\n			&nbsp; Khi mở: 72.2 x 166.0 x 6.9mm</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><strong><span style=\"font-size:22px\"><span style=\"color:#e74c3c\">ĐẶC ĐIỂM NỔI BẬT</span></span></strong></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Thiết kế độc đ&aacute;o tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở vỏ s&ograve;, khung nh&ocirc;m aluminum chắc chắn</span></li>\r\n	<li><span style=\"font-size:16px\">M&agrave;n h&igrave;nh k&eacute;p ấn tượng - M&agrave;n h&igrave;nh ch&iacute;nh: 6.7&quot;, m&agrave;n h&igrave;nh phụ: 1.9&quot; AMOLED</span></li>\r\n	<li><span style=\"font-size:16px\">Hệ thống camera si&ecirc;u ấn tượng - Bộ 3 ống k&iacute;nh camera 12MP, camera selfie sắc n&eacute;t</span></li>\r\n	<li><span style=\"font-size:16px\">Hiệu năng ấn tượng, l&agrave;m chủ tốc độ - Snapdragon 888 kết hợp RAM 8GB, hỗ trợ 5G</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Samsung Galaxy Z Flip 3 (5G) &ndash; Điện thoại m&agrave;n h&igrave;nh</strong><strong>&nbsp;gập độc đ&aacute;o</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n cạnh c&aacute;c si&ecirc;u phẩm của d&ograve;ng S hay d&ograve;ng Note th&igrave; Samsung c&ograve;n tr&igrave;nh l&agrave;ng một d&ograve;ng điện thoại si&ecirc;u đặc biệt. V&agrave; cho đến 2021 h&atilde;ng đ&atilde; ph&aacute;t triển đến thế hệ thứ ba, với t&ecirc;n gọi&nbsp;<strong>Galaxy Z Flip 3</strong>. Ngo&agrave;i sở hữu thiết kế gập độc đ&aacute;o th&igrave; n&oacute; c&ograve;n sở hữu t&iacute;nh năng g&igrave; mới h&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i xem qua b&agrave;i viết b&ecirc;n dưới đ&acirc;y nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Dự kiến, Z Flip 3 5G sẽ được Samsung tr&igrave;nh l&agrave;ng c&ugrave;ng với&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">điện thoại Galaxy Z Fold 3 5G</a>&nbsp;tại sự kiện ra mắt trực tuyến Unpacked diễn ra v&agrave;o ng&agrave;y 11/8 tới đ&acirc;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế đậm chất đặc trưng, m&agrave;n h&igrave;nh dẻo ti&ecirc;n phong</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Galaxy Z Flip 3 sở hữu một phong c&aacute;ch thiết kế gập vỏ s&ograve; c&ugrave;ng khung nh&ocirc;m&nbsp;aluminum chắc chắn.&nbsp;Khi gấp gọn, điện thoại chỉ c&oacute; k&iacute;ch thước 4.2 inch v&ocirc; c&ugrave;ng nhỏ gọn nhưng mở r&acirc; lại l&agrave; một chiếc điện thoại th&ocirc;ng minh m&agrave;n h&igrave;nh lớn mang lại khả năng kh&aacute;m ph&aacute; kh&ocirc;ng giới hạn. M&agrave;n h&igrave;nh ngo&agrave;i của thiết bị được trang bị mặt k&iacute;nh&nbsp;Gorilla Glass si&ecirc;u bền bỉ.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế đậm chất đặc trưng, màn hình dẻo tiên phong\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-1.jpg\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Bản lề tr&ecirc;n Samsung Galaxy Z Flip 3 cũng được đ&aacute;nh gi&aacute; bền bỉ khi vượt qua b&agrave;i thử nghiệm l&ecirc;n đến 200000 lần, nhờ đ&oacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng l&ecirc;n đến hơn 5 năm.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Về m&agrave;u sắc, điện thoại Samsung Galaxy Z Flip 3 sẽ được b&aacute;n ra với nhiều phi&ecirc;n bản m&agrave;u như&nbsp;Kem Ivory,&nbsp;Đen Phantom,&nbsp;Xanh Phantom,&nbsp;T&iacute;m Lilac. Nhờ đ&oacute; người d&ugrave;ng c&oacute; nhiều sự lựa chọn m&agrave;u sắc hơn theo sở th&iacute;ch. M&aacute;y cũng sẽ được trang bị chẩn kh&aacute;ng nước v&agrave; bụi bẩn IPX8 tiện lợi.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh gập độc đ&aacute;o, tần số qu&eacute;t 120Hz</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Như đ&atilde; bật m&iacute; về phần m&agrave;n h&igrave;nh v&agrave; đ&acirc;y ch&iacute;nh l&agrave; bộ phận g&acirc;y được sự ấn tượng đậm nhất. M&agrave;n h&igrave;nh&nbsp;Dynamic AMOLED 2X c&oacute; khả năng gập m&agrave; vẫn cho khả năng hiển thị ho&agrave;n hảo. Khi bạn mở m&agrave;n h&igrave;nh n&agrave;y ra th&igrave; n&oacute; lập tức hiện nay một k&iacute;ch thước 6.9 inch cho ph&eacute;p bạn thoải m&aacute;i t&ugrave;y chỉnh giao diện như g&oacute;c gập của m&agrave;n h&igrave;nh. Ngo&agrave;i ra, bạn cực kỳ y&ecirc;n t&acirc;m với thiết kế lớp k&iacute;nh dẻo UTG (Ultra Thin Glass) thế hệ mới.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình gập độc đáo, tần số quét 120Hz\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-6.jpg\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Khi người d&ugrave;ng thực hiện gập m&agrave;n h&igrave;nh lại, bạn sẽ thấy được một m&agrave;n h&igrave;nh phụ c&oacute; k&iacute;ch thước 1.9 inches.&nbsp;Với kh&ocirc;ng gian hiển thị rộng hơn gi&uacute;p người d&ugrave;ng dễ d&agrave;ng theo d&otilde;i c&aacute;c th&ocirc;ng b&aacute;o quan trọng. M&agrave;n h&igrave;nh phụ tr&ecirc;n Samsung Galaxy Z Flip 3 hỗ trợ hiển thị th&ocirc;ng b&aacute;o, ng&agrave;y giờ, b&agrave;i h&aacute;t đang ph&aacute;t th&acirc;m ch&iacute; l&agrave;m xem nhanh tin nhắn, chụp ảnh.&nbsp;R&otilde; r&agrave;ng h&atilde;ng đ&atilde; n&acirc;ng cấp nhiều t&iacute;nh năng hơn tr&ecirc;n chiếc m&agrave;n h&igrave;nh phụ n&agrave;y. Đặc biệt tấm nền của m&agrave;n h&igrave;nh Galaxy Z Flip 3 c&ograve;n được trang bị tần số qu&eacute;t 120 Hz cho ph&eacute;p người d&ugrave;ng tự động điều chỉnh tần số qu&eacute;t dựa tr&ecirc;n c&aacute;c nội dung mới đang được hiển thị.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Màn hình phụ tiện dụng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-2.JPG\" /></span></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hiệu năng ấn tượng với d&ograve;ng chip&nbsp;Snapdragon 888 mạnh mẽ</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng chỉ c&oacute; d&ograve;ng S v&agrave; Note l&agrave; được ưu &aacute;i với những con chip mới. Chiếc&nbsp;<strong>Galaxy Z Filp3</strong>&nbsp;tiếp tục được ứng dụng con chip ri&ecirc;ng biệt. Với con chip&nbsp;Snapdragon 888 mạnh mẽ gi&uacute;p người d&ugrave;ng c&oacute; thể chiến được tất cả những tựa game đồ họa nặng nhất.&nbsp;&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hiệu năng ấn tượng với dòng chip Exynos mới\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-3.JPG\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Chưa dừng lại ở đ&oacute;, con chip n&agrave;y c&ograve;n được trang bị modem 5G, được t&iacute;ch hợp sẵn nhằm hỗ trợ kết nối mạng 5G l&agrave;m mưa l&agrave;m gi&oacute; trong thời điểm hiện tại.&nbsp;M&aacute;y cũng được trang bị bộ nhớ trong lớn, với 128GB bộ nhớ ở phi&ecirc;n bản ti&ecirc;u chuẩn, người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng, c&agrave;i đặt ứng dụng v&agrave; lưu trữ dữ liệu quan trọng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ở chế độ mở ho&agrave;n to&agrave;n,&nbsp;Samsung Z Flip 3 cho ph&eacute;p chia đ&ocirc;i m&agrave;n h&igrave;nh tiện lợi gi&uacute;p bạn c&oacute; thể l&agrave;m c&ugrave;ng l&uacute;c nhiều c&ocirc;ng việc như vừa xem video, vừa nhắn tin với bạn b&egrave;. Đặc biệt, m&aacute;y c&ograve;n được trang bị hệ thống loa cải tiến v&agrave; c&ocirc;ng ngh&ecirc;n &acirc;m thanh&nbsp;Dolby Atmos mang lại những ph&uacute;t gi&acirc;y giải tr&iacute; đắm ch&igrave;m.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Pin dung lượng lớn, hỗ trợ sạc nhanh&nbsp;&nbsp;</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại Galaxy Z Flip 3 được trang bị vi&ecirc;n pin dung lượng 3300mAh. Qua đ&oacute;, cho ph&eacute;p phục vụ rất tốt cho c&aacute;c t&iacute;nh năng mới của chiếc Galaxy Z Flip 3 trong thời gian l&ecirc;n đến một ng&agrave;y trời.&nbsp;Ngo&agrave;i ra, m&aacute;y cũng được trang bị c&ocirc;ng nghệ sạc nhanh c&oacute; d&acirc;y v&agrave; kh&ocirc;ng d&acirc;y, gi&uacute;p r&uacute;t ngắn thời gian sạc.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Pin dung lượng lớn, hỗ trợ sạc nhanh có dây và không dây\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-7.jpg\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại Samsung Galaxy Z Flip 3 sẽ được chạy sẵn tr&ecirc;n hệ điều h&agrave;nh Android 11 v&agrave; giao diện One UI 3.1.1. Ngo&agrave;i ra, m&aacute;y sẽ được trang bị c&ocirc;ng nghệ v&acirc;n tay cạnh b&ecirc;n, tr&ecirc;n n&uacute;t nguồn c&ugrave;ng chuẩn chống nước IPX8, GPS, Wi-Fi 6, NFC v&agrave; Bluetooth 5.0. M&aacute;y vẫn được trang bị 2 sim tiện dụng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Camera n&acirc;ng cấp to&agrave;n diện</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Camera l&agrave; điều n&acirc;ng cấp lớn nhất của chiếc&nbsp;<strong>Samsung Z Flip 3</strong>&nbsp;với hệ thống module được thiết kế cực đẹp v&agrave; cực kỳ sang trọng. Ngo&agrave;i ra động th&aacute;i n&agrave;y c&ograve;n gi&uacute;p bảo vệ được hệ thống camera b&ecirc;n trong. Trong đ&oacute; l&agrave; hai camera sau cực kỳ ấn tượng lần lượt cho ph&eacute;p chụp ảnh g&oacute;c rộng v&agrave; g&oacute;c si&ecirc;u rộng với ống k&iacute;nh 12MP.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Camera nâng cấp toàn diện\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-5.jpg\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Hơn nữa, người d&ugrave;ng cần ch&uacute; &yacute; về chế độ Single Take được giới thiệu lần đầu ở S20. Qua đ&oacute;, người d&ugrave;ng dễ d&agrave;ng chụp ảnh chỉ với một c&uacute; chạm v&agrave; tạo ra được nhiều sản phẩm h&igrave;nh ảnh, video ngắn đăng nhanh l&ecirc;n mạng x&atilde; hội.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể về th&ocirc;ng số, điện thoại Samsung Galaxy Z Flip 3 được trang bị cụm camera k&eacute;p ph&iacute;a sau với hai camera độ ph&acirc;n giải 12MP. Trong khi đ&oacute;, camera selfie được nh&uacute;ng b&ecirc;n trong m&agrave;n h&igrave;nh đục lỗ với độ ph&acirc;n giải 10MP. Nhờ vậy Samsung Galaxy Z Flip 3 mang lại chất lượng h&igrave;nh ảnh kh&ocirc;ng thua k&eacute;m g&igrave; m&aacute;y cơ chuy&ecirc;n nghiệm với chi tiết v&agrave; độ s&aacute;ng cao, m&agrave;u sắc sống động.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Một điểm mới v&ocirc; c&ugrave;ng nổi bật tr&ecirc;n chiếc&nbsp;Samsung Galaxy Z Flip 3 đ&oacute; l&agrave; khả năng selfie ngay cả khi gập m&aacute;y. Bạn c&oacute; thể theo d&otilde;i nhanh ảnh chụp ngay tr&ecirc;n m&agrave;n h&igrave;nh ngo&agrave;i một c&aacute;ch tiện lợi v&agrave; nhấn chụp nhanh th&ocirc;ng qua n&uacute;t &acirc;m lượng một c&aacute;ch dễ d&agrave;ng.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\" chế độ Flex Mode\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-4.jpg\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, với khả năng chọn chế độ gập - mở linh hoạt người d&ugrave;ng c&oacute; thể dễ d&agrave;ng, chọn g&oacute;c m&aacute;y chụp ảnh - quay phim m&agrave; kh&ocirc;ng cần đến những phụ kiện cố định. CỤ thể chế độ&nbsp;Flex Mode gi&uacute;p&nbsp;Galaxy Z Flip 3 c&oacute; thể đứng vững tr&ecirc;n c&aacute;c bề mặt phẳng. Chế độ n&agrave;y cũng gi&uacute;p người d&ugrave;ng thỏa sức thực hiện c&aacute;c cuộc gọi rảnh tay, video call với bạn b&egrave;.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Galaxy Z Flip 3 (5G) khi n&agrave;o ra mắt?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Mẫu điện thoại Samsung gập Z Flip 3 sẽ được ch&iacute;nh thước giới thiệu đến người ti&ecirc;u d&ugrave;ng v&agrave;o ng&agrave;y 11 th&aacute;ng 8 năm 2021 trong sự kiện Unpacked 2021. Sau đ&oacute; v&agrave;i tuần, Samsung Galaxy Z Flip 3 ch&iacute;nh h&atilde;ng sẽ được l&ecirc;n kệ tại c&aacute;c hệ thống b&aacute;n lẻ điện thoại.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Điện thoại Samsung Galaxy Z Flip 3 khi nào ra mắt?\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-z-flip3-5g-8.jpg\" /></span></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy Z Flip 3 gi&aacute; bao nhi&ecirc;u?</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Về gi&aacute; b&aacute;n, Samsung Galaxy Z Flip 3 dự đo&aacute;n l&ecirc;n kệ với mức gi&aacute; khoảng 1.200.00 - 1.280.000 KRW, tương đương hơn 1000 đ&ocirc;. So với phi&ecirc;n bản tiền nhiệm, Samsung Galaxy Z Flip 3 c&oacute; sự giảm gi&aacute; nhẹ, từ 10-20%. Nhờ đ&oacute;, nhiều người d&ugrave;ng c&oacute; thể tiếp cận mẫu smartphone gập độc đ&aacute;o n&agrave;y hơn.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Samsung Galaxy Z Flip3 - 5G&nbsp;</strong><strong>ch&iacute;nh h&atilde;ng, gi&aacute; rẻ tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Khi bạn muốn mua sản phẩm c&ocirc;ng nghệ cao cấp như chiếc&nbsp;<strong>Samsung&nbsp;Galaxy Z Flip 3</strong>&nbsp;th&igrave; n&ecirc;n đến ngay CellphoneS. Đ&acirc;y l&agrave; trung t&acirc;m b&aacute;n lẻ smartphone v&agrave; phụ kiện, lu&ocirc;n đảm bảo cho người d&ugrave;ng những sản phẩm chất lượng cao v&agrave; mức gi&aacute; hợp l&yacute; nhất. Khi mua tại CellphoneS, bạn c&ograve;n nhận được nhiều ch&iacute;nh s&aacute;ch hấp dẫn v&agrave; bảo h&agrave;nh 12 th&aacute;ng khiến người d&ugrave;ng y&ecirc;n t&acirc;m hơn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặt trước ngay Samsung Galaxy Z Flip 3 ch&iacute;nh h&atilde;ng để sở hữu những ưu đ&atilde;i c&ugrave;ng phần qu&agrave; hấp dẫn. Ngo&agrave;i ra, tại CellphoneS c&ograve;n b&aacute;n nhiều mẫu điện thoại Samsung ch&iacute;nh h&atilde;ng, gi&aacute; hấp dẫn kh&aacute;c bạn c&oacute; thể tham khảo. Nhấc m&aacute;y v&agrave; li&ecirc;n hệ ngay hotline để được tư vấn chi tiết.</span></p>\r\n', 1, 6, 0, 27, 19, '2022-01-02 08:23:05');
INSERT INTO `sanpham` (`idProd`, `tenSP`, `minPrice`, `maxPrice`, `soLuongSP`, `image`, `image2`, `discount`, `description`, `content`, `status`, `soLuotXem`, `sale`, `idBrand`, `idThietBi`, `date`) VALUES
(153, 'Samsung Galaxy S21 Ultra 5G', 21500000, 28000000, 144, 'S21 Ultra.jpg', 'S21 Ultra3.jpg', 0, '<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 6.8 inches</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Dynamic AMOLED</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera sau</span></th>\r\n			<th>\r\n			<ul>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Ống k&iacute;nh ch&iacute;nh g&oacute;c rộng: 108MP, f/1.8</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Ống k&iacute;nh zoom tiềm vọng: 10MP, zoom quang 10x</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Cảm biến tele: 10MP, zoom quang 3x</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Cảm biến si&ecirc;u rộng: 12MP, f/2.2</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Cảm biến Laser AF</span></li>\r\n			</ul>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Camera trước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 40 MP, f/2.2</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Chipset</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Exynos 2100 8 nh&acirc;n</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Dung lượng RAM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 12 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Bộ nhớ trong</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 128 GB</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Pin</span></th>\r\n			<th>\r\n			<ul>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Dung lượng pin 5,000mAh</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Sạc nhanh c&oacute; d&acirc;y 25W</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Sạc nhanh kh&ocirc;ng d&acirc;y 15W</span></li>\r\n				<li style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Sạc ngược kh&ocirc;ng d&acirc;y 4.5W</span></li>\r\n			</ul>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Thẻ SIM</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 2 SIM (Nano-SIM)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Hệ điều h&agrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; Android 11, One UI 3.0</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 1440 x 3200 pixels (QHD+)</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">Loại CPU</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 8 nh&acirc;n: 1 nh&acirc;n Cortex-X1 tốc độ 2.9GHz, 3 nh&acirc;n Cortex-A78 tốc độ 2.8GHz, 4 nh&acirc;n Cortex-A55 tốc độ 2.2GHz</span></th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">K&iacute;ch thước</span></th>\r\n			<th style=\"text-align:left\"><span style=\"font-size:16px\">&nbsp; 166.9 x 76 x 8.8 mm (6.57 x 2.99 x 0.35 in)</span></th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h2><span style=\"color:#e74c3c\"><strong><span style=\"font-size:20px\">ĐẶC ĐIỂM NỔI BẬT</span></strong></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Giải tr&iacute; đỉnh cao - M&agrave;n h&igrave;nh AMOLED 6.8 inch, độ ph&acirc;n giải 2K, tần số qu&eacute;t cao 120Hz</span></li>\r\n	<li><span style=\"font-size:16px\">Chụp ảnh, quay video si&ecirc;u n&eacute;t - 4 camera mạnh mẽ, quay phim 8K, quay phim si&ecirc;u chống rung.</span></li>\r\n	<li><span style=\"font-size:16px\">Tốc độ vượt trội, chơi game đỉnh cao - Exynos 2100 8 nh&acirc;n 5nm, RAM 8GB, bộ nhớ tốc độ cao UFS 3.1</span></li>\r\n	<li><span style=\"font-size:16px\">Trải nghiệm thả ga - Pin 5000mAh, hỗ trợ sạc nhanh l&ecirc;n đến 25W, c&ocirc;ng nghệ pin th&ocirc;ng minh</span>\r\n	<ul>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy S21 Ultra - Đ&oacute;n đầu xu hướng c&ocirc;ng nghệ</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Galaxy S21 Ultra</strong>&nbsp;với những cải tiến đ&aacute;ng kể về hiệu năng của m&aacute;y cực kỳ mạnh mẽ c&ugrave;ng với thiết kế sang trọng cao cấp. Samsung đ&atilde; mang đến cho người d&ugrave;ng một trải nghiệm ho&agrave;n to&agrave;n mới, đ&acirc;y hứa hẹn sẽ l&agrave; chiếc smartphone đi đầu tr&ecirc;n thế giới về c&aacute;c xu hướng c&ocirc;ng nghệ lẫn hiệu năng vượt trội đ&aacute;ng sở hữu nhất v&agrave;o thời điểm ra mắt.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">điện thoại&nbsp;Galaxy Z Fold 3 5G</a>&nbsp;nếu bạn muốn khẳng định đẳng cấp v&agrave; kh&aacute;c biệt so với phần c&ograve;n lại.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế nguy&ecirc;n khối, m&agrave;n h&igrave;nh&nbsp;6</strong><strong>.8 inch tr&agrave;n&nbsp;viền</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung S21 Ultra đ&atilde; được Samsung trang bị bộ khung kim loại nguy&ecirc;n khối mang đến một phong c&aacute;ch thiết kế cứng c&aacute;p khi cầm nắm sử dụng, kết hợp thiết kế bố cục với mặt k&iacute;nh cao cấp s&aacute;ng b&oacute;ng ở mặt sau tạo n&ecirc;n một vẻ ngo&agrave;i sang trọng v&agrave; tinh tế từ những chi tiết nhỏ nhất. C&aacute;c ph&iacute;m chức năng cũng được l&agrave;m từ kim loại cho độ nhạy rất cao khi sử dụng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Thiết kế kim loại nguyên khối\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-s21-ultra-5.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điểm nổi bật nhất tr&ecirc;n chiếc S21 Ultra đ&oacute; l&agrave; được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước lớn l&ecirc;n đến 6.8 inch, mang đến một kh&ocirc;ng gian rộng lớn khi sử dụng. Ngo&agrave;i ra chiếc điện thoại cao cấp n&agrave;y cũng được h&atilde;ng trang bị tấm nền hiển thị Dynamics AMOLED 2X mang đến độ ph&acirc;n giải cực cao cho mọi h&igrave;nh ảnh hiển thị cực kỳ sắc n&eacute;t tần số qu&eacute;t của m&agrave;n h&igrave;nh n&agrave;y cũng đạt 120Hz cho mọi khung h&igrave;nh tốc độ cao.&nbsp;&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"màn hình 6.9 inch tràn viền\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-s21-ultra-1.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hiệu năng si&ecirc;u mạnh với chip Exynos 2100, RAM&nbsp;12GB</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng những c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền k&iacute;ch thước lớn Samsung c&ograve;n trang bị tr&ecirc;n chiếc&nbsp;<strong>Samsung S21 Ultra</strong>&nbsp;cấu h&igrave;nh cực kỳ mạnh mẽ. Cụ thể m&aacute;y được trang bị con chip mới nhất&nbsp;Exynos 2100 với 8 nh&acirc;n tốc độ cao cho mọi t&aacute;c vụ được xử l&yacute; nhanh ch&oacute;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra bộ nhớ RAM của m&aacute;y cũng được n&acirc;ng cấp l&ecirc;n đến 12GB. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i đa nhiệm c&ugrave;ng l&uacute;c nhiều ứng dụng nặng như chơi game, mạng x&atilde; hội c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng bị giật lag.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Hiệu năng siêu mạnh với chip Snapdragon 865\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-s21-ultra-3_1.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n trong của Galaxy S21 Ultra cũng được mở rộng đ&aacute;ng kể với dung lượng l&ecirc;n đến 128GB mang đến một khả năng lưu trữ rộng lớn m&agrave; kh&ocirc;ng cần phải sử dụng th&ecirc;m thẻ nhớ ngo&agrave;i tr&ecirc;n m&aacute;y. Samsung cũng trang bị tr&ecirc;n chiếc điện thoại n&agrave;y con chip&nbsp;Arm Mali-G78 cho khả năng xử l&yacute; h&igrave;nh ảnh mượt m&agrave; l&ecirc;n độ ph&acirc;n giải l&ecirc;n đến 2K cho nhiều t&aacute;c vụ.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Camera sau độ ph&acirc;n giải l&ecirc;n đến 108MP, camera trước 40MP</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Hệ thống camera sau tr&ecirc;n Samsung Galaxy S21 Ultra cũng được n&acirc;ng cấp đ&aacute;ng kể với độ ph&acirc;n giải si&ecirc;u sắc n&eacute;t. Camera ch&iacute;nh được trang bị độ ph&acirc;n giải l&ecirc;n đến 108MP si&ecirc;u sắc n&eacute;t.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera phụ cũng nằm ở mức kh&aacute; cao với 2camera tele 10MP, camera g&oacute;c rộng đạt 12MP mang đến một chất lượng h&igrave;nh ảnh si&ecirc;u sắc n&eacute;t ở mọi t&aacute;c vụ như chụp ảnh, quay video 4K. Ngo&agrave;i ra hệ thống camera sau c&ograve;n được trang bị cảm biến chiều s&acirc;u TOF 3D cho chất lượng h&igrave;nh ảnh s&acirc;u v&agrave; thực với kh&ocirc;ng gian b&ecirc;n ngo&agrave;i hơn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Camera sau độ phân giải lên đến 64MP\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-s21-ultra-4.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Camera trước tr&ecirc;n Samsung S21 Ultra sở hữu độ ph&acirc;n giải 40MP. Người d&ugrave;ng c&oacute; thể sử dụng camera trước để thực hiện selfie hay quay video độ ph&acirc;n giải lớn một c&aacute;ch dễ d&agrave;ng.&nbsp;Camera trước cũng được trang bị g&oacute;c rộng cho khả năng ghi lại h&igrave;nh ảnh với khung h&igrave;nh rộng hơn.&nbsp;&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Pin dung lượng 5000mAh sạc nhanh, hỗ trợ 5G tốc độ cao</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung đ&atilde; trang bị tr&ecirc;n chiếc&nbsp;<strong>S21 Ultra</strong>&nbsp;một dung lượng pin kh&aacute; lớn l&ecirc;n đến 5000mAh. Người d&ugrave;ng c&oacute; thể sử dụng hiệu năng cao k&egrave;m m&agrave;n h&igrave;nh k&iacute;ch thước lớn một c&aacute;ch thoải m&aacute;i m&agrave; kh&ocirc;ng bị gi&aacute;n đoạn trong thời gian d&agrave;i.&nbsp;Ngo&agrave;i ra, m&aacute;y cũng được trang bị khả năng sạc nhanh cho thời gian sạc đầy pin một c&aacute;ch nhanh ch&oacute;ng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"Pin dung lượng 4.800mAh sạc nhanh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/galaxy-s21-ultra-2.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">5G được xem l&agrave; chuẩn kh&ocirc;ng d&acirc;y mạnh nhất, nhanh nhất hiện tại tr&ecirc;n c&aacute;c d&ograve;ng điện thoại th&ocirc;ng minh. Với chuẩn kh&ocirc;ng d&acirc;y n&agrave;y người d&ugrave;ng c&oacute; thể thoải m&aacute;i truy cập internet tốc độ si&ecirc;u cao tr&ecirc;n Galaxy S21 Ultra. Samsung cũng t&iacute;ch hợp 2 sim tăng khả năng mở rộng li&ecirc;n lạc của thiết bị.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">C&ocirc;ng nghệ bảo mật tr&ecirc;n S21 Ultra cũng l&agrave; những c&ocirc;ng nghệ hiện đại nhất với v&acirc;n tay si&ecirc;u &acirc;m bằng cảm biến dưới m&agrave;n h&igrave;nh. Cổng kết nối nhanh nhất USB Type C cũng được trang bị tr&ecirc;n chiếc điện thoại n&agrave;y, c&aacute;c c&ocirc;ng nghệ bluetooth 5.0 v&agrave; Wifi dual băng tần cũng hoạt động ổn định m&agrave; mở rộng đ&aacute;ng kể khả năng kết nối tr&ecirc;n S21 phi&ecirc;n bản Ultra.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua Samsung S21 Ultra ch&iacute;nh h&atilde;ng, gi&aacute; rẻ tại CellphoneS</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Với thiết kế cao cấp v&agrave; hiệu năng cực kỳ mạnh mẽ tr&ecirc;n&nbsp;<strong>Samsung Galaxy S21 Ultra</strong>. Đ&acirc;y sẽ l&agrave; chiếc điện thoại đ&aacute;ng được n&acirc;ng cấp m&agrave; bạn n&ecirc;n lựa chọn. Hiện tại CellphoneS đang ph&acirc;n phối ch&iacute;nh h&atilde;ng chiếc smartphone n&agrave;y với mức gi&aacute; cực kỳ hấp dẫn, rẻ nhất thị trường với ưu đ&atilde;i giảm gi&aacute; th&ecirc;m 1% cho Smember. Ngo&agrave;i ra, khi đặt trước tại CellphoneS, bạn sẽ được nhận rất nhiều phần qu&agrave; từ h&atilde;ng cũng như hệ thống b&aacute;n lẻ CellphoneS h&agrave;ng đầu tại Việt Nam.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Dự kiến trong qu&yacute; 1 năm 2022, g&atilde; khổng lồ H&agrave;n Quốc sẽ ra mắt d&ograve;ng Galaxy S22 series, trong đ&oacute; nổi bật nhất ch&iacute;nh l&agrave;&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s22-ultra.html\">điện thoại Samsung Galaxy S22 Ultra</a>&nbsp;với nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; về camera, m&agrave;n h&igrave;nh, cấu h&igrave;nh v&agrave; dung lượng pin.</span>&nbsp;</p>\r\n', 1, 11, 0, 27, 19, '2022-06-14 12:02:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support`
--

CREATE TABLE `support` (
  `idSport` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `Phone` char(13) NOT NULL,
  `email` char(100) NOT NULL,
  `message` varchar(1500) NOT NULL,
  `status` int(11) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `idThietBi` int(11) NOT NULL,
  `tenThietBi` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thietbi`
--

INSERT INTO `thietbi` (`idThietBi`, `tenThietBi`, `status`) VALUES
(16, 'Tablet', 0),
(18, 'Earphone', 0),
(19, 'Smartphone', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `idBrand` int(11) NOT NULL,
  `BrandName` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`idBrand`, `BrandName`, `status`) VALUES
(25, 'Xiaomi', 0),
(26, 'Apple', 0),
(27, 'OPPO', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tonkho`
--

CREATE TABLE `tonkho` (
  `idTon` int(11) NOT NULL,
  `idChitietSP` int(11) NOT NULL,
  `idKho` int(11) NOT NULL,
  `soLuongTonKho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tonkho`
--

INSERT INTO `tonkho` (`idTon`, `idChitietSP`, `idKho`, `soLuongTonKho`) VALUES
(339, 159, 6, 12),
(340, 159, 7, 12),
(341, 159, 8, 12),
(342, 160, 6, 12),
(343, 160, 7, 12),
(344, 160, 8, 12),
(345, 161, 6, 12),
(346, 161, 7, 12),
(347, 161, 8, 12),
(348, 162, 6, 12),
(349, 162, 7, 12),
(350, 162, 8, 12),
(351, 155, 6, 12),
(352, 155, 7, 12),
(353, 155, 8, 12),
(354, 156, 6, 12),
(355, 156, 7, 12),
(356, 156, 8, 12),
(357, 157, 6, 12),
(358, 157, 7, 12),
(359, 157, 8, 12),
(360, 158, 6, 12),
(361, 158, 7, 12),
(362, 158, 8, 12),
(363, 142, 6, 12),
(364, 142, 7, 12),
(365, 142, 8, 12),
(366, 143, 6, 12),
(367, 143, 7, 12),
(368, 143, 8, 12),
(369, 144, 6, 12),
(370, 144, 7, 12),
(371, 144, 8, 12),
(372, 145, 6, 12),
(373, 145, 7, 12),
(374, 145, 8, 12),
(375, 146, 6, 12),
(376, 146, 7, 12),
(377, 146, 8, 12),
(378, 147, 6, 12),
(379, 147, 7, 12),
(380, 147, 8, 12),
(381, 148, 6, 12),
(382, 148, 7, 12),
(383, 148, 8, 12),
(384, 149, 6, 12),
(385, 149, 7, 12),
(386, 149, 8, 12),
(387, 150, 6, 12),
(388, 150, 7, 12),
(389, 150, 8, 12),
(390, 151, 6, 12),
(391, 151, 7, 12),
(392, 151, 8, 12),
(393, 152, 6, 12),
(394, 152, 7, 12),
(395, 152, 8, 12),
(396, 153, 6, 12),
(397, 153, 7, 12),
(398, 153, 8, 12),
(399, 163, 6, 12),
(400, 163, 7, 12),
(401, 163, 8, 12),
(402, 164, 6, 12),
(403, 164, 7, 12),
(404, 164, 8, 12),
(405, 165, 6, 12),
(406, 165, 7, 12),
(407, 165, 8, 12),
(408, 166, 6, 12),
(409, 166, 7, 12),
(410, 166, 8, 12),
(411, 167, 6, 12),
(412, 167, 7, 12),
(413, 167, 8, 12),
(414, 168, 6, 12),
(415, 168, 7, 12),
(416, 168, 8, 12),
(417, 169, 6, 12),
(418, 169, 7, 12),
(419, 169, 8, 12),
(420, 170, 6, 12),
(421, 170, 7, 12),
(422, 170, 8, 12),
(423, 171, 6, 12),
(424, 171, 7, 12),
(425, 171, 8, 12),
(426, 172, 6, 12),
(427, 172, 7, 12),
(428, 172, 8, 12),
(429, 138, 6, 12),
(430, 138, 7, 12),
(431, 138, 8, 12),
(432, 139, 6, 12),
(433, 139, 7, 12),
(434, 139, 8, 12),
(435, 140, 6, 12),
(436, 140, 7, 12),
(437, 140, 8, 12),
(438, 141, 6, 12),
(439, 141, 7, 12),
(440, 141, 8, 12),
(441, 134, 6, 12),
(442, 134, 7, 12),
(443, 134, 8, 12),
(444, 135, 6, 12),
(445, 135, 7, 12),
(446, 135, 8, 12),
(447, 136, 6, 12),
(448, 136, 7, 12),
(449, 136, 8, 12),
(450, 137, 6, 12),
(451, 137, 7, 12),
(452, 137, 8, 12),
(453, 130, 6, 12),
(454, 130, 7, 12),
(455, 130, 8, 10),
(456, 131, 6, 12),
(457, 131, 7, 12),
(458, 131, 8, 12),
(459, 132, 6, 12),
(460, 132, 7, 12),
(461, 132, 8, 12),
(462, 133, 6, 12),
(463, 133, 7, 12),
(464, 133, 8, 12),
(465, 120, 6, 12),
(466, 120, 7, 12),
(467, 120, 8, 12),
(468, 122, 6, 12),
(469, 122, 7, 12),
(470, 122, 8, 12),
(471, 125, 6, 12),
(472, 125, 7, 12),
(473, 125, 8, 12),
(474, 126, 6, 12),
(475, 126, 7, 12),
(476, 126, 8, 12),
(477, 127, 6, 12),
(478, 127, 7, 12),
(479, 127, 8, 12),
(480, 128, 6, 12),
(481, 128, 7, 12),
(482, 128, 8, 12),
(483, 129, 6, 12),
(484, 129, 7, 12),
(485, 129, 8, 12),
(486, 115, 6, 12),
(487, 115, 7, 12),
(488, 115, 8, 12),
(489, 116, 6, 12),
(490, 116, 7, 12),
(491, 116, 8, 12),
(492, 117, 6, 12),
(493, 117, 7, 12),
(494, 117, 8, 12),
(495, 118, 6, 12),
(496, 118, 7, 12),
(497, 118, 8, 12),
(498, 109, 6, 12),
(499, 109, 7, 12),
(500, 109, 8, 12),
(501, 110, 6, 12),
(502, 110, 7, 12),
(503, 110, 8, 12),
(504, 111, 6, 12),
(505, 111, 7, 9),
(506, 111, 8, 12),
(507, 112, 6, 12),
(508, 112, 7, 12),
(509, 112, 8, 12),
(510, 103, 6, 12),
(511, 103, 7, 10),
(512, 103, 8, 12),
(513, 104, 6, 11),
(514, 104, 7, 12),
(515, 104, 8, 12),
(516, 105, 6, 12),
(517, 105, 7, 12),
(518, 105, 8, 12),
(519, 106, 6, 12),
(520, 106, 7, 12),
(521, 106, 8, 12),
(522, 107, 6, 12),
(523, 107, 7, 12),
(524, 107, 8, 12),
(525, 108, 6, 12),
(526, 108, 7, 12),
(527, 108, 8, 12),
(528, 90, 6, 12),
(529, 90, 7, 12),
(530, 90, 8, 12),
(531, 92, 6, 12),
(532, 92, 7, 12),
(533, 92, 8, 12),
(534, 94, 6, 12),
(535, 94, 7, 12),
(536, 94, 8, 12),
(537, 95, 6, 12),
(538, 95, 7, 11),
(539, 95, 8, 12),
(540, 184, 6, 12),
(541, 184, 7, 11),
(542, 184, 8, 12),
(543, 185, 6, 12),
(544, 185, 7, 12),
(545, 185, 8, 12),
(546, 186, 6, 12),
(547, 186, 7, 12),
(548, 186, 8, 12),
(549, 187, 6, 12),
(550, 187, 7, 12),
(551, 187, 8, 12),
(552, 188, 6, 12),
(553, 188, 7, 12),
(554, 188, 8, 12),
(555, 189, 6, 12),
(556, 189, 7, 12),
(557, 189, 8, 12),
(558, 190, 6, 12),
(559, 190, 7, 11),
(560, 190, 8, 12),
(561, 191, 6, 12),
(562, 191, 7, 12),
(563, 191, 8, 12),
(564, 192, 6, 12),
(565, 192, 7, 12),
(566, 192, 8, 12),
(567, 193, 6, 12),
(568, 193, 7, 12),
(569, 193, 8, 12),
(570, 194, 6, 12),
(571, 194, 7, 12),
(572, 194, 8, 12),
(573, 195, 6, 12),
(574, 195, 7, 12),
(575, 195, 8, 12),
(576, 196, 6, 12),
(577, 196, 7, 12),
(578, 196, 8, 12),
(579, 197, 6, 12),
(580, 197, 7, 12),
(581, 197, 8, 12),
(582, 198, 6, 12),
(583, 198, 7, 12),
(584, 198, 8, 12),
(585, 199, 6, 12),
(586, 199, 7, 12),
(587, 199, 8, 12),
(588, 200, 6, 12),
(589, 200, 7, 12),
(590, 200, 8, 12),
(591, 201, 6, 12),
(592, 201, 7, 12),
(593, 201, 8, 12),
(594, 202, 6, 12),
(595, 202, 7, 12),
(596, 202, 8, 12),
(597, 203, 6, 12),
(598, 203, 7, 12),
(599, 203, 8, 12),
(600, 204, 6, 12),
(601, 204, 7, 12),
(602, 204, 8, 12),
(603, 205, 6, 12),
(604, 205, 7, 12),
(605, 205, 8, 12),
(606, 206, 6, 12),
(607, 206, 7, 12),
(608, 206, 8, 12),
(609, 207, 6, 12),
(610, 207, 7, 12),
(611, 207, 8, 12),
(612, 208, 6, 12),
(613, 208, 7, 12),
(614, 208, 8, 12),
(615, 209, 6, 12),
(616, 209, 7, 12),
(617, 209, 8, 12),
(618, 210, 6, 12),
(619, 210, 7, 12),
(620, 210, 8, 12),
(621, 211, 6, 12),
(622, 211, 7, 12),
(623, 211, 8, 12),
(624, 212, 6, 12),
(625, 212, 7, 12),
(626, 212, 8, 12),
(627, 213, 6, 12),
(628, 213, 7, 12),
(629, 213, 8, 12),
(630, 214, 6, 12),
(631, 214, 7, 12),
(632, 214, 8, 12),
(633, 215, 6, 12),
(634, 215, 7, 12),
(635, 215, 8, 12),
(636, 216, 6, 12),
(637, 216, 7, 12),
(638, 216, 8, 12),
(639, 217, 6, 12),
(640, 217, 7, 12),
(641, 217, 8, 12),
(642, 218, 6, 12),
(643, 218, 7, 12),
(644, 218, 8, 12),
(645, 219, 6, 12),
(646, 219, 7, 12),
(647, 219, 8, 12),
(648, 220, 6, 12),
(649, 220, 7, 12),
(650, 220, 8, 12),
(651, 221, 6, 12),
(652, 221, 7, 12),
(653, 221, 8, 12),
(654, 222, 6, 12),
(655, 222, 7, 12),
(656, 222, 8, 12),
(657, 223, 6, 12),
(658, 223, 7, 12),
(659, 223, 8, 12),
(660, 224, 6, 12),
(661, 224, 7, 12),
(662, 224, 8, 12),
(663, 225, 6, 12),
(664, 225, 7, 12),
(665, 225, 8, 12),
(666, 226, 6, 12),
(667, 226, 7, 12),
(668, 226, 8, 12),
(669, 227, 6, 12),
(670, 227, 7, 12),
(671, 227, 8, 12),
(672, 228, 6, 12),
(673, 228, 7, 12),
(674, 228, 8, 12),
(675, 229, 6, 12),
(676, 229, 7, 12),
(677, 229, 8, 12),
(678, 230, 6, 12),
(679, 230, 7, 12),
(680, 230, 8, 12),
(681, 231, 6, 12),
(682, 231, 7, 12),
(683, 231, 8, 12),
(684, 232, 6, 12),
(685, 232, 7, 12),
(686, 232, 8, 12),
(687, 233, 6, 12),
(688, 233, 7, 12),
(689, 233, 8, 12),
(690, 234, 6, 12),
(691, 234, 7, 12),
(692, 234, 8, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `password` char(100) NOT NULL,
  `passReset` char(100) NOT NULL,
  `email` char(70) NOT NULL,
  `image` char(200) DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '0=block;1=pending;2=active',
  `idRole` int(11) NOT NULL,
  `note` varchar(1200) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `username`, `fullname`, `password`, `passReset`, `email`, `image`, `status`, `idRole`, `note`, `count`, `date`) VALUES
(5, 'user1', 'Nguyễn Văn A', '202cb962ac59075b964b07152d234b70', 'NzAzNDc=', 'leodomsolar@gmail.com', 'important-person_318-10744.jpg', 2, 6, NULL, 1, '2021-12-30 12:28:33'),
(7, 'user2', 'Nguyễn Văn A', '81dc9bdb52d04dc20036dbd8313ed055', 'MjA3MTQ=', 'leodomsolar@Gmail.com', 'istockphoto-1300845620-170667a.jpg', 2, 7, '', 1, '2022-01-03 04:02:20'),
(9, 'user3', 'Nguyễn Văn C', '81dc9bdb52d04dc20036dbd8313ed055', 'MjAxODA=', 'leodomsolar@gmail.com', 'proFImage3.png', 2, 11, '', 1, '2021-12-31 01:59:18'),
(11, 'volamdoan1', 'Võ Lâm Đoan', '153b5ea07dce6cc31fe9cd141596bbe8', 'NjE4NzM=', 'volamdoanzxc3@gmail.com', '240594317_3036168406709990_4750340889559668669_n.jpg', 2, 8, '', 1, '2022-06-16 12:44:54'),
(12, 'thanhxuan123', 'Thanh Xuân', 'c1ec32ca6df0784087e32293da600200', 'MzMxNTc=', 'volamdoam6@gmail.com', '241360288_3027075794285918_8708594162940479873_n.jpg', 1, 6, NULL, 0, '2022-06-14 12:07:25'),
(13, 'doan', 'Võ Lâm Đoan', '68f09d744c805b3e845fde6a907ee38a', 'MzI4NzI=', 'volamdoanzxc3@gmail.com', '283304938_704068810649936_1334257689471794118_n.jpg', 1, 6, NULL, 0, '2022-06-16 02:21:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `maVanDon` char(10) NOT NULL,
  `idHD` int(11) NOT NULL,
  `soLuongSP` int(3) NOT NULL,
  `TongGiaTri` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `note` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vanchuyen`
--

INSERT INTO `vanchuyen` (`maVanDon`, `idHD`, `soLuongSP`, `TongGiaTri`, `status`, `note`) VALUES
('MVD9234180', 34, 2, 25975000, 3, 'Giao hàng thành công'),
('MVD8934120', 35, 2, 23325000, 3, 'Giao hàng thành công'),
('MVD8213467', 36, 1, 25025000, 3, 'Đã giao cho khách'),
('MVD8920473', 37, 1, 33975000, 5, 'Đã hoàn hàng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangdungluong`
--
ALTER TABLE `bangdungluong`
  ADD PRIMARY KEY (`idDungLuong`);

--
-- Chỉ mục cho bảng `bangmau`
--
ALTER TABLE `bangmau`
  ADD PRIMARY KEY (`idMau`);

--
-- Chỉ mục cho bảng `bangphivanchuyen`
--
ALTER TABLE `bangphivanchuyen`
  ADD PRIMARY KEY (`idPhi`),
  ADD KEY `maTinh` (`maTinh`);

--
-- Chỉ mục cho bảng `bangtinh`
--
ALTER TABLE `bangtinh`
  ADD PRIMARY KEY (`idTinh`),
  ADD KEY `maMien` (`maMien`);

--
-- Chỉ mục cho bảng `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`idChitiet`),
  ADD KEY `idSP` (`idSP`),
  ADD KEY `maMau` (`maMau`),
  ADD KEY `maDungLuong` (`maDungLuong`);

--
-- Chỉ mục cho bảng `dieuhang`
--
ALTER TABLE `dieuhang`
  ADD PRIMARY KEY (`idPhieu`),
  ADD KEY `idDauKho1` (`idDauKho1`),
  ADD KEY `idDauKho2` (`idDauKho2`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idHoaDon`),
  ADD KEY `idKho` (`idKho`);

--
-- Chỉ mục cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD KEY `idHD` (`idHD`),
  ADD KEY `idCTHH` (`idCTHH`);

--
-- Chỉ mục cho bảng `keyword`
--
ALTER TABLE `keyword`
  ADD PRIMARY KEY (`idKey`);

--
-- Chỉ mục cho bảng `khohang`
--
ALTER TABLE `khohang`
  ADD PRIMARY KEY (`idKho`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mientbl`
--
ALTER TABLE `mientbl`
  ADD PRIMARY KEY (`idMien`);

--
-- Chỉ mục cho bảng `prodgallery`
--
ALTER TABLE `prodgallery`
  ADD PRIMARY KEY (`idGallery`),
  ADD KEY `idProd` (`idProd`);

--
-- Chỉ mục cho bảng `productkey`
--
ALTER TABLE `productkey`
  ADD KEY `idKey` (`idKey`),
  ADD KEY `idProd` (`idProd`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idProd`),
  ADD KEY `sanpham_ibfk_1` (`idBrand`),
  ADD KEY `sanpham_ibfk_2` (`idThietBi`);

--
-- Chỉ mục cho bảng `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`idSport`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`idThietBi`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`idBrand`);

--
-- Chỉ mục cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`idTon`),
  ADD KEY `tonkho_ibfk_1` (`idKho`),
  ADD KEY `idChitietSP` (`idChitietSP`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idRole` (`idRole`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD KEY `idHD` (`idHD`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangdungluong`
--
ALTER TABLE `bangdungluong`
  MODIFY `idDungLuong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `bangmau`
--
ALTER TABLE `bangmau`
  MODIFY `idMau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `bangphivanchuyen`
--
ALTER TABLE `bangphivanchuyen`
  MODIFY `idPhi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `bangtinh`
--
ALTER TABLE `bangtinh`
  MODIFY `idTinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `idChitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT cho bảng `dieuhang`
--
ALTER TABLE `dieuhang`
  MODIFY `idPhieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `keyword`
--
ALTER TABLE `keyword`
  MODIFY `idKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `khohang`
--
ALTER TABLE `khohang`
  MODIFY `idKho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT cho bảng `mientbl`
--
ALTER TABLE `mientbl`
  MODIFY `idMien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `prodgallery`
--
ALTER TABLE `prodgallery`
  MODIFY `idGallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `support`
--
ALTER TABLE `support`
  MODIFY `idSport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `idThietBi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  MODIFY `idTon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bangphivanchuyen`
--
ALTER TABLE `bangphivanchuyen`
  ADD CONSTRAINT `bangphivanchuyen_ibfk_1` FOREIGN KEY (`maTinh`) REFERENCES `bangtinh` (`idTinh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bangtinh`
--
ALTER TABLE `bangtinh`
  ADD CONSTRAINT `bangtinh_ibfk_1` FOREIGN KEY (`maMien`) REFERENCES `mientbl` (`idMien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idProd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`maMau`) REFERENCES `bangmau` (`idMau`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`maDungLuong`) REFERENCES `bangdungluong` (`idDungLuong`);

--
-- Các ràng buộc cho bảng `dieuhang`
--
ALTER TABLE `dieuhang`
  ADD CONSTRAINT `dieuhang_ibfk_1` FOREIGN KEY (`idDauKho1`) REFERENCES `khohang` (`idKho`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dieuhang_ibfk_2` FOREIGN KEY (`idDauKho2`) REFERENCES `khohang` (`idKho`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`idKho`) REFERENCES `khohang` (`idKho`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD CONSTRAINT `hoadonchitiet_ibfk_1` FOREIGN KEY (`idHD`) REFERENCES `hoadon` (`idHoaDon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonchitiet_ibfk_2` FOREIGN KEY (`idCTHH`) REFERENCES `chitietsanpham` (`idChitiet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `prodgallery`
--
ALTER TABLE `prodgallery`
  ADD CONSTRAINT `prodgallery_ibfk_1` FOREIGN KEY (`idProd`) REFERENCES `sanpham` (`idProd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productkey`
--
ALTER TABLE `productkey`
  ADD CONSTRAINT `productkey_ibfk_1` FOREIGN KEY (`idKey`) REFERENCES `keyword` (`idKey`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productkey_ibfk_2` FOREIGN KEY (`idProd`) REFERENCES `sanpham` (`idProd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `thuonghieu` (`idBrand`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idThietBi`) REFERENCES `thietbi` (`idThietBi`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  ADD CONSTRAINT `tonkho_ibfk_1` FOREIGN KEY (`idKho`) REFERENCES `khohang` (`idKho`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tonkho_ibfk_2` FOREIGN KEY (`idChitietSP`) REFERENCES `chitietsanpham` (`idChitiet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD CONSTRAINT `vanchuyen_ibfk_1` FOREIGN KEY (`idHD`) REFERENCES `hoadon` (`idHoaDon`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
