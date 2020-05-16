-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 05:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pangkat` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `tawal` date NOT NULL,
  `takhir` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`nip`, `nama`, `pangkat`, `jabatan`, `tawal`, `takhir`, `keterangan`) VALUES
('P-002', 'Ribka Julyasih Sidabutar', 'Tetap', 'Sekretaris', '2020-05-01', '2020-05-07', 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('anastasia', 'puput123'),
('ribka', 'ribka123');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `pangkat` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `ttl`, `pangkat`, `jabatan`, `jk`, `agama`, `status`, `email`, `alamat`, `telpon`) VALUES
('P-001', 'Anastasia Puteri Dewi', 'Semarang, 10 November 2000', 'Tetap', 'Direktur', 'Perempuan', 'Kristen', 'Belum Menikah', 'anastasia123@gmail.com', 'Jalan Ketileng Indah Blok O-61 Rt.12 Rw.13', '081542528229');

-- --------------------------------------------------------

--
-- Table structure for table `pensiun`
--

CREATE TABLE `pensiun` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `pangkat` varchar(10) NOT NULL,
  `pensiun` varchar(20) NOT NULL,
  `masakerja` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pensiun`
--

INSERT INTO `pensiun` (`nip`, `nama`, `ttl`, `pangkat`, `pensiun`, `masakerja`) VALUES
('P-003', 'Risno Putri Nainggolan', 'Medan, 18 Januari 1999', 'Tetap', 'Hasil Kerja', '1 tahun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pensiun`
--
ALTER TABLE `pensiun`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
