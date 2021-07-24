-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 08:32 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loket`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `agenda` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `file` varchar(150) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `agenda`, `file`) VALUES
(1, 'TETAP JAGA JARAK', 'agenda_1612677469.png'),
(2, 'ANTRIAN LOKET', 'agenda_1612677530.jpg'),
(3, 'GEDUNG KAMI', 'agenda_1612677381.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(2) NOT NULL,
  `instansi` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `instansi`, `telp`, `alamat`, `logo`) VALUES
(1, 'APLIKASI ANTRIAN LOKET', '021-59402654', 'Jl. Sukahati Susah Senang Kita Berdua', 'logo_1612681874.png');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `username` varchar(40) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `id_loket` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`username`, `nama`, `telp`, `alamat`, `password`, `level`, `id_loket`) VALUES
('admin', 'admin', '087767766799', 'Masukan Alamat Akang Admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Admin', NULL),
('karyawan1', 'Karyawan 1', '087767766789', 'Alamat Karyawan 1', 'bdac5459181572facd5d2de9279000d77114d247', 'Penjaga', 6),
('karyawan2', 'Karyawan 2', '087767766783', 'Alamat Karyawan 2', 'fcbcd867f9cda189e6640a1ea8fbf3f767f8fd30', 'Penjaga', 7),
('karyawan3', 'Karyawan 3', '087767766780', 'Alamat Karyawan 3', 'fb1cca5e09cc997808092e6eded8dc7d7f19b3f0', 'Penjaga', 8),
('karyawan4', 'Karyawan 4', '087767766799', 'Alamat Karyawan 1', '275d332ce047701a2a77b2438794b03809dabb1a', 'Penjaga', 9),
('karyawan5', 'Karyawan 5', '087767766799', 'Alamat Karyawan 5', '1812a6dc9479a61b76e49d13c43952f8fec009af', 'Penjaga', 15);

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id_loket` int(3) NOT NULL,
  `loket` varchar(40) DEFAULT NULL,
  `suara` varchar(150) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id_loket`, `loket`, `suara`, `status`) VALUES
(6, '1', NULL, 0),
(7, '2', NULL, 1),
(8, '3', NULL, 0),
(9, '4', NULL, 0),
(15, 'Loket 5', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `text_jalan`
--

CREATE TABLE `text_jalan` (
  `id_text` int(11) NOT NULL,
  `text` varchar(150) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text_jalan`
--

INSERT INTO `text_jalan` (`id_text`, `text`, `img`) VALUES
(1, 'Sampaikan Keluhan Anda Kepada Kami', 'text_1612677037.png'),
(2, 'Pastikan No Antrian Anda Tidak Hilang', 'text_1612677013.png'),
(3, 'Datanglah Lebih Awal Agar Tidak Kehabisan No Antrian', 'text_1612676979.png'),
(4, 'Kami Siap Melayani Dengan Sepenuh Hati', 'text_1612676955.png'),
(5, 'Ambilah Antrian Secara Bijak', 'text_1612677048.jpg'),
(6, 'Text Berjalan', 'text_1612682909.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_antrian` int(11) DEFAULT NULL,
  `id_loket` int(3) NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `tgl` int(8) UNSIGNED ZEROFILL DEFAULT '00000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_antrian`, `id_loket`, `username`, `tgl`) VALUES
(19, 1, 8, 'loket3', 12112017),
(20, 2, 6, 'loket1', 12112017),
(21, 3, 6, 'loket1', 12112017),
(22, 4, 0, NULL, 12112017),
(23, 5, 0, NULL, 12112017),
(24, 6, 0, NULL, 12112017),
(25, 1, 0, NULL, 14112017),
(26, 2, 0, NULL, 14112017),
(27, 1, 6, 'loket1', 16112017),
(28, 2, 6, 'loket1', 16112017),
(29, 3, 7, 'loket2', 16112017),
(30, 1, 6, 'loket1', 17112017),
(31, 2, 7, 'loket2', 17112017),
(32, 3, 8, 'loket3', 17112017),
(33, 4, 9, 'loket4', 17112017),
(34, 5, 0, NULL, 17112017),
(35, 6, 0, NULL, 17112017),
(36, 7, 0, NULL, 17112017),
(37, 8, 0, NULL, 17112017),
(38, 9, 0, NULL, 17112017),
(39, 10, 0, NULL, 17112017),
(40, 11, 0, NULL, 17112017),
(41, 12, 0, NULL, 17112017),
(42, 13, 0, NULL, 17112017),
(43, 14, 0, NULL, 17112017),
(44, 15, 0, NULL, 17112017),
(45, 16, 0, NULL, 17112017),
(46, 17, 0, NULL, 17112017),
(47, 18, 0, NULL, 17112017),
(48, 19, 0, NULL, 17112017),
(49, 20, 0, NULL, 17112017),
(50, 21, 0, NULL, 17112017),
(51, 22, 0, NULL, 17112017),
(52, 23, 0, NULL, 17112017),
(53, 24, 0, NULL, 17112017),
(54, 25, 0, NULL, 17112017),
(55, 26, 0, NULL, 17112017),
(56, 27, 0, NULL, 17112017),
(57, 28, 0, NULL, 17112017),
(58, 29, 0, NULL, 17112017),
(59, 1, 6, 'loket1', 10012020),
(60, 2, 0, NULL, 10012020),
(61, 1, 7, 'loket2', 07022021),
(62, 2, 7, 'loket2', 07022021),
(63, 3, 6, 'loket1', 07022021),
(64, 4, 8, 'loket3', 07022021),
(65, 5, 9, 'loket4', 07022021),
(66, 6, 6, 'karyawan1', 07022021),
(67, 7, 6, 'karyawan1', 07022021),
(68, 8, 6, 'karyawan1', 07022021),
(69, 9, 15, 'karyawan5', 07022021),
(70, 10, 0, NULL, 07022021),
(71, 11, 0, NULL, 07022021),
(72, 12, 0, NULL, 07022021),
(73, 13, 0, NULL, 07022021),
(74, 14, 0, NULL, 07022021),
(75, 15, 0, NULL, 07022021),
(76, 16, 0, NULL, 07022021),
(77, 17, 0, NULL, 07022021),
(78, 18, 0, NULL, 07022021),
(79, 19, 0, NULL, 07022021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id_loket`);

--
-- Indexes for table `text_jalan`
--
ALTER TABLE `text_jalan`
  ADD PRIMARY KEY (`id_text`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id_loket` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `text_jalan`
--
ALTER TABLE `text_jalan`
  MODIFY `id_text` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
