-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 02:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `fiksi`
--

CREATE TABLE `fiksi` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `halaman_buku` char(20) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiksi`
--

INSERT INTO `fiksi` (`id`, `judul`, `halaman_buku`, `deskripsi`, `category`, `gambar`) VALUES
(14, 'Kembalinya sherlock holmes', '245', 'Sherlock Holmes dan rekannya Dr Watson telah berhasil memenjarakan Lord Blackwood, seorang pembunuh berantai ditakuti yang kemudian dieksekusi. Namun, Blackwood tampaknya telah kembali dari kematian.', 'fiksi', '654c57a653700.png'),
(15, 'Laskar pelangi', '167', ' menceritakan tentang perjuangan Bu Muslimah dan Pak Harfan, dua orang guru yang memiliki dedikasi tinggi dalam dunia pendidikan, dimana dengan usaha dan kesungguhannya mereka berdua berhasil memajukan pendidikan di desa Gantong satu desa terpencil di pilau Balitong.', 'fiksi', '654c5837970d6.png'),
(16, 'laut bercerita', '325', 'sdsgnnd', 'fiksi', '654c587204d70.png'),
(17, 'simulasi digital', '', 'Lorem ipsum dolor sit amet. Qui porro voluptatem rem itaque consequatur eos enim repellendus ab voluptates omnis. Aut velit dolore eos doloribus illo non quos enim et aspernatur ipsum ea dolorem cumque. Est quisquam corporis ex cupiditate dolore aut earum voluptatem qui quia distinctio ut ipsa odio.', 'pelajara', '654c58d365e4e.png'),
(21, 'gogren', '157', 'Lorem ipsum dolor sit amet. Qui porro voluptatem rem itaque consequatur eos enim repellendus ab voluptates omnis. Aut velit dolore eos doloribus illo non quos enim et aspernatur ipsum ea dolorem cumque. Est quisquam corporis ex cupiditate dolore aut earum voluptatem qui quia distinctio ut ipsa odio.', 'pelajaran', '6552d7f603353.png');

-- --------------------------------------------------------

--
-- Table structure for table `geografi`
--

CREATE TABLE `geografi` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `halaman_buku` char(20) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `halaman_buku` char(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `judul`, `halaman_buku`, `deskripsi`, `category`, `gambar`) VALUES
(2, 'geografi', '157', 'Lorem ipsum dolor sit amet. Qui porro voluptatem rem itaque consequatur eos enim repellendus ab voluptates omnis. Aut velit dolore eos doloribus illo non quos enim et aspernatur ipsum ea dolorem cumque. Est quisquam corporis ex cupiditate dolore aut earum', 'pelajaran', '6552ddd1d8e04.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `password`, `user_type`) VALUES
(1, 'siswa', '202cb962ac59075b964b07152d234b70', 'user'),
(2, 'admin', '202cb962ac59075b964b07152d234b70', 'admin'),
(3, 'guru', '202cb962ac59075b964b07152d234b70', 'guru'),
(4, 'calvin', '202cb962ac59075b964b07152d234b70', 'user'),
(5, 'konz', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fiksi`
--
ALTER TABLE `fiksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geografi`
--
ALTER TABLE `geografi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fiksi`
--
ALTER TABLE `fiksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `geografi`
--
ALTER TABLE `geografi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
