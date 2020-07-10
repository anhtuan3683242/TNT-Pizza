-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 07:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `MaChiTiet` int(11) UNSIGNED NOT NULL,
  `MaDonDatHang` int(11) DEFAULT NULL,
  `MaSp` int(11) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `GiaSp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datban`
--

CREATE TABLE `datban` (
  `MaBan` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayDat` varchar(200) DEFAULT NULL,
  `person` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'số người dự kiến đặt',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datban`
--

INSERT INTO `datban` (`MaBan`, `name`, `gender`, `email`, `phone_number`, `note`, `NgayDat`, `person`, `created_at`, `updated_at`) VALUES
(1, 'a', 'nam', 'anhtuan@gmail.com', '11111111', 'aaaa', '2020-07-05', 'Nhỏ', '2020-06-26 11:28:53', '2020-06-26 11:28:53'),
(2, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3333@gmail.com', '11111111', 'ghichu', '2020-06-28', 'Lớn', '2020-06-26 11:33:06', '2020-06-26 11:33:06'),
(3, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan@gmail.com', '11111111', 'aaaaa', '2020-06-30', 'Nhỏ', '2020-06-26 11:33:20', '2020-06-26 11:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonDatHang` int(11) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSP` int(11) NOT NULL,
  `TenLoai` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSP`, `TenLoai`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', '2020-06-14 10:32:14', '2020-06-14 10:32:14'),
(2, 'Combo', '2020-06-14 10:34:21', '2020-06-14 10:34:21'),
(3, 'Mì ý và Cơm', '2020-06-14 10:33:34', '2020-06-14 10:33:34'),
(4, 'Món khai vị', '2020-06-14 10:33:57', '2020-06-14 10:33:57'),
(5, 'Thức uống', '2020-06-14 10:34:10', '2020-06-14 10:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `TenSp` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLoaiSP` int(11) NOT NULL,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSp` int(11) UNSIGNED DEFAULT NULL,
  `Hinh` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `TenSp`, `MaLoaiSP`, `MoTa`, `GiaSp`, `Hinh`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Pizza Hải Sản Xốt Pesto', 1, 'Tôm, mực và nấm trên nền xốt Pesto đặc trưng, phủ phô mai Mozzarella Cỡ nhỏ: 115,000đ Cỡ vừa: 199,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +69,000đ) Cỡ lớn: 287,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +89,000đ)\r\n\r\n', 200000, 'Pesto.png', 1, '2020-06-14 10:08:19', '2020-06-14 10:08:19'),
(2, 'Pizza Hải sản Xốt Tiêu Đen', 1, 'Tôm, mực, thanh cua, hành tây, thơm phủ xốt tiêu đen thơm nóng và phô mai Mozzarella Cỡ nhỏ: 115,000đ Cỡ vừa: 199,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +69,000đ) Cỡ lớn: 287,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +89,000đ)\r\n\r\n', 215000, 'tieuden.png', 0, '2020-06-14 10:14:47', '2020-06-14 10:14:47'),
(3, 'Pizza Thập Cẩm', 1, 'Mang hương vị truyền thống với thịt bò, pepperoni, ớt chuông, nấm và hành tây, phủ phô mai Mozzarella trứ danh Cỡ nhỏ: 115,000đ Cỡ vừa: 199,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +69,000đ) Cỡ lớn: 287,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +89,000đ)\r\n\r\n', 250000, 'thapcam.png', 0, '2020-06-14 10:17:18', '2020-06-14 10:17:18'),
(4, 'Pizza Cơn Lốc Hải Sản', 1, 'Mực, thanh cua, thơm, ớt chuông xanh, hành tây và phô mai Mozzarella trên nền xốt Cheesy Mayo và phô mai Mozzarella thượng hạng Cỡ nhỏ: 115,000đ Cỡ vừa: 199,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +69,000đ) Cỡ lớn: 287,000đ (+ Nâng cấp viền Phô mai/ Xúc xích: +89,000đ)\r\n\r\n', 230000, 'conlochaisan.png', 0, '2020-06-14 10:19:04', '2020-06-14 10:19:04'),
(5, 'COMBO RẺ BẤT NGỜ', 2, 'Dành cho 2 - 3 người 01 trong 13 loại Pizza Menu Chính (Cỡ Vừa) 01 Xà Lách Cá Ngừ/ 01 Xà Lách Da Cá Hồi 01 Cơm Chiên Tôm Vị Cay 01 Coca/ Fanta/ Sprite 1.5L', 349000, 'rebatngo.png', 1, '2020-06-14 10:22:15', '2020-06-14 10:22:15'),
(6, 'COMBO 2 NGƯỜI', 2, 'Dành cho 2 người 01 Pizza trong menu chính (cỡ vừa) 01 Khoai tây chiên 01 Coca-cola/ Fanta/ Sprite 1.5L + Nâng cấp Viền Phô Mai/ Viền Xúc Xích (cỡ vừa): + 49.000đ', 219000, '2nguoi.png', 1, '2020-06-14 10:23:06', '2020-06-14 10:23:06'),
(7, 'COMBO NO CĂNG BỤNG', 2, 'Dành cho 3 - 4 người 01 trong 13 loại Pizza Menu Chính (Cỡ Vừa) 01 Cánh Gà Chiên Xốt Trứng Muối/ Cánh Gà Xốt BBQ (4 miếng) 01 Mì Ý Thịt Bằm Xốt Cà Chua 01 Khoai Tây Chiên 01 Coca/ Fanta/ Sprite 1.5L', 429000, 'cangbung.png', 1, '2020-06-14 10:23:31', '2020-06-14 10:23:31'),
(8, 'MỲ Ý HẢI SẢN XỐT TIÊU ĐEN', 3, 'Tôm, thanh cua, mực, đậu Pháp, nấm, ớt chuông xanh cùng xốt tiêu đen cay nồng', 120000, 'mytieuden.png', 0, '2020-06-14 10:27:10', '2020-06-14 10:27:10'),
(9, 'CƠM CHIÊN HẢI SẢN', 3, 'Cơm chiên hải sản với tôm, mực, và rau củ tươi', 90000, 'comhaisan.png', 1, '2020-06-14 10:28:45', '2020-06-14 10:28:45'),
(10, 'MÌ Ý HẢI SẢN XỐT CÀ CHUA', 3, 'Mì Ý xốt cà chua với tôm, mực, hành tây và ớt chuông xanh', 110000, 'mysotcachua.png', 0, '2020-06-14 10:28:05', '2020-06-14 10:28:05'),
(11, 'KHOAI TÂY CHIÊN', 4, 'Khoai tây chiên với sốt cà chua', 59000, 'chips.png', 0, '2020-06-14 10:29:24', '2020-06-14 10:29:24'),
(12, 'BÁNH MÌ BƠ TỎI', 4, 'Bánh mì bơ tỏi nướng giòn ngon phủ xốt bơ tỏi thơm nồng', 29000, 'botoi.png', 0, '2020-06-14 10:30:07', '2020-06-14 10:30:07'),
(13, 'XÀ LÁCH TRỘN CÁ NGỪ VÀ THỊT XÔNG KHÓI', 4, 'Rau xanh trộn với cá ngừ, thịt xông khói, đậu Pháp, khoai tây, bắp và xốt Mayonnaise', 69000, 'xalachca.png', 0, '2020-06-14 10:30:34', '2020-06-14 10:30:34'),
(14, 'COCA-COLA 1.5L', 5, 'Nước ngọt', 42000, 'coca.png', 0, '2020-06-14 10:31:02', '2020-06-14 10:31:02'),
(15, 'FANTA 1.5L', 5, 'Nước ngọt', 42000, 'fanta.png', 0, '2020-06-14 10:31:16', '2020-06-14 10:31:16'),
(16, 'SPRITE 1.5L', 5, 'Nước ngọt', 42000, 'sprite.png', 0, '2020-06-14 10:31:32', '2020-06-14 10:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'banner5.jpg'),
(2, '', 'banner6.jpg'),
(3, '', 'banner7.jpg'),
(4, '', 'banner8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33'),
(7, 'to quoc thang', 'fdf@gmailcom', '$2y$10$j3iPlW8T88r97wG9mzfdS.IVpMf8wPkSdzNQQVoqPMbuKEMJVV6i2', '123456', 'Street Address', NULL, '2020-07-07 17:00:40', '2020-07-07 17:00:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`MaChiTiet`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `datban`
--
ALTER TABLE `datban`
  ADD PRIMARY KEY (`MaBan`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonDatHang`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `MaChiTiet` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `datban`
--
ALTER TABLE `datban`
  MODIFY `MaBan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonDatHang` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
