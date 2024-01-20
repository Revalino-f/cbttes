-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 02:52 PM
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
-- Database: `ocbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_harian`
--

CREATE TABLE `absen_harian` (
  `id_user` int(11) NOT NULL,
  `level` varchar(5) NOT NULL,
  `hadir` date NOT NULL,
  `waktu` time NOT NULL,
  `tahun` int(4) NOT NULL,
  `bulan` int(2) NOT NULL,
  `hari` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen_harian`
--

INSERT INTO `absen_harian` (`id_user`, `level`, `hadir`, `waktu`, `tahun`, `bulan`, `hari`) VALUES
(46, 'siswa', '2024-01-16', '12:18:26', 2024, 1, 16),
(321, 'guru', '2024-01-16', '12:31:48', 2024, 1, 16),
(46, 'siswa', '2024-01-17', '15:39:10', 2024, 1, 17),
(45, 'siswa', '2024-01-19', '07:43:10', 2024, 1, 19),
(56, 'siswa', '2024-01-19', '08:07:50', 2024, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `agamaku` varchar(25) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`agamaku`) VALUES
('Islam'),
('Kristen Katolik'),
('Kristen Protestan'),
('Hindu'),
('Budha'),
('Konghucu'),
('Islam'),
('Kristen Katolik'),
('Kristen Protestan'),
('Hindu'),
('Budha'),
('Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pendukung`
--

CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_siswa`, `id_mapel`, `id_soal`, `id_ujian`, `jawaban`, `jawabx`, `jenis`, `esai`, `nilai_esai`, `ragu`) VALUES
(1, 41, 1, 1, 1, 'A', 'C', 1, NULL, 0, 0),
(2, 41, 1, 2, 1, 'B', 'B', 1, NULL, 0, 0),
(3, 41, 1, 3, 1, 'A', 'A', 1, NULL, 0, 0),
(4, 41, 1, 4, 1, 'C', 'C', 1, NULL, 0, 0),
(5, 41, 1, 5, 1, 'B', 'A', 1, NULL, 0, 0),
(6, 41, 1, 6, 1, 'A', 'C', 1, NULL, 0, 0),
(7, 41, 1, 7, 1, 'A', 'A', 1, NULL, 0, 0),
(8, 41, 1, 8, 1, 'C', 'B', 1, NULL, 0, 0),
(9, 41, 1, 9, 1, 'A', 'C', 1, NULL, 0, 0),
(10, 41, 1, 10, 1, 'B', 'A', 1, NULL, 0, 0),
(11, 41, 2, 20, 4, 'B', 'A', 1, NULL, 0, 0),
(12, 41, 2, 19, 4, 'A', 'A', 1, NULL, 0, 0),
(13, 41, 2, 18, 4, 'C', 'B', 1, NULL, 0, 0),
(14, 41, 2, 17, 4, 'A', 'C', 1, NULL, 0, 0),
(15, 41, 2, 16, 4, 'A', 'B', 1, NULL, 0, 0),
(16, 41, 2, 15, 4, 'C', 'A', 1, NULL, 0, 0),
(17, 41, 2, 14, 4, 'C', 'C', 1, NULL, 0, 0),
(18, 41, 2, 13, 4, 'A', 'A', 1, NULL, 0, 0),
(19, 41, 2, 12, 4, 'B', 'B', 1, NULL, 0, 0),
(20, 41, 2, 11, 4, 'A', 'A', 1, NULL, 0, 0),
(59, 41, 3, 21, 1, 'A', 'C', 1, NULL, 0, 0),
(62, 41, 3, 22, 1, 'B', 'C', 1, NULL, 0, 0),
(63, 41, 3, 23, 1, 'A', 'C', 1, NULL, 0, 0),
(64, 41, 3, 24, 1, 'C', 'A', 1, NULL, 0, 0),
(65, 41, 3, 25, 1, 'B', 'C', 1, NULL, 0, 0),
(66, 41, 3, 26, 1, 'A', 'A', 1, NULL, 0, 0),
(67, 41, 3, 27, 1, 'A', 'A', 1, NULL, 0, 0),
(68, 41, 3, 28, 1, 'C', 'A', 1, NULL, 0, 0),
(69, 41, 3, 29, 1, 'A', 'B', 1, NULL, 0, 0),
(70, 41, 3, 30, 1, 'B', 'A', 1, NULL, 0, 0),
(71, 42, 3, 21, 1, 'A', 'B', 1, NULL, 0, 0),
(72, 42, 3, 22, 1, 'B', 'C', 1, NULL, 0, 0),
(73, 42, 3, 23, 1, 'A', 'A', 1, NULL, 0, 0),
(74, 42, 3, 24, 1, 'C', 'C', 1, NULL, 0, 0),
(75, 42, 3, 25, 1, 'B', 'C', 1, NULL, 0, 0),
(76, 42, 3, 26, 1, 'A', 'C', 1, NULL, 0, 0),
(77, 42, 3, 27, 1, 'A', 'C', 1, NULL, 0, 0),
(78, 42, 3, 28, 1, 'C', 'A', 1, NULL, 0, 0),
(79, 42, 3, 29, 1, 'A', 'A', 1, NULL, 0, 0),
(80, 42, 3, 30, 1, 'B', 'A', 1, NULL, 0, 0),
(81, 46, 5, 52, 2, 'A', 'A', 1, NULL, 0, 0),
(82, 46, 5, 53, 2, 'B', 'A', 1, NULL, 0, 0),
(83, 46, 5, 54, 2, 'A', 'B', 1, NULL, 0, 0),
(84, 46, 5, 55, 2, 'C', 'A', 1, NULL, 0, 0),
(85, 46, 5, 56, 2, 'B', 'B', 1, NULL, 0, 0),
(86, 46, 5, 57, 2, 'A', 'B', 1, NULL, 0, 0),
(87, 46, 5, 58, 2, 'C', 'B', 1, NULL, 0, 0),
(88, 46, 5, 59, 2, 'C', 'C', 1, NULL, 0, 0),
(89, 46, 5, 60, 2, 'A', 'A', 1, NULL, 0, 0),
(90, 46, 5, 61, 2, 'B', 'B', 1, NULL, 0, 0),
(91, 43, 5, 58, 2, 'C', 'C', 1, NULL, 0, 0),
(92, 43, 5, 53, 2, 'B', 'C', 1, NULL, 0, 0),
(93, 43, 5, 59, 2, 'C', 'B', 1, NULL, 0, 0),
(94, 43, 5, 60, 2, 'A', 'B', 1, NULL, 0, 0),
(95, 43, 5, 52, 2, 'A', 'A', 1, NULL, 0, 0),
(96, 43, 5, 54, 2, 'A', 'C', 1, NULL, 0, 0),
(97, 43, 5, 57, 2, 'A', 'B', 1, NULL, 0, 0),
(98, 43, 5, 61, 2, 'B', 'B', 1, NULL, 0, 0),
(99, 43, 5, 55, 2, 'C', 'A', 1, NULL, 0, 0),
(100, 43, 5, 56, 2, 'B', 'C', 1, NULL, 0, 0),
(146, 54, 6, 62, 3, 'A', 'A', 1, NULL, 0, 0),
(147, 54, 6, 63, 3, 'A', 'A', 1, NULL, 0, 0),
(148, 48, 6, 63, 3, 'C', 'B', 1, NULL, 0, 0),
(149, 48, 6, 62, 3, 'A', 'A', 1, NULL, 0, 0),
(170, 58, 6, 62, 5, 'A', 'B', 1, NULL, 0, 0),
(171, 58, 6, 63, 5, 'C', 'A', 1, NULL, 0, 0),
(172, 43, 6, 63, 5, 'C', 'A', 1, NULL, 0, 0),
(173, 43, 6, 62, 5, 'A', 'B', 1, NULL, 0, 0),
(174, 47, 6, 63, 5, 'B', 'A', 1, NULL, 0, 0),
(175, 47, 6, 62, 5, 'B', 'B', 1, NULL, 0, 0),
(176, 55, 6, 63, 5, 'A', 'B', 1, NULL, 0, 0),
(177, 55, 6, 62, 5, 'A', 'B', 1, NULL, 0, 0),
(180, 45, 6, 63, 5, 'A', 'A', 1, NULL, 0, 0),
(181, 45, 6, 62, 5, 'C', 'A', 1, NULL, 0, 0),
(182, 46, 6, 63, 5, 'A', 'A', 1, NULL, 0, 0),
(183, 46, 6, 62, 5, 'B', 'A', 1, NULL, 0, 0),
(184, 49, 6, 62, 5, 'B', 'A', 1, NULL, 0, 0),
(185, 49, 6, 63, 5, 'B', 'A', 1, NULL, 0, 0),
(186, 56, 6, 63, 5, 'B', 'C', 1, NULL, 0, 0),
(187, 56, 6, 62, 5, 'A', 'A', 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`, `status`) VALUES
('OlimpiadeEvalora', 'Olimpiade Evalora', 'tidak'),
('PTS', 'Penilaian Tengah Semester', 'aktif'),
('USBK', 'Ujian Sekolah', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `level`, `nama`, `rombongan_belajar_id`, `semester_id`) VALUES
('3', 'Umum', 'Olimpiade', NULL, NULL),
('7', 'VII', '7', NULL, NULL),
('8', 'VIII', '8', NULL, NULL),
('9', 'IX', '9', NULL, NULL),
('XIITKJ', 'XII', 'XIITKJ', NULL, NULL),
('XIITKR', 'XII', 'XIITKR', NULL, NULL),
('XIITP', 'XII', 'XIITP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`kode_level`, `keterangan`, `rombongan_belajar_id`) VALUES
('IX', 'IX', NULL),
('Umum', 'Umum', NULL),
('VII', 'VII', NULL),
('VIII', 'VIII', NULL),
('XII', 'XII', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_siswa`, `type`, `text`, `date`) VALUES
(1, 41, 'logout', 'keluar', '2023-09-24 17:44:42'),
(2, 41, 'testongoing', 'sedang ujian', '2023-09-24 18:00:22'),
(3, 41, 'login', 'Selesai Ujian', '2023-09-24 18:01:07'),
(4, 41, 'logout', 'keluar', '2023-09-24 19:49:00'),
(5, 41, 'logout', 'keluar', '2023-09-24 19:52:40'),
(6, 41, 'testongoing', 'sedang ujian', '2023-09-24 20:04:04'),
(7, 41, 'login', 'Selesai Ujian', '2023-09-24 20:06:07'),
(8, 41, 'logout', 'keluar', '2023-09-25 09:24:46'),
(9, 41, 'logout', 'keluar', '2023-09-25 09:29:28'),
(10, 41, 'logout', 'keluar', '2023-09-25 09:30:24'),
(11, 41, 'logout', 'keluar', '2023-09-25 09:31:58'),
(12, 41, 'logout', 'keluar', '2023-09-25 09:36:23'),
(13, 41, 'logout', 'keluar', '2023-09-25 09:37:18'),
(14, 41, 'logout', 'keluar', '2023-09-25 09:39:02'),
(15, 41, 'logout', 'keluar', '2023-09-25 09:39:20'),
(16, 41, 'logout', 'keluar', '2023-09-25 12:13:35'),
(17, 41, 'logout', 'keluar', '2023-09-25 12:21:19'),
(18, 41, 'logout', 'keluar', '2023-09-25 12:22:07'),
(19, 42, 'testongoing', 'sedang ujian', '2023-09-25 12:43:54'),
(20, 41, 'testongoing', 'sedang ujian', '2023-09-25 12:44:04'),
(21, 42, 'login', 'Selesai Ujian', '2023-09-25 12:44:49'),
(22, 42, 'testongoing', 'sedang ujian', '2023-09-25 12:45:24'),
(23, 42, 'login', 'Selesai Ujian', '2023-09-25 12:46:02'),
(24, 41, 'login', 'Selesai Ujian', '2023-09-25 12:46:38'),
(25, 42, 'testongoing', 'sedang ujian', '2023-09-25 12:47:22'),
(26, 41, 'testongoing', 'sedang ujian', '2023-09-25 12:47:45'),
(27, 42, 'login', 'Selesai Ujian', '2023-09-25 12:48:00'),
(28, 41, 'login', 'Selesai Ujian', '2023-09-25 12:48:46'),
(29, 42, 'testongoing', 'sedang ujian', '2023-09-25 12:48:59'),
(30, 42, 'login', 'Selesai Ujian', '2023-09-25 12:50:02'),
(31, 42, 'logout', 'keluar', '2023-10-02 14:12:26'),
(32, 1, 'logout', 'keluar', '2023-10-02 14:13:16'),
(33, 1, 'logout', 'keluar', '2023-10-02 14:34:52'),
(34, 40, 'logout', 'keluar', '2023-10-02 14:35:44'),
(35, 42, 'logout', 'keluar', '2023-10-02 14:39:48'),
(36, 46, 'logout', 'keluar', '2023-10-02 16:02:02'),
(37, 46, 'logout', 'keluar', '2023-10-02 16:02:39'),
(38, 46, 'testongoing', 'sedang ujian', '2023-10-06 10:53:12'),
(39, 46, 'login', 'Selesai Ujian', '2023-10-06 10:54:08'),
(40, 46, 'logout', 'keluar', '2023-10-06 10:54:15'),
(41, 43, 'testongoing', 'sedang ujian', '2023-10-06 10:55:45'),
(42, 43, 'login', 'Selesai Ujian', '2023-10-06 10:57:07'),
(43, 43, 'logout', 'keluar', '2023-10-06 10:57:10'),
(44, 46, 'logout', 'keluar', '2023-10-11 14:57:48'),
(45, 46, 'logout', 'keluar', '2023-10-11 14:59:00'),
(46, 46, 'logout', 'keluar', '2024-01-12 13:03:40'),
(47, 46, 'logout', 'keluar', '2024-01-16 10:01:06'),
(48, 46, 'logout', 'keluar', '2024-01-16 10:10:21'),
(49, 46, 'logout', 'keluar', '2024-01-16 12:13:41'),
(50, 46, 'logout', 'keluar', '2024-01-16 12:18:51'),
(51, 46, 'logout', 'keluar', '2024-01-16 12:25:28'),
(52, 46, 'logout', 'keluar', '2024-01-17 15:39:50'),
(53, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:40:21'),
(54, 46, 'logout', 'keluar', '2024-01-17 15:41:59'),
(55, 46, 'login', 'Selesai Ujian', '2024-01-17 15:42:22'),
(56, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:43:03'),
(57, 46, 'logout', 'keluar', '2024-01-17 15:45:22'),
(58, 46, 'login', 'Selesai Ujian', '2024-01-17 15:46:22'),
(59, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:46:33'),
(60, 46, 'login', 'Selesai Ujian', '2024-01-17 15:51:24'),
(61, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:51:45'),
(62, 46, 'login', 'Selesai Ujian', '2024-01-17 15:52:55'),
(63, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:53:43'),
(64, 46, 'login', 'Selesai Ujian', '2024-01-17 15:54:50'),
(65, 46, 'testongoing', 'sedang ujian', '2024-01-17 15:56:52'),
(66, 46, 'login', 'Selesai Ujian', '2024-01-17 15:59:30'),
(67, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:00:01'),
(68, 46, 'logout', 'keluar', '2024-01-17 16:05:31'),
(69, 46, 'logout', 'keluar', '2024-01-17 16:05:52'),
(70, 46, 'login', 'Selesai Ujian', '2024-01-17 16:06:24'),
(71, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:06:38'),
(72, 46, 'logout', 'keluar', '2024-01-17 16:09:23'),
(73, 43, 'testongoing', 'sedang ujian', '2024-01-17 16:09:35'),
(74, 43, 'logout', 'keluar', '2024-01-17 16:10:15'),
(75, 46, 'logout', 'keluar', '2024-01-17 16:11:19'),
(76, 43, 'login', 'Selesai Ujian', '2024-01-17 16:11:36'),
(77, 46, 'login', 'Selesai Ujian', '2024-01-17 16:11:40'),
(78, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:12:03'),
(79, 46, 'login', 'Selesai Ujian', '2024-01-17 16:13:37'),
(80, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:13:55'),
(81, 46, 'logout', 'keluar', '2024-01-17 16:14:13'),
(82, 46, 'login', 'Selesai Ujian', '2024-01-17 16:14:20'),
(83, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:15:18'),
(84, 46, 'login', 'Selesai Ujian', '2024-01-17 16:15:42'),
(85, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:16:46'),
(86, 46, 'login', 'Selesai Ujian', '2024-01-17 16:17:16'),
(87, 46, 'logout', 'keluar', '2024-01-17 16:17:20'),
(88, 43, 'testongoing', 'sedang ujian', '2024-01-17 16:17:42'),
(89, 43, 'login', 'Selesai Ujian', '2024-01-17 16:18:14'),
(90, 43, 'logout', 'keluar', '2024-01-17 16:18:17'),
(91, 44, 'testongoing', 'sedang ujian', '2024-01-17 16:19:24'),
(92, 44, 'login', 'Selesai Ujian', '2024-01-17 16:19:42'),
(93, 44, 'logout', 'keluar', '2024-01-17 16:19:49'),
(94, 46, 'testongoing', 'sedang ujian', '2024-01-17 16:20:01'),
(95, 46, 'login', 'Selesai Ujian', '2024-01-17 16:21:59'),
(96, 46, 'logout', 'keluar', '2024-01-17 16:22:01'),
(97, 45, 'testongoing', 'sedang ujian', '2024-01-17 16:22:19'),
(98, 45, 'login', 'Selesai Ujian', '2024-01-17 16:23:54'),
(99, 45, 'logout', 'keluar', '2024-01-17 16:25:03'),
(100, 48, 'testongoing', 'sedang ujian', '2024-01-17 16:25:14'),
(101, 48, 'login', 'Selesai Ujian', '2024-01-17 16:26:29'),
(102, 48, 'testongoing', 'sedang ujian', '2024-01-17 16:32:47'),
(103, 48, 'login', 'Selesai Ujian', '2024-01-17 16:35:40'),
(104, 48, 'logout', 'keluar', '2024-01-17 16:35:43'),
(105, 47, 'testongoing', 'sedang ujian', '2024-01-17 16:35:58'),
(106, 49, 'testongoing', 'sedang ujian', '2024-01-17 16:42:41'),
(107, 49, 'logout', 'keluar', '2024-01-17 16:45:53'),
(108, 51, 'testongoing', 'sedang ujian', '2024-01-17 16:46:09'),
(109, 51, 'logout', 'keluar', '2024-01-17 16:49:06'),
(110, 48, 'logout', 'keluar', '2024-01-17 16:49:12'),
(111, 51, 'logout', 'keluar', '2024-01-17 16:49:24'),
(112, 52, 'testongoing', 'sedang ujian', '2024-01-17 16:49:42'),
(113, 53, 'testongoing', 'sedang ujian', '2024-01-17 17:05:40'),
(114, 54, 'testongoing', 'sedang ujian', '2024-01-17 17:16:12'),
(115, 54, 'login', 'Selesai Ujian', '2024-01-17 17:19:16'),
(116, 53, 'login', 'Selesai Ujian', '2024-01-17 17:19:55'),
(117, 52, 'login', 'Selesai Ujian', '2024-01-17 17:19:57'),
(118, 51, 'login', 'Selesai Ujian', '2024-01-17 17:19:58'),
(119, 49, 'login', 'Selesai Ujian', '2024-01-17 17:20:00'),
(120, 47, 'login', 'Selesai Ujian', '2024-01-17 17:20:01'),
(121, 54, 'testongoing', 'sedang ujian', '2024-01-17 17:20:34'),
(122, 54, 'login', 'Selesai Ujian', '2024-01-17 17:34:38'),
(123, 54, 'logout', 'keluar', '2024-01-17 17:34:42'),
(124, 48, 'testongoing', 'sedang ujian', '2024-01-17 17:34:55'),
(125, 48, 'logout', 'keluar', '2024-01-17 18:24:04'),
(126, 55, 'testongoing', 'sedang ujian', '2024-01-17 18:24:15'),
(127, 55, 'login', 'Selesai Ujian', '2024-01-17 18:43:40'),
(128, 55, 'logout', 'keluar', '2024-01-17 18:45:01'),
(129, 45, 'testongoing', 'sedang ujian', '2024-01-17 18:45:14'),
(130, 45, 'login', 'Selesai Ujian', '2024-01-17 19:05:15'),
(131, 45, 'logout', 'keluar', '2024-01-17 19:05:20'),
(132, 59, 'testongoing', 'sedang ujian', '2024-01-17 19:05:38'),
(133, 59, 'login', 'Selesai Ujian', '2024-01-17 19:16:07'),
(134, 59, 'logout', 'keluar', '2024-01-17 19:17:04'),
(135, 48, 'logout', 'keluar', '2024-01-17 19:17:39'),
(136, 46, 'testongoing', 'sedang ujian', '2024-01-17 19:18:49'),
(137, 46, 'login', 'Selesai Ujian', '2024-01-17 19:19:32'),
(138, 46, 'logout', 'keluar', '2024-01-17 19:19:43'),
(139, 49, 'testongoing', 'sedang ujian', '2024-01-17 19:19:52'),
(140, 49, 'logout', 'keluar', '2024-01-17 19:21:13'),
(141, 48, 'logout', 'keluar', '2024-01-17 19:21:20'),
(142, 63, 'testongoing', 'sedang ujian', '2024-01-17 19:21:47'),
(143, 63, 'logout', 'keluar', '2024-01-17 19:23:34'),
(144, 55, 'testongoing', 'sedang ujian', '2024-01-17 19:23:53'),
(145, 55, 'login', 'Selesai Ujian', '2024-01-17 19:25:04'),
(146, 46, 'logout', 'keluar', '2024-01-17 19:26:18'),
(147, 46, 'logout', 'keluar', '2024-01-17 19:26:29'),
(148, 48, 'logout', 'keluar', '2024-01-17 19:26:52'),
(149, 55, 'logout', 'keluar', '2024-01-17 19:27:23'),
(150, 53, 'testongoing', 'sedang ujian', '2024-01-17 19:28:54'),
(151, 53, 'logout', 'keluar', '2024-01-17 19:29:16'),
(152, 48, 'logout', 'keluar', '2024-01-17 19:30:33'),
(153, 58, 'testongoing', 'sedang ujian', '2024-01-17 19:30:42'),
(154, 46, 'logout', 'keluar', '2024-01-17 20:23:06'),
(155, 58, 'login', 'Selesai Ujian', '2024-01-17 20:23:30'),
(156, 53, 'login', 'Selesai Ujian', '2024-01-17 20:23:36'),
(157, 63, 'login', 'Selesai Ujian', '2024-01-17 20:23:41'),
(158, 49, 'login', 'Selesai Ujian', '2024-01-17 20:23:44'),
(159, 46, 'testongoing', 'sedang ujian', '2024-01-17 20:29:59'),
(160, 46, 'logout', 'keluar', '2024-01-17 20:42:57'),
(161, 46, 'logout', 'keluar', '2024-01-17 20:43:49'),
(162, 54, 'logout', 'keluar', '2024-01-17 20:44:08'),
(163, 59, 'testongoing', 'sedang ujian', '2024-01-17 20:45:27'),
(164, 59, 'login', 'Selesai Ujian', '2024-01-17 20:57:21'),
(165, 59, 'logout', 'keluar', '2024-01-17 20:57:27'),
(166, 58, 'testongoing', 'sedang ujian', '2024-01-17 20:58:24'),
(167, 58, 'login', 'Selesai Ujian', '2024-01-17 20:58:52'),
(168, 58, 'logout', 'keluar', '2024-01-17 21:00:14'),
(169, 57, 'testongoing', 'sedang ujian', '2024-01-17 21:00:39'),
(170, 57, 'login', 'Selesai Ujian', '2024-01-17 21:01:40'),
(171, 57, 'logout', 'keluar', '2024-01-17 21:03:55'),
(172, 46, 'login', 'Selesai Ujian', '2024-01-17 21:05:27'),
(173, 58, 'testongoing', 'sedang ujian', '2024-01-17 21:06:49'),
(174, 43, 'testongoing', 'sedang ujian', '2024-01-17 21:22:58'),
(175, 43, 'logout', 'keluar', '2024-01-17 21:26:20'),
(176, 47, 'testongoing', 'sedang ujian', '2024-01-17 21:26:32'),
(177, 46, 'logout', 'keluar', '2024-01-17 23:20:33'),
(178, 55, 'testongoing', 'sedang ujian', '2024-01-18 06:39:37'),
(179, 55, 'logout', 'keluar', '2024-01-18 06:41:53'),
(180, 53, 'testongoing', 'sedang ujian', '2024-01-18 06:42:11'),
(181, 53, 'login', 'Selesai Ujian', '2024-01-18 06:42:57'),
(182, 53, 'logout', 'keluar', '2024-01-18 06:43:53'),
(183, 46, 'logout', 'keluar', '2024-01-18 16:06:53'),
(184, 55, 'login', 'Selesai Ujian', '2024-01-18 16:35:51'),
(185, 43, 'logout', 'keluar', '2024-01-19 07:39:57'),
(186, 48, 'logout', 'keluar', '2024-01-19 07:41:00'),
(187, 58, 'logout', 'keluar', '2024-01-19 07:41:18'),
(188, 45, 'testongoing', 'sedang ujian', '2024-01-19 07:41:30'),
(189, 45, 'login', 'Selesai Ujian', '2024-01-19 07:43:05'),
(190, 45, 'logout', 'keluar', '2024-01-19 07:45:09'),
(191, 46, 'testongoing', 'sedang ujian', '2024-01-19 07:47:47'),
(192, 49, 'testongoing', 'sedang ujian', '2024-01-19 07:50:07'),
(193, 49, 'login', 'Selesai Ujian', '2024-01-19 07:50:24'),
(194, 48, 'logout', 'keluar', '2024-01-19 08:05:52'),
(195, 56, 'testongoing', 'sedang ujian', '2024-01-19 08:06:06'),
(196, 56, 'login', 'Selesai Ujian', '2024-01-19 08:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode`, `idpk`, `idguru`, `nama`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `level`, `opsi`, `kelas`, `date`, `status`, `kkm`, `soal_agama`) VALUES
(3, '3333', 'a:1:{i:0;s:9:\"Olimpiade\";}', '321', 'matematika', 10, 0, 10, 0, 100, 0, 'Umum', 3, 'a:1:{i:0;s:5:\"semua\";}', '2023-09-25 05:41:44', '1', 0, ''),
(4, 'olimpiade', 'a:1:{i:0;s:9:\"Olimpiade\";}', '321', 'matematika', 20, 20, 20, 20, 50, 50, 'Umum', 5, 'a:1:{i:0;s:5:\"semua\";}', '2023-10-02 07:53:34', '1', 70, ''),
(5, 'mAT', 'a:1:{i:0;s:9:\"Olimpiade\";}', '321', 'matematika', 10, 0, 10, 0, 100, 0, 'Umum', 3, 'a:1:{i:0;s:5:\"semua\";}', '2023-10-06 03:52:20', '1', 0, ''),
(6, '12', 'a:1:{i:0;s:5:\"semua\";}', '321', 'matematika', 2, 0, 2, 0, 100, 0, 'semua', 3, 'a:1:{i:0;s:5:\"semua\";}', '2024-01-17 08:36:44', '1', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(150) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`, `mata_pelajaran_id`) VALUES
('matematika', 'matematika', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `materi_komentar`
--

CREATE TABLE `materi_komentar` (
  `id` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_ujian`, `id_mapel`, `id_siswa`, `kode_ujian`, `ujian_mulai`, `ujian_berlangsung`, `ujian_selesai`, `jml_benar`, `jml_salah`, `nilai_esai`, `skor`, `total`, `status`, `ipaddress`, `hasil`, `jawaban`, `jawaban_esai`, `nilai_esai2`, `online`, `id_soal`, `id_opsi`, `id_esai`, `blok`) VALUES
(1, 1, 1, 41, 'PTS', '2023-09-24 18:00:22', '2023-09-24 18:00:59', '2023-09-24 18:01:07', 10, 0, NULL, '100', '100', NULL, '192.168.1.5', 0, 'a:10:{i:1;s:1:\"A\";i:2;s:1:\"B\";i:3;s:1:\"A\";i:4;s:1:\"C\";i:5;s:1:\"B\";i:6;s:1:\"A\";i:7;s:1:\"A\";i:8;s:1:\"C\";i:9;s:1:\"A\";i:10;s:1:\"B\";}', 'a:0:{}', NULL, 0, '1,2,3,4,5,6,7,8,9,10,', 'C,B,A,C,B,A,A,B,C,A,B,C,B,C,A,C,B,A,A,C,B,B,C,A,B,C,A,B,C,A,', NULL, 0),
(2, 4, 2, 41, 'PTS', '2023-09-24 20:04:04', '2023-09-24 20:05:38', '2023-09-24 20:06:07', 9, 1, NULL, '90', '90', NULL, '192.168.1.4', 0, 'a:10:{i:11;s:1:\"A\";i:12;s:1:\"B\";i:13;s:1:\"A\";i:14;s:1:\"C\";i:15;s:1:\"C\";i:16;s:1:\"A\";i:17;s:1:\"A\";i:18;s:1:\"C\";i:19;s:1:\"A\";i:20;s:1:\"B\";}', 'a:0:{}', NULL, 0, '20,19,18,17,16,15,14,13,12,11,', 'B,C,A,A,C,B,B,C,A,B,C,A,C,A,B,C,A,B,A,B,C,A,C,B,A,B,C,A,B,C,', NULL, 0),
(7, 1, 3, 41, 'PTS', '2023-09-25 12:47:45', '2023-09-25 12:48:41', '2023-09-25 12:48:46', 10, 0, NULL, '100', '100', NULL, '192.168.50.84', 0, 'a:10:{i:21;s:1:\"A\";i:22;s:1:\"B\";i:23;s:1:\"A\";i:24;s:1:\"C\";i:25;s:1:\"B\";i:26;s:1:\"A\";i:27;s:1:\"A\";i:28;s:1:\"C\";i:29;s:1:\"A\";i:30;s:1:\"B\";}', 'a:0:{}', NULL, 0, '21,22,23,24,25,26,27,28,29,30,', 'C,B,A,A,C,B,B,C,A,C,A,B,C,A,B,A,C,B,A,B,C,C,B,A,B,A,C,B,C,A,', NULL, 0),
(8, 1, 3, 42, 'PTS', '2023-09-25 12:48:59', '2023-09-25 12:49:58', '2023-09-25 12:50:02', 10, 0, NULL, '100', '100', NULL, '192.168.50.174', 0, 'a:10:{i:21;s:1:\"A\";i:22;s:1:\"B\";i:23;s:1:\"A\";i:24;s:1:\"C\";i:25;s:1:\"B\";i:26;s:1:\"A\";i:27;s:1:\"A\";i:28;s:1:\"C\";i:29;s:1:\"A\";i:30;s:1:\"B\";}', 'a:0:{}', NULL, 0, '21,22,23,24,25,26,27,28,29,30,', 'C,A,B,C,A,B,A,C,B,B,A,C,A,C,B,B,C,A,C,B,A,C,A,B,A,B,C,B,C,A,', NULL, 0),
(9, 2, 5, 46, 'PTS', '2023-10-06 10:53:12', '2023-10-06 10:54:02', '2023-10-06 10:54:08', 9, 1, NULL, '90', '90', NULL, '192.168.0.50', 0, 'a:10:{i:52;s:1:\"A\";i:53;s:1:\"B\";i:54;s:1:\"A\";i:55;s:1:\"C\";i:56;s:1:\"B\";i:57;s:1:\"A\";i:58;s:1:\"C\";i:59;s:1:\"C\";i:60;s:1:\"A\";i:61;s:1:\"B\";}', 'a:0:{}', NULL, 0, '52,53,54,55,56,57,58,59,60,61,', 'A,B,C,B,C,A,C,A,B,C,A,B,C,B,A,B,A,C,A,C,B,A,B,C,A,B,C,A,B,C,', NULL, 0),
(10, 2, 5, 43, 'PTS', '2023-10-06 10:55:45', '2023-10-06 10:57:02', '2023-10-06 10:57:07', 9, 1, NULL, '90', '90', NULL, '192.168.0.50', 0, 'a:10:{i:52;s:1:\"A\";i:53;s:1:\"B\";i:54;s:1:\"A\";i:55;s:1:\"C\";i:56;s:1:\"B\";i:57;s:1:\"A\";i:58;s:1:\"C\";i:59;s:1:\"C\";i:60;s:1:\"A\";i:61;s:1:\"B\";}', 'a:0:{}', NULL, 0, '58,53,59,60,52,54,57,61,55,56,', 'A,B,C,A,C,B,A,C,B,C,A,B,A,B,C,C,B,A,B,A,C,A,B,C,C,B,A,C,A,B,', NULL, 0),
(36, 3, 6, 54, 'PTS', '2024-01-17 17:20:34', '2024-01-17 17:34:37', '2024-01-17 17:34:38', 2, 0, NULL, '100', '100', NULL, '192.168.1.3', 1, 'a:2:{i:62;s:1:\"A\";i:63;s:1:\"A\";}', 'a:0:{}', NULL, 0, '62,63,', 'A,C,B,A,C,B,', NULL, 0),
(37, 3, 6, 48, 'PTS', '2024-01-17 17:34:55', '2024-01-17 17:47:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '192.168.1.3', 1, NULL, NULL, NULL, 1, '63,62,', 'A,C,B,A,B,C,', NULL, 0),
(51, 5, 6, 58, 'PTS', '2024-01-17 21:06:49', '2024-01-17 21:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 0, NULL, NULL, NULL, 1, '62,63,', 'C,A,B,C,B,A,', NULL, 0),
(52, 5, 6, 43, 'PTS', '2024-01-17 21:22:58', '2024-01-17 21:26:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '192.168.1.3', 0, NULL, NULL, NULL, 1, '63,62,', 'C,A,B,B,A,C,', NULL, 0),
(53, 5, 6, 47, 'PTS', '2024-01-17 21:26:32', '2024-01-17 21:42:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '192.168.1.3', 0, NULL, NULL, NULL, 1, '62,63,', 'C,B,A,B,A,C,', NULL, 0),
(54, 5, 6, 55, 'PTS', '2024-01-18 06:39:37', '2024-01-18 06:41:44', '2024-01-18 16:35:51', 2, 0, NULL, '100', '100', NULL, '192.168.251.15', 0, 'a:2:{i:62;s:1:\"A\";i:63;s:1:\"A\";}', 'a:0:{}', NULL, 0, '62,63,', 'C,A,B,B,A,C,', NULL, 0),
(56, 5, 6, 45, 'PTS', '2024-01-19 07:41:30', '2024-01-19 07:43:03', '2024-01-19 07:43:05', 1, 1, NULL, '50', '50', NULL, '192.168.50.73', 0, 'a:2:{i:62;s:1:\"C\";i:63;s:1:\"A\";}', 'a:0:{}', NULL, 0, '62,63,', 'C,B,A,A,C,B,', NULL, 0),
(57, 5, 6, 46, 'PTS', '2024-01-19 07:47:47', '2024-01-19 07:48:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '192.168.50.73', 0, NULL, NULL, NULL, 1, '62,63,', 'B,C,A,A,C,B,', NULL, 0),
(58, 5, 6, 49, 'PTS', '2024-01-19 07:50:07', '2024-01-19 07:50:11', '2024-01-19 07:50:24', 0, 2, NULL, '0', '0', NULL, '192.168.50.57', 0, 'a:2:{i:62;s:1:\"B\";i:63;s:1:\"B\";}', 'a:0:{}', NULL, 0, '62,63,', 'B,A,C,B,C,A,', NULL, 0),
(59, 5, 6, 56, 'PTS', '2024-01-19 08:06:06', '2024-01-19 08:06:49', '2024-01-19 08:06:57', 1, 1, NULL, '50', '50', NULL, '192.168.50.169', 0, 'a:2:{i:62;s:1:\"A\";i:63;s:1:\"B\";}', 'a:0:{}', NULL, 0, '62,63,', 'A,B,C,C,A,B,', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `jabatan`, `username`, `password`, `level`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`, `ptk_id`, `password2`, `ruang`) VALUES
(1, '-', 'administrator', '', 'admin', '$2y$10$OC9zfYlP7hiyG1MUPL4boee4mposQAavfZQqUA66XC1s9FEULGk/G', 'admin', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', NULL, NULL, NULL),
(320, '-', 'admin2', NULL, 'supandi', '$2y$10$08vyxiuM4e0EO6bCCGBLl.wNQCWDAlVclsdlYplCJSPFaWMuyZlzi', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '0', 'repal', NULL, 'repal', '12345', 'guru', NULL, NULL, NULL, 'Laki-Laki', NULL, '', NULL, 'gedang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '-', 'rep', NULL, 'rep', '$2y$10$lvDj1Z4HAUM4W1MJqU.27eWmfSYpY92EhIwQjflcrgjCDwFWSa.TC', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '-', '-', NULL, 'tes', '-', 'guru', NULL, NULL, NULL, 'Laki-Laki', NULL, '', NULL, '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pk`
--

CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pk`
--

INSERT INTO `pk` (`id_pk`, `program_keahlian`, `jurusan_id`) VALUES
('-', '-', NULL),
('Olimpiade', 'Olimpiade', NULL),
('TKJ', 'TKJ', NULL),
('TKR', 'TKR', NULL),
('TP', 'TP', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referensi_jurusan`
--

CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registrasi_siswa`
--

CREATE TABLE `registrasi_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `th_masuk` int(5) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `username_login` varchar(50) DEFAULT NULL,
  `password_login` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `keterangan`) VALUES
('R1', 'R1'),
('R2', 'R2');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`kode_server`, `nama_server`, `status`) VALUES
('SR01', 'SR01', 'aktif'),
('SR01', 'SR01', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`kode_sesi`, `nama_sesi`) VALUES
('1', '1'),
('2', '2'),
('3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `url_host`, `token_api`, `sekolah_id`, `npsn`, `db_versi`) VALUES
(1, 'CBT SMAN 1 PORONG', '20501722', 'SMAN 1 PORONG', 'SMK', 'DRS.NINA DWI SURYANI.m.pd', '-', 'Jl. Bhayangkari No.12 Gondang Selatan', 'porong    ', 'SIdoarjo', '085784785293', '-', 'https://mtssmisykatululum.blogspot.com/', 'ekstraitsmanip@gmail.com', 'dist/img/logo95.png', '', 'KARTU PESERTA', 'Penilaian Tengah Semester', '2.5', 'http://192.168.0.200/ocbt', 'Asia/Jakarta', 'pusat', 'SR01', 'xxxxxx', '3Y6WGjuu6S6ReT', '8cce47df-aae7-4274-83cb-5af3093eab56', '69787351', '2.8.1');

-- --------------------------------------------------------

--
-- Table structure for table `sinkron`
--

CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sinkron`
--

INSERT INTO `sinkron` (`nama_data`, `data`, `jumlah`, `tanggal`, `status_sinkron`) VALUES
('DATA1', 'siswa', '', '', 0),
('DATA2', 'bank soal', '', '', 0),
('DATA3', 'soal', '', '', 0),
('DATA4', 'jadwal', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `online` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `idpk`, `nis`, `no_peserta`, `nama`, `level`, `ruang`, `sesi`, `username`, `password`, `foto`, `server`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `hp`, `email`, `skhun`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nohp_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nohp_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `nisn`, `peserta_didik_id`, `semester_id`, `rombongan_belajar_id`, `status`, `online`) VALUES
(43, '3', 'Olimpiade', '2', '2', '2', 'Umum', 'R1', 1, '2', '2', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(44, '3', 'Olimpiade', '3', '3', '3', 'Umum', 'R1', 1, '3', '3', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(45, '3', 'Olimpiade', '4', '4', '4', 'Umum', 'R1', 1, '4', '4', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(46, '3', 'Olimpiade', '1', '1', '1', 'Umum', 'R1', 1, '1', '1', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(47, '3', 'Olimpiade', '6', '6', '6', 'Umum', 'R1', 1, '6', '6', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(48, '3', 'Olimpiade', '5', '5', '5', 'Umum', 'R1', 1, '5', '5', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(49, '3', 'Olimpiade', '7', '7', '7', 'Umum', 'R1', 1, '7', '7', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(50, '3', 'Olimpiade', '8', '8', '8', 'Umum', 'R1', 1, '8', '8', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(51, '3', 'Olimpiade', '9', '9', '9', 'Umum', 'R1', 1, '9', '9', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(52, '3', 'Olimpiade', '10', '10', '10', 'Umum', 'R1', 1, '10', '10', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(53, '3', 'Olimpiade', '11', '11', '11', 'Umum', 'R1', 1, '11', '11', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(54, '3', 'Olimpiade', '12', '12', '12', 'Umum', 'R1', 1, '12', '12', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(55, '3', 'Olimpiade', '13', '13', '13', 'Umum', 'R1', 1, '13', '13', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(56, '3', 'Olimpiade', '15', '15', '15', 'Umum', 'R1', 1, '15', '15', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(57, '3', 'Olimpiade', '17', '17', '17', 'Umum', 'R1', 1, '17', '17', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(58, '3', 'Olimpiade', '19', '19', '19', 'Umum', 'R1', 1, '19', '19', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(59, '3', 'Olimpiade', '14', '14', '14', 'Umum', 'R1', 1, '14', '14', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(60, '3', 'Olimpiade', '21', '21', '21', 'Umum', 'R1', 1, '21', '21', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(61, '9', 'Olimpiade', '16', '16', '16', 'Umum', 'R1', 1, '16', '19', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(62, '3', 'Olimpiade', '23', '23', '23', 'Umum', 'R1', 1, '23', '23', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(63, '3', 'Olimpiade', '18', '18', '18', 'Umum', 'R1', 1, '18', '18', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(64, '3', 'Olimpiade', '25', '25', '25', 'Umum', 'R1', 1, '25', '25', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(65, '3', 'Olimpiade', '20', '20', '20', 'Umum', 'R1', 1, '20', '20', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(66, '3', 'Olimpiade', '27', '27', '27', 'Umum', 'R1', 1, '27', '27', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(67, '3', 'Olimpiade', '29', '29', '29', 'Umum', 'R1', 1, '29', '29', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(68, '3', 'Olimpiade', '22', '22', '22', 'Umum', 'R1', 1, '22', '22', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(69, '3', 'Olimpiade', '31', '31', '31', 'Umum', 'R1', 1, '31', '31', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(70, '3', 'Olimpiade', '24', '24', '24', 'Umum', 'R1', 1, '24', '24', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(71, '3', 'Olimpiade', '33', '33', '33', 'Umum', 'R1', 1, '33', '33', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(72, '3', 'Olimpiade', '26', '26', '26', 'Umum', 'R1', 1, '26', '26', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(73, '3', 'Olimpiade', '35', '35', '35', 'Umum', 'R1', 1, '35', '35', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(74, '3', 'Olimpiade', '28', '28', '28', 'Umum', 'R1', 1, '28', '28', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(75, '3', 'Olimpiade', '37', '37', '37', 'Umum', 'R1', 1, '37', '37', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(76, '3', 'Olimpiade', '30', '30', '30', 'IX', 'R1', 1, '30', '30', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(77, '3', 'Olimpiade', '39', '39', '39', 'Umum', 'R1', 1, '39', '39', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(78, '3', 'Olimpiade', '32', '32', '32', 'Umum', 'R1', 1, '32', '32', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(79, '3', 'Olimpiade', '34', '34', '34', 'Umum', 'R1', 1, '34', '34', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(80, '3', 'Olimpiade', '36', '36', '36', 'Umum', 'R1', 1, '36', '36', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(81, '3', 'Olimpiade', '38', '38', '38', 'Umum', 'R1', 1, '38', '38', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(82, '3', 'Olimpiade', '40', '40', '40', 'Umum', 'R1', 1, '40', '40', NULL, 'SR01', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_mapel`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `jawaban`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`) VALUES
(21, 3, 1, '<p>2+2=</p>', 1, '<p>4</p>', '<p>7</p>', '<p>8</p>', '', '', 'A', '', '', '', '', '', '', ''),
(22, 3, 2, '<p>4-1=</p>', 1, '<p>2</p>', '<p>3</p>', '<p>9</p>', '', '', 'B', '', '', '', '', '', '', ''),
(23, 3, 3, '<p>2+2+2=</p>', 1, '<p>6</p>', '<p>7</p>', '<p>8</p>', '', '', 'A', '', '', '', '', '', '', ''),
(24, 3, 4, '<p>1-1=</p>', 1, '<p>9</p>', '<p>2</p>', '<p>0</p>', '', '', 'C', '', '', '', '', '', '', ''),
(25, 3, 5, '<p>11+9=</p>', 1, '<p>79</p>', '<p>20</p>', '<p>0</p>', '', '', 'B', '', '', '', '', '', '', ''),
(26, 3, 6, '<p>22-2=</p>', 1, '<p>20</p>', '<p>8</p>', '<p>5</p>', '', '', 'A', '', '', '', '', '', '', ''),
(27, 3, 7, 'sin 60 adalah', 1, '<p>akar 32</p>', '<p>akar 39<br></p>', '<p>akar 30<br></p>', '', '', 'A', '', '', '', '', '', '', ''),
(28, 3, 8, '<p>10-1=</p>', 1, '<p>2</p>', '<p>7</p>', '<p>9</p>', '', '', 'C', '', '', '', '', '', '', ''),
(29, 3, 9, '<p>1-10=</p>', 1, '<p>-9</p>', '<p>-10</p>', '<p>9</p>', '', '', 'A', '', '', '', '', '', '', ''),
(30, 3, 10, '<p>2X10=</p>', 1, '<p>9</p>', '<p>20</p>', '<p>100</p>', '', '', 'B', '', '', '', '', '', '', ''),
(32, 4, 1, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah hasil dari 5 + 7?</span><br></p>', 1, '<p>21</p>', '<p>11</p>', '<p>12</p>', '<p>13</p>', '<p>14</p>', 'C', '', '', '', '', '', '', ''),
(33, 4, 2, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 3x + 8 = 20, berapakah nilai x?</span><br></p>', 1, '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', 'B', '', '', '', '', '', '', ''),
(34, 4, 3, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Hitung hasil dari 25 x 4</span><br></p>', 1, '<p>25</p>', '<p>55</p>', '<p>120</p>', '<p>100</p>', '<p>80</p>', 'D', '', '', '', '', '', '', ''),
(35, 4, 4, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika panjang segitiga adalah 10 cm dan lebarnya adalah 6 cm, berapakah luasnya?</span><br></p>', 1, '<p>20</p>', '<p>30</p>', '<p>33</p>', '<p>56</p>', '<p>12</p>', 'B', '', '', '', '', '', '', ''),
(36, 4, 5, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah hasil dari 12 ÷ 3?</span><br></p>', 1, '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>879</p>', 'B', '', '', '', '', '', '', ''),
(37, 4, 6, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 2x - 5 = 11, berapakah nilai x?</span><br></p>', 1, '<p>6</p>', '<p>7</p>', '<p>8</p>', '<p>9</p>', '<p>2</p>', 'C', '', '', '', '', '', '', ''),
(38, 4, 7, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah akar kuadrat dari 64?</span><br></p>', 1, '<p>7</p>', '<p>8</p>', '<p>9</p>', '<p>12</p>', '<p>4</p>', 'B', '', '', '', '', '', '', ''),
(39, 4, 8, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika harga sebuah barang adalah Rp 150.000 dan diskonnya adalah 20%, berapa harga akhirnya?</span><br></p>', 1, '<p>Rp 120.000</p>', '<p>Rp 90.000</p>', '<p>Rp 56.000</p>', '<p>Rp 130.000</p>', '<p>Rp 34.000</p>', 'A', '', '', '', '', '', '', ''),
(40, 4, 9, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Hitung hasil dari 3² + 4²</span><br></p>', 1, '<p>16</p>', '<p>25</p>', '<p>40</p>', '<p>14</p>', '<p>23</p>', 'B', '', '', '', '', '', '', ''),
(41, 4, 10, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 15% dari suatu angka adalah 45, berapakah angka tersebut?</span><br></p>', 1, '<p>300</p>', '<p>567</p>', '<p>134</p>', '<p>435</p>', '<p>334</p>', 'A', '', '', '', '', '', '', ''),
(42, 4, 11, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah keliling lingkaran dengan jari-jari 7 cm?</span><br></p>', 1, '<p>22</p>', '<p>7</p>', '<p>14</p>', '<p>56</p>', '<p>44</p>', 'E', '', '', '', '', '', '', ''),
(43, 4, 12, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 3/5 dari sebuah bilangan adalah 30, berapakah bilangan tersebut?</span><br></p>', 1, '<p>30</p>', '<p>40</p>', '<p>20</p>', '<p>50</p>', '<p>10</p>', 'D', '', '', '', '', '', '', ''),
(44, 4, 13, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Hitung hasil dari 2⁴</span><br></p>', 1, '<p>2</p>', '<p>4</p>', '<p>16</p>', '<p>32</p>', '<p>8</p>', 'C', '', '', '', '', '', '', ''),
(45, 4, 14, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 3y - 9 = 18, berapakah nilai y?</span><br></p>', 1, '<p>1</p>', '<p>8</p>', '<p>7</p>', '<p>9</p>', '<p>4</p>', 'D', '', '', '', '', '', '', ''),
(46, 4, 15, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika sebuah segitiga memiliki sudut-sudut 30°, 60°, dan 90°, berapakah panjang sisi miringnya?</span><br></p>', 1, '<p>2</p>', '<p>1</p>', '<p>3</p>', '<p>6</p>', '<p>9</p>', 'A', '', '', '', '', '', '', ''),
(47, 4, 16, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah volume sebuah kubus dengan panjang sisi 5 cm?</span><br></p>', 1, '<p>150</p>', '<p>160</p>', '<p>175</p>', '<p>125</p>', '<p>35</p>', 'D', '', '', '', '', '', '', ''),
(48, 4, 17, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 20% dari 80 adalah x, berapakah nilai x?</span><br></p>', 1, '<p>21</p>', '<p>6</p>', '<p>12</p>', '<p>8</p>', '<p>16</p>', 'E', '', '', '', '', '', '', ''),
(49, 4, 18, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Hitung hasil dari 7 x 9</span><br></p>', 1, '<p>63</p>', '<p>56</p>', '<p>81</p>', '<p>72</p>', '<p>41</p>', 'A', '', '', '', '', '', '', ''),
(50, 4, 19, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Jika 4a - 3 = 5, berapakah nilai a?</span><br></p>', 1, '<p>4</p>', '<p>10</p>', '<p>2</p>', '<p>8</p>', '<p>1</p>', 'C', '', '', '', '', '', '', ''),
(51, 4, 20, '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Berapakah hasil dari 9 ÷ 0?</span><br></p>', 1, '<p>0</p>', '<p>Tidak Terdefinisikan</p>', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">∞</span><br></p>', '<p>1</p>', '<p>9</p>', 'B', '', '', '', '', '', '', ''),
(52, 5, 1, '<p>2+2=</p>', 1, '<p>4</p>', '<p>7</p>', '<p>8</p>', '', '', 'A', '', '', '', '', '', '', ''),
(53, 5, 2, '<p>4-1=</p>', 1, '<p>2</p>', '<p>3</p>', '<p>9</p>', '', '', 'B', '', '', '', '', '', '', ''),
(54, 5, 3, '<p>2+2+2=</p>', 1, '<p>6</p>', '<p>7</p>', '<p>8</p>', '', '', 'A', '', '', '', '', '', '', ''),
(55, 5, 4, '<p>1-1=</p>', 1, '<p>9</p>', '<p>2</p>', '<p>0</p>', '', '', 'C', '', '', '', '', '', '', ''),
(56, 5, 5, '<p>11+9=</p>', 1, '<p>79</p>', '<p>20</p>', '<p>0</p>', '', '', 'B', '', '', '', '', '', '', ''),
(57, 5, 6, '<p>22-2=</p>', 1, '<p>20</p>', '<p>8</p>', '<p>5</p>', '', '', 'A', '', '', '', '', '', '', ''),
(58, 5, 7, 'sin 60 adalah', 1, '<p>akar 32</p>', '<p>akar 39<br></p>', '<p>akar 30<br></p>', '', '', 'A', '', '', '', '', '', '', ''),
(59, 5, 8, '<p>10-1=</p>', 1, '<p>2</p>', '<p>7</p>', '<p>9</p>', '', '', 'C', '', '', '', '', '', '', ''),
(60, 5, 9, '<p>1-10=</p>', 1, '<p>-9</p>', '<p>-10</p>', '<p>9</p>', '', '', 'A', '', '', '', '', '', '', ''),
(61, 5, 10, '<p>2X10=</p>', 1, '<p>9</p>', '<p>20</p>', '<p>100</p>', '', '', 'B', '', '', '', '', '', '', ''),
(62, 6, 1, '<p>aaa</p>', 1, '<p>a</p>', '<p>a</p>', '<p>a</p>', '', '', 'A', '', '', '', '', '', '', ''),
(63, 6, 2, '<p>apaa</p>', 1, '<p>da</p>', '<p>w</p>', '<p>rfw</p>', '', '', 'A', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
(1, 'WORWNM', '2024-01-17 13:55:55', '00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `id_guru`, `kelas`, `mapel`, `judul`, `tugas`, `file`, `tgl_mulai`, `tgl_selesai`, `tgl`, `status`) VALUES
(1, 321, 'a:1:{i:0;s:5:\"semua\";}', 'matematika', 'tes', '<p>rere</p>', 'Capture d’écran 2022-10-30 à 17.39.25.png', '2024-01-16 12:00:00', '2024-01-16 12:00:00', '2024-01-16 05:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `kode_nama`, `id_pk`, `id_guru`, `id_mapel`, `kode_ujian`, `nama`, `jml_soal`, `jml_esai`, `bobot_pg`, `opsi`, `bobot_esai`, `tampil_pg`, `tampil_esai`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `kelas`, `sesi`, `acak`, `token`, `status`, `hasil`, `kkm`, `ulang`, `soal_agama`, `reset`) VALUES
(5, '12', 'a:1:{i:0;s:5:\"semua\";}', 321, 6, 'PTS', 'matematika', 2, 0, 100, 3, 0, 2, 0, 60, '2024-01-17 20:00:00', '2024-08-21 20:26:00', '20:00:00', NULL, 'semua', 'a:1:{i:0;s:5:\"semua\";}', '1', 1, 0, 1, 0, '30', 1, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `materi_komentar`
--
ALTER TABLE `materi_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pk`
--
ALTER TABLE `pk`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indexes for table `referensi_jurusan`
--
ALTER TABLE `referensi_jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrasi_nis_siswa` (`nis`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`kode_sesi`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `sinkron`
--
ALTER TABLE `sinkron`
  ADD PRIMARY KEY (`nama_data`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi_komentar`
--
ALTER TABLE `materi_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
