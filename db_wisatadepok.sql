-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 07:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisatadepok`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_wisata`
--

INSERT INTO `jenis_wisata` (`id`, `nama`) VALUES
(1, 'Wisata Rekreasi'),
(2, 'Wisata Kuliner');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(1, 'Beji'),
(2, 'Pancoran Mas'),
(3, 'Limo'),
(4, 'Sawangan'),
(5, 'Cilodong');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `wisata_id` int(11) NOT NULL,
  `nilai_rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `tanggal`, `isi`, `users_id`, `wisata_id`, `nilai_rating_id`) VALUES
(1, '2022-06-12', 'kalo berenang di sini anak2 ngak mau pulang', 2, 1, 4),
(2, '2022-07-01', 'Depok kota wisata yang menyenangkan.', 4, 4, 3),
(3, '2022-07-03', 'suasananya menyejukkan hati  dan pikiran.', 6, 2, 5),
(4, '2022-07-05', 'Recomend banget nih tempat makan disini!!! :)', 3, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_rating`
--

CREATE TABLE `nilai_rating` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_rating`
--

INSERT INTO `nilai_rating` (`id`, `nama`) VALUES
(1, 'Jelek'),
(2, 'Kurang Bagus'),
(3, 'Biasa Aja'),
(4, 'Bagus'),
(5, 'Sangat Bagus');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `latlong` varchar(40) DEFAULT NULL,
  `jenis_id` int(11) NOT NULL,
  `skor_rating` double DEFAULT NULL,
  `harga_tiket` double DEFAULT NULL,
  `foto1` varchar(40) DEFAULT NULL,
  `foto2` varchar(40) DEFAULT NULL,
  `foto3` varchar(40) DEFAULT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  `fasilitas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id`, `nama`, `alamat`, `latlong`, `jenis_id`, `skor_rating`, `harga_tiket`, `foto1`, `foto2`, `foto3`, `kecamatan_id`, `website`, `fasilitas`) VALUES
(1, 'Water Park Ceria', 'Jl. K.H.M. Usman No.110, Kukusan, Kecamatan Beji, Kota Depok, Jawa Barat 16425', '-6.3650158,106.8114586', 1, 4.2, 40000, 'ceria01.jpg', 'ceria02.jpg', 'ceria03.jpg', 1, 'www.ceriadepok.com', 'tersedia 2 kolam renang, perosotan, arena futsal taman luas'),
(2, 'Masjid Dian Al-Mahri', ' Jl. Meruyung Raya, Meruyung, Kec. Limo, kota, Jawa Barat 16515', '-6.383894711556786, 106.77208802788996', 1, 5, NULL, 'kubah-emas-607e547ed541df209e7c6722.jpg', 'dsc-0045-largejpg1.jpg', 'dsc-0045-largejpg.jpg', 3, NULL, 'Masjid ini memiliki 5 kubah. Satu kubah utama dan 4 kubah kecil. Uniknya, seluruh kubah dilapisi ema'),
(3, 'Taman Wisata Pasir Putih Depok', 'Jl. Garuda Raya No.1, RT.1/RW.7, Pasir Putih, Kec. Sawangan, Kota Depok, Jawa Barat 16519', '-6.4331292242448805, 106.78728072883865', 1, 4, 30000, 'pasriputih.jpg', 'pasriputih1.jpg', 'pasriputih2.jpg', 4, 'http://www.waterparkpasirputih.com', 'Taman rekreasi air keluarga dengan kolam renang outdoor, seluncuran air, taman bermain, dan kedai ma'),
(4, 'Alun-Alun Kota Depok', 'Jl. Boulevard Grand Depok City No.25, Jatimulya, Kec. Cilodong, Kota Depok, Jawa Barat 16413', '-6.4389236441506, 106.82733682777577', 1, 5, NULL, 'suasana-waktu-itu-di-malam-hari.jpg', 'alun-alun.jpg', 'depok-alun-alun.jpg', 5, NULL, 'Alun-Alun ini dibangun dikarenakan Kota Depok belum memiliki fasilitas publik seperti kota lain di J'),
(5, 'Warung Pasta Depok', 'Jl. Margonda Raya No. 518, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424', '-6.358620552916251, 106.8334974678211', 2, 4, NULL, 'pasta.jpg', 'breakfast-meals-on-table-803897.jpg', 'warung-pasta.jpg', 1, NULL, 'Sesuai namanya, sajian yang ditawarkan di Warung Pasta tidak jauh-jauh dari makanan khas Italia. Uta'),
(6, 'Milan Pizzeria Cafe\'', 'Jl. Margonda Raya No. 514, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424', '-6.355591162215459, 106.83327596804924', 2, 5, NULL, 'pizza1.jpg', 'picture-1561001526.jpg', 'pizzarua.jpg', 1, NULL, 'Menu yang disajikan juga agak-agak mirip, seperti pasta, pizza, chicken blackpepper fettuccine, penn'),
(7, 'Soto Bu Tjondro', 'Jl. Siliwangi No. 1, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16431', '-6.394137418058373, 106.82640936752944', 2, 5, NULL, 'soto-bu-tjondro-1.jpg', 'soto-bu-tjondro.jpg', 'whatsapp-29277e8.jpg', 2, NULL, 'Resto spesialis soto ini rasanya enak, gurih, dan segar. Kisaran harganya terjangkau banget, Bunda, ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `status`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '2022-07-08 07:37:24', '2022-07-08 07:37:24', 1, 'administrator'),
(2, 'aminoh', 'a3188aa21acbfdfae972ee6015cc75ab', 'aminoh@gmail.com', '2022-07-08 12:39:02', '2022-07-08 12:39:02', 1, 'public'),
(3, 'patri', '713c1af9bedb3813e754b22b5a228201', 'fatryarja@gmail.com', '2022-07-07 21:28:20', '2022-07-07 21:28:20', 1, 'public'),
(4, 'alim', '2af5a2b1d0e2c51e553bbcea1dc983e3', 'alim@gmail.com', '2022-07-07 16:42:28', '2022-07-07 16:42:28', 1, 'public'),
(5, 'abil', '8e5a4c3ffbf085613b7dcf6f3cbd7ca6', 'abil@gmail.com', '2022-07-07 16:45:27', '2022-07-07 16:45:27', 1, 'public'),
(6, 'amer', '8db1b09d6cb44d4150b68a5310688024', 'amer@gmail.com', '2022-07-08 03:11:46', '2022-07-08 03:11:46', 1, 'public');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_users1_idx` (`users_id`),
  ADD KEY `fk_pesanan_produk1_idx` (`wisata_id`),
  ADD KEY `fk_komentar_nilai_rating1_idx` (`nilai_rating_id`);

--
-- Indexes for table `nilai_rating`
--
ALTER TABLE `nilai_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produk_jenis_produk_idx` (`jenis_id`),
  ADD KEY `fk_tempat_wisata_kelurahan1_idx` (`kecamatan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai_rating`
--
ALTER TABLE `nilai_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `fk_komentar_nilai_rating1` FOREIGN KEY (`nilai_rating_id`) REFERENCES `nilai_rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`wisata_id`) REFERENCES `tempat_wisata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD CONSTRAINT `fk_produk_jenis_produk` FOREIGN KEY (`jenis_id`) REFERENCES `jenis_wisata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tempat_wisata_kelurahan1` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
