-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql
-- Thời gian đã tạo: Th7 07, 2020 lúc 04:25 PM
-- Phiên bản máy phục vụ: 8.0.20
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pizzashop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `MaChiTiet` int UNSIGNED NOT NULL,
  `MaDonDatHang` int DEFAULT NULL,
  `MaSp` int NOT NULL,
  `quantity` int NOT NULL COMMENT 'số lượng',
  `GiaSp` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`MaChiTiet`, `MaDonDatHang`, `MaSp`, `quantity`, `GiaSp`, `updated_at`) VALUES
(38, 36, 5, 1, 349000, '2020-07-01 19:23:35'),
(39, 36, 9, 1, 90000, '2020-07-01 19:23:35'),
(40, 37, 8, 1, 120000, '2020-07-01 19:23:57'),
(41, 37, 13, 1, 69000, '2020-07-01 19:23:57'),
(42, 38, 5, 1, 349000, '2020-07-03 19:37:15'),
(43, 38, 6, 1, 219000, '2020-07-03 19:37:15'),
(44, 38, 12, 1, 29000, '2020-07-03 19:37:15'),
(45, 38, 11, 2, 59000, '2020-07-03 19:37:15'),
(46, 39, 11, 1, 59000, '2020-07-03 19:44:51'),
(47, 39, 10, 1, 110000, '2020-07-03 19:44:51'),
(48, 39, 5, 2, 349000, '2020-07-03 19:44:51'),
(49, 39, 6, 1, 219000, '2020-07-03 19:44:51'),
(50, 40, 5, 1, 349000, '2020-07-03 19:47:46'),
(51, 41, 1, 1, 200000, '2020-07-03 19:48:05'),
(52, 42, 6, 1, 219000, '2020-07-03 19:49:27'),
(53, 42, 8, 1, 120000, '2020-07-03 19:49:27'),
(54, 43, 13, 1, 69000, '2020-07-03 19:51:01'),
(55, 44, 8, 1, 120000, '2020-07-05 21:52:41'),
(56, 44, 12, 1, 29000, '2020-07-05 21:52:41'),
(57, 44, 9, 1, 90000, '2020-07-05 21:52:41'),
(58, 44, 10, 1, 110000, '2020-07-05 21:52:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id_customer` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `updated_at`) VALUES
(46, 'abc', 'nam', 'anhtuan3683242@gmail.com', '15', '111111', 'notthing', '2020-07-01 15:33:22'),
(47, 'abc', 'nam', 'anhtuan3683242@gmail.com', 'aaaa', '0947834056', '1111', '2020-07-01 19:12:47'),
(48, 'Trần Phạm Anh Tuấn', 'nam', 'nh0xla0_1999@yahoo.com.vn', '15', '111111', 'aaaaaaa', '2020-07-01 19:15:54'),
(49, 'Trần Phạm Anh Tuấn', 'nam', 'nh0xla0_1999@yahoo.com.vn', '15', '0947834056', 'aaaa', '2020-07-01 19:18:09'),
(50, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3683242@gmail.com', '15', '0947834056', 'xxzzz', '2020-07-01 19:23:35'),
(51, 'abc', 'nam', 'anhtuan3683242@gmail.com', '15', '111111111111111', 'aaaa', '2020-07-01 19:23:57'),
(52, 'Trần Phạm Anh Tuấn', 'nam', 'toquocthang2209@gmail.com', '15', '09478340561', 'aaaaa', '2020-07-03 19:37:15'),
(53, 'To quoc thang', 'nữ', 'toquocthang2209@gmail.com', '15', '0947834056', 'aaa', '2020-07-03 19:44:51'),
(54, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3683242@gmail.com', '15', '0123456789', 'aaaa', '2020-07-03 19:47:46'),
(55, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3683242@gmail.com', '15', '111111', '1111', '2020-07-03 19:48:05'),
(56, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3683242@gmail.com', '15', '09478340561', 'qqqq', '2020-07-03 19:49:27'),
(57, 'Trần Phạm Anh Tuấn', 'nam', 'nh0xla0_1999@yahoo.com.vn', 'aaaaa', '111111111111111', 'aaa', '2020-07-03 19:51:01'),
(58, 'Trần Phạm Anh Tuấn', 'nữ', 'toquocthang2209@gmail.com', '15', '0947834056', '00011111111', '2020-07-05 21:52:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datban`
--

CREATE TABLE `datban` (
  `MaBan` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayDat` varchar(200) DEFAULT NULL,
  `person` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'số người dự kiến đặt',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `datban`
--

INSERT INTO `datban` (`MaBan`, `name`, `gender`, `email`, `phone_number`, `note`, `NgayDat`, `person`, `created_at`, `updated_at`) VALUES
(1, 'a', 'nam', 'anhtuan@gmail.com', '11111111', 'aaaa', '2020-07-05', 'Nhỏ', '2020-06-26 11:28:53', '2020-06-26 11:28:53'),
(2, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan3333@gmail.com', '11111111', 'ghichu', '2020-06-28', 'Lớn', '2020-06-26 11:33:06', '2020-06-26 11:33:06'),
(3, 'Trần Phạm Anh Tuấn', 'nam', 'anhtuan@gmail.com', '11111111', 'aaaaa', '2020-06-30', 'Nhỏ', '2020-06-26 11:33:20', '2020-06-26 11:33:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDonDatHang` int UNSIGNED NOT NULL,
  `id_customer` int DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  `TongTien` int DEFAULT NULL,
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDonDatHang`, `id_customer`, `NgayTao`, `TongTien`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(40, 54, '2020-07-03', 349000, 'COD', 'aaaa', '2020-07-03 19:47:46', '2020-07-03 19:47:46'),
(41, 55, '2020-07-03', 200000, 'ATM', '1111', '2020-07-03 19:48:05', '2020-07-03 19:48:05'),
(42, 56, '2020-07-03', 339000, 'COD', 'qqqq', '2020-07-03 19:49:27', '2020-07-03 19:49:27'),
(43, 57, '2020-07-03', 69000, 'COD', 'aaa', '2020-07-03 19:51:01', '2020-07-03 19:51:01'),
(44, 58, '2020-07-05', 349000, 'COD', '00011111111', '2020-07-05 21:52:41', '2020-07-05 21:52:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSP` int NOT NULL,
  `TenLoai` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSP`, `TenLoai`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', '2020-06-14 10:32:14', '2020-06-14 10:32:14'),
(2, 'Combo', '2020-06-14 10:34:21', '2020-06-14 10:34:21'),
(3, 'Mì ý và Cơm', '2020-06-14 10:33:34', '2020-06-14 10:33:34'),
(4, 'Món khai vị', '2020-06-14 10:33:57', '2020-06-14 10:33:57'),
(5, 'Thức uống', '2020-06-14 10:34:10', '2020-06-14 10:34:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `TenSp` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLoaiSP` int NOT NULL,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `GiaSp` int UNSIGNED DEFAULT NULL,
  `Hinh` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
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
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'banner5.jpg'),
(2, '', 'banner6.jpg'),
(3, '', 'banner7.jpg'),
(4, '', 'banner8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33'),
(7, 'Tuan Tuan', 'anhtuan3683242@gmail.com', '$2y$10$nkE8ZzfQ5gbZuQNKy7Xg1.uDGuDfQiatR148.cBLyrPexCcL/Q4je', '0947834056', '1041/62/20 Trần Xuân Soạn', NULL, '2020-07-06 21:24:15', '2020-07-06 21:24:15'),
(8, 'Thang Thang', 'toquocthang2209@gmail.com', '$2y$10$YhpnOxU7y8K7L5t9k/ddx.7xoV85BwZq5mWPFOEnmemkuDE31yDYW', '112311', '11111111 abc', NULL, '2020-07-07 20:18:07', '2020-07-07 20:18:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`MaChiTiet`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `datban`
--
ALTER TABLE `datban`
  ADD PRIMARY KEY (`MaBan`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonDatHang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `MaChiTiet` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `datban`
--
ALTER TABLE `datban`
  MODIFY `MaBan` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonDatHang` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
