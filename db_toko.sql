-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 02:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(6, 'BR001', 8, 'Mie goreng', 'Mie sedap', '2500', '3000', 'PCS', '198', '19 February 2024, 15:58', NULL),
(7, 'BR002', 9, 'Teh pucuk', 'Teh Pucuk Harum', '4500', '5000', 'PCS', '247', '19 February 2024, 15:59', NULL),
(8, 'BR003', 10, 'Fruit tea', 'Fruit tea ', '3500', '4000', 'PCS', '299', '19 February 2024, 15:59', NULL),
(9, 'BR004', 12, 'Floridina', 'Floridina', '4500', '5000', 'PCS', '98', '19 February 2024, 16:00', NULL),
(10, 'BR005', 13, 'Roti blueberry', 'Roti aoka', '2000', '2500', 'PCS', '3496', '19 February 2024, 16:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Mie ', '19 February 2024, 15:55'),
(9, 'Teh pucuk', '19 February 2024, 15:56'),
(10, 'Fruit tea', '19 February 2024, 15:56'),
(11, 'Mie rica rica', '19 February 2024, 15:56'),
(12, 'Floridina', '19 February 2024, 15:57'),
(13, 'Roti aoka', '19 February 2024, 15:57');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) DEFAULT NULL,
  `alamat_member` text DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `NIK` text DEFAULT NULL,
  `status` enum('1','2') NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`, `status`, `user`, `pass`) VALUES
(1, 'Fauzan Falah', 'uj harapan', '081234567890', 'example@gmail.com', '1706797598tokopedia-vector-cara-belanja-page-juarawallpaperm-8.png', '12314121', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Petugas', 'Italia', '087773336123', 'petugas@gmail.com', '1706801222default.png', '36000000000', '2', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'petugas2', 'ac5604a8b8504d4ff5b842480df02e91'),
(4, 'Zaidan Hesya n.h', 'Gang pagarsih barat 2', '088706332508', 'zaidanhesya0@gmail.com', '', '3273031109050004', '1', 'dannxz', '202cb962ac59075b964b07152d234b70'),
(6, 'Iqbal ludin', 'Mahardhika', '08342352215', 'Iqballudin12@gmail.com', '', '32343223535', '2', 'petugas1', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'Asep Pudin', 'haji mamat', '0874363409', 'asepudin2@gmail.com', '', '34214214214', '1', 'asep', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR003', 1, '2', '5000', '1 February 2024, 21:40', '02-2024'),
(2, 'BR001', 7, '2', '6000', '19 February 2024, 16:02', '02-2024'),
(3, 'BR002', 7, '3', '15000', '19 February 2024, 16:02', '02-2024'),
(4, 'BR003', 7, '1', '4000', '19 February 2024, 16:02', '02-2024'),
(5, 'BR004', 7, '2', '10000', '19 February 2024, 16:02', '02-2024'),
(6, 'BR005', 7, '4', '10000', '19 February 2024, 16:03', '02-2024');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(2, 'BR001', 7, '2', '6000', '19 February 2024, 16:02'),
(3, 'BR002', 7, '3', '15000', '19 February 2024, 16:02'),
(4, 'BR003', 7, '1', '4000', '19 February 2024, 16:02'),
(5, 'BR004', 7, '2', '10000', '19 February 2024, 16:02'),
(6, 'BR005', 7, '4', '10000', '19 February 2024, 16:03');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'CV Zaidan Berkah', 'Gang Pagarsih Barat 2', '0838212233064', 'Zaidan Hesya N.H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_barang_2` (`id_barang`);
ALTER TABLE `penjualan` ADD FULLTEXT KEY `id_barang_3` (`id_barang`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
