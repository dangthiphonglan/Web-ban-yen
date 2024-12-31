-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 06:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` int(11) NOT NULL DEFAULT 0,
  `birth` date NOT NULL DEFAULT '2021-01-22',
  `ngay_tao_tai_khoan` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '""',
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image.jpg',
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `birth`, `ngay_tao_tai_khoan`, `phone`, `address`, `photo`, `is_lock`, `is_delete`) VALUES
(9, 'admin', 'admin@gmail.com', '$2y$10$cqQ62EO9nEqd7rNz0vJKl.hckDx/nAxQx7xp8Q5HH3wUEU/BGV4z.', 0, '2024-12-22', '2024-12-20 18:50:22', '0909374065', 'Lâm Đồng', '34173cb38f07f89ddbebc2ac9128303f.png', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `binhluanadmins`
--

CREATE TABLE `binhluanadmins` (
  `id` int(11) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `noi_dung_binh_luan` text NOT NULL,
  `thoi_gian_binh_luan` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `binhluans`
--

CREATE TABLE `binhluans` (
  `id` int(11) UNSIGNED NOT NULL,
  `noi_dung_binh_luan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `thoi_gian_binh_luan` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluans`
--

INSERT INTO `binhluans` (`id`, `noi_dung_binh_luan`, `user_id`, `san_pham_id`, `thoi_gian_binh_luan`, `created_at`, `updated_at`) VALUES
(28, 'món này ngon nha', 12, 64, '2024-12-22 00:03:34', NULL, NULL),
(29, 'Nước dùng hơi mặn', 2, 64, '2024-12-25 00:25:20', NULL, NULL),
(30, 'ngon', 2, 65, '2024-12-25 00:25:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadons`
--

