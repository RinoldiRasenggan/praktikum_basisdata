-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 03:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_basisdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `nama_bagian` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bagian_karyawan`
--

CREATE TABLE `bagian_karyawan` (
  `id` int(11) NOT NULL,
  `bagian` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `tanggal_mulai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_karyawab`
--

CREATE TABLE `gaji_karyawab` (
  `id` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `gapok` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `uang_makan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(254) NOT NULL,
  `gapok_jabatan` double NOT NULL,
  `tunjangan_jabatan` double NOT NULL,
  `uang_makan_perhari` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_karyawan`
--

CREATE TABLE `jabatan_karyawan` (
  `id` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik` varchar(254) NOT NULL,
  `nama_lengkap` varchar(254) NOT NULL,
  `handphone` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pengguna_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `peran` enum('ADMIN','USER','','') NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `karyawan` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `jam_masuk` int(11) NOT NULL,
  `jam_keluar` int(11) NOT NULL,
  `keterangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
