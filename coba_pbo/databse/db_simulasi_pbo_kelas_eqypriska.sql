-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2026 at 06:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_kelas_eqypriska`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Andi Saputra', 'SMAN 1 Banjar', '85.00', '250000.00', 'Reguler', 'Informatika', 'Bandung', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 2 Banjar', '78.00', '250000.00', 'Reguler', 'Sistem Informasi', 'Bandung', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMKN 1 Banjar', '88.00', '250000.00', 'Reguler', 'Teknik Industri', 'Jakarta', NULL, NULL, NULL, NULL),
(4, 'Dewi Anggraini', 'SMAN 1 Ciamis', '90.00', '250000.00', 'Reguler', 'Informatika', 'Bandung', NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', 'SMKN 2 Ciamis', '76.00', '250000.00', 'Reguler', 'Akuntansi', 'Jakarta', NULL, NULL, NULL, NULL),
(6, 'Fajar Nugraha', 'SMAN 3 Banjar', '82.00', '250000.00', 'Reguler', 'Manajemen', 'Bandung', NULL, NULL, NULL, NULL),
(7, 'Gina Putri', 'SMAN 1 Tasikmalaya', '89.00', '250000.00', 'Reguler', 'Sistem Informasi', 'Jakarta', NULL, NULL, NULL, NULL),
(8, 'Hani Rahma', 'SMAN 1 Banjar', '92.00', '250000.00', 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Provinsi', NULL, NULL),
(9, 'Indra Wijaya', 'SMAN 2 Banjar', '91.00', '250000.00', 'Prestasi', NULL, NULL, 'Olimpiade Fisika', 'Nasional', NULL, NULL),
(10, 'Joko Susilo', 'SMKN 1 Banjar', '87.00', '250000.00', 'Prestasi', NULL, NULL, 'Lomba Robotik', 'Provinsi', NULL, NULL),
(11, 'Kartika Sari', 'SMAN 1 Ciamis', '95.00', '250000.00', 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Nasional', NULL, NULL),
(12, 'Lina Marlina', 'SMAN 2 Ciamis', '90.00', '250000.00', 'Prestasi', NULL, NULL, 'Pencak Silat', 'Kabupaten', NULL, NULL),
(13, 'Maya Putri', 'SMAN 1 Tasikmalaya', '93.00', '250000.00', 'Prestasi', NULL, NULL, 'Basket', 'Provinsi', NULL, NULL),
(14, 'Nanda Saputra', 'SMKN 2 Tasikmalaya', '89.00', '250000.00', 'Prestasi', NULL, NULL, 'Karya Ilmiah', 'Nasional', NULL, NULL),
(15, 'Oki Firmansyah', 'SMAN 1 Banjar', '84.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK001', 'Kementerian Keuangan'),
(16, 'Putri Amelia', 'SMAN 2 Banjar', '86.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK002', 'Kementerian Perhubungan'),
(17, 'Rudi Hartono', 'SMKN 1 Banjar', '80.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK003', 'BKN'),
(18, 'Salsa Nabila', 'SMAN 1 Ciamis', '88.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK004', 'Kementerian Dalam Negeri'),
(19, 'Tono Wijaya', 'SMKN 2 Ciamis', '81.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK005', 'BMKG'),
(20, 'Vina Maharani', 'SMAN 1 Tasikmalaya', '90.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK006', 'BPS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