CREATE TABLE `chitiethoadons` (
  `hoa_don_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadons`
--

INSERT INTO `chitiethoadons` (`hoa_don_id`, `san_pham_id`, `so_luong`, `don_gia`, `created_at`, `updated_at`) VALUES
(7, 42, 1, 120000, NULL, NULL),
(9, 42, 1, 120000, NULL, NULL),
(9, 43, 1, 150000, NULL, NULL),
(37, 23, 1, 9000000, NULL, NULL),
(41, 68, 1, 350000, NULL, NULL),
(41, 70, 1, 120000, NULL, NULL),
(42, 68, 1, 350000, NULL, NULL),
(42, 70, 1, 120000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhgias`
--

CREATE TABLE `danhgias` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `muc_do_danh_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadons`
--

CREATE TABLE `hoadons` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `dia_chi_nhan_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang_thanh_toan` tinyint(4) NOT NULL DEFAULT 0,
  `ngay_tao` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadons`
--

INSERT INTO `hoadons` (`id`, `user_id`, `dia_chi_nhan_hang`, `tinh_trang_thanh_toan`, `ngay_tao`, `created_at`, `updated_at`) VALUES
(7, 2, 'quận 12', 1, '2024-12-20 16:47:45', NULL, NULL),
(9, 3, 'Thạnh Lộc 28, quận 12', 1, '2024-12-20 16:22:17', NULL, NULL),
(12, 12, 'Tân Hưng Thuận, quận 12', 1, '2024-12-20 17:04:22', NULL, NULL),
(37, 12, 'Thạnh Lộc 28, quận 12 ', 1, '2024-12-20 10:51:08', NULL, NULL),
(41, 2, 'Lâm Đồng', 0, '2024-12-25 00:32:07', NULL, NULL),
(42, 12, 'Lâm Đồng', 0, '2024-12-25 00:36:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanphams`
--

CREATE TABLE `loaisanphams` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_loai_san_pham` varchar(50) NOT NULL,
  `da_xoa` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanphams`
--

INSERT INTO `loaisanphams` (`id`, `ten_loai_san_pham`, `da_xoa`, `created_at`, `updated_at`) VALUES
(29, 'Ramen', 0, '2024-12-21 16:00:34', NULL),
(30, 'Rice', 0, '2024-12-21 16:01:49', NULL),
(31, 'Sashimi', 0, '2024-12-21 16:03:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanphams`
--

CREATE TABLE `sanphams` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_san_pham` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `loai_san_pham_id` int(10) UNSIGNED NOT NULL,
  `mo_ta_san_pham` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `hinh_anh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `ngay_dang` datetime NOT NULL DEFAULT current_timestamp(),
  `da_xoa` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanphams`
--

INSERT INTO `sanphams` (`id`, `ten_san_pham`, `admin_id`, `loai_san_pham_id`, `mo_ta_san_pham`, `so_luong`, `don_gia`, `hinh_anh`, `ngay_dang`, `da_xoa`, `created_at`, `updated_at`) VALUES
(64, 'Miso Ramen', 9, 29, 'Nước dùng từ tương miso, có màu nâu đậm, hương vị đậm đà, hơi ngọt và hơi mặn.', 20, 90000, '5c04925674920eb58467fb52ce4ef728.jpg', '2024-12-21 23:48:12', 0, NULL, NULL),
(65, 'Tonkotsu Ramen', 9, 29, 'Nước dùng đậm đà và béo ngậy, được ninh từ xương heo trong thời gian dài.', 19, 90000, '149e9677a5989fd342ae44213df68868.jpg', '2024-12-21 23:49:20', 0, NULL, NULL),
(66, 'Tantanmen', 9, 29, 'Ramen có hương vị cay, nước dùng từ nước tương hoặc miso, thêm dầu mè và ớt.', 20, 95000, '093f65e080a295f8076b1c5722a46aa2.jpg', '2024-12-21 23:50:16', 0, NULL, NULL),
(67, 'Combo 1', 9, 31, '.', 2, 195000, 'e00da03b685a0dd18fb6a08af0923de0.jpg', '2024-12-21 23:51:34', 0, NULL, NULL),
(68, 'Combo 2', 9, 31, '.', 0, 350000, '7cbbc409ec990f19c78c75bd1e06f215.jpg', '2024-12-21 23:52:10', 0, NULL, NULL),
(69, 'Salmon', 9, 31, '.', 5, 80000, 'f57a2f557b098c43f11ab969efe1504b.jpg', '2024-12-21 23:52:50', 0, NULL, NULL),
(70, 'Gyudon', 9, 30, 'ngon tuyệt', 13, 120000, 'e2c420d928d4bf8ce0ff2ec19b371514.jpg', '2024-12-21 23:54:23', 0, NULL, NULL),
(71, 'Hakata Ramen', 9, 29, 'Biến thể của Tonkotsu Ramen, nổi tiếng với sợi mì mỏng và nước dùng đậm đặc', 18, 89000, 'dd45045f8c68db9f54e70c67048d32e8.jpg', '2024-12-21 23:56:12', 0, NULL, NULL),
(72, 'Unadon', 9, 30, 'Nước sốt tare được rưới lên trên lươn và cơm, tạo nên hương vị ngọt ngào, mặn mà và thơm phức.', 40, 170000, 'be3159ad04564bfb90db9e32851ebf9c.jpg', '2024-12-21 23:59:10', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL DEFAULT '2021-01-22',
  `ngay_tao_tai_khoan` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image.jpg',
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `birth`, `ngay_tao_tai_khoan`, `phone`, `address`, `photo`, `is_lock`, `is_delete`) VALUES
(2, 'Mỹ Huyền', 'myhuyen@gmail.com', '$2y$10$HdrTO4qiPCd2GRfqXhtFyezHGhnNoFBeGpIhXxO6tMGdyySuSMcGC', '2000-04-17', '2024-12-19 11:00:36', '0900123456', 'Lâm Đồng', '9be40cee5b0eee1462c82c6964087ff9.jpg', 0, 0),
(3, 'Phi', 'phi@gmail.com', '$2y$10$9Xbb0dH26P6.QySwplP1ZOi85JVev6ydRt43j7mv5ImTOX1OsHm7a', '2021-01-22', '2021-03-04 16:06:28', '0905124728', 'Lâm Đồng', 'ccc0aa1b81bf81e16c676ddb977c5881.jpg', 0, 0),
(4, 'Hạnh Nguyễn ', 'hanhnguyen@gmail.com', '$2y$10$brt.L2DjP2OLJUgnqfN/0u9uVilITWZBlCWGHQGsg5nUieAiLDakK', '2021-01-22', '2021-03-04 17:10:59', '0909123321', 'Thảo Điền Quận 2', 'bac9162b47c56fc8a4d2a519803d51b3.jpg', 0, 0),
(5, 'tuấn', 'pk@gmail.com', '$2y$10$i7uaMzy0UzZPl2fLG9.xhO/XRjF5cLNcDUt1a2LIlnP81tqzoqhaW', '2021-01-22', '2024-12-21 17:18:14', '0905432123', 'Phường An Phú Quận 2', 'd67d8ab4f4c10bf22aa353e27879133c.png', 0, 0),
(11, 'Nguyễn Thị Linh', 'nguyenthilinh@gmail.com', '$2y$10$/7AA3fgG/bp5oFTEtuBqDukr4KJSgO8eB0FNQr.z1wQ/ZpBUEf5gS', '2001-01-02', '2021-03-07 09:25:38', '0912567712', 'Cà Mau', '96b9bff013acedfb1d140579e2fbeb63.jpg', 0, 0),
(12, 'Phong Lan', 'user@gmail.com', '$2y$10$Wus23MoxhEDldgghAOlQjeGTOCoDqmdCohGFoegE/lcv9E3DiWyhq', '2011-01-05', '2024-12-20 10:47:44', '0908123321', 'Lâm Đồng', '4f6ffe13a5d75b2d6a3923922b3922e5.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `san_pham_id` (`san_pham_id`) USING BTREE;

--
-- Indexes for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluans_user_id_foreign` (`user_id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD PRIMARY KEY (`hoa_don_id`,`san_pham_id`),
  ADD KEY `chitiethoadons_san_pham_id_foreign` (`san_pham_id`),
  ADD KEY `chitiethoadons_hoa_don_id_foreign` (`hoa_don_id`);

--
-- Indexes for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id` (`san_pham_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hoadons`
--
ALTER TABLE `hoadons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loaisanphams`
--
ALTER TABLE `loaisanphams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanphams`
--
ALTER TABLE `sanphams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanphams_admin_id_foreign` (`admin_id`),
  ADD KEY `loai_san_pham_id` (`loai_san_pham_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluans`
--
ALTER TABLE `binhluans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `danhgias`
--
ALTER TABLE `danhgias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadons`
--
ALTER TABLE `hoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `loaisanphams`
--
ALTER TABLE `loaisanphams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sanphams`
--
ALTER TABLE `sanphams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  ADD CONSTRAINT `binhluanadmins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluanadmins_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluanadmins_ibfk_3` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `binhluans_ibfk_1` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD CONSTRAINT `chitiethoadons_ibfk_1` FOREIGN KEY (`hoa_don_id`) REFERENCES `hoadons` (`id`);

--
-- Constraints for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD CONSTRAINT `danhgias_ibfk_1` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgias_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hoadons`
--
ALTER TABLE `hoadons`
  ADD CONSTRAINT `hoadons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sanphams`
--
ALTER TABLE `sanphams`
  ADD CONSTRAINT `sanphams_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanphams_ibfk_2` FOREIGN KEY (`loai_san_pham_id`) REFERENCES `loaisanphams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
