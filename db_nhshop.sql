-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 09:11 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_nhshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
  `nik` char(16) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `desa` varchar(32) NOT NULL,
  `kecamatan` varchar(32) NOT NULL,
  `kabupaten` varchar(32) NOT NULL,
  `pekerjaan` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`nik`, `nama`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `pekerjaan`, `username`, `password`) VALUES
('1111111111111111', 'Coba', 'asd', 'das', 'sda', 'sd', 'mahasiswa', 'pelanggan', '202cb962ac59075b964b07152d234b70'),
('1234567890', 'inna', 'Lawo', 'Ompo', 'Lalabata', 'Soppeng', 'mahasiswa', 'inna12', 'd41d8cd98f00b204e9800998ecf8427e'),
('22234455677', 'Nur isna vidari', 'Lawo', 'Ompo', 'Lalabata', 'Soppeng', 'mahasiswa', 'innavidari', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `kd_produk` varchar(10) NOT NULL,
  `nm_produk` varchar(32) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`kd_produk`, `nm_produk`, `harga`, `gambar`) VALUES
('KD001', 'Azelia', 90000, 'KD001.jpg'),
('KD002', 'Alda Kids', 90000, 'KD002.jpg'),
('KD003', 'Gresia Tunik', 85000, 'KD003.jpg'),
('KD004', 'Hilma Tunik', 90000, 'KD004.jpg'),
('KD005', 'Hoodie', 120000, 'KD005.jpg'),
('KD006', 'July Cardigan', 150000, 'KD006.jpg'),
('KD007', 'Kimi', 90000, 'KD007.jpg'),
('KD008', 'Lidya Tunic', 100000, 'KD008.jpg'),
('KD009', 'Knit', 70000, 'KD009.jpg'),
('KD010', 'Lilla wollycrepe brokat', 150000, 'KD010.jpg'),
('KD011', 'Lupy 3204', 12000, 'KD011.jpg'),
('KD012', 'Plain Sweeter', 130000, 'KD012.jpg'),
('KD013', 'Sanfransisco', 90000, 'KD013.jpg'),
('KD014', 'Tequila', 90000, 'KD014.jpg'),
('KD015', 'Zarakimono', 250000, 'KD015.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` varchar(32) NOT NULL,
  `kd_produk` varchar(10) NOT NULL,
  `nik` char(16) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jml_beli` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `kd_produk`, `nik`, `tgl_transaksi`, `jml_beli`, `status`) VALUES
('25122019-012041', 'KD002', '1111111111111111', '2019-12-25', 1, 'diterima'),
('25122019-013940', 'KD010', '1111111111111111', '2019-12-25', 3, 'ditolak'),
('26122019-090214', 'KD013', '22234455677', '2019-12-26', 1, 'diterima');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
