-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 04:52 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `kd_anggota` char(10) NOT NULL,
  `nm_anggota` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tlpn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`kd_anggota`, `nm_anggota`, `alamat`, `tlpn`) VALUES
('B01', 'Aizar', 'Blitar', '082335162718'),
('B02', 'Neilsya', 'Malang', '089101827912');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kd_buku` char(10) NOT NULL,
  `nm_buku` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`kd_buku`, `nm_buku`, `pengarang`, `penerbit`, `stok`) VALUES
('A01', 'Pemrograman Node JS', 'Tralala', 'Coconut', 10),
('A02', 'Jaringan Komputer', 'Sala', 'My Pustaka', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `kd_petugas` char(10) NOT NULL,
  `nm_petugas` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tlpn_petugas` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`kd_petugas`, `nm_petugas`, `jabatan`, `tlpn_petugas`, `email`, `password`) VALUES
('C01', 'Fadilla', 'administrasi', '082335162065', 'fafa@gmail.com', '$2a$10$uHtd5BUGhF4OmHbXHWuIY.eeufKpGvJ1T7GedL4.SYyNyQ.IrWQxu'),
('C02', 'Lala', 'petugas', '089101827910', 'lala@gmail.com', '$2a$10$eO1lxZYdi8al1sUbonG0ceelcPJOu2m9WlF.TsrvYSHW0Jfh78QW.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `no_pinjam` char(10) NOT NULL,
  `kd_anggota` char(10) NOT NULL,
  `kd_petugas` char(10) NOT NULL,
  `kd_buku` char(10) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_balik` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`no_pinjam`, `kd_anggota`, `kd_petugas`, `kd_buku`, `tgl_pinjam`, `tgl_balik`) VALUES
('PO1', 'B02', 'C02', 'A02', '2022-02-14 09:02:22.641', '2022-02-19 09:02:22.000'),
('PO2', 'B01', 'C02', 'A02', '2022-02-14 09:03:19.741', '2022-02-19 09:03:19.000'),
('PO5', 'B01', 'C02', 'A02', '2022-02-15 11:06:47.956', '2022-05-26 11:06:47.000'),
('PO6', 'B01', 'C02', 'A02', '2022-02-15 11:07:21.001', '2026-03-26 11:07:21.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`kd_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`no_pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
