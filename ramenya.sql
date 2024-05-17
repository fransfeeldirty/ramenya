-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 09:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramenya`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `judul`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'History RamenYA!', 'RamenYA berdiri sejak pertengahan 2019 dan target pada tahun 2022 akan mencapai 72 Cabang di seluruh Indonesia, RamenYA berjuang demi mendapatakan sertifikasi halal pada tahun 2020.', 'img-history/txIEv64RXfznYUOT8l8iJf9LTLFBtdOpkRjnA68F.jpg', '2022-11-03 10:54:45', '2022-12-06 05:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `judul`, `lokasi`, `created_at`, `updated_at`) VALUES
(7, 'Ramen Ya! Blok M', 'Blok M Plaza Jl. Bulungan, RT.6/RW.6, Kramat Pela, Kebayoran Baru, South Jakarta City, Jakarta 12160', '2022-11-08 20:20:31', '2022-11-08 20:20:31'),
(8, 'Ramen Ya Mall Ciputra', 'Jl. Letjen S. Parman No.11, RW.1, Tj. Duren Utara, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470', '2022-11-08 20:20:56', '2022-11-08 20:20:56'),
(9, 'Ramen Ya Sumarecon Mall Serpong', 'Jl. Boulevard Raya Gading Serpong, Pakulonan Bar., Kec. Klp. Dua, Tangerang, Banten 15810', '2022-11-08 20:21:10', '2022-11-08 20:21:10'),
(10, 'Ramen Ya! Cikarang', 'Jl. Mataram No.Kav. 37-39, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530', '2022-11-08 20:21:24', '2022-11-08 20:21:24'),
(11, 'Ramen YA Pluit Village', 'Jl. Pluit Indah No.12, RT.1/RW.4, Pluit, Kec. Penjaringan, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14450', '2022-11-08 20:21:38', '2022-11-08 20:21:38'),
(12, 'Ramen Ya! - Festival Citylink Bandung', 'Festival CityLink Lt. GF/09, 09C, 10 Jl. Peta No. 241, Suka Asih', '2022-11-08 20:21:50', '2022-11-08 20:21:50'),
(13, 'Ramen Ya! Mayapada Tower 2', 'Mayapada Tower, Jl. Jend. Sudirman No.Kav.28, RT.4/RW.2, Kuningan, Karet, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12920', '2022-11-08 20:22:10', '2022-11-08 20:22:10'),
(14, 'Ramen Ya! Hypermall Bekasi', 'Mega Bekasi Hypermall, Lantai 3, Jl. Jend. Ahmad Yani No. 1, Bekasi Selatan, Bekasi', '2022-11-08 20:22:26', '2022-11-08 20:22:26'),
(15, 'Ramen Ya! Senayan City 1 Delicae', 'Jl. Asia Afrika No.19, RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270', '2022-11-08 20:22:39', '2022-11-08 20:22:39'),
(16, 'Ramen Ya! Hartono Mall', 'Hartono mall lt.LG jl.Ring road utara,kaliwaru,condong waru,kec Depok,Kab.Sleman,Derah Yogyakarta', '2022-11-08 20:23:03', '2022-11-08 20:23:03'),
(17, 'Ramen Ya! Metropolitan Mall', 'Metropolitan Mall Bekasi Lantai Dasar No. D11-II Jl. KH Noer Alie Bekasi Selatan', '2022-11-08 20:23:25', '2022-11-08 20:23:25'),
(18, 'Ramen Ya! Plaza Ambarukmo', 'Jl. Laksda Adisucipto No.80, Ambarukmo, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2022-11-08 20:23:50', '2022-11-08 20:23:50'),
(19, 'Ramen YA! TSM Bandung', 'Lt. 2 Unit B260 Jl. Gatot Subroto no. 289', '2022-11-08 20:43:11', '2022-11-08 20:43:11'),
(20, 'Ramen YA! Royal Plaza', 'Lt. LG Kav AC01 Surabaya', '2022-11-08 20:43:33', '2022-11-08 20:43:33'),
(21, 'Ramen YA! Bintaro Xchange', 'CBD Bintaro Jaya, Blok O, Jl. Sektor VII No.2, Banten 15227', '2022-11-08 20:44:04', '2022-11-08 20:44:04'),
(22, 'Ramen YA! Mall Of Serang', 'LT.GF-19, Jl, Akses Tol Serang Tim, Panancangan, Kec Cipocok Jaya, Kota Serang, Banten 42124', '2022-11-08 20:45:43', '2022-11-08 20:45:43'),
(23, 'Ramen YA! Grand Indonesia', 'Jl. M.H. Thamrin No.1, Kb. Melati, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310', '2022-11-08 20:45:58', '2022-11-08 20:45:58'),
(24, 'Ramen YA! PVJ Bandung', 'Mall Paris Van Java  Lt.RL-A-11A Jalan Sukajadi No.131-139 , Cipedes, Sukajadi, Cipedes, Sukajadi, Kota Bandung, Jawa Barat', '2022-11-08 20:46:11', '2022-11-08 20:46:11'),
(25, 'Ramen YA! Lippo Mall Puri (St. Moritz)', 'Lippo Mall Puri Lt 1 Food Avenue Unit 68 F, Jl. Puri Indah Raya, RT.3/RW.2, South Kembangan, Kembangan, West Jakarta City, Jakarta 11610', '2022-11-08 20:46:25', '2022-11-08 20:46:25'),
(26, 'Ramen YA! Suncity Mall Sidoarjo', 'Ruko Sun City Blok B No.1, Jalan Pahlawan, Sidoarjo, Sidokumpul, Rw6, Sidokumpul, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61213', '2022-11-08 20:47:02', '2022-11-08 20:47:02'),
(27, 'Ramen YA! Tunjungan Plaza', 'Tunjungan Plaza 4 Lt. 5 , Jl. Basuki Rahmat No.8-12, Kedungdoro, Tegalsari, Surabaya City, East Java 60261', '2022-11-08 20:47:27', '2022-11-08 20:47:27'),
(28, 'Ramen YA! Central Park', 'Central Park Mall Lt. LG unit L-234 Jl. Letjen S. Parman No.20 Tanjung Duren Selatan, Grogol, Petamburan, Jakarta Barat, DKI Jakarta', '2022-11-08 20:47:45', '2022-11-08 20:47:45'),
(29, 'Ramen YA! Tangerang City', 'Tangerang City Mall Lt. Ground unit B 0010  Jl. Jenderal Sudirman no. 1 Cikokol, Tangerang 15117', '2022-11-08 20:48:00', '2022-11-08 20:48:00'),
(30, 'Ramen YA! Kuningan City', 'Gedung Mall Kuningan City Lt. GF Unit GF-20, Jl.Prof Dr Satrio RT.018, RW.004 Karet kuningan, Setiabudi, Jakarta Selatan DKI Jakarta', '2022-11-08 20:48:27', '2022-11-08 20:48:27'),
(31, 'Ramen YA! Gandaria City', 'Mall Gandaria City, Main Street Upper Ground Unit M-U28 Jl. Sultan Iskandar Muda, RT.10/RW.6, Kby. Lama Utara, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12240', '2022-11-08 20:49:19', '2022-11-08 20:49:19'),
(32, 'Ramen YA! Mall Kelapa Gading', 'Gedung Mall Kelapa Gading 3 Lt.3 Unit R-03B Kelapa Gading Timur, Kelapa Gading, Jakarta Utara, DKI Jakarta', '2022-11-08 20:49:31', '2022-11-08 20:49:31'),
(33, 'Ramen YA! Kota Kasablanka 1 UG', 'Mall Kota Kasablanka Lt. UG/FSU, Jl. Casablanca No. 88, RT.2/RW.14, Menteng Dalam, Kec. Tebet, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12870', '2022-11-08 20:49:48', '2022-11-08 20:49:48'),
(34, 'Ramen YA! Botani Square', 'Botani Square Mall Lt. 2 Unit 21-21A, Jl. Raya Pajajaran, RT.04/RW.05, Tegallega, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16129', '2022-11-08 20:50:00', '2022-11-08 20:50:00'),
(35, 'Ramen YA! Pejaten Village', 'Pejaten Village Mall Lt. GF No.21 & 22 Jl. Warung Jati Barat No.39 Jati Padang, Pasar Minggu, Jakarta Selatan DKI Jakarta', '2022-11-08 20:50:17', '2022-11-08 20:50:17'),
(36, 'Ramen YA! Pakuwon Surabaya', 'Pakuwon Mall Surabaya Blok B1 No. 15 Babatan Wiyung, Kota Surabaya, Jawa Timur', '2022-11-08 20:50:48', '2022-11-08 20:50:48'),
(37, 'Ramen YA! Senayan City 2', 'Senayan City Mall Lt LG unit L-72 Jl. Asia Afrika Lot 19 Gelora Tanah Abang, Jakarta Pusat, DKI Jakarta', '2022-11-08 20:51:00', '2022-11-08 20:51:00'),
(38, 'Ramen YA! Summarecon Mall Bekasi', 'Summarecon Mall Bekasi Lantai Dasar Downtown Walk DW-119 Jalan Bulevar Ahmad Yani Blok M Marga Mulya, Bekasi Utara, Kota Bekasi, Jawa Barat', '2022-11-08 20:51:11', '2022-11-08 20:51:11'),
(39, 'Ramen YA! Kota Kasablanka 2 LG', 'Mall Kota Kasablanka Lt. LG , Jl. Casablanca No. 88, RT.2/RW.14, Menteng Dalam, Kec. Tebet, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12870', '2022-11-08 20:51:22', '2022-11-08 20:51:22'),
(40, 'Ramen YA! Cibinong City Mall', 'Cibinong City Mall Lt. 1 Unit C 10 Pakansari, Cibinong, Kab.Bogor, Jawa Barat', '2022-11-08 20:51:36', '2022-11-08 20:51:36'),
(41, 'Ramen YA! TSM Cibubur', 'Trans Studio Mall Cibubur third floor, Jl. Alternatif Cibubur No.30 Harjamukti, Cimanggis, Kota Depok Jawa Barat', '2022-11-08 20:51:47', '2022-11-08 20:51:47'),
(42, 'Ramen YA! Bandung Indah Plaza', 'Jl. Merdeka No.56, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', '2022-11-08 20:52:47', '2022-11-08 20:52:47'),
(43, 'Ramen Ya! Margo City', 'Jl. Margonda Raya No.358, Kemiri Muka, Kecamatan Beji, Kota Depok, Jawa Barat 16423', '2022-11-08 20:53:02', '2022-11-08 20:53:02'),
(44, 'Ramen YA! Bali Galeria', 'Jl. Bypass Ngurah Rai, Kuta, Kec. Kuta, Kabupaten Badung, Bali 80361', '2022-11-08 20:53:15', '2022-11-08 20:53:15'),
(45, 'Ramen Ya! Paragon Mall', 'L2 - 30, Mall Paragon Semarang', '2022-11-08 20:53:45', '2022-11-08 20:53:45'),
(46, 'Ramen YA! Mall Boemi Kedaton', 'Jl. Teuku Umar Jl. Sultan Agung No.1, Labuhan Ratu, Kec. Kedaton, Kota Bandar Lampung, Lampung 35132', '2022-11-08 20:53:57', '2022-11-08 20:53:57'),
(47, 'Ramen YA! Bali Level 21', 'Jl. Teuku Umar No.1, Dauh Puri Klod, Kec. Denpasar Bar., Kota Denpasar, Bali 80113', '2022-11-08 20:54:09', '2022-11-08 20:54:09'),
(48, 'Ramen Ya Mall Taman Anggrek', 'Jalan Letjen. S. Parman Kav. 28, RT.9/RW.1 Kelurahan Tanjung Duren Selatan, Kecamatan Grogol Petamburan Kota Jakarta Barat 11440', '2022-11-08 20:54:21', '2022-11-08 20:54:21'),
(49, 'Ramen Ya Polda Komdak', 'Jl. Jenderal Sudirman No.Kav. 55, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190', '2022-11-08 20:54:35', '2022-11-08 20:54:35'),
(50, 'Ramen Ya Emporium Mall', 'Jl. Pluit Selatan Raya No.1, RT.23/RW.8, Penjaringan, Kec. Penjaringan, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14440', '2022-11-08 20:54:47', '2022-11-08 20:54:47'),
(51, 'Ramen Ya! Atlas Bali', 'Gg. Kecapi No.7, Kerobokan Kelod, Kec. Kuta Utara, Kabupaten Badung, Bali 80361', '2022-11-08 20:55:00', '2022-11-08 20:55:00'),
(52, 'Ramen YA! Palembang Icon', 'Jl. POM IX, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30137', '2022-11-08 20:56:02', '2022-11-08 20:56:02'),
(53, 'Ramen YA! Solo Square', 'Slamet Riyadi St No.451-455, Pajang, Laweyan, Surakarta City, Central Java 57146', '2022-11-08 20:56:15', '2022-11-08 20:56:15'),
(54, 'Ramen Ya! Cibubur Junction', 'Jl. Jambore No.1, RW.7, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Jawa Barat 13720', '2022-11-08 20:56:26', '2022-11-08 20:56:26'),
(55, 'Ramen YA! Plaza Surabaya', 'Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur', '2022-11-08 20:56:55', '2022-11-08 20:56:55'),
(56, 'Ramen YA! Palembang Square', 'l. Angkatan 45, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30137', '2022-11-08 20:57:04', '2022-11-08 20:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `judul`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Menu 1', 'menu ini terdiri dari 4 varian dengan harga yang berbeda beda, berbagai varian dalam menu ini adalah menu BEST SELLER', 'img-menu/UDb9stTK3lpG0FJVkf5QGZIgOljrOg80KSEWooPT.jpg', '2022-11-03 10:59:19', '2022-11-03 11:00:03'),
(2, 'Menu 2', 'menu ini terdiri dari 4 varian dengan harga yang berbeda beda, berbagai varian dalam menu ini adalah menu BEST SELLER', 'img-menu/l26pmTprNtjMdhXUWrZIoF9OSW4WIQqv549Lo313.jpg', '2022-11-03 11:02:39', '2022-11-03 11:02:53'),
(3, 'Menu 3', 'menu ini terdiri dari 3 varian dengan harga yang berbeda beda, berbagai varian dalam menu ini adalah menu BEST SELLER', 'img-menu/2gPfajMtr6nN28Lzu0DFCVJ90fTos923GD99e8tL.jpg', '2022-11-03 11:03:38', '2022-11-03 11:03:38'),
(5, 'Menu 4', 'menu ini terdiri dari 3 varian dengan harga yang berbeda beda, berbagai varian dalam menu ini adalah menu BEST SELLER', 'img-menu/bB7T0NszI21RxKDtrxRhTjV2cN4aFBAWpJns3UWl.jpg', '2022-11-03 11:04:34', '2022-11-08 19:37:09'),
(6, 'Menu 5', 'menu ini terdiri dari 3 varian dengan harga yang berbeda beda, berbagai varian dalam menu ini adalah menu BEST SELLER', 'img-menu/PSUJyjCWp8rDS23boBP08swBl9P3u4F4Aqcugnfr.jpg', '2022-11-03 11:05:48', '2022-11-08 19:36:24'),
(9, 'Menu 6', 'Gyoza Dan Agemono', 'img-menu/oKELyub9df2uBlw7YJdBESIoFmq6ecv0GREWqjKF.jpg', '2022-11-08 21:03:33', '2022-11-08 21:03:50'),
(10, 'Menu 7', 'Fried Chicken Gyoza Dan Grilled Chicken Gyoza', 'img-menu/U1qhuP7iBsl5b76bnC9UsGwmsvgDl9qZxjVnAzYe.jpg', '2022-11-08 21:04:10', '2022-11-08 21:04:31'),
(11, 'Menu 8', 'Cheese Croquette dan Beef Croquette', 'img-menu/eDeBKIvHP4H48e8CT9FX1jA4Akul1jfPRSQG2Ilq.jpg', '2022-11-08 21:04:58', '2022-11-08 21:05:31'),
(12, 'Menu 9', 'Spicy Chicken Karage , Chicken Karage, Spicy Chicken Popcorn dan Chicken Popcorn', 'img-menu/2d3rRoFw67kTRiFD8A6TND0OLfbPxpcdLKcbDilT.jpg', '2022-11-08 21:05:48', '2022-11-08 21:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_23_170451_create_slider_table', 1),
(6, '2022_07_28_032112_create_history_table', 1),
(7, '2022_07_29_085403_create_menu_table', 1),
(8, '2022_08_30_025723_create_lokasi_table', 1),
(9, '2022_11_05_155332_drop_text_column_on_menu_table', 2),
(10, '2022_12_02_191520_create_visitors_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `judul`, `deskripsi`, `media`, `created_at`, `updated_at`) VALUES
(1, 'Ramen YA!', 'Salah satu ramen halal no.1 di indonesia, anda bisa mendapatkan makanan ini di Seluruh indonesia!!!', 'slider/npzLuDamKK2sw11bib66mdzQUyLx0WAzyNMu0hdr.mp4', '2022-11-03 10:49:18', '2022-11-24 02:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'adminramen@ramenya.id', NULL, '$2y$10$7.PUdfgnvM28OdCMY2iWc.8jBsR0xb5pQDc2cwPVFSYJprUQetBPi', NULL, '2022-12-02 18:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `ip`, `created_at`, `updated_at`) VALUES
(1, '2022-12-02', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-02 12:32:41', '2022-12-02 12:32:41'),
(2, '2022-12-03', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-03 08:01:41', '2022-12-03 08:01:41'),
(3, '2022-12-04', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-04 01:24:07', '2022-12-04 01:24:07'),
(4, '2022-12-05', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-04 19:29:13', '2022-12-04 19:29:13'),
(5, '2022-12-06', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-06 04:39:55', '2022-12-06 04:39:55'),
(6, '2022-12-07', '2f8748abdbb42c16f5d62251f8adea1f65443b6ed0ec063b49be332a6c8cc200892828deee3bbc44bffff040677446dfe0fe5d9dc5a2150d342dd93456b54e22', '2022-12-06 17:33:56', '2022-12-06 17:33:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
